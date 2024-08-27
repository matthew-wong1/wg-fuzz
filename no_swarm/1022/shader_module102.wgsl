struct Struct_1 {
    a: f32,
    b: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(1737f, 1438f);

var<private> global1: f32 = 578f;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3() -> f32 {
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global0.a))))));
    var var_0 = vec4<i32>(-1i) * -(~_wgslsmith_div_vec4_i32(vec4<i32>(12138i, u_input.a.x, 27008i, u_input.c) ^ vec4<i32>(u_input.d.x, u_input.a.x, u_input.d.x, 40488i), vec4<i32>(u_input.c, 36320i, -1i, u_input.a.x)));
    var var_1 = _wgslsmith_dot_vec4_i32(max(vec4<i32>(-56435i, u_input.d.x, 11372i, firstTrailingBit(~(-1i))), vec4<i32>(1i, _wgslsmith_mod_i32(-1i, max(var_0.x, 2147483647i)), var_0.x, -39949i)), ~vec4<i32>(u_input.d.x, 1i, var_0.x, _wgslsmith_dot_vec2_i32(firstLeadingBit(var_0.yy), u_input.d.yy)));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(331f, global0.b)), 145f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a * global0.b)));
    var var_3 = ~_wgslsmith_add_vec4_u32((vec4<u32>(0u, 0u, 2359u, u_input.b.x) << (_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b.x, 0u, 4294967295u, 4294967295u), vec4<u32>(46881u, u_input.b.x, u_input.b.x, 20862u)) % vec4<u32>(32u))) >> ((max(vec4<u32>(21851u, u_input.b.x, u_input.b.x, 21207u), vec4<u32>(u_input.b.x, 0u, 10999u, u_input.b.x)) & ~vec4<u32>(u_input.b.x, 1u, u_input.b.x, u_input.b.x)) % vec4<u32>(32u)), _wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(7152u, 73296u, 13301u, 30166u) << (vec4<u32>(u_input.b.x, 0u, u_input.b.x, u_input.b.x) % vec4<u32>(32u)), ~vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x)), vec4<u32>(u_input.b.x, u_input.b.x, reverseBits(u_input.b.x), u_input.b.x)));
    return _wgslsmith_f_op_f32(round(-752f));
}

fn func_2(arg_0: f32, arg_1: u32, arg_2: i32, arg_3: vec3<u32>) -> u32 {
    var var_0 = _wgslsmith_div_u32(1u, arg_3.x);
    global1 = arg_0;
    var var_1 = _wgslsmith_add_u32(arg_3.x, firstTrailingBit(~arg_3.x));
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a)));
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) + 2690f))), _wgslsmith_f_op_f32(select(919f, -1451f, all(vec4<bool>(true, true, any(vec3<bool>(true, true, false)), true)))), 1000f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(global0.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b + 1086f)))));
    return 1u;
}

fn func_1(arg_0: u32, arg_1: bool) -> Struct_1 {
    var var_0 = vec3<u32>(u_input.b.x, ~9353u, firstLeadingBit(u_input.b.x));
    var var_1 = 48259u;
    var_1 = (u_input.b.x & u_input.b.x) ^ func_2(-200f, _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(33973u, 60835u, var_0.x, arg_0), vec4<u32>(63279u, arg_0, 11892u, arg_0)), max(vec4<u32>(4294967295u, u_input.b.x, 115941u, 0u), vec4<u32>(4187u, 43686u, 4646u, u_input.b.x))) ^ _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(arg_0, arg_0, arg_0, 42949u), vec4<u32>(0u, var_0.x, 35843u, var_0.x)), countOneBits(vec4<u32>(arg_0, 1u, var_0.x, 96235u))), u_input.d.x, u_input.b & (vec3<u32>(40220u, 0u, var_0.x) ^ u_input.b));
    var var_2 = true;
    let var_3 = vec3<f32>(global0.b, global0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a * -326f)))));
    return Struct_1(1511f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(var_3.x + global0.b)) * 250f) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-547f, 839f)))))));
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    var var_0 = global0.b;
    let var_1 = -firstTrailingBit((u_input.d.x >> (42436u % 32u)) | -4744i);
    var_0 = 1f;
    var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - 464f)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3()), 1000f))));
    var var_2 = _wgslsmith_f_op_f32(min(global0.a, global0.b));
    return func_1(u_input.b.x, -38876i > var_1);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_f32(trunc(1537f));
    var var_0 = _wgslsmith_mod_vec3_i32(~_wgslsmith_mod_vec3_i32(-vec3<i32>(u_input.c, -1i, -18091i), vec3<i32>(u_input.d.x, u_input.c, 31434i)), vec3<i32>(u_input.a.x, u_input.d.x, 12258i));
    global1 = _wgslsmith_f_op_f32(-global0.b);
    global1 = global0.b;
    var var_1 = func_4(func_1(72476u, true));
    var_0 = _wgslsmith_div_vec3_i32(-u_input.d, _wgslsmith_add_vec3_i32(~u_input.d, u_input.d));
    let var_2 = ~(~(~u_input.d.xx));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b) + _wgslsmith_f_op_f32(sign(1f))), reverseBits(vec3<u32>(u_input.b.x >> (abs(43815u) % 32u), _wgslsmith_mod_u32(4272u, ~54298u), ~93415u)));
}

