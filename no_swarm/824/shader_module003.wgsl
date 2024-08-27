struct Struct_1 {
    a: vec2<bool>,
    b: vec4<u32>,
    c: u32,
    d: vec3<f32>,
    e: vec2<i32>,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct Struct_3 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 7>;

var<private> global1: array<vec3<i32>, 2> = array<vec3<i32>, 2>(vec3<i32>(36129i, 38986i, 2147483647i), vec3<i32>(12542i, -48981i, 8987i));

var<private> global2: vec3<f32> = vec3<f32>(546f, 404f, 363f);

var<private> global3: array<Struct_1, 25>;

var<private> global4: array<Struct_2, 4>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> f32 {
    global0 = array<i32, 7>();
    var var_0 = ~_wgslsmith_add_u32(~(37864u ^ u_input.a), _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.b, u_input.a, 0u) & vec4<u32>(29542u, 2094u, u_input.b, 13055u), vec4<u32>(65989u, 0u, u_input.a, u_input.a) | vec4<u32>(106209u, 47830u, u_input.a, 0u)), 21734u));
    global3 = array<Struct_1, 25>();
    var_0 = ~u_input.a;
    var_0 = ~10590u;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x));
}

fn func_2(arg_0: Struct_3, arg_1: vec4<u32>, arg_2: vec3<bool>) -> vec3<bool> {
    var var_0 = ~(~min(arg_1, _wgslsmith_div_vec4_u32(~vec4<u32>(4294967295u, 1u, 39632u, 0u), arg_1)));
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -668f), _wgslsmith_f_op_f32(func_3()))), _wgslsmith_f_op_f32(global2.x * 901f));
    var var_2 = _wgslsmith_mod_i32(-6491i, firstLeadingBit(-reverseBits(select(arg_0.a, arg_0.a, arg_2.x))));
    let var_3 = select(!vec2<bool>(true, all(arg_2)), select(arg_2.yz, arg_2.yz, !(_wgslsmith_mod_i32(-1i, arg_0.a) <= 1i)), vec2<bool>(arg_2.x, any(select(select(vec4<bool>(arg_2.x, arg_2.x, true, arg_2.x), vec4<bool>(false, arg_2.x, true, arg_2.x), vec4<bool>(true, true, true, arg_2.x)), vec4<bool>(true, false, arg_2.x, arg_2.x), vec4<bool>(arg_2.x, arg_2.x, arg_2.x, arg_2.x)))));
    var var_4 = 22673u;
    return !arg_2;
}

fn func_1(arg_0: u32) -> Struct_3 {
    global1 = array<vec3<i32>, 2>();
    let var_0 = Struct_1(vec2<bool>(all(!func_2(Struct_3(global0[_wgslsmith_index_u32(arg_0, 7u)]), vec4<u32>(u_input.a, 4294967295u, 34329u, 61309u), vec3<bool>(false, false, true))), any(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)))), _wgslsmith_div_vec4_u32(~(vec4<u32>(u_input.a, 0u, u_input.a, 4294967295u) & select(vec4<u32>(53352u, 63850u, arg_0, arg_0), vec4<u32>(0u, 1u, arg_0, 4294967295u), false)), ~vec4<u32>(47154u, ~0u, 4294967295u, arg_0)), ~(~(~1u)) >> (~firstTrailingBit(137528u) % 32u), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-103f, -397f, global2.x)))) * vec3<f32>(1000f, 158f, _wgslsmith_f_op_f32(global2.x + global2.x))))), -reverseBits(max(vec2<i32>(896i, global0[_wgslsmith_index_u32(u_input.a, 7u)]), vec2<i32>(-29936i, global0[_wgslsmith_index_u32(75135u, 7u)])) & max(vec2<i32>(global0[_wgslsmith_index_u32(0u, 7u)], 25253i), vec2<i32>(-6643i, global0[_wgslsmith_index_u32(arg_0, 7u)]))));
    let var_1 = _wgslsmith_div_vec3_f32(var_0.d, _wgslsmith_f_op_vec3_f32(var_0.d - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2588f, var_0.d.x, -1100f)))));
    var var_2 = vec4<i32>(max(firstLeadingBit(~(~global0[_wgslsmith_index_u32(var_0.b.x, 7u)])), ~(-_wgslsmith_div_i32(global0[_wgslsmith_index_u32(arg_0, 7u)], 2147483647i))), -22927i << (max(~(~1u), _wgslsmith_dot_vec3_u32(~var_0.b.xwy, reverseBits(var_0.b.yyy))) % 32u), global0[_wgslsmith_index_u32(4294967295u, 7u)], ~_wgslsmith_sub_i32(var_0.e.x, ~4762i));
    let var_3 = Struct_3(_wgslsmith_mult_i32(~(~(-var_2.x)), firstLeadingBit(i32(-1i) * -global0[_wgslsmith_index_u32(arg_0, 7u)])));
    return var_3;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(0u);
    let var_1 = Struct_1(select(vec2<bool>(true, true), vec2<bool>(_wgslsmith_mod_i32(global0[_wgslsmith_index_u32(u_input.a, 7u)], var_0.a) <= abs(var_0.a), global0[_wgslsmith_index_u32(26145u, 7u)] >= _wgslsmith_sub_i32(-26213i, 1i)), false), _wgslsmith_sub_vec4_u32(vec4<u32>(~(~u_input.b), ~(~u_input.b), _wgslsmith_mult_u32(u_input.b, u_input.b ^ u_input.b), ~u_input.b), abs(reverseBits(vec4<u32>(56152u, 17320u, u_input.b, 18229u) ^ vec4<u32>(9285u, 1u, u_input.b, 1u)))), ~_wgslsmith_dot_vec3_u32(vec3<u32>(~u_input.a, u_input.a, 20518u), vec3<u32>(_wgslsmith_mod_u32(u_input.b, 0u), u_input.b, _wgslsmith_clamp_u32(60666u, 36452u, u_input.b))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1233f, -1055f, global2.x) * vec3<f32>(765f, -224f, global2.x))))), ~firstTrailingBit(vec2<i32>(-1i) * -vec2<i32>(var_0.a, -1i)));
    var var_2 = global4[_wgslsmith_index_u32(~u_input.b, 4u)];
    let x = u_input.a;
    s_output = StorageBuffer(global2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global2.x, -858f))));
}

