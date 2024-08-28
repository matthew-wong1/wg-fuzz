struct Struct_1 {
    a: f32,
    b: f32,
    c: f32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec4<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<f32>,
    c: bool,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<f32>,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
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

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_1) -> f32 {
    var var_0 = Struct_4(Struct_3(Struct_1(-473f, 1f, -213f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(1101f, 725f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(432f, arg_0.a)))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(1469f, arg_0.b))), false), vec3<f32>(arg_0.b, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(arg_0.a)), 180f) - arg_0.b), _wgslsmith_f_op_f32(-1233f - arg_0.b)), _wgslsmith_dot_vec4_u32(u_input.c, ~u_input.c));
    var var_1 = Struct_2(_wgslsmith_mult_vec3_i32(-u_input.b.xwz, _wgslsmith_sub_vec3_i32(-vec3<i32>(u_input.b.x, u_input.d, -5566i), ~vec3<i32>(u_input.d, u_input.d, -41666i)) >> (u_input.c.yxw % vec3<u32>(32u))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, var_0.b.x, 1000f, var_0.a.a.c) + vec4<f32>(1163f, 1168f, var_0.b.x, arg_0.b))) * vec4<f32>(_wgslsmith_f_op_f32(-arg_0.a), _wgslsmith_f_op_f32(-var_0.b.x), var_0.a.b.x, _wgslsmith_f_op_f32(arg_0.c + arg_0.c)))));
    var var_2 = !select(var_0.a.c | var_0.a.c, all(vec3<bool>(false, var_0.a.c && var_0.a.c, true)), any(!(!vec2<bool>(var_0.a.c, true))));
    var_0 = Struct_4(Struct_3(arg_0, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(exp2(var_1.b.xz))))), all(select(vec3<bool>(false, false, var_0.a.c), !vec3<bool>(true, var_0.a.c, var_0.a.c), any(vec2<bool>(true, var_0.a.c))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(var_0.b))) - vec3<f32>(var_1.b.x, arg_0.c, _wgslsmith_f_op_f32(var_1.b.x - arg_0.c)))), var_0.c);
    var var_3 = true | (-u_input.d >= var_1.a.x);
    return _wgslsmith_f_op_f32(round(var_0.a.b.x));
}

fn func_4(arg_0: Struct_2, arg_1: bool, arg_2: f32, arg_3: vec2<i32>) -> f32 {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_1(-1000f, arg_2, _wgslsmith_f_op_f32(trunc(-722f))))) - _wgslsmith_f_op_f32(908f * _wgslsmith_f_op_f32(-arg_2))), 1214f);
    let var_1 = Struct_1(var_0.x, arg_0.b.x, var_0.x);
    var var_2 = select(!vec4<bool>(any(vec3<bool>(true, arg_1, arg_1)), true, arg_1, !(!arg_1)), select(vec4<bool>(any(vec4<bool>(arg_1, arg_1, true, arg_1)), arg_1, arg_1, arg_1), !(!(!vec4<bool>(arg_1, false, arg_1, true))), all(vec4<bool>(true, arg_1, arg_1, arg_1)) || arg_1), select(arg_1, any(vec4<bool>(any(vec4<bool>(true, true, arg_1, false)), -1i > arg_0.a.x, arg_1, arg_1)), true));
    let var_3 = min(vec3<u32>(_wgslsmith_add_u32(_wgslsmith_mult_u32(1u, u_input.c.x), ~0u), 4294967295u, 1u), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.c.x, abs(u_input.a), 57058u), u_input.c.yyy)) >> (u_input.c.yww % vec3<u32>(32u));
    var var_4 = !(arg_3.x >= ~(-18714i));
    return arg_0.b.x;
}

fn func_2(arg_0: bool) -> Struct_2 {
    var var_0 = Struct_4(Struct_3(Struct_1(_wgslsmith_f_op_f32(func_4(Struct_2(u_input.b.zyz, vec4<f32>(-640f, -264f, 2397f, -822f)), all(vec3<bool>(arg_0, arg_0, true)), _wgslsmith_f_op_f32(func_3(Struct_1(346f, -384f, -473f))), _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.b.x, -20109i), vec2<i32>(u_input.b.x, u_input.b.x), u_input.b.zx))), -250f, 383f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-728f, -261f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(906f, 112f)), all(vec2<bool>(true, arg_0)))) - _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(111f, -1232f))))), any(vec3<bool>(true, false, true))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-321f, -1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-106f - 620f) * _wgslsmith_f_op_f32(max(-1046f, -1679f)))), _wgslsmith_f_op_f32(-897f * -1000f)), reverseBits(~1u));
    var_0 = Struct_4(var_0.a, vec3<f32>(_wgslsmith_f_op_f32(abs(581f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-755f - _wgslsmith_f_op_f32(-var_0.b.x))), 2114f), var_0.c);
    let var_1 = _wgslsmith_div_i32(-9833i, u_input.d) << (20746u % 32u);
    let var_2 = ~_wgslsmith_dot_vec2_u32(vec2<u32>(~1u, 0u), ~vec2<u32>(4294967295u, 23484u) | u_input.c.xy);
    let var_3 = _wgslsmith_add_vec3_u32(firstTrailingBit(max(u_input.c.xxw, _wgslsmith_mod_vec3_u32(u_input.c.xzx, vec3<u32>(32888u, 73803u, var_0.c)))) ^ ~firstTrailingBit(~vec3<u32>(var_0.c, u_input.c.x, var_2)), abs(_wgslsmith_sub_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(4294967295u, var_2), ~var_2, var_2 | var_0.c), u_input.c.yzz)));
    return Struct_2(select(firstTrailingBit(u_input.b.xyz), -vec3<i32>(max(1i, 4487i), u_input.d, var_1), select(select(vec3<bool>(arg_0, true, arg_0), !vec3<bool>(var_0.a.c, var_0.a.c, true), select(vec3<bool>(var_0.a.c, arg_0, var_0.a.c), vec3<bool>(arg_0, arg_0, false), false)), !select(vec3<bool>(true, arg_0, var_0.a.c), vec3<bool>(arg_0, false, var_0.a.c), var_0.a.c), vec3<bool>(any(vec4<bool>(true, false, false, var_0.a.c)), arg_0, all(vec4<bool>(true, var_0.a.c, arg_0, true))))), vec4<f32>(1310f, 597f, _wgslsmith_f_op_f32(var_0.b.x - 775f), 502f));
}

