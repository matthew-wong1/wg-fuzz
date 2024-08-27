struct Struct_1 {
    a: i32,
    b: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 12> = array<vec4<u32>, 12>(vec4<u32>(1u, 23681u, 29181u, 57736u), vec4<u32>(1u, 53881u, 4294967295u, 38699u), vec4<u32>(4294967295u, 13863u, 49633u, 658u), vec4<u32>(50333u, 10281u, 17073u, 0u), vec4<u32>(0u, 0u, 0u, 4294967295u), vec4<u32>(0u, 4294967295u, 0u, 15136u), vec4<u32>(1u, 4294967295u, 0u, 1u), vec4<u32>(0u, 19409u, 57574u, 12466u), vec4<u32>(62562u, 0u, 37913u, 1u), vec4<u32>(0u, 4294967295u, 40975u, 37613u), vec4<u32>(1u, 0u, 4294967295u, 20245u), vec4<u32>(1u, 7830u, 135910u, 31610u));

var<private> global1: array<Struct_1, 3>;

var<private> global2: array<i32, 30>;

var<private> global3: bool;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1) -> i32 {
    let var_0 = ~(countOneBits(firstTrailingBit(vec4<i32>(15244i, u_input.a.x, -31656i, global2[_wgslsmith_index_u32(u_input.b, 30u)]))) ^ vec4<i32>(abs(u_input.a.x >> (u_input.c.x % 32u)), 22800i, firstTrailingBit(~u_input.a.x), _wgslsmith_add_i32(2147483647i, global2[_wgslsmith_index_u32(u_input.b ^ u_input.b, 30u)])));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1032f, -798f, -349f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(773f, -265f, 1707f))), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(537f, -614f, 1276f))))));
    global3 = any(!vec3<bool>(false, u_input.b >= u_input.b, true));
    var var_2 = 14981i;
    let var_3 = Struct_1(~0i, countOneBits(countOneBits(min(_wgslsmith_clamp_i32(global2[_wgslsmith_index_u32(u_input.b, 30u)], arg_0.a, -1i), ~0i))));
    return -2147483647i;
}

fn func_2() -> Struct_1 {
    var var_0 = global1[_wgslsmith_index_u32((firstLeadingBit(~u_input.b) >> (0u % 32u)) & 0u, 3u)];
    let var_1 = 4294967295u;
    let var_2 = Struct_1(-var_0.b, var_0.a);
    var_0 = global1[_wgslsmith_index_u32(_wgslsmith_add_u32(0u, 61955u), 3u)];
    var_0 = Struct_1(-_wgslsmith_mod_i32(33226i, -2147483647i), _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(countOneBits(firstLeadingBit(vec2<i32>(-2147483647i, 0i))), _wgslsmith_div_vec2_i32(~u_input.a.yy, u_input.a.xx ^ vec2<i32>(-19311i, -1i)), ~_wgslsmith_mult_vec2_i32(vec2<i32>(-13630i, -12229i), vec2<i32>(-24473i, 10098i))), u_input.a.zy));
    return Struct_1(var_0.a, ~func_3(var_2));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> i32 {
    var var_0 = vec4<i32>(arg_0.a, 1i, -global2[_wgslsmith_index_u32(78949u, 30u)], -33986i);
    global3 = true;
    var var_1 = ~1u;
    return 1i;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32) -> bool {
    let var_0 = -_wgslsmith_dot_vec3_i32(vec3<i32>(func_4(func_2(), Struct_1(arg_0.a, 46131i)), 0i, -1i), ~u_input.a);
    global2 = array<i32, 30>();
    global1 = array<Struct_1, 3>();
    global2 = array<i32, 30>();
    global2 = array<i32, 30>();
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_sub_vec2_u32(vec2<u32>(firstTrailingBit(_wgslsmith_sub_u32(~u_input.b, select(u_input.c.x, u_input.b, true))), 4294967295u), _wgslsmith_div_vec2_u32(min(u_input.c.xx, vec2<u32>(~23721u, u_input.b)), u_input.c.xy));
    let var_1 = func_1(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(4294967295u, u_input.b), 3u)], global1[_wgslsmith_index_u32(u_input.b, 3u)], -299f);
    var var_2 = vec2<i32>(firstLeadingBit(-2147483647i), _wgslsmith_mult_i32(_wgslsmith_mult_i32(u_input.a.x | global2[_wgslsmith_index_u32(0u, 30u)], global2[_wgslsmith_index_u32(abs(var_0.x), 30u)]), u_input.a.x) | global2[_wgslsmith_index_u32(1u, 30u)]);
    global0 = array<vec4<u32>, 12>();
    var var_3 = ~_wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(global0[_wgslsmith_index_u32(u_input.b, 12u)], ~(~global0[_wgslsmith_index_u32(var_0.x, 12u)])), vec4<u32>(~4294967295u, countOneBits(0u), _wgslsmith_add_u32(1u, 4294967295u | u_input.c.x), 50995u));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(-860f, 1961f, -1475f, -1074f), _wgslsmith_clamp_i32(abs(firstTrailingBit(var_2.x)), 0i, _wgslsmith_sub_i32(~global2[_wgslsmith_index_u32(var_3.x, 30u)], -20628i)) ^ 62456i);
}

