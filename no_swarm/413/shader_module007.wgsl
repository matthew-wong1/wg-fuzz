struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: vec3<bool>,
    d: Struct_1,
    e: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<bool>,
    c: vec2<f32>,
    d: Struct_2,
    e: bool,
}

struct Struct_4 {
    a: vec3<bool>,
    b: vec3<u32>,
    c: Struct_3,
    d: Struct_2,
    e: vec4<f32>,
}

struct Struct_5 {
    a: Struct_2,
    b: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 2>;

var<private> global1: f32 = 657f;

var<private> global2: array<Struct_3, 15> = array<Struct_3, 15>(Struct_3(Struct_1(true), vec4<bool>(false, true, false, true), vec2<f32>(-1000f, 1000f), Struct_2(Struct_1(true), vec4<i32>(-32553i, 7043i, 26626i, -1282i), vec3<bool>(true, true, false), Struct_1(true), 0i), false), Struct_3(Struct_1(true), vec4<bool>(false, true, true, false), vec2<f32>(-134f, 1146f), Struct_2(Struct_1(true), vec4<i32>(-9085i, 2147483647i, -34616i, 0i), vec3<bool>(true, false, true), Struct_1(true), -77030i), false), Struct_3(Struct_1(false), vec4<bool>(true, true, true, false), vec2<f32>(-239f, -301f), Struct_2(Struct_1(false), vec4<i32>(-35145i, 1i, -51397i, 0i), vec3<bool>(false, false, true), Struct_1(false), 2147483647i), true), Struct_3(Struct_1(true), vec4<bool>(true, true, false, false), vec2<f32>(1958f, -1191f), Struct_2(Struct_1(false), vec4<i32>(-1i, -1i, -9891i, -4126i), vec3<bool>(false, true, false), Struct_1(false), 2147483647i), false), Struct_3(Struct_1(false), vec4<bool>(false, false, false, false), vec2<f32>(-900f, 660f), Struct_2(Struct_1(true), vec4<i32>(0i, 22645i, i32(-2147483648), -47248i), vec3<bool>(false, true, true), Struct_1(false), 2147483647i), true), Struct_3(Struct_1(true), vec4<bool>(false, false, false, true), vec2<f32>(2127f, -1660f), Struct_2(Struct_1(true), vec4<i32>(-1i, i32(-2147483648), -1i, -134i), vec3<bool>(false, false, true), Struct_1(true), -6340i), false), Struct_3(Struct_1(true), vec4<bool>(true, false, false, false), vec2<f32>(246f, -224f), Struct_2(Struct_1(true), vec4<i32>(1i, -21955i, 4707i, -59719i), vec3<bool>(true, false, false), Struct_1(false), 1i), false), Struct_3(Struct_1(true), vec4<bool>(false, false, false, false), vec2<f32>(-523f, 1202f), Struct_2(Struct_1(false), vec4<i32>(63635i, 0i, 2147483647i, 1i), vec3<bool>(true, true, true), Struct_1(false), 4582i), true), Struct_3(Struct_1(false), vec4<bool>(true, true, true, true), vec2<f32>(442f, 750f), Struct_2(Struct_1(true), vec4<i32>(-31467i, 22581i, -14374i, 41570i), vec3<bool>(false, true, false), Struct_1(true), 6860i), false), Struct_3(Struct_1(true), vec4<bool>(false, false, false, true), vec2<f32>(1157f, -273f), Struct_2(Struct_1(true), vec4<i32>(-8064i, 18822i, 19880i, 2665i), vec3<bool>(true, true, true), Struct_1(true), 42419i), false), Struct_3(Struct_1(false), vec4<bool>(true, false, false, true), vec2<f32>(-1000f, -1519f), Struct_2(Struct_1(true), vec4<i32>(i32(-2147483648), -25097i, i32(-2147483648), -1i), vec3<bool>(false, false, true), Struct_1(false), 2147483647i), true), Struct_3(Struct_1(true), vec4<bool>(true, true, true, false), vec2<f32>(485f, 630f), Struct_2(Struct_1(true), vec4<i32>(i32(-2147483648), 6608i, 2147483647i, 2147483647i), vec3<bool>(true, false, false), Struct_1(false), 71818i), false), Struct_3(Struct_1(true), vec4<bool>(false, true, true, false), vec2<f32>(-1000f, 918f), Struct_2(Struct_1(true), vec4<i32>(2147483647i, -1i, 2147483647i, i32(-2147483648)), vec3<bool>(true, false, false), Struct_1(true), -1i), false), Struct_3(Struct_1(false), vec4<bool>(false, false, true, false), vec2<f32>(-1561f, 731f), Struct_2(Struct_1(true), vec4<i32>(-52398i, -27584i, 58599i, -26445i), vec3<bool>(false, false, true), Struct_1(true), 26370i), false), Struct_3(Struct_1(true), vec4<bool>(true, true, false, true), vec2<f32>(134f, -865f), Struct_2(Struct_1(false), vec4<i32>(1i, 2147483647i, -1i, 45270i), vec3<bool>(true, true, true), Struct_1(true), 77943i), false));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: vec4<f32>) -> vec3<u32> {
    global2 = array<Struct_3, 15>();
    global2 = array<Struct_3, 15>();
    var var_0 = Struct_3(arg_0, select(select(select(select(vec4<bool>(false, arg_0.a, false, arg_0.a), vec4<bool>(true, arg_0.a, true, false), vec4<bool>(arg_0.a, arg_0.a, arg_0.a, arg_0.a)), !vec4<bool>(false, false, false, arg_0.a), vec4<bool>(arg_0.a, arg_0.a, true, true)), !(!vec4<bool>(arg_0.a, true, false, true)), any(!vec4<bool>(true, false, arg_0.a, false))), select(vec4<bool>(false, all(vec2<bool>(false, arg_0.a)), any(vec3<bool>(false, true, arg_0.a)), arg_0.a & false), select(select(vec4<bool>(arg_0.a, arg_0.a, arg_0.a, arg_0.a), vec4<bool>(arg_0.a, arg_0.a, arg_0.a, false), false), vec4<bool>(true, true, true, true), !vec4<bool>(arg_0.a, arg_0.a, true, arg_0.a)), all(vec3<bool>(true, false, true))), vec4<bool>(true && !arg_0.a, (arg_1 & u_input.c.x) > u_input.c.x, !arg_0.a, true)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.x, arg_2.x) * _wgslsmith_f_op_vec2_f32(arg_2.yw * arg_2.xz))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1726f, -849f) * _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-554f, arg_2.x), arg_2.xw))), arg_2.yz))), Struct_2(arg_0, -vec4<i32>(50019i, 2147483647i, global0[_wgslsmith_index_u32(0u, 2u)], global0[_wgslsmith_index_u32(u_input.c.x, 2u)]) >> (~vec4<u32>(arg_1, arg_1, 33663u, 4294967295u) % vec4<u32>(32u)), vec3<bool>(arg_0.a, all(vec3<bool>(arg_0.a, arg_0.a, arg_0.a)), any(vec4<bool>(arg_0.a, arg_0.a, arg_0.a, arg_0.a))), Struct_1(arg_0.a), global0[_wgslsmith_index_u32(u_input.c.x, 2u)]), any(!(!select(vec4<bool>(false, arg_0.a, arg_0.a, false), vec4<bool>(true, true, false, true), arg_0.a))));
    var var_1 = Struct_5(Struct_2(var_0.d.a, _wgslsmith_div_vec4_i32((var_0.d.b | vec4<i32>(var_0.d.e, -1i, global0[_wgslsmith_index_u32(arg_1, 2u)], u_input.a.x)) >> ((vec4<u32>(1u, arg_1, 22509u, arg_1) & vec4<u32>(arg_1, 81392u, 46903u, 0u)) % vec4<u32>(32u)), vec4<i32>(u_input.a.x | var_0.d.b.x, firstLeadingBit(-14359i), abs(-2147483647i), -23272i)), vec3<bool>(var_0.b.x & false, all(select(vec3<bool>(true, arg_0.a, arg_0.a), vec3<bool>(false, false, arg_0.a), arg_0.a)), any(select(var_0.d.c, var_0.b.yzz, vec3<bool>(arg_0.a, true, var_0.b.x)))), var_0.a, min(global0[_wgslsmith_index_u32(arg_1, 2u)] | var_0.d.b.x, u_input.a.x | 0i) & ~_wgslsmith_dot_vec4_i32(var_0.d.b, vec4<i32>(-2147483647i, var_0.d.b.x, global0[_wgslsmith_index_u32(36603u, 2u)], -2147483647i))), var_0.b.x);
    var_0 = Struct_3(arg_0, vec4<bool>(false, !(!var_1.a.a.a | (arg_1 == u_input.c.x)), !(abs(7574u) < min(0u, u_input.c.x)), any(vec4<bool>(select(true, arg_0.a, true), true, true, true))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(exp2(arg_2.x)), -169f)), var_1.a, !(arg_0.a & any(var_0.d.c.xz)));
    return ~vec3<u32>(~firstTrailingBit(~1u), 1u, arg_1);
}

