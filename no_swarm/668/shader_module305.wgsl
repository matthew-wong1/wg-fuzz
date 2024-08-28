struct Struct_1 {
    a: u32,
    b: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec4<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 19> = array<Struct_1, 19>(Struct_1(87578u, true), Struct_1(50023u, false), Struct_1(0u, false), Struct_1(823u, true), Struct_1(29676u, false), Struct_1(0u, true), Struct_1(39483u, false), Struct_1(4294967295u, true), Struct_1(1u, true), Struct_1(0u, false), Struct_1(27295u, false), Struct_1(0u, false), Struct_1(4294967295u, false), Struct_1(58796u, false), Struct_1(19078u, false), Struct_1(4294967295u, true), Struct_1(13434u, true), Struct_1(1u, true), Struct_1(1u, false));

var<private> global1: array<vec2<f32>, 25>;

var<private> global2: array<vec4<u32>, 7>;

var<private> global3: Struct_1 = Struct_1(100431u, false);

var<private> global4: array<Struct_1, 26>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1120f))), 1299f, true)) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(838f, 1000f)))))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -922f) * _wgslsmith_f_op_f32(-752f - -988f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1409f, -192f) * _wgslsmith_f_op_f32(round(-854f))))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-458f + -220f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1630f)) + _wgslsmith_f_op_f32(sign(533f))))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0, var_0)));
    global3 = Struct_1(~0u, !any(select(select(vec2<bool>(global3.b, true), vec2<bool>(arg_1.b, true), vec2<bool>(true, global3.b)), !vec2<bool>(true, global3.b), select(vec2<bool>(global3.b, global3.b), vec2<bool>(arg_1.b, false), false))));
    var var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 + _wgslsmith_f_op_f32(select(289f, -1737f, false))) + -1000f), var_0, _wgslsmith_f_op_f32(sign(-1788f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_0, -2175f)) + -1484f)))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-392f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(875f - var_0))), _wgslsmith_f_op_f32(1049f + _wgslsmith_f_op_f32(-1014f * -106f)), 1167f)));
    global2 = array<vec4<u32>, 7>();
    return ~19537u;
}

fn func_2(arg_0: vec3<i32>, arg_1: vec4<f32>, arg_2: Struct_1) -> Struct_1 {
    global4 = array<Struct_1, 26>();
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~(~_wgslsmith_add_u32(4294967295u, firstTrailingBit(1u))), (func_3(Struct_1(u_input.a.x, true), global0[_wgslsmith_index_u32(global3.a, 19u)]) >> ((u_input.d.x | firstTrailingBit(1u)) % 32u)) << (global3.a % 32u), ~_wgslsmith_dot_vec4_u32(u_input.d, u_input.d)), 19u)];
    let var_1 = _wgslsmith_mult_u32(reverseBits(33391u), ~u_input.d.x);
    let var_2 = select(vec3<bool>(var_0.b, false, any(select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false)), vec2<bool>(var_0.b, arg_2.b)))), vec3<bool>(!arg_2.b, var_1 >= var_1, ((var_0.b | true) && global3.b) | global3.b), select(!select(vec3<bool>(global3.b, false, var_0.b), !vec3<bool>(arg_2.b, global3.b, false), !arg_2.b), !(!vec3<bool>(true, global3.b, arg_2.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_1.x))) < 871f));
    let var_3 = global4[_wgslsmith_index_u32(_wgslsmith_sub_u32(arg_2.a, _wgslsmith_div_u32(max(_wgslsmith_sub_u32(u_input.a.x, var_1), var_1), min(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 0u, var_0.a), u_input.d.yyz), global3.a)) ^ 0u), 26u)];
    return Struct_1(~var_3.a >> (var_1 % 32u), false);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> i32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -853f) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(452f)), _wgslsmith_f_op_f32(f32(-1f) * -1149f)))), -1400f, _wgslsmith_f_op_f32(885f - _wgslsmith_f_op_f32(1f * -676f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(1020f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1000f))), false))) - vec4<f32>(-773f, -792f, 280f, 3221f));
    let var_1 = all(vec3<bool>(all(vec2<bool>(global3.b, true)), true, true));
    var var_2 = Struct_1(~_wgslsmith_mult_u32(firstLeadingBit(arg_2.a), 1u), false);
    var var_3 = Struct_1(~_wgslsmith_dot_vec3_u32(min(u_input.d.xzz, ~vec3<u32>(arg_2.a, 4294967295u, 38503u)), max(u_input.d.wyx, abs(vec3<u32>(32349u, arg_1.a, 43144u)))), all(!(!vec2<bool>(false, arg_1.b))));
    var var_4 = func_2(~u_input.c.wzy, _wgslsmith_f_op_vec4_f32(-var_0), func_2(firstLeadingBit(select(~vec3<i32>(u_input.b, -49907i, 1i), vec3<i32>(u_input.c.x, 0i, u_input.c.x), !vec3<bool>(var_3.b, false, arg_2.b))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, 706f, -304f, -1304f) - var_0), var_0)), Struct_1(arg_2.a, true)));
    return -_wgslsmith_sub_i32(-((u_input.c.x << (arg_1.a % 32u)) << (select(var_3.a, 0u, true) % 32u)), u_input.c.x);
}

