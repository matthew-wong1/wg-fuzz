struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 8>;

var<private> global1: u32 = 77804u;

var<private> global2: array<vec3<u32>, 6>;

var<private> global3: array<f32, 23> = array<f32, 23>(810f, 695f, -514f, 364f, -668f, 1723f, 1641f, 937f, 749f, 653f, -1450f, -1189f, -1072f, -165f, -1209f, 179f, -1056f, 1743f, -991f, -1000f, -566f, -1303f, 512f);

var<private> global4: array<Struct_1, 20> = array<Struct_1, 20>(Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(false));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec2<u32>, arg_1: vec2<i32>, arg_2: Struct_1) -> u32 {
    global3 = array<f32, 23>();
    let var_0 = 2147483647i;
    global0 = array<bool, 8>();
    var var_1 = arg_2;
    var var_2 = false;
    return _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_add_u32(arg_0.x, arg_0.x), ~arg_0.x, ~u_input.b), max(vec3<u32>(2513u, 4294967295u, 0u), global2[_wgslsmith_index_u32(1u, 6u)]) | vec3<u32>(10411u, arg_0.x, 1u)), ~u_input.b, _wgslsmith_clamp_u32(_wgslsmith_sub_u32(~u_input.b, ~132670u), (9806u << (arg_0.x % 32u)) ^ u_input.b, ~countOneBits(33840u))), firstLeadingBit(~global2[_wgslsmith_index_u32(0u, 6u)]));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32, arg_3: Struct_1) -> bool {
    global3 = array<f32, 23>();
    global0 = array<bool, 8>();
    let var_0 = abs(vec3<u32>(u_input.b, arg_2, abs(u_input.b)) | ~firstTrailingBit(vec3<u32>(u_input.b, arg_2, u_input.b))) << (global2[_wgslsmith_index_u32(_wgslsmith_add_u32(min(~(~4294967295u), max(func_3(vec2<u32>(arg_2, arg_2), vec2<i32>(u_input.c, u_input.a.x), arg_1), arg_2)), 27683u), 6u)] % vec3<u32>(32u));
    global4 = array<Struct_1, 20>();
    var var_1 = arg_0;
    return ~reverseBits(_wgslsmith_sub_i32(33356i, ~u_input.a.x)) < -1i;
}

fn func_1(arg_0: f32, arg_1: Struct_1) -> StorageBuffer {
    let var_0 = Struct_1(all(!vec3<bool>(true, func_2(arg_1, arg_1, u_input.b, global4[_wgslsmith_index_u32(4059u, 20u)]), func_2(global4[_wgslsmith_index_u32(u_input.b, 20u)], global4[_wgslsmith_index_u32(14160u, 20u)], u_input.b, arg_1))));
    global1 = ((~0u << (_wgslsmith_add_u32(120500u, _wgslsmith_mult_u32(u_input.b, 12369u)) % 32u)) & 0u) & firstTrailingBit(u_input.b);
    var var_1 = arg_1;
    let var_2 = var_0;
    global2 = array<vec3<u32>, 6>();
    return StorageBuffer(u_input.c, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(348f))), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1015f), _wgslsmith_f_op_f32(f32(-1f) * -922f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-583f)))), _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_mult_u32(u_input.b, 4294967295u), u_input.b), 23u)] * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(-1200f, 745f, false)))))), vec2<u32>(~u_input.b, func_3(_wgslsmith_mod_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(1u, 0u), vec2<u32>(u_input.b, u_input.b)), vec2<u32>(u_input.b, 1u)), -(u_input.a ^ u_input.a), Struct_1(false))));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<Struct_1, 20>();
    let var_0 = global4[_wgslsmith_index_u32(4294967295u, 20u)];
    let x = u_input.a;
    s_output = func_1(global3[_wgslsmith_index_u32(countOneBits(~(~0u) ^ u_input.b), 23u)], Struct_1(var_0.a));
}

