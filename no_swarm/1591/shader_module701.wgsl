struct Struct_1 {
    a: vec4<u32>,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: Struct_1,
    c: f32,
    d: Struct_2,
    e: Struct_3,
}

struct Struct_5 {
    a: u32,
    b: Struct_2,
    c: vec3<i32>,
    d: vec2<i32>,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 21> = array<Struct_2, 21>(Struct_2(Struct_1(vec4<u32>(6067u, 23462u, 61053u, 4294967295u), 1u)), Struct_2(Struct_1(vec4<u32>(4294967295u, 0u, 0u, 4294967295u), 0u)), Struct_2(Struct_1(vec4<u32>(0u, 4294967295u, 68928u, 1u), 0u)), Struct_2(Struct_1(vec4<u32>(4294967295u, 4294967295u, 1u, 39321u), 3639u)), Struct_2(Struct_1(vec4<u32>(31718u, 3102u, 0u, 0u), 1u)), Struct_2(Struct_1(vec4<u32>(4294967295u, 76661u, 4294967295u, 30073u), 19657u)), Struct_2(Struct_1(vec4<u32>(16624u, 1u, 1u, 1u), 1u)), Struct_2(Struct_1(vec4<u32>(3878u, 29012u, 15257u, 5333u), 16089u)), Struct_2(Struct_1(vec4<u32>(0u, 4294967295u, 42406u, 62968u), 52170u)), Struct_2(Struct_1(vec4<u32>(8041u, 22301u, 4294967295u, 30618u), 24464u)), Struct_2(Struct_1(vec4<u32>(70518u, 1u, 1u, 1u), 4294967295u)), Struct_2(Struct_1(vec4<u32>(4294967295u, 4158u, 99395u, 8690u), 0u)), Struct_2(Struct_1(vec4<u32>(76112u, 99473u, 1u, 4294967295u), 7491u)), Struct_2(Struct_1(vec4<u32>(6294u, 18376u, 19253u, 4294967295u), 0u)), Struct_2(Struct_1(vec4<u32>(39706u, 0u, 1u, 4294967295u), 1u)), Struct_2(Struct_1(vec4<u32>(51401u, 4294967295u, 4189u, 85492u), 1u)), Struct_2(Struct_1(vec4<u32>(1u, 4294967295u, 1u, 1u), 11845u)), Struct_2(Struct_1(vec4<u32>(14377u, 22330u, 0u, 4294967295u), 4294967295u)), Struct_2(Struct_1(vec4<u32>(1u, 1u, 33501u, 61174u), 4294967295u)), Struct_2(Struct_1(vec4<u32>(35637u, 1u, 23296u, 4294967295u), 0u)), Struct_2(Struct_1(vec4<u32>(4294967295u, 0u, 1u, 43786u), 81466u)));

var<private> global1: array<Struct_3, 25> = array<Struct_3, 25>(Struct_3(2147483647i, Struct_1(vec4<u32>(81618u, 17902u, 75885u, 39471u), 640u)), Struct_3(25774i, Struct_1(vec4<u32>(21593u, 22211u, 22292u, 0u), 17300u)), Struct_3(2147483647i, Struct_1(vec4<u32>(97944u, 9247u, 13234u, 0u), 4294967295u)), Struct_3(0i, Struct_1(vec4<u32>(1u, 22403u, 1u, 72555u), 89853u)), Struct_3(1i, Struct_1(vec4<u32>(0u, 1u, 84257u, 1u), 1u)), Struct_3(i32(-2147483648), Struct_1(vec4<u32>(40728u, 37980u, 4294967295u, 0u), 47249u)), Struct_3(2147483647i, Struct_1(vec4<u32>(4294967295u, 61144u, 58260u, 11777u), 56638u)), Struct_3(2147483647i, Struct_1(vec4<u32>(4294967295u, 4294967295u, 1u, 1u), 18393u)), Struct_3(27921i, Struct_1(vec4<u32>(4294967295u, 1u, 6822u, 36970u), 4294967295u)), Struct_3(18660i, Struct_1(vec4<u32>(47909u, 33078u, 1u, 34735u), 1u)), Struct_3(-8523i, Struct_1(vec4<u32>(4294967295u, 68844u, 0u, 1u), 0u)), Struct_3(19675i, Struct_1(vec4<u32>(1u, 0u, 102871u, 66191u), 7930u)), Struct_3(-47528i, Struct_1(vec4<u32>(4294967295u, 1u, 0u, 105533u), 63001u)), Struct_3(1i, Struct_1(vec4<u32>(9663u, 21914u, 41284u, 1u), 37384u)), Struct_3(49340i, Struct_1(vec4<u32>(202u, 33375u, 38364u, 47520u), 1u)), Struct_3(-1i, Struct_1(vec4<u32>(4294967295u, 4294967295u, 4294967295u, 1u), 4294967295u)), Struct_3(-13654i, Struct_1(vec4<u32>(4294967295u, 37926u, 0u, 635u), 81916u)), Struct_3(-1020i, Struct_1(vec4<u32>(0u, 42094u, 0u, 15659u), 0u)), Struct_3(1i, Struct_1(vec4<u32>(37645u, 43108u, 135883u, 99168u), 43761u)), Struct_3(-1i, Struct_1(vec4<u32>(4294967295u, 21792u, 7735u, 7285u), 0u)), Struct_3(0i, Struct_1(vec4<u32>(45118u, 44576u, 1609u, 1u), 1u)), Struct_3(i32(-2147483648), Struct_1(vec4<u32>(29768u, 75391u, 4294967295u, 1u), 7912u)), Struct_3(-25216i, Struct_1(vec4<u32>(52495u, 1u, 0u, 0u), 3291u)), Struct_3(22471i, Struct_1(vec4<u32>(75941u, 23909u, 4294967295u, 2133u), 0u)), Struct_3(1i, Struct_1(vec4<u32>(0u, 4294967295u, 261u, 31974u), 1u)));

var<private> global2: array<vec3<u32>, 6> = array<vec3<u32>, 6>(vec3<u32>(4294967295u, 4294967295u, 4294967295u), vec3<u32>(4294967295u, 1u, 1u), vec3<u32>(0u, 36613u, 66955u), vec3<u32>(4294967295u, 2567u, 1u), vec3<u32>(4294967295u, 0u, 4294967295u), vec3<u32>(32595u, 1u, 18931u));

var<private> global3: Struct_3 = Struct_3(-1i, Struct_1(vec4<u32>(58401u, 111078u, 4294967295u, 4294967295u), 4294967295u));

var<private> global4: array<vec3<u32>, 2> = array<vec3<u32>, 2>(vec3<u32>(51255u, 1u, 1u), vec3<u32>(1u, 75561u, 8987u));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_4, arg_2: vec3<u32>) -> i32 {
    var var_0 = arg_0.d;
    var_0 = Struct_2(var_0.a);
    let var_1 = _wgslsmith_add_i32(-2147483647i, _wgslsmith_mult_i32(~(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, global3.a, 82448i), vec3<i32>(arg_0.e.a, u_input.b, arg_0.e.a)) >> (~arg_1.d.a.b % 32u)), -arg_1.e.a));
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(921f, arg_1.c, arg_0.c))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-581f, 564f, arg_0.c)))))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-279f * arg_1.c), _wgslsmith_f_op_f32(_wgslsmith_div_f32(247f, arg_1.c) * 238f), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(1074f, 2048f), arg_0.c, true)))));
    var var_3 = all(select(vec4<bool>(any(vec4<bool>(true, true, true, true)), true, u_input.b < var_1, !any(vec2<bool>(false, true))), select(select(select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, false)), vec4<bool>(true, true, true, true), true), vec4<bool>(true, true, true, true), !select(false, false, false)), !vec4<bool>(arg_0.e.a < arg_1.e.a, true, true, true)));
    return u_input.b;
}

