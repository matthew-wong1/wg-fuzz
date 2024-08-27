struct Struct_1 {
    a: vec4<bool>,
    b: u32,
    c: bool,
    d: vec4<bool>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: i32,
    d: vec4<i32>,
    e: vec4<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<bool>,
    c: vec2<i32>,
    d: vec4<f32>,
    e: f32,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<i32>,
    c: u32,
}

struct Struct_5 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec3<u32>,
    d: vec2<i32>,
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

var<private> global0: Struct_1;

var<private> global1: array<vec2<i32>, 4> = array<vec2<i32>, 4>(vec2<i32>(-1i, 2147483647i), vec2<i32>(0i, -45213i), vec2<i32>(1i, -4668i), vec2<i32>(2147483647i, -24053i));

var<private> global2: array<vec2<i32>, 26> = array<vec2<i32>, 26>(vec2<i32>(1i, -7159i), vec2<i32>(42232i, 16817i), vec2<i32>(i32(-2147483648), 1i), vec2<i32>(i32(-2147483648), 17908i), vec2<i32>(7957i, -1i), vec2<i32>(19935i, 1i), vec2<i32>(-35587i, 2147483647i), vec2<i32>(1i, 57590i), vec2<i32>(0i, 28325i), vec2<i32>(1542i, 18294i), vec2<i32>(-1i, -23273i), vec2<i32>(-47860i, -1i), vec2<i32>(1i, -11363i), vec2<i32>(2147483647i, 1i), vec2<i32>(-2333i, 2147483647i), vec2<i32>(-19073i, 50413i), vec2<i32>(-56065i, 2147483647i), vec2<i32>(1i, 1i), vec2<i32>(-65380i, i32(-2147483648)), vec2<i32>(2147483647i, 2147483647i), vec2<i32>(-24235i, -1i), vec2<i32>(-1i, -1i), vec2<i32>(-1i, 59639i), vec2<i32>(i32(-2147483648), 13086i), vec2<i32>(-44690i, 6710i), vec2<i32>(0i, 2147483647i));

var<private> global3: array<vec4<bool>, 19>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: i32, arg_3: i32) -> vec4<f32> {
    let var_0 = arg_0;
    global3 = array<vec4<bool>, 19>();
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-768f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(509f)))))))));
    let var_2 = Struct_1(vec4<bool>(!(!select(true, false, global0.a.x)), true, true, any(vec2<bool>(true, !arg_0.d.x))), ~countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(3757u, global0.b, 16951u, 40427u), vec4<u32>(0u, arg_0.b, var_0.b, var_0.b)) >> (arg_1.x % 32u)), select(true, false, arg_0.a.x), select(vec4<bool>(-1i < u_input.d.x, !(!global0.c), true, 30717i <= u_input.b), !select(!arg_0.d, !vec4<bool>(global0.d.x, true, arg_0.a.x, true), arg_0.a), true));
    var var_3 = _wgslsmith_sub_i32(u_input.d.x, ~(-1i));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-1094f + 943f), _wgslsmith_f_op_f32(max(493f, var_1)), _wgslsmith_f_op_f32(max(1254f, var_1)), var_1), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-850f, 990f, var_1, 527f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(216f, var_1, -935f, var_1), vec4<f32>(1607f, var_1, var_1, var_1)))) + vec4<f32>(892f, -1000f, var_1, 1153f))));
}

