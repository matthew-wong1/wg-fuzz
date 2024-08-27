struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec3<f32>,
    c: i32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 12> = array<Struct_2, 12>(Struct_2(vec3<bool>(true, true, true), vec3<f32>(573f, 248f, -815f), 11374i, Struct_1(8330u), Struct_1(40947u)), Struct_2(vec3<bool>(true, true, true), vec3<f32>(-149f, -789f, -1077f), -1983i, Struct_1(4294967295u), Struct_1(6733u)), Struct_2(vec3<bool>(true, false, true), vec3<f32>(-370f, 495f, -952f), i32(-2147483648), Struct_1(4294967295u), Struct_1(4294967295u)), Struct_2(vec3<bool>(false, true, false), vec3<f32>(1738f, 119f, -250f), -61940i, Struct_1(51885u), Struct_1(1u)), Struct_2(vec3<bool>(true, true, false), vec3<f32>(-606f, 933f, 408f), 2147483647i, Struct_1(1u), Struct_1(1u)), Struct_2(vec3<bool>(false, true, false), vec3<f32>(763f, 1000f, -301f), 2147483647i, Struct_1(4294967295u), Struct_1(48506u)), Struct_2(vec3<bool>(false, true, true), vec3<f32>(-872f, -1000f, 733f), -15579i, Struct_1(4294967295u), Struct_1(36024u)), Struct_2(vec3<bool>(true, false, true), vec3<f32>(1000f, 1275f, -1530f), 23871i, Struct_1(35869u), Struct_1(1u)), Struct_2(vec3<bool>(false, true, false), vec3<f32>(174f, -828f, 544f), -1i, Struct_1(4753u), Struct_1(0u)), Struct_2(vec3<bool>(false, true, false), vec3<f32>(-1286f, -1301f, 846f), 1759i, Struct_1(18968u), Struct_1(59550u)), Struct_2(vec3<bool>(false, true, true), vec3<f32>(250f, -712f, 159f), 1i, Struct_1(107995u), Struct_1(4294967295u)), Struct_2(vec3<bool>(false, false, false), vec3<f32>(345f, -367f, -272f), 23571i, Struct_1(4294967295u), Struct_1(64038u)));

var<private> global1: vec4<i32>;

var<private> global2: u32 = 0u;

var<private> global3: Struct_1 = Struct_1(76823u);

var<private> global4: array<u32, 15> = array<u32, 15>(78209u, 4294967295u, 0u, 4294967295u, 8917u, 0u, 27213u, 35446u, 0u, 0u, 4294967295u, 24976u, 1u, 1u, 52763u);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: bool, arg_1: Struct_4) -> u32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-722f, -452f, arg_0)) + _wgslsmith_f_op_f32(round(1000f)))), _wgslsmith_f_op_f32(trunc(-442f)), _wgslsmith_f_op_f32(trunc(-727f))));
    var_0 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-383f, -517f, 628f, var_0.x))) - vec4<f32>(_wgslsmith_f_op_f32(ceil(var_0.x)), var_0.x, _wgslsmith_f_op_f32(abs(var_0.x)), -396f)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(max(var_0.x, 440f)), 1f, _wgslsmith_div_f32(-537f, 1562f), _wgslsmith_f_op_f32(step(var_0.x, var_0.x))))))));
    let var_1 = _wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(-var_0.x));
    global3 = Struct_1(1u);
    let var_2 = Struct_4(Struct_1(_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(_wgslsmith_add_vec2_u32(u_input.b, u_input.b), ~u_input.a, ~vec2<u32>(1u, global4[_wgslsmith_index_u32(37463u, 15u)])), u_input.a & _wgslsmith_sub_vec2_u32(u_input.b, vec2<u32>(u_input.a.x, global3.a)))));
    return ~(arg_1.a.a << (min(~3973u, u_input.a.x) % 32u));
}

