struct Struct_1 {
    a: vec3<u32>,
    b: f32,
    c: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: vec2<bool>, arg_3: vec4<i32>) -> vec4<f32> {
    var var_0 = !any(vec3<bool>(any(vec3<bool>(true, true, true)), true || arg_2.x, arg_2.x));
    var_0 = true;
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_0.b), arg_0.b)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(497f, 2040f, true)), arg_0.b))) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1739f)) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1407f + arg_0.b), 1000f, false && arg_2.x)))));
    var var_1 = !vec4<bool>(any(!(!vec4<bool>(true, false, arg_2.x, true))), select(any(select(vec2<bool>(arg_2.x, true), vec2<bool>(arg_2.x, arg_2.x), vec2<bool>(false, arg_2.x))), true, true), firstTrailingBit(0i) > -arg_3.x, any(vec4<bool>(!arg_2.x, false, arg_2.x, false && arg_2.x)));
    var var_2 = arg_0;
    return _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(257f, _wgslsmith_f_op_f32(step(-1073f, _wgslsmith_f_op_f32(sign(511f)))), arg_0.b, -642f), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b, -1553f, -399f, var_2.b)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(682f, var_2.b, var_2.b, 911f))))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1785f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b) - _wgslsmith_f_op_f32(arg_0.b * var_2.b)), -191f, arg_0.b) * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_0.b, 512f, -535f, var_2.b))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 1513f, -317f, var_2.b) * vec4<f32>(-527f, var_2.b, var_2.b, 202f))))))));
}

fn func_2(arg_0: vec4<f32>, arg_1: vec2<i32>, arg_2: u32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(func_3(Struct_1(_wgslsmith_add_vec3_u32(select(u_input.c, firstTrailingBit(vec3<u32>(u_input.a.x, 0u, 4294967295u)), select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), true)), abs(~vec3<u32>(u_input.a.x, 545u, 0u))), _wgslsmith_f_op_f32(trunc(arg_0.x)), i32(-1i) * -42670i), u_input.a, select(!select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false)), -1254f > arg_0.x), vec2<bool>(true, true), false), u_input.b));
    var var_1 = vec3<bool>(false & !all(vec3<bool>(true, true, true)), select(!(!select(false, true, false)), all(vec4<bool>(true, true, true, true)), true), (~u_input.a.x < ~min(u_input.c.x, arg_2)) | !select(arg_0.x < -165f, true, any(vec4<bool>(false, true, false, false))));
    var_1 = vec3<bool>(true, true, !(u_input.b.x >= 19503i));
    var_1 = vec3<bool>(any(var_1.xy), true & var_1.x, all(select(!var_1.yz, !select(vec2<bool>(var_1.x, var_1.x), vec2<bool>(var_1.x, false), vec2<bool>(var_1.x, false)), var_1.x)));
    var var_2 = !vec3<bool>(any(!vec4<bool>(var_1.x, var_1.x, var_1.x, false)), !select(arg_0.x > 1264f, !var_1.x, false), false);
    return Struct_1(~u_input.a, -787f, max(~(-43630i), _wgslsmith_mult_i32(arg_1.x, u_input.b.x)));
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1) -> vec4<bool> {
    let var_0 = _wgslsmith_dot_vec2_u32(countOneBits(_wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(arg_2.a.x, arg_2.a.x), vec2<u32>(0u, arg_2.a.x)), _wgslsmith_mod_vec2_u32(vec2<u32>(arg_0.a.x, 22203u), vec2<u32>(0u, u_input.a.x))) >> (((arg_0.a.xz & arg_2.a.zy) << ((arg_0.a.zx >> (vec2<u32>(arg_0.a.x, 21810u) % vec2<u32>(32u))) % vec2<u32>(32u))) % vec2<u32>(32u))), max(arg_2.a.yy, arg_2.a.zy >> (vec2<u32>(arg_2.a.x, u_input.c.x) % vec2<u32>(32u))));
    let var_1 = ~_wgslsmith_sub_u32(u_input.c.x ^ u_input.c.x, arg_2.a.x) > 1u;
    let var_2 = Struct_1(vec3<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(arg_2.a.x, 23194u, arg_0.a.x, arg_2.a.x), ~vec4<u32>(1u, 59810u, arg_2.a.x, 20495u)), 0u, _wgslsmith_dot_vec3_u32(arg_2.a, vec3<u32>(1u, u_input.c.x, u_input.a.x) ^ arg_0.a)) ^ vec3<u32>(reverseBits(1u), 62269u, ~0u), arg_1, -(firstTrailingBit(abs(u_input.b.x)) << (_wgslsmith_mult_u32(arg_2.a.x, firstLeadingBit(0u)) % 32u)));
    var var_3 = var_2;
    let var_4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(359f, arg_2.b, arg_2.b))) * _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, -2144f, -294f)))))) - vec3<f32>(1000f, _wgslsmith_div_f32(-917f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(arg_0.b)), _wgslsmith_f_op_f32(var_3.b * arg_0.b), true))), -557f));
    return !select(vec4<bool>(any(vec2<bool>(var_1, false)), _wgslsmith_f_op_f32(max(-1019f, -715f)) < var_4.x, true, true), vec4<bool>(!all(vec2<bool>(var_1, var_1)), 0u < _wgslsmith_mod_u32(var_3.a.x, 7003u), false, false), vec4<bool>(true, true, var_1, firstTrailingBit(var_2.a.x) <= 0u));
}

