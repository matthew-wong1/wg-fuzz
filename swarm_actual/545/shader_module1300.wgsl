struct Struct_1 {
    a: f32,
    b: i32,
    c: f32,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 9> = array<vec2<f32>, 9>(vec2<f32>(-621f, -1000f), vec2<f32>(599f, -281f), vec2<f32>(-167f, -1000f), vec2<f32>(860f, 712f), vec2<f32>(-154f, 2257f), vec2<f32>(241f, 132f), vec2<f32>(-107f, -608f), vec2<f32>(-394f, 2288f), vec2<f32>(202f, 565f));

var<private> global1: Struct_1;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_2(arg_0: i32, arg_1: vec2<u32>, arg_2: vec2<u32>, arg_3: u32) -> Struct_1 {
    return Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -2741f), -2147483647i, _wgslsmith_div_f32(global1.c, -785f), !vec2<bool>(global1.d.x, global1.d.x));
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: vec3<f32>, arg_3: f32) -> vec2<i32> {
    let var_0 = Struct_1(arg_0.c, _wgslsmith_mod_i32(-_wgslsmith_dot_vec3_i32(vec3<i32>(-19335i, 16427i, global1.b), vec3<i32>(-2022i, arg_0.b, 194i)), -reverseBits(min(-1i, 4651i))), arg_2.x, global1.d);
    global0 = array<vec2<f32>, 9>();
    let var_1 = arg_0;
    var var_2 = var_0;
    let var_3 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1245f), var_2.b, var_0.a, var_2.d);
    return max(select(~(abs(u_input.a.xy) ^ max(u_input.a.zy, u_input.a.zy)), min(u_input.a.yx, ~vec2<i32>(var_1.b, var_1.b)), vec2<bool>(var_0.d.x, arg_0.d.x)), -(~vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, var_1.b, var_1.b, 3214i), vec4<i32>(23023i, -41850i, u_input.a.x, u_input.a.x)), arg_0.b)));
}

fn func_4(arg_0: vec2<i32>) -> Struct_1 {
    var var_0 = Struct_1(836f, _wgslsmith_add_i32(_wgslsmith_clamp_i32(u_input.a.x, _wgslsmith_mult_i32(global1.b, arg_0.x), arg_0.x), abs(_wgslsmith_dot_vec2_i32(arg_0, arg_0))) ^ global1.b, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1000f, global1.c, true))))), vec2<bool>(!select(global1.d.x, global1.d.x, false) | !(!global1.d.x), -arg_0.x > 0i));
    return func_2(arg_0.x, vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, ~4703u, 1u, _wgslsmith_mod_u32(0u, 8362u)), _wgslsmith_clamp_vec4_u32(~vec4<u32>(0u, 1u, 0u, 0u), abs(vec4<u32>(0u, 79505u, 4294967295u, 66788u)), vec4<u32>(1u, 1u, 4294967295u, 30956u))), ~4294967295u), vec2<u32>(1u, 1u), 1u);
}

