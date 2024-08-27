struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: vec2<f32>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: bool,
}

struct Struct_4 {
    a: f32,
    b: u32,
    c: Struct_2,
    d: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<vec4<i32>, 21>;

var<private> global2: array<bool, 19>;

var<private> global3: array<vec4<i32>, 25> = array<vec4<i32>, 25>(vec4<i32>(-3739i, 25062i, 37664i, -19327i), vec4<i32>(6196i, 1i, -26641i, -1i), vec4<i32>(i32(-2147483648), 0i, 0i, 31693i), vec4<i32>(-52508i, 2147483647i, 2147483647i, 2147483647i), vec4<i32>(0i, 0i, 471i, -23710i), vec4<i32>(-11057i, 49852i, 49786i, -10884i), vec4<i32>(26809i, 54466i, i32(-2147483648), -20621i), vec4<i32>(2147483647i, -44270i, -18542i, 6144i), vec4<i32>(i32(-2147483648), -49836i, 0i, 0i), vec4<i32>(0i, -1i, 2147483647i, 735i), vec4<i32>(-1i, -200i, 60232i, 22i), vec4<i32>(1i, 18777i, 0i, 25843i), vec4<i32>(0i, 15253i, 0i, -1i), vec4<i32>(0i, -1i, -1i, -8418i), vec4<i32>(-9099i, 0i, 0i, -6732i), vec4<i32>(2147483647i, 61960i, 24415i, 1i), vec4<i32>(i32(-2147483648), -19809i, 48127i, 2351i), vec4<i32>(0i, -22774i, i32(-2147483648), i32(-2147483648)), vec4<i32>(28108i, -39390i, -40265i, 2147483647i), vec4<i32>(0i, 2147483647i, 1i, 0i), vec4<i32>(-5348i, i32(-2147483648), i32(-2147483648), 0i), vec4<i32>(-13272i, 1989i, 1058i, 4358i), vec4<i32>(0i, 2147483647i, 42432i, -12843i), vec4<i32>(2147483647i, i32(-2147483648), i32(-2147483648), -30897i), vec4<i32>(-1i, 17453i, -15035i, -16699i));

var<private> global4: array<vec2<i32>, 28> = array<vec2<i32>, 28>(vec2<i32>(i32(-2147483648), -7574i), vec2<i32>(0i, -30396i), vec2<i32>(18088i, i32(-2147483648)), vec2<i32>(0i, 1i), vec2<i32>(-18301i, 0i), vec2<i32>(i32(-2147483648), 1i), vec2<i32>(-5536i, 50976i), vec2<i32>(0i, 1i), vec2<i32>(26572i, 15322i), vec2<i32>(1i, 28410i), vec2<i32>(-1i, 35937i), vec2<i32>(-39105i, 2147483647i), vec2<i32>(-83743i, -28559i), vec2<i32>(-25449i, 1i), vec2<i32>(-1i, -1i), vec2<i32>(0i, 8949i), vec2<i32>(-61183i, 1i), vec2<i32>(0i, 2147483647i), vec2<i32>(i32(-2147483648), 1i), vec2<i32>(7822i, 0i), vec2<i32>(1i, 37402i), vec2<i32>(i32(-2147483648), 2147483647i), vec2<i32>(-2817i, 0i), vec2<i32>(2147483647i, 27235i), vec2<i32>(-1i, 0i), vec2<i32>(-1i, -2459i), vec2<i32>(-30429i, 1224i), vec2<i32>(-4471i, 1i));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: bool, arg_1: bool) -> f32 {
    global2 = array<bool, 19>();
    global1 = array<vec4<i32>, 21>();
    global1 = array<vec4<i32>, 21>();
    let var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1020f - _wgslsmith_f_op_f32(379f - -896f)) - _wgslsmith_f_op_f32(f32(-1f) * -751f)), -796f)));
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(exp2(var_0)), -187f, _wgslsmith_f_op_f32(sign(var_0)));
    return var_0;
}

fn func_2(arg_0: f32, arg_1: bool) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-755f))), _wgslsmith_f_op_f32(ceil(arg_0))));
    var var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -251f)))), Struct_1(any(vec2<bool>(true, true)) | (true && select(global2[_wgslsmith_index_u32(1u, 19u)], arg_1, arg_1))), vec2<f32>(_wgslsmith_f_op_f32(func_3(global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(~0u, u_input.a), 19u)], !global2[_wgslsmith_index_u32(u_input.a, 19u)])), _wgslsmith_f_op_f32(select(301f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), true))));
    global1 = array<vec4<i32>, 21>();
    global1 = array<vec4<i32>, 21>();
    var var_2 = arg_1;
    return Struct_2(vec2<f32>(var_0.x, arg_0), var_1.b, var_1.c);
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_4, arg_2: i32, arg_3: vec2<f32>) -> Struct_1 {
    let var_0 = select(~global4[_wgslsmith_index_u32(4294967295u ^ ~arg_1.b, 28u)], _wgslsmith_add_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(arg_2, -1i), _wgslsmith_add_vec2_i32(vec2<i32>(arg_2, arg_2), vec2<i32>(arg_2, -1409i))) ^ firstTrailingBit(~global4[_wgslsmith_index_u32(arg_1.b, 28u)]), vec2<i32>(_wgslsmith_sub_i32(-arg_2, ~40989i), firstLeadingBit(arg_2))), !arg_0);
    global2 = array<bool, 19>();
    let var_1 = ~_wgslsmith_mult_u32(~countOneBits(~1u), ~((arg_1.b & 0u) ^ ~4294967295u));
    global0 = ~_wgslsmith_add_i32(~abs(~var_0.x), -max(-12681i, 0i) | (countOneBits(arg_2) & 1i));
    var var_2 = arg_1.d;
    return Struct_1(!arg_1.d.b.a);
}

