struct Struct_1 {
    a: u32,
    b: f32,
    c: vec4<bool>,
    d: i32,
}

struct Struct_2 {
    a: i32,
    b: vec2<i32>,
    c: vec4<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<i32>,
    c: i32,
    d: vec4<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 26>;

var<private> global1: array<Struct_2, 6> = array<Struct_2, 6>(Struct_2(-44162i, vec2<i32>(2147483647i, -24859i), vec4<u32>(3017u, 4294967295u, 1729u, 4294967295u), Struct_1(14731u, -695f, vec4<bool>(false, false, false, true), 19159i)), Struct_2(-1i, vec2<i32>(9479i, i32(-2147483648)), vec4<u32>(0u, 1u, 4294967295u, 1u), Struct_1(11155u, 350f, vec4<bool>(false, false, false, false), -62454i)), Struct_2(14040i, vec2<i32>(2147483647i, 1i), vec4<u32>(15462u, 4294967295u, 26791u, 20626u), Struct_1(5465u, -364f, vec4<bool>(false, true, false, true), 27618i)), Struct_2(-9259i, vec2<i32>(1i, 21289i), vec4<u32>(4294967295u, 62899u, 129358u, 45520u), Struct_1(1u, 1190f, vec4<bool>(true, true, false, true), 5576i)), Struct_2(1i, vec2<i32>(i32(-2147483648), 9005i), vec4<u32>(66425u, 0u, 71265u, 1u), Struct_1(1u, -126f, vec4<bool>(false, false, false, false), -43292i)), Struct_2(i32(-2147483648), vec2<i32>(-1i, 0i), vec4<u32>(0u, 4294967295u, 77597u, 4294967295u), Struct_1(31165u, -2051f, vec4<bool>(true, false, true, true), 1i)));

var<private> global2: Struct_3;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_3, arg_2: vec2<u32>, arg_3: Struct_2) -> bool {
    var var_0 = global1[_wgslsmith_index_u32(min(66686u, arg_3.d.a), 6u)];
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1160f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(488f + -1195f) * -1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a) + var_0.d.b)), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-438f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_1.a, arg_1.a)))), _wgslsmith_div_f32(arg_3.d.b, 1000f), arg_3.d.c.x)));
    var var_2 = global1[_wgslsmith_index_u32(abs(~(~_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(10882u, 41378u), arg_2), 31844u))), 6u)];
    var var_3 = !var_0.d.c.x;
    var var_4 = arg_1;
    return all(!select(vec2<bool>(!var_2.d.c.x, true), vec2<bool>(true, true), arg_3.d.c.zy));
}

fn func_2() -> f32 {
    global0 = array<Struct_2, 26>();
    let var_0 = vec4<bool>(all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, all(vec4<bool>(true, false, true, false))), vec3<bool>(true, true, true))), true, true, false || !func_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.a, global2.a)), Struct_3(-793f), u_input.a, Struct_2(-54677i, vec2<i32>(-39053i, -24470i), vec4<u32>(0u, u_input.a.x, 0u, 34484u), Struct_1(u_input.a.x, -543f, vec4<bool>(false, false, false, false), 33169i))));
    global1 = array<Struct_2, 6>();
    global1 = array<Struct_2, 6>();
    global1 = array<Struct_2, 6>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1247f + global2.a))), _wgslsmith_f_op_f32(select(global2.a, _wgslsmith_f_op_f32(step(global2.a, global2.a)), false))))));
}

fn func_4(arg_0: vec4<f32>, arg_1: bool) -> Struct_1 {
    global0 = array<Struct_2, 26>();
    let var_0 = global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(~_wgslsmith_div_u32(u_input.a.x, ~0u), u_input.a.x), 26u)];
    global2 = Struct_3(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.d.b, -771f) - _wgslsmith_f_op_f32(1587f * arg_0.x)) * _wgslsmith_f_op_f32(func_2())), 1f)));
    let var_1 = 1529f;
    global2 = Struct_3(arg_0.x);
    return var_0.d;
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_3(global2.a);
    let var_1 = -1i;
    global0 = array<Struct_2, 26>();
    var var_2 = Struct_2(var_1, vec2<i32>(2147483647i, -1i | var_1), select(vec4<u32>(4294967295u, 0u, ~select(u_input.a.x, 4294967295u, false), ~u_input.a.x), select(~(~vec4<u32>(0u, u_input.a.x, u_input.a.x, u_input.a.x)), vec4<u32>(0u, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.a.x), u_input.a), select(0u, 33446u, false), 56421u), vec4<bool>(true, all(vec3<bool>(true, false, true)), any(vec2<bool>(false, true)), true)), all(vec4<bool>(true, true, any(vec2<bool>(false, true)), true))), Struct_1(_wgslsmith_clamp_u32(90609u, ~66476u, 0u), 1000f, vec4<bool>(any(vec3<bool>(true, true, true)), any(vec4<bool>(false, true, false, false)), any(vec2<bool>(true, true)), true), var_1));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1350f + global2.a));
    return func_4(vec4<f32>(1394f, _wgslsmith_f_op_f32(-1909f - global2.a), -692f, _wgslsmith_f_op_f32(func_2())), any(!var_2.d.c.wwy));
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    var var_0 = abs(vec2<i32>(_wgslsmith_add_i32(~_wgslsmith_mod_i32(39921i, -2147483647i), func_1().d), arg_0.d));
    var var_1 = abs(vec4<i32>(-7198i, 0i, ~_wgslsmith_clamp_i32(-18236i, 58077i, 1i), i32(-1i) * -1i) | countOneBits(_wgslsmith_clamp_vec4_i32(vec4<i32>(arg_0.d, var_0.x, var_0.x, var_0.x), reverseBits(vec4<i32>(var_0.x, var_0.x, -2147483647i, 67i)), countOneBits(vec4<i32>(var_0.x, -2147483647i, -12200i, var_0.x)))));
    global2 = Struct_3(-1332f);
    var_1 = vec4<i32>(firstTrailingBit(var_0.x) >> ((u_input.a.x ^ u_input.a.x) % 32u), var_1.x, -arg_0.d, var_0.x);
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(abs(-23515i), -(~(-2147483647i)), false);
    let var_1 = 352f;
    global1 = array<Struct_2, 6>();
    let var_2 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-595f, -461f)) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(var_1, 616f)), var_1))) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1))))));
    global1 = array<Struct_2, 6>();
    var var_3 = func_5(func_1());
    var_0 = func_5(func_1()).d;
    let var_4 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(global2.a, var_1), vec2<f32>(183f, var_2.a))))))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(global2.a, global2.a), vec2<f32>(var_1, global2.a))) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(457f, 154f), vec2<f32>(var_3.b, var_2.a), vec2<bool>(var_3.c.x, var_3.c.x))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.a, -210f))));
    let var_5 = -(i32(-1i) * -46381i);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(var_2.a, -144f, var_3.b), abs(vec3<i32>(2147483647i, i32(-1i) * -var_5, max(_wgslsmith_sub_i32(var_3.d, -2147483647i), ~var_3.d))), ~(-18725i), vec4<i32>(_wgslsmith_clamp_i32(~abs(var_3.d), var_5, ~(-41818i)), _wgslsmith_mod_i32(-2147483647i, _wgslsmith_div_i32(countOneBits(var_3.d), var_3.d)), var_5, ((-21627i ^ var_3.d) & _wgslsmith_sub_i32(var_5, -2147483647i)) >> (~_wgslsmith_sub_u32(var_3.a, u_input.a.x) % 32u)), var_3.a);
}

