struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: i32,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: i32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<Struct_3, 31> = array<Struct_3, 31>(Struct_3(91217u, -18996i, vec3<bool>(true, false, false)), Struct_3(1u, i32(-2147483648), vec3<bool>(false, false, true)), Struct_3(4294967295u, i32(-2147483648), vec3<bool>(true, false, true)), Struct_3(38642u, 2147483647i, vec3<bool>(false, true, false)), Struct_3(1u, 2147483647i, vec3<bool>(true, false, false)), Struct_3(70811u, -27572i, vec3<bool>(true, false, false)), Struct_3(24511u, 16254i, vec3<bool>(false, true, true)), Struct_3(0u, -1i, vec3<bool>(false, true, false)), Struct_3(44901u, 1i, vec3<bool>(false, false, false)), Struct_3(38110u, -1i, vec3<bool>(false, false, true)), Struct_3(0u, 2147483647i, vec3<bool>(false, true, false)), Struct_3(4294967295u, i32(-2147483648), vec3<bool>(false, false, true)), Struct_3(1u, -40426i, vec3<bool>(true, false, true)), Struct_3(49585u, 1i, vec3<bool>(true, true, false)), Struct_3(4294967295u, -27350i, vec3<bool>(true, true, false)), Struct_3(1u, 0i, vec3<bool>(true, false, true)), Struct_3(4294967295u, 16544i, vec3<bool>(true, false, true)), Struct_3(2448u, -43502i, vec3<bool>(true, false, true)), Struct_3(22096u, -21863i, vec3<bool>(false, true, false)), Struct_3(4294967295u, 0i, vec3<bool>(true, false, false)), Struct_3(44899u, i32(-2147483648), vec3<bool>(true, true, true)), Struct_3(1u, 0i, vec3<bool>(true, false, false)), Struct_3(4294967295u, 8659i, vec3<bool>(false, true, true)), Struct_3(17841u, 0i, vec3<bool>(true, false, false)), Struct_3(71445u, 0i, vec3<bool>(false, true, true)), Struct_3(4294967295u, 2147483647i, vec3<bool>(true, false, true)), Struct_3(4294967295u, -15037i, vec3<bool>(true, true, true)), Struct_3(4294967295u, -28441i, vec3<bool>(false, false, true)), Struct_3(70957u, 0i, vec3<bool>(false, false, true)), Struct_3(0u, 27922i, vec3<bool>(false, false, true)), Struct_3(1u, 0i, vec3<bool>(false, false, true)));

var<private> global2: vec4<u32>;

var<private> global3: array<i32, 2> = array<i32, 2>(-24720i, -1i);

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3() -> u32 {
    global1 = array<Struct_3, 31>();
    global2 = u_input.b;
    var var_0 = Struct_2(global2.zy, Struct_1(all(vec3<bool>(all(vec3<bool>(global0.c.x, global0.c.x, global0.c.x)), false, global0.c.x))));
    var var_1 = var_0.b;
    global3 = array<i32, 2>();
    return 1u;
}

fn func_2(arg_0: f32) -> vec2<i32> {
    global0 = Struct_3(~1u, -global3[_wgslsmith_index_u32(global2.x, 2u)], select(select(global0.c, !(!vec3<bool>(true, false, global0.c.x)), all(global0.c)), !vec3<bool>(false, false, global0.c.x), global0.c.x));
    var var_0 = all(global0.c);
    var var_1 = 0i;
    let var_2 = global1[_wgslsmith_index_u32(~_wgslsmith_div_u32((~0u | u_input.b.x) ^ ~(~4294967295u), _wgslsmith_div_u32(~func_3(), 49116u)), 31u)];
    let var_3 = Struct_1(false);
    return -vec2<i32>(var_2.b, abs(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, global3[_wgslsmith_index_u32(18233u, 2u)], -1i, 1i), -vec4<i32>(-14190i, 30385i, 10814i, 17009i))));
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: Struct_2, arg_3: vec3<i32>) -> vec4<bool> {
    return vec4<bool>(true, global0.c.x, !(true | select(arg_2.b.a, !arg_2.b.a, any(vec2<bool>(arg_1.a, true)))), !global0.c.x);
}

