struct Struct_1 {
    a: u32,
    b: vec3<bool>,
}

struct Struct_2 {
    a: f32,
    b: vec2<u32>,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: Struct_2 = Struct_2(1637f, vec2<u32>(4294967295u, 22528u));

var<private> global2: array<vec2<u32>, 1>;

var<private> global3: array<u32, 16> = array<u32, 16>(1u, 33166u, 0u, 4294967295u, 15644u, 4294967295u, 23462u, 42504u, 17962u, 1u, 1u, 0u, 2942u, 1u, 4294967295u, 0u);

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> f32 {
    var var_0 = arg_1.a;
    global0 = true;
    global1 = Struct_2(_wgslsmith_f_op_f32(max(-948f, global1.a)), countOneBits(reverseBits(~vec2<u32>(global3[_wgslsmith_index_u32(global1.b.x, 16u)], u_input.b.x) << (_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.b.x, arg_1.a), global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 16u)], 1u)], vec2<u32>(arg_0.a, global1.b.x)) % vec2<u32>(32u)))));
    global0 = arg_0.b.x;
    var var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-355f + global1.a) + -677f), _wgslsmith_f_op_f32(floor(-923f)), _wgslsmith_f_op_f32(max(937f, global1.a)), _wgslsmith_f_op_f32(global1.a + _wgslsmith_f_op_f32(1281f * -166f)))), vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.a), -1659f), _wgslsmith_f_op_f32(-global1.a))), global1.a, _wgslsmith_f_op_f32(-global1.a), -276f));
    return _wgslsmith_f_op_f32(-var_1.x);
}

fn func_2(arg_0: vec4<bool>, arg_1: Struct_1) -> u32 {
    var var_0 = true;
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(func_3(Struct_1(~_wgslsmith_dot_vec2_u32(global2[_wgslsmith_index_u32(39750u, 1u)], vec2<u32>(u_input.b.x, global1.b.x)), vec3<bool>(all(arg_0), arg_1.b.x, arg_0.x)), Struct_1(countOneBits(29477u), select(!arg_1.b, !vec3<bool>(true, false, arg_0.x), !vec3<bool>(true, arg_0.x, arg_1.b.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.a * global1.a) + global1.a)))));
    var var_2 = countOneBits(vec3<i32>(~(~32380i), -50725i << (0u % 32u), ~(~u_input.c) << ((1u << (global3[_wgslsmith_index_u32(global1.b.x ^ 75356u, 16u)] % 32u)) % 32u)));
    var var_3 = false;
    global0 = any(!vec4<bool>(false, true, true, all(select(vec3<bool>(true, arg_0.x, true), arg_0.zzz, vec3<bool>(true, false, arg_1.b.x)))));
    return 19009u;
}

fn func_1() -> Struct_2 {
    let var_0 = ~vec2<u32>(abs(u_input.a), firstTrailingBit(func_2(vec4<bool>(true, false, false, false), Struct_1(0u, vec3<bool>(true, true, false))) >> (9030u % 32u)));
    global1 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a)), vec2<u32>(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(_wgslsmith_mod_u32(89227u, global3[_wgslsmith_index_u32(4326u, 16u)]), ~u_input.a, global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(76261u, 1u), 16u)]), min(_wgslsmith_mod_u32(0u, 1u), ~0u)), _wgslsmith_div_u32(func_2(vec4<bool>(true, true, true, true), Struct_1(global1.b.x, vec3<bool>(true, false, true))), u_input.a)));
    let var_1 = _wgslsmith_f_op_f32(global1.a - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-313f)) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global1.a)))));
    var var_2 = Struct_2(global1.a, vec2<u32>(min(_wgslsmith_dot_vec2_u32(~global2[_wgslsmith_index_u32(16213u, 1u)], ~u_input.b), 16113u), 31243u));
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(vec4<f32>(-115f, -1359f, var_1, var_2.a), vec4<f32>(-1623f, -987f, var_2.a, global1.a))))));
    return Struct_2(_wgslsmith_f_op_f32(min(var_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.a * 1408f) * var_3.x)))), _wgslsmith_sub_vec2_u32(countOneBits(vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(63011u, global3[_wgslsmith_index_u32(u_input.b.x, 16u)], var_2.b.x), vec3<u32>(global1.b.x, u_input.a, global3[_wgslsmith_index_u32(21487u, 16u)])), u_input.a)), ~max(abs(vec2<u32>(u_input.b.x, global3[_wgslsmith_index_u32(4294967295u, 16u)])), vec2<u32>(var_2.b.x, 14309u))));
}

fn func_4(arg_0: Struct_2, arg_1: vec3<u32>) -> Struct_2 {
    global2 = array<vec2<u32>, 1>();
    let var_0 = Struct_1(_wgslsmith_mult_u32(1u, u_input.b.x), select(!vec3<bool>(any(vec3<bool>(true, false, true)), true, true), !select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, false, false)), vec3<bool>(true, true, false), all(vec3<bool>(true, false, false))), vec3<bool>(false, all(vec3<bool>(true, true, true)), true)));
    global0 = true;
    let var_1 = var_0;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(556f)))));
    return func_1();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(func_1(), vec3<u32>(abs(1u), firstLeadingBit(_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, global1.b.x, global1.b.x, 1u), vec4<u32>(40813u, u_input.a, 31353u, global1.b.x)), _wgslsmith_dot_vec2_u32(global2[_wgslsmith_index_u32(20138u, 1u)], u_input.b), ~35071u)), select(~60640u, 45126u, true) << (global3[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(4294967295u, 16u)], 16u)] % 32u)));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a, 1730f, -2072f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a, -248f, var_0.a) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.a, 230f, -581f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(953f, -949f, global1.a))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.a, 859f, var_0.a))))));
    global0 = any(vec3<bool>(!any(vec4<bool>(true, true, true, true)), !(!all(vec4<bool>(true, true, false, true))), (_wgslsmith_div_f32(729f, global1.a) > 1609f) && true));
    var var_2 = Struct_3(vec4<bool>(!(!(u_input.c != -29966i)), any(select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), true), select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, false)))), true, all(vec3<bool>(select(true, true, false), true, true))));
    global3 = array<u32, 16>();
    let var_3 = vec3<i32>(~(~(i32(-1i) * -u_input.c)), ~(~u_input.c), _wgslsmith_sub_i32(-u_input.c, select(u_input.c, u_input.c, false)));
    let var_4 = firstLeadingBit(vec4<i32>(var_3.x, u_input.c, var_3.x, _wgslsmith_dot_vec3_i32(-vec3<i32>(20134i, 15734i, var_3.x), var_3)));
    let x = u_input.a;
    s_output = StorageBuffer(5279i, global3[_wgslsmith_index_u32(~var_0.b.x, 16u)], var_0.a, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(972f + var_1.x), _wgslsmith_div_f32(1373f, 402f), true)));
}

