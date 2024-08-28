struct Struct_1 {
    a: bool,
    b: vec3<i32>,
    c: f32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: u32,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: bool,
    c: Struct_1,
    d: vec2<u32>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec3<u32>,
    d: vec2<f32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 6>;

var<private> global1: Struct_3 = Struct_3(vec4<i32>(1i, 31836i, 26842i, 27092i), false, Struct_1(true, vec3<i32>(2147483647i, -26619i, 7131i), 103f), vec2<u32>(24698u, 37230u));

var<private> global2: bool = false;

var<private> global3: u32;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3() -> vec4<bool> {
    let var_0 = true;
    var var_1 = -357f;
    global3 = min(u_input.a, u_input.a) & select(_wgslsmith_div_u32(u_input.a, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 4294967295u), vec2<u32>(global1.d.x, 96020u))), _wgslsmith_sub_u32(global1.d.x, _wgslsmith_mult_u32(4294967295u, global1.d.x)) >> (_wgslsmith_clamp_u32(~0u, _wgslsmith_mult_u32(u_input.a, 4294967295u), 4294967295u) % 32u), all(vec3<bool>(var_0, true, any(vec2<bool>(false, var_0)))));
    var var_2 = abs(_wgslsmith_mod_vec4_u32(vec4<u32>(global1.d.x, u_input.a, reverseBits(u_input.a) | 181u, global1.d.x), min(_wgslsmith_sub_vec4_u32(vec4<u32>(0u, global1.d.x, 0u, 82957u), vec4<u32>(4294967295u, 26498u, global1.d.x, u_input.a)) & vec4<u32>(0u, global1.d.x, 11341u, u_input.a), ~vec4<u32>(1u, u_input.a, 11116u, 0u) & (vec4<u32>(u_input.a, 1u, global1.d.x, u_input.a) ^ vec4<u32>(u_input.a, 1u, u_input.a, 1u)))));
    var_1 = -1374f;
    return !select(!(!vec4<bool>(true, true, global1.b, false)), vec4<bool>((global1.b || true) & any(vec2<bool>(global1.b, true)), all(!vec4<bool>(global1.b, global1.c.a, true, global1.b)), !(false | var_0), global1.b), select(!vec4<bool>(true, var_0, false, true), select(select(vec4<bool>(global1.b, false, true, false), vec4<bool>(global1.b, false, false, global1.b), global1.b), !vec4<bool>(false, true, global1.c.a, true), vec4<bool>(var_0, true, global1.c.a, var_0)), select(4294967295u, 14548u, global1.c.a) >= firstTrailingBit(71179u)));
}

fn func_2() -> Struct_3 {
    global2 = _wgslsmith_f_op_f32(round(814f)) > _wgslsmith_f_op_f32(max(global1.c.c, global1.c.c));
    let var_0 = func_3();
    var var_1 = Struct_1(false == !(_wgslsmith_clamp_u32(46128u, global1.d.x, 64242u) > global1.d.x), global1.a.zyx, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(-1255f, global1.c.c)), _wgslsmith_f_op_f32(f32(-1f) * -1764f), true))))));
    var var_2 = ~_wgslsmith_mod_vec2_u32(vec2<u32>(~u_input.a, 1u) >> (vec2<u32>(_wgslsmith_mod_u32(u_input.a, u_input.a), 67343u) % vec2<u32>(32u)), select(~(global1.d >> (global1.d % vec2<u32>(32u))), _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(21635u, u_input.a) | global1.d), vec2<bool>(!var_1.a, -50962i < var_1.b.x)));
    let var_3 = var_1.a;
    return Struct_3(_wgslsmith_sub_vec4_i32(vec4<i32>(-36745i, firstLeadingBit(abs(var_1.b.x)), _wgslsmith_mult_i32(i32(-1i) * -1i, firstTrailingBit(global1.c.b.x)), 1i), min(~max(u_input.c, vec4<i32>(u_input.c.x, 2147483647i, -47679i, global0[_wgslsmith_index_u32(u_input.a, 6u)])), global1.a)), true, global1.c, firstLeadingBit(~global1.d));
}