fn func_2(arg_0: f32, arg_1: vec2<f32>) -> Struct_5 {
    var var_0 = 149f;
    var var_1 = Struct_4(Struct_1(!(!global0.d), 95072u, true, vec4<bool>(!(!global0.d.x), !any(global0.a.zyw), 4294967295u <= u_input.a.x, true)), firstTrailingBit(vec3<i32>(reverseBits(u_input.b), 2147483647i, u_input.b)) ^ _wgslsmith_mult_vec3_i32(firstLeadingBit(~vec3<i32>(u_input.b, 66i, u_input.d.x)), -vec3<i32>(-42482i, u_input.d.x, 2147483647i) ^ _wgslsmith_div_vec3_i32(vec3<i32>(u_input.b, u_input.b, -27138i), vec3<i32>(u_input.d.x, -23503i, -1i))), 20103u);
    var_1 = Struct_4(Struct_1(select(vec4<bool>(arg_0 != -225f, u_input.a.x != var_1.c, any(vec3<bool>(var_1.a.d.x, true, true)), false | global0.c), select(global3[_wgslsmith_index_u32(78561u, 19u)], vec4<bool>(true, true, true, true), var_1.a.a), true), 29137u, all(vec2<bool>(true, all(vec3<bool>(true, false, global0.d.x)))), vec4<bool>(!global0.a.x, !all(global0.d.zz), global0.c, global0.a.x)), var_1.b, _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.c.x, 92353u, 1u), ~(vec3<u32>(13022u, var_1.c, 11211u) << (u_input.a % vec3<u32>(32u)))) | u_input.a.x);
    let var_2 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) * -1586f) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(1669f, arg_1.x)), _wgslsmith_f_op_f32(select(arg_1.x, arg_1.x, var_1.a.a.x))))), _wgslsmith_f_op_f32(sign(arg_0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) - 965f)), var_1.a, _wgslsmith_add_i32(~(~var_1.b.x) ^ var_1.b.x, 4990i), vec4<i32>(u_input.b, u_input.d.x, u_input.d.x, ~(-_wgslsmith_mod_i32(var_1.b.x, 2147483647i))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_0, 423f, 292f, arg_0), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_1.x, 258f, arg_0))))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-700f, _wgslsmith_div_f32(1074f, arg_1.x), _wgslsmith_f_op_f32(f32(-1f) * -1179f), _wgslsmith_f_op_f32(trunc(-174f))) * _wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(vec4<f32>(-706f, -660f, -385f, arg_1.x), vec4<f32>(arg_0, arg_0, arg_0, 1000f)), _wgslsmith_f_op_vec4_f32(func_3(var_1.a, u_input.a.yx, u_input.b, -83777i)))))));
    let var_3 = 0u;
    return Struct_5(vec2<u32>(var_3, _wgslsmith_div_u32(~var_3 | 21741u, ~abs(1u))));
}

fn func_4(arg_0: Struct_5, arg_1: Struct_1) -> bool {
    global3 = array<vec4<bool>, 19>();
    global2 = array<vec2<i32>, 26>();
    let var_0 = u_input.a.x;
    global3 = array<vec4<bool>, 19>();
    let var_1 = u_input.d.x;
    return global0.c;
}

fn func_5(arg_0: bool, arg_1: Struct_1, arg_2: i32, arg_3: f32) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(trunc(arg_3));
    let var_1 = _wgslsmith_dot_vec4_u32(countOneBits(~(vec4<u32>(0u, 52118u, u_input.a.x, u_input.a.x) << (vec4<u32>(1u, 4294967295u, arg_1.b, 4294967295u) % vec4<u32>(32u)))), ~(~vec4<u32>(arg_1.b, 4294967295u, arg_1.b, 4294967295u))) << ((4294967295u | arg_1.b) % 32u);
    var var_2 = ~(select(_wgslsmith_add_vec2_i32(select(vec2<i32>(11543i, -2147483647i), global1[_wgslsmith_index_u32(0u, 4u)], true), _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.d.x, u_input.d.x), global2[_wgslsmith_index_u32(arg_1.b, 26u)], u_input.d)), vec2<i32>(-7618i, ~(-2147483647i)), global0.d.yz) & select(-global1[_wgslsmith_index_u32(4294967295u, 4u)] << (firstTrailingBit(u_input.c.xy) % vec2<u32>(32u)), ~vec2<i32>(u_input.b, arg_2), !select(arg_1.d.xx, vec2<bool>(arg_1.c, false), vec2<bool>(true, global0.d.x))));
    var_0 = arg_3;
    let var_3 = vec2<u32>(var_1, _wgslsmith_mult_u32(var_1, var_1));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-476f + -1000f) * _wgslsmith_f_op_f32(trunc(-1000f))), -227f))) * arg_3);
}

