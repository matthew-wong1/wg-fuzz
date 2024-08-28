struct Struct_1 {
    a: vec2<bool>,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec2<u32>,
    b: Struct_3,
    c: vec2<bool>,
    d: Struct_1,
}

struct Struct_5 {
    a: vec4<bool>,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 28> = array<u32, 28>(23292u, 39767u, 40771u, 31238u, 13555u, 57478u, 4294967295u, 41090u, 0u, 83758u, 4294967295u, 32424u, 4294967295u, 1u, 24188u, 255u, 0u, 1u, 45858u, 9557u, 0u, 54765u, 36297u, 1u, 14683u, 1u, 1u, 1u);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: bool, arg_1: vec2<f32>, arg_2: i32, arg_3: bool) -> vec2<bool> {
    var var_0 = Struct_1(vec2<bool>(false, false), ~60197u);
    global0 = array<u32, 28>();
    global0 = array<u32, 28>();
    global0 = array<u32, 28>();
    var var_1 = max(~vec3<u32>(var_0.b, max(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(69728u, 28u)], 28u)], var_0.b), u_input.a), select(vec3<u32>(1u, _wgslsmith_dot_vec3_u32(~vec3<u32>(global0[_wgslsmith_index_u32(1u, 28u)], 1u, 45516u), vec3<u32>(0u, 4294967295u, var_0.b)), ~0u), vec3<u32>(min(countOneBits(4294967295u), 1u), 1u, global0[_wgslsmith_index_u32(1u >> (_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.b, 3654u, var_0.b, u_input.a), vec4<u32>(u_input.a, 0u, 5335u, 1u)) % 32u), 28u)]), vec3<bool>(arg_3, !(true && arg_3), true)));
    return var_0.a;
}

fn func_2() -> Struct_4 {
    let var_0 = vec3<f32>(274f, -312f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1823f - _wgslsmith_div_f32(608f, 1251f))), -917f)));
    global0 = array<u32, 28>();
    global0 = array<u32, 28>();
    var var_1 = ~(~vec3<u32>(36952u, ~24189u, ~(1u ^ global0[_wgslsmith_index_u32(1u, 28u)])));
    global0 = array<u32, 28>();
    return Struct_4(var_1.zz, Struct_3(Struct_1(vec2<bool>(true, true), var_1.x)), func_3(false, vec2<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1987f - -547f) - _wgslsmith_f_op_f32(trunc(1549f)))), _wgslsmith_sub_i32(37006i, firstTrailingBit(0i)), var_1.x <= ~countOneBits(u_input.a)), Struct_1(!(!select(vec2<bool>(false, false), vec2<bool>(true, true), false)), u_input.a));
}

fn func_1(arg_0: bool) -> Struct_4 {
    global0 = array<u32, 28>();
    global0 = array<u32, 28>();
    global0 = array<u32, 28>();
    return func_2();
}

fn func_4(arg_0: f32, arg_1: vec3<f32>, arg_2: Struct_4, arg_3: vec3<i32>) -> vec2<u32> {
    return ~(~func_2().a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mod_vec2_u32(~_wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(1u, 1u), ~vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(23855u, 28u)], 28u)], 72260u)), ~vec2<u32>(0u, 18138u)), (func_4(_wgslsmith_f_op_f32(1769f - -809f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 1000f, 1000f)), func_1(true), vec3<i32>(2147483647i, 2147483647i, 17723i) >> (vec3<u32>(global0[_wgslsmith_index_u32(1u, 28u)], global0[_wgslsmith_index_u32(0u, 28u)], u_input.a) % vec3<u32>(32u))) ^ ~max(vec2<u32>(0u, u_input.a), vec2<u32>(global0[_wgslsmith_index_u32(u_input.a, 28u)], u_input.a))) >> (abs(_wgslsmith_add_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(0u, global0[_wgslsmith_index_u32(30963u, 28u)]), vec2<u32>(u_input.a, 4294967295u)), select(vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(40213u, 28u)], 28u)], 4294967295u), vec2<u32>(u_input.a, u_input.a), vec2<bool>(false, false)))) % vec2<u32>(32u)));
    var var_1 = firstLeadingBit(reverseBits(u_input.a));
    global0 = array<u32, 28>();
    var var_2 = Struct_3(Struct_1(vec2<bool>(true, true), u_input.a));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -528f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -873f) * 1f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1011f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1236f, -963f))))));
    let var_4 = select(vec3<bool>(true, true, var_2.a.a.x), !(!(!select(vec3<bool>(false, false, true), vec3<bool>(false, var_2.a.a.x, var_2.a.a.x), false))), false);
    var var_5 = Struct_5(vec4<bool>(!all(var_4), true, false, var_2.a.a.x), var_2.a);
    var var_6 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-472f * _wgslsmith_f_op_f32(floor(519f))), abs(0i));
}