fn func_1() -> Struct_1 {
    let var_0 = select(func_4(_wgslsmith_div_vec2_i32(vec2<i32>(-19784i, _wgslsmith_dot_vec3_i32(vec3<i32>(global3[_wgslsmith_index_u32(21184u, 2u)], -9339i, -1i), vec3<i32>(-45961i, 21782i, 73094i))), ~func_2(513f)), Struct_1(global0.c.x), Struct_2(~(~global2.xw), Struct_1(select(false, true, false))), select(_wgslsmith_mod_vec3_i32(abs(vec3<i32>(13025i, 33638i, 2147483647i)), -vec3<i32>(u_input.c, global0.b, 2147483647i)), vec3<i32>(1i, global0.b, 7330i), select(!vec3<bool>(global0.c.x, true, global0.c.x), vec3<bool>(false, false, global0.c.x), any(vec2<bool>(false, global0.c.x))))), func_4(~min(_wgslsmith_mult_vec2_i32(vec2<i32>(global0.b, 54337i), vec2<i32>(-44404i, global0.b)), vec2<i32>(u_input.c, 18527i)), Struct_1(true), Struct_2(global2.zw & ~vec2<u32>(135894u, global0.a), Struct_1(any(vec4<bool>(global0.c.x, global0.c.x, false, false)))), countOneBits(vec3<i32>(u_input.c, 36511i, 5226i)) & vec3<i32>(i32(-1i) * -2147483647i, reverseBits(global3[_wgslsmith_index_u32(global2.x, 2u)]), _wgslsmith_mult_i32(u_input.c, u_input.c))), vec4<bool>(all(!select(global0.c, global0.c, vec3<bool>(false, global0.c.x, global0.c.x))), all(select(vec3<bool>(true, true, global0.c.x), func_4(vec2<i32>(global3[_wgslsmith_index_u32(global2.x, 2u)], u_input.c), Struct_1(true), Struct_2(global2.wx, Struct_1(true)), vec3<i32>(15552i, global0.b, 2147483647i)).yzw, global0.c)), ~(~(-19473i)) >= max(global0.b & -2147483647i, global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(global2.x, 0u), 2u)]), all(global0.c.zx)));
    global1 = array<Struct_3, 31>();
    let var_1 = true;
    var var_2 = _wgslsmith_f_op_f32(select(244f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-978f * 493f)))), func_4(func_2(_wgslsmith_f_op_f32(219f * _wgslsmith_f_op_f32(select(759f, 911f, var_0.x)))), Struct_1(any(vec4<bool>(var_0.x, var_0.x, true, global0.c.x))), Struct_2(~(~vec2<u32>(global2.x, u_input.d.x)), Struct_1(true)), min(_wgslsmith_mult_vec3_i32(vec3<i32>(global0.b, 2147483647i, u_input.c), vec3<i32>(61326i, global0.b, 2147483647i)), _wgslsmith_add_vec3_i32(vec3<i32>(global3[_wgslsmith_index_u32(global0.a, 2u)], -4127i, global0.b), vec3<i32>(global0.b, 2147483647i, -6867i))) << (global2.yxw % vec3<u32>(32u))).x));
    let var_3 = 1529f;
    return Struct_1(any(var_0.yyx));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1[_wgslsmith_index_u32(0u, 31u)];
    global2 = abs(~(~vec4<u32>(var_0.a, 4294967295u, u_input.a, 592u)) >> (vec4<u32>(u_input.b.x, min(16836u & u_input.d.x, _wgslsmith_dot_vec4_u32(vec4<u32>(17204u, global0.a, u_input.b.x, 28797u), vec4<u32>(global0.a, var_0.a, 1u, 16573u))), 4516u, max(global2.x, max(global0.a, global0.a))) % vec4<u32>(32u)));
    let var_1 = Struct_1(true);
    global3 = array<i32, 2>();
    var var_2 = func_1();
    let var_3 = var_1;
    var var_4 = Struct_2(min(_wgslsmith_div_vec2_u32(vec2<u32>(global0.a, 81793u) & ~vec2<u32>(1u, global0.a), select(global2.xy, u_input.d.zz | vec2<u32>(var_0.a, global2.x), any(vec3<bool>(false, var_1.a, var_0.c.x)))), u_input.b.wy | u_input.d.zw), func_1());
    global1 = array<Struct_3, 31>();
    let x = u_input.a;
    s_output = StorageBuffer(419f, vec3<f32>(_wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -602f))), 670f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-113f, _wgslsmith_f_op_f32(-1175f + -869f))) + _wgslsmith_f_op_f32(693f - _wgslsmith_f_op_f32(-692f - -1009f)))), u_input.c, vec2<u32>(_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(u_input.b, ~u_input.d), 92408u), var_4.a.x));
}