fn func_4(arg_0: i32, arg_1: i32, arg_2: vec4<bool>) -> bool {
    let var_0 = global1[_wgslsmith_index_u32(min(~u_input.c, _wgslsmith_div_u32(_wgslsmith_mod_u32(min(4294967295u, abs(4294967295u)), u_input.d), _wgslsmith_mult_u32(1u, global3.b.b << (0u % 32u)))), 25u)];
    var var_1 = Struct_1(~global3.b.a, _wgslsmith_sub_u32(1102u, ~firstTrailingBit(1u)));
    var_1 = Struct_1(~global3.b.a, u_input.d);
    global3 = Struct_3(arg_1, Struct_1(~vec4<u32>(65142u, 51787u, 15434u, 4294967295u) & vec4<u32>(~29205u, global3.b.a.x, max(39850u, var_0.b.b), 59430u), var_0.b.b));
    var var_2 = reverseBits(max(-(_wgslsmith_div_vec3_i32(vec3<i32>(global3.a, -1046i, arg_1), vec3<i32>(arg_0, 18950i, 27088i)) & select(vec3<i32>(u_input.b, arg_1, u_input.a.x), vec3<i32>(arg_1, 2147483647i, 36895i), vec3<bool>(arg_2.x, arg_2.x, false))), ~vec3<i32>(var_0.a, select(22579i, -68594i, false), -1i)));
    return arg_2.x | !(arg_2.x || true);
}

