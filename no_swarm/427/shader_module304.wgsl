struct Struct_1 {
    a: f32,
    b: vec4<f32>,
    c: vec3<i32>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_2,
    d: Struct_2,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
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

var<private> global0: array<f32, 10> = array<f32, 10>(1654f, 1000f, -387f, 1000f, -853f, 268f, -1556f, -1149f, -1724f, -306f);

var<private> global1: array<Struct_2, 32>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_2, arg_2: i32, arg_3: u32) -> Struct_2 {
    global0 = array<f32, 10>();
    var var_0 = Struct_1(arg_0.a.a, _wgslsmith_f_op_vec4_f32(trunc(arg_0.a.b)), ~(~(_wgslsmith_mod_vec3_i32(vec3<i32>(1i, u_input.b.x, arg_0.a.c.x), vec3<i32>(2147483647i, arg_0.a.c.x, -1i)) | -vec3<i32>(arg_0.a.c.x, arg_1.a.c.x, arg_2))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a.a * global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, arg_3), vec2<u32>(1u, 50258u)), 10u)])));
    var var_1 = vec3<bool>(true, any(!(!select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true)))), u_input.a >= select(~u_input.a, 4294967295u, true));
    var var_2 = Struct_2(Struct_1(-1169f, _wgslsmith_f_op_vec4_f32(arg_1.a.b - arg_1.a.b), arg_0.a.c, 539f));
    global1 = array<Struct_2, 32>();
    return arg_0;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_3) -> vec2<i32> {
    global0 = array<f32, 10>();
    global1 = array<Struct_2, 32>();
    var var_0 = _wgslsmith_sub_vec4_u32(reverseBits(select(vec4<u32>(arg_1.e, ~13616u, 4294967295u, abs(22419u)), _wgslsmith_mult_vec4_u32(~vec4<u32>(0u, arg_1.e, arg_1.e, 1u), vec4<u32>(26301u, 45330u, 0u, arg_1.e)), true)), vec4<u32>(~59183u, 30797u, abs(abs(_wgslsmith_mult_u32(0u, arg_1.e))), max(1u, ~18429u)));
    var var_1 = func_2(func_2(Struct_2(Struct_1(_wgslsmith_f_op_f32(-arg_1.d.a.d), vec4<f32>(-928f, arg_0.d, 1000f, arg_0.d), ~arg_0.c, 1571f)), Struct_2(arg_0), -(~(-2147483647i)), ~_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 10670u) << (var_0.yw % vec2<u32>(32u)), vec2<u32>(arg_1.e, 142116u))), func_2(global1[_wgslsmith_index_u32(~(var_0.x ^ _wgslsmith_mod_u32(4294967295u, arg_1.e)), 32u)], arg_1.a, arg_0.c.x, var_0.x), ~u_input.b.x, select(u_input.a, _wgslsmith_mod_u32(_wgslsmith_mult_u32(arg_1.e, 1u), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 74861u, 4294967295u), var_0.xwy)) | arg_1.e, any(vec3<bool>(true, true, true)) && any(vec4<bool>(true, true, true, true)))).a;
    var var_2 = vec4<i32>(abs(0i), _wgslsmith_add_i32(2557i, _wgslsmith_mult_i32(i32(-1i) * -2147483647i, firstLeadingBit(1i))), _wgslsmith_clamp_i32(-9988i, _wgslsmith_dot_vec4_i32(u_input.b, ~u_input.b), 27273i), -_wgslsmith_dot_vec4_i32(u_input.b, _wgslsmith_mod_vec4_i32(vec4<i32>(-41489i, var_1.c.x, -2147483647i, arg_1.c.a.c.x), -vec4<i32>(u_input.b.x, -49210i, 1i, arg_0.c.x))));
    return vec2<i32>(min(~u_input.b.x, max(abs(~arg_1.c.a.c.x), ~(-36881i))), _wgslsmith_mod_i32(_wgslsmith_mod_i32(select(~(-1i), i32(-1i) * -25009i, true), 7924i), abs(u_input.b.x)));
}

fn func_1() -> StorageBuffer {
    var var_0 = _wgslsmith_clamp_vec2_i32(~func_3(Struct_1(global0[_wgslsmith_index_u32(u_input.a & 35751u, 10u)], _wgslsmith_f_op_vec4_f32(vec4<f32>(-1433f, global0[_wgslsmith_index_u32(u_input.a, 10u)], -822f, 391f) - vec4<f32>(global0[_wgslsmith_index_u32(u_input.a, 10u)], global0[_wgslsmith_index_u32(546u, 10u)], global0[_wgslsmith_index_u32(u_input.a, 10u)], -168f)), ~vec3<i32>(0i, u_input.b.x, 1i), _wgslsmith_f_op_f32(-893f * global0[_wgslsmith_index_u32(0u, 10u)])), Struct_3(func_2(Struct_2(Struct_1(594f, vec4<f32>(1000f, 504f, 389f, global0[_wgslsmith_index_u32(u_input.a, 10u)]), vec3<i32>(7521i, u_input.b.x, u_input.b.x), global0[_wgslsmith_index_u32(0u, 10u)])), global1[_wgslsmith_index_u32(64821u, 32u)], 2147483647i, u_input.a), Struct_2(Struct_1(512f, vec4<f32>(-768f, -545f, global0[_wgslsmith_index_u32(0u, 10u)], global0[_wgslsmith_index_u32(u_input.a, 10u)]), vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x), -148f)), global1[_wgslsmith_index_u32(1u, 32u)], global1[_wgslsmith_index_u32(49178u | u_input.a, 32u)], ~0u)), -vec2<i32>(~(-33685i), _wgslsmith_dot_vec4_i32(u_input.b ^ u_input.b, u_input.b)), u_input.b.wz);
    let var_1 = u_input.b;
    global0 = array<f32, 10>();
    var var_2 = !any(vec2<bool>(true, (var_1.x << (4294967295u % 32u)) <= (i32(-1i) * -51281i)));
    var var_3 = max(u_input.a, ~4294967295u);
    return StorageBuffer(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(u_input.a, 10u)])), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(52613u, 10u)]), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.a, 10u)] + 1085f)) - vec3<f32>(1755f, -171f, -223f)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~vec2<u32>(u_input.a, u_input.a);
    let x = u_input.a;
    s_output = func_1();
}

