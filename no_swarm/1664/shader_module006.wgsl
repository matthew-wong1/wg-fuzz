struct Struct_1 {
    a: i32,
    b: vec2<bool>,
    c: vec3<i32>,
}

struct Struct_2 {
    a: bool,
    b: vec3<bool>,
    c: i32,
    d: vec3<u32>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: u32,
    c: Struct_1,
    d: bool,
}

struct Struct_4 {
    a: Struct_1,
    b: bool,
    c: f32,
    d: vec3<bool>,
    e: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec3<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: array<vec3<f32>, 14> = array<vec3<f32>, 14>(vec3<f32>(440f, 654f, 703f), vec3<f32>(-1400f, -1593f, -1159f), vec3<f32>(-415f, -508f, -1383f), vec3<f32>(-2403f, 377f, -830f), vec3<f32>(-208f, -237f, -2341f), vec3<f32>(937f, -1000f, -1000f), vec3<f32>(-853f, -871f, -457f), vec3<f32>(100f, -278f, -1154f), vec3<f32>(-589f, -1000f, 234f), vec3<f32>(251f, 287f, -1804f), vec3<f32>(537f, -538f, 1000f), vec3<f32>(-468f, 2299f, 241f), vec3<f32>(-1729f, -1360f, -896f), vec3<f32>(393f, -1167f, 994f));

var<private> global2: array<bool, 11>;

var<private> global3: array<bool, 26> = array<bool, 26>(true, false, false, false, true, true, true, false, true, false, false, true, false, false, false, true, true, true, true, true, true, true, false, false, false, true);

var<private> global4: array<vec4<i32>, 19> = array<vec4<i32>, 19>(vec4<i32>(-1i, -1i, 2147483647i, -25880i), vec4<i32>(-13548i, -1i, 0i, 1i), vec4<i32>(-1i, 2147483647i, 8250i, -55395i), vec4<i32>(2147483647i, -1i, -31539i, -51173i), vec4<i32>(0i, 2147483647i, -44555i, i32(-2147483648)), vec4<i32>(-28863i, -64186i, 0i, -3675i), vec4<i32>(1714i, 1i, i32(-2147483648), 7375i), vec4<i32>(2147483647i, 3808i, 1999i, 0i), vec4<i32>(-83735i, -24206i, -1i, i32(-2147483648)), vec4<i32>(1i, 1i, -4481i, 20361i), vec4<i32>(0i, 14473i, i32(-2147483648), -1i), vec4<i32>(i32(-2147483648), 1i, -2626i, i32(-2147483648)), vec4<i32>(41344i, -1i, -16269i, -1i), vec4<i32>(40214i, 5238i, 72252i, 1i), vec4<i32>(i32(-2147483648), 46736i, 2147483647i, -37499i), vec4<i32>(i32(-2147483648), -10153i, -36010i, i32(-2147483648)), vec4<i32>(-39010i, 0i, 31988i, 30621i), vec4<i32>(8949i, -15446i, 31899i, 21812i), vec4<i32>(2147483647i, 18576i, -26384i, i32(-2147483648)));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> i32 {
    var var_0 = Struct_1(u_input.c.x, vec2<bool>(false, any(vec4<bool>(u_input.d.x <= 88095u, true, all(vec3<bool>(global3[_wgslsmith_index_u32(18435u, 26u)], true, true)), global2[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.d.x, u_input.d.x), 11u)]))), vec3<i32>(i32(-1i) * -2801i, reverseBits(-52674i) & _wgslsmith_mult_i32(~1i, u_input.c.x & -1i), _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(abs(u_input.c.zz), vec2<i32>(-2147483647i, 1i)), _wgslsmith_div_i32(countOneBits(-2147483647i), 42262i))));
    global3 = array<bool, 26>();
    var_0 = Struct_1(-24068i, !(!(!var_0.b)), u_input.c);
    let var_1 = vec4<bool>(true, !(2147483647i >= (max(0i, 12137i) >> (~u_input.a.x % 32u))), global3[_wgslsmith_index_u32(10157u, 26u)], 23815u >= _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(u_input.a, u_input.a, u_input.d.yy), vec2<u32>(~0u, 1u)));
    global1 = array<vec3<f32>, 14>();
    return u_input.c.x;
}

