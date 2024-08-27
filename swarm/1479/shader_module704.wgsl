struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 4294967295u;

var<private> global1: array<Struct_1, 23> = array<Struct_1, 23>(Struct_1(-32621i), Struct_1(55127i), Struct_1(1i), Struct_1(24067i), Struct_1(-51i), Struct_1(-2583i), Struct_1(2147483647i), Struct_1(19264i), Struct_1(-41788i), Struct_1(2147483647i), Struct_1(2710i), Struct_1(2147483647i), Struct_1(-1i), Struct_1(51507i), Struct_1(1i), Struct_1(1i), Struct_1(32466i), Struct_1(14001i), Struct_1(1i), Struct_1(9853i), Struct_1(16389i), Struct_1(4575i), Struct_1(i32(-2147483648)));

var<private> global2: array<Struct_1, 30>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> i32 {
    var var_0 = _wgslsmith_add_i32(-1i, -(~u_input.b));
    var var_1 = global2[_wgslsmith_index_u32(5950u, 30u)];
    var var_2 = ~(vec4<i32>(u_input.b, 5646i, 2147483647i, 4472i) >> (abs(~vec4<u32>(1u, u_input.c.x, 27645u, 4294967295u)) % vec4<u32>(32u)));
    global2 = array<Struct_1, 30>();
    let var_3 = select(true, !(!all(vec3<bool>(true, false, true))), !(-50255i < max(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, u_input.b), var_2.wx), u_input.b)));
    return ~var_2.x;
}

fn func_2(arg_0: f32, arg_1: vec4<i32>) -> f32 {
    var var_0 = global1[_wgslsmith_index_u32(4294967295u, 23u)];
    var var_1 = select(_wgslsmith_add_vec3_i32(-(vec3<i32>(-1i) * -vec3<i32>(22235i, var_0.a, -19214i)), vec3<i32>(-426i, _wgslsmith_add_i32(-29824i, -21725i), func_3())), vec3<i32>(u_input.b, abs(~(arg_1.x >> (u_input.a % 32u))), max(i32(-1i) * -37524i, arg_1.x) >> (_wgslsmith_add_u32(u_input.c.x, _wgslsmith_div_u32(u_input.c.x, u_input.a)) % 32u)), vec3<bool>(true, true, any(select(select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, true), false), vec4<bool>(false, false, true, false), all(vec3<bool>(false, true, false))))));
    var var_2 = ~(-16210i);
    var_0 = Struct_1(u_input.b);
    var_0 = global1[_wgslsmith_index_u32(min(firstTrailingBit(countOneBits(1u) >> (u_input.c.x % 32u)), ~0u), 23u)];
    return _wgslsmith_div_f32(arg_0, arg_0);
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_1) -> Struct_1 {
    return global2[_wgslsmith_index_u32(u_input.c.x, 30u)];
}

fn func_1(arg_0: vec3<i32>, arg_1: Struct_1) -> bool {
    var var_0 = global1[_wgslsmith_index_u32(u_input.a, 23u)];
    let var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(522f, 1002f))))) + _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-538f, 1073f) - vec2<f32>(429f, 2450f)) + vec2<f32>(-101f, -1504f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-1947f + 886f), 1738f) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(322f, -111f) * vec2<f32>(-978f, 612f))))));
    let var_2 = func_4(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-504f, var_1.x)), _wgslsmith_f_op_f32(f32(-1f) * -488f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(var_1.x - -387f), -vec4<i32>(u_input.b, -29009i, arg_1.a, -55053i)))), var_1.x), Struct_1(~_wgslsmith_div_i32(-21052i, -1i) ^ min(-2147483647i ^ arg_0.x, _wgslsmith_dot_vec2_i32(arg_0.zy, vec2<i32>(-2147483647i, arg_1.a)))));
    global1 = array<Struct_1, 23>();
    let var_3 = ~min(vec3<i32>(-2147483647i, func_4(vec3<f32>(-874f, var_1.x, -2128f), Struct_1(2147483647i)).a, 20822i), vec3<i32>(4030i, _wgslsmith_div_i32(1i, _wgslsmith_sub_i32(var_0.a, 0i)), u_input.b));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = u_input.c.x;
    var var_0 = select(select(vec2<bool>(-1i == u_input.b, true), vec2<bool>(false && all(vec3<bool>(false, false, true)), any(vec2<bool>(true, true))), func_1(~(vec3<i32>(2147483647i, 42875i, u_input.b) << (vec3<u32>(u_input.c.x, u_input.c.x, u_input.a) % vec3<u32>(32u))), global2[_wgslsmith_index_u32(u_input.a, 30u)])), !vec2<bool>(all(vec3<bool>(false, false, false)), false), !any(vec3<bool>(u_input.b < 37364i, any(vec2<bool>(true, false)), all(vec3<bool>(true, true, false)))));
    global0 = _wgslsmith_sub_u32(~_wgslsmith_mod_u32(~(~u_input.c.x), u_input.c.x), u_input.c.x);
    var var_1 = -835f;
    global1 = array<Struct_1, 23>();
    let var_2 = Struct_1(u_input.b);
    let var_3 = vec2<bool>(true, true);
    let x = u_input.a;
    s_output = StorageBuffer(~(vec3<u32>(~4294967295u, 4294967295u, u_input.c.x) & _wgslsmith_div_vec3_u32(abs(vec3<u32>(0u, 0u, 23775u)), vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x) >> (vec3<u32>(u_input.a, u_input.c.x, 14783u) % vec3<u32>(32u)))));
}

