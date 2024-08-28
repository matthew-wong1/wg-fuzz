struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 30>;

var<private> global1: Struct_1 = Struct_1(-682f);

var<private> global2: vec3<i32>;

var<private> global3: vec4<u32> = vec4<u32>(0u, 32943u, 66366u, 71217u);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
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

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: bool, arg_1: bool) -> Struct_1 {
    let var_0 = select(!select(vec4<bool>(global2.x != -10087i, all(vec3<bool>(false, arg_1, global0[_wgslsmith_index_u32(22676u, 30u)])), true, global3.x <= 0u), !(!vec4<bool>(true, arg_0, global0[_wgslsmith_index_u32(global3.x, 30u)], true)), !vec4<bool>(arg_0, true, true, arg_0)), vec4<bool>(any(vec3<bool>(true, false, false)) & (true && (global2.x != global2.x)), arg_0, select(select(global3.x <= u_input.a.x, false, global1.a < 1268f), select(1u > u_input.a.x, any(vec3<bool>(arg_0, false, arg_0)), false), true), global0[_wgslsmith_index_u32(4294967295u, 30u)]), arg_0);
    let var_1 = Struct_1(global1.a);
    let var_2 = var_1;
    let var_3 = global3.x;
    global0 = array<bool, 30>();
    return var_1;
}

fn func_1(arg_0: vec4<u32>, arg_1: u32, arg_2: u32, arg_3: u32) -> Struct_1 {
    global0 = array<bool, 30>();
    var var_0 = vec4<f32>(global1.a, _wgslsmith_f_op_f32(floor(793f)), _wgslsmith_f_op_f32(f32(-1f) * -1848f), global1.a);
    var var_1 = Struct_1(var_0.x);
    let var_2 = Struct_1(1552f);
    let var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.x, global1.a))) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_2.a)))))), _wgslsmith_f_op_f32(-global1.a));
    return func_2(!(~(61282u >> (arg_3 % 32u)) <= (~arg_0.x & ~arg_1)), !(true | all(vec2<bool>(false, false))));
}

fn func_3(arg_0: i32, arg_1: vec2<u32>, arg_2: Struct_1, arg_3: Struct_1) -> bool {
    let var_0 = Struct_1(-1000f);
    global3 = vec4<u32>(arg_1.x, 1u, _wgslsmith_dot_vec2_u32(~vec2<u32>(~u_input.a.x, arg_1.x), ~global3.yz), _wgslsmith_dot_vec3_u32(global3.yyx, _wgslsmith_clamp_vec3_u32(abs(vec3<u32>(38923u, u_input.a.x, 5409u)), _wgslsmith_clamp_vec3_u32(u_input.a.xwy, global3.zxz, u_input.a.yww), ~global3.zzy) ^ countOneBits(vec3<u32>(arg_1.x, 79738u, u_input.a.x))));
    var var_1 = global0[_wgslsmith_index_u32(arg_1.x, 30u)];
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(global1.a + _wgslsmith_div_f32(1132f, arg_2.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1187f) + global1.a) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_2.a)) - global1.a)) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_2.a - _wgslsmith_f_op_f32(f32(-1f) * -432f))))));
    global2 = vec3<i32>(global2.x >> ((arg_1.x >> (6097u % 32u)) % 32u), _wgslsmith_mult_i32(arg_0, -_wgslsmith_div_i32(-arg_0, ~1i)), _wgslsmith_mult_i32(arg_0, abs(max(arg_0 | -14335i, _wgslsmith_dot_vec2_i32(global2.xz, vec2<i32>(global2.x, -1i))))));
    return !(!(!(!any(vec4<bool>(false, global0[_wgslsmith_index_u32(arg_1.x, 30u)], global0[_wgslsmith_index_u32(u_input.a.x, 30u)], true)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(vec3<bool>(all(vec2<bool>(global0[_wgslsmith_index_u32(global3.x, 30u)] || false, !global0[_wgslsmith_index_u32(44888u, 30u)])), true, true), !vec3<bool>(func_3(-2147483647i, global3.yx & u_input.a.zy, Struct_1(global1.a), func_1(vec4<u32>(48951u, global3.x, 1u, u_input.a.x), global3.x, global3.x, 0u)), false, true), vec3<bool>(true, global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(~(0u >> (u_input.a.x % 32u)), u_input.a.x), 30u)], !(!global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(global3.x, u_input.a.x), 30u)])));
    global3 = _wgslsmith_mult_vec4_u32(~vec4<u32>(~_wgslsmith_add_u32(u_input.a.x, u_input.a.x), ~1u, 55741u, firstLeadingBit(42389u)), ~u_input.a);
    var var_1 = 4294967295u;
    var var_2 = select(true, global1.a == -652f, all(!select(vec2<bool>(true, var_0.x), select(vec2<bool>(true, false), vec2<bool>(false, var_0.x), vec2<bool>(false, global0[_wgslsmith_index_u32(5024u, 30u)])), var_0.zy)));
    let var_3 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(447f, -2199f)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global1.a, -858f), vec2<f32>(-1053f, global1.a), false)) - _wgslsmith_div_vec2_f32(vec2<f32>(global1.a, 524f), vec2<f32>(global1.a, global1.a))))), vec2<f32>(global1.a, -105f), var_0.yx));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.xw, vec3<i32>(global2.x, firstTrailingBit(abs(_wgslsmith_add_i32(0i, 7437i))), global2.x), var_3);
}

