struct Struct_1 {
    a: i32,
    b: f32,
    c: vec3<bool>,
    d: bool,
    e: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec4<u32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec2<u32>,
    d: vec4<u32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: vec3<i32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 26> = array<Struct_1, 26>(Struct_1(-31486i, 405f, vec3<bool>(true, true, true), true, vec4<f32>(-204f, -167f, -1059f, 104f)), Struct_1(7230i, 1000f, vec3<bool>(false, true, true), true, vec4<f32>(-304f, 441f, -1000f, -1258f)), Struct_1(-29452i, 116f, vec3<bool>(true, false, false), true, vec4<f32>(1239f, -1036f, -887f, -444f)), Struct_1(36060i, -279f, vec3<bool>(false, false, true), false, vec4<f32>(435f, 1267f, 1285f, -684f)), Struct_1(i32(-2147483648), -216f, vec3<bool>(true, true, true), false, vec4<f32>(803f, -1434f, 1000f, -104f)), Struct_1(2147483647i, 990f, vec3<bool>(false, false, true), false, vec4<f32>(-1047f, -837f, 261f, 403f)), Struct_1(0i, -1503f, vec3<bool>(true, true, true), true, vec4<f32>(1077f, -698f, 704f, -1497f)), Struct_1(i32(-2147483648), -461f, vec3<bool>(false, false, false), false, vec4<f32>(-351f, 169f, 135f, 1413f)), Struct_1(1i, -950f, vec3<bool>(true, true, false), false, vec4<f32>(211f, 2204f, 1903f, -185f)), Struct_1(0i, 742f, vec3<bool>(true, true, false), true, vec4<f32>(586f, -1000f, -459f, 610f)), Struct_1(49425i, 1895f, vec3<bool>(true, false, false), true, vec4<f32>(1307f, 1000f, 1063f, 707f)), Struct_1(2147483647i, -219f, vec3<bool>(true, true, false), false, vec4<f32>(-2211f, 1108f, 1673f, -1000f)), Struct_1(-1i, 412f, vec3<bool>(true, true, true), false, vec4<f32>(-739f, -131f, 615f, -1043f)), Struct_1(i32(-2147483648), -197f, vec3<bool>(true, true, false), false, vec4<f32>(-289f, -420f, -1024f, 331f)), Struct_1(15523i, -795f, vec3<bool>(true, false, false), true, vec4<f32>(353f, 103f, 1947f, 290f)), Struct_1(29093i, -555f, vec3<bool>(true, false, true), true, vec4<f32>(-1503f, -480f, -1314f, 436f)), Struct_1(-8507i, 923f, vec3<bool>(false, true, true), false, vec4<f32>(-1039f, 462f, 852f, -1000f)), Struct_1(i32(-2147483648), 356f, vec3<bool>(true, false, false), false, vec4<f32>(-678f, 327f, -761f, -1268f)), Struct_1(-14643i, 1055f, vec3<bool>(false, true, true), false, vec4<f32>(533f, 342f, 894f, 750f)), Struct_1(0i, 135f, vec3<bool>(true, true, false), false, vec4<f32>(-1508f, -126f, -309f, 877f)), Struct_1(24895i, -1000f, vec3<bool>(false, false, false), true, vec4<f32>(767f, -683f, 1236f, 586f)), Struct_1(-1i, -267f, vec3<bool>(false, false, false), false, vec4<f32>(-766f, -1000f, 230f, -1346f)), Struct_1(-1i, 673f, vec3<bool>(false, false, false), false, vec4<f32>(-436f, 194f, 1146f, -708f)), Struct_1(1i, 962f, vec3<bool>(false, true, true), true, vec4<f32>(156f, -684f, 233f, 940f)), Struct_1(13216i, 464f, vec3<bool>(true, false, false), true, vec4<f32>(-1190f, -541f, -764f, 616f)), Struct_1(-12228i, -262f, vec3<bool>(true, false, false), true, vec4<f32>(-1000f, -1000f, -403f, -342f)));

var<private> global1: array<vec4<f32>, 26>;

var<private> global2: vec4<f32>;

var<private> global3: array<bool, 17> = array<bool, 17>(false, true, true, false, true, false, false, false, false, true, false, true, true, true, false, false, false);

var<private> global4: Struct_2;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: Struct_1) -> i32 {
    global1 = array<vec4<f32>, 26>();
    var var_0 = Struct_2(Struct_1(~(-_wgslsmith_dot_vec3_i32(vec3<i32>(-24416i, 24969i, global4.b), vec3<i32>(arg_0.a, arg_0.a, -2147483647i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -795f)), arg_0.c, arg_0.d, _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -1000f, arg_0.e.x, _wgslsmith_f_op_f32(-global4.d.b)) - _wgslsmith_div_vec4_f32(vec4<f32>(-601f, arg_0.b, arg_0.b, global4.a.b), _wgslsmith_f_op_vec4_f32(-vec4<f32>(532f, global4.d.b, -1629f, global4.d.b))))), 2147483647i, ~select(~select(vec4<u32>(4294967295u, global4.c.x, global4.c.x, u_input.d.x), vec4<u32>(47868u, 1u, 1u, global4.c.x), vec4<bool>(false, global4.a.d, true, global4.a.d)), ~(~vec4<u32>(17023u, 22907u, 47846u, global4.c.x)), all(vec3<bool>(false, false, true)) & !arg_0.c.x), Struct_1(global4.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1428f, -659f))), !global4.d.c, true, global4.a.e));
    var var_1 = select(global4.b, -2147483647i, select(-2147483647i, _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(global4.b, global4.a.a), vec2<i32>(-2147483647i, global4.d.a)), vec2<i32>(2147483647i, var_0.d.a) | vec2<i32>(var_0.d.a, global4.a.a)), global4.d.d) >= global4.b);
    var_0 = Struct_2(global4.a, ~abs(1i), vec4<u32>(var_0.c.x, 17214u, _wgslsmith_mult_u32(global4.c.x, ~(~var_0.c.x)), 76365u << (var_0.c.x % 32u)), arg_0);
    var var_2 = -var_0.b;
    return var_0.a.a;
}

