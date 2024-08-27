struct Struct_1 {
    a: u32,
    b: vec3<i32>,
}

struct Struct_2 {
    a: u32,
    b: vec4<i32>,
    c: vec2<u32>,
    d: i32,
    e: i32,
}

struct Struct_3 {
    a: bool,
    b: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: u32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_3, arg_1: u32) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1275f))));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -714f));
    var var_1 = arg_1;
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-361f * _wgslsmith_f_op_f32(-158f + 929f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(182f + 354f))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-691f + -1131f), -2204f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-615f + 282f))) * 1000f)));
    let var_2 = u_input.b;
    return var_2.x;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<i32>) -> vec3<bool> {
    let var_0 = arg_2.x;
    let var_1 = 0u;
    var var_2 = 34529i;
    var_2 = 0i;
    var_2 = max(2147483647i, _wgslsmith_add_i32((arg_0.b.x << (arg_1.a % 32u)) >> (1u % 32u), u_input.e));
    return !(!select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(false, false, false)), (arg_0.b.x ^ arg_1.b.x) != u_input.b.x));
}

fn func_2(arg_0: Struct_1) -> Struct_3 {
    var var_0 = _wgslsmith_div_u32(48874u, 4294967295u);
    let var_1 = func_4(Struct_1(arg_0.a, vec3<i32>(24049i, func_3(Struct_3(false, arg_0.b.x), u_input.c ^ arg_0.a), _wgslsmith_dot_vec2_i32(arg_0.b.yx, _wgslsmith_mult_vec2_i32(u_input.b, vec2<i32>(34083i, arg_0.b.x))))), Struct_1(min(abs(1u), _wgslsmith_mult_u32(countOneBits(0u), max(69111u, 1u))), vec3<i32>(u_input.b.x, -reverseBits(1i), _wgslsmith_dot_vec3_i32(firstTrailingBit(arg_0.b), arg_0.b | arg_0.b))), arg_0.b.xz);
    var_0 = max(arg_0.a, ~(select(u_input.c, u_input.c, all(vec2<bool>(var_1.x, var_1.x))) >> (~1u % 32u)));
    var_0 = ~(~abs(arg_0.a)) << (32967u % 32u);
    var var_2 = var_1.yz;
    return Struct_3(false, abs(i32(-1i) * -abs(-1i)));
}

fn func_1(arg_0: u32) -> u32 {
    var var_0 = vec2<i32>(u_input.b.x, ~0i);
    let var_1 = func_2(Struct_1(4294967295u, -(vec3<i32>(13059i, -2147483647i, var_0.x) ^ ~vec3<i32>(u_input.a, -8908i, var_0.x))));
    var var_2 = Struct_3(var_1.a, -1i);
    var var_3 = func_2(Struct_1(~84110u, select(firstTrailingBit(max(vec3<i32>(12522i, 23819i, 19392i), vec3<i32>(1i, var_0.x, 1i))), _wgslsmith_mult_vec3_i32(-vec3<i32>(var_2.b, 49628i, var_2.b), ~vec3<i32>(0i, u_input.b.x, -2147483647i)), all(vec3<bool>(false, var_1.a, false)))));
    let var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1710f, -1050f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(328f, 1220f))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(787f, 1154f) * vec2<f32>(1081f, -332f))))));
    return u_input.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~firstTrailingBit(~vec4<u32>(~1u, abs(u_input.c), _wgslsmith_add_u32(71260u, 0u), ~u_input.c));
    var_0 = abs(vec4<u32>(min(~1u, ~4294967295u) >> ((~4294967295u << (u_input.c % 32u)) % 32u), 55852u, countOneBits(_wgslsmith_clamp_u32(func_1(u_input.c), 1u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 47865u, u_input.c, u_input.c), vec4<u32>(u_input.c, var_0.x, var_0.x, 4294967295u)))), u_input.c));
    var_0 = select(_wgslsmith_mod_vec4_u32(~min(vec4<u32>(26257u, 6689u, u_input.c, u_input.c), select(vec4<u32>(var_0.x, var_0.x, u_input.c, u_input.c), vec4<u32>(52620u, 4294967295u, u_input.c, 5739u), vec4<bool>(true, false, false, true))), ~(~abs(vec4<u32>(85828u, 4294967295u, 1u, u_input.c)))), ~vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(52253u, 1u, u_input.c, 4294967295u), ~vec4<u32>(27837u, 17616u, u_input.c, 408u)), firstTrailingBit(u_input.c) ^ 1u, _wgslsmith_dot_vec2_u32(var_0.yy, vec2<u32>(44679u, 6473u)) & ~76847u, _wgslsmith_div_u32(~u_input.c, 18036u)), ~(~_wgslsmith_add_u32(u_input.c, var_0.x)) < var_0.x);
    var var_1 = !(!func_4(Struct_1(1u, _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.d, 22663i, 7144i), vec3<i32>(1i, 0i, u_input.b.x))), Struct_1(var_0.x, vec3<i32>(u_input.e, -2147483647i, u_input.a)), vec2<i32>(~u_input.a, 1i)));
    var_0 = _wgslsmith_mult_vec4_u32(vec4<u32>(~_wgslsmith_sub_u32(4294967295u, var_0.x), var_0.x, select(u_input.c, u_input.c, true | var_1.x), u_input.c) | ~(~select(vec4<u32>(4294967295u, var_0.x, var_0.x, var_0.x), vec4<u32>(u_input.c, var_0.x, var_0.x, u_input.c), vec4<bool>(false, true, false, var_1.x))), ~select(vec4<u32>(18725u, var_0.x, u_input.c, u_input.c) | ~vec4<u32>(86398u, 1u, var_0.x, var_0.x), _wgslsmith_mult_vec4_u32(vec4<u32>(37402u, var_0.x, 44161u, 4158u), vec4<u32>(var_0.x, 59535u, var_0.x, var_0.x)) & firstTrailingBit(vec4<u32>(var_0.x, 1u, 1u, 4294967295u)), var_1.x));
    let var_2 = vec4<u32>(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(~select(vec2<u32>(53209u, u_input.c), vec2<u32>(54506u, var_0.x), false), vec2<u32>(u_input.c, var_0.x)), ~abs(59652u)), _wgslsmith_mult_u32(20222u, _wgslsmith_dot_vec3_u32(vec3<u32>(abs(u_input.c), 45258u, ~4294967295u), abs(var_0.yxy))), ~countOneBits(4294967295u), ~select(_wgslsmith_add_u32(1u, var_0.x), 4294967295u, true));
    var_0 = ~abs(~vec4<u32>(1u, 24367u >> (var_2.x % 32u), 4294967295u, ~48608u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_i32(-2147483647i, ~2147483647i) >> (~u_input.c % 32u), vec3<u32>(~(~min(u_input.c, 7764u)), var_0.x, ~(var_2.x | select(4294967295u, var_2.x, var_1.x))));
}

