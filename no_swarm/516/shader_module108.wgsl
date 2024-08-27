struct Struct_1 {
    a: vec4<f32>,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 4>;

var<private> global1: array<vec3<u32>, 17> = array<vec3<u32>, 17>(vec3<u32>(1775u, 4294967295u, 47954u), vec3<u32>(4294967295u, 11434u, 3981u), vec3<u32>(8265u, 4294967295u, 4294967295u), vec3<u32>(7682u, 1u, 4294967295u), vec3<u32>(27675u, 0u, 1u), vec3<u32>(25815u, 24226u, 4141u), vec3<u32>(4294967295u, 4294967295u, 0u), vec3<u32>(1u, 4294967295u, 32205u), vec3<u32>(0u, 33047u, 0u), vec3<u32>(0u, 4294967295u, 0u), vec3<u32>(1u, 0u, 26117u), vec3<u32>(4294967295u, 0u, 24522u), vec3<u32>(4294967295u, 31390u, 13466u), vec3<u32>(0u, 0u, 1u), vec3<u32>(1u, 0u, 1u), vec3<u32>(0u, 111378u, 58671u), vec3<u32>(1u, 0u, 29434u));

var<private> global2: vec3<bool> = vec3<bool>(true, true, true);

var<private> global3: array<bool, 9> = array<bool, 9>(false, true, true, true, false, true, true, false, false);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3() -> vec3<bool> {
    let var_0 = all(global2.zx);
    var var_1 = 1i;
    let var_2 = -_wgslsmith_mod_vec4_i32(vec4<i32>(-21594i, ~1i, firstTrailingBit(firstLeadingBit(0i)), _wgslsmith_add_i32(firstTrailingBit(-2147483647i), -2147483647i)), vec4<i32>(_wgslsmith_div_i32(-34660i, max(2147483647i, 2147483647i)), 1i, 68397i, select(min(1i, 1i), select(7689i, -2478i, true), false)));
    let var_3 = _wgslsmith_mod_i32(-2147483647i, select(countOneBits(2147483647i), 6118i ^ var_2.x, true));
    global1 = array<vec3<u32>, 17>();
    return vec3<bool>(var_0, true, any(vec4<bool>(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.b.x, 2027u, u_input.a), u_input.b), 9u)], global2.x && any(vec4<bool>(false, false, global2.x, true)), !(!global3[_wgslsmith_index_u32(u_input.a, 9u)]), global2.x || var_0)));
}

fn func_2(arg_0: vec3<f32>, arg_1: Struct_1) -> u32 {
    let var_0 = 26394i;
    global2 = !func_3();
    let var_1 = abs(u_input.b.xz);
    global0 = array<Struct_1, 4>();
    let var_2 = vec2<u32>(abs(1u), abs(_wgslsmith_div_u32(6995u, 40885u) ^ (~1u ^ u_input.b.x)));
    return _wgslsmith_div_u32(~(~(~u_input.b.x)) >> (~(~abs(var_2.x)) % 32u), _wgslsmith_clamp_u32(~u_input.a, var_2.x, 89877u));
}

fn func_1() -> vec2<bool> {
    global2 = !select(select(!vec3<bool>(global3[_wgslsmith_index_u32(0u, 9u)], true, global3[_wgslsmith_index_u32(11497u, 9u)]), !select(vec3<bool>(true, global2.x, true), vec3<bool>(false, true, false), vec3<bool>(global3[_wgslsmith_index_u32(58393u, 9u)], true, global2.x)), _wgslsmith_mod_u32(136499u, u_input.a) > func_2(vec3<f32>(878f, -1000f, -507f), global0[_wgslsmith_index_u32(u_input.b.x, 4u)])), !func_3(), all(select(select(vec4<bool>(global2.x, true, false, true), vec4<bool>(false, global2.x, false, global2.x), vec4<bool>(global3[_wgslsmith_index_u32(u_input.b.x, 9u)], global3[_wgslsmith_index_u32(4294967295u, 9u)], false, false)), select(vec4<bool>(global2.x, global3[_wgslsmith_index_u32(46135u, 9u)], global3[_wgslsmith_index_u32(1u, 9u)], global2.x), vec4<bool>(true, global3[_wgslsmith_index_u32(u_input.a, 9u)], false, global3[_wgslsmith_index_u32(u_input.a, 9u)]), vec4<bool>(true, global3[_wgslsmith_index_u32(u_input.a, 9u)], false, global2.x)), vec4<bool>(true, global2.x, global3[_wgslsmith_index_u32(u_input.b.x, 9u)], global3[_wgslsmith_index_u32(93129u, 9u)]))));
    let var_0 = Struct_2(global0[_wgslsmith_index_u32(u_input.a >> (_wgslsmith_mod_u32(91225u, ~(~u_input.b.x)) % 32u), 4u)], Struct_1(vec4<f32>(875f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(268f + 245f), 2199f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))), false), Struct_1(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(vec4<f32>(1000f, -1039f, -223f, -1000f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-577f, -1061f, -235f, -834f) + vec4<f32>(-682f, 1358f, -105f, -440f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1097f, -809f, 640f, -726f))) + vec4<f32>(537f, 1204f, -630f, 555f)))), true));
    global0 = array<Struct_1, 4>();
    let var_1 = global0[_wgslsmith_index_u32(4294967295u, 4u)];
    global0 = array<Struct_1, 4>();
    return !(!(!(!select(vec2<bool>(global3[_wgslsmith_index_u32(0u, 9u)], global3[_wgslsmith_index_u32(u_input.b.x, 9u)]), vec2<bool>(var_0.b.b, var_0.b.b), true))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global3[_wgslsmith_index_u32(min(_wgslsmith_mod_u32(select(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 54391u), u_input.b.yx), abs(1u), global2.x), _wgslsmith_sub_u32(~54440u, firstTrailingBit(u_input.a))), 4683u >> (u_input.b.x % 32u)), 9u)] | any(select(select(vec2<bool>(global2.x, false), global2.xx, global3[_wgslsmith_index_u32(~u_input.a, 9u)]), vec2<bool>(true, false), select(global2.zz, vec2<bool>(true, global3[_wgslsmith_index_u32(u_input.b.x, 9u)]), func_1())));
    var_0 = all(!select(vec4<bool>(all(vec3<bool>(global2.x, true, true)), global3[_wgslsmith_index_u32(_wgslsmith_add_u32(53541u, 0u), 9u)], !global3[_wgslsmith_index_u32(u_input.b.x, 9u)], global2.x), select(select(vec4<bool>(global2.x, global2.x, false, global3[_wgslsmith_index_u32(1u, 9u)]), vec4<bool>(false, false, false, global2.x), vec4<bool>(global3[_wgslsmith_index_u32(25714u, 9u)], false, true, true)), !vec4<bool>(global2.x, true, false, global3[_wgslsmith_index_u32(u_input.a, 9u)]), global3[_wgslsmith_index_u32(3379u, 9u)] | global2.x), global2.x));
    let var_1 = 1u;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(1100f, 1451f));
}

