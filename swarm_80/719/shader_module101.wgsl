struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: vec3<f32>,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 5> = array<vec4<u32>, 5>(vec4<u32>(0u, 4294967295u, 1u, 81710u), vec4<u32>(1u, 4294967295u, 4294967295u, 0u), vec4<u32>(1u, 0u, 13201u, 1u), vec4<u32>(84877u, 1u, 4294967295u, 0u), vec4<u32>(49828u, 55705u, 4294967295u, 95146u));

var<private> global1: array<Struct_3, 6> = array<Struct_3, 6>(Struct_3(true, Struct_2(Struct_1(vec2<u32>(0u, 4294967295u)), vec4<bool>(true, true, true, true)), vec3<f32>(856f, -714f, 1179f)), Struct_3(true, Struct_2(Struct_1(vec2<u32>(45850u, 14237u)), vec4<bool>(true, true, false, false)), vec3<f32>(1777f, 194f, -1011f)), Struct_3(true, Struct_2(Struct_1(vec2<u32>(1u, 1u)), vec4<bool>(true, false, true, false)), vec3<f32>(2117f, -611f, 293f)), Struct_3(true, Struct_2(Struct_1(vec2<u32>(4294967295u, 95584u)), vec4<bool>(false, false, true, true)), vec3<f32>(-198f, -2170f, 847f)), Struct_3(false, Struct_2(Struct_1(vec2<u32>(0u, 0u)), vec4<bool>(true, true, true, true)), vec3<f32>(-609f, 652f, 1058f)), Struct_3(true, Struct_2(Struct_1(vec2<u32>(0u, 45801u)), vec4<bool>(false, true, true, false)), vec3<f32>(-797f, 1117f, -202f)));

var<private> global2: array<vec4<u32>, 26>;

var<private> global3: array<vec2<i32>, 18>;

var<private> global4: f32;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: vec2<bool>, arg_1: vec4<i32>) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(915f)), _wgslsmith_f_op_f32(1000f * 1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-269f * 996f) + _wgslsmith_f_op_f32(1725f + 659f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(883f - 399f), 998f)))));
    var var_1 = false;
    var_1 = all(arg_0);
    global4 = _wgslsmith_f_op_f32(trunc(-170f));
    var var_2 = Struct_4(Struct_1(u_input.a.zx));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1752f * _wgslsmith_f_op_f32(exp2(var_0))), var_0);
}

fn func_3(arg_0: vec2<f32>, arg_1: i32) -> Struct_4 {
    return Struct_4(Struct_1(abs(u_input.a.zy)));
}

fn func_1() -> vec4<bool> {
    var var_0 = func_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-539f - -436f) + _wgslsmith_div_f32(1055f, -561f)), _wgslsmith_f_op_f32(func_2(vec2<bool>(false, true), vec4<i32>(2147483647i, -2147483647i, -1i, 47904i))))), -11567i);
    global1 = array<Struct_3, 6>();
    let var_1 = Struct_4(Struct_1(~_wgslsmith_sub_vec2_u32(abs(vec2<u32>(4294967295u, 54734u)), min(vec2<u32>(u_input.a.x, var_0.a.a.x), u_input.a.yw))));
    var var_2 = vec4<bool>(min(~_wgslsmith_div_u32(1u, 2662u), ~16850u) > abs(_wgslsmith_mult_u32(138u ^ var_1.a.a.x, 15161u)), all(select(select(select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, true), true), select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true)), vec4<bool>(true, true, true, true)), vec4<bool>(true, select(false, false, true), select(true, false, false), true), vec4<bool>(true, false, true, false))), any(vec4<bool>(true, true, true, true)) == ((var_0.a.a.x & ~0u) >= ~80008u), any(vec2<bool>(true, true)));
    var var_3 = _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(~_wgslsmith_sub_vec4_u32(firstLeadingBit(u_input.a), global0[_wgslsmith_index_u32(44772u | u_input.a.x, 5u)]), global0[_wgslsmith_index_u32(u_input.a.x, 5u)]), _wgslsmith_add_u32(firstLeadingBit(select(1u, ~var_1.a.a.x, !var_2.x)), _wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(u_input.a.x, 51930u, var_1.a.a.x)) & ~u_input.a.xyz, ~u_input.a.xzz)));
    return vec4<bool>(var_2.x, false, var_2.x, _wgslsmith_dot_vec3_i32(vec3<i32>(1i, 1i, 1i), -vec3<i32>(4506i, -3196i, 71593i) ^ _wgslsmith_clamp_vec3_i32(vec3<i32>(5435i, 0i, -18714i), vec3<i32>(23786i, 15311i, 0i), vec3<i32>(1i, -18749i, -13846i))) <= 1i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = min(-(~vec4<i32>(max(102502i, -18674i), abs(-2147483647i), 16387i, 2147483647i)), max(vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(firstLeadingBit(-33645i), reverseBits(-89216i), select(-35479i, 2147483647i, true), _wgslsmith_mod_i32(19197i, ~27736i))));
    let var_1 = Struct_4(Struct_1(vec2<u32>(37542u, u_input.a.x)));
    let var_2 = !select(!func_1(), select(!select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, false)), vec4<bool>(true, true, true, true), any(vec4<bool>(true, true, true, true))), func_1().x);
    global3 = array<vec2<i32>, 18>();
    let x = u_input.a;
    s_output = StorageBuffer(select(var_0.x, countOneBits(-var_0.x), !var_2.x), _wgslsmith_clamp_u32(4294967295u << (abs(var_1.a.a.x) % 32u), u_input.a.x, countOneBits(u_input.a.x)), var_0.x, ~20021u);
}

