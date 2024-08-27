struct Struct_1 {
    a: vec4<f32>,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<f32>,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<f32>(1372f, -489f, -2306f, -1000f), vec4<f32>(-1000f, -539f, -1000f, 514f));

var<private> global1: array<vec4<bool>, 3>;

var<private> global2: array<i32, 8>;

var<private> global3: array<Struct_1, 14>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_1) -> i32 {
    global2 = array<i32, 8>();
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(global0.a)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global0.b + vec4<f32>(arg_1.a.x, global0.b.x, global0.b.x, 985f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1076f, 1030f, global0.a.x, -1782f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_1.b)));
    let var_1 = arg_0.x;
    var var_2 = select(1u, _wgslsmith_sub_u32(reverseBits(97547u), ~(u_input.a.x >> (u_input.a.x % 32u))), true) == 4294967295u;
    global2 = array<i32, 8>();
    return countOneBits(1i);
}

fn func_2(arg_0: Struct_1) -> u32 {
    global3 = array<Struct_1, 14>();
    let var_0 = _wgslsmith_clamp_vec3_i32(-vec3<i32>(0i, 60435i, ~_wgslsmith_sub_i32(-1i, global2[_wgslsmith_index_u32(u_input.a.x, 8u)])), vec3<i32>(reverseBits(_wgslsmith_div_i32(global2[_wgslsmith_index_u32(~1u, 8u)], -18112i)), ~func_3(vec2<i32>(global2[_wgslsmith_index_u32(u_input.a.x, 8u)], global2[_wgslsmith_index_u32(32795u, 8u)]), global3[_wgslsmith_index_u32(u_input.b.x ^ u_input.a.x, 14u)]), -(-32896i >> (max(u_input.a.x, 1u) % 32u))), vec3<i32>(i32(-1i) * -_wgslsmith_dot_vec3_i32(vec3<i32>(11052i, 0i, global2[_wgslsmith_index_u32(u_input.b.x, 8u)]), vec3<i32>(1i, global2[_wgslsmith_index_u32(u_input.b.x, 8u)], -14634i)), -2147483647i, global2[_wgslsmith_index_u32(abs(u_input.a.x) & 51475u, 8u)] ^ ~(-2147483647i)));
    var var_1 = !(!((3219u > u_input.b.x) | true));
    var var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.a.x), 629f)));
    let var_3 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.b.x), _wgslsmith_f_op_f32(min(565f, arg_0.a.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a.x + -230f)), global0.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_0.a.x)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b.x) + arg_0.a.x))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(305f, _wgslsmith_f_op_f32(ceil(775f)), _wgslsmith_f_op_f32(step(824f, global0.b.x)), arg_0.b.x)), vec4<f32>(_wgslsmith_f_op_f32(-global0.a.x), _wgslsmith_f_op_f32(-global0.a.x), _wgslsmith_f_op_f32(arg_0.a.x + _wgslsmith_f_op_f32(global0.a.x - 1000f)), 243f), false)));
    return abs(~u_input.b.x);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-global0.b))), vec4<f32>(global0.a.x, _wgslsmith_f_op_f32(-1028f * arg_1.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_1.b.x))), _wgslsmith_f_op_f32(arg_0.a.x + _wgslsmith_f_op_f32(-global0.b.x))));
    var var_1 = -1i;
    var var_2 = select(vec3<bool>(!(~u_input.a.x == ~84843u), !any(select(vec4<bool>(false, true, false, false), global1[_wgslsmith_index_u32(23745u, 3u)], global1[_wgslsmith_index_u32(14111u, 3u)])), true), select(vec3<bool>(!all(global1[_wgslsmith_index_u32(0u, 3u)]), true, !select(false, false, true)), vec3<bool>(true, 1f <= _wgslsmith_f_op_f32(min(430f, global0.a.x)), global2[_wgslsmith_index_u32(u_input.a.x, 8u)] == _wgslsmith_clamp_i32(global2[_wgslsmith_index_u32(3297u, 8u)], 45698i, -9111i)), vec3<bool>(all(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), global1[_wgslsmith_index_u32(33835u, 3u)])), true, select(true, all(vec3<bool>(false, false, false)), true))), select(vec3<bool>(true, _wgslsmith_f_op_f32(abs(1273f)) >= _wgslsmith_f_op_f32(abs(arg_1.a.x)), any(vec2<bool>(true, false)) | true), vec3<bool>(all(vec2<bool>(true, true)), all(vec2<bool>(true, true)), _wgslsmith_f_op_f32(floor(508f)) < arg_0.a.x), select(select(select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true)), vec3<bool>(false, false, false), vec3<bool>(true, true, true)), vec3<bool>(true, all(vec4<bool>(false, true, false, true)), true), vec3<bool>(true, true, true))));
    let var_3 = global1[_wgslsmith_index_u32(~u_input.a.x, 3u)];
    let var_4 = var_0.a.x;
    return arg_0;
}

