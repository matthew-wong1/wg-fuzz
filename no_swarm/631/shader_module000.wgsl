struct Struct_1 {
    a: vec2<u32>,
    b: vec4<u32>,
    c: i32,
    d: vec3<f32>,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: vec3<f32>,
    d: bool,
    e: vec2<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec3<u32>,
    d: vec4<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: array<vec2<f32>, 20>;

var<private> global2: vec3<f32> = vec3<f32>(646f, 1460f, 1844f);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_1(arg_0: Struct_3, arg_1: Struct_3, arg_2: Struct_3) -> Struct_1 {
    let var_0 = arg_1.a.e;
    return Struct_1(~select(u_input.d.zy, ~_wgslsmith_clamp_vec2_u32(vec2<u32>(arg_0.c.a.x, arg_2.c.b.x), vec2<u32>(2672u, 6359u), vec2<u32>(0u, arg_0.a.a.x)), true), _wgslsmith_mod_vec4_u32(reverseBits(u_input.d), ~vec4<u32>(~1u, u_input.b.x, arg_1.c.b.x >> (4294967295u % 32u), ~29656u)), _wgslsmith_div_i32(_wgslsmith_sub_i32(arg_2.c.c, _wgslsmith_div_i32(max(arg_0.a.c, 2559i), arg_0.c.c & -2147483647i)), -u_input.a), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(select(503f, 867f, false)), 238f, _wgslsmith_f_op_f32(-arg_0.a.d.x)) + _wgslsmith_f_op_vec3_f32(min(arg_1.c.d, vec3<f32>(668f, -517f, -1581f))))), true);
}