fn func_2() -> vec2<f32> {
    var var_0 = u_input.a.x;
    let var_1 = ~_wgslsmith_div_i32(abs(~u_input.c.x), 0i ^ func_3()) & -1i;
    let var_2 = Struct_1(-1i, select(vec2<bool>(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(~0u, _wgslsmith_add_u32(u_input.b, 4294967295u)), 11u)], false), select(!(!vec2<bool>(global2[_wgslsmith_index_u32(12508u, 11u)], global3[_wgslsmith_index_u32(39455u, 26u)])), !vec2<bool>(global3[_wgslsmith_index_u32(u_input.a.x, 26u)], global2[_wgslsmith_index_u32(1u, 11u)]), all(select(vec4<bool>(global3[_wgslsmith_index_u32(u_input.a.x, 26u)], false, false, true), vec4<bool>(global3[_wgslsmith_index_u32(66316u, 26u)], true, global2[_wgslsmith_index_u32(4294967295u, 11u)], global3[_wgslsmith_index_u32(34201u, 26u)]), vec4<bool>(true, global2[_wgslsmith_index_u32(u_input.b, 11u)], false, true)))), !vec2<bool>(all(vec3<bool>(false, true, true)), any(vec4<bool>(true, true, true, global2[_wgslsmith_index_u32(u_input.a.x, 11u)])))), -vec3<i32>(~u_input.c.x, _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 2147483647i, var_1) >> (u_input.d % vec3<u32>(32u)), u_input.c | u_input.c), var_1));
    let var_3 = select(var_2.b, var_2.b, select(!(!var_2.b), vec2<bool>(all(select(vec4<bool>(global2[_wgslsmith_index_u32(u_input.b, 11u)], true, false, global3[_wgslsmith_index_u32(62530u, 26u)]), vec4<bool>(global3[_wgslsmith_index_u32(4294967295u, 26u)], false, var_2.b.x, true), true)), any(!var_2.b)), vec2<bool>(true, !any(vec3<bool>(true, global3[_wgslsmith_index_u32(1u, 26u)], global2[_wgslsmith_index_u32(u_input.d.x, 11u)])))));
    var var_4 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(148f + -699f)), -1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(984f - -851f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1920f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(106f - 1828f) - 1f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1672f + -1109f))) - -993f))));
    return var_4.zy;
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_3, arg_2: Struct_1) -> Struct_2 {
    global0 = any(vec2<bool>(global3[_wgslsmith_index_u32(0u, 26u)], arg_1.b == _wgslsmith_div_u32(u_input.a.x, 0u)));
    var var_0 = _wgslsmith_div_f32(1686f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_0.x + _wgslsmith_f_op_f32(arg_0.x + arg_0.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x))));
    var var_1 = Struct_4(arg_1.c, arg_2.b.x, arg_0.x, vec3<bool>(reverseBits(-u_input.c.x) > max(4819i, -arg_1.a.x), !(_wgslsmith_f_op_f32(-345f + arg_0.x) >= _wgslsmith_f_op_f32(f32(-1f) * -1306f)), all(select(vec4<bool>(global2[_wgslsmith_index_u32(arg_1.b, 11u)], arg_1.d, true, true), select(vec4<bool>(false, true, false, false), vec4<bool>(true, global3[_wgslsmith_index_u32(arg_1.b, 26u)], false, global3[_wgslsmith_index_u32(u_input.a.x, 26u)]), arg_2.b.x), select(vec4<bool>(false, global3[_wgslsmith_index_u32(arg_1.b, 26u)], global2[_wgslsmith_index_u32(1u, 11u)], false), vec4<bool>(global2[_wgslsmith_index_u32(arg_1.b, 11u)], true, true, arg_1.c.b.x), arg_1.d)))), max(_wgslsmith_add_i32(_wgslsmith_clamp_i32(firstLeadingBit(u_input.c.x), _wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.a.x, arg_1.c.a, u_input.c.x, u_input.c.x), global4[_wgslsmith_index_u32(18424u, 19u)]), ~arg_2.c.x), 2147483647i), arg_2.a));
    let var_2 = ~var_1.a.c.x;
    var var_3 = Struct_2(any(vec2<bool>(true, arg_1.c.b.x)), !select(!select(var_1.d, var_1.d, var_1.a.b.x), var_1.d, false), select(0i, arg_1.a.x, true), ~u_input.d | vec3<u32>(~u_input.b ^ _wgslsmith_dot_vec3_u32(u_input.d, vec3<u32>(31050u, 17893u, 38730u)), _wgslsmith_sub_u32(firstTrailingBit(u_input.d.x), abs(32362u)), countOneBits(19064u)));
    return Struct_2(false, select(select(vec3<bool>(global3[_wgslsmith_index_u32(firstTrailingBit(u_input.d.x), 26u)], true, !var_1.a.b.x), var_3.b, !all(arg_2.b)), var_3.b, var_3.a), firstLeadingBit(-1i), abs(max(vec3<u32>(111387u, _wgslsmith_add_u32(54013u, u_input.b), _wgslsmith_sub_u32(var_3.d.x, 1u)), u_input.d & select(u_input.d, vec3<u32>(arg_1.b, var_3.d.x, 0u), var_3.b))));
}