fn func_2(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: vec4<bool>, arg_3: vec2<f32>) -> vec2<f32> {
    let var_0 = arg_2.xxy;
    let var_1 = vec2<bool>(true, true);
    var var_2 = func_4((func_3(Struct_4(arg_0.x, arg_1, arg_3.x, Struct_2(Struct_1(vec4<u32>(u_input.c, u_input.d, 19425u, arg_0.x), u_input.d)), global1[_wgslsmith_index_u32(arg_0.x, 25u)]), Struct_4(0u, Struct_1(vec4<u32>(4918u, arg_1.b, 0u, 0u), arg_1.b), -876f, global0[_wgslsmith_index_u32(52856u, 21u)], global1[_wgslsmith_index_u32(45702u, 25u)]), ~global3.b.a.wxx) ^ select(~global3.a, 1i, arg_0.x >= 4294967295u)) >> (firstLeadingBit(1u) % 32u), firstLeadingBit(-1i), arg_2);
    let var_3 = _wgslsmith_dot_vec4_i32(-(firstLeadingBit(_wgslsmith_mult_vec4_i32(vec4<i32>(1i, -1i, global3.a, 1i), vec4<i32>(15065i, -2147483647i, global3.a, 1034i))) << (vec4<u32>(_wgslsmith_mult_u32(91412u, 28022u), _wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.a.x, global3.b.b, arg_1.a.x), arg_1.a.xyw), arg_0.x & 97898u, arg_1.a.x) % vec4<u32>(32u))), abs(-vec4<i32>(1i, global3.a, u_input.a.x, 31323i) ^ firstTrailingBit(_wgslsmith_clamp_vec4_i32(vec4<i32>(-14389i, -1i, global3.a, u_input.a.x), vec4<i32>(2147483647i, u_input.b, u_input.b, global3.a), vec4<i32>(u_input.a.x, -52174i, 2147483647i, 0i)))));
    var var_4 = global3.b.b;
    return _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-141f * 136f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_3.x - _wgslsmith_f_op_f32(floor(arg_3.x)))))));
}

fn func_1() -> vec4<bool> {
    global1 = array<Struct_3, 25>();
    var var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(1000f, -545f))));
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_2(global3.b.a.xz, global3.b, vec4<bool>(true, false, false, false), vec2<f32>(-1000f, 227f))))));
    global2 = array<vec3<u32>, 6>();
    var var_2 = -(max(global3.a << (1u % 32u), 2147483647i) << (_wgslsmith_mult_u32(_wgslsmith_mod_u32(1u, min(u_input.c, 19696u)), _wgslsmith_mult_u32(u_input.c << (u_input.d % 32u), u_input.c)) % 32u));
    return select(vec4<bool>(!(true || all(vec4<bool>(false, false, true, false))), false, true, !(!(199f > var_1.x))), !select(vec4<bool>(true, false, false, func_4(global3.a, u_input.a.x, vec4<bool>(false, false, false, false))), !select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false)), select(select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false)), select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false), true), true)), all(vec3<bool>(all(vec3<bool>(true, true, false)), true, all(vec3<bool>(true, false, false)))));
}

fn func_5(arg_0: Struct_4, arg_1: u32, arg_2: vec4<u32>, arg_3: vec4<bool>) -> bool {
    let var_0 = -948f;
    var var_1 = select(30460i, _wgslsmith_mod_i32(16672i, i32(-1i) * -(~arg_0.e.a)), true);
    var var_2 = Struct_4(~54963u, global3.b, _wgslsmith_f_op_f32(f32(-1f) * -708f), arg_0.d, Struct_3(global3.a, global3.b));
    let var_3 = arg_3.xxy;
    var var_4 = var_2.e.b.a;
    return all(arg_3) & any(select(vec3<bool>(arg_3.x, var_3.x && true, arg_3.x | var_3.x), !vec3<bool>(false, var_3.x, var_3.x), !(arg_3.x || true)));
}