fn func_1(arg_0: vec3<i32>, arg_1: i32, arg_2: vec2<i32>, arg_3: vec4<bool>) -> Struct_1 {
    var var_0 = ~(-(~arg_0.x));
    var_0 = arg_1;
    let var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(1f, _wgslsmith_div_f32(223f, -512f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -2390f), -871f, false)))), 562f, _wgslsmith_f_op_f32(1379f - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, -661f)))) + vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(-451f)))), _wgslsmith_f_op_f32(step(301f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(238f * -531f), _wgslsmith_f_op_f32(-800f + 1000f))))), -210f));
    var_0 = arg_1;
    var var_2 = func_4(func_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(step(641f, var_1.x)), 387f, 626f, 957f) - vec4<f32>(-249f, _wgslsmith_f_op_f32(var_1.x + var_1.x), 285f, -975f)), ~vec2<i32>(u_input.d, arg_0.x) << (_wgslsmith_add_vec2_u32(~u_input.a.yx, vec2<u32>(u_input.c.x, u_input.a.x)) % vec2<u32>(32u)), u_input.c.x), -1044f, Struct_1(max(~vec3<u32>(1u, 1u, u_input.c.x), u_input.c), var_1.x, -u_input.d));
    return func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(896f, var_1.x, var_1.x, -1000f), vec4<f32>(var_1.x, var_1.x, 317f, var_1.x)))) - vec4<f32>(1000f, _wgslsmith_div_f32(var_1.x, func_2(vec4<f32>(778f, var_1.x, var_1.x, var_1.x), vec2<i32>(-8825i, arg_1), 4279u).b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_f32(442f - 217f))), select(arg_0.yx ^ select(u_input.b.xy, vec2<i32>(arg_2.x, 23900i), !var_2.wy), u_input.b.yw, var_2.wz), ~u_input.a.x);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> vec3<u32> {
    let var_0 = 22198u;
    let var_1 = arg_1.a.x;
    let var_2 = (~(~var_1) >> (50546u % 32u)) << (_wgslsmith_clamp_u32(1u, u_input.a.x, var_1) % 32u);
    var var_3 = Struct_1(~(~(~vec3<u32>(24247u, 15194u, 21971u))), _wgslsmith_f_op_f32(-arg_2.b), firstLeadingBit(-41505i) >> (u_input.a.x % 32u));
    var var_4 = 4294967295u;
    return _wgslsmith_sub_vec3_u32(select(~firstLeadingBit(vec3<u32>(53908u, arg_2.a.x, arg_0.a.x)), ~vec3<u32>(var_0 ^ u_input.c.x, 4294967295u, ~1u), true), ~min(max(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a.x, var_0, 4294967295u), arg_2.a), ~var_3.a), vec3<u32>(abs(arg_0.a.x), 1u, ~arg_2.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b.x ^ -1i;
    let var_1 = u_input.b.wx;
    var var_2 = Struct_1(abs(func_5(func_1(vec3<i32>(u_input.b.x, 23562i, u_input.d), 18982i, vec2<i32>(var_1.x, var_1.x), select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false), false)), Struct_1(reverseBits(vec3<u32>(u_input.a.x, 40896u, u_input.c.x)), _wgslsmith_f_op_f32(698f - -192f), 4454i ^ u_input.d), func_1(vec3<i32>(u_input.b.x, var_1.x, u_input.d) << (vec3<u32>(0u, 4294967295u, 1u) % vec3<u32>(32u)), _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, u_input.b.x, u_input.d), vec3<i32>(var_1.x, u_input.b.x, 1i)), abs(var_1), vec4<bool>(true, true, true, true)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1859f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -174f))), u_input.d);
    let var_3 = ~(_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, u_input.a.x), vec2<u32>(45594u, 1u), countOneBits(var_2.a.zy)) ^ var_2.a.xz) & var_2.a.yy;
    var var_4 = Struct_1(~vec3<u32>(~1964u, 0u, _wgslsmith_mod_u32(~u_input.c.x, ~7724u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-633f, 207f)) - -610f)), ~var_1.x);
    let var_5 = vec4<bool>(true, true, true, true);
    var_2 = func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_4.b, var_4.b, var_4.b, -487f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(851f, var_2.b, var_2.b, var_2.b) * vec4<f32>(var_2.b, 422f, var_4.b, var_2.b))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(226f, 1018f, var_2.b, -105f), vec4<f32>(-779f, var_2.b, var_4.b, 702f))))), abs(vec2<i32>(-28178i, -1i)), ~_wgslsmith_div_u32(_wgslsmith_div_u32(_wgslsmith_clamp_u32(1u, 72643u, 24488u), var_2.a.x), ~(~7405u)));
    var_4 = Struct_1(min(var_4.a, var_4.a), -990f, var_2.c >> (50356u % 32u));
    var var_6 = u_input.b.zzy;
    let x = u_input.a;
    s_output = StorageBuffer(var_2.b, ~(~_wgslsmith_add_vec4_u32(~vec4<u32>(14893u, 1u, var_4.a.x, 53101u), ~vec4<u32>(81605u, 4294967295u, 61570u, 56097u))), ~(~_wgslsmith_clamp_u32(43036u, var_4.a.x, min(0u, 20952u))));
}