fn func_1() -> Struct_2 {
    let var_0 = Struct_3(firstTrailingBit(_wgslsmith_sub_vec2_i32(_wgslsmith_mod_vec2_i32(u_input.c.yx, u_input.c.xz) << (u_input.a % vec2<u32>(32u)), ~u_input.c.zz)), 59527u, Struct_1(-_wgslsmith_clamp_i32(u_input.c.x, _wgslsmith_sub_i32(2147483647i, u_input.c.x), 5753i), vec2<bool>(true, true), ~(u_input.c ^ -u_input.c)), false);
    global3 = array<bool, 26>();
    let var_1 = func_4(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(round(564f)), _wgslsmith_f_op_f32(min(-901f, 368f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_2()))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1442f, -504f) * vec2<f32>(543f, 419f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-624f, 1523f))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1941f, -1187f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1163f, -661f)))), var_0.c.b)), Struct_3(abs(reverseBits(reverseBits(vec2<i32>(-1i, -1i)))), _wgslsmith_add_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.b, var_0.b, u_input.a.x, 1u), vec4<u32>(var_0.b, 1u, 11808u, var_0.b)), 1u), var_0.c, !var_0.c.b.x), var_0.c);
    var var_2 = Struct_4(Struct_1(min(min(var_0.c.c.x, _wgslsmith_dot_vec3_i32(vec3<i32>(var_1.c, -28882i, -71814i), var_0.c.c)), abs(1i)), select(var_1.b.zx, var_0.c.b, var_1.b.yy), -vec3<i32>(var_0.a.x, u_input.c.x, ~var_0.a.x)), _wgslsmith_f_op_f32(-2763f + 1340f) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1434f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1185f)), select(!vec3<bool>(false, true, var_0.c.b.x), select(var_1.b, vec3<bool>(true, any(var_1.b), global2[_wgslsmith_index_u32(16041u, 11u)]), var_1.b), vec3<bool>(_wgslsmith_mult_u32(var_0.b, var_1.d.x) <= 14872u, func_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(687f, 1455f)), var_0, Struct_1(var_1.c, var_0.c.b, vec3<i32>(25692i, 0i, 23952i))).a, func_4(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-508f, 1965f))), var_0, Struct_1(-37043i, vec2<bool>(global3[_wgslsmith_index_u32(18295u, 26u)], var_0.c.b.x), var_0.c.c)).b.x)), -36254i);
    var var_3 = 49166u;
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<bool, 26>();
    var var_0 = Struct_1(u_input.c.x, vec2<bool>(global2[_wgslsmith_index_u32(~u_input.a.x, 11u)], !select(any(vec2<bool>(global2[_wgslsmith_index_u32(0u, 11u)], global2[_wgslsmith_index_u32(1u, 11u)])), true, true)), u_input.c);
    var var_1 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(max(u_input.b, u_input.b), var_1.c);
}

