struct Struct_1 {
    a: vec3<bool>,
    b: vec3<bool>,
    c: i32,
    d: bool,
    e: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: bool,
    d: bool,
    e: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<f32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 19> = array<vec2<u32>, 19>(vec2<u32>(10981u, 0u), vec2<u32>(25968u, 48430u), vec2<u32>(0u, 0u), vec2<u32>(1u, 7268u), vec2<u32>(897u, 0u), vec2<u32>(1u, 26442u), vec2<u32>(1u, 15786u), vec2<u32>(0u, 1u), vec2<u32>(4294967295u, 0u), vec2<u32>(23291u, 1u), vec2<u32>(37129u, 0u), vec2<u32>(1u, 961u), vec2<u32>(1u, 66264u), vec2<u32>(1361u, 0u), vec2<u32>(4294967295u, 1u), vec2<u32>(1u, 4294967295u), vec2<u32>(4294967295u, 19555u), vec2<u32>(37075u, 58160u), vec2<u32>(4294967295u, 42567u));

var<private> global1: Struct_3;

var<private> global2: Struct_4 = Struct_4(Struct_1(vec3<bool>(false, true, true), vec3<bool>(true, true, false), 22943i, false, vec2<i32>(i32(-2147483648), -34234i)), vec2<f32>(-1000f, 1409f), Struct_1(vec3<bool>(true, false, false), vec3<bool>(true, false, true), 2147483647i, false, vec2<i32>(14021i, -1i)));

var<private> global3: array<vec4<f32>, 30> = array<vec4<f32>, 30>(vec4<f32>(1316f, -148f, 351f, -1809f), vec4<f32>(605f, 1000f, -1629f, 119f), vec4<f32>(-278f, 1956f, 719f, -2423f), vec4<f32>(586f, 1000f, 1581f, 876f), vec4<f32>(-1000f, 758f, -608f, -265f), vec4<f32>(1543f, -1836f, -117f, 906f), vec4<f32>(-487f, -596f, 274f, -520f), vec4<f32>(-1507f, -762f, 1566f, 782f), vec4<f32>(874f, 455f, -410f, 1000f), vec4<f32>(644f, -832f, 2401f, -1204f), vec4<f32>(-1039f, 160f, 1225f, -1611f), vec4<f32>(318f, -1385f, 3408f, 1000f), vec4<f32>(1222f, 1541f, 469f, 1234f), vec4<f32>(-478f, -651f, 288f, -718f), vec4<f32>(1418f, -1414f, 1028f, -1000f), vec4<f32>(-102f, -836f, -155f, 406f), vec4<f32>(119f, 638f, 421f, -1672f), vec4<f32>(-112f, 2548f, 206f, -595f), vec4<f32>(-565f, 959f, 1356f, 2203f), vec4<f32>(-1849f, -805f, -824f, 152f), vec4<f32>(1000f, 1000f, -300f, 1754f), vec4<f32>(-663f, -695f, 975f, 1225f), vec4<f32>(-381f, 325f, -2014f, 802f), vec4<f32>(-709f, -1446f, -1416f, -335f), vec4<f32>(-302f, -805f, -1424f, -338f), vec4<f32>(-118f, -288f, 114f, 290f), vec4<f32>(-818f, 840f, -1718f, 724f), vec4<f32>(715f, 1269f, -193f, -938f), vec4<f32>(414f, -1026f, 176f, 1087f), vec4<f32>(873f, -853f, 784f, -871f));

var<private> global4: Struct_1;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3() -> u32 {
    global2 = Struct_4(Struct_1(!global4.b, !vec3<bool>(false, true, all(vec2<bool>(global2.a.a.x, global4.b.x))), _wgslsmith_sub_i32(global4.e.x, global4.e.x & global1.b.c) ^ ~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, 1i, 21560i, u_input.a), vec4<i32>(global1.c.e, u_input.a, 1i, global2.c.c)), any(vec4<bool>(global2.a.a.x, true, global2.a.d & true, global2.c.b.x)), ~(-global1.c.a.e) ^ vec2<i32>(global4.e.x, _wgslsmith_mod_i32(-1i, global1.a.e.x))), global2.b, Struct_1(select(select(global4.b, !global2.a.b, !global1.a.a), vec3<bool>(global2.a.d, true, true), global4.a.x), !global4.b, ~(-1i), true, _wgslsmith_sub_vec2_i32((global1.c.a.e | global4.e) ^ (global1.a.e << (vec2<u32>(26458u, 16307u) % vec2<u32>(32u))), _wgslsmith_clamp_vec2_i32(vec2<i32>(16278i, global1.b.c), global4.e, vec2<i32>(u_input.a, 34131i)) ^ global4.e)));
    var var_0 = -810f;
    var var_1 = Struct_1(vec3<bool>(any(!select(vec4<bool>(false, global2.c.d, true, true), vec4<bool>(false, global1.a.b.x, global1.c.c, false), vec4<bool>(global2.c.d, false, true, global4.a.x))), all(global4.a.xz), global4.a.x && global2.c.b.x), select(global1.a.b, select(global1.c.a.a, vec3<bool>(true, 1645f < global2.b.x, false), !(!vec3<bool>(false, global2.c.a.x, false))), select(!global2.a.a, vec3<bool>(global4.d, !global4.b.x, false), !select(global1.a.a, global2.c.b, true))), _wgslsmith_add_i32(global4.c, 1i), true, vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(abs(77i), firstLeadingBit(global1.c.e)), vec2<i32>(~(-33063i), ~u_input.a)), firstTrailingBit(global4.c)));
    return 18987u;
}

