struct Struct_1 {
    a: f32,
    b: u32,
    c: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: bool,
}

struct Struct_4 {
    a: vec3<i32>,
    b: vec3<bool>,
    c: bool,
    d: Struct_2,
}

struct Struct_5 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: u32 = 102844u;

var<private> global2: u32 = 10220u;

var<private> global3: u32;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: Struct_2, arg_1: i32) -> u32 {
    return global0.b;
}

fn func_2(arg_0: f32, arg_1: Struct_3) -> u32 {
    var var_0 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-303f + 924f) - global0.a), !arg_1.a.c.x)), -100f), ~_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, arg_1.a.b, 96613u, 4294967295u), vec4<u32>(u_input.a.x, 44990u, 30898u, 22137u)) | (vec4<u32>(0u, global0.b, arg_1.a.b, 45302u) << (vec4<u32>(arg_1.b, 12901u, 2766u, global0.b) % vec4<u32>(32u))), vec4<u32>(func_3(Struct_2(arg_1.a), 37468i), arg_1.b, 0u, firstTrailingBit(4294967295u))), vec4<bool>(true, all(!arg_1.a.c), !arg_1.a.c.x, 33249u >= (1u & _wgslsmith_sub_u32(4294967295u, global0.b))));
    global2 = ~_wgslsmith_sub_u32(var_0.b, global0.b);
    let var_1 = select(_wgslsmith_clamp_vec4_u32(reverseBits(vec4<u32>(arg_1.b, 62400u, u_input.a.x, arg_1.b)) & firstTrailingBit(vec4<u32>(4294967295u, 0u, arg_1.a.b, var_0.b)), firstTrailingBit(_wgslsmith_div_vec4_u32(vec4<u32>(global0.b, var_0.b, global0.b, 0u), vec4<u32>(arg_1.b, 3204u, 0u, 88498u))), vec4<u32>(u_input.b.x | 60008u, min(4294967295u, global0.b), 1u, ~9182u)), _wgslsmith_add_vec4_u32(vec4<u32>(var_0.b, ~global0.b, ~55061u, 23331u), vec4<u32>(max(var_0.b, arg_1.b), 55095u << (global0.b % 32u), min(u_input.b.x, 4294967295u), ~0u)), vec4<bool>((global0.b == arg_1.b) & !var_0.c.x, any(!var_0.c), any(!global0.c.wz), select(true, !arg_1.c, any(vec2<bool>(true, var_0.c.x))))) | min(~vec4<u32>(30557u, _wgslsmith_mod_u32(26990u, u_input.a.x), global0.b, 12690u), _wgslsmith_add_vec4_u32(~vec4<u32>(0u, global0.b, 120946u, 54613u), (vec4<u32>(0u, 38261u, var_0.b, 4837u) | vec4<u32>(0u, u_input.b.x, global0.b, 1u)) >> ((vec4<u32>(22035u, 4294967295u, 9961u, arg_1.b) ^ vec4<u32>(global0.b, 89864u, u_input.b.x, var_0.b)) % vec4<u32>(32u))));
    let var_2 = 8699i;
    global0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global0.a))))), 74081u, !vec4<bool>(arg_1.a.c.x || false, !var_0.c.x, all(!vec3<bool>(var_0.c.x, false, false)), arg_1.a.c.x));
    return ~u_input.b.x;
}

fn func_1(arg_0: i32, arg_1: Struct_1, arg_2: Struct_5) -> vec4<i32> {
    return vec4<i32>(_wgslsmith_sub_i32(_wgslsmith_div_i32(-abs(arg_0), -2147483647i), 1i), max(32284i, 1i), _wgslsmith_clamp_i32(arg_0 & (arg_2.a.x >> (func_2(global0.a, Struct_3(Struct_1(2304f, 8046u, arg_1.c), 0u, true)) % 32u)), _wgslsmith_mod_i32(arg_0, -2147483647i >> (0u % 32u)), arg_0 << (~arg_1.b % 32u)), -2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_add_u32(global0.b, ~u_input.b.x) ^ ~_wgslsmith_dot_vec4_u32(vec4<u32>(24104u, 80272u, 30495u, global0.b) ^ _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b.x, u_input.a.x, 0u, global0.b), vec4<u32>(1u, 0u, u_input.b.x, u_input.a.x), vec4<u32>(global0.b, global0.b, global0.b, u_input.b.x)), max(max(vec4<u32>(u_input.a.x, 0u, 0u, u_input.b.x), vec4<u32>(13730u, 1u, global0.b, 40439u)), ~vec4<u32>(42068u, global0.b, 1u, global0.b)));
    global1 = 32790u;
    let var_0 = vec2<i32>(-2147483647i, 2147483647i);
    let var_1 = Struct_5(select(-select(-vec4<i32>(10408i, var_0.x, var_0.x, -16915i), vec4<i32>(27149i, -1i, 1i, var_0.x) >> (vec4<u32>(global0.b, global0.b, 89238u, global0.b) % vec4<u32>(32u)), global0.c), _wgslsmith_sub_vec4_i32(vec4<i32>(var_0.x, var_0.x, 1621i, 44014i) | vec4<i32>(var_0.x, var_0.x, -54557i, -29803i), -vec4<i32>(26184i, var_0.x, var_0.x, var_0.x)) ^ _wgslsmith_div_vec4_i32(func_1(var_0.x, Struct_1(-1229f, u_input.a.x, vec4<bool>(global0.c.x, true, global0.c.x, false)), Struct_5(vec4<i32>(-7893i, -2147483647i, var_0.x, var_0.x))), ~vec4<i32>(1i, 26123i, 0i, 32944i)), true));
    let var_2 = u_input.b;
    global0 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global0.a))), -946f), 27523u ^ global0.b, vec4<bool>(true, global0.c.x, any(global0.c.xxw), any(!vec3<bool>(false, global0.c.x, false))));
    global3 = _wgslsmith_dot_vec3_u32(~(u_input.a & abs(vec3<u32>(0u, u_input.a.x, var_2.x))), vec3<u32>(~(26812u >> (global0.b % 32u)), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.a.x, 9539u), vec3<u32>(1u, 0u, u_input.b.x)), 1u)) >> (_wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(~_wgslsmith_sub_u32(global0.b, 1u), _wgslsmith_sub_u32(abs(global0.b), ~22286u), _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 0u, 4294967295u), u_input.a), ~var_2.x))) % 32u);
    let var_3 = _wgslsmith_mult_i32(var_1.a.x, -(~(i32(-1i) * -var_0.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec3_i32((vec3<i32>(var_0.x, 5764i, 0i) ^ var_1.a.wzy) >> (min(vec3<u32>(6490u, global0.b, 1u), vec3<u32>(5167u, 9914u, 0u)) % vec3<u32>(32u)), vec3<i32>(2147483647i | var_3, countOneBits(var_1.a.x), firstTrailingBit(12288i))) << (vec3<u32>(func_3(Struct_2(Struct_1(global0.a, global0.b, vec4<bool>(global0.c.x, true, false, global0.c.x))), var_0.x), global0.b, _wgslsmith_dot_vec3_u32(vec3<u32>(50595u, var_2.x, 4294967295u), vec3<u32>(u_input.b.x, 13990u, var_2.x)) | var_2.x) % vec3<u32>(32u)));
}

