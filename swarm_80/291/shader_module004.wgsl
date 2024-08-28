struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec2<u32>,
    c: u32,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 29> = array<f32, 29>(-953f, 1635f, -1371f, -1590f, 614f, -513f, 283f, -244f, -937f, -1000f, 110f, 603f, -474f, -579f, 907f, 1153f, 137f, 1123f, -429f, 1037f, 396f, 159f, 534f, 464f, 1585f, 1000f, 898f, 1286f, -1886f);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> bool {
    global0 = array<f32, 29>();
    let var_0 = ~(~abs(_wgslsmith_mod_i32(u_input.b.x, 2147483647i))) >= -1i;
    let var_1 = u_input.a;
    global0 = array<f32, 29>();
    global0 = array<f32, 29>();
    return any(!select(vec2<bool>(true, true), vec2<bool>(all(vec4<bool>(true, false, var_0, var_0)), false), all(select(vec2<bool>(var_0, var_0), vec2<bool>(true, var_0), var_0))));
}

fn func_2(arg_0: u32, arg_1: vec3<f32>, arg_2: u32) -> Struct_2 {
    global0 = array<f32, 29>();
    let var_0 = !func_3();
    var var_1 = Struct_3(select(u_input.b.x << (_wgslsmith_add_u32(arg_2, select(arg_0, arg_0, var_0)) % 32u), i32(-1i) * -_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, u_input.b.x), vec2<i32>(-338i, -2147483647i)), !(func_3() && var_0)), ~select(_wgslsmith_clamp_vec2_u32(vec2<u32>(arg_0, 34136u), vec2<u32>(u_input.a, 1u), vec2<u32>(u_input.a, arg_0)) ^ _wgslsmith_sub_vec2_u32(vec2<u32>(arg_0, 1u), vec2<u32>(44084u, 55900u)), reverseBits(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a, arg_2), vec2<u32>(u_input.a, u_input.a))), vec2<bool>(true, true)), 7659u, !(!all(vec2<bool>(true, var_0))) || !(var_0 & (u_input.b.x < -38679i)));
    var var_2 = max(1i, u_input.b.x) ^ ~u_input.b.x;
    var var_3 = vec3<u32>(u_input.a, _wgslsmith_mod_u32(_wgslsmith_sub_u32(1u, ~arg_0), ~min(6777u, 0u)), ~var_1.c & arg_0) >> ((reverseBits(_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, u_input.a, u_input.a), vec3<u32>(0u, 1u, 4294967295u) >> (vec3<u32>(46236u, arg_0, 50573u) % vec3<u32>(32u)))) >> (_wgslsmith_div_vec3_u32(select(vec3<u32>(var_1.c, var_1.b.x, 4294967295u) ^ vec3<u32>(arg_2, arg_0, 0u), ~vec3<u32>(1u, arg_2, arg_0), !vec3<bool>(true, var_1.d, true)), abs(vec3<u32>(arg_0, arg_2, u_input.a)) & ~vec3<u32>(arg_2, u_input.a, 43277u)) % vec3<u32>(32u))) % vec3<u32>(32u));
    return Struct_2(Struct_1(~select(~vec4<u32>(0u, 29526u, 1508u, arg_0), ~vec4<u32>(arg_0, arg_0, arg_0, var_3.x), vec4<bool>(var_1.d, var_1.d, var_1.d, false))));
}

fn func_1(arg_0: f32, arg_1: vec4<f32>, arg_2: u32, arg_3: i32) -> Struct_2 {
    var var_0 = func_2(arg_2, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, arg_0, global0[_wgslsmith_index_u32(arg_2, 29u)]))))) * _wgslsmith_f_op_vec3_f32(-arg_1.wyz)), _wgslsmith_mult_u32(u_input.a, ~121424u));
    let var_1 = Struct_3((arg_3 ^ -(~1i)) | arg_3, ~vec2<u32>(func_2(arg_2 << (arg_2 % 32u), _wgslsmith_f_op_vec3_f32(vec3<f32>(451f, 1039f, -1000f) - arg_1.xyz), firstTrailingBit(89659u)).a.a.x, 1u), ~0u, true);
    global0 = array<f32, 29>();
    let var_2 = Struct_3(_wgslsmith_sub_i32(30230i, -arg_3), func_2(42768u, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_1.xyz) - _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(arg_1.wzw - arg_1.xzw)))), u_input.a).a.a.zx, u_input.a, any(select(select(vec4<bool>(var_1.d, var_1.d, false, var_1.d), vec4<bool>(var_1.d, false, var_1.d, var_1.d), true), vec4<bool>(var_1.d, var_1.d, var_1.d, true), select(vec4<bool>(true, true, var_1.d, var_1.d), vec4<bool>(true, var_1.d, false, var_1.d), vec4<bool>(var_1.d, false, true, false)))) && all(select(vec2<bool>(false, false), select(vec2<bool>(true, false), vec2<bool>(var_1.d, false), false), !vec2<bool>(false, var_1.d))));
    var var_3 = var_2.b.x;
    return Struct_2(var_0.a);
}

fn func_4(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: i32, arg_3: Struct_1) -> StorageBuffer {
    global0 = array<f32, 29>();
    var var_0 = Struct_1(vec4<u32>(0u, ~func_2(u_input.a, vec3<f32>(global0[_wgslsmith_index_u32(3380u, 29u)], -1348f, -833f), 74938u).a.a.x & abs(4294967295u | u_input.a), abs(~arg_0.a.a.x), 51843u));
    let var_1 = vec4<u32>(arg_3.a.x, arg_0.a.a.x & (_wgslsmith_add_u32(~arg_3.a.x, 9681u ^ arg_3.a.x) ^ select(47832u, arg_0.a.a.x, any(vec2<bool>(false, true)))), 1u, var_0.a.x);
    let var_2 = !((-1i ^ (_wgslsmith_sub_i32(0i, arg_1.x) << (~var_0.a.x % 32u))) != u_input.b.x);
    var var_3 = !vec2<bool>(select(false, true, true), true);
    return StorageBuffer(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1000f, global0[_wgslsmith_index_u32(63944u, 29u)], 715f), vec3<f32>(global0[_wgslsmith_index_u32(arg_3.a.x, 29u)], global0[_wgslsmith_index_u32(1u, 29u)], 3378f), any(vec4<bool>(var_3.x, var_2, var_3.x, var_3.x))))))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4(func_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(0u, 29u)]))), 942f)), vec4<f32>(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 14042u, u_input.a, 0u), ~vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)), 29u)], 1046f, 1233f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2950f - 929f) * _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(10292u, 29u)] + global0[_wgslsmith_index_u32(u_input.a, 29u)]))), ~u_input.a, -1i), vec4<i32>(-(-u_input.b.x ^ (u_input.b.x ^ u_input.b.x)), -(_wgslsmith_mod_i32(-2147483647i, 17486i) << (func_1(2100f, vec4<f32>(global0[_wgslsmith_index_u32(u_input.a, 29u)], 438f, global0[_wgslsmith_index_u32(u_input.a, 29u)], 1618f), 4294967295u, u_input.b.x).a.a.x % 32u)), -(~_wgslsmith_div_i32(u_input.b.x, u_input.b.x)), u_input.b.x), u_input.b.x, Struct_1(vec4<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(11245u, 4294967295u, u_input.a, u_input.a), firstTrailingBit(vec4<u32>(0u, u_input.a, 0u, 15816u))), u_input.a & ~4294967295u, u_input.a & 1u, ~(~u_input.a))));
}