fn func_1() -> vec4<i32> {
    global0 = Struct_1(global0.d, 4294967295u, (true && global0.d.x) && (false && (min(14682i, -8711i) < u_input.b)), global0.d);
    global2 = array<vec2<i32>, 26>();
    global3 = array<vec4<bool>, 19>();
    var var_0 = _wgslsmith_f_op_f32(func_5(all(global3[_wgslsmith_index_u32(global0.b, 19u)]) | true, Struct_1(select(global0.d, global0.d, func_4(func_2(-584f, vec2<f32>(1000f, -1165f)), Struct_1(global0.d, 17695u, false, vec4<bool>(global0.d.x, true, false, false)))), select(max(global0.b, countOneBits(global0.b)), 1u, true), global0.d.x, select(global3[_wgslsmith_index_u32(~u_input.c.x, 19u)], select(select(vec4<bool>(global0.d.x, global0.c, false, true), global3[_wgslsmith_index_u32(0u, 19u)], vec4<bool>(global0.a.x, global0.c, global0.a.x, false)), global3[_wgslsmith_index_u32(u_input.a.x, 19u)], vec4<bool>(false, global0.d.x, global0.c, true)), global3[_wgslsmith_index_u32(abs(0u), 19u)])), u_input.b, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_vec4_f32(func_3(Struct_1(global0.d, _wgslsmith_add_u32(67121u, u_input.a.x), any(global0.a.yxx), vec4<bool>(true, global0.d.x, global0.a.x, global0.d.x)), vec2<u32>(func_2(308f, vec2<f32>(-284f, 1126f)).a.x, ~1u), firstLeadingBit(-1i | u_input.d.x), u_input.d.x)).x))));
    global1 = array<vec2<i32>, 4>();
    return select(_wgslsmith_div_vec4_i32(~(-(vec4<i32>(u_input.b, u_input.b, u_input.d.x, 2147483647i) >> (vec4<u32>(global0.b, u_input.a.x, 21039u, u_input.c.x) % vec4<u32>(32u)))), min(vec4<i32>(~(-1i), u_input.d.x, _wgslsmith_div_i32(u_input.d.x, 1i), u_input.d.x), vec4<i32>(_wgslsmith_mult_i32(u_input.d.x, u_input.d.x), u_input.d.x << (global0.b % 32u), 36480i << (0u % 32u), i32(-1i) * -24595i))), (~(~vec4<i32>(u_input.b, u_input.d.x, u_input.d.x, u_input.b)) | (vec4<i32>(-1i) * -vec4<i32>(-2147483647i, 11511i, 12283i, 6464i))) & _wgslsmith_sub_vec4_i32(abs(vec4<i32>(-1i, 33628i, u_input.d.x, u_input.b)), vec4<i32>(_wgslsmith_div_i32(u_input.d.x, -1i), u_input.b, u_input.b, _wgslsmith_div_i32(1381i, u_input.b))), any(select(select(vec4<bool>(true, global0.a.x, global0.c, true), vec4<bool>(true, global0.d.x, false, false), !vec4<bool>(global0.d.x, global0.c, true, global0.d.x)), select(vec4<bool>(true, global0.c, false, true), select(global3[_wgslsmith_index_u32(u_input.a.x, 19u)], global0.a, vec4<bool>(false, false, global0.a.x, global0.d.x)), !global3[_wgslsmith_index_u32(45162u, 19u)]), vec4<bool>(true, true, !global0.a.x, global0.a.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    global3 = array<vec4<bool>, 19>();
    let var_1 = !(!(u_input.b >= var_0.x));
    global3 = array<vec4<bool>, 19>();
    var var_2 = 140f;
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-644f + -360f) - 1f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-960f * -719f)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-925f, _wgslsmith_f_op_f32(f32(-1f) * -1781f))) + _wgslsmith_f_op_f32(floor(650f)))));
    var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * 551f)));
    var_3 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1139f, -2056f) * -865f)), 333f));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-193f, -894f, -1134f, -111f), vec4<f32>(-232f, -432f, 1448f, -994f)) - vec4<f32>(1990f, 1000f, -1102f, -236f)) + vec4<f32>(_wgslsmith_f_op_f32(trunc(-1567f)), _wgslsmith_f_op_vec4_f32(func_3(Struct_1(vec4<bool>(false, var_1, global0.a.x, false), 10806u, global0.a.x, global0.a), u_input.a.zz, -21945i, 9525i)).x, -107f, _wgslsmith_f_op_f32(min(-686f, -1908f))))));
}

