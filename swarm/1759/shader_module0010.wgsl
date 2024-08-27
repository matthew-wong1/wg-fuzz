struct Struct_1 {
    a: u32,
    b: bool,
    c: vec2<i32>,
    d: vec2<u32>,
    e: f32,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_2,
    c: vec3<u32>,
    d: f32,
}

struct Struct_4 {
    a: u32,
}

struct Struct_5 {
    a: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 27>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: vec3<i32>, arg_3: vec4<u32>) -> bool {
    global0 = array<u32, 27>();
    global0 = array<u32, 27>();
    global0 = array<u32, 27>();
    let var_0 = -1406f;
    global0 = array<u32, 27>();
    return !(arg_0.b | select(true, _wgslsmith_f_op_f32(-1916f + -1355f) > var_0, select(false, all(vec2<bool>(arg_1, arg_1)), true)));
}

fn func_2(arg_0: i32, arg_1: Struct_2, arg_2: bool, arg_3: Struct_2) -> bool {
    global0 = array<u32, 27>();
    let var_0 = Struct_5(30713u);
    var var_1 = !select(func_3(Struct_1(var_0.a, true, select(u_input.a.zy, u_input.a.xy, vec2<bool>(arg_2, arg_2)), vec2<u32>(0u, 46822u), -2013f), arg_2, u_input.a, ~vec4<u32>(4294967295u, var_0.a, var_0.a, 0u) ^ firstTrailingBit(vec4<u32>(0u, var_0.a, global0[_wgslsmith_index_u32(20510u, 27u)], global0[_wgslsmith_index_u32(1u, 27u)]))), arg_2, false);
    return false;
}

fn func_1() -> f32 {
    global0 = array<u32, 27>();
    var var_0 = select(select(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), all(vec2<bool>(false, true))), select(select(select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(true, false, false)), select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), true), true), vec3<bool>(true, true, true), !select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(true, false, false))), true), !(!vec3<bool>(true, func_2(u_input.a.x, Struct_2(vec2<f32>(217f, 958f)), false, Struct_2(vec2<f32>(318f, -1472f))), all(vec2<bool>(true, true)))), select(!vec3<bool>(false, any(vec4<bool>(false, false, false, true)), true), !vec3<bool>(any(vec2<bool>(false, true)), true, func_2(u_input.a.x, Struct_2(vec2<f32>(-1696f, -405f)), true, Struct_2(vec2<f32>(1001f, -411f)))), !(!func_3(Struct_1(global0[_wgslsmith_index_u32(8123u, 27u)], false, u_input.a.zx, vec2<u32>(global0[_wgslsmith_index_u32(0u, 27u)], 18459u), 413f), false, vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(3083u, 27u)], 27u)], 27u)], global0[_wgslsmith_index_u32(40016u, 27u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4358u, 27u)], 27u)], 4294967295u)))));
    var_0 = select(vec3<bool>((abs(0u) < global0[_wgslsmith_index_u32(1u, 27u)]) & var_0.x, select(true, true, 0i <= u_input.a.x), _wgslsmith_dot_vec2_u32(select(vec2<u32>(18541u, 67579u), vec2<u32>(global0[_wgslsmith_index_u32(2023u, 27u)], global0[_wgslsmith_index_u32(3488u, 27u)]), var_0.x), _wgslsmith_add_vec2_u32(vec2<u32>(0u, 33231u), vec2<u32>(33155u, 0u))) > _wgslsmith_dot_vec4_u32(~vec4<u32>(0u, global0[_wgslsmith_index_u32(4294967295u, 27u)], 22702u, 21333u), firstTrailingBit(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(66106u, 27u)], 27u)], 27u)], 27u)], 24299u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 27u)], 27u)], 27u)], 10498u)))), vec3<bool>(var_0.x, all(select(vec3<bool>(false, true, false), select(vec3<bool>(var_0.x, false, var_0.x), vec3<bool>(false, var_0.x, var_0.x), vec3<bool>(var_0.x, false, true)), all(vec4<bool>(var_0.x, false, false, false)))), var_0.x), select(!var_0.x, !(var_0.x & var_0.x) || var_0.x, true));
    global0 = array<u32, 27>();
    let var_1 = true;
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-256f * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-917f - 333f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1()));
    global0 = array<u32, 27>();
    var var_1 = abs(vec3<i32>(-49353i, _wgslsmith_mult_i32(~_wgslsmith_sub_i32(u_input.a.x, -2147483647i), reverseBits(_wgslsmith_clamp_i32(u_input.a.x, u_input.a.x, 0i))), u_input.a.x));
    var_1 = vec3<i32>(countOneBits(_wgslsmith_sub_i32(var_1.x, ~17746i)), 41485i, 0i) ^ vec3<i32>(~_wgslsmith_mod_i32(71415i, var_1.x) << (9404u % 32u), _wgslsmith_mult_i32(var_1.x, -48428i), u_input.a.x);
    global0 = array<u32, 27>();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, var_1.x, 0i, u_input.a.x), vec4<i32>(35145i, 1i, -4332i, u_input.a.x) >> (vec4<u32>(0u, 1u, global0[_wgslsmith_index_u32(1u, 27u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 27u)], 27u)]) % vec4<u32>(32u))), _wgslsmith_dot_vec3_i32(firstLeadingBit(u_input.a), max(vec3<i32>(-49697i, 35087i, u_input.a.x), vec3<i32>(-54412i, 21496i, 2147483647i))), 2147483647i, 0i) ^ firstLeadingBit(vec4<i32>(countOneBits(u_input.a.x), 1i, ~4687i, var_1.x)));
}