fn func_1(arg_0: vec4<u32>) -> Struct_1 {
    global4 = array<vec2<i32>, 28>();
    global2 = array<bool, 19>();
    let var_0 = _wgslsmith_dot_vec4_i32((vec4<i32>(1i, 1i, 1i, 1i) << (min(arg_0, _wgslsmith_sub_vec4_u32(vec4<u32>(1u, 1u, arg_0.x, 4294967295u), arg_0)) % vec4<u32>(32u))) ^ global1[_wgslsmith_index_u32(4294967295u, 21u)], global3[_wgslsmith_index_u32(abs(u_input.a), 25u)]);
    global2 = array<bool, 19>();
    global4 = array<vec2<i32>, 28>();
    return func_4(!select(select(select(vec2<bool>(global2[_wgslsmith_index_u32(1978u, 19u)], global2[_wgslsmith_index_u32(arg_0.x, 19u)]), vec2<bool>(global2[_wgslsmith_index_u32(u_input.b, 19u)], global2[_wgslsmith_index_u32(11077u, 19u)]), vec2<bool>(false, true)), !vec2<bool>(false, global2[_wgslsmith_index_u32(107841u, 19u)]), select(vec2<bool>(global2[_wgslsmith_index_u32(arg_0.x, 19u)], false), vec2<bool>(false, global2[_wgslsmith_index_u32(u_input.a, 19u)]), vec2<bool>(true, true))), vec2<bool>(true, all(vec3<bool>(global2[_wgslsmith_index_u32(u_input.b, 19u)], false, global2[_wgslsmith_index_u32(9131u, 19u)]))), vec2<bool>(any(vec2<bool>(global2[_wgslsmith_index_u32(arg_0.x, 19u)], false)), true)), Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -267f)), u_input.b, func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), global2[_wgslsmith_index_u32(~arg_0.x >> (4294967295u % 32u), 19u)]), func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -880f)), select(true, var_0 <= 1i, any(vec3<bool>(false, global2[_wgslsmith_index_u32(arg_0.x, 19u)], true))))), -2147483647i ^ -var_0, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-233f, 207f) * _wgslsmith_f_op_vec2_f32(round(vec2<f32>(846f, 998f)))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-419f, 149f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-552f, -606f)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(946f, 181f), vec2<f32>(1000f, 976f), global2[_wgslsmith_index_u32(0u, 19u)])))), vec2<bool>(false, func_2(_wgslsmith_f_op_f32(-298f - 1119f), false & global2[_wgslsmith_index_u32(4294967295u, 19u)]).b.a))));
}

fn func_5(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: vec3<bool>) -> Struct_1 {
    var var_0 = arg_1.zz;
    let var_1 = _wgslsmith_mod_u32(abs(0u), ~(~(~u_input.b)));
    var_0 = arg_0.a;
    var var_2 = ~_wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(~var_1, u_input.b, min(18390u, 13431u), u_input.b), ~(~vec4<u32>(var_1, var_1, 46042u, var_1))), ~reverseBits(vec4<u32>(1u, var_1, 4531u, 49745u)));
    global2 = array<bool, 19>();
    return arg_0.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(209f + 646f) + _wgslsmith_f_op_f32(192f - 553f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1231f) + _wgslsmith_f_op_f32(ceil(-1418f))), false)))), 87587u, Struct_2(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1153f + 426f)), 1f), func_5(Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 735f)), func_1(vec4<u32>(u_input.a, u_input.b, u_input.b, 56443u)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1210f, -1255f))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-578f, -278f, -900f)), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1228f, 1500f, -960f)))), vec3<bool>(false, true, !global2[_wgslsmith_index_u32(u_input.a, 19u)])), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(881f, 371f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-560f, 1575f) + vec2<f32>(-100f, -707f))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-923f, -508f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1438f, 386f))))), func_2(1f, true));
    var var_1 = Struct_1(true);
    global3 = array<vec4<i32>, 25>();
    let var_2 = _wgslsmith_add_u32(u_input.a, 40422u);
    let var_3 = Struct_4(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(955f * _wgslsmith_f_op_f32(var_0.d.c.x + -118f)), var_0.c.a.x)), ~(4294967295u << (min(35207u, u_input.b) % 32u)) << (max(~abs(64285u), ~_wgslsmith_mult_u32(u_input.b, u_input.b)) % 32u), func_2(_wgslsmith_f_op_f32(f32(-1f) * -1524f), var_0.b <= var_0.b), var_0.d);
    global1 = array<vec4<i32>, 21>();
    var var_4 = -9886i;
    let x = u_input.a;
    s_output = StorageBuffer(~1u, ~(~var_0.b));
}