fn func_6(arg_0: vec4<bool>, arg_1: bool) -> Struct_5 {
    global1 = array<Struct_3, 25>();
    var var_0 = global3.b;
    var var_1 = -firstLeadingBit(reverseBits(_wgslsmith_sub_i32(40914i, global3.a)));
    let var_2 = Struct_3(-u_input.a.x << (firstLeadingBit(0u) % 32u), global3.b);
    var var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(910f - 1000f) + -880f)))), -1000f);
    return Struct_5(~_wgslsmith_clamp_u32(firstTrailingBit(var_0.a.x), _wgslsmith_sub_u32(4294967295u, ~var_2.b.a.x), ~abs(global3.b.a.x)), global0[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(69265u, ~var_0.b, 4294967295u), 21u)], ~vec3<i32>(1i, global3.a, -_wgslsmith_mult_i32(u_input.a.x, u_input.a.x)), reverseBits(u_input.a >> (~(vec2<u32>(u_input.c, 2046u) ^ vec2<u32>(0u, 1u)) % vec2<u32>(32u))), select(select(!vec2<bool>(arg_1, arg_0.x), vec2<bool>(func_5(Struct_4(u_input.c, Struct_1(var_0.a, global3.b.a.x), 516f, Struct_2(Struct_1(vec4<u32>(4294967295u, 27190u, 4294967295u, var_0.a.x), 2258u)), var_2), 38826u, var_0.a, vec4<bool>(arg_0.x, arg_0.x, false, true)), true), !(!arg_0.xy)), vec2<bool>(true, true), func_5(Struct_4(~global3.b.b, Struct_1(var_2.b.a, var_0.a.x), _wgslsmith_f_op_f32(abs(346f)), global0[_wgslsmith_index_u32(28412u, 21u)], global1[_wgslsmith_index_u32(~8070u, 25u)]), var_2.b.a.x, _wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 1u, 24993u, var_0.a.x), vec4<u32>(4294967295u, 33574u, 70288u, var_0.b), vec4<u32>(u_input.c, 33619u, 20688u, var_2.b.b)), !arg_0)));
}

