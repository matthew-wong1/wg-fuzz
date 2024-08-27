struct Struct_1 {
    a: i32,
    b: vec4<bool>,
    c: u32,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<vec3<bool>, 23>;

var<private> global2: Struct_2;

var<private> global3: array<i32, 22> = array<i32, 22>(34608i, -1i, 54452i, -47258i, -11480i, i32(-2147483648), 1i, 38320i, i32(-2147483648), 0i, -6036i, -39264i, 1i, 37444i, -1i, -20132i, 6099i, 2147483647i, 1i, -44461i, -1i, -6445i);

var<private> global4: array<bool, 7>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: vec2<u32>, arg_1: vec4<bool>, arg_2: Struct_2, arg_3: Struct_1) -> i32 {
    global2 = Struct_2(Struct_1(i32(-1i) * -18222i, select(select(vec4<bool>(arg_3.b.x, arg_1.x, arg_2.a.b.x, global2.c.x), !arg_3.b, global4[_wgslsmith_index_u32(_wgslsmith_div_u32(48839u, u_input.c.x), 7u)]), select(arg_1, !arg_1, true), select(select(vec4<bool>(arg_3.b.x, global4[_wgslsmith_index_u32(1u, 7u)], global2.a.b.x, arg_1.x), vec4<bool>(global4[_wgslsmith_index_u32(arg_2.a.c, 7u)], arg_3.b.x, false, global2.a.b.x), true), arg_1, vec4<bool>(arg_3.b.x, global4[_wgslsmith_index_u32(0u, 7u)], arg_1.x, arg_1.x))), min(0u, reverseBits(u_input.c.x)), u_input.d.x), false, global2.c);
    let var_0 = Struct_1(~global3[_wgslsmith_index_u32(max(1u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(global2.a.c, arg_3.c), arg_0)), 22u)], !vec4<bool>(false, arg_1.x, all(vec2<bool>(global2.b, false)), global4[_wgslsmith_index_u32(arg_0.x, 7u)]), ~26459u, global3[_wgslsmith_index_u32(global2.a.c, 22u)]);
    let var_1 = _wgslsmith_mod_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(global2.a.c, abs(_wgslsmith_div_u32(4294967295u, arg_3.c))), ~firstTrailingBit(_wgslsmith_mod_u32(6129u, global2.a.c))), ~(~_wgslsmith_sub_vec2_u32(u_input.c.zy & vec2<u32>(53043u, 29807u), ~u_input.c.wx)));
    global3 = array<i32, 22>();
    global4 = array<bool, 7>();
    return _wgslsmith_dot_vec2_i32(~(~(~vec2<i32>(0i, arg_2.a.d))), select(abs(u_input.d.xz) >> (~vec2<u32>(4294967295u, 46186u) % vec2<u32>(32u)), _wgslsmith_mod_vec2_i32(vec2<i32>(2147483647i, 62066i >> (var_1.x % 32u)), _wgslsmith_sub_vec2_i32(u_input.d.yw & u_input.d.xw, u_input.d.xw)), vec2<bool>(true, any(select(var_0.b, vec4<bool>(global2.b, true, true, true), true)))));
}

fn func_2() -> f32 {
    let var_0 = select(_wgslsmith_mod_vec3_i32(u_input.d.wwy, vec3<i32>(_wgslsmith_mult_i32(1i, -21948i), global2.a.a, -func_3(vec2<u32>(global2.a.c, 0u), vec4<bool>(false, global4[_wgslsmith_index_u32(global2.a.c, 7u)], global2.a.b.x, false), Struct_2(Struct_1(u_input.a, vec4<bool>(true, true, false, global2.a.b.x), global2.a.c, global3[_wgslsmith_index_u32(84125u, 22u)]), global4[_wgslsmith_index_u32(2177u, 7u)], global2.a.b.xxy), Struct_1(global2.a.a, vec4<bool>(true, global4[_wgslsmith_index_u32(u_input.b, 7u)], false, false), global2.a.c, global3[_wgslsmith_index_u32(1u, 22u)])))), vec3<i32>(2179i, -42293i, -2147483647i) ^ u_input.d.wzx, !vec3<bool>(!global2.a.b.x || false, !(1u != global2.a.c), true));
    var var_1 = Struct_2(global2.a, !select(true, global4[_wgslsmith_index_u32(0u, 7u)] || all(global2.a.b.xzw), select(global2.a.c, 1u, global2.a.b.x) <= firstLeadingBit(u_input.c.x)), global2.a.b.yxz);
    var var_2 = false;
    global2 = Struct_2(Struct_1(~(-global3[_wgslsmith_index_u32(701u, 22u)]) & global3[_wgslsmith_index_u32(1u, 22u)], global2.a.b, _wgslsmith_mod_u32(18490u, 4294967295u), _wgslsmith_div_i32(reverseBits(-7734i), global2.a.d)), true, select(var_1.c, vec3<bool>(true, !all(vec4<bool>(global2.c.x, true, false, false)), !(!var_1.b)), u_input.b <= global2.a.c));
    var var_3 = Struct_1(firstLeadingBit(28524i), !global2.a.b, global2.a.c, var_1.a.a | ~_wgslsmith_div_i32(var_0.x, -global3[_wgslsmith_index_u32(1u, 22u)]));
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))));
}

