struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 8>;

var<private> global1: array<Struct_1, 27>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2(arg_0: u32, arg_1: vec4<i32>) -> u32 {
    let var_0 = vec2<bool>(true, true);
    global1 = array<Struct_1, 27>();
    let var_1 = ~(~vec3<u32>(1u, ~arg_0, arg_0));
    global1 = array<Struct_1, 27>();
    var var_2 = vec4<u32>(_wgslsmith_div_u32(9639u, var_1.x >> (var_1.x % 32u)), ~((reverseBits(1u) ^ (var_1.x ^ 43643u)) >> (arg_0 % 32u)), arg_0, 4294967295u);
    return ~arg_0;
}

fn func_3(arg_0: vec2<f32>) -> u32 {
    global0 = array<vec4<f32>, 8>();
    global1 = array<Struct_1, 27>();
    global1 = array<Struct_1, 27>();
    global1 = array<Struct_1, 27>();
    global0 = array<vec4<f32>, 8>();
    return abs(0u);
}

fn func_1() -> Struct_1 {
    let var_0 = vec4<u32>(max(max(func_2(0u, vec4<i32>(-2147483647i, u_input.a, -1i, -22998i)), func_2(func_3(vec2<f32>(-2043f, -746f)), -vec4<i32>(u_input.a, u_input.a, -1i, u_input.a))), ~firstTrailingBit(_wgslsmith_div_u32(47483u, 1u))), ~abs(_wgslsmith_clamp_u32(~13426u, _wgslsmith_div_u32(0u, 1u), 4294967295u)), 0u, abs(~(~reverseBits(4294967295u))));
    let var_1 = global1[_wgslsmith_index_u32(~func_3(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-488f * 1000f), _wgslsmith_f_op_f32(max(1000f, 343f))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, -866f) * vec2<f32>(287f, 116f)))), select(vec2<bool>(true, true), vec2<bool>(true, true), true)))), 27u)];
    global0 = array<vec4<f32>, 8>();
    var var_2 = vec2<u32>(var_0.x, var_0.x);
    var var_3 = vec4<u32>(~_wgslsmith_div_u32(var_0.x, ~var_0.x), ~(~abs(firstTrailingBit(var_2.x))), ~var_0.x, var_2.x);
    return global1[_wgslsmith_index_u32(~(~(min(1u, 20986u) >> (~(var_0.x & 34457u) % 32u))), 27u)];
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> vec4<bool> {
    var var_0 = Struct_1((i32(-1i) * -47501i) >> (~(~1u) % 32u));
    var var_1 = _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(1f, -428f, true)), 1042f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), 1265f));
    global0 = array<vec4<f32>, 8>();
    var var_2 = reverseBits(vec2<i32>(~(~u_input.a), ~_wgslsmith_dot_vec2_i32(~vec2<i32>(-1i, var_0.a), ~vec2<i32>(arg_1.a, 8321i))));
    let var_3 = !select(!(!select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(false, true, false))), vec3<bool>(true, true, true), all(vec3<bool>(all(vec2<bool>(true, false)), true, all(vec3<bool>(true, false, false)))));
    return select(vec4<bool>(var_3.x, any(var_3), true, all(select(select(vec2<bool>(var_3.x, false), vec2<bool>(var_3.x, false), vec2<bool>(var_3.x, false)), vec2<bool>(true, true), true))), vec4<bool>(any(vec2<bool>(select(false, var_3.x, true), all(vec4<bool>(false, var_3.x, var_3.x, true)))), var_3.x, select(all(var_3), true, !(!var_3.x)), (0i << (func_3(vec2<f32>(-393f, 891f)) % 32u)) >= _wgslsmith_mult_i32(var_2.x, ~(-1i))), _wgslsmith_dot_vec4_u32(countOneBits(min(vec4<u32>(1u, 0u, 1u, 0u), vec4<u32>(0u, 38781u, 48426u, 0u))), vec4<u32>(1u, 1u, 1u, 1u)) == 4294967295u);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 27>();
    let var_0 = -1i;
    global0 = array<vec4<f32>, 8>();
    let var_1 = ~vec3<i32>(2147483647i, var_0, -u_input.a);
    var var_2 = func_4(func_1(), Struct_1(var_1.x));
    global1 = array<Struct_1, 27>();
    var var_3 = Struct_1(~43435i);
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1f)) * -879f);
    let x = u_input.a;
    s_output = StorageBuffer(1u);
}