fn func_2(arg_0: vec2<bool>) -> Struct_1 {
    let var_0 = _wgslsmith_clamp_vec4_u32(vec4<u32>(abs(~0u), 1u, _wgslsmith_sub_u32(23017u, 0u), func_3()) ^ _wgslsmith_add_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 9645u, max(8505u, 1u), 0u)), vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(~firstTrailingBit(2210u), _wgslsmith_sub_u32(reverseBits(func_3()), _wgslsmith_div_u32(1u, ~26990u)), ~_wgslsmith_sub_u32(_wgslsmith_clamp_u32(7305u, 17730u, 0u), _wgslsmith_dot_vec3_u32(vec3<u32>(7073u, 0u, 44096u), vec3<u32>(3044u, 1u, 15093u))), _wgslsmith_dot_vec2_u32(global0[_wgslsmith_index_u32(~2930u, 19u)] & ~global0[_wgslsmith_index_u32(10990u, 19u)], vec2<u32>(abs(25472u), select(37188u, 0u, global1.c.d)))));
    var var_1 = global2.c;
    global3 = array<vec4<f32>, 30>();
    var_1 = Struct_1(select(select(!var_1.b, select(select(vec3<bool>(var_1.b.x, global1.a.b.x, var_1.b.x), global1.c.a.a, vec3<bool>(global4.d, global1.a.a.x, true)), select(vec3<bool>(var_1.a.x, global4.a.x, true), vec3<bool>(false, global4.b.x, false), true), true), !all(vec2<bool>(arg_0.x, global2.a.a.x))), select(global1.b.a, !(!vec3<bool>(global4.d, global2.a.d, false)), select(vec3<bool>(global4.b.x, arg_0.x, var_1.d), select(global1.c.a.a, global1.c.a.b, vec3<bool>(global2.c.d, true, arg_0.x)), !global2.c.d)), var_1.d), !select(!select(vec3<bool>(false, global1.c.a.d, var_1.b.x), global2.c.a, true), !vec3<bool>(global4.b.x, var_1.b.x, arg_0.x), select(!vec3<bool>(global1.b.b.x, global4.b.x, true), global2.a.b, vec3<bool>(arg_0.x, global2.c.a.x, global2.a.a.x))), select(var_1.e.x, global4.c, global1.a.a.x), global4.b.x, global4.e);
    var var_2 = !global1.b.b;
    return Struct_1(var_1.b, !select(global4.a, var_1.a, !global1.a.d), reverseBits(14841i), true, vec2<i32>(~reverseBits(-2147483647i), -12828i));
}

