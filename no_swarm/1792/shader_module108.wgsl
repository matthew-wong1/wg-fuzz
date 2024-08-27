struct Struct_1 {
    a: u32,
    b: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: vec3<u32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 21>;

var<private> global1: bool = false;

var<private> global2: array<u32, 1>;

var<private> global3: f32 = 967f;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2(arg_0: Struct_1, arg_1: vec2<bool>) -> bool {
    let var_0 = global0[_wgslsmith_index_u32(~countOneBits(global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(global2[_wgslsmith_index_u32(reverseBits(~u_input.c), 1u)], 16906u), 1u)]), 21u)];
    var var_1 = vec2<bool>(true, true);
    var var_2 = any(vec4<bool>(arg_1.x, var_1.x, any(!vec4<bool>(var_1.x, arg_1.x, true, false)), true));
    var var_3 = -2147483647i;
    let var_4 = Struct_1(~global2[_wgslsmith_index_u32(4294967295u, 1u)], arg_0.b);
    return arg_1.x;
}

fn func_3(arg_0: Struct_1, arg_1: vec4<bool>) -> bool {
    global2 = array<u32, 1>();
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-1447f, -725f), _wgslsmith_f_op_f32(-347f + 1135f))) + -396f) - _wgslsmith_f_op_f32(floor(1f))) != _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-682f, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-373f, -200f)))));
    let var_1 = _wgslsmith_sub_vec3_i32(min(-firstLeadingBit(vec3<i32>(1i, arg_0.b, u_input.a)), ~max(vec3<i32>(u_input.a, -83146i, arg_0.b) & vec3<i32>(arg_0.b, -2322i, 31747i), firstLeadingBit(vec3<i32>(arg_0.b, 0i, -2147483647i)))), _wgslsmith_clamp_vec3_i32(firstLeadingBit(vec3<i32>(~24244i, ~(-2147483647i), ~64091i)), vec3<i32>(2147483647i, -_wgslsmith_mod_i32(35161i, 2147483647i), u_input.a), firstTrailingBit(vec3<i32>(abs(-1i), arg_0.b, -12782i))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1206f * -443f), _wgslsmith_f_op_f32(1000f + 564f), true))))));
    var var_3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2, var_2));
    return false;
}

fn func_1(arg_0: f32, arg_1: Struct_1) -> bool {
    global1 = (true || func_2(arg_1, vec2<bool>(true, true))) || false;
    global0 = array<Struct_1, 21>();
    global1 = !all(vec4<bool>(true, true && (arg_0 > arg_0), func_3(arg_1, vec4<bool>(true, true, true, true)), false));
    let var_0 = global0[_wgslsmith_index_u32(u_input.c, 21u)];
    var var_1 = vec3<u32>(global2[_wgslsmith_index_u32(0u, 1u)] & arg_1.a, _wgslsmith_div_u32(26548u ^ ~(global2[_wgslsmith_index_u32(4294967295u, 1u)] ^ u_input.c), ~(~u_input.c)), 1u);
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!(!vec2<bool>(func_1(-1586f, Struct_1(global2[_wgslsmith_index_u32(u_input.c, 1u)], 11186i)), func_3(global0[_wgslsmith_index_u32(u_input.c, 21u)], vec4<bool>(false, false, false, true)))));
    let var_1 = vec2<bool>(any(!(!select(vec3<bool>(true, true, true), vec3<bool>(var_0.x, var_0.x, var_0.x), var_0.x))), var_0.x | false);
    global3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(429f, 569f, var_0.x)))) * _wgslsmith_div_f32(-1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-914f)), _wgslsmith_f_op_f32(f32(-1f) * -679f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(362f)), _wgslsmith_f_op_f32(trunc(-954f)))));
    var var_2 = 4294967295u;
    let var_3 = ~(_wgslsmith_add_vec3_u32(abs(min(vec3<u32>(15051u, u_input.c, global2[_wgslsmith_index_u32(u_input.c, 1u)]), vec3<u32>(59474u, global2[_wgslsmith_index_u32(4294967295u, 1u)], u_input.c))), (vec3<u32>(global2[_wgslsmith_index_u32(42422u, 1u)], 4294967295u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(36527u, 1u)], 1u)], 1u)]) & vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(10663u, 1u)], 1u)], global2[_wgslsmith_index_u32(4294967295u, 1u)], 45180u)) & _wgslsmith_sub_vec3_u32(vec3<u32>(45776u, 12768u, global2[_wgslsmith_index_u32(93513u, 1u)]), vec3<u32>(global2[_wgslsmith_index_u32(4294967295u, 1u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(43656u, 1u)], 1u)], 1u)], 1u)], 13748u))) & (((vec3<u32>(global2[_wgslsmith_index_u32(0u, 1u)], u_input.c, 4294967295u) << (vec3<u32>(global2[_wgslsmith_index_u32(21462u, 1u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 1u)], 1u)], global2[_wgslsmith_index_u32(16559u, 1u)]) % vec3<u32>(32u))) ^ vec3<u32>(1u, 34700u, 0u)) << (vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(26586u, 1u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(722u, 1u)], 1u)], 1153u), vec4<u32>(u_input.c, 38578u, 32847u, 59895u)), 4294967295u, ~u_input.c) % vec3<u32>(32u))));
    global2 = array<u32, 1>();
    let var_4 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -188f), _wgslsmith_f_op_f32(-474f + -1513f), _wgslsmith_f_op_f32(abs(-1223f)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(446f, -602f, -182f) + vec3<f32>(1513f, 1000f, -135f))) + vec3<f32>(-266f, -1064f, _wgslsmith_f_op_f32(f32(-1f) * -1952f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-158f * -1157f) - -250f)), var_3, _wgslsmith_clamp_vec2_u32(vec2<u32>(1u, abs(var_3.x)) >> (~(var_3.yz & var_3.xz) % vec2<u32>(32u)), _wgslsmith_div_vec2_u32(countOneBits(~vec2<u32>(u_input.c, global2[_wgslsmith_index_u32(0u, 1u)])), ~var_3.zz), _wgslsmith_mod_vec2_u32(select(vec2<u32>(global2[_wgslsmith_index_u32(5161u, 1u)], var_3.x), ~vec2<u32>(global2[_wgslsmith_index_u32(1u, 1u)], 0u), !var_1), var_3.zy)));
}