fn func_7(arg_0: Struct_5, arg_1: i32, arg_2: Struct_5, arg_3: f32) -> Struct_1 {
    global4 = array<vec3<u32>, 2>();
    global0 = array<Struct_2, 21>();
    let var_0 = -select(vec3<i32>(-arg_0.c.x, _wgslsmith_dot_vec3_i32(arg_0.c, vec3<i32>(arg_2.c.x, arg_0.d.x, u_input.a.x)), abs(min(-1i, arg_1))), firstLeadingBit(arg_0.c), arg_0.e.x);
    global4 = array<vec3<u32>, 2>();
    let var_1 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(arg_3 * _wgslsmith_f_op_f32(trunc(arg_3))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1171f + -1119f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, arg_3) * -1771f)) + vec3<f32>(_wgslsmith_f_op_f32(arg_3 - _wgslsmith_f_op_f32(f32(-1f) * -396f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(arg_3)))), 1100f))));
    return func_6(select(!(!func_1()), vec4<bool>(arg_0.e.x, true, !arg_2.e.x, !any(vec4<bool>(true, arg_2.e.x, arg_0.e.x, arg_2.e.x))), vec4<bool>(true, select(false, arg_0.e.x, arg_0.e.x) && false, all(!vec4<bool>(arg_2.e.x, arg_0.e.x, true, arg_0.e.x)), all(select(vec3<bool>(arg_0.e.x, false, arg_0.e.x), vec3<bool>(arg_2.e.x, arg_0.e.x, arg_0.e.x), vec3<bool>(false, arg_0.e.x, arg_0.e.x))))), (any(select(vec3<bool>(arg_0.e.x, false, arg_0.e.x), vec3<bool>(false, true, false), vec3<bool>(true, false, true))) | func_6(vec4<bool>(arg_2.e.x, arg_0.e.x, arg_2.e.x, false), func_6(vec4<bool>(arg_0.e.x, arg_2.e.x, arg_2.e.x, arg_0.e.x), false).e.x).e.x) || (arg_1 < ~(~global3.a))).b.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(min(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(firstLeadingBit(vec3<u32>(9895u, 4294967295u, 26899u)), global3.b.a.zxz ^ vec3<u32>(global3.b.b, global3.b.b, 4294967295u)), vec3<u32>(1u, 25956u, _wgslsmith_mult_u32(global3.b.b, 0u))), 17405u), func_7(func_6(select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), true), func_5(Struct_4(0u, Struct_1(vec4<u32>(global3.b.b, u_input.c, 56028u, 32663u), 0u), 190f, Struct_2(Struct_1(global3.b.a, u_input.d)), global1[_wgslsmith_index_u32(u_input.c, 25u)]), ~0u, global3.b.a << (vec4<u32>(global3.b.a.x, u_input.d, 78740u, 45875u) % vec4<u32>(32u)), func_1())), func_3(Struct_4(_wgslsmith_clamp_u32(0u, 1u, 1u), global3.b, 1210f, func_6(vec4<bool>(true, false, false, true), true).b, Struct_3(u_input.b, Struct_1(global3.b.a, u_input.d))), Struct_4(global3.b.a.x, Struct_1(vec4<u32>(global3.b.a.x, global3.b.b, u_input.d, global3.b.a.x), 5058u), _wgslsmith_f_op_f32(step(-948f, 1000f)), func_6(vec4<bool>(true, false, true, true), false).b, global1[_wgslsmith_index_u32(u_input.d & u_input.c, 25u)]), func_6(vec4<bool>(true, true, true, false), true).b.a.a.zyx), Struct_5(min(~u_input.c, 95833u), Struct_2(Struct_1(global3.b.a, global3.b.b)), vec3<i32>(u_input.a.x, _wgslsmith_add_i32(global3.a, u_input.b), reverseBits(0i)), -abs(u_input.a), vec2<bool>(true, true)), 354f), _wgslsmith_f_op_f32(f32(-1f) * -1020f), func_6(vec4<bool>(true, any(vec2<bool>(true, true)), false, false), true).b, Struct_3(-_wgslsmith_div_i32(u_input.a.x, u_input.b), global3.b));
    let var_1 = global3.b.a;
    var_0 = Struct_4(func_7(func_6(func_1(), true), global3.a, Struct_5(1u, Struct_2(var_0.d.a), func_6(vec4<bool>(false, false, true, false), false).c, firstLeadingBit(u_input.a), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.c), 696f))).a.x | var_1.x, func_7(Struct_5(var_1.x & 19588u, global0[_wgslsmith_index_u32(~var_0.e.b.a.x, 21u)], select(-vec3<i32>(-2147483647i, u_input.a.x, 52958i), vec3<i32>(u_input.a.x, -46476i, global3.a), true), _wgslsmith_div_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(2147483647i, var_0.e.a), u_input.a), ~u_input.a), vec2<bool>(func_5(Struct_4(1u, var_0.e.b, 101f, Struct_2(Struct_1(var_0.d.a.a, 4012u)), Struct_3(24303i, Struct_1(global3.b.a, 104192u))), 1u, vec4<u32>(u_input.c, 25718u, global3.b.b, 24139u), vec4<bool>(true, false, false, true)), all(vec4<bool>(false, false, true, false)))), var_0.e.a, func_6(vec4<bool>(true, true, true, true), select(true, true, true)), _wgslsmith_f_op_f32(-145f - _wgslsmith_f_op_f32(-var_0.c))), var_0.c, Struct_2(var_0.d.a), Struct_3(_wgslsmith_sub_i32(_wgslsmith_sub_i32(u_input.a.x, -24422i), u_input.a.x), global3.b));
    var var_2 = u_input.a;
    let var_3 = !vec3<bool>(true, (_wgslsmith_add_i32(43936i, var_2.x) < 1i) & (~u_input.d >= var_1.x), false);
    let x = u_input.a;
    s_output = StorageBuffer(-19028i, _wgslsmith_add_i32(1i, _wgslsmith_dot_vec4_i32(-vec4<i32>(-2147483647i, global3.a, var_2.x, 14557i), ~vec4<i32>(var_0.e.a, -8308i, -6147i, var_0.e.a) << (max(vec4<u32>(u_input.d, 4294967295u, u_input.c, 0u), vec4<u32>(global3.b.b, var_1.x, global3.b.b, 90512u)) % vec4<u32>(32u)))), 3438u, ~_wgslsmith_mod_u32(_wgslsmith_sub_u32(0u, u_input.d) >> (~0u % 32u), var_0.a), u_input.d);
}

