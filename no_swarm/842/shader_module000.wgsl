struct Struct_1 {
    a: bool,
    b: bool,
    c: vec2<bool>,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct Struct_3 {
    a: i32,
    b: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 30> = array<i32, 30>(23187i, i32(-2147483648), 3108i, -1i, -52723i, i32(-2147483648), 40006i, 12154i, 2147483647i, -145i, -1i, -40056i, -52816i, 2147483647i, i32(-2147483648), -1i, i32(-2147483648), 5922i, 0i, 0i, 25983i, 0i, -1i, 21329i, 36787i, i32(-2147483648), -1i, -1i, -10633i, 0i);

var<private> global1: Struct_2;

var<private> global2: array<bool, 8>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> u32 {
    global2 = array<bool, 8>();
    let var_0 = vec2<bool>(all(!(!(!vec2<bool>(false, global2[_wgslsmith_index_u32(10724u, 8u)])))), true);
    global2 = array<bool, 8>();
    global0 = array<i32, 30>();
    global2 = array<bool, 8>();
    return 1u;
}

fn func_2() -> vec3<i32> {
    var var_0 = select(vec3<bool>(global2[_wgslsmith_index_u32(0u, 8u)], true, !(!global2[_wgslsmith_index_u32(~63741u, 8u)])), vec3<bool>(true, false, global2[_wgslsmith_index_u32(~func_3(), 8u)]), !vec3<bool>(false, true, global2[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, 4323u), 8u)] == (global0[_wgslsmith_index_u32(1u, 30u)] != global0[_wgslsmith_index_u32(1u, 30u)])));
    let var_1 = ~(~vec4<u32>(1u, 1u, 1u, 1u));
    global0 = array<i32, 30>();
    global0 = array<i32, 30>();
    var_0 = !(!vec3<bool>(true, global2[_wgslsmith_index_u32(75354u, 8u)], global2[_wgslsmith_index_u32(~(~76943u), 8u)]));
    return abs(~(-abs(-global1.a)));
}

fn func_1(arg_0: u32, arg_1: vec3<bool>, arg_2: Struct_3, arg_3: f32) -> u32 {
    global1 = Struct_2(select(-_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a.x, -1i, global0[_wgslsmith_index_u32(0u, 30u)]), func_2()), global1.a, vec3<bool>(!select(true, false, true), any(!vec2<bool>(global2[_wgslsmith_index_u32(41032u, 8u)], false)), ~0u < _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0, arg_0, arg_0), vec3<u32>(arg_0, 4294967295u, 21912u)))));
    let var_0 = Struct_3(~(-2147483647i | _wgslsmith_add_i32(abs(global1.a.x), arg_2.a)), !any(select(arg_1.yx, !arg_1.zy, arg_1.x || global2[_wgslsmith_index_u32(arg_0, 8u)])));
    var var_1 = Struct_2(global1.a);
    var var_2 = arg_0;
    var_1 = Struct_2(var_1.a);
    return ~_wgslsmith_mod_u32(_wgslsmith_sub_u32(23570u, arg_0), ~(~4294967295u));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 30>();
    let var_0 = !vec3<bool>(_wgslsmith_add_u32(reverseBits(55067u), 88875u) == _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 32029u, 4294967295u, 0u), vec4<u32>(0u, 76888u, 16303u, 0u)), !global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, 1u, 2604u), vec3<u32>(1u, 1u, 4294967295u)), 8u)], !global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(~36030u, func_1(4294967295u, vec3<bool>(true, true, global2[_wgslsmith_index_u32(0u, 8u)]), Struct_3(global0[_wgslsmith_index_u32(1u, 30u)], global2[_wgslsmith_index_u32(1u, 8u)]), -1300f)), 8u)]);
    let var_1 = !(!var_0.yy);
    let var_2 = _wgslsmith_mult_vec4_u32(vec4<u32>(~1u, ~_wgslsmith_dot_vec4_u32(abs(vec4<u32>(40080u, 10284u, 0u, 0u)), vec4<u32>(1u, 1u, 1u, 1u)), 16651u, ~_wgslsmith_sub_u32(_wgslsmith_div_u32(9278u, 1u), 1u)), ~reverseBits(~vec4<u32>(0u, 0u, 37092u, 48526u)));
    global2 = array<bool, 8>();
    global0 = array<i32, 30>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_i32(_wgslsmith_add_vec2_i32(-u_input.a, _wgslsmith_div_vec2_i32(global1.a.yx, vec2<i32>(0i, u_input.a.x))), -_wgslsmith_clamp_vec2_i32(vec2<i32>(-19074i, u_input.a.x), global1.a.yy, global1.a.xy)) | (firstLeadingBit(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), vec2<i32>(-1i, 24020i))) & max(-vec2<i32>(28447i, -26012i), select(vec2<i32>(u_input.a.x, global1.a.x), vec2<i32>(29096i, 2147483647i), var_1))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1000f)))), firstLeadingBit(var_2.x));
}

