struct Struct_1 {
    a: vec2<i32>,
    b: u32,
    c: vec4<i32>,
    d: vec3<u32>,
    e: u32,
}

struct Struct_2 {
    a: bool,
    b: vec2<bool>,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 12>;

var<private> global1: array<vec4<f32>, 20> = array<vec4<f32>, 20>(vec4<f32>(-952f, 925f, -519f, -1403f), vec4<f32>(-332f, -814f, 430f, -331f), vec4<f32>(1769f, 483f, 473f, 390f), vec4<f32>(1212f, 1335f, -603f, -812f), vec4<f32>(336f, -134f, -323f, -470f), vec4<f32>(1765f, -706f, 1019f, 880f), vec4<f32>(-2065f, -2095f, 973f, 1558f), vec4<f32>(809f, 675f, 918f, -966f), vec4<f32>(669f, -756f, 365f, 103f), vec4<f32>(-1161f, 1932f, -163f, 365f), vec4<f32>(-1185f, -663f, 903f, 1000f), vec4<f32>(533f, -193f, -193f, 224f), vec4<f32>(1067f, 797f, 163f, 932f), vec4<f32>(235f, 2231f, 428f, -1007f), vec4<f32>(182f, 1141f, 473f, -309f), vec4<f32>(-928f, 1216f, -893f, -1280f), vec4<f32>(1227f, 951f, -982f, 1049f), vec4<f32>(2543f, 1616f, -1472f, -1747f), vec4<f32>(1082f, -183f, -1095f, -2949f), vec4<f32>(-322f, -179f, 1180f, 327f));

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: u32, arg_1: Struct_2) -> i32 {
    global0 = array<bool, 12>();
    var var_0 = Struct_2(u_input.c == arg_0, vec2<bool>(true, arg_1.b.x & (arg_1.c.x != (u_input.d.x << (arg_0 % 32u)))), _wgslsmith_clamp_vec3_i32(u_input.b, firstLeadingBit(firstTrailingBit(vec3<i32>(arg_1.c.x, arg_1.c.x, 29560i))), vec3<i32>(-50756i << (u_input.a % 32u), min(arg_1.c.x, u_input.b.x), ~(-2147483647i))) << (_wgslsmith_clamp_vec3_u32(~(~vec3<u32>(39304u, 14728u, 96728u)), _wgslsmith_mod_vec3_u32(~vec3<u32>(0u, 27289u, arg_0), abs(vec3<u32>(u_input.c, u_input.c, arg_0))), _wgslsmith_sub_vec3_u32(~vec3<u32>(u_input.c, 11769u, 5621u), vec3<u32>(11635u, 41115u, 4294967295u))) % vec3<u32>(32u)));
    var var_1 = -365f;
    var_0 = arg_1;
    return arg_1.c.x;
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: vec2<f32>) -> vec2<bool> {
    let var_0 = arg_1;
    let var_1 = arg_1;
    global0 = array<bool, 12>();
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(276f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(795f * arg_2.x) + -707f)), arg_2.x) + -176f);
    var var_3 = Struct_2(var_1.b.x, select(select(vec2<bool>(!var_0.b.x, all(vec2<bool>(false, false))), select(arg_1.b, var_1.b, select(vec2<bool>(false, var_0.a), vec2<bool>(global0[_wgslsmith_index_u32(u_input.a, 12u)], var_1.a), arg_1.b.x)), false), !vec2<bool>(u_input.a != u_input.c, var_0.a), var_1.a), vec3<i32>(-_wgslsmith_add_i32(reverseBits(-2147483647i), reverseBits(arg_1.c.x)), var_0.c.x, ~_wgslsmith_sub_i32(func_3(u_input.c, arg_1), 1i)));
    return select(!arg_1.b, vec2<bool>(any(var_1.b), arg_1.b.x), true);
}

fn func_2(arg_0: vec3<i32>, arg_1: bool, arg_2: vec2<bool>, arg_3: Struct_2) -> vec2<bool> {
    return func_4(min(vec2<i32>(1i, min(-arg_0.x, func_3(u_input.a, arg_3))), arg_0.xz), Struct_2(false, select(vec2<bool>(global0[_wgslsmith_index_u32(0u, 12u)], true), arg_3.b, vec2<bool>(select(arg_2.x, false, true), global0[_wgslsmith_index_u32(~u_input.c, 12u)])), reverseBits(arg_0)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1353f, -356f)))) + vec2<f32>(-295f, -474f))));
}

