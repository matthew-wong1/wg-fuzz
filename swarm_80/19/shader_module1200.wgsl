struct Struct_1 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 15> = array<vec3<i32>, 15>(vec3<i32>(-31249i, -19303i, -23801i), vec3<i32>(i32(-2147483648), 18873i, 31868i), vec3<i32>(2147483647i, 10781i, -22915i), vec3<i32>(-37686i, 1i, 97227i), vec3<i32>(i32(-2147483648), 2496i, 9171i), vec3<i32>(14356i, -9172i, 2147483647i), vec3<i32>(30740i, 0i, -20766i), vec3<i32>(i32(-2147483648), 6483i, i32(-2147483648)), vec3<i32>(-100740i, 63029i, 84512i), vec3<i32>(i32(-2147483648), -1i, 1i), vec3<i32>(-15215i, i32(-2147483648), -16178i), vec3<i32>(0i, 0i, -39389i), vec3<i32>(-27951i, 38024i, -87078i), vec3<i32>(-1i, i32(-2147483648), -4150i), vec3<i32>(-73131i, 2147483647i, i32(-2147483648)));

var<private> global1: array<vec2<bool>, 20> = array<vec2<bool>, 20>(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_1() -> Struct_1 {
    var var_0 = 18440u;
    var_0 = abs(abs(~u_input.b.x)) | firstTrailingBit(_wgslsmith_mult_u32(~_wgslsmith_mult_u32(45899u, u_input.b.x), 126u));
    var var_1 = ~(~(_wgslsmith_mod_vec4_i32(~vec4<i32>(-18551i, 3508i, 1i, u_input.a), ~vec4<i32>(u_input.a, -1i, -59891i, u_input.a)) | vec4<i32>(-u_input.a, 1i | u_input.a, -1i, -81149i)));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-234f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -267f)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1030f, _wgslsmith_div_f32(643f, -1854f)))) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1164f * 165f))))));
    var_0 = _wgslsmith_mult_u32(u_input.b.x, u_input.b.x);
    return Struct_1(vec2<u32>(~_wgslsmith_mod_u32(_wgslsmith_mod_u32(4294967295u, u_input.b.x), 28798u), _wgslsmith_dot_vec4_u32(~(~vec4<u32>(u_input.b.x, u_input.b.x, 4294967295u, u_input.b.x)), ~vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 13831u))));
}

fn func_3() -> Struct_1 {
    let var_0 = -1000f;
    let var_1 = true;
    var var_2 = -_wgslsmith_add_i32(-(u_input.a << (u_input.b.x % 32u)) << (reverseBits(~12696u) % 32u), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.a, _wgslsmith_clamp_i32(u_input.a, 2147483647i, -33982i), u_input.a), vec4<i32>(u_input.a, u_input.a, u_input.a, -1i) | (vec4<i32>(-2147483647i, -3539i, -61747i, -1i) & vec4<i32>(u_input.a, -13750i, 2147483647i, u_input.a))));
    let var_3 = var_0;
    var_2 = firstTrailingBit(-2147483647i);
    return Struct_1(u_input.b.xz);
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32) -> Struct_1 {
    let var_0 = func_1();
    let var_1 = ~u_input.b;
    global1 = array<vec2<bool>, 20>();
    var var_2 = 1f;
    let var_3 = select(vec3<bool>(true, true, true), vec3<bool>(!all(vec4<bool>(false, true, true, true)), !all(!global1[_wgslsmith_index_u32(arg_1.a.x, 20u)]), !all(vec3<bool>(true, false, false))), !select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), true));
    return func_3();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_sub_u32(u_input.b.x, ~firstLeadingBit(1u));
    let var_1 = func_2(func_1(), func_1(), 1u);
    global1 = array<vec2<bool>, 20>();
    let var_2 = true;
    let var_3 = true;
    global0 = array<vec3<i32>, 15>();
    global1 = array<vec2<bool>, 20>();
    var var_4 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-469f)) - -262f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(139f + -1000f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1f, -742f, all(vec3<bool>(true, var_2, var_2)))) - _wgslsmith_f_op_f32(-848f - _wgslsmith_f_op_f32(1000f * 391f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1122f))))));
    var var_5 = _wgslsmith_add_vec4_u32(abs(~firstLeadingBit(vec4<u32>(42828u, u_input.b.x, var_1.a.x, 0u))), vec4<u32>(u_input.b.x, func_1().a.x, var_0, _wgslsmith_sub_u32(max(var_1.a.x, var_1.a.x), u_input.b.x))) << (vec4<u32>(~(~var_0), _wgslsmith_div_u32(u_input.b.x, ~var_1.a.x), 1u | min(var_1.a.x, u_input.b.x >> (var_1.a.x % 32u)), ~u_input.b.x) % vec4<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(~(~vec2<u32>(_wgslsmith_add_u32(54884u, 0u), 34407u)));
}

