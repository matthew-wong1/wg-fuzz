struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec2<bool>,
    c: f32,
    d: i32,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec4<f32>,
}

struct Struct_4 {
    a: vec4<bool>,
}

struct Struct_5 {
    a: vec2<bool>,
    b: vec2<f32>,
    c: vec4<u32>,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: vec2<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<i32>(23786i, 1i, -29831i));

var<private> global1: array<Struct_3, 18>;

var<private> global2: array<Struct_1, 18>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_1(arg_0: u32, arg_1: f32, arg_2: f32, arg_3: vec4<f32>) -> u32 {
    let var_0 = -firstTrailingBit(vec3<i32>(~u_input.a, -14638i, -(0i & u_input.a)));
    var var_1 = true;
    global2 = array<Struct_1, 18>();
    let var_2 = true;
    return ~(~arg_0);
}

fn func_3(arg_0: bool, arg_1: bool, arg_2: Struct_1, arg_3: vec4<f32>) -> bool {
    var var_0 = ~_wgslsmith_dot_vec3_i32(~arg_2.a, arg_2.a);
    global1 = array<Struct_3, 18>();
    var_0 = global0.a.x;
    var_0 = -16523i >> (_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(~(vec3<u32>(0u, u_input.b.x, 0u) | u_input.b), vec3<u32>(~0u, _wgslsmith_mod_u32(37923u, 955u), firstLeadingBit(1721u))), 4294967295u) % 32u);
    let var_1 = 31070u;
    return all(select(!vec4<bool>(true, all(vec3<bool>(true, false, arg_1)), arg_1, true), !(!select(vec4<bool>(arg_0, arg_0, arg_0, arg_1), vec4<bool>(arg_0, arg_0, false, arg_1), false)), select(select(vec4<bool>(false, arg_1, false, false), vec4<bool>(arg_0, true, arg_1, false), select(vec4<bool>(arg_0, arg_1, arg_1, true), vec4<bool>(false, arg_1, arg_1, arg_0), vec4<bool>(arg_0, true, true, false))), !vec4<bool>(false, arg_0, arg_1, false), vec4<bool>(all(vec4<bool>(true, true, arg_0, false)), true, arg_1 || arg_0, arg_1))));
}

fn func_2() -> i32 {
    let var_0 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(1000f + 1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-725f)) + _wgslsmith_f_op_f32(f32(-1f) * -1605f))), 153f, -987f), select(vec2<bool>(true, true), !select(vec2<bool>(true, true), vec2<bool>(false, false), true), vec2<bool>(func_3(true, 0u <= u_input.b.x, global2[_wgslsmith_index_u32(~u_input.b.x, 18u)], _wgslsmith_f_op_vec4_f32(vec4<f32>(1236f, -1082f, 177f, 715f) + vec4<f32>(1723f, 805f, 1771f, 215f))), true)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_f_op_f32(-1000f - -2468f)))))), global0.a.x);
    var var_1 = u_input.b;
    let var_2 = var_0.b.x;
    var var_3 = -424f;
    var var_4 = firstTrailingBit(~u_input.b);
    return max(u_input.a, 1i);
}

fn func_4(arg_0: i32) -> Struct_3 {
    let var_0 = global1[_wgslsmith_index_u32(1u, 18u)];
    global1 = array<Struct_3, 18>();
    let var_1 = false;
    return global1[_wgslsmith_index_u32(45338u, 18u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_add_u32(max(4294967295u, u_input.b.x ^ func_1(_wgslsmith_div_u32(0u, u_input.b.x), -1280f, _wgslsmith_f_op_f32(-887f - -554f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-2686f, -1000f, 176f, 1548f) + vec4<f32>(-1345f, 637f, 1046f, -210f)))), ~_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x), u_input.b >> (vec3<u32>(u_input.b.x, 70471u, 33559u) % vec3<u32>(32u))) >> (~_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(1u, 10202u, u_input.b.x), u_input.b), u_input.b | u_input.b) % 32u));
    global2 = array<Struct_1, 18>();
    let var_1 = func_4(func_2());
    let var_2 = Struct_4(vec4<bool>(any(select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true))), true, -_wgslsmith_clamp_i32(-2147483647i, u_input.a, var_1.a.x) <= (global0.a.x << (~1u % 32u)), false == all(vec4<bool>(true, false, true, false))));
    let var_3 = reverseBits(_wgslsmith_dot_vec3_u32(firstLeadingBit(u_input.b), u_input.b));
    let var_4 = global0.a.x < ~firstTrailingBit(-2147483647i);
    let x = u_input.a;
    s_output = StorageBuffer(-(global0.a.x << (~(u_input.b.x >> (0u % 32u)) % 32u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(var_1.b, _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.b.x, var_1.b.x, var_1.b.x, 386f) - vec4<f32>(-206f, 1488f, var_1.b.x, -192f))))), var_1.a.yz, -416i);
}

