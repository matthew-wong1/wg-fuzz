struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: i32,
    b: i32,
    c: vec2<f32>,
    d: bool,
    e: vec4<bool>,
}

struct Struct_4 {
    a: u32,
    b: Struct_1,
    c: Struct_3,
}

struct Struct_5 {
    a: vec2<bool>,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: f32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 13> = array<u32, 13>(31143u, 9725u, 60924u, 31843u, 51416u, 90280u, 0u, 1u, 52430u, 32089u, 0u, 6291u, 71971u);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: u32, arg_1: f32) -> vec2<f32> {
    var var_0 = arg_1;
    global0 = array<u32, 13>();
    var var_1 = u_input.b << (~6191u % 32u);
    var var_2 = !all(select(select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false)), vec3<bool>(false, true, false)), !select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), true), vec3<bool>(any(vec3<bool>(true, true, true)), true, true)));
    var_2 = all(vec2<bool>(!all(vec2<bool>(true, true)), true));
    return _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-arg_1), 1f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(arg_1, -249f)))) + vec2<f32>(-840f, arg_1))))));
}

fn func_2(arg_0: Struct_2, arg_1: u32) -> u32 {
    let var_0 = Struct_3(-u_input.b, -34465i, _wgslsmith_f_op_vec2_f32(func_3(global0[_wgslsmith_index_u32(~(~global0[_wgslsmith_index_u32(19778u, 13u)]), 13u)] >> (global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(4294967295u | arg_1, 0u & arg_0.a), 13u)] % 32u), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1322f * 505f))))))), true, !select(select(vec4<bool>(true, true, false, true), select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, true)), true), !select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, true), false), any(vec4<bool>(false, true, true, true))));
    global0 = array<u32, 13>();
    let var_1 = 4294967295u;
    let var_2 = _wgslsmith_clamp_u32(~(~30305u), 67645u, global0[_wgslsmith_index_u32(4294967295u, 13u)]) < select(3743u, 1u, all(select(vec4<bool>(var_0.d, false, false, false), vec4<bool>(false, false, true, true), var_0.e)) == any(var_0.e.ww));
    let var_3 = ~vec2<u32>(_wgslsmith_clamp_u32(arg_1, ~u_input.a, 0u), 1u);
    return 107726u;
}

fn func_1(arg_0: vec3<bool>, arg_1: i32, arg_2: vec3<bool>) -> vec2<f32> {
    let var_0 = (global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(55335u, 13u)], 13u)] ^ countOneBits(func_2(Struct_2(global0[_wgslsmith_index_u32(63261u, 13u)]), _wgslsmith_sub_u32(4294967295u, 1u)))) | _wgslsmith_dot_vec3_u32(select(countOneBits(~vec3<u32>(u_input.a, 6581u, u_input.a)), ~vec3<u32>(41047u, global0[_wgslsmith_index_u32(55970u, 13u)], u_input.a), vec3<bool>(true, arg_0.x, !arg_0.x)), _wgslsmith_mod_vec3_u32(~(~vec3<u32>(global0[_wgslsmith_index_u32(0u, 13u)], u_input.a, 0u)), _wgslsmith_mod_vec3_u32(firstTrailingBit(vec3<u32>(104861u, 46766u, 0u)), vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 13u)], 13u)], u_input.a, 4294967295u))));
    global0 = array<u32, 13>();
    return _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-963f, 339f)), vec2<f32>(1f, _wgslsmith_f_op_f32(258f + -2118f)), !vec2<bool>(true, arg_0.x))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1650f, 346f))))) - _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -200f)))))))));
}

fn func_4(arg_0: vec2<f32>, arg_1: bool, arg_2: f32, arg_3: vec3<u32>) -> StorageBuffer {
    global0 = array<u32, 13>();
    global0 = array<u32, 13>();
    var var_0 = ~(67314u << (arg_3.x % 32u));
    var_0 = 0u;
    let var_1 = true;
    return StorageBuffer(max(select(arg_3, ~vec3<u32>(global0[_wgslsmith_index_u32(0u, 13u)], u_input.a, 4294967295u), !var_1) >> (abs(arg_3) % vec3<u32>(32u)), ~reverseBits(arg_3)), ~22794u, _wgslsmith_f_op_f32(-arg_0.x), arg_3);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a;
    var_0 = 60827u;
    var_0 = _wgslsmith_clamp_u32(6994u, _wgslsmith_add_u32(u_input.a, _wgslsmith_sub_u32(1u, u_input.a)), u_input.a);
    var_0 = 72089u;
    global0 = array<u32, 13>();
    var var_1 = ~1u << (~global0[_wgslsmith_index_u32(4294967295u, 13u)] % 32u);
    let var_2 = Struct_5(vec2<bool>(all(vec4<bool>(u_input.b == u_input.b, true, any(vec2<bool>(true, true)), true)), !select(any(vec3<bool>(false, false, true)), all(vec3<bool>(true, false, true)), any(vec2<bool>(false, false)))), Struct_1(-((vec3<i32>(u_input.b, -1i, -1i) >> (vec3<u32>(global0[_wgslsmith_index_u32(14349u, 13u)], 4294967295u, 1u) % vec3<u32>(32u))) << ((vec3<u32>(u_input.a, 1u, global0[_wgslsmith_index_u32(90004u, 13u)]) >> (vec3<u32>(global0[_wgslsmith_index_u32(19902u, 13u)], global0[_wgslsmith_index_u32(26429u, 13u)], 54227u) % vec3<u32>(32u))) % vec3<u32>(32u)))));
    let x = u_input.a;
    s_output = func_4(_wgslsmith_f_op_vec2_f32(func_1(select(vec3<bool>(var_2.a.x, any(vec3<bool>(var_2.a.x, var_2.a.x, var_2.a.x)), select(var_2.a.x, false, true)), vec3<bool>(var_2.a.x, true, 0u <= global0[_wgslsmith_index_u32(21765u, 13u)]), !select(vec3<bool>(var_2.a.x, false, false), vec3<bool>(var_2.a.x, var_2.a.x, var_2.a.x), vec3<bool>(true, true, var_2.a.x))), firstLeadingBit(u_input.b), select(vec3<bool>(true, true, all(vec3<bool>(var_2.a.x, var_2.a.x, var_2.a.x))), select(!vec3<bool>(var_2.a.x, var_2.a.x, true), !vec3<bool>(var_2.a.x, true, var_2.a.x), false), select(select(vec3<bool>(false, var_2.a.x, var_2.a.x), vec3<bool>(var_2.a.x, true, var_2.a.x), var_2.a.x), vec3<bool>(false, false, var_2.a.x), vec3<bool>(true, true, var_2.a.x))))), all(!(!select(var_2.a, var_2.a, var_2.a))), _wgslsmith_div_f32(274f, -416f), abs(~(~(~vec3<u32>(14794u, global0[_wgslsmith_index_u32(u_input.a, 13u)], 0u)))));
}