fn func_1() -> Struct_1 {
    global1 = Struct_3(Struct_1(vec3<bool>(true, true, global1.a.d), !global1.b.b, global2.c.c, all(vec3<bool>(false, true, true)), ~(~global4.e)), func_2(global4.b.xx), global1.c);
    let var_0 = global2.a.e.x | (u_input.a << (0u % 32u));
    let var_1 = Struct_4(global1.c.a, global2.b, Struct_1(!vec3<bool>(true, false, !global2.a.b.x), select(func_2(global1.b.b.xx).b, select(!global1.c.a.a, select(vec3<bool>(global2.c.a.x, global2.c.d, true), vec3<bool>(global1.a.a.x, global1.b.b.x, false), true), vec3<bool>(global4.d, true, global4.b.x)), !(!global1.a.a.x)), var_0, _wgslsmith_f_op_f32(floor(-462f)) != _wgslsmith_f_op_f32(f32(-1f) * -899f), _wgslsmith_add_vec2_i32(global1.b.e, ~(~vec2<i32>(-1i, -2147483647i)))));
    var var_2 = false;
    var var_3 = _wgslsmith_add_vec3_i32(firstTrailingBit(vec3<i32>(1i, 27636i, -2147483647i)), vec3<i32>(reverseBits(-func_2(vec2<bool>(global1.b.d, false)).e.x), -25890i, var_1.c.c));
    return var_1.c;
}

fn func_4(arg_0: Struct_3, arg_1: vec2<f32>) -> Struct_1 {
    return global2.a;
}

fn func_5(arg_0: vec3<i32>, arg_1: Struct_4, arg_2: f32) -> Struct_1 {
    var var_0 = global1.a.a;
    let var_1 = select(-_wgslsmith_add_vec4_i32(~(-vec4<i32>(arg_0.x, 44144i, 1i, arg_0.x)), min(vec4<i32>(arg_0.x, arg_0.x, global1.b.c, arg_1.a.e.x) & vec4<i32>(u_input.a, global4.c, global1.a.c, -1i), min(vec4<i32>(-2147483647i, global2.c.e.x, global1.b.c, 0i), vec4<i32>(u_input.a, global2.c.e.x, -2147483647i, 2577i)))), vec4<i32>(-1i) * -(~vec4<i32>(-1i, global2.c.e.x, -23869i, arg_0.x) | ~vec4<i32>(-41152i, 36058i, -1i, global4.e.x)), any(!global2.c.b.yx));
    let var_2 = func_1();
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1397f, global2.b.x, arg_2, -343f), global3[_wgslsmith_index_u32(1u, 30u)])))) + global3[_wgslsmith_index_u32(0u, 30u)]));
    var_0 = select(vec3<bool>(true, true, true), !(!func_1().b), vec3<bool>(true, func_4(Struct_3(Struct_1(vec3<bool>(false, false, false), arg_1.c.a, -1i, arg_1.c.b.x, arg_1.a.e), Struct_1(vec3<bool>(var_2.a.x, var_0.x, global1.b.b.x), vec3<bool>(true, true, global4.a.x), 0i, true, vec2<i32>(u_input.a, var_2.e.x)), global1.c), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_1.b - var_3.yw))).d, false));
    return func_2(var_2.b.zz);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(vec3<i32>(u_input.a, -(~u_input.a), -_wgslsmith_mult_i32(global4.c, 2205i)), Struct_4(func_4(Struct_3(func_1(), func_1(), Struct_2(Struct_1(global4.b, global1.b.a, u_input.a, false, global2.c.e), global4.c, global4.d, global4.b.x, 0i)), global2.b), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.b.x * global2.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-725f * -403f))), Struct_1(select(func_1().b, select(vec3<bool>(false, global4.b.x, false), vec3<bool>(true, global4.b.x, global4.d), global4.d), vec3<bool>(false, true, global4.a.x)), vec3<bool>(all(vec2<bool>(global4.b.x, global2.c.a.x)), global4.d, false), 0i, !select(false, false, true), ~global1.b.e)), _wgslsmith_f_op_f32(f32(-1f) * -143f));
    var var_1 = global2.a;
    let var_2 = var_0.b.x;
    var var_3 = 4475u;
    let var_4 = global1.c;
    let x = u_input.a;
    s_output = StorageBuffer(-vec4<i32>(_wgslsmith_div_i32(var_0.e.x, global4.c), 1i & _wgslsmith_div_i32(global1.a.e.x, 9798i), global1.c.a.c, _wgslsmith_sub_i32(abs(var_0.c), func_1().e.x)), max(_wgslsmith_div_vec3_i32(-vec3<i32>(-1i, global4.c, 7165i), vec3<i32>(1i, ~u_input.a, countOneBits(-2147483647i))), vec3<i32>(reverseBits(29383i), global1.b.c, -2767i)), ~vec4<u32>(32020u, countOneBits(_wgslsmith_clamp_u32(56857u, 4294967295u, 4294967295u)), reverseBits(4294967295u), 1u));
}

