struct Struct_1 {
    a: bool,
    b: bool,
}

struct Struct_2 {
    a: i32,
    b: vec3<u32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 32>;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> vec3<u32> {
    let var_0 = ~22223u;
    var var_1 = Struct_2(_wgslsmith_dot_vec2_i32(u_input.e.xz, -(countOneBits(vec2<i32>(u_input.c.x, -4249i)) | vec2<i32>(-29427i, u_input.d))), vec3<u32>((1u >> ((var_0 ^ 98610u) % 32u)) & _wgslsmith_dot_vec3_u32(vec3<u32>(var_0, var_0, 1u), ~vec3<u32>(u_input.a, u_input.a, 58477u)), var_0, ~abs(_wgslsmith_div_u32(4294967295u, var_0))), Struct_1(true, false));
    var var_2 = -abs(~vec3<i32>(-34135i, u_input.e.x, u_input.d) ^ vec3<i32>(27297i, _wgslsmith_div_i32(u_input.c.x, 25086i), 2147483647i));
    let var_3 = Struct_2(var_2.x, firstTrailingBit(var_1.b), Struct_1(!var_1.c.b, any(select(select(vec2<bool>(var_1.c.b, var_1.c.a), vec2<bool>(var_1.c.a, false), vec2<bool>(var_1.c.a, var_1.c.b)), vec2<bool>(true, true), !var_1.c.b))));
    return var_1.b | var_1.b;
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_1(_wgslsmith_dot_vec4_i32(-vec4<i32>(0i, u_input.c.x, -39914i, u_input.e.x), select(~vec4<i32>(50481i, u_input.c.x, -2147483647i, u_input.c.x), ~vec4<i32>(u_input.e.x, u_input.e.x, u_input.c.x, u_input.e.x), any(vec3<bool>(false, false, false)))) <= u_input.d, true);
    let var_1 = _wgslsmith_mult_vec2_u32(~_wgslsmith_sub_vec2_u32(_wgslsmith_mult_vec2_u32(select(vec2<u32>(39439u, 56426u), vec2<u32>(28973u, u_input.a), false), ~vec2<u32>(4294967295u, 35658u)), firstTrailingBit(~vec2<u32>(9457u, 14542u))), vec2<u32>(~countOneBits(~u_input.a), u_input.b));
    let var_2 = global0[_wgslsmith_index_u32(~select(1u, min(1u, _wgslsmith_add_u32(0u & u_input.b, 64083u)), false), 32u)];
    let var_3 = vec2<i32>(_wgslsmith_mult_i32(~(~_wgslsmith_div_i32(22141i, -2147483647i)), -38463i), u_input.c.x);
    let var_4 = _wgslsmith_dot_vec3_i32(u_input.e, vec3<i32>(u_input.c.x, abs(_wgslsmith_div_i32(_wgslsmith_add_i32(u_input.c.x, 32963i), ~21537i)), -1i));
    return Struct_2(0i, func_3(), var_0);
}

fn func_1(arg_0: i32) -> Struct_2 {
    var var_0 = 1000f;
    var var_1 = func_2();
    let var_2 = global0[_wgslsmith_index_u32(u_input.b, 32u)];
    let var_3 = ~((select(var_1.a, 46771i, var_2.b) | ~(-41020i)) >> (u_input.a % 32u)) ^ u_input.d;
    global0 = array<Struct_1, 32>();
    return func_2();
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: Struct_2) -> Struct_1 {
    global0 = array<Struct_1, 32>();
    global0 = array<Struct_1, 32>();
    let var_0 = _wgslsmith_clamp_vec2_i32(_wgslsmith_clamp_vec2_i32(_wgslsmith_sub_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(arg_2.a, 0i) & u_input.e.zx, u_input.e.yy), vec2<i32>(~0i, -u_input.d)), u_input.e.yz, ~u_input.e.yz), vec2<i32>(-_wgslsmith_mult_i32(35416i, u_input.c.x), _wgslsmith_add_i32(-u_input.d, reverseBits(0i))) & vec2<i32>(2147483647i, _wgslsmith_dot_vec2_i32(reverseBits(u_input.e.yz), min(u_input.c, vec2<i32>(arg_1.a, u_input.c.x)))), -_wgslsmith_div_vec2_i32(u_input.c, -vec2<i32>(-1i, arg_1.a)));
    let var_1 = vec4<bool>(any(select(select(select(vec2<bool>(false, arg_2.c.b), vec2<bool>(false, arg_1.c.b), vec2<bool>(true, false)), select(vec2<bool>(arg_1.c.a, true), vec2<bool>(arg_1.c.a, true), vec2<bool>(true, arg_1.c.b)), vec2<bool>(arg_1.c.a, arg_2.c.b)), !select(vec2<bool>(false, true), vec2<bool>(arg_2.c.b, arg_2.c.b), vec2<bool>(arg_1.c.a, true)), !any(vec2<bool>(arg_1.c.a, false)))), false, arg_2.c.a, true);
    var var_2 = _wgslsmith_dot_vec3_u32(arg_0.zyy, select(firstLeadingBit(~arg_0.zxw), ~arg_0.zwz, all(select(var_1.zxz, vec3<bool>(false, false, arg_2.c.b), vec3<bool>(true, arg_1.c.b, var_1.x))))) >> (~(~(~(~46312u))) % 32u);
    return func_2().c;
}

fn func_5(arg_0: Struct_2, arg_1: i32, arg_2: u32, arg_3: i32) -> StorageBuffer {
    global0 = array<Struct_1, 32>();
    var var_0 = vec2<u32>(arg_0.b.x, 1u);
    var var_1 = ~arg_0.b.x;
    return StorageBuffer(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-668f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -472f))), _wgslsmith_f_op_f32(-1583f * -495f), -1709f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-761f * 855f), -522f, -1567f, -662f)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 32>();
    let x = u_input.a;
    s_output = func_5(Struct_2(-2147483647i, ~vec3<u32>(firstTrailingBit(10672u), u_input.a, abs(1u)), func_4(abs(vec4<u32>(73040u, 4294967295u, u_input.a, 707u)), func_1(-u_input.e.x), Struct_2(-u_input.d, _wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, u_input.b, 28000u), vec3<u32>(u_input.b, u_input.b, 27287u)), global0[_wgslsmith_index_u32(1u, 32u)]))), select(reverseBits(-1i), 1i, !(u_input.b < (u_input.b ^ 1u))), u_input.a, _wgslsmith_dot_vec2_i32(max(firstLeadingBit(vec2<i32>(2147483647i, 0i)), u_input.c) & vec2<i32>(u_input.e.x, _wgslsmith_add_i32(u_input.c.x, -2147483647i)), u_input.e.yy));
}

