struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: bool,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_1, 29>;

var<private> global2: array<vec4<bool>, 30> = array<vec4<bool>, 30>(vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, false));

var<private> global3: f32 = 561f;

var<private> global4: vec3<i32>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1() -> vec4<bool> {
    return global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~(4294967295u | _wgslsmith_div_u32(global0.a, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, global0.a), vec2<u32>(5231u, u_input.b)))), 49085u, max(_wgslsmith_sub_u32(global0.a, 1u), global0.a)), 30u)];
}

fn func_2(arg_0: f32, arg_1: i32, arg_2: f32, arg_3: Struct_2) -> f32 {
    let var_0 = Struct_2(arg_3.a | (_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2) * _wgslsmith_f_op_f32(max(-1014f, -815f))) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2910f))), arg_3.a);
    global2 = array<vec4<bool>, 30>();
    let var_1 = vec4<i32>(~19419i, firstLeadingBit(_wgslsmith_add_i32(-60972i, 45416i)), ~(1i ^ _wgslsmith_mult_i32(1i, global4.x)), u_input.d.x);
    let var_2 = 34415i;
    global2 = array<vec4<bool>, 30>();
    return -1184f;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = _wgslsmith_f_op_f32(f32(-1f) * -1286f);
    var var_0 = global1[_wgslsmith_index_u32(~u_input.b, 29u)];
    let var_1 = Struct_2(false, any(select(select(global2[_wgslsmith_index_u32(u_input.b, 30u)], global2[_wgslsmith_index_u32(~global0.a, 30u)], global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(85196u, var_0.a), 30u)]), select(vec4<bool>(false, true, false, true), global2[_wgslsmith_index_u32(1u, 30u)], vec4<bool>(true, true, true, true)), select(func_1(), vec4<bool>(false, false, false, false), func_1()))));
    global3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(-1611f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-778f + -522f))), 1i, -465f, var_1)));
    let var_2 = Struct_1(1u);
    let x = u_input.a;
    s_output = StorageBuffer(global4.x >> (global0.a % 32u), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1869f, -1605f)) - _wgslsmith_f_op_f32(step(-1000f, -725f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1000f - -398f))), 153f));
}