fn func_1(arg_0: u32, arg_1: vec4<i32>, arg_2: Struct_2, arg_3: u32) -> Struct_1 {
    let var_0 = vec3<bool>(true, true, true);
    var var_1 = arg_2;
    var_1 = func_2(var_0.x);
    var_1 = arg_2;
    var_1 = func_2(!(var_0.x || (_wgslsmith_f_op_f32(804f + arg_2.b.x) >= -1130f)));
    return Struct_1(_wgslsmith_f_op_f32(func_4(func_2(select(var_0.x, var_0.x, true)), true, _wgslsmith_f_op_f32(func_2(any(vec3<bool>(true, var_0.x, false))).b.x - arg_2.b.x), vec2<i32>(1i, arg_2.a.x))), _wgslsmith_f_op_f32(abs(var_1.b.x)), arg_2.b.x);
}

fn func_5(arg_0: vec3<i32>, arg_1: vec2<i32>, arg_2: Struct_4) -> Struct_1 {
    var var_0 = arg_2.a.a;
    var_0 = arg_2.a.a;
    var_0 = arg_2.a.a;
    let var_1 = select(!vec4<bool>(!(arg_2.a.c != arg_2.a.c), (-53045i << (arg_2.c % 32u)) < countOneBits(-26101i), true, any(vec3<bool>(false, arg_2.a.c, arg_2.a.c))), vec4<bool>(!(!arg_2.a.c), all(select(vec4<bool>(arg_2.a.c, false, false, arg_2.a.c), !vec4<bool>(arg_2.a.c, false, arg_2.a.c, false), select(vec4<bool>(arg_2.a.c, true, arg_2.a.c, arg_2.a.c), vec4<bool>(true, arg_2.a.c, arg_2.a.c, true), arg_2.a.c))), arg_2.a.c, arg_2.a.c), vec4<bool>(true, false, -535f >= arg_2.b.x, arg_2.a.c));
    let var_2 = ~((vec4<u32>(u_input.a ^ 2317u, u_input.c.x >> (1u % 32u), _wgslsmith_sub_u32(128240u, 0u), ~0u) ^ ~u_input.c) | vec4<u32>(_wgslsmith_dot_vec3_u32(~u_input.c.zzw, ~vec3<u32>(u_input.a, 0u, 39353u)), ~4294967295u, u_input.a, select(57934u, 0u, !arg_2.a.c)));
    return arg_2.a.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(u_input.b.zww, firstLeadingBit(u_input.b.wz), Struct_4(Struct_3(func_1(_wgslsmith_mod_u32(u_input.c.x, u_input.a), select(u_input.b, vec4<i32>(-1i, 0i, -2147483647i, u_input.d), vec4<bool>(true, true, true, false)), Struct_2(u_input.b.yyy, vec4<f32>(321f, 609f, 2108f, -1225f)), u_input.c.x), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2105f), _wgslsmith_f_op_f32(f32(-1f) * -950f)), true), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-500f, 1301f, -442f) - vec3<f32>(219f, 169f, -1000f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 2137f, 374f) - vec3<f32>(754f, 426f, 284f)))), u_input.a));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(abs(var_0.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2101f)), -1330f);
    var var_2 = (min(firstLeadingBit(firstLeadingBit(0u)), 0u) >> (u_input.c.x % 32u)) | u_input.a;
    var var_3 = Struct_3(Struct_1(var_0.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_0.b + 481f), _wgslsmith_f_op_f32(f32(-1f) * -1992f), true))), 258f), vec2<f32>(_wgslsmith_f_op_f32(func_3(func_5(firstTrailingBit(u_input.b.zxx), -u_input.b.xy, Struct_4(Struct_3(var_0, vec2<f32>(-145f, var_1.c), false), vec3<f32>(-549f, var_0.a, 418f), 1u)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.b))))), true);
    let var_4 = var_3.c || var_3.c;
    var_1 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(func_3(Struct_1(_wgslsmith_f_op_f32(-961f - func_5(u_input.b.xwy, u_input.b.xw, Struct_4(Struct_3(Struct_1(var_1.c, -1047f, -823f), var_3.b, false), vec3<f32>(var_3.b.x, -659f, var_3.a.c), u_input.a)).b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_1.b, 1783f, var_3.c)) - -1161f), _wgslsmith_div_f32(-1647f, _wgslsmith_f_op_f32(floor(1890f)))))), _wgslsmith_clamp_vec4_u32(firstTrailingBit(vec4<u32>(4294967295u, 71293u, reverseBits(u_input.a), u_input.c.x)), reverseBits(~countOneBits(u_input.c)), vec4<u32>(~(~4294967295u), ~u_input.a, ~1u, ~(u_input.a ^ 25648u))));
}

