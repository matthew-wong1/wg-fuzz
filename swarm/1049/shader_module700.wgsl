struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: u32,
}

struct Struct_4 {
    a: Struct_1,
    b: f32,
    c: vec4<i32>,
    d: bool,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 16> = array<f32, 16>(382f, 912f, 679f, 1071f, 305f, -622f, -952f, -1441f, 766f, 174f, 823f, 310f, 665f, -249f, -1462f, -929f);

var<private> global1: bool = false;

var<private> global2: i32;

var<private> global3: Struct_4;

var<private> global4: array<Struct_3, 23>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2(arg_0: vec2<i32>, arg_1: vec2<bool>) -> bool {
    var var_0 = global4[_wgslsmith_index_u32(~0u, 23u)];
    global4 = array<Struct_3, 23>();
    var var_1 = _wgslsmith_f_op_f32(-547f * _wgslsmith_f_op_f32(605f - _wgslsmith_f_op_f32(1161f - -1161f)));
    let var_2 = Struct_4(global3.a, global0[_wgslsmith_index_u32(4881u, 16u)], vec4<i32>(max(min(-1i, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.x, -2147483647i, arg_0.x, 1i), global3.c)), _wgslsmith_clamp_i32(global3.a.a >> (14444u % 32u), 2147483647i, u_input.d)), global3.c.x, _wgslsmith_dot_vec2_i32(u_input.a.yy, vec2<i32>(u_input.d, 1i << (u_input.b % 32u))), -1i), true, !global3.e);
    var var_3 = _wgslsmith_mod_u32(0u, _wgslsmith_dot_vec2_u32(firstTrailingBit(_wgslsmith_div_vec2_u32(vec2<u32>(var_0.a, u_input.b), vec2<u32>(4294967295u, 42799u))), abs(~vec2<u32>(46250u, 29932u)))) >> (~(~(~(~35200u))) % 32u);
    return false;
}

fn func_3(arg_0: vec2<f32>, arg_1: u32, arg_2: vec4<bool>, arg_3: Struct_3) -> bool {
    var var_0 = vec3<bool>(!(!arg_2.x), arg_2.x, true);
    let var_1 = global4[_wgslsmith_index_u32(~(~(~arg_3.a << (arg_1 % 32u))), 23u)];
    let var_2 = global3.a.a;
    global0 = array<f32, 16>();
    global0 = array<f32, 16>();
    return global3.e.x;
}

fn func_1(arg_0: vec2<u32>) -> Struct_4 {
    global1 = !global3.d;
    var var_0 = func_2(u_input.a.yz, global3.e.zz);
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(537f, 306f, func_2(global3.c.xz, vec2<bool>(true, true))))))), -300f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(u_input.b, 16u)])))));
    var var_2 = select(vec2<bool>(all(!(!vec2<bool>(global3.d, global3.e.x))), global3.e.x), global3.e.xz, true & (var_1.x >= _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(var_1.x, -838f))))));
    let var_3 = Struct_4(Struct_1(abs(-2147483647i)), var_1.x, ~global3.c, true, vec4<bool>(func_2(_wgslsmith_add_vec2_i32(global3.c.wz, global3.c.zx), select(vec2<bool>(var_2.x, true), global3.e.wz, global3.e.wy)) && global3.e.x, (var_2.x || all(global3.e.xz)) | func_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(arg_0.x, 16u)], 1162f)), u_input.b, vec4<bool>(var_2.x, var_2.x, false, global3.e.x), global4[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.b, arg_0.x, 1u), 23u)]), false, any(select(select(global3.e, vec4<bool>(false, global3.e.x, global3.d, false), global3.e), !vec4<bool>(global3.e.x, var_2.x, false, var_2.x), vec4<bool>(var_2.x, global3.d, global3.e.x, global3.d)))));
    return Struct_4(global3.a, global0[_wgslsmith_index_u32(31332u, 16u)], ~select(reverseBits(vec4<i32>(global3.a.a, var_3.a.a, u_input.a.x, var_3.a.a)), ~_wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, global3.a.a, -35126i, var_3.a.a), var_3.c, var_3.c), any(global3.e.zxw) || !var_3.e.x), false, select(global3.e, global3.e, vec4<bool>(false, ~arg_0.x < ~arg_0.x, var_3.b < 625f, false)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 16>();
    global3 = func_1(_wgslsmith_sub_vec2_u32(vec2<u32>(1u, ~firstTrailingBit(4294967295u)), vec2<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 0u), vec2<u32>(u_input.b, u_input.b)), 4294967295u)));
    global2 = u_input.a.x;
    var var_0 = reverseBits(u_input.b);
    global1 = !(7099u > _wgslsmith_mult_u32(4294967295u >> ((0u ^ u_input.b) % 32u), ~64361u));
    var var_1 = global4[_wgslsmith_index_u32(~(~u_input.b), 23u)];
    let var_2 = ~(u_input.b >> (16537u % 32u));
    var_1 = Struct_3(var_1.b, 4294967295u);
    let var_3 = _wgslsmith_div_u32(49063u, 74309u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec2_u32(~(vec2<u32>(var_3, u_input.b) ^ (vec2<u32>(45157u, u_input.b) | vec2<u32>(0u, 0u))), vec2<u32>(var_2, abs(_wgslsmith_add_u32(var_2, 26920u)))));
}

