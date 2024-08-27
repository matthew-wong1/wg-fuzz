struct Struct_1 {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: Struct_2,
    d: vec3<u32>,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec3<u32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: Struct_2;

var<private> global2: array<vec3<f32>, 16> = array<vec3<f32>, 16>(vec3<f32>(-1504f, -1085f, -1424f), vec3<f32>(1033f, -395f, 2094f), vec3<f32>(124f, 1231f, -1000f), vec3<f32>(-1631f, 1277f, 686f), vec3<f32>(-372f, 799f, 453f), vec3<f32>(209f, -775f, 860f), vec3<f32>(-1452f, 1000f, 733f), vec3<f32>(640f, -1350f, 1000f), vec3<f32>(2121f, -1714f, 151f), vec3<f32>(1085f, 1396f, -1192f), vec3<f32>(1623f, -2138f, 576f), vec3<f32>(-1051f, -401f, 1000f), vec3<f32>(-333f, 2200f, 366f), vec3<f32>(-2482f, -1502f, 1427f), vec3<f32>(-487f, -1000f, -1136f), vec3<f32>(-1362f, -839f, 847f));

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: vec2<f32>, arg_1: vec4<bool>) -> i32 {
    var var_0 = arg_0.x;
    let var_1 = ~(~(~(~u_input.b)));
    global1 = Struct_2(global1.b, Struct_1(select(vec3<i32>(global1.a.b.x, global1.a.a.x, -u_input.e), vec3<i32>(countOneBits(18858i), 0i, max(2147483647i, -74076i)), all(select(vec4<bool>(true, false, true, false), vec4<bool>(false, global1.a.c.x, arg_1.x, true), arg_1))), global1.a.b, arg_1));
    let var_2 = ~vec2<i32>(u_input.e, -u_input.e);
    var var_3 = Struct_2(Struct_1(global1.b.a >> ((select(vec3<u32>(38800u, var_1, var_1), vec3<u32>(u_input.a.x, var_1, 4294967295u), global1.a.c.x) | _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.c.x, 2337u, var_1), vec3<u32>(u_input.a.x, var_1, var_1))) % vec3<u32>(32u)), _wgslsmith_add_vec2_i32(_wgslsmith_add_vec2_i32(global1.b.b, global1.b.a.zx), vec2<i32>(-var_2.x, ~global1.b.a.x)), arg_1), global1.a);
    return abs(~(-u_input.e));
}

fn func_2(arg_0: vec4<bool>, arg_1: Struct_3, arg_2: u32) -> i32 {
    let var_0 = i32(-1i) * -2147483647i;
    let var_1 = arg_1.b.b.x;
    let var_2 = arg_1.c;
    global1 = arg_1.c;
    global0 = any(!vec3<bool>(!all(vec2<bool>(false, arg_1.c.a.c.x)), arg_0.x, false));
    return _wgslsmith_div_i32(0i, _wgslsmith_add_i32(-firstLeadingBit(_wgslsmith_mod_i32(-1i, u_input.e)), _wgslsmith_mod_i32(_wgslsmith_mult_i32(func_3(vec2<f32>(-196f, 358f), arg_0), _wgslsmith_clamp_i32(var_1, u_input.e, var_0)), ~(-35705i))));
}

fn func_1(arg_0: Struct_1) -> vec2<i32> {
    global2 = array<vec3<f32>, 16>();
    var var_0 = Struct_3(!(!global1.b.c.x), Struct_1(~(~arg_0.a), ~_wgslsmith_mod_vec2_i32(-global1.b.b, ~global1.a.a.zy), select(vec4<bool>(true, global1.a.c.x, any(vec3<bool>(true, true, true)), true), global1.b.c, global1.a.c)), Struct_2(Struct_1(arg_0.a, abs(~vec2<i32>(arg_0.a.x, global1.b.a.x)), arg_0.c), global1.b), _wgslsmith_sub_vec3_u32(u_input.c, vec3<u32>(_wgslsmith_add_u32(u_input.b, _wgslsmith_mult_u32(u_input.b, 4294967295u)), select(~27977u, u_input.b, all(global1.a.c.wx)), ~u_input.b)), global1.b.c.zx);
    return firstLeadingBit(vec2<i32>(-abs(u_input.e | 6073i), _wgslsmith_sub_i32(~25422i, _wgslsmith_sub_i32(func_2(vec4<bool>(arg_0.c.x, global1.b.c.x, true, false), Struct_3(global1.a.c.x, global1.a, Struct_2(global1.b, arg_0), u_input.c, var_0.b.c.yy), 0u), -30468i))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_2(Struct_1(_wgslsmith_mult_vec3_i32(_wgslsmith_sub_vec3_i32(countOneBits(vec3<i32>(2147483647i, global1.b.a.x, u_input.e)), firstTrailingBit(vec3<i32>(u_input.e, global1.b.b.x, global1.a.a.x))), vec3<i32>(reverseBits(-25466i), -u_input.e, -1i)), func_1(global1.b), vec4<bool>(!(u_input.c.x < u_input.c.x), func_3(vec2<f32>(123f, -449f), vec4<bool>(global1.b.c.x, global1.a.c.x, false, global1.b.c.x)) <= 2147483647i, global1.a.c.x, global1.b.c.x)), global1.a);
    var var_0 = _wgslsmith_f_op_f32(max(644f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1244f))) + -957f))));
    var var_1 = global1.b;
    var_1 = Struct_1(_wgslsmith_div_vec3_i32(vec3<i32>(max(~var_1.a.x, ~9427i), 2147483647i, 2147483647i), abs(~_wgslsmith_clamp_vec3_i32(global1.a.a, var_1.a, global1.b.a))), vec2<i32>(global1.b.b.x & _wgslsmith_sub_i32(var_1.a.x, max(-13833i, var_1.b.x)), global1.b.a.x), global1.b.c);
    let var_2 = min(~u_input.d, u_input.d >> (1u % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(abs(var_1.b) << (_wgslsmith_add_vec2_u32(~(~u_input.c.yz), u_input.a) % vec2<u32>(32u)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1470f))))), _wgslsmith_div_vec3_u32(u_input.c, vec3<u32>(var_2, var_2 | u_input.b, var_2) >> (((vec3<u32>(1u, var_2, var_2) >> (vec3<u32>(1u, 0u, 28536u) % vec3<u32>(32u))) | u_input.c) % vec3<u32>(32u))));
}

