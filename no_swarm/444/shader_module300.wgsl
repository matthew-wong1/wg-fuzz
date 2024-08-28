struct Struct_1 {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec2<bool>,
    d: u32,
    e: f32,
}

struct Struct_2 {
    a: f32,
    b: vec4<u32>,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: f32,
    b: bool,
    c: vec4<f32>,
    d: vec2<f32>,
}

struct Struct_5 {
    a: Struct_3,
    b: i32,
    c: f32,
    d: vec4<i32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<u32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: vec3<f32>, arg_1: vec3<i32>, arg_2: vec4<bool>, arg_3: vec3<bool>) -> u32 {
    var var_0 = arg_2.x;
    var var_1 = vec4<i32>(-8624i, u_input.c, i32(-1i) * -22315i, _wgslsmith_add_i32(-9461i, 1i) >> (_wgslsmith_dot_vec2_u32(vec2<u32>(2708u | u_input.a.x, 1u), _wgslsmith_sub_vec2_u32(u_input.a, u_input.a)) % 32u));
    return 29458u;
}

fn func_2() -> Struct_2 {
    var var_0 = true;
    var_0 = !all(vec3<bool>(false, !select(true, true, true), true));
    let var_1 = max(abs(u_input.a.x), ~(~max(func_3(vec3<f32>(-1221f, 836f, 251f), vec3<i32>(u_input.c, u_input.d, -10317i), vec4<bool>(true, true, true, false), vec3<bool>(true, false, false)), 0u)));
    var var_2 = ~(~(-_wgslsmith_sub_i32(~u_input.b, 0i)));
    var var_3 = true;
    return Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -285f))), select(min(firstLeadingBit(vec4<u32>(324u, 4294967295u, 36835u, 40761u)), ~(~vec4<u32>(var_1, 1u, 1u, var_1))), vec4<u32>(u_input.a.x, _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, u_input.e, 1u, u_input.e), vec4<u32>(0u, 43300u, 1u, var_1)), ~vec4<u32>(u_input.a.x, 0u, 19101u, u_input.a.x)), u_input.a.x | ~var_1, ~(~0u)), vec4<bool>(any(select(vec2<bool>(false, false), vec2<bool>(false, true), true)), true, true, all(vec3<bool>(false, true, false)))));
}

