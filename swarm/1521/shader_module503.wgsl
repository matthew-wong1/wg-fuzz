struct Struct_1 {
    a: vec4<f32>,
    b: bool,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: vec4<bool>,
    d: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_2() -> bool {
    return !(any(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false))) & all(vec4<bool>(true, true, true, true))) | true;
}

fn func_3(arg_0: i32, arg_1: f32, arg_2: u32, arg_3: vec3<i32>) -> vec3<u32> {
    let var_0 = ~max(_wgslsmith_mod_u32(1u, reverseBits(arg_2)), ~3111u) >> (~0u % 32u);
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(771f, arg_1, arg_1, arg_1)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, -1177f, 1264f)), vec4<bool>(false, false, false, true))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(arg_1, 1224f, global0.x, -323f), vec4<f32>(-552f, 1906f, arg_1, global0.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -500f, -1004f, -116f)), true)))), !(!(arg_3.x >= _wgslsmith_clamp_i32(arg_0, arg_3.x, arg_3.x))));
    global0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, _wgslsmith_f_op_f32(f32(-1f) * -383f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-661f * -448f) * _wgslsmith_f_op_f32(select(var_1.a.x, _wgslsmith_f_op_f32(f32(-1f) * -107f), var_1.b)))) + var_1.a.wyy);
    var var_2 = _wgslsmith_sub_i32(select(firstTrailingBit(0i), arg_3.x, var_1.b), arg_0);
    var_1 = Struct_1(vec4<f32>(256f, var_1.a.x, var_1.a.x, 570f), var_1.b);
    return min(vec3<u32>(firstTrailingBit(~4294967295u), arg_2, arg_2), ~(vec3<u32>(~4009u, select(u_input.b.x, u_input.b.x, var_1.b), ~0u) ^ u_input.b));
}

fn func_1(arg_0: vec4<f32>) -> bool {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.x, -536f, arg_0.x, _wgslsmith_f_op_f32(ceil(1128f))), arg_0, func_2())), !(!select(true, true, any(vec4<bool>(true, false, true, false)))));
    var var_1 = func_3(_wgslsmith_dot_vec2_i32(u_input.c, ~(~vec2<i32>(595i, u_input.c.x))), _wgslsmith_f_op_f32(-var_0.a.x), u_input.b.x, vec3<i32>(-select(-18704i, _wgslsmith_clamp_i32(u_input.c.x, -1i, 76392i), u_input.c.x <= u_input.c.x), i32(-1i) * -12414i, -(~(~(-5066i)))));
    let var_2 = _wgslsmith_clamp_vec3_i32(-_wgslsmith_sub_vec3_i32(abs(vec3<i32>(u_input.c.x, 1i, 1i)) >> (firstLeadingBit(u_input.b) % vec3<u32>(32u)), vec3<i32>(~u_input.c.x, u_input.c.x, _wgslsmith_add_i32(u_input.c.x, 10455i))), _wgslsmith_sub_vec3_i32(~(-vec3<i32>(u_input.c.x, u_input.c.x, -1i)), firstLeadingBit(abs(vec3<i32>(2147483647i, u_input.c.x, u_input.c.x)))), vec3<i32>(u_input.c.x, _wgslsmith_div_i32(_wgslsmith_sub_i32(reverseBits(863i), u_input.c.x | u_input.c.x), u_input.c.x), u_input.c.x ^ _wgslsmith_add_i32(19243i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, 2147483647i, -1i, -1i), vec4<i32>(2147483647i, -65934i, 19177i, u_input.c.x)))));
    var var_3 = Struct_3(Struct_2(u_input.c.x), ~u_input.a, vec4<bool>(2147483647i >= _wgslsmith_add_i32(var_2.x, 1i), any(vec2<bool>(true, true)), any(!vec4<bool>(false, true, false, var_0.b)) && any(vec2<bool>(var_0.b, false)), var_0.b), Struct_2(var_2.x));
    var_1 = u_input.b;
    return var_2.x >= 1i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -15036i;
    var var_1 = vec4<bool>(37055u >= u_input.b.x, all(vec4<bool>((u_input.a << (4294967295u % 32u)) >= ~7390u, select(0u, u_input.b.x, true) < 0u, all(vec4<bool>(true, false, false, false)), !any(vec4<bool>(false, false, false, false)))), !((-var_0 > _wgslsmith_mod_i32(u_input.c.x, var_0)) == func_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, global0.x, global0.x)))), any(vec2<bool>(!select(true, true, true), true)));
    let var_2 = _wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(27936i, u_input.c.x), vec2<i32>(2147483647i, 0i)), -2147483647i), reverseBits(u_input.c.x), _wgslsmith_add_i32(var_0, max(var_0, u_input.c.x)), 25346i), ~abs(_wgslsmith_div_vec4_i32(vec4<i32>(var_0, var_0, u_input.c.x, var_0), vec4<i32>(1i, 27498i, u_input.c.x, 0i)))) << (vec4<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 1u, 50684u, 4294967295u), vec4<u32>(u_input.b.x ^ u_input.a, 72u, u_input.b.x, _wgslsmith_mod_u32(64522u, u_input.a))), ~(~(~1u)), u_input.a | ~u_input.a, 45654u) % vec4<u32>(32u));
    var var_3 = (~(_wgslsmith_mod_vec4_u32(vec4<u32>(56858u, 1u, 4657u, u_input.b.x), vec4<u32>(6185u, u_input.b.x, 1u, 10076u)) | vec4<u32>(u_input.a, u_input.b.x, u_input.b.x, 0u)) & abs(~vec4<u32>(u_input.b.x, 42146u, 7999u, 1u) ^ ~vec4<u32>(u_input.a, 47386u, u_input.b.x, 4294967295u))) | _wgslsmith_add_vec4_u32(reverseBits(vec4<u32>(0u, u_input.b.x, _wgslsmith_add_u32(25409u, u_input.a), reverseBits(50438u))), min(vec4<u32>(u_input.a, 4294967295u, u_input.b.x, 87800u) | vec4<u32>(0u, 52915u, u_input.b.x, u_input.a), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, u_input.b.x, u_input.a, 5943u), vec4<u32>(4481u, u_input.a, 0u, u_input.b.x))) >> ((vec4<u32>(u_input.b.x, u_input.a, 4294967295u, u_input.a) & countOneBits(vec4<u32>(u_input.b.x, u_input.a, u_input.a, u_input.b.x))) % vec4<u32>(32u)));
    let var_4 = _wgslsmith_sub_u32(~(~var_3.x), _wgslsmith_dot_vec2_u32(vec2<u32>(~select(19230u, u_input.b.x, var_1.x), ~var_3.x), vec2<u32>(min(~u_input.b.x, var_3.x | 14360u), _wgslsmith_sub_u32(u_input.b.x, u_input.b.x))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(-1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-332f - -2022f) * _wgslsmith_f_op_f32(global0.x + -670f)), -1690f), -847f), var_0);
}