fn func_1() -> StorageBuffer {
    global3 = global4[_wgslsmith_index_u32(min(~1u, 28118u), 26u)];
    let var_0 = vec2<i32>(-1i) * -firstLeadingBit(u_input.c.xw);
    global4 = array<Struct_1, 26>();
    let var_1 = _wgslsmith_f_op_f32(480f * _wgslsmith_f_op_f32(f32(-1f) * -517f));
    var var_2 = _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.c.x << (~1u % 32u), func_4(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(79225u, u_input.d.x), 19u)], global0[_wgslsmith_index_u32(u_input.d.x, 19u)], func_2(-vec3<i32>(u_input.c.x, var_0.x, var_0.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, var_1, -894f, 498f)), global4[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(3479u, global3.a), vec2<u32>(1u, 25723u)), 26u)])), u_input.c.x), vec3<i32>(_wgslsmith_dot_vec2_i32(var_0, u_input.c.yw) >> (0u % 32u), max(abs(29749i), -27392i), _wgslsmith_clamp_i32(_wgslsmith_clamp_i32(u_input.b, u_input.c.x, var_0.x), _wgslsmith_add_i32(u_input.b, var_0.x), u_input.b)) | vec3<i32>(1i, u_input.c.x, firstLeadingBit(var_0.x)), u_input.c.wzy);
    return StorageBuffer(_wgslsmith_sub_i32(max(_wgslsmith_mult_i32(~var_2.x, ~var_2.x), ~(-6733i)), 2147483647i), vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1) + var_1))), 1583f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global4[_wgslsmith_index_u32(min(_wgslsmith_dot_vec4_u32(abs(_wgslsmith_div_vec4_u32(u_input.d, select(vec4<u32>(u_input.d.x, 1087u, u_input.a.x, global3.a), vec4<u32>(55929u, 54777u, u_input.a.x, 44820u), false))), _wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(u_input.d, u_input.d), vec4<u32>(1u, 3312u, _wgslsmith_dot_vec2_u32(vec2<u32>(global3.a, global3.a), vec2<u32>(global3.a, global3.a)), 1u))), u_input.d.x), 26u)];
    global4 = array<Struct_1, 26>();
    let var_1 = global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(global2[_wgslsmith_index_u32(var_0.a, 7u)], u_input.d), _wgslsmith_div_u32(firstLeadingBit(global3.a) ^ 41908u, 32477u)), 19u)];
    let var_2 = var_1.a;
    let var_3 = var_0.a;
    let x = u_input.a;
    s_output = func_1();
}