fn func_1(arg_0: i32, arg_1: Struct_3, arg_2: bool, arg_3: Struct_5) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_3.c + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(arg_3.c)), -1604f))), arg_3.e.e));
    let var_1 = func_2();
    var var_2 = Struct_1(-(_wgslsmith_div_vec4_i32(vec4<i32>(arg_3.b, 1i, arg_3.e.b.x, 0i), select(vec4<i32>(33020i, arg_0, 1i, -1i), arg_3.d, vec4<bool>(true, arg_3.a.a, true, arg_3.e.c.x))) >> (vec4<u32>(u_input.a.x, var_1.b.x, arg_3.e.d, func_2().b.x) % vec4<u32>(32u))), vec2<i32>(u_input.b, u_input.c), vec2<bool>(!arg_3.a.a, !((var_1.b.x >= 4294967295u) & false)), ~1u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)) - _wgslsmith_f_op_f32(abs(var_1.a))));
    var_2 = Struct_1(firstTrailingBit(vec4<i32>(-var_2.a.x >> (~9692u % 32u), -1285i, var_2.a.x, firstLeadingBit(_wgslsmith_sub_i32(9307i, 1i)))), -(~(reverseBits(var_2.a.xy) ^ ~arg_3.d.zx)), arg_3.e.c, var_1.b.x, var_1.a);
    var_2 = arg_3.e;
    return -259f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(-296f, 1000f)))))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(u_input.c, Struct_3(true), var_0, Struct_5(Struct_3(var_0), 2147483647i, 423f, vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.c), Struct_1(vec4<i32>(-94344i, u_input.d, u_input.d, u_input.d), vec2<i32>(-2147483647i, 0i), vec2<bool>(true, var_0), u_input.a.x, 574f)))), 1269f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1336f * 1526f) + _wgslsmith_f_op_f32(-1303f * -974f)))), _wgslsmith_f_op_f32(func_1(abs(firstTrailingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, 2147483647i, u_input.d, u_input.c), vec4<i32>(2147483647i, -2147483647i, 3964i, u_input.c)))), Struct_3(true), true, Struct_5(Struct_3(var_0 && true), u_input.d, 619f, -vec4<i32>(u_input.d, u_input.b, -44943i, -38995i), Struct_1(vec4<i32>(u_input.c, 12592i, -2147483647i, -2147483647i) << (vec4<u32>(15789u, 4294967295u, 35678u, 1u) % vec4<u32>(32u)), vec2<i32>(u_input.d, 2147483647i), !vec2<bool>(var_0, false), u_input.e << (u_input.e % 32u), -324f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-671f, -1199f)))) + _wgslsmith_f_op_f32(step(-351f, _wgslsmith_f_op_f32(step(2930f, _wgslsmith_f_op_f32(round(320f))))))));
    var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-469f, var_1.x, 1320f, var_1.x), vec4<f32>(-1120f, var_1.x, var_1.x, var_1.x)))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(func_1(u_input.d, Struct_3(var_0), false, Struct_5(Struct_3(false), 2147483647i, -935f, vec4<i32>(-1i, 0i, u_input.b, u_input.d), Struct_1(vec4<i32>(-2147483647i, 1i, u_input.c, 0i), vec2<i32>(u_input.c, u_input.b), vec2<bool>(var_0, false), u_input.a.x, var_1.x)))), 963f, 451f, _wgslsmith_f_op_f32(-922f + var_1.x)))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(max(var_1.x, var_1.x)), _wgslsmith_f_op_f32(var_1.x + var_1.x), var_1.x))))));
    var var_2 = Struct_5(Struct_3(any(vec3<bool>(all(vec2<bool>(true, false)), true, var_0))), ~(-14938i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_1.x))), vec4<i32>(-countOneBits(~18574i), -111821i, abs(-reverseBits(2147483647i)), ~(-u_input.d << (_wgslsmith_sub_u32(u_input.a.x, 0u) % 32u))), Struct_1(_wgslsmith_add_vec4_i32(~vec4<i32>(-9084i, u_input.b, 19702i, u_input.d), _wgslsmith_mult_vec4_i32(vec4<i32>(-1i, u_input.c, u_input.b, 0i), vec4<i32>(1i, -2147483647i, u_input.b, 0i))) & (~vec4<i32>(u_input.d, -16793i, 2147483647i, u_input.b) >> ((vec4<u32>(u_input.e, u_input.a.x, u_input.e, u_input.e) ^ vec4<u32>(6010u, u_input.a.x, u_input.a.x, u_input.e)) % vec4<u32>(32u))), vec2<i32>(-1i, ~(-4625i)), vec2<bool>(var_0, !any(vec2<bool>(var_0, var_0))), _wgslsmith_mult_u32(_wgslsmith_sub_u32(~u_input.e, min(15161u, 27973u)), u_input.e), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x * var_1.x))));
    var_2 = Struct_5(Struct_3(false), ~var_2.e.a.x, var_1.x, ~((var_2.d & ~var_2.d) ^ _wgslsmith_div_vec4_i32(~vec4<i32>(u_input.d, u_input.b, 0i, 1i), vec4<i32>(0i, -1i, var_2.e.b.x, 0i))), Struct_1(_wgslsmith_add_vec4_i32(-vec4<i32>(u_input.c, u_input.b, u_input.b, 1i), vec4<i32>(_wgslsmith_dot_vec3_i32(var_2.d.wxx, var_2.d.zyx), -37374i, _wgslsmith_add_i32(-1i, u_input.d), _wgslsmith_dot_vec4_i32(vec4<i32>(-58228i, u_input.c, var_2.b, var_2.e.a.x), vec4<i32>(0i, u_input.b, u_input.d, var_2.d.x)))), max(~vec2<i32>(-9310i, 1i), abs(var_2.e.b) << (firstLeadingBit(u_input.a) % vec2<u32>(32u))), !var_2.e.c, ~u_input.a.x, var_1.x));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.e.e * 1000f)));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.wyw, select(select(vec4<u32>(_wgslsmith_div_u32(4294967295u, u_input.e), min(72242u, 0u), _wgslsmith_mod_u32(u_input.e, var_2.e.d), 68649u), countOneBits(reverseBits(vec4<u32>(var_2.e.d, var_2.e.d, var_2.e.d, 4294967295u))), var_2.a.a), ~(func_2().b ^ _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, var_2.e.d, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, var_2.e.d, 4294967295u))), !select(!vec4<bool>(true, var_2.a.a, false, var_0), select(vec4<bool>(var_2.e.c.x, var_2.a.a, false, true), vec4<bool>(true, false, var_0, var_0), var_2.e.c.x), var_2.e.d == u_input.a.x)), firstTrailingBit(~(~reverseBits(vec2<i32>(-4107i, u_input.b)))));
}

