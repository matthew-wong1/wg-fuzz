struct Struct_1 {
    a: i32,
    b: bool,
    c: u32,
    d: vec4<bool>,
    e: f32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_2,
}

struct Struct_4 {
    a: i32,
}

struct Struct_5 {
    a: vec2<f32>,
    b: vec3<bool>,
    c: Struct_1,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: bool, arg_1: Struct_2) -> f32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-527f, -817f, 1174f) * vec3<f32>(-1076f, -1218f, 2175f))) * _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(454f, -149f, 814f) * vec3<f32>(672f, 591f, 703f)))))) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(189f * -266f)), -190f, -1308f), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(710f, 1149f, 315f)) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(796f, -1224f, -578f), vec3<f32>(-112f, -311f, 1798f), vec3<bool>(true, arg_0, false)))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-725f, -148f, -1847f))), vec3<bool>(any(vec4<bool>(arg_0, false, arg_0, false)), false, all(vec4<bool>(arg_0, false, arg_0, true))))), select(vec3<bool>(arg_0 | false, false, !arg_0), select(!vec3<bool>(arg_0, arg_0, arg_0), select(vec3<bool>(true, arg_0, true), vec3<bool>(arg_0, true, true), arg_0), 1u == u_input.a.x), !select(arg_0, arg_0, false)))));
    let var_1 = Struct_5(var_0.zz, select(select(vec3<bool>(!arg_0, true, true), vec3<bool>(true, arg_0, u_input.d > u_input.d), select(vec3<bool>(true, true, true), select(vec3<bool>(arg_0, true, true), vec3<bool>(arg_0, arg_0, false), false), all(vec4<bool>(arg_0, false, false, arg_0)))), !vec3<bool>(5022u == arg_1.a, arg_0 | arg_0, arg_0), vec3<bool>(!all(vec3<bool>(false, arg_0, arg_0)), any(vec2<bool>(false, arg_0)) & (1u > arg_1.a), true)), Struct_1(-30136i, any(select(select(vec2<bool>(true, false), vec2<bool>(arg_0, true), vec2<bool>(arg_0, arg_0)), !vec2<bool>(false, arg_0), true)), _wgslsmith_sub_u32(~arg_1.a >> (4294967295u % 32u), ~arg_1.a), !vec4<bool>(true | arg_0, false, !arg_0, false), _wgslsmith_f_op_f32(step(-1096f, var_0.x))), Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-283f, -1000f), vec2<f32>(850f, var_0.x)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -465f))) - var_0.yz), arg_1));
    let var_2 = var_1.d;
    var var_3 = ~(~_wgslsmith_clamp_u32(select(u_input.c, abs(30602u), true), 28674u, ~countOneBits(arg_1.a)));
    let var_4 = true;
    return 1789f;
}

fn func_2(arg_0: Struct_2, arg_1: u32, arg_2: u32) -> Struct_4 {
    var var_0 = Struct_4(-_wgslsmith_mod_i32(-(~u_input.b.x), _wgslsmith_add_i32(-3805i, 1i)));
    let var_1 = Struct_3(vec2<f32>(_wgslsmith_f_op_f32(func_3(all(vec2<bool>(true, true)), Struct_2(77072u))), -187f), Struct_2(~_wgslsmith_dot_vec4_u32(~vec4<u32>(5788u, 71043u, 4294967295u, arg_2), vec4<u32>(u_input.c, 0u, u_input.a.x, 4294967295u))));
    let var_2 = (-501f == _wgslsmith_f_op_f32(-var_1.a.x)) == false;
    var var_3 = vec2<u32>(60987u, 1u);
    var var_4 = arg_0;
    return Struct_4(var_0.a);
}

fn func_1(arg_0: vec4<i32>, arg_1: bool, arg_2: i32, arg_3: Struct_1) -> vec2<bool> {
    let var_0 = func_2(Struct_2(4294967295u), ~(4294967295u << (_wgslsmith_mod_u32(~u_input.c, arg_3.c) % 32u)), arg_3.c);
    let var_1 = -25301i;
    var var_2 = !(_wgslsmith_div_u32(arg_3.c ^ _wgslsmith_dot_vec4_u32(vec4<u32>(arg_3.c, 1u, arg_3.c, arg_3.c), vec4<u32>(0u, 0u, 576u, 0u)), _wgslsmith_div_u32(~arg_3.c, ~4294967295u)) != _wgslsmith_mult_u32(~arg_3.c | 0u, ~_wgslsmith_div_u32(23553u, 15609u)));
    var_2 = false;
    let var_3 = ~(~4294967295u);
    return arg_3.d.yx;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(!select(func_1(u_input.b ^ u_input.b, true, _wgslsmith_dot_vec3_i32(u_input.b.xzz, vec3<i32>(u_input.d, u_input.b.x, -57035i)), Struct_1(-4228i, false, u_input.a.x, vec4<bool>(false, true, true, true), 1042f)), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(true, Struct_2(64142u)))) >= -1000f);
    var_0 = func_1(u_input.b, any(func_1(reverseBits(-u_input.b), true, -1i >> ((u_input.c << (u_input.c % 32u)) % 32u), Struct_1(-5352i, true, min(u_input.c, 0u), select(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(var_0.x, true, var_0.x, true), vec4<bool>(true, true, true, true)), _wgslsmith_div_f32(637f, -472f)))), func_2(Struct_2(abs(_wgslsmith_sub_u32(20655u, 1u))), 1u, 118079u).a, Struct_1(_wgslsmith_clamp_i32(u_input.d, firstLeadingBit(min(2147483647i, u_input.b.x)), u_input.b.x), var_0.x, countOneBits(u_input.a.x), select(!select(vec4<bool>(var_0.x, var_0.x, false, true), vec4<bool>(var_0.x, false, true, var_0.x), true), !select(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(true, var_0.x, true, true), var_0.x), !(true | var_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-906f + -933f), -920f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1526f * 935f)))));
    let var_1 = Struct_5(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(301f, -220f) - _wgslsmith_div_vec2_f32(vec2<f32>(478f, -601f), vec2<f32>(-131f, 797f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-684f, 450f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1651f, 356f)) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-361f, -2734f))), _wgslsmith_div_vec2_f32(vec2<f32>(-1181f, 771f), vec2<f32>(1848f, 1143f))))), !(!select(vec3<bool>(false, var_0.x, true), !vec3<bool>(var_0.x, false, var_0.x), var_0.x)), Struct_1(u_input.b.x, any(vec3<bool>(var_0.x, var_0.x, all(vec3<bool>(true, false, var_0.x)))), u_input.c, !(!(!vec4<bool>(false, var_0.x, var_0.x, var_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-351f, _wgslsmith_f_op_f32(2140f + 936f))))), Struct_3(vec2<f32>(_wgslsmith_f_op_f32(func_3(any(vec3<bool>(false, false, var_0.x)), Struct_2(u_input.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(var_0.x, Struct_2(4294967295u))))), Struct_2(1u)));
    let var_2 = Struct_2(firstTrailingBit(u_input.c));
    var var_3 = func_2(Struct_2(select(~var_1.d.b.a, abs(~0u), (1i & var_1.c.a) != ~var_1.c.a)), _wgslsmith_div_u32(_wgslsmith_add_u32(abs(u_input.a.x) | var_2.a, ~var_1.d.b.a), _wgslsmith_clamp_u32(0u, firstLeadingBit(4294967295u), ~1u)), 0u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(var_1.a, vec2<f32>(1310f, 1177f))) * vec2<f32>(var_1.a.x, var_1.a.x)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_1.c.e, 874f))))))));
}