fn func_2() -> Struct_1 {
    var var_0 = u_input.d.yzz ^ u_input.a.xzy;
    global3 = array<bool, 17>();
    global2 = global4.a.e;
    let var_1 = abs(vec2<u32>(min(0u, u_input.d.x), ~(~var_0.x))) ^ vec2<u32>(reverseBits(abs(~0u)), _wgslsmith_dot_vec3_u32(~global4.c.yyz, abs(global4.c.ywy)) >> (u_input.a.x % 32u));
    var var_2 = global4.a.d;
    return Struct_1(func_3(Struct_1(_wgslsmith_div_i32(-global4.a.a, _wgslsmith_mult_i32(2147483647i, 0i)), -1833f, global4.d.c, 1i == global4.d.a, vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1307f), _wgslsmith_div_f32(global4.a.b, 203f), _wgslsmith_f_op_f32(f32(-1f) * -835f), global4.a.e.x))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(global4.a.b)), _wgslsmith_f_op_f32(floor(global2.x)))), select(!global4.a.c, vec3<bool>(all(vec3<bool>(false, global3[_wgslsmith_index_u32(1u, 17u)], global3[_wgslsmith_index_u32(var_0.x, 17u)])), select(false, true, global4.d.c.x), global3[_wgslsmith_index_u32(0u, 17u)]), !(!vec3<bool>(false, global4.a.c.x, true))), true, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(global1[_wgslsmith_index_u32(u_input.c.x, 26u)], vec4<f32>(global4.d.b, -424f, global2.x, global4.d.e.x), vec4<bool>(global4.a.d, false, false, true))))) + vec4<f32>(_wgslsmith_f_op_f32(ceil(1041f)), 922f, _wgslsmith_f_op_f32(-global4.a.b), _wgslsmith_f_op_f32(min(global4.d.e.x, global4.d.e.x)))))));
}

fn func_4(arg_0: Struct_2) -> f32 {
    var var_0 = true;
    var var_1 = vec4<u32>(~4294967295u, u_input.d.x, _wgslsmith_sub_u32(1u, 1u), firstLeadingBit(_wgslsmith_add_u32(countOneBits(u_input.a.x), select(4294967295u >> (arg_0.c.x % 32u), _wgslsmith_sub_u32(15554u, arg_0.c.x), any(vec3<bool>(false, true, true))))));
    let var_2 = -_wgslsmith_dot_vec4_i32(select(vec4<i32>(30449i, global4.b, arg_0.a.a, arg_0.d.a), -vec4<i32>(arg_0.b, global4.d.a, -44014i, 31206i), true), ~_wgslsmith_div_vec4_i32(vec4<i32>(global4.a.a, global4.a.a, -58885i, arg_0.d.a), vec4<i32>(-14748i, 2147483647i, -5095i, arg_0.d.a))) & (i32(-1i) * -func_2().a);
    var var_3 = arg_0.a.e.yx;
    global3 = array<bool, 17>();
    return global2.x;
}