fn func_2() -> Struct_1 {
    global3 = Struct_1(15761u);
    let var_0 = ~vec4<u32>(~global3.a, global3.a, global4[_wgslsmith_index_u32(15951u << (global3.a % 32u), 15u)], func_3(true, Struct_4(Struct_1(0u)))) << (vec4<u32>(u_input.a.x, ~_wgslsmith_add_u32(3200u, _wgslsmith_mult_u32(1u, u_input.b.x)), global3.a, u_input.b.x << (81392u % 32u)) % vec4<u32>(32u));
    var var_1 = Struct_3(~_wgslsmith_add_vec4_u32(~select(var_0, var_0, vec4<bool>(false, false, true, false)), var_0));
    global3 = Struct_1(~firstLeadingBit(134212u));
    var var_2 = _wgslsmith_div_i32(global1.x, ~(-2147483647i));
    return Struct_1(_wgslsmith_clamp_u32(global4[_wgslsmith_index_u32(_wgslsmith_div_u32(~_wgslsmith_dot_vec2_u32(var_0.yz, vec2<u32>(u_input.b.x, 60142u)), _wgslsmith_dot_vec4_u32(vec4<u32>(global3.a, u_input.b.x, u_input.b.x, 99783u), vec4<u32>(var_1.a.x, 40066u, 0u, 10332u))), 15u)], _wgslsmith_dot_vec3_u32(var_1.a.zxw, var_1.a.zwy), 56525u));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_4) -> u32 {
    let var_0 = any(!vec3<bool>(any(vec3<bool>(false, true, false)), true, false)) || any(select(select(vec2<bool>(true, false), vec2<bool>(true, true), false), select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true)), true), vec2<bool>(true, true)));
    let var_1 = Struct_4(arg_0);
    var var_2 = global1.xzy;
    var var_3 = u_input.a;
    let var_4 = Struct_2(vec3<bool>(true, !(!(!var_0)), !var_0), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1f, 1f, 1f))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-339f, -2056f, _wgslsmith_f_op_f32(step(-1477f, -884f))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(721f, 1998f, -542f), vec3<f32>(270f, -1000f, 330f), false)), vec3<f32>(-1015f, -1000f, -397f)))), -(~firstLeadingBit(~1i)), Struct_1(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.a.x, global4[_wgslsmith_index_u32(1u, 15u)], global3.a) | vec4<u32>(62783u, 1u, global4[_wgslsmith_index_u32(var_3.x, 15u)], u_input.b.x), _wgslsmith_mod_vec4_u32(vec4<u32>(21565u, 30720u, 0u, 96657u), vec4<u32>(5156u, arg_1.a.a, var_3.x, 1u))), 4294967295u)), func_2());
    return 1u;
}

fn func_1() -> vec4<u32> {
    let var_0 = Struct_3(vec4<u32>(global3.a | firstTrailingBit(global4[_wgslsmith_index_u32(global3.a | 0u, 15u)]), ~func_4(func_2(), Struct_4(Struct_1(24278u))), ~_wgslsmith_mult_u32(global3.a, global3.a), global3.a));
    var var_1 = func_2();
    var var_2 = 15240u;
    var var_3 = select(select(!select(select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true), true), select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), false), any(vec3<bool>(false, false, true))), select(vec4<bool>(true, true, true, true), vec4<bool>(any(vec3<bool>(true, true, false)), true, true, false), vec4<bool>(true, true, all(vec2<bool>(false, false)), true)), 1u == var_0.a.x), !(!vec4<bool>(any(vec3<bool>(true, true, true)), any(vec4<bool>(true, false, true, false)), any(vec4<bool>(false, false, true, true)), any(vec3<bool>(false, false, true)))), true);
    let var_4 = -((-max(vec3<i32>(23131i, global1.x, global1.x), global1.ywz) | global1.zww) | ~(~min(global1.yxx, global1.xyy)));
    return firstLeadingBit(~vec4<u32>(global4[_wgslsmith_index_u32(func_3(all(vec3<bool>(var_3.x, var_3.x, true)), Struct_4(Struct_1(u_input.a.x))), 15u)], 32659u, ~abs(1u), global4[_wgslsmith_index_u32(_wgslsmith_add_u32(~var_0.a.x, firstLeadingBit(var_0.a.x)), 15u)]));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_vec4_u32(vec4<u32>(u_input.b.x, global4[_wgslsmith_index_u32(max(global3.a, _wgslsmith_clamp_u32(1u, ~56654u, firstTrailingBit(global3.a))), 15u)], ~(~_wgslsmith_add_u32(1u, 1u)), u_input.b.x | 1u), func_1());
    let var_1 = vec4<u32>(~global3.a, global4[_wgslsmith_index_u32(max(global3.a, global3.a ^ abs(global3.a)), 15u)], ~4294967295u, var_0.x);
    let var_2 = !(!select(!select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), false), vec3<bool>(false, false, false), vec3<bool>(all(vec2<bool>(false, false)), all(vec3<bool>(true, false, true)), any(vec2<bool>(false, true)))));
    global3 = func_2();
    var var_3 = var_2.x;
    var_3 = any(vec3<bool>(!var_2.x, all(select(!var_2, select(vec3<bool>(true, true, true), var_2, false), select(var_2, vec3<bool>(var_2.x, false, var_2.x), false))), firstTrailingBit(global3.a) <= _wgslsmith_sub_u32(~var_1.x, 4294967295u & var_0.x)));
    var var_4 = func_2();
    global0 = array<Struct_2, 12>();
    global2 = abs(_wgslsmith_mod_u32(var_4.a, 1u));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.yxx, global1.x, -reverseBits(1i), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(334f, _wgslsmith_f_op_f32(-363f - 920f), -1016f) + vec3<f32>(_wgslsmith_f_op_f32(-149f - -480f), _wgslsmith_f_op_f32(f32(-1f) * -1949f), -133f)))));
}