fn func_1(arg_0: vec4<f32>, arg_1: i32, arg_2: bool) -> vec4<u32> {
    var var_0 = -797f;
    var var_1 = func_4(Struct_1(global0.a, _wgslsmith_f_op_vec4_f32(select(arg_0, _wgslsmith_f_op_vec4_f32(global0.b - _wgslsmith_f_op_vec4_f32(ceil(global0.b))), select(vec4<bool>(arg_2, false, true, false), !vec4<bool>(false, true, true, arg_2), select(global1[_wgslsmith_index_u32(u_input.a.x, 3u)], global1[_wgslsmith_index_u32(u_input.b.x, 3u)], global1[_wgslsmith_index_u32(u_input.a.x, 3u)]))))), global3[_wgslsmith_index_u32(func_2(global3[_wgslsmith_index_u32(~4294967295u, 14u)]), 14u)]);
    var_0 = _wgslsmith_f_op_f32(-arg_0.x);
    global3 = array<Struct_1, 14>();
    var var_2 = func_4(Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b.x, 2271f, global0.a.x, 1723f)) + vec4<f32>(global0.a.x, -140f, var_1.a.x, -313f)) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0.x, -1000f, 1000f, 1018f), _wgslsmith_f_op_vec4_f32(-var_1.a), vec4<bool>(arg_2, arg_2, true, false)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(var_1.b.x * -569f), _wgslsmith_f_op_f32(-2341f + 1000f), global0.a.x, _wgslsmith_f_op_f32(-1000f * global0.a.x)))), Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(round(arg_0)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, -308f, 411f, -962f) * arg_0) + var_1.a)), _wgslsmith_f_op_vec4_f32(arg_0 - arg_0)));
    return firstTrailingBit(u_input.b) ^ _wgslsmith_add_vec4_u32(min(vec4<u32>(countOneBits(21774u), 4294967295u, 5836u, u_input.b.x ^ 68771u), max(vec4<u32>(u_input.b.x, 0u, u_input.b.x, 0u), vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, 22979u)) & u_input.b), vec4<u32>(u_input.a.x << (0u % 32u), 4294967295u, u_input.a.x, u_input.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(~_wgslsmith_dot_vec4_u32(~(~vec4<u32>(20469u, u_input.a.x, 0u, u_input.a.x)), func_1(_wgslsmith_f_op_vec4_f32(global0.b * vec4<f32>(1149f, global0.a.x, global0.a.x, global0.b.x)), firstTrailingBit(global2[_wgslsmith_index_u32(28813u, 8u)]), true)));
    var var_1 = func_4(func_4(global3[_wgslsmith_index_u32(_wgslsmith_div_u32(2725u, _wgslsmith_clamp_u32(1u & var_0, _wgslsmith_mod_u32(62894u, 2746u), _wgslsmith_sub_u32(4294967295u, 4294967295u))), 14u)], func_4(global3[_wgslsmith_index_u32(var_0, 14u)], Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a.x, global0.a.x, 176f, global0.b.x)), vec4<f32>(global0.a.x, global0.a.x, -490f, global0.b.x)))), Struct_1(global0.b, global0.a));
    let var_2 = true;
    let var_3 = !select(!(!select(vec3<bool>(false, var_2, var_2), vec3<bool>(var_2, var_2, true), var_2)), !vec3<bool>(var_2, any(vec2<bool>(var_2, var_2)), false), vec3<bool>(any(select(vec2<bool>(var_2, false), vec2<bool>(true, var_2), vec2<bool>(true, true))), any(vec2<bool>(var_2, var_2)), var_2));
    global0 = global3[_wgslsmith_index_u32(var_0, 14u)];
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, global0.b.zwz, 2147483647i, _wgslsmith_f_op_f32(-638f + var_1.a.x));
}

