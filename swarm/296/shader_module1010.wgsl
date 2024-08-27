struct Struct_1 {
    a: bool,
    b: bool,
    c: f32,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: bool,
}

struct Struct_4 {
    a: vec4<f32>,
    b: bool,
    c: u32,
}

struct Struct_5 {
    a: vec3<i32>,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 6>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: Struct_2) -> bool {
    global0 = array<Struct_3, 6>();
    var var_0 = select(arg_2.a.zww, !select(arg_2.a.wzx, vec3<bool>(arg_2.a.x, select(true, arg_0.a, arg_2.a.x), arg_0.a), arg_2.a.zxy), arg_2.a.x);
    var var_1 = _wgslsmith_mod_vec3_u32(max(~(~vec3<u32>(1u, 1u, 0u)), ~vec3<u32>(abs(4294967295u), abs(0u), ~66558u)), ~_wgslsmith_mod_vec3_u32(~vec3<u32>(4294967295u, 1u, 66473u), _wgslsmith_mod_vec3_u32(firstTrailingBit(vec3<u32>(4294967295u, 1u, 46738u)), vec3<u32>(1u, 6776u, 0u))));
    var_1 = ~(firstLeadingBit(~vec3<u32>(7968u, var_1.x, var_1.x)) >> (select(vec3<u32>(2387u, _wgslsmith_mod_u32(6952u, 91792u), ~var_1.x), ~vec3<u32>(21285u, var_1.x, var_1.x), vec3<bool>(!arg_2.a.x, var_0.x, any(var_0.yy))) % vec3<u32>(32u)));
    return arg_2.a.x;
}

fn func_3(arg_0: vec4<f32>, arg_1: vec2<bool>, arg_2: vec4<i32>) -> i32 {
    let var_0 = Struct_1(arg_1.x, 23116u < _wgslsmith_div_u32(_wgslsmith_div_u32(138778u, 42937u) >> (firstTrailingBit(77276u) % 32u), ~(~1u)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_0.x, -1157f))), 750f)))));
    global0 = array<Struct_3, 6>();
    global0 = array<Struct_3, 6>();
    let var_1 = select(vec4<u32>(_wgslsmith_mult_u32(10052u, firstTrailingBit(~0u)), ~(~1u), ~1u, ~(~(~9201u))), vec4<u32>(reverseBits(_wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, 1u, 4294967295u, 38957u), _wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 4294967295u, 1u, 7550u), vec4<u32>(0u, 0u, 15423u, 34244u)))), firstTrailingBit(36989u), _wgslsmith_dot_vec4_u32(vec4<u32>(~0u, min(2974u, 21268u), abs(0u), ~20527u), vec4<u32>(1u, ~4294967295u, ~66784u, firstLeadingBit(83u))), ~(~select(4294967295u, 0u, var_0.a))), select(select(select(select(vec4<bool>(false, true, true, false), vec4<bool>(true, arg_1.x, arg_1.x, var_0.a), vec4<bool>(arg_1.x, false, arg_1.x, var_0.b)), vec4<bool>(false, false, true, true), select(vec4<bool>(false, arg_1.x, arg_1.x, var_0.b), vec4<bool>(arg_1.x, true, true, true), true)), select(!vec4<bool>(true, var_0.b, arg_1.x, false), select(vec4<bool>(false, var_0.b, false, false), vec4<bool>(true, true, false, arg_1.x), vec4<bool>(arg_1.x, arg_1.x, true, arg_1.x)), all(vec4<bool>(var_0.b, true, true, true))), var_0.b), vec4<bool>(any(vec3<bool>(var_0.a, false, false)), arg_1.x, arg_1.x, arg_1.x || arg_1.x), select(select(select(vec4<bool>(false, false, false, arg_1.x), vec4<bool>(false, true, var_0.b, arg_1.x), vec4<bool>(arg_1.x, false, false, arg_1.x)), vec4<bool>(false, var_0.a, var_0.a, arg_1.x), select(vec4<bool>(var_0.a, true, arg_1.x, arg_1.x), vec4<bool>(true, var_0.b, var_0.a, var_0.b), vec4<bool>(false, true, var_0.a, var_0.a))), vec4<bool>(!arg_1.x, true, true, arg_1.x || true), vec4<bool>(true, arg_1.x, true, true))));
    global0 = array<Struct_3, 6>();
    return u_input.a >> (var_1.x % 32u);
}

fn func_1() -> Struct_5 {
    global0 = array<Struct_3, 6>();
    let var_0 = _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(-197f * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(-666f)), 348f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1000f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1292f * _wgslsmith_f_op_f32(-271f - 135f))))));
    let var_1 = all(select(vec3<bool>(select(any(vec4<bool>(true, true, false, false)), true, func_2(Struct_1(false, false, -1000f), vec3<f32>(var_0.x, var_0.x, 1390f), Struct_2(vec4<bool>(false, true, true, false)))), (u_input.a >> (1u % 32u)) > abs(-64262i), select(true, true, true)), !vec3<bool>(true, true, func_2(Struct_1(true, false, 941f), var_0, Struct_2(vec4<bool>(true, true, false, true)))), !select(select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), true), select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), true), false)));
    global0 = array<Struct_3, 6>();
    let var_2 = var_1;
    return Struct_5(vec3<i32>(-_wgslsmith_sub_i32(u_input.a, func_3(vec4<f32>(-1867f, var_0.x, var_0.x, var_0.x), vec2<bool>(var_2, true), vec4<i32>(u_input.a, -1i, 1i, u_input.a))), 18283i, abs(-1i)), vec3<u32>(1u, 53962u, max(reverseBits(0u), _wgslsmith_sub_u32(~10336u, ~42398u))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_3, 6>();
    var var_0 = u_input.a;
    var_0 = 1i;
    let var_1 = func_1();
    let var_2 = var_1.a.x;
    var_0 = ~u_input.a;
    var var_3 = any(vec2<bool>(select(1i >= var_2, any(vec3<bool>(true, true, true)), true), true));
    var_3 = true;
    let x = u_input.a;
    s_output = StorageBuffer(var_1.b.x & ~51303u, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-257f - -645f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(-432f)))), _wgslsmith_f_op_f32(select(-983f, _wgslsmith_f_op_f32(f32(-1f) * -136f), var_1.b.x > var_1.b.x)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1000f * -410f))))));
}

