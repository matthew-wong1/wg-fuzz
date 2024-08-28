struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<i32>,
    c: Struct_1,
    d: Struct_2,
    e: u32,
}

struct Struct_4 {
    a: i32,
    b: vec2<bool>,
    c: Struct_1,
    d: vec4<u32>,
}

struct Struct_5 {
    a: i32,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 14> = array<u32, 14>(5777u, 18723u, 1u, 0u, 1u, 48200u, 0u, 44424u, 5524u, 61323u, 0u, 0u, 0u, 1u);

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: Struct_2, arg_1: Struct_4, arg_2: bool, arg_3: vec4<u32>) -> f32 {
    global0 = array<u32, 14>();
    let var_0 = _wgslsmith_div_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.d.x, arg_1.d.x), _wgslsmith_sub_vec2_u32(_wgslsmith_clamp_vec2_u32(arg_1.d.yy, u_input.a, arg_3.xx), vec2<u32>(29432u, u_input.c))), ~(global0[_wgslsmith_index_u32(~(~43360u), 14u)] & 92026u));
    global0 = array<u32, 14>();
    return -378f;
}

fn func_1(arg_0: Struct_5) -> vec4<u32> {
    var var_0 = arg_0;
    let var_1 = firstTrailingBit(var_0.a);
    var_0 = arg_0;
    var var_2 = reverseBits(u_input.b.xz);
    var var_3 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(Struct_2(-903f, Struct_1(212f)), Struct_4(var_1, arg_0.b.yy, Struct_1(473f), vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.c, 14u)], 14u)], 14u)], 14u)], global0[_wgslsmith_index_u32(14588u, 14u)], global0[_wgslsmith_index_u32(4294967295u, 14u)], 4294967295u)), var_0.b.x, vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 14u)], 14u)], global0[_wgslsmith_index_u32(0u, 14u)], 75889u, 5560u))))))), -117f, all(select(var_0.b, !var_0.b, var_0.b)) | arg_0.b.x));
    return vec4<u32>(4294967295u, abs(global0[_wgslsmith_index_u32(85381u, 14u)]), 68802u, 47298u);
}

fn func_3(arg_0: vec4<i32>, arg_1: vec4<u32>, arg_2: vec2<i32>, arg_3: bool) -> bool {
    global0 = array<u32, 14>();
    global0 = array<u32, 14>();
    let var_0 = _wgslsmith_clamp_vec4_u32(~arg_1, vec4<u32>(~0u, abs(~_wgslsmith_dot_vec4_u32(arg_1, arg_1)), ~1u, func_1(Struct_5(u_input.b.x, !vec3<bool>(arg_3, arg_3, false))).x), _wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u | u_input.a.x, ~arg_1.x, arg_1.x, 42160u), arg_1) ^ reverseBits(~vec4<u32>(28608u, arg_1.x, u_input.a.x, arg_1.x)));
    var var_1 = vec2<bool>(arg_3, true);
    let var_2 = 0u;
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<bool>(false, all(!vec2<bool>(select(false, true, false), false)), true || func_3(-_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.d, 1i, 19945i, u_input.d), vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x)), abs(func_1(Struct_5(-1i, vec3<bool>(true, false, false)))), max(vec2<i32>(u_input.d, u_input.d), abs(u_input.b.wx)), true));
    let var_1 = _wgslsmith_mult_vec4_u32(~vec4<u32>(0u, ~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 14u)], 14u)], ~global0[_wgslsmith_index_u32(1u, 14u)], ~global0[_wgslsmith_index_u32(1u, 14u)]), ~min(vec4<u32>(0u, 2683u, 65278u, 38441u), ~vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 14u)], 14u)], u_input.c, 4294967295u, 3480u))) & select(~_wgslsmith_add_vec4_u32(abs(vec4<u32>(u_input.c, u_input.c, u_input.c, 1u)), _wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 24756u, u_input.a.x, global0[_wgslsmith_index_u32(4294967295u, 14u)]), vec4<u32>(0u, u_input.c, 0u, u_input.c))), _wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c, 60200u, u_input.a.x, 0u), _wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, global0[_wgslsmith_index_u32(42175u, 14u)], 4294967295u, u_input.a.x), vec4<u32>(u_input.c, 1u, 0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(3850u, 14u)], 14u)]))), _wgslsmith_mult_vec4_u32(vec4<u32>(53303u, 6955u, u_input.a.x, global0[_wgslsmith_index_u32(u_input.c, 14u)]), _wgslsmith_mult_vec4_u32(vec4<u32>(11423u, 38337u, 1u, 1u), vec4<u32>(global0[_wgslsmith_index_u32(u_input.c, 14u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(20926u, 14u)], 14u)], u_input.a.x, 30308u)))), !(!(!vec4<bool>(true, true, false, var_0.x))));
    var var_2 = !(!(!vec2<bool>(all(vec4<bool>(true, true, false, false)), true)));
    var var_3 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -1124f), Struct_1(1000f)), Struct_4(u_input.d, vec2<bool>(true, true), Struct_1(2174f), min(var_1, vec4<u32>(4294967295u, u_input.a.x, global0[_wgslsmith_index_u32(var_1.x, 14u)], 0u))), true, max(var_1, vec4<u32>(u_input.c, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(10715u, 14u)], 14u)], 112239u, var_1.x)) & max(var_1, var_1)))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -474f)))));
    let var_4 = select(!vec3<bool>(func_3(u_input.b, vec4<u32>(66668u, global0[_wgslsmith_index_u32(var_1.x, 14u)], global0[_wgslsmith_index_u32(var_1.x, 14u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_1.x, 14u)], 14u)]), vec2<i32>(u_input.d, u_input.b.x), var_0.x) | !var_2.x, !all(vec4<bool>(true, true, false, false)), true), !select(select(vec3<bool>(false, var_2.x, var_0.x), var_0, var_0), var_0, vec3<bool>(var_2.x, false & var_0.x, true)), -289f < _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_3.a), var_3.b.a)))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c);
}

