struct Struct_1 {
    a: i32,
    b: vec2<bool>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec3<i32>,
    c: vec4<bool>,
    d: Struct_1,
    e: f32,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: u32,
    d: vec3<u32>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: vec4<u32>, arg_1: vec3<f32>) -> vec2<bool> {
    var var_0 = _wgslsmith_clamp_u32(1u, 4294967295u, ~arg_0.x & ~arg_0.x);
    let var_1 = _wgslsmith_f_op_f32(max(arg_1.x, arg_1.x));
    var_0 = u_input.c << (firstLeadingBit(firstTrailingBit(firstTrailingBit(arg_0.x)) | min(u_input.c, u_input.c)) % 32u);
    let var_2 = ~(~arg_0.x);
    var_0 = 3093u;
    return !select(select(!select(vec2<bool>(false, false), vec2<bool>(false, false), false), !select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false)), u_input.b <= (u_input.a.x ^ u_input.a.x)), select(vec2<bool>(true, true), !select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true)), vec2<bool>(false, any(vec4<bool>(true, false, false, true)))), any(vec3<bool>(true, true, true)));
}

fn func_2(arg_0: vec2<u32>, arg_1: vec3<u32>, arg_2: vec4<i32>) -> Struct_4 {
    let var_0 = _wgslsmith_add_i32(0i, u_input.a.x);
    var var_1 = arg_1.yx;
    let var_2 = Struct_1(_wgslsmith_mult_i32(-4296i, _wgslsmith_dot_vec2_i32(vec2<i32>(arg_2.x, ~5934i), ~u_input.a >> ((arg_0 | arg_1.xy) % vec2<u32>(32u)))), select(vec2<bool>(true, all(vec4<bool>(true, true, false, false))), select(vec2<bool>(true, false), func_3(vec4<u32>(arg_0.x, 85205u, 0u, var_1.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(550f, 1352f, 1514f) - vec3<f32>(872f, 419f, 151f))), vec2<bool>(func_3(vec4<u32>(u_input.c, 1u, 5199u, u_input.c), vec3<f32>(-432f, 365f, 723f)).x, all(vec3<bool>(true, true, true)))), _wgslsmith_mult_u32(_wgslsmith_sub_u32(u_input.c, 30264u), _wgslsmith_div_u32(var_1.x, 0u)) < (23418u ^ ~arg_0.x)));
    let var_3 = func_3(vec4<u32>(u_input.c, arg_0.x, ~arg_0.x, firstLeadingBit(u_input.c)), vec3<f32>(1087f, 2135f, _wgslsmith_div_f32(-482f, _wgslsmith_f_op_f32(877f - _wgslsmith_f_op_f32(f32(-1f) * -962f))))).x;
    let var_4 = countOneBits(~_wgslsmith_div_vec2_i32(u_input.a, arg_2.xx));
    return Struct_4(Struct_3(_wgslsmith_dot_vec2_i32(u_input.a, arg_2.xw ^ reverseBits(vec2<i32>(arg_2.x, 27605i))), Struct_1(1i, select(func_3(vec4<u32>(0u, 1u, 14275u, 1u), vec3<f32>(556f, -385f, 1762f)), vec2<bool>(false, true), !vec2<bool>(var_3, var_3))), ~u_input.c, _wgslsmith_div_vec3_u32(firstLeadingBit(vec3<u32>(arg_0.x, 0u, 10168u)), countOneBits(arg_1)) | ~(~arg_1)), vec3<i32>(u_input.b, var_2.a, select(var_2.a, var_0, true)));
}