fn func_3() -> i32 {
    global2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_1(Struct_3(Struct_1(u_input.c.yx, vec4<u32>(1u, 4294967295u, 1u, u_input.d.x), -7238i, vec3<f32>(global2.x, 402f, 1000f), false), false, Struct_1(u_input.b.xy, vec4<u32>(44164u, 226u, 0u, 4294967295u), u_input.a, vec3<f32>(global2.x, global2.x, global2.x), false)), Struct_3(Struct_1(vec2<u32>(43439u, u_input.c.x), vec4<u32>(u_input.c.x, u_input.b.x, 4294967295u, u_input.d.x), u_input.a, vec3<f32>(-141f, global2.x, -630f), true), true, Struct_1(vec2<u32>(0u, 11666u), u_input.d, 31933i, vec3<f32>(-1403f, 1491f, global2.x), true)), Struct_3(Struct_1(vec2<u32>(u_input.c.x, 20938u), u_input.d, -1i, vec3<f32>(-1836f, global2.x, -676f), false), true, Struct_1(u_input.c.zy, vec4<u32>(u_input.c.x, u_input.b.x, u_input.b.x, 4294967295u), u_input.e.x, vec3<f32>(global2.x, global2.x, global2.x), false))).d - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.x, global2.x, -1000f) - vec3<f32>(-728f, 1467f, -1556f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-491f, global2.x, global2.x)))) - vec3<f32>(func_1(Struct_3(Struct_1(vec2<u32>(10360u, 56098u), vec4<u32>(1u, 46297u, u_input.b.x, u_input.b.x), global0.x, vec3<f32>(global2.x, 1748f, global2.x), false), true, Struct_1(vec2<u32>(0u, u_input.b.x), vec4<u32>(u_input.c.x, u_input.b.x, u_input.d.x, u_input.b.x), global0.x, vec3<f32>(-412f, -570f, global2.x), true)), Struct_3(Struct_1(u_input.b.yx, u_input.d, 23663i, vec3<f32>(global2.x, global2.x, -668f), false), true, Struct_1(u_input.b.xx, u_input.d, global0.x, vec3<f32>(1337f, global2.x, 1094f), false)), Struct_3(Struct_1(vec2<u32>(u_input.d.x, u_input.b.x), u_input.d, global0.x, vec3<f32>(-1000f, 568f, global2.x), false), false, Struct_1(vec2<u32>(u_input.d.x, u_input.b.x), u_input.d, -1i, vec3<f32>(-1000f, 180f, 2395f), false))).d.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(exp2(global2.x)))), _wgslsmith_f_op_f32(sign(func_1(Struct_3(Struct_1(u_input.d.xz, vec4<u32>(u_input.c.x, 4294967295u, 0u, 4294967295u), -4827i, vec3<f32>(global2.x, global2.x, -237f), true), true, Struct_1(u_input.d.zx, u_input.d, 0i, vec3<f32>(-1252f, global2.x, -431f), false)), Struct_3(Struct_1(u_input.b.zx, u_input.d, u_input.e.x, vec3<f32>(global2.x, -410f, global2.x), false), false, Struct_1(u_input.c.yy, vec4<u32>(u_input.d.x, 4822u, 0u, u_input.d.x), -2147483647i, vec3<f32>(global2.x, -111f, global2.x), false)), Struct_3(Struct_1(vec2<u32>(u_input.d.x, 0u), u_input.d, global0.x, vec3<f32>(global2.x, global2.x, global2.x), true), false, Struct_1(u_input.b.xz, u_input.d, 52203i, vec3<f32>(124f, -1000f, 830f), true))).d.x)))) * _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(global2.x, -1139f), _wgslsmith_f_op_f32(-global2.x), _wgslsmith_div_f32(global2.x, 2312f))))));
    let var_0 = Struct_3(func_1(Struct_3(Struct_1(vec2<u32>(55273u, 0u), u_input.d, -u_input.a, _wgslsmith_f_op_vec3_f32(-vec3<f32>(477f, global2.x, global2.x)), true), false, func_1(Struct_3(Struct_1(vec2<u32>(1u, 13142u), vec4<u32>(3403u, u_input.d.x, u_input.b.x, u_input.d.x), -19580i, vec3<f32>(global2.x, -817f, global2.x), true), true, Struct_1(vec2<u32>(u_input.c.x, u_input.c.x), u_input.d, global0.x, vec3<f32>(global2.x, 617f, -404f), false)), Struct_3(Struct_1(u_input.b.yy, vec4<u32>(80497u, 23408u, 0u, 0u), global0.x, vec3<f32>(-421f, global2.x, 1179f), true), true, Struct_1(u_input.c.xx, u_input.d, -2147483647i, vec3<f32>(-255f, global2.x, -987f), true)), Struct_3(Struct_1(u_input.b.yy, vec4<u32>(91010u, 11845u, u_input.d.x, 4294967295u), u_input.a, vec3<f32>(global2.x, -985f, global2.x), false), true, Struct_1(u_input.d.wz, vec4<u32>(u_input.b.x, 1u, 66980u, u_input.b.x), u_input.e.x, vec3<f32>(1639f, -386f, global2.x), true)))), Struct_3(func_1(Struct_3(Struct_1(u_input.b.xx, u_input.d, global0.x, vec3<f32>(-185f, global2.x, -385f), true), false, Struct_1(vec2<u32>(1u, 0u), u_input.d, 26609i, vec3<f32>(1041f, -1340f, 840f), false)), Struct_3(Struct_1(vec2<u32>(u_input.b.x, u_input.b.x), u_input.d, 1i, vec3<f32>(global2.x, 350f, 1404f), true), true, Struct_1(vec2<u32>(19063u, 84848u), vec4<u32>(0u, 20531u, u_input.d.x, u_input.c.x), 0i, vec3<f32>(global2.x, global2.x, global2.x), false)), Struct_3(Struct_1(u_input.d.xw, u_input.d, global0.x, vec3<f32>(232f, global2.x, -841f), false), false, Struct_1(u_input.d.zw, u_input.d, u_input.a, vec3<f32>(-1147f, -1019f, global2.x), false))), false, Struct_1(u_input.b.xx, u_input.d, u_input.e.x, vec3<f32>(-292f, global2.x, 2353f), all(vec4<bool>(true, true, true, true)))), Struct_3(Struct_1(u_input.c.zz, vec4<u32>(15675u, u_input.d.x, 44224u, u_input.c.x) & u_input.d, abs(29106i), _wgslsmith_div_vec3_f32(vec3<f32>(2469f, global2.x, 2891f), vec3<f32>(global2.x, 491f, global2.x)), true), any(select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, true), true)), func_1(Struct_3(Struct_1(u_input.b.xx, u_input.d, global0.x, vec3<f32>(-593f, global2.x, global2.x), true), false, Struct_1(u_input.c.zz, vec4<u32>(u_input.c.x, 40340u, u_input.c.x, 17363u), -41218i, vec3<f32>(global2.x, global2.x, global2.x), false)), Struct_3(Struct_1(u_input.b.xz, u_input.d, global0.x, vec3<f32>(-537f, global2.x, global2.x), false), true, Struct_1(u_input.c.yy, u_input.d, 0i, vec3<f32>(-620f, 1025f, global2.x), false)), Struct_3(Struct_1(u_input.b.zx, u_input.d, 30458i, vec3<f32>(-981f, global2.x, 1000f), false), true, Struct_1(u_input.d.xw, vec4<u32>(u_input.c.x, u_input.b.x, u_input.c.x, u_input.c.x), -11449i, vec3<f32>(-2116f, global2.x, -1049f), false))))), false, Struct_1(abs(vec2<u32>(u_input.d.x, u_input.d.x & 47262u)), ~abs(countOneBits(vec4<u32>(u_input.d.x, u_input.c.x, 1u, u_input.b.x))), -global0.x, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -387f), global2.x, _wgslsmith_f_op_f32(-global2.x)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.x, -1692f, global2.x) * vec3<f32>(741f, global2.x, -569f)) * vec3<f32>(942f, 1030f, 983f))), true));
    global2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.a.d - vec3<f32>(-1133f, 739f, -460f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(730f, global2.x, var_0.a.d.x) * vec3<f32>(global2.x, 402f, var_0.a.d.x))), vec3<f32>(global2.x, 405f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-399f - 760f) - var_0.a.d.x))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(abs(var_0.a.d.x)), _wgslsmith_f_op_f32(f32(-1f) * -688f), _wgslsmith_f_op_f32(abs(1338f))))));
    var var_1 = -1i;
    let var_2 = _wgslsmith_mult_vec2_i32(max(-firstLeadingBit(vec2<i32>(global0.x, global0.x)), -_wgslsmith_sub_vec2_i32(global0.zz, u_input.e.zx)), _wgslsmith_sub_vec2_i32(-max(u_input.e.yz & u_input.e.zx, vec2<i32>(global0.x, -2147483647i)), u_input.e.xy >> (u_input.d.zy % vec2<u32>(32u))));
    return u_input.a;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32, arg_3: vec4<i32>) -> Struct_3 {
    var var_0 = -(arg_1.c << (~_wgslsmith_sub_u32(u_input.b.x, min(47820u, 0u)) % 32u));
    global2 = vec3<f32>(_wgslsmith_f_op_f32(-140f * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(arg_0.d.x))))))), -848f, -1210f);
    var_0 = func_3();
    global2 = arg_0.d;
    return Struct_3(Struct_1(u_input.c.zx, vec4<u32>(u_input.b.x, _wgslsmith_dot_vec2_u32(u_input.d.zy, arg_0.b.yx & arg_0.b.wx), countOneBits(_wgslsmith_add_u32(u_input.d.x, 4294967295u)), 4294967295u), 4244i, arg_1.d, true), any(select(select(vec2<bool>(arg_1.e, arg_0.e), vec2<bool>(true, false), select(vec2<bool>(false, true), vec2<bool>(true, false), false)), vec2<bool>(true, true), vec2<bool>(arg_0.e, true))), arg_1);
}

