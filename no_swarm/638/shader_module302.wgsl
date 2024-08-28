struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 23>;

var<private> global1: array<f32, 23> = array<f32, 23>(-2091f, 242f, -1000f, 895f, -1000f, -499f, -1887f, 1731f, 1121f, -583f, 148f, -1437f, -1351f, -1000f, -1162f, -143f, 1946f, 479f, 307f, 502f, -726f, 1000f, 106f);

var<private> global2: bool;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec2<i32>) -> u32 {
    global1 = array<f32, 23>();
    global0 = array<Struct_1, 23>();
    global0 = array<Struct_1, 23>();
    global0 = array<Struct_1, 23>();
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(-292f, global1[_wgslsmith_index_u32(1u, 23u)], -1054f, global1[_wgslsmith_index_u32(0u, 23u)]) - vec4<f32>(-821f, 1939f, 1605f, -829f)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-368f, global1[_wgslsmith_index_u32(u_input.b, 23u)], -146f, -902f) + vec4<f32>(1000f, global1[_wgslsmith_index_u32(10684u, 23u)], 1703f, -967f)) - _wgslsmith_f_op_vec4_f32(max(vec4<f32>(global1[_wgslsmith_index_u32(40506u, 23u)], global1[_wgslsmith_index_u32(u_input.a.x, 23u)], 784f, 2026f), vec4<f32>(global1[_wgslsmith_index_u32(4294967295u, 23u)], global1[_wgslsmith_index_u32(u_input.a.x, 23u)], -1093f, -838f))))))));
    return u_input.a.x;
}

fn func_2() -> Struct_1 {
    var var_0 = any(vec4<bool>((u_input.c | ~u_input.c) != ~func_3(vec2<i32>(u_input.d.x, u_input.d.x)), all(!select(vec2<bool>(true, true), vec2<bool>(true, false), false)), _wgslsmith_div_i32(i32(-1i) * -2147483647i, reverseBits(-10651i)) <= u_input.d.x, select(~u_input.d.x, 0i ^ u_input.d.x, any(vec2<bool>(false, true))) >= 0i));
    let var_1 = global0[_wgslsmith_index_u32(u_input.b, 23u)];
    global2 = all(select(vec4<bool>(!all(vec4<bool>(false, false, var_1.a, var_1.a)), var_1.a, var_1.a, false), vec4<bool>(true, !(u_input.d.x <= 29931i), (var_1.a & var_1.a) && all(vec3<bool>(var_1.a, false, var_1.a)), true), any(select(select(vec3<bool>(false, var_1.a, false), vec3<bool>(var_1.a, var_1.a, var_1.a), vec3<bool>(var_1.a, true, var_1.a)), select(vec3<bool>(var_1.a, var_1.a, var_1.a), vec3<bool>(var_1.a, var_1.a, false), true), select(vec3<bool>(false, var_1.a, var_1.a), vec3<bool>(var_1.a, var_1.a, true), true)))));
    var_0 = _wgslsmith_dot_vec4_i32(select(-_wgslsmith_mod_vec4_i32(u_input.d, vec4<i32>(8778i, -19955i, -2147483647i, -6665i)), u_input.d, false), u_input.d) >= (u_input.d.x >> (1940u % 32u));
    var var_2 = _wgslsmith_dot_vec4_i32(u_input.d, u_input.d);
    return global0[_wgslsmith_index_u32(u_input.c, 23u)];
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<bool>) -> Struct_1 {
    var var_0 = abs(max(vec3<i32>(~abs(u_input.d.x), abs(_wgslsmith_div_i32(u_input.d.x, u_input.d.x)), -26890i), select(u_input.d.zzw << (vec3<u32>(1u, u_input.a.x, u_input.b) % vec3<u32>(32u)), vec3<i32>(_wgslsmith_dot_vec4_i32(u_input.d, vec4<i32>(u_input.d.x, -34739i, u_input.d.x, 38340i)), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d.x, u_input.d.x, 60876i, u_input.d.x), vec4<i32>(-2147483647i, -30268i, u_input.d.x, 2147483647i)), u_input.d.x ^ -2147483647i), arg_2)));
    let var_1 = 911f;
    let var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(550f, 245f, _wgslsmith_f_op_f32(266f - _wgslsmith_f_op_f32(-398f * _wgslsmith_f_op_f32(ceil(-2006f))))) - _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(506f, global1[_wgslsmith_index_u32(u_input.a.x, 23u)], -336f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(276f, 1043f, global1[_wgslsmith_index_u32(37724u, 23u)]) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, -211f, -490f))))))));
    let var_3 = false;
    var var_4 = vec2<i32>(1i, -firstLeadingBit(var_0.x));
    return func_2();
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    var var_0 = arg_0;
    global0 = array<Struct_1, 23>();
    let var_1 = Struct_1(arg_0.a);
    let var_2 = global1[_wgslsmith_index_u32(0u, 23u)];
    var_0 = global0[_wgslsmith_index_u32(u_input.c, 23u)];
    return arg_0;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32) -> vec4<i32> {
    let var_0 = ~u_input.a;
    var var_1 = func_5(func_4(func_2(), Struct_1(any(select(vec2<bool>(arg_1.a, true), vec2<bool>(arg_1.a, false), vec2<bool>(arg_1.a, false)))), vec3<bool>(!(false & arg_1.a), true, (arg_1.a && true) && (arg_1.a && arg_1.a))));
    let var_2 = vec2<u32>(_wgslsmith_mult_u32(firstTrailingBit(30330u), 31059u), u_input.b);
    var_1 = Struct_1(any(select(select(!vec4<bool>(var_1.a, arg_1.a, true, true), !vec4<bool>(var_1.a, true, false, arg_1.a), !vec4<bool>(arg_0.a, true, false, true)), vec4<bool>(true, arg_1.a, false, all(vec2<bool>(arg_1.a, false))), true)));
    var_1 = arg_1;
    return ~firstTrailingBit(select(vec4<i32>(abs(u_input.d.x), _wgslsmith_clamp_i32(arg_2, arg_2, 5946i), arg_2, _wgslsmith_sub_i32(0i, arg_2)), vec4<i32>(12491i, arg_2, -1i | u_input.d.x, -48795i), select(vec4<bool>(arg_0.a, arg_0.a, false, false), !vec4<bool>(arg_1.a, true, false, true), vec4<bool>(false, var_1.a, arg_1.a, arg_1.a))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = ~(1u | ~_wgslsmith_mult_u32(u_input.c, u_input.a.x)) < (firstTrailingBit(u_input.a.x) ^ countOneBits(1u));
    var var_0 = any(select(!select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true)), vec2<bool>(true, true), all(vec4<bool>(true, true, true, true))));
    let var_1 = Struct_1(true);
    var var_2 = global0[_wgslsmith_index_u32(~(_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(u_input.a.zw, u_input.a.zy), _wgslsmith_div_vec2_u32(vec2<u32>(u_input.c, 4294967295u), u_input.a.yw)) & 16028u) << (9539u % 32u), 23u)];
    let var_3 = ~(-reverseBits(func_1(Struct_1(false), global0[_wgslsmith_index_u32(u_input.c, 23u)], u_input.d.x)));
    let x = u_input.a;
    s_output = StorageBuffer(345f, ~_wgslsmith_sub_vec4_u32(u_input.a, u_input.a));
}