fn func_1(arg_0: vec4<i32>) -> Struct_1 {
    var var_0 = -2604i;
    let var_1 = ~arg_0;
    var var_2 = func_2(_wgslsmith_sub_vec2_u32(~_wgslsmith_mult_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(1u, 16191u), vec2<u32>(u_input.c, 29536u)), select(vec2<u32>(0u, u_input.c), vec2<u32>(u_input.c, 40198u), true)), vec2<u32>(u_input.c, u_input.c)), ~(~(~vec3<u32>(u_input.c, 39280u, u_input.c))), vec4<i32>(countOneBits(var_1.x << (_wgslsmith_div_u32(u_input.c, 0u) % 32u)), -45407i, var_1.x, 84210i));
    var_2 = func_2(vec2<u32>(max(min(firstLeadingBit(var_2.a.c), ~17393u), ~max(var_2.a.d.x, var_2.a.c)), ~var_2.a.c), ~_wgslsmith_sub_vec3_u32(_wgslsmith_clamp_vec3_u32(var_2.a.d >> (var_2.a.d % vec3<u32>(32u)), _wgslsmith_mult_vec3_u32(var_2.a.d, var_2.a.d), vec3<u32>(var_2.a.c, 4294967295u, var_2.a.c) | vec3<u32>(u_input.c, 21398u, u_input.c)), max(~vec3<u32>(var_2.a.c, u_input.c, var_2.a.c), vec3<u32>(u_input.c, 66614u, u_input.c))), select(-_wgslsmith_mod_vec4_i32(abs(vec4<i32>(arg_0.x, -2855i, var_2.a.b.a, 3609i)), vec4<i32>(-2147483647i, 18564i, 6064i, -2147483647i)), -arg_0, func_2(_wgslsmith_sub_vec2_u32(vec2<u32>(1u, 63433u), vec2<u32>(12129u, u_input.c)) & _wgslsmith_mod_vec2_u32(var_2.a.d.yy, var_2.a.d.zz), vec3<u32>(var_2.a.d.x, _wgslsmith_mult_u32(1u, 4210u), 0u << (1u % 32u)), ~var_1).a.b.b.x));
    var var_3 = firstLeadingBit(var_2.a.c & 45742u);
    return func_2(select(_wgslsmith_mod_vec2_u32(firstLeadingBit(vec2<u32>(var_2.a.d.x, 81910u)), abs(vec2<u32>(u_input.c, 66722u))), ~var_2.a.d.zz, ~var_2.a.d.x <= ~23049u) << (vec2<u32>(30805u, 1u) % vec2<u32>(32u)), ~min(_wgslsmith_mult_vec3_u32(~vec3<u32>(u_input.c, 1u, 29058u), min(vec3<u32>(0u, 0u, 1693u), vec3<u32>(var_2.a.d.x, 16828u, 23926u))), _wgslsmith_sub_vec3_u32(vec3<u32>(var_2.a.d.x, 25257u, 0u), vec3<u32>(u_input.c, var_2.a.c, var_2.a.d.x))), -(~reverseBits(arg_0))).a.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(~vec4<i32>(u_input.b, 14882i, _wgslsmith_mult_i32(~(-1i), -1i), u_input.a.x));
    var var_1 = func_2(min(_wgslsmith_clamp_vec2_u32(vec2<u32>(_wgslsmith_add_u32(u_input.c, 4294967295u), u_input.c), vec2<u32>(_wgslsmith_sub_u32(69892u, u_input.c), ~1u), ~(vec2<u32>(u_input.c, 1u) & vec2<u32>(u_input.c, u_input.c))), ~select(vec2<u32>(19705u, 66455u), vec2<u32>(u_input.c, 1u), vec2<bool>(var_0.b.x, var_0.b.x)) ^ vec2<u32>(42760u, ~u_input.c)), reverseBits(vec3<u32>(~u_input.c, ~(u_input.c | 17554u), ~countOneBits(u_input.c))), reverseBits(vec4<i32>(u_input.a.x, 0i, u_input.b, -1i) & _wgslsmith_clamp_vec4_i32(vec4<i32>(0i, -25380i, u_input.a.x, -7508i), vec4<i32>(1i, u_input.a.x, -15487i, 0i), vec4<i32>(-30589i, 0i, 0i, 0i))) | vec4<i32>(var_0.a, 2147483647i, 2147483647i, u_input.a.x)).a;
    var_1 = Struct_3(0i, Struct_1(func_2(var_1.d.zy, func_2(vec2<u32>(1u, 4294967295u), ~vec3<u32>(var_1.c, u_input.c, u_input.c), -vec4<i32>(-41239i, 27098i, 2147483647i, u_input.b)).a.d, -countOneBits(vec4<i32>(var_0.a, 49147i, -19782i, u_input.b))).b.x, vec2<bool>(func_1(vec4<i32>(-2147483647i, var_1.a, 48333i, var_1.b.a)).b.x & all(vec4<bool>(var_1.b.b.x, var_0.b.x, var_1.b.b.x, var_0.b.x)), false)), u_input.c, ~firstTrailingBit(firstTrailingBit(var_1.d)));
    let var_2 = Struct_2(vec2<bool>(any(!vec3<bool>(var_0.b.x, true, false)) | (_wgslsmith_f_op_f32(trunc(1000f)) < _wgslsmith_f_op_f32(f32(-1f) * -1000f)), var_1.b.b.x), (~(vec3<i32>(var_0.a, u_input.a.x, var_1.a) >> (var_1.d % vec3<u32>(32u))) ^ countOneBits(_wgslsmith_sub_vec3_i32(vec3<i32>(-7150i, var_1.a, u_input.a.x), vec3<i32>(var_0.a, 37685i, u_input.b)))) ^ -select(firstTrailingBit(vec3<i32>(0i, var_0.a, u_input.a.x)), vec3<i32>(var_1.a, 0i, u_input.b), var_1.b.b.x), vec4<bool>(var_1.b.b.x, func_3(~vec4<u32>(var_1.d.x, 47756u, u_input.c, 32385u), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-346f, 461f, -2186f) * vec3<f32>(738f, 244f, -2150f)) + vec3<f32>(1039f, 260f, 1220f))).x, false, true), Struct_1(_wgslsmith_clamp_i32(-var_1.b.a | 32642i, -15479i, -func_1(vec4<i32>(25060i, 22584i, var_0.a, u_input.b)).a), select(!var_1.b.b, func_3(vec4<u32>(var_1.d.x, var_1.d.x, 1u, 4294967295u), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1138f, 414f, 1188f)))), vec2<bool>(var_1.b.b.x, any(vec3<bool>(var_1.b.b.x, var_0.b.x, false))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2189f + _wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    var_1 = Struct_3(_wgslsmith_mult_i32(_wgslsmith_div_i32(var_2.b.x, -7430i), _wgslsmith_div_i32(_wgslsmith_add_i32(var_0.a, 8843i), 27145i)) | func_2(~vec2<u32>(u_input.c, 61531u), min(vec3<u32>(16920u, 42587u, u_input.c), ~vec3<u32>(36996u, 0u, u_input.c)), min(reverseBits(vec4<i32>(-29720i, -59630i, var_2.d.a, 1i)), min(vec4<i32>(u_input.a.x, -21117i, u_input.b, var_0.a), vec4<i32>(var_1.b.a, var_1.a, u_input.b, u_input.b)))).a.a, func_1(vec4<i32>(_wgslsmith_mult_i32(u_input.a.x, var_1.a), var_0.a, i32(-1i) * -27235i, abs(2147483647i))), _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.c, 4294967295u, countOneBits(4294967295u)), var_1.d), var_1.d);
    var var_3 = vec3<i32>(-(func_2(vec2<u32>(u_input.c, u_input.c) << (vec2<u32>(53103u, 38128u) % vec2<u32>(32u)), var_1.d, min(vec4<i32>(0i, -59819i, u_input.a.x, 26364i), vec4<i32>(var_1.a, -1i, var_2.d.a, -2147483647i))).a.b.a | ~_wgslsmith_sub_i32(-1i, 13880i)), var_1.b.a, 5365i);
    var_3 = var_2.b;
    let var_4 = Struct_2(var_0.b, -var_2.b << (select(var_1.d, abs(abs(vec3<u32>(var_1.d.x, var_1.c, var_1.c))), var_2.c.x) % vec3<u32>(32u)), select(!select(select(var_2.c, var_2.c, var_2.c), !vec4<bool>(true, var_1.b.b.x, false, var_0.b.x), var_2.c), !select(select(var_2.c, vec4<bool>(var_2.d.b.x, false, var_1.b.b.x, var_0.b.x), var_1.b.b.x), vec4<bool>(var_0.b.x, true, false, true), var_1.b.b.x), false), var_0, 1000f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-var_2.e), var_4.e) + vec2<f32>(_wgslsmith_f_op_f32(-var_2.e), _wgslsmith_f_op_f32(abs(var_4.e)))))), ~_wgslsmith_add_vec2_u32(vec2<u32>(u_input.c, var_1.d.x) | max(vec2<u32>(var_1.c, var_1.c), var_1.d.zz), vec2<u32>(var_1.d.x, 4294967295u)), 31895i);
}