fn func_1(arg_0: vec4<f32>) -> Struct_1 {
    let var_0 = vec2<bool>(global0[_wgslsmith_index_u32(~max(_wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(u_input.a, u_input.a, u_input.a, 26677u)), countOneBits(vec4<u32>(20917u, 21730u, u_input.a, u_input.c))), 50951u), 12u)], (u_input.c <= ~_wgslsmith_add_u32(u_input.a, 4294967295u)) && (max(u_input.a, u_input.a) <= 4294967295u));
    var var_1 = vec3<bool>(any(select(select(select(vec2<bool>(global0[_wgslsmith_index_u32(1u, 12u)], global0[_wgslsmith_index_u32(1u, 12u)]), vec2<bool>(var_0.x, var_0.x), var_0), func_2(vec3<i32>(2147483647i, u_input.d.x, u_input.d.x), var_0.x, vec2<bool>(var_0.x, false), Struct_2(global0[_wgslsmith_index_u32(4294967295u, 12u)], var_0, vec3<i32>(31284i, -85830i, -35765i))), !vec2<bool>(var_0.x, false)), var_0, global0[_wgslsmith_index_u32(~9472u, 12u)])), global0[_wgslsmith_index_u32(~4294967295u, 12u)], true);
    global1 = array<vec4<f32>, 20>();
    var var_2 = -(u_input.d ^ u_input.b.zz);
    var_2 = u_input.d;
    return Struct_1(-select(vec2<i32>(u_input.b.x, func_3(4294967295u, Struct_2(var_0.x, vec2<bool>(false, false), vec3<i32>(var_2.x, var_2.x, u_input.d.x)))), ~u_input.d, func_2(u_input.b, global0[_wgslsmith_index_u32(_wgslsmith_div_u32(0u, 47859u), 12u)], func_4(u_input.b.zz, Struct_2(var_0.x, vec2<bool>(var_1.x, global0[_wgslsmith_index_u32(u_input.c, 12u)]), u_input.b), arg_0.zx), Struct_2(false, var_1.xy, vec3<i32>(var_2.x, var_2.x, -2147483647i)))), 1u, _wgslsmith_clamp_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_2.x, u_input.d.x & -20153i, var_2.x >> (u_input.c % 32u), _wgslsmith_mod_i32(-35535i, 41078i)), reverseBits(vec4<i32>(u_input.d.x, -2147483647i, -2147483647i, -1i) ^ vec4<i32>(u_input.d.x, 2147483647i, 0i, var_2.x)), _wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, u_input.b.x, var_2.x, u_input.b.x), vec4<i32>(u_input.b.x, 48019i, 1i, 2147483647i)) & ~vec4<i32>(0i, -67453i, 21839i, u_input.b.x)), ~vec4<i32>(min(2147483647i, 2147483647i), firstLeadingBit(var_2.x), 74910i, min(-1i, var_2.x)), _wgslsmith_div_vec4_i32(vec4<i32>(-9653i, _wgslsmith_dot_vec4_i32(vec4<i32>(var_2.x, -27934i, u_input.d.x, u_input.d.x), vec4<i32>(2147483647i, var_2.x, var_2.x, var_2.x)), i32(-1i) * -2147483647i, 22623i), vec4<i32>(_wgslsmith_div_i32(-7285i, -25508i), 5315i, _wgslsmith_mult_i32(var_2.x, u_input.d.x), -13164i << (u_input.a % 32u)))), vec3<u32>(252u, 40053u, ~(~(~u_input.c))), 4294967295u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 12>();
    global1 = array<vec4<f32>, 20>();
    global1 = array<vec4<f32>, 20>();
    let var_0 = func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-723f, -524f, -108f, -212f))) * _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(671f, 296f, -719f, -1502f), vec4<f32>(-1947f, -1228f, 286f, 539f))))))));
    global1 = array<vec4<f32>, 20>();
    let var_1 = -var_0.c.x;
    let var_2 = vec2<u32>(var_0.e, var_0.d.x);
    global0 = array<bool, 12>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d.x);
}