fn func_1(arg_0: f32) -> Struct_1 {
    return func_4(func_3(func_2(global1.b >> (0u % 32u), countOneBits(vec2<u32>(0u, 4294967295u)), vec2<u32>(0u, 84747u), ~3594u), any(vec2<bool>(global1.d.x, true)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-780f, -1000f, global1.a) * vec3<f32>(global1.a, 670f, arg_0)) + vec3<f32>(arg_0, arg_0, -337f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(1521f, arg_0)), _wgslsmith_f_op_f32(-1502f * -977f))) >> (vec2<u32>(1u, 1u) % vec2<u32>(32u)));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: vec2<f32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(sign(global1.c));
    var var_1 = Struct_1(global1.c, 31391i, _wgslsmith_div_f32(-254f, arg_3.x), func_2(-_wgslsmith_mult_i32(_wgslsmith_mult_i32(-68569i, 0i), reverseBits(2147483647i)), _wgslsmith_div_vec2_u32(vec2<u32>(countOneBits(61075u), 28831u), vec2<u32>(1u, 1u)), vec2<u32>(min(39513u, 39430u), min(_wgslsmith_mult_u32(18017u, 0u), 1u)), _wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, 0u, 75696u), reverseBits(_wgslsmith_mult_vec3_u32(vec3<u32>(46779u, 0u, 0u), vec3<u32>(1u, 48593u, 44176u))))).d);
    let var_2 = _wgslsmith_clamp_vec4_i32(select(vec4<i32>(25274i, global1.b, 2147483647i, var_1.b), select(min(_wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, arg_1.b, arg_2.x, -1i), vec4<i32>(47506i, 0i, var_1.b, global1.b)), countOneBits(vec4<i32>(global1.b, -1i, 0i, u_input.a.x))), countOneBits(vec4<i32>(-2147483647i, var_1.b, arg_1.b, global1.b)), !select(vec4<bool>(var_1.d.x, arg_0.d.x, true, arg_0.d.x), vec4<bool>(true, true, arg_1.d.x, var_1.d.x), arg_1.d.x)), vec4<bool>(false, var_1.d.x, arg_1.d.x, global1.d.x)), -vec4<i32>(func_1(var_1.a).b, ~u_input.a.x, 25266i, -firstTrailingBit(arg_2.x)), _wgslsmith_mod_vec4_i32(_wgslsmith_mod_vec4_i32(~(-vec4<i32>(var_1.b, -8588i, var_1.b, global1.b)), _wgslsmith_mult_vec4_i32(vec4<i32>(15867i, -9800i, var_1.b, -1i), -vec4<i32>(arg_1.b, arg_1.b, 1i, -22364i))), ~vec4<i32>(global1.b, _wgslsmith_div_i32(1i, u_input.a.x), _wgslsmith_add_i32(arg_1.b, 5230i), i32(-1i) * -1i)));
    global1 = arg_0;
    global0 = array<vec2<f32>, 9>();
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(860f)))), global1.b, global1.a, vec2<bool>(true, true));
    global1 = func_5(Struct_1(_wgslsmith_f_op_f32(-global1.a), global1.b, -689f, select(!global1.d, vec2<bool>(true, true), global1.d)), func_1(1845f), -u_input.a.yz, _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(global1.c * -687f), _wgslsmith_div_f32(global1.c, global1.a)))));
    let var_0 = ~select(max(countOneBits(~vec2<u32>(1u, 1u)), vec2<u32>(1u, firstLeadingBit(0u))), min(vec2<u32>(1u, 1u), vec2<u32>(1u, countOneBits(9030u))), global1.d);
    var var_1 = -1i;
    var_1 = 1i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(-1i) * -u_input.a.xy, max(vec2<i32>(8257i, global1.b), _wgslsmith_mod_vec2_i32(vec2<i32>(global1.b, global1.b), u_input.a.xx)), vec2<i32>(-1626i, 1i)), _wgslsmith_clamp_vec2_i32(u_input.a.yx, _wgslsmith_add_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(-1i, 2147483647i), u_input.a.yz), u_input.a.zx), vec2<i32>(u_input.a.x, global1.b) & reverseBits(u_input.a.yy))), vec4<u32>(4294967295u, ~0u, ~_wgslsmith_dot_vec4_u32(~vec4<u32>(var_0.x, 4294967295u, 4294967295u, var_0.x), ~vec4<u32>(var_0.x, 0u, var_0.x, var_0.x)), ~_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(var_0, var_0), _wgslsmith_sub_vec2_u32(var_0, var_0))), _wgslsmith_div_vec3_u32(vec3<u32>(var_0.x, 48284u, max(var_0.x >> (var_0.x % 32u), ~var_0.x)), ~vec3<u32>(var_0.x, var_0.x, 46191u) << (_wgslsmith_sub_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(var_0.x, var_0.x, 9024u), vec3<u32>(4294967295u, 68356u, 0u)), vec3<u32>(51417u, 42969u, 0u)) % vec3<u32>(32u))));
}

