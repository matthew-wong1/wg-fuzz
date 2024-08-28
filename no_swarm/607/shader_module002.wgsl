struct Struct_1 {
    a: vec2<bool>,
    b: u32,
    c: vec4<u32>,
    d: f32,
    e: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: f32,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 19>;

var<private> global1: Struct_1 = Struct_1(vec2<bool>(false, false), 1u, vec4<u32>(14722u, 0u, 25623u, 12964u), -1056f, 59889u);

var<private> global2: array<Struct_1, 23>;

var<private> global3: vec4<i32> = vec4<i32>(i32(-2147483648), 9805i, -19823i, -1i);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> u32 {
    global2 = array<Struct_1, 23>();
    let var_0 = global2[_wgslsmith_index_u32(max(12814u, _wgslsmith_dot_vec4_u32(~vec4<u32>(global1.c.x, reverseBits(1u), ~global1.e, countOneBits(global1.b)), vec4<u32>(30984u, firstTrailingBit(global1.b), global1.e << (abs(1u) % 32u), ~_wgslsmith_mult_u32(8225u, 1u)))), 23u)];
    var var_1 = abs(var_0.c.xzz);
    let var_2 = vec2<bool>(!(!all(vec4<bool>(global1.a.x, global1.a.x, global1.a.x, var_0.a.x))), all(!(!select(vec3<bool>(var_0.a.x, var_0.a.x, var_0.a.x), vec3<bool>(true, false, var_0.a.x), true))));
    var_1 = abs(~abs(~var_0.c.xxz));
    return ~_wgslsmith_mod_u32(_wgslsmith_sub_u32(~_wgslsmith_sub_u32(4294967295u, 10624u), var_1.x), var_1.x);
}

fn func_2() -> bool {
    let var_0 = Struct_1(global1.a, func_3(), _wgslsmith_sub_vec4_u32(global1.c, _wgslsmith_add_vec4_u32(vec4<u32>(global1.b, global1.b, 0u, 49975u), global1.c) ^ select(vec4<u32>(0u, 1u, global1.c.x, global1.e) & global1.c, global1.c, global1.b <= 1u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(trunc(global1.d)))))), ~(_wgslsmith_mod_u32(_wgslsmith_mod_u32(44824u, 43247u), global1.b) ^ _wgslsmith_dot_vec4_u32(~vec4<u32>(20952u, global1.c.x, 0u, global1.e), ~global1.c)));
    global0 = array<f32, 19>();
    var var_1 = ~(1i << (1u % 32u));
    let var_2 = Struct_1(vec2<bool>(any(select(!vec4<bool>(true, var_0.a.x, false, false), !vec4<bool>(global1.a.x, true, global1.a.x, global1.a.x), vec4<bool>(global1.a.x, false, false, false))), global1.a.x), ~(~func_3()), var_0.c >> (vec4<u32>(15387u, _wgslsmith_add_u32(4294967295u, var_0.e >> (global1.b % 32u)), reverseBits(91742u) >> (global1.e % 32u), _wgslsmith_div_u32(~var_0.b, var_0.e)) % vec4<u32>(32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(842f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(var_0.c.x, 19u)]))))), var_0.e);
    var var_3 = -1i;
    return any(!(!select(vec3<bool>(var_0.a.x, false, true), select(vec3<bool>(true, true, var_0.a.x), vec3<bool>(true, false, false), vec3<bool>(false, true, false)), !global1.a.x)));
}

fn func_1(arg_0: Struct_1) -> u32 {
    let var_0 = vec3<bool>(all(vec2<bool>(true, func_2())), all(vec4<bool>(true, arg_0.a.x, global1.a.x, false)), false);
    let var_1 = 30604u;
    var var_2 = abs(global3.xww & _wgslsmith_div_vec3_i32(max(vec3<i32>(-1i, global3.x, u_input.a.x), vec3<i32>(54780i, 17493i, global3.x)), global3.yxy));
    global0 = array<f32, 19>();
    let var_3 = Struct_1(var_0.xy, 1u & abs(~_wgslsmith_mod_u32(global1.c.x, arg_0.e)), ~firstTrailingBit(vec4<u32>(arg_0.e, 1u, ~4294967295u, _wgslsmith_mult_u32(global1.c.x, var_1))), global1.d, 20101u);
    return ~428u;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_1, 23>();
    global1 = Struct_1(global1.a, reverseBits(~(func_1(global2[_wgslsmith_index_u32(26683u, 23u)]) | 22310u)), vec4<u32>(~func_1(global2[_wgslsmith_index_u32(~global1.b, 23u)]), _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(global1.e, 73415u), ~vec2<u32>(35786u, global1.e)), global1.c.xy), ~_wgslsmith_clamp_u32(17912u, _wgslsmith_mod_u32(global1.e, 4294967295u), ~4294967295u), global1.e), _wgslsmith_f_op_f32(628f - _wgslsmith_div_f32(-1055f, global1.d)), global1.c.x);
    var var_0 = global2[_wgslsmith_index_u32(min(global1.b, global1.b | firstLeadingBit(1u)) << (4294967295u % 32u), 23u)];
    let var_1 = Struct_1(!(!vec2<bool>(global1.a.x, !var_0.a.x)), ~_wgslsmith_clamp_u32(max(4294967295u, _wgslsmith_sub_u32(var_0.c.x, var_0.c.x)), global1.e, _wgslsmith_mod_u32(max(0u, 1u), ~1u)), ~global1.c, -296f, ~global1.c.x << (var_0.e % 32u));
    global0 = array<f32, 19>();
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(reverseBits(min(vec4<i32>(22814i, global3.x, global3.x, 19076i) | vec4<i32>(-1i, global3.x, u_input.a.x, global3.x), vec4<i32>(u_input.a.x, global3.x, 43059i, 5066i)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.d) - _wgslsmith_f_op_f32(f32(-1f) * -1000f))), global1.d, ~0u, i32(-1i) * -u_input.a.x);
}