fn func_4(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: Struct_3, arg_3: Struct_1) -> i32 {
    let var_0 = 843f;
    let var_1 = Struct_2(func_1(arg_2, Struct_3(arg_3, all(vec3<bool>(arg_2.c.e, true, true)), arg_0), func_2(arg_2.c, func_2(func_2(Struct_1(arg_0.b.xw, vec4<u32>(arg_2.a.a.x, u_input.d.x, arg_0.a.x, u_input.d.x), 0i, arg_2.c.d, arg_2.c.e), arg_3, 758f, vec4<i32>(30565i, global0.x, arg_2.a.c, -17612i)).c, arg_2.c, _wgslsmith_f_op_f32(-241f - arg_2.c.d.x), u_input.e ^ vec4<i32>(u_input.a, global0.x, u_input.a, global0.x)).a, _wgslsmith_f_op_f32(821f - func_1(Struct_3(Struct_1(vec2<u32>(1u, 38152u), arg_3.b, arg_2.a.c, vec3<f32>(754f, arg_0.d.x, arg_3.d.x), false), true, arg_2.a), arg_2, Struct_3(Struct_1(u_input.c.zy, vec4<u32>(14582u, 1u, 0u, 0u), arg_2.a.c, arg_3.d, true), false, Struct_1(vec2<u32>(42989u, arg_2.c.a.x), arg_2.c.b, global0.x, vec3<f32>(arg_3.d.x, 1422f, arg_0.d.x), arg_2.c.e))).d.x), max(vec4<i32>(2147483647i, -42379i, arg_2.a.c, 27210i), u_input.e))), countOneBits(firstLeadingBit(_wgslsmith_add_vec2_u32(arg_3.b.zx, vec2<u32>(arg_2.c.a.x, u_input.b.x)))), arg_3.d, true, vec2<i32>(21717i, global0.x));
    global1 = array<vec2<f32>, 20>();
    global1 = array<vec2<f32>, 20>();
    let var_2 = var_1.a.c;
    return arg_2.c.c;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec3<i32>(_wgslsmith_div_i32(u_input.a ^ -global0.x, i32(-1i) * -1i), firstTrailingBit(func_4(func_1(Struct_3(Struct_1(u_input.c.yy, vec4<u32>(u_input.c.x, 1u, u_input.d.x, u_input.b.x), u_input.a, vec3<f32>(global2.x, global2.x, -154f), false), false, Struct_1(u_input.b.xx, u_input.d, u_input.e.x, vec3<f32>(global2.x, global2.x, 627f), false)), Struct_3(Struct_1(u_input.c.zy, vec4<u32>(14646u, 1u, 4294967295u, 90152u), u_input.e.x, vec3<f32>(888f, -1612f, 1132f), false), false, Struct_1(u_input.b.xx, u_input.d, global0.x, vec3<f32>(-579f, global2.x, global2.x), false)), Struct_3(Struct_1(vec2<u32>(u_input.c.x, u_input.d.x), vec4<u32>(u_input.c.x, u_input.c.x, u_input.b.x, u_input.c.x), -2147483647i, vec3<f32>(-995f, 1969f, 1023f), false), false, Struct_1(u_input.c.yz, u_input.d, u_input.e.x, vec3<f32>(2327f, global2.x, 126f), false))), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(global2.x, global2.x, global2.x), vec3<f32>(-1616f, 501f, -1095f))), func_2(Struct_1(u_input.d.xz, u_input.d, global0.x, vec3<f32>(global2.x, global2.x, 155f), true), Struct_1(vec2<u32>(51848u, 31788u), vec4<u32>(u_input.d.x, u_input.b.x, 12044u, 4294967295u), -83180i, vec3<f32>(global2.x, -2377f, -2147f), true), -102f, vec4<i32>(global0.x, u_input.e.x, 1i, 2147483647i)), Struct_1(u_input.b.zy, u_input.d, -2147483647i, vec3<f32>(349f, 1000f, global2.x), true))), _wgslsmith_dot_vec4_i32(u_input.e, u_input.e)) & u_input.e.ywx;
    var var_0 = u_input.e.x;
    let var_1 = Struct_2(func_1(func_2(Struct_1(~vec2<u32>(10973u, 4294967295u), u_input.d, func_4(Struct_1(vec2<u32>(u_input.b.x, u_input.d.x), u_input.d, 1i, vec3<f32>(-695f, global2.x, -1250f), true), vec3<f32>(global2.x, -3234f, 1000f), Struct_3(Struct_1(vec2<u32>(81537u, u_input.c.x), u_input.d, global0.x, vec3<f32>(global2.x, global2.x, -1602f), false), false, Struct_1(u_input.c.zx, vec4<u32>(1u, 1u, u_input.d.x, u_input.d.x), u_input.a, vec3<f32>(793f, global2.x, global2.x), true)), Struct_1(u_input.b.yz, vec4<u32>(u_input.c.x, u_input.d.x, 0u, u_input.d.x), -2147483647i, vec3<f32>(global2.x, global2.x, global2.x), false)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, 1650f, 899f)), true), Struct_1(func_2(Struct_1(vec2<u32>(4294967295u, u_input.b.x), vec4<u32>(0u, u_input.b.x, 0u, 1u), global0.x, vec3<f32>(global2.x, 1005f, global2.x), false), Struct_1(vec2<u32>(u_input.d.x, u_input.c.x), u_input.d, u_input.a, vec3<f32>(1524f, -903f, -465f), false), global2.x, vec4<i32>(u_input.e.x, u_input.a, u_input.a, global0.x)).c.a, ~u_input.d, -2147483647i, vec3<f32>(global2.x, global2.x, 2332f), u_input.a > u_input.e.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x + -720f)), u_input.e), func_2(func_2(Struct_1(vec2<u32>(0u, u_input.c.x), vec4<u32>(74349u, 33872u, u_input.d.x, 1u), global0.x, vec3<f32>(global2.x, global2.x, 876f), true), Struct_1(vec2<u32>(u_input.d.x, u_input.c.x), vec4<u32>(u_input.b.x, u_input.c.x, 22875u, u_input.c.x), 8025i, vec3<f32>(1000f, global2.x, global2.x), true), _wgslsmith_f_op_f32(round(global2.x)), vec4<i32>(u_input.a, u_input.e.x, global0.x, global0.x)).a, Struct_1(u_input.c.zz ^ u_input.d.wy, select(vec4<u32>(55476u, 1u, u_input.d.x, u_input.c.x), u_input.d, vec4<bool>(true, true, false, false)), ~(-16775i), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, global2.x, global2.x)), global0.x != 42516i), global2.x, select(vec4<i32>(u_input.a, -105953i, u_input.a, u_input.a), u_input.e, vec4<bool>(false, false, false, false))), func_2(Struct_1(~vec2<u32>(u_input.b.x, 8604u), ~vec4<u32>(0u, u_input.b.x, u_input.c.x, u_input.d.x), -1i, vec3<f32>(-976f, global2.x, 1000f), true), Struct_1(_wgslsmith_mod_vec2_u32(u_input.d.zx, vec2<u32>(0u, 1u)), _wgslsmith_add_vec4_u32(u_input.d, u_input.d), func_1(Struct_3(Struct_1(vec2<u32>(4294967295u, u_input.b.x), vec4<u32>(4294967295u, u_input.b.x, 67244u, 31548u), u_input.a, vec3<f32>(-1019f, -223f, -860f), true), true, Struct_1(u_input.b.yy, u_input.d, global0.x, vec3<f32>(-1316f, 1587f, global2.x), false)), Struct_3(Struct_1(vec2<u32>(7452u, u_input.c.x), u_input.d, u_input.e.x, vec3<f32>(global2.x, global2.x, 293f), false), false, Struct_1(u_input.c.zy, u_input.d, u_input.e.x, vec3<f32>(-720f, 1050f, global2.x), true)), Struct_3(Struct_1(u_input.c.zz, vec4<u32>(5490u, 21991u, u_input.d.x, 1u), global0.x, vec3<f32>(global2.x, global2.x, global2.x), false), false, Struct_1(vec2<u32>(u_input.d.x, 4294967295u), vec4<u32>(4294967295u, u_input.b.x, u_input.d.x, 31324u), 39202i, vec3<f32>(global2.x, global2.x, -738f), true))).c, _wgslsmith_f_op_vec3_f32(vec3<f32>(global2.x, -556f, global2.x) - vec3<f32>(global2.x, 444f, 1038f)), all(vec4<bool>(true, true, false, false))), _wgslsmith_f_op_f32(global2.x * 1f), u_input.e)), ~u_input.d.wy, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(153f, -640f, -260f))))), true, _wgslsmith_div_vec2_i32(u_input.e.yy, abs(_wgslsmith_mult_vec2_i32(-global0.xy, u_input.e.wy))));
    let x = u_input.a;
    s_output = StorageBuffer(global2.x);
}