fn func_1() -> Struct_2 {
    global1 = func_2();
    global2 = all(!select(vec3<bool>(global1.b, global1.c.a, global0[_wgslsmith_index_u32(1u, 6u)] <= -36714i), !vec3<bool>(global1.c.a, true, false), global1.c.c != _wgslsmith_f_op_f32(-global1.c.c)));
    let var_0 = vec4<f32>(global1.c.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global1.c.c * _wgslsmith_f_op_f32(-global1.c.c)), -1220f))), 380f, -1389f);
    var var_1 = Struct_2(select(select(!select(vec2<bool>(global1.c.a, global1.c.a), vec2<bool>(false, global1.c.a), false), func_3().xy, vec2<bool>(global1.c.a, true)), func_3().zw, select(vec2<bool>(!global1.b, all(vec3<bool>(true, global1.b, global1.b))), select(func_3().xx, vec2<bool>(false, global1.c.a), global1.c.a), select(vec2<bool>(false, global1.b), select(vec2<bool>(global1.c.a, false), vec2<bool>(global1.b, global1.b), vec2<bool>(global1.c.a, global1.b)), vec2<bool>(true, true)))), 28512u, func_2().c, global1.c);
    global3 = _wgslsmith_sub_u32(98724u, ~global1.d.x);
    return Struct_2(var_1.a, 1u, Struct_1(false, ~(-(~vec3<i32>(1i, var_1.c.b.x, global1.a.x))), _wgslsmith_f_op_f32(global1.c.c * _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(813f, global1.c.c))))), func_2().c);
}

fn func_4(arg_0: i32, arg_1: vec2<u32>, arg_2: Struct_2, arg_3: Struct_4) -> f32 {
    global0 = array<i32, 6>();
    var var_0 = Struct_1(global1.b, _wgslsmith_div_vec3_i32(-arg_2.d.b, _wgslsmith_clamp_vec3_i32(-firstTrailingBit(global1.c.b), vec3<i32>(-arg_2.d.b.x, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, global0[_wgslsmith_index_u32(arg_1.x, 6u)], arg_2.d.b.x, u_input.b), arg_3.a.a), u_input.c.x), ~(-vec3<i32>(0i, 18996i, 1i)))), arg_3.a.c.c);
    global2 = var_0.a;
    var var_1 = 1i;
    let var_2 = arg_2;
    return _wgslsmith_f_op_f32(sign(var_2.c.c));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_3(u_input.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.c.c)) >= -954f, global1.c, global1.d);
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_4(i32(-1i) * -19347i, _wgslsmith_div_vec2_u32(global1.d, global1.d), func_1(), Struct_4(Struct_3(u_input.c, false, Struct_1(false, vec3<i32>(global0[_wgslsmith_index_u32(global1.d.x, 6u)], 0i, global1.a.x), global1.c.c), vec2<u32>(3380u, 111756u)), vec2<u32>(1u, 4294967295u))))))));
    let var_1 = ~vec4<u32>(u_input.a, global1.d.x, _wgslsmith_add_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, global1.d.x, 4294967295u, 1u), vec4<u32>(0u, 30979u, 34020u, 1u)), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, 1u), abs(vec3<u32>(16033u, 34671u, 4294967295u)))), global1.d.x);
    global3 = ~22145u;
    global0 = array<i32, 6>();
    let var_2 = Struct_4(func_2(), ~var_1.yw);
    global1 = Struct_3(-vec4<i32>(1i, -2147483647i, reverseBits(var_2.a.c.b.x), _wgslsmith_dot_vec2_i32(var_2.a.a.yw, abs(vec2<i32>(global1.c.b.x, 25700i)))), false, global1.c, _wgslsmith_div_vec2_u32(~var_2.a.d, _wgslsmith_mod_vec2_u32(~var_1.xz, vec2<u32>(43905u, u_input.a) & vec2<u32>(var_1.x, var_1.x))) & global1.d);
    global3 = var_2.a.d.x;
    global3 = ~(func_2().d.x ^ ~(~max(var_1.x, 1169u)));
    let x = u_input.a;
    s_output = StorageBuffer(min(vec3<i32>(select(var_2.a.c.b.x, abs(-1i), !var_2.a.c.a), -(i32(-1i) * -1i), -_wgslsmith_div_i32(-17199i, 24778i)), reverseBits(global1.c.b)), ~select(vec2<u32>(u_input.a, 0u << (u_input.a % 32u)), ~firstTrailingBit(var_2.b), !(!vec2<bool>(global1.c.a, true))), ~min(~vec3<u32>(1u, var_1.x, global1.d.x), vec3<u32>(select(4294967295u, 0u, true), var_1.x, ~global1.d.x)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global1.c.c, _wgslsmith_f_op_f32(-global1.c.c)), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-var_2.a.c.c), _wgslsmith_f_op_f32(-var_2.a.c.c)) + _wgslsmith_f_op_vec2_f32(min(vec2<f32>(1f, 1f), vec2<f32>(var_2.a.c.c, -966f)))), vec2<bool>(!(global1.b && true), !(false | var_2.a.b)))), vec3<f32>(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global1.c.c)))), global1.c.c));
}