fn func_2() -> Struct_4 {
    global0 = array<i32, 2>();
    global0 = array<i32, 2>();
    let var_0 = Struct_4(select(select(vec3<bool>(true, true, select(false, true, true)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), all(vec4<bool>(false, false, false, true))), !select(true, true, false)), vec3<bool>(0u >= u_input.c.x, (u_input.c.x ^ 1u) == 4294967295u, any(vec3<bool>(true, true, true))), !(_wgslsmith_sub_i32(-41227i, 11922i) != ~u_input.a.x)), ~(func_3(Struct_1(true), u_input.c.x, vec4<f32>(137f, -639f, 1279f, -1110f)) ^ vec3<u32>(u_input.c.x ^ u_input.c.x, u_input.c.x, _wgslsmith_sub_u32(u_input.c.x, 1u))), Struct_3(Struct_1(!all(vec3<bool>(false, false, true))), vec4<bool>(true, true, true, true), vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-855f + -855f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -129f) - -1360f)), Struct_2(Struct_1(true), -vec4<i32>(global0[_wgslsmith_index_u32(u_input.c.x, 2u)], global0[_wgslsmith_index_u32(u_input.c.x, 2u)], 35107i, -27763i), vec3<bool>(true, true, true), Struct_1(select(false, false, false)), ~max(2147483647i, u_input.b.x)), select(any(vec4<bool>(true, true, true, false)), false, 1i < _wgslsmith_clamp_i32(28710i, -2147483647i, -1i))), Struct_2(Struct_1(false), firstTrailingBit(~vec4<i32>(global0[_wgslsmith_index_u32(72565u, 2u)], -2147483647i, -1421i, u_input.a.x)) << (~(vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, 4294967295u) >> (vec4<u32>(u_input.c.x, 4294967295u, u_input.c.x, 31399u) % vec4<u32>(32u))) % vec4<u32>(32u)), !vec3<bool>(any(vec2<bool>(false, true)), false, true), Struct_1(false), u_input.a.x), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1f, 1f, 1f, 1f))));
    global2 = array<Struct_3, 15>();
    let var_1 = var_0.a.yx;
    return var_0;
}