fn func_1(arg_0: i32, arg_1: u32) -> u32 {
    var var_0 = Struct_1(1i | -global4.d.a, _wgslsmith_f_op_f32(func_4(Struct_2(func_2(), -(~1i), firstLeadingBit(global4.c), Struct_1(_wgslsmith_dot_vec4_i32(vec4<i32>(global4.d.a, arg_0, 1i, -43544i), vec4<i32>(arg_0, -2147483647i, global4.a.a, -1i)), -495f, !global4.a.c, !global4.a.d, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-596f, global2.x, -524f, global4.a.e.x)))))), vec3<bool>(global3[_wgslsmith_index_u32(4294967295u, 17u)] || true, select(!(global3[_wgslsmith_index_u32(u_input.b.x, 17u)] & global4.a.d), true, global3[_wgslsmith_index_u32(4294967295u, 17u)]), global4.a.d), global4.a.d && all(!(!global4.d.c.yy)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(sign(-112f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(global2.x)))), -434f, _wgslsmith_div_f32(-664f, _wgslsmith_f_op_f32(func_4(Struct_2(Struct_1(global4.b, 447f, global4.a.c, true, global1[_wgslsmith_index_u32(30315u, 26u)]), 2147483647i, global4.c, Struct_1(arg_0, global4.a.e.x, global4.d.c, true, vec4<f32>(-109f, global2.x, -824f, global2.x)))))))));
    let var_1 = _wgslsmith_mult_u32(15444u, global4.c.x);
    global0 = array<Struct_1, 26>();
    let var_2 = _wgslsmith_clamp_vec4_i32(vec4<i32>(22326i, ~max(0i, 14234i), ~abs(2147483647i), func_3(func_2())), vec4<i32>(-select(arg_0, -2147483647i, var_0.d), _wgslsmith_mod_i32(global4.d.a >> (global4.c.x % 32u), i32(-1i) * -37048i), -30589i, var_0.a & _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.a, 1i), vec2<i32>(var_0.a, 5039i))), -vec4<i32>(global4.a.a, 1i, _wgslsmith_div_i32(arg_0, arg_0), -1i)) & vec4<i32>(arg_0, -(max(arg_0, global4.a.a) ^ 36632i), min(abs(reverseBits(-2147483647i)), _wgslsmith_mod_i32(-arg_0, 1i)), ~(func_3(Struct_1(global4.b, global4.a.b, vec3<bool>(var_0.c.x, true, true), true, vec4<f32>(var_0.b, global2.x, 1125f, var_0.b))) | _wgslsmith_dot_vec2_i32(vec2<i32>(global4.b, arg_0), vec2<i32>(global4.a.a, var_0.a))));
    var var_3 = func_2().c.xy;
    return ~(6441u << (_wgslsmith_dot_vec3_u32(abs(global4.c.wyw), max(~u_input.e.xyz, u_input.d.ywy)) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<u32>(abs(_wgslsmith_clamp_u32(firstTrailingBit(global4.c.x), _wgslsmith_dot_vec4_u32(u_input.e, global4.c) & firstLeadingBit(global4.c.x), 81243u)), _wgslsmith_sub_u32(firstLeadingBit(~4294967295u & u_input.d.x), reverseBits(_wgslsmith_sub_u32(func_1(-2147483647i, global4.c.x), global4.c.x))), 102773u);
    global2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(global1[_wgslsmith_index_u32(1u & var_0.x, 26u)], _wgslsmith_f_op_vec4_f32(vec4<f32>(global4.a.e.x, -1043f, global4.a.b, 1471f) + vec4<f32>(global2.x, global2.x, global2.x, global4.d.e.x))))))) + vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.a.e.x))), global2.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_4(Struct_2(global4.d, global4.a.a, vec4<u32>(global4.c.x, var_0.x, 0u, var_0.x), Struct_1(global4.a.a, -922f, vec3<bool>(global4.a.d, global3[_wgslsmith_index_u32(31150u, 17u)], true), global3[_wgslsmith_index_u32(var_0.x, 17u)], global1[_wgslsmith_index_u32(var_0.x, 26u)])))))), -745f));
    global3 = array<bool, 17>();
    global2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global1[_wgslsmith_index_u32(global4.c.x, 26u)])) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global4.a.e) * global1[_wgslsmith_index_u32(global4.c.x, 26u)]));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global2.zy) - vec2<f32>(global2.x, global2.x)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(global4.d.e.ww))) - vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1268f), global4.a.e.x)), vec2<bool>(!select(global4.a.c.x, global3[_wgslsmith_index_u32(5988u, 17u)], global4.d.d), (false || global4.a.c.x) && (global4.d.b != -122f)))), _wgslsmith_f_op_f32(global4.a.b + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(249f)) + _wgslsmith_f_op_f32(-global2.x))), _wgslsmith_div_vec3_i32(firstLeadingBit(-vec3<i32>(global4.b, global4.b, -23065i)), _wgslsmith_clamp_vec3_i32(vec3<i32>(~global4.a.a, -global4.d.a, _wgslsmith_mult_i32(global4.a.a, -35160i)), ~vec3<i32>(2147483647i, 33963i, 13285i), min(min(vec3<i32>(1i, global4.d.a, 0i), vec3<i32>(global4.d.a, global4.a.a, -4488i)), vec3<i32>(2147483647i, 0i, global4.d.a) ^ vec3<i32>(global4.a.a, global4.b, -34339i)))), ~(~(~global4.c.xy) ^ ~select(u_input.e.yy, u_input.c, global4.d.c.yx)));
}

