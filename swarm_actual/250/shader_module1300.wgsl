struct Struct_1 {
    a: i32,
    b: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 19> = array<Struct_1, 19>(Struct_1(2147483647i, 1i), Struct_1(39711i, i32(-2147483648)), Struct_1(45164i, -38964i), Struct_1(50218i, -21763i), Struct_1(i32(-2147483648), -1i), Struct_1(-1i, 26553i), Struct_1(36606i, -7529i), Struct_1(1i, -10519i), Struct_1(i32(-2147483648), 54297i), Struct_1(-18883i, 21308i), Struct_1(1i, 0i), Struct_1(2147483647i, -1i), Struct_1(2209i, 0i), Struct_1(-21729i, i32(-2147483648)), Struct_1(-20361i, -7952i), Struct_1(2147483647i, 0i), Struct_1(0i, i32(-2147483648)), Struct_1(3698i, 2147483647i), Struct_1(31907i, -26317i));

var<private> global1: array<vec4<bool>, 2> = array<vec4<bool>, 2>(vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, false));

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_1(arg_0: u32, arg_1: vec4<u32>) -> Struct_1 {
    let var_0 = !any(vec2<bool>(select(true, true, true) | true, true));
    var var_1 = (-14349i ^ min(_wgslsmith_mod_i32(-1i ^ u_input.d, 49199i), 16654i << (arg_0 % 32u))) | firstTrailingBit(u_input.b.x);
    var var_2 = reverseBits(_wgslsmith_mult_u32(4294967295u, 0u));
    var_1 = _wgslsmith_dot_vec4_i32(vec4<i32>(-17568i, 1i, u_input.b.x ^ -u_input.d, countOneBits(2147483647i)), u_input.a) & 0i;
    var var_3 = true;
    return global0[_wgslsmith_index_u32(62683u << (select(u_input.c, _wgslsmith_dot_vec3_u32(~(~vec3<u32>(43342u, arg_1.x, arg_1.x)), vec3<u32>(1u, 1u, 1u)), var_0 | true) % 32u), 19u)];
}

fn func_3() -> vec4<f32> {
    global1 = array<vec4<bool>, 2>();
    let var_0 = global0[_wgslsmith_index_u32(u_input.c, 19u)];
    var var_1 = _wgslsmith_clamp_vec3_u32(vec3<u32>(~(~u_input.c), firstTrailingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, u_input.c), vec2<u32>(u_input.c, 0u))), max(u_input.c, _wgslsmith_mult_u32(u_input.c, 4294967295u))) << (vec3<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(29447u, u_input.c, u_input.c, u_input.c), vec4<u32>(u_input.c, 37938u, 1u, 37750u)), u_input.c, _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, 4294967295u), vec2<u32>(u_input.c, u_input.c)), u_input.c)) % vec3<u32>(32u)), countOneBits(countOneBits(~vec3<u32>(4294967295u, u_input.c, u_input.c)) | (vec3<u32>(u_input.c, 6513u, u_input.c) ^ _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.c, u_input.c, u_input.c), vec3<u32>(0u, u_input.c, 8915u)))), vec3<u32>(~1u, ~u_input.c, _wgslsmith_mod_u32(_wgslsmith_mod_u32(~84943u, 48231u), ~(~36608u))));
    let var_2 = ~(var_0.b >> ((max(var_1.x, 1u) & min(1u, 32812u)) % 32u)) >> (_wgslsmith_mult_u32(_wgslsmith_add_u32(~(~u_input.c), 4294967295u), var_1.x) % 32u);
    let var_3 = _wgslsmith_f_op_f32(sign(484f));
    return _wgslsmith_f_op_vec4_f32(vec4<f32>(var_3, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(541f, var_3), var_3)) - var_3), 491f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1000f)))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-791f - _wgslsmith_f_op_f32(-var_3)), 1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_3, -865f, false)) + 309f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_3 + var_3), 199f))));
}

fn func_2() -> i32 {
    global0 = array<Struct_1, 19>();
    let var_0 = _wgslsmith_f_op_vec4_f32(func_3());
    let var_1 = var_0.zw;
    let var_2 = global0[_wgslsmith_index_u32(reverseBits(firstTrailingBit(countOneBits(1u))), 19u)];
    global1 = array<vec4<bool>, 2>();
    return select(-2147483647i, ~(-2147483647i) | _wgslsmith_dot_vec4_i32(abs(~u_input.a), u_input.a), true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(countOneBits(u_input.c), reverseBits(vec4<u32>(_wgslsmith_sub_u32(_wgslsmith_sub_u32(u_input.c, 16028u), ~1u), ~(~u_input.c), 20145u, min(firstTrailingBit(20259u), _wgslsmith_mod_u32(4294967295u, 4294967295u)))));
    var_0 = func_1(4294967295u, ~firstTrailingBit(~(~vec4<u32>(u_input.c, u_input.c, 4294967295u, u_input.c))));
    var var_1 = 1u;
    let var_2 = -u_input.d;
    var var_3 = vec2<i32>(_wgslsmith_mod_i32(-_wgslsmith_div_i32(~32830i, u_input.d), -46290i), countOneBits(max(var_0.a, -1i) << (~u_input.c % 32u)) ^ func_2());
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_dot_vec3_i32(u_input.a.zwy, vec3<i32>(var_2, -1i, var_0.a)), -1i, var_0.a, 177f);
}