fn func_1(arg_0: vec2<f32>) -> u32 {
    let var_0 = all(vec2<bool>(true, _wgslsmith_mod_u32(reverseBits(u_input.c.x), 0u) <= ~_wgslsmith_sub_u32(u_input.c.x, 47007u)));
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(arg_0.x)), _wgslsmith_f_op_f32(-arg_0.x)) * arg_0.x)));
    global0 = array<i32, 2>();
    var var_1 = -1000f;
    var var_2 = func_2();
    return var_2.b.x;
}

fn func_4(arg_0: vec3<u32>) -> f32 {
    var var_0 = vec2<u32>(1u, 1u);
    global2 = array<Struct_3, 15>();
    let var_1 = func_2().c;
    var_0 = func_2().b.xy;
    var var_2 = _wgslsmith_add_i32(~_wgslsmith_sub_i32(-2147483647i, max(-2147483647i, -global0[_wgslsmith_index_u32(1u, 2u)])), func_2().c.d.e);
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.c.x), -522f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1295f * 1000f)), -185f), -729f)), -250f);
    global0 = array<i32, 2>();
    global1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1485f * -1157f))) - _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(-var_0.x)) + _wgslsmith_f_op_f32(-var_0.x));
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(min(1826f, 1000f)))) - 245f));
    let var_1 = ~(~_wgslsmith_clamp_u32(max(u_input.c.x, reverseBits(75172u)), 0u, u_input.c.x));
    var var_2 = global2[_wgslsmith_index_u32(41681u, 15u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(func_4(vec3<u32>(_wgslsmith_add_u32(func_1(vec2<f32>(-833f, -356f)), abs(21791u)), func_1(_wgslsmith_div_vec2_f32(vec2<f32>(-700f, var_0.x), var_0)), _wgslsmith_mod_u32(_wgslsmith_add_u32(27596u, var_1), var_1)))));
}

