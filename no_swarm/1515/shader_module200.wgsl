struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: bool,
    b: vec3<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: u32,
    d: Struct_2,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 22> = array<Struct_1, 22>(Struct_1(-1118f), Struct_1(2054f), Struct_1(356f), Struct_1(-193f), Struct_1(-701f), Struct_1(-1823f), Struct_1(252f), Struct_1(-1816f), Struct_1(-770f), Struct_1(-1490f), Struct_1(572f), Struct_1(-533f), Struct_1(-102f), Struct_1(821f), Struct_1(756f), Struct_1(847f), Struct_1(-576f), Struct_1(-718f), Struct_1(-169f), Struct_1(-1802f), Struct_1(-1442f), Struct_1(1005f));

var<private> global1: vec4<bool> = vec4<bool>(false, true, false, true);

var<private> global2: vec3<f32>;

var<private> global3: array<vec4<u32>, 8> = array<vec4<u32>, 8>(vec4<u32>(0u, 62534u, 4294967295u, 62085u), vec4<u32>(92317u, 0u, 36642u, 2511u), vec4<u32>(73405u, 1u, 16443u, 48542u), vec4<u32>(1u, 76553u, 47350u, 4294967295u), vec4<u32>(1u, 1u, 0u, 21959u), vec4<u32>(0u, 4294967295u, 14608u, 1u), vec4<u32>(44048u, 4294967295u, 1u, 27585u), vec4<u32>(1u, 39646u, 1u, 4294967295u));

var<private> global4: array<f32, 28>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: Struct_1) -> vec4<u32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-114f - global4[_wgslsmith_index_u32(28108u, 28u)])), global4[_wgslsmith_index_u32(~1u, 28u)])));
    let var_1 = _wgslsmith_f_op_f32(exp2(var_0.x));
    var var_2 = -2147483647i;
    var var_3 = 35781u << ((1u & _wgslsmith_dot_vec4_u32(~vec4<u32>(71515u, u_input.a, u_input.a, 4294967295u), ~global3[_wgslsmith_index_u32(u_input.a, 8u)])) % 32u);
    var var_4 = vec2<bool>(!global1.x, ~(~(~39890u)) < _wgslsmith_sub_u32(abs(1u << (u_input.a % 32u)), u_input.c.x));
    return vec4<u32>(u_input.a, 36685u, ~_wgslsmith_dot_vec3_u32(abs(firstTrailingBit(u_input.c)), ~(vec3<u32>(1u, u_input.c.x, u_input.a) << (u_input.c % vec3<u32>(32u)))), abs(435u));
}

fn func_2() -> bool {
    let var_0 = -612f;
    var var_1 = select(~vec4<u32>(_wgslsmith_dot_vec4_u32(global3[_wgslsmith_index_u32(u_input.c.x, 8u)], abs(global3[_wgslsmith_index_u32(u_input.a, 8u)])), ~(~0u), u_input.c.x & ~0u, u_input.a), global3[_wgslsmith_index_u32(u_input.a, 8u)], any(select(vec4<bool>(!global1.x, global1.x | true, global1.x, any(global1.xzx)), vec4<bool>(any(vec4<bool>(false, global1.x, global1.x, global1.x)), global1.x | global1.x, global1.x, !global1.x), false)));
    var_1 = global3[_wgslsmith_index_u32(~40994u, 8u)];
    var var_2 = global0[_wgslsmith_index_u32(~countOneBits(_wgslsmith_dot_vec4_u32(abs(func_3(Struct_1(-217f))), func_3(global0[_wgslsmith_index_u32(var_1.x, 22u)]))), 22u)];
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.x * _wgslsmith_f_op_f32(f32(-1f) * -1537f)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-188f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 - global4[_wgslsmith_index_u32(4294967295u, 28u)])))) + _wgslsmith_f_op_f32(ceil(var_2.a)));
    return true;
}

fn func_1(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: vec3<i32>, arg_3: vec4<i32>) -> StorageBuffer {
    global0 = array<Struct_1, 22>();
    let var_0 = !func_2();
    var var_1 = vec4<bool>(false, true, !global1.x, true);
    let var_2 = Struct_3(Struct_2(min(min(u_input.d, -51784i), 0i & arg_3.x) == _wgslsmith_div_i32(-2147483647i, -1i), !vec3<bool>(any(vec4<bool>(var_1.x, false, false, true)), true, true)), 0u, arg_1.x, Struct_2(var_1.x, !(!global1.yzy)), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -965f)));
    let var_3 = var_2.d;
    return StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_div_f32(455f, global4[_wgslsmith_index_u32(var_2.b, 28u)]) + _wgslsmith_f_op_f32(-var_2.e.a))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -357f));
    global3 = array<vec4<u32>, 8>();
    let var_1 = _wgslsmith_div_u32(~(~u_input.c.x), u_input.a);
    let x = u_input.a;
    s_output = func_1(global0[_wgslsmith_index_u32(~var_1, 22u)], vec2<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.c.x), countOneBits(vec2<u32>(var_1, u_input.c.x))), 4294967295u), vec3<i32>(u_input.d, 48636i, ~_wgslsmith_mod_i32(~u_input.d, u_input.d)), _wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(-33111i, u_input.b, -2147483647i, u_input.b), _wgslsmith_mod_vec4_i32(firstTrailingBit(vec4<i32>(u_input.d, 2147483647i, u_input.d, u_input.d)), vec4<i32>(u_input.d, u_input.b, u_input.d, 1i))), -(vec4<i32>(-1i, u_input.b, 29583i, u_input.b) & ~vec4<i32>(-1i, 49892i, u_input.b, u_input.b))));
}

