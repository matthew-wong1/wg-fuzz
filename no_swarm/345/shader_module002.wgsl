struct Struct_1 {
    a: vec4<bool>,
    b: vec4<i32>,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: vec4<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
}

struct Struct_4 {
    a: Struct_2,
    b: bool,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_3, arg_1: vec2<u32>, arg_2: vec4<i32>) -> vec2<bool> {
    var var_0 = _wgslsmith_div_u32((_wgslsmith_dot_vec3_u32(~vec3<u32>(32932u, 25351u, 10394u), vec3<u32>(1u, 0u, 84596u)) >> (u_input.a.x % 32u)) ^ abs(11299u), 4294967295u);
    var var_1 = vec2<u32>(1u, u_input.a.x);
    var var_2 = u_input.a;
    let var_3 = Struct_3(Struct_2(Struct_1(vec4<bool>(true, any(vec2<bool>(true, arg_0.a.a.a.x)), all(vec4<bool>(false, arg_0.a.d.a.x, arg_0.a.d.a.x, arg_0.a.a.a.x)), any(vec3<bool>(arg_0.a.d.a.x, true, arg_0.a.d.a.x))), ~vec4<i32>(-1i, 0i, -2147483647i, 7842i), arg_0.a.d.c), _wgslsmith_f_op_vec4_f32(floor(arg_0.a.c)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-arg_0.a.b))))), arg_0.a.d), 6084u);
    var var_4 = firstTrailingBit(select(~(~vec3<u32>(69471u, 0u, 36171u)), vec3<u32>(firstLeadingBit(54327u), 39197u, var_2.x << (1u % 32u)), arg_0.a.a.a.x)) ^ ~(~firstLeadingBit(vec3<u32>(var_2.x, 2612u, 0u)));
    return vec2<bool>(true && (any(arg_0.a.a.a.xz) == false), arg_0.a.a.a.x);
}

fn func_2() -> Struct_3 {
    let var_0 = select(select(select(vec2<bool>(true, true), vec2<bool>(all(vec2<bool>(true, false)), true), false), func_3(Struct_3(Struct_2(Struct_1(vec4<bool>(true, true, false, true), vec4<i32>(-55002i, 0i, -11009i, u_input.b), 409f), vec4<f32>(1274f, -957f, 632f, 1385f), vec4<f32>(2595f, -1387f, 726f, -303f), Struct_1(vec4<bool>(false, true, true, false), vec4<i32>(u_input.b, 1i, -2147483647i, 7983i), 546f)), u_input.a.x), vec2<u32>(u_input.a.x, 1u) >> (vec2<u32>(u_input.a.x, 1u) % vec2<u32>(32u)), vec4<i32>(u_input.b, -u_input.b, ~0i, reverseBits(u_input.b))), func_3(Struct_3(Struct_2(Struct_1(vec4<bool>(false, false, true, true), vec4<i32>(1i, 2147483647i, u_input.b, -2147483647i), -707f), vec4<f32>(-1332f, -538f, -424f, 2232f), vec4<f32>(-1977f, 1853f, 742f, -651f), Struct_1(vec4<bool>(false, true, false, true), vec4<i32>(u_input.b, -38888i, -24907i, 0i), -1272f)), u_input.a.x), vec2<u32>(u_input.a.x << (75899u % 32u), countOneBits(u_input.a.x)), _wgslsmith_sub_vec4_i32(abs(vec4<i32>(u_input.b, u_input.b, u_input.b, 31519i)), min(vec4<i32>(-12009i, -65728i, u_input.b, 15718i), vec4<i32>(u_input.b, -2147483647i, u_input.b, u_input.b))))), vec2<bool>(all(vec4<bool>(true, true, true, true)), func_3(Struct_3(Struct_2(Struct_1(vec4<bool>(false, false, true, false), vec4<i32>(0i, 0i, 23398i, -2147483647i), 297f), vec4<f32>(707f, 621f, 634f, 831f), vec4<f32>(-1239f, 1000f, -641f, 736f), Struct_1(vec4<bool>(true, false, false, false), vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b), 1503f)), 128089u), abs(u_input.a ^ u_input.a), ~(~vec4<i32>(u_input.b, 2147483647i, 2147483647i, 2985i))).x), u_input.a.x != ~(firstLeadingBit(80487u) & u_input.a.x));
    return Struct_3(Struct_2(Struct_1(!vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), ~vec4<i32>(-8917i, -1i, u_input.b, -23412i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(731f * -173f))), vec4<f32>(1f, 1f, 1f, 1f), vec4<f32>(-1059f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2142f - 1670f)), _wgslsmith_f_op_f32(max(-1000f, -236f)), 1f), Struct_1(vec4<bool>(var_0.x, all(vec3<bool>(false, false, false)), true, u_input.a.x < 35512u), vec4<i32>(70282i | u_input.b, -u_input.b, countOneBits(2147483647i), abs(u_input.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -879f) * _wgslsmith_f_op_f32(-1010f + 532f)))), 0u);
}

fn func_1(arg_0: vec4<i32>, arg_1: vec4<i32>, arg_2: vec3<f32>) -> vec2<bool> {
    let var_0 = func_2();
    var var_1 = var_0.a.d.b.x;
    let var_2 = vec3<bool>(!var_0.a.a.a.x, var_0.a.a.a.x, false);
    var var_3 = Struct_4(Struct_2(func_2().a.d, var_0.a.c, _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.a.b), var_0.a.b) * vec4<f32>(_wgslsmith_f_op_f32(-var_0.a.d.c), -1148f, _wgslsmith_f_op_f32(648f - var_0.a.d.c), 169f)), Struct_1(var_0.a.d.a, arg_0, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(var_0.a.d.c)))))), true, func_2());
    var_1 = -1012i;
    return var_2.yy;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1u;
    let var_1 = all(vec2<bool>(true, true)) != any(select(vec2<bool>(true, true), !func_1(vec4<i32>(u_input.b, u_input.b, 0i, u_input.b), vec4<i32>(u_input.b, u_input.b, 10005i, -29675i), vec3<f32>(-1041f, -515f, 1000f)), vec2<bool>(true, true)));
    let var_2 = vec4<i32>(30280i, u_input.b, i32(-1i) * -u_input.b, u_input.b) >> (_wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(max(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, u_input.a.x, u_input.a.x, 4294967295u), vec4<u32>(1u, 31075u, 31945u, u_input.a.x)), _wgslsmith_mult_vec4_u32(vec4<u32>(1u, u_input.a.x, 21263u, 2605u), vec4<u32>(41754u, 86526u, 61329u, 11077u))), vec4<u32>(~1u, u_input.a.x, u_input.a.x & u_input.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 0u, 24396u, 14409u), vec4<u32>(u_input.a.x, 1u, 52464u, u_input.a.x)))), countOneBits(~firstLeadingBit(vec4<u32>(u_input.a.x, u_input.a.x, 24880u, 0u)))) % vec4<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(countOneBits(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.b, u_input.b, var_2.x, var_2.x), var_2, ~var_2))), ~u_input.a.x);
}

