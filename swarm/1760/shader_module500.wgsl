struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: f32,
    d: vec2<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 15> = array<vec3<f32>, 15>(vec3<f32>(659f, -127f, -262f), vec3<f32>(138f, 341f, 1109f), vec3<f32>(-119f, 2612f, -1000f), vec3<f32>(-543f, 484f, -467f), vec3<f32>(-1086f, 1000f, -611f), vec3<f32>(680f, 528f, -250f), vec3<f32>(943f, 109f, 276f), vec3<f32>(-170f, -839f, 1237f), vec3<f32>(308f, -275f, -252f), vec3<f32>(848f, 863f, 208f), vec3<f32>(-1078f, 531f, 424f), vec3<f32>(-619f, 1000f, -1710f), vec3<f32>(-727f, -1000f, 1107f), vec3<f32>(-1000f, 752f, 338f), vec3<f32>(-428f, -1000f, -1478f));

var<private> global1: vec2<bool>;

var<private> global2: Struct_2 = Struct_2(vec4<bool>(true, true, false, true), 45974u);

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> vec3<u32> {
    let var_0 = Struct_1(firstLeadingBit(firstTrailingBit(~4294967295u)));
    global0 = array<vec3<f32>, 15>();
    global0 = array<vec3<f32>, 15>();
    let var_1 = ~0i < _wgslsmith_mod_i32(firstTrailingBit(countOneBits(1i)), max(_wgslsmith_add_i32(~0i, 0i), -4990i));
    global1 = !(!(!vec2<bool>(var_1, var_1)));
    return vec3<u32>(~firstLeadingBit(~1u) >> (~min(~5730u, _wgslsmith_mult_u32(u_input.a, 10898u)) % 32u), u_input.a, ~_wgslsmith_clamp_u32(global2.b, 60803u, u_input.a));
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: Struct_2, arg_3: Struct_2) -> vec2<f32> {
    global0 = array<vec3<f32>, 15>();
    global2 = Struct_2(vec4<bool>(true, true, select(0i >> (0u % 32u), _wgslsmith_dot_vec2_i32(vec2<i32>(19511i, 0i), vec2<i32>(32212i, 20553i)), all(arg_2.a)) <= 1i, !arg_3.a.x), global2.b);
    global0 = array<vec3<f32>, 15>();
    global2 = arg_3;
    var var_0 = Struct_1(_wgslsmith_div_u32(_wgslsmith_mult_u32(min(_wgslsmith_dot_vec3_u32(vec3<u32>(80995u, 1u, u_input.a), arg_0), 43839u), ~global2.b), firstTrailingBit(33809u)));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(772f, -377f))) + _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-785f, -434f), vec2<f32>(138f, -860f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1000f, 821f)))))), vec2<bool>(global2.a.x, true))));
}

fn func_2() -> vec2<f32> {
    var var_0 = Struct_1(global2.b);
    let var_1 = Struct_2(vec4<bool>(false, all(select(global2.a, !global2.a, !global2.a)), global2.a.x, global1.x), 4294967295u);
    var var_2 = Struct_2(!(!select(!vec4<bool>(true, var_1.a.x, false, false), !var_1.a, var_1.a)), _wgslsmith_mult_u32(global2.b, min(global2.b, var_0.a)));
    var var_3 = var_1;
    var var_4 = 30157i;
    return _wgslsmith_f_op_vec2_f32(func_4(~func_3(), var_1, var_1, Struct_2(!vec4<bool>(true, false & var_1.a.x, var_2.a.x, !var_1.a.x), global2.b)));
}

fn func_1() -> Struct_2 {
    global0 = array<vec3<f32>, 15>();
    let var_0 = false || (true && any(vec2<bool>(!global2.a.x, true)));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(func_2()), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(floor(768f)), 1760f) + _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(vec2<f32>(-357f, -712f), vec2<f32>(650f, 163f)))))));
    global1 = vec2<bool>(true, global1.x);
    var var_2 = _wgslsmith_div_vec4_u32(vec4<u32>(1u, ~1u, 64741u, max((u_input.a | global2.b) >> (8799u % 32u), u_input.a)), vec4<u32>(33048u, ~4149u, firstLeadingBit(abs(max(global2.b, 4294967295u))), abs(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, global2.b, 46979u, 4294967295u), vec4<u32>(global2.b, global2.b, u_input.a, u_input.a)))));
    return Struct_2(!global2.a, ~1u);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_1();
    let var_0 = Struct_2(vec4<bool>(func_1().a.x, !global1.x, all(!global2.a.ywx), true), _wgslsmith_clamp_u32(func_1().b, ~countOneBits(global2.b), ~(~(u_input.a >> (0u % 32u)))));
    let var_1 = true;
    global2 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(~1u, var_0.b, ~(~(~0u)), countOneBits(u_input.a)), ~vec4<u32>(~u_input.a, firstLeadingBit(var_0.b), ~26046u, 1u) | ~countOneBits(_wgslsmith_sub_vec4_u32(vec4<u32>(global2.b, 14636u, global2.b, 124546u), vec4<u32>(global2.b, var_0.b, u_input.a, u_input.a))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1963f, -905f, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -576f), _wgslsmith_f_op_f32(f32(-1f) * -308f), global2.a.x & var_1)))), vec2<u32>(var_0.b, ~firstTrailingBit(~var_0.b)), (~func_3().x << (1u % 32u)) >> (23695u % 32u));
}