fn func_4(arg_0: vec4<f32>, arg_1: f32, arg_2: u32) -> Struct_1 {
    let var_0 = 685f;
    let var_1 = global2.a;
    let var_2 = Struct_2(global2.a, true, !global2.a.b.yxz);
    let var_3 = ~(~abs(_wgslsmith_div_u32(33588u, 4294967295u)) << (~firstTrailingBit(min(34341u, var_2.a.c)) % 32u));
    let var_4 = var_2;
    return Struct_1(-_wgslsmith_add_i32(1006i, 19526i | _wgslsmith_sub_i32(var_2.a.d, var_2.a.a)), select(!select(select(vec4<bool>(var_2.b, var_4.c.x, var_1.b.x, false), vec4<bool>(true, var_1.b.x, global4[_wgslsmith_index_u32(0u, 7u)], true), vec4<bool>(true, global4[_wgslsmith_index_u32(70599u, 7u)], true, global2.c.x)), var_1.b, !vec4<bool>(var_2.a.b.x, global2.c.x, true, var_4.b)), vec4<bool>(!all(vec3<bool>(true, var_2.c.x, var_1.b.x)), true, true | var_1.b.x, any(vec2<bool>(true, false))), all(var_4.a.b)), 17034u, -(~_wgslsmith_mod_i32(~global3[_wgslsmith_index_u32(0u, 22u)], -25691i)));
}

fn func_1(arg_0: u32, arg_1: vec2<bool>) -> Struct_2 {
    let var_0 = func_4(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(905f, _wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(-2081f + 714f), _wgslsmith_f_op_f32(633f + 164f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-394f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-191f * -668f) + _wgslsmith_f_op_f32(-440f + 1393f))))), _wgslsmith_dot_vec3_u32(u_input.c.yyx, _wgslsmith_mod_vec3_u32(vec3<u32>(74816u, 1u, arg_0), u_input.c.xww)) >> (abs(0u) % 32u));
    global4 = array<bool, 7>();
    var var_1 = var_0.b;
    var var_2 = select(_wgslsmith_mod_vec2_i32(max(min(u_input.d.wz ^ u_input.d.yx, select(u_input.d.zy, vec2<i32>(global2.a.a, -2147483647i), arg_1)), vec2<i32>(i32(-1i) * -1i, 56283i ^ var_0.d)), firstTrailingBit(_wgslsmith_mod_vec2_i32(u_input.d.yw, u_input.d.zy))), max(abs(-u_input.d.yx), abs(u_input.d.ww)), !(var_0.d > (-var_0.a & -6423i)));
    var var_3 = _wgslsmith_div_vec2_f32(vec2<f32>(-263f, -1824f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-944f, -1000f))))));
    return Struct_2(func_4(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_div_f32(var_3.x, var_3.x), -655f, _wgslsmith_f_op_f32(-var_3.x), 1963f), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_3.x, -172f, var_3.x, -856f), vec4<f32>(var_3.x, -1000f, var_3.x, -452f)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(1000f, -336f, 1543f, var_3.x), vec4<f32>(346f, -379f, var_3.x, -231f)))), any(vec3<bool>(true, global2.b, global4[_wgslsmith_index_u32(arg_0, 7u)])))), _wgslsmith_f_op_f32(max(var_3.x, _wgslsmith_f_op_f32(-var_3.x))), 0u), var_1.x, vec3<bool>(true, arg_1.x, !(!(!var_0.b.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = 6797u ^ ~(~abs(global2.a.c) >> (global2.a.c % 32u));
    let var_0 = func_1(u_input.c.x, vec2<bool>(!any(!vec3<bool>(false, global4[_wgslsmith_index_u32(global2.a.c, 7u)], global4[_wgslsmith_index_u32(17378u, 7u)])), !global4[_wgslsmith_index_u32(20850u, 7u)]));
    global1 = array<vec3<bool>, 23>();
    let var_1 = global3[_wgslsmith_index_u32((firstLeadingBit(53622u) ^ _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(select(vec4<u32>(46735u, var_0.a.c, global2.a.c, u_input.c.x), u_input.c, vec4<bool>(global2.b, global2.a.b.x, global2.a.b.x, true)), firstTrailingBit(vec4<u32>(var_0.a.c, var_0.a.c, u_input.b, 40071u))), _wgslsmith_mod_u32(~14748u, u_input.b))) >> (var_0.a.c % 32u), 22u)];
    var var_2 = var_0;
    let var_3 = 22138u;
    global0 = var_0.a.c;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(func_2()), max(_wgslsmith_mod_vec2_u32(vec2<u32>(var_0.a.c, 73175u), select(vec2<u32>(17333u, 30201u), vec2<u32>(33085u, 62978u), true)) << (u_input.c.wx % vec2<u32>(32u)), u_input.c.xx));
}

