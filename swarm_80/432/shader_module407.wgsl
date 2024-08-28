struct Struct_1 {
    a: vec2<bool>,
    b: vec3<i32>,
    c: vec2<bool>,
}

struct Struct_2 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 4> = array<bool, 4>(true, false, true, true);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> bool {
    let var_0 = global0[_wgslsmith_index_u32(_wgslsmith_add_u32(max(13357u, u_input.a), ~_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(1u, u_input.a), _wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, 54645u), vec2<u32>(0u, u_input.a))), firstTrailingBit(~vec2<u32>(20987u, u_input.a)))), 4u)];
    global0 = array<bool, 4>();
    let var_1 = vec2<bool>(!(~u_input.a < ~8844u), global0[_wgslsmith_index_u32(max(43024u, abs(~u_input.a)) >> (18393u % 32u), 4u)]);
    return 8428u < ~abs(_wgslsmith_div_u32(~u_input.a, ~u_input.a));
}

fn func_2() -> Struct_1 {
    var var_0 = select(!(!(!(!vec2<bool>(false, global0[_wgslsmith_index_u32(0u, 4u)])))), !vec2<bool>(all(vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.a, 4u)], false, true)) | true, !func_3()), global0[_wgslsmith_index_u32(firstLeadingBit(u_input.a), 4u)]);
    global0 = array<bool, 4>();
    let var_1 = 3992u;
    var var_2 = u_input.c.x;
    let var_3 = reverseBits(vec4<i32>(-max(reverseBits(-2147483647i), abs(u_input.b)), u_input.b & _wgslsmith_dot_vec2_i32(u_input.c.xy, vec2<i32>(-2147483647i, 1i)), _wgslsmith_dot_vec4_i32(-_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b, -5461i, u_input.b, 1i), vec4<i32>(-2147483647i, u_input.c.x, -63841i, u_input.c.x)), ~(vec4<i32>(u_input.c.x, u_input.b, u_input.c.x, u_input.b) & u_input.c)), 1i));
    return Struct_1(select(!vec2<bool>(global0[_wgslsmith_index_u32(~1u, 4u)], true), select(!select(vec2<bool>(global0[_wgslsmith_index_u32(u_input.a, 4u)], var_0.x), vec2<bool>(true, true), var_0.x), select(!vec2<bool>(global0[_wgslsmith_index_u32(u_input.a, 4u)], var_0.x), !vec2<bool>(var_0.x, var_0.x), true), vec2<bool>(all(vec3<bool>(true, global0[_wgslsmith_index_u32(var_1, 4u)], global0[_wgslsmith_index_u32(0u, 4u)])), var_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(585f - 1000f) + _wgslsmith_f_op_f32(floor(1000f))) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1009f))), vec3<i32>(-firstTrailingBit(2147483647i), var_3.x, _wgslsmith_sub_i32(i32(-1i) * -2147483647i, u_input.b)), !(!(!vec2<bool>(var_0.x, global0[_wgslsmith_index_u32(u_input.a, 4u)]))));
}

fn func_4(arg_0: vec4<i32>, arg_1: vec3<f32>, arg_2: Struct_1) -> Struct_1 {
    global0 = array<bool, 4>();
    var var_0 = !select(vec4<bool>(false, u_input.a >= select(1u, 116710u, global0[_wgslsmith_index_u32(u_input.a, 4u)]), true, arg_2.a.x), select(!(!vec4<bool>(false, arg_2.a.x, false, true)), vec4<bool>(false, func_3(), true, arg_2.a.x), global0[_wgslsmith_index_u32(u_input.a, 4u)]), select(select(select(vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 4u)], arg_2.c.x, global0[_wgslsmith_index_u32(u_input.a, 4u)], false), vec4<bool>(true, global0[_wgslsmith_index_u32(20663u, 4u)], false, arg_2.a.x), false), vec4<bool>(true, global0[_wgslsmith_index_u32(0u, 4u)], true, global0[_wgslsmith_index_u32(88101u, 4u)]), vec4<bool>(arg_2.c.x, true, false, arg_2.a.x)), !select(vec4<bool>(arg_2.c.x, true, true, global0[_wgslsmith_index_u32(1u, 4u)]), vec4<bool>(arg_2.a.x, global0[_wgslsmith_index_u32(u_input.a, 4u)], global0[_wgslsmith_index_u32(4294967295u, 4u)], global0[_wgslsmith_index_u32(46417u, 4u)]), false), vec4<bool>(true, !arg_2.c.x, all(vec2<bool>(false, false)), arg_2.a.x)));
    let var_1 = Struct_2(-22768i & arg_0.x);
    let var_2 = arg_1.yx;
    let var_3 = -vec4<i32>(reverseBits(u_input.b), arg_0.x, 0i, reverseBits(~_wgslsmith_sub_i32(var_1.a, arg_2.b.x)));
    return Struct_1(vec2<bool>(u_input.a >= 0u, var_0.x), abs(_wgslsmith_mod_vec3_i32(u_input.c.wxx, var_3.ywx)), var_0.wz);
}

fn func_5(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1, arg_3: f32) -> vec4<bool> {
    var var_0 = arg_1.c;
    var var_1 = max(28096u, 4294967295u);
    global0 = array<bool, 4>();
    let var_2 = Struct_2((i32(-1i) * -(~(-1i))) << (u_input.a % 32u));
    var var_3 = arg_1.b.x;
    return !vec4<bool>(true, any(!select(vec3<bool>(true, var_0.x, arg_2.a.x), vec3<bool>(global0[_wgslsmith_index_u32(0u, 4u)], false, arg_1.a.x), vec3<bool>(global0[_wgslsmith_index_u32(u_input.a, 4u)], true, global0[_wgslsmith_index_u32(92584u, 4u)]))), false, any(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, var_0.x, arg_2.a.x), select(var_0.x, true, arg_2.a.x))));
}

fn func_1(arg_0: u32, arg_1: Struct_2) -> i32 {
    global0 = array<bool, 4>();
    let var_0 = vec4<bool>(global0[_wgslsmith_index_u32(4294967295u >> (_wgslsmith_dot_vec3_u32(min(select(vec3<u32>(21003u, arg_0, arg_0), vec3<u32>(0u, 22807u, arg_0), true), vec3<u32>(33031u, 1u, 22999u)), vec3<u32>(~0u, ~4294967295u, arg_0)) % 32u), 4u)], global0[_wgslsmith_index_u32(0u, 4u)], any(func_5(_wgslsmith_f_op_f32(f32(-1f) * -963f), func_4(vec4<i32>(u_input.c.x, -20968i, arg_1.a, -15279i), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1441f, 527f, -303f)), func_2()), Struct_1(select(vec2<bool>(global0[_wgslsmith_index_u32(u_input.a, 4u)], true), vec2<bool>(global0[_wgslsmith_index_u32(u_input.a, 4u)], global0[_wgslsmith_index_u32(arg_0, 4u)]), global0[_wgslsmith_index_u32(0u, 4u)]), -u_input.c.yyx, !vec2<bool>(global0[_wgslsmith_index_u32(3705u, 4u)], false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-334f + 1052f)))), (u_input.b >> (~select(71146u, arg_0, global0[_wgslsmith_index_u32(arg_0, 4u)]) % 32u)) > ~(-arg_1.a));
    global0 = array<bool, 4>();
    return _wgslsmith_clamp_i32(arg_1.a, -1i, arg_1.a) >> (~(~arg_0) % 32u);
}

fn func_6(arg_0: i32) -> Struct_2 {
    let var_0 = u_input.c.xzw;
    var var_1 = true;
    global0 = array<bool, 4>();
    let var_2 = !(!vec4<bool>(all(select(vec2<bool>(global0[_wgslsmith_index_u32(u_input.a, 4u)], false), vec2<bool>(false, false), vec2<bool>(global0[_wgslsmith_index_u32(64364u, 4u)], global0[_wgslsmith_index_u32(109948u, 4u)]))), _wgslsmith_div_f32(560f, 1000f) != _wgslsmith_f_op_f32(sign(-567f)), false, any(select(vec2<bool>(global0[_wgslsmith_index_u32(u_input.a, 4u)], global0[_wgslsmith_index_u32(u_input.a, 4u)]), vec2<bool>(true, global0[_wgslsmith_index_u32(52321u, 4u)]), vec2<bool>(global0[_wgslsmith_index_u32(u_input.a, 4u)], global0[_wgslsmith_index_u32(u_input.a, 4u)])))));
    var_1 = var_2.x | false;
    return Struct_2(_wgslsmith_sub_i32(-11173i, arg_0));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 4>();
    let var_0 = vec4<i32>(abs(2147483647i), u_input.c.x, 0i, u_input.c.x);
    let var_1 = Struct_2(~(-_wgslsmith_clamp_i32(var_0.x, var_0.x, 1i)));
    global0 = array<bool, 4>();
    let var_2 = func_6(~(-func_1(u_input.a, Struct_2(u_input.b)) | -2147483647i));
    let var_3 = ~vec4<i32>(-(~_wgslsmith_div_i32(var_2.a, -16631i)), firstTrailingBit(2147483647i), _wgslsmith_sub_i32(~1i, u_input.c.x), min(-(~var_1.a), var_1.a));
    global0 = array<bool, 4>();
    global0 = array<bool, 4>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, -(vec4<i32>(var_2.a << (1505u % 32u), firstTrailingBit(1283i), var_1.a, i32(-1i) * -32i) ^ vec4<i32>(1i, var_0.x, 1i, ~2147483647i)));
}

