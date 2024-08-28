struct Struct_1 {
    a: vec4<i32>,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
    d: i32,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: Struct_1,
    d: vec2<u32>,
    e: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: vec2<f32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(-37177i, 11896i, 0i);

var<private> global1: array<Struct_2, 29> = array<Struct_2, 29>(Struct_2(Struct_1(vec4<i32>(4642i, i32(-2147483648), 2147483647i, 2147483647i), 34015u), 1i, Struct_1(vec4<i32>(22174i, 1i, 1i, -1i), 0u), 1i), Struct_2(Struct_1(vec4<i32>(-1i, -1i, -33114i, 11393i), 25301u), 21211i, Struct_1(vec4<i32>(2147483647i, -73575i, i32(-2147483648), -29217i), 1u), -2460i), Struct_2(Struct_1(vec4<i32>(2147483647i, 0i, -1i, 0i), 1u), 1i, Struct_1(vec4<i32>(i32(-2147483648), 2147483647i, 2147483647i, 0i), 0u), -13661i), Struct_2(Struct_1(vec4<i32>(-1i, -1i, -1i, 30658i), 0u), -1i, Struct_1(vec4<i32>(-1518i, 0i, 0i, -29838i), 30389u), -1i), Struct_2(Struct_1(vec4<i32>(-9684i, 1i, 10364i, -2886i), 4294967295u), 18909i, Struct_1(vec4<i32>(17287i, 14352i, i32(-2147483648), 29693i), 15986u), 1i), Struct_2(Struct_1(vec4<i32>(37071i, i32(-2147483648), 0i, 0i), 19555u), -89097i, Struct_1(vec4<i32>(-1i, 7407i, -37495i, i32(-2147483648)), 41113u), -1i), Struct_2(Struct_1(vec4<i32>(-26974i, -1i, -47113i, -45657i), 4294967295u), -1i, Struct_1(vec4<i32>(i32(-2147483648), -1i, -1i, 2147483647i), 27510u), -1i), Struct_2(Struct_1(vec4<i32>(1381i, 9370i, -24041i, -1i), 1u), -40510i, Struct_1(vec4<i32>(-40993i, -399i, 2147483647i, 45056i), 64204u), -26410i), Struct_2(Struct_1(vec4<i32>(-64496i, i32(-2147483648), i32(-2147483648), i32(-2147483648)), 0u), 20507i, Struct_1(vec4<i32>(2147483647i, 2147483647i, -16801i, 16563i), 0u), -52750i), Struct_2(Struct_1(vec4<i32>(i32(-2147483648), -71697i, 1i, -12000i), 23068u), -33474i, Struct_1(vec4<i32>(1i, 2147483647i, -1i, i32(-2147483648)), 65297u), 834i), Struct_2(Struct_1(vec4<i32>(-23274i, -1i, -1i, -1i), 56536u), 0i, Struct_1(vec4<i32>(i32(-2147483648), 34508i, -1i, 0i), 13604u), -1i), Struct_2(Struct_1(vec4<i32>(67853i, 2147483647i, -1i, 18212i), 1u), -1i, Struct_1(vec4<i32>(52470i, -1i, 24606i, -26382i), 4294967295u), -1i), Struct_2(Struct_1(vec4<i32>(41545i, 57674i, 8328i, -1i), 25686u), -13891i, Struct_1(vec4<i32>(37926i, 79846i, -21432i, i32(-2147483648)), 5022u), 13571i), Struct_2(Struct_1(vec4<i32>(2147483647i, -1i, -32550i, 2147483647i), 2710u), 2147483647i, Struct_1(vec4<i32>(-27916i, 4982i, 1i, 32049i), 4294967295u), i32(-2147483648)), Struct_2(Struct_1(vec4<i32>(i32(-2147483648), 22666i, 1i, -13124i), 109078u), 0i, Struct_1(vec4<i32>(7121i, -2032i, -10764i, -36453i), 4294967295u), i32(-2147483648)), Struct_2(Struct_1(vec4<i32>(1i, 13906i, 6203i, -17119i), 15587u), -40122i, Struct_1(vec4<i32>(-1i, -11384i, -1i, 14749i), 43484u), 2147483647i), Struct_2(Struct_1(vec4<i32>(i32(-2147483648), -5478i, -1i, 39764i), 42834u), 0i, Struct_1(vec4<i32>(1i, 2147483647i, i32(-2147483648), 2147483647i), 4294967295u), 2147483647i), Struct_2(Struct_1(vec4<i32>(-16293i, -30825i, -1i, 1i), 0u), 2147483647i, Struct_1(vec4<i32>(-40328i, 13709i, 0i, 40108i), 57251u), -1i), Struct_2(Struct_1(vec4<i32>(-11339i, 12617i, 0i, i32(-2147483648)), 0u), -1i, Struct_1(vec4<i32>(-1580i, -38767i, -1i, -1i), 0u), -55512i), Struct_2(Struct_1(vec4<i32>(-29103i, 36711i, 2147483647i, -1i), 1u), 2147483647i, Struct_1(vec4<i32>(15230i, 55743i, 1i, i32(-2147483648)), 69223u), i32(-2147483648)), Struct_2(Struct_1(vec4<i32>(-1i, i32(-2147483648), 0i, -42975i), 35329u), i32(-2147483648), Struct_1(vec4<i32>(-45633i, 1i, -53360i, 22309i), 1u), 24097i), Struct_2(Struct_1(vec4<i32>(2147483647i, -33330i, -29298i, -10829i), 4294967295u), 3626i, Struct_1(vec4<i32>(i32(-2147483648), -1i, 1i, -24042i), 33266u), 1i), Struct_2(Struct_1(vec4<i32>(i32(-2147483648), -1i, -7069i, 0i), 4294967295u), 25095i, Struct_1(vec4<i32>(2147483647i, i32(-2147483648), 51514i, -7042i), 1u), -17532i), Struct_2(Struct_1(vec4<i32>(2147483647i, 1i, -21918i, -16300i), 0u), -25701i, Struct_1(vec4<i32>(15921i, 10936i, -9687i, -101918i), 0u), 0i), Struct_2(Struct_1(vec4<i32>(47509i, 44711i, 2147483647i, 11437i), 4294967295u), 2147483647i, Struct_1(vec4<i32>(7299i, -16598i, -24122i, i32(-2147483648)), 0u), i32(-2147483648)), Struct_2(Struct_1(vec4<i32>(2147483647i, 20431i, -1i, 0i), 0u), 0i, Struct_1(vec4<i32>(1i, -24055i, 9794i, -23617i), 9576u), 0i), Struct_2(Struct_1(vec4<i32>(-1i, -43053i, 75664i, -6534i), 4294967295u), i32(-2147483648), Struct_1(vec4<i32>(i32(-2147483648), -24544i, -43072i, 13169i), 1u), 7145i), Struct_2(Struct_1(vec4<i32>(2147483647i, 0i, 34059i, -28404i), 99173u), -6679i, Struct_1(vec4<i32>(1i, 0i, 49272i, 0i), 8385u), 6265i), Struct_2(Struct_1(vec4<i32>(26077i, 0i, 42100i, -24720i), 18164u), 29903i, Struct_1(vec4<i32>(1i, -21732i, -16850i, 10491i), 6705u), -1i));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: bool) -> vec4<u32> {
    var var_0 = Struct_3(_wgslsmith_clamp_i32(51181i, 10408i, ~(~1i ^ -u_input.a.x)), Struct_2(arg_0, -40817i, Struct_1(vec4<i32>(global0.x, arg_0.a.x, 9612i, _wgslsmith_dot_vec4_i32(vec4<i32>(0i, u_input.a.x, 46020i, -1i), arg_0.a)), reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(11001u, 4294967295u, 1u, arg_1), vec4<u32>(arg_0.b, 8891u, 3672u, 15553u)))), _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(global0.zy << (vec2<u32>(arg_0.b, arg_0.b) % vec2<u32>(32u)), -vec2<i32>(-13478i, -2147483647i)), _wgslsmith_sub_i32(arg_0.a.x, ~(-1i)))), arg_0, reverseBits(vec2<u32>(firstLeadingBit(0u), _wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, arg_0.b, arg_0.b, arg_0.b), vec4<u32>(31842u, 9763u, 0u, 1u)))), reverseBits(_wgslsmith_sub_u32(arg_1, _wgslsmith_dot_vec4_u32(~vec4<u32>(9908u, 4294967295u, 25831u, arg_0.b), vec4<u32>(arg_1, arg_0.b, 4294967295u, arg_0.b)))));
    global0 = vec3<i32>(-29647i, (u_input.a.x >> (_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.b, arg_0.b, 4294967295u, 1u) ^ vec4<u32>(var_0.b.a.b, arg_1, arg_1, arg_0.b), select(vec4<u32>(0u, arg_0.b, arg_1, arg_1), vec4<u32>(11911u, arg_1, arg_1, 4294967295u), vec4<bool>(true, arg_2, arg_2, true))) % 32u)) ^ 1i, ~u_input.b);
    var var_1 = arg_0.a.zxy;
    let var_2 = !vec2<bool>(true && (var_0.b.c.b <= 1u), select(true, false, any(select(vec3<bool>(false, true, false), vec3<bool>(arg_2, false, false), arg_2))));
    global1 = array<Struct_2, 29>();
    return vec4<u32>(~arg_0.b, min(var_0.b.c.b, ~(abs(arg_0.b) | firstLeadingBit(27093u))), ~4241u, ~(~_wgslsmith_div_u32(94737u, arg_1)));
}

fn func_2(arg_0: Struct_1) -> Struct_3 {
    let var_0 = ~func_3(arg_0, countOneBits(_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.b, 1u, 80596u, arg_0.b), vec4<u32>(28895u, 0u, arg_0.b, 8004u)), ~55786u)), false);
    var var_1 = u_input.a;
    let var_2 = Struct_3(var_1.x, global1[_wgslsmith_index_u32(0u, 29u)], arg_0, func_3(Struct_1(firstLeadingBit(arg_0.a), 22518u), 4294967295u, any(select(vec2<bool>(false, false), vec2<bool>(true, true), true))).yz, var_0.x);
    let var_3 = Struct_2(arg_0, 0i >> (var_0.x % 32u), var_2.c, -1408i);
    global0 = -(~(~(~vec3<i32>(u_input.a.x, arg_0.a.x, 69672i))) & var_2.b.c.a.wzw);
    return Struct_3(_wgslsmith_div_i32(24846i, _wgslsmith_mult_i32((arg_0.a.x >> (54712u % 32u)) | firstTrailingBit(u_input.b), _wgslsmith_clamp_i32(-1i, countOneBits(var_2.c.a.x), var_3.d))), var_2.b, Struct_1(vec4<i32>(_wgslsmith_dot_vec3_i32(max(vec3<i32>(25045i, var_1.x, 0i), arg_0.a.wwz), vec3<i32>(16455i, -12470i, 8670i)), _wgslsmith_dot_vec4_i32(arg_0.a, abs(arg_0.a)), 2147483647i, -34937i), 1u), ~var_2.d, var_2.d.x);
}

fn func_4(arg_0: Struct_3, arg_1: vec3<bool>, arg_2: i32, arg_3: Struct_3) -> f32 {
    let var_0 = arg_0.b.a;
    global0 = arg_0.b.a.a.yyx;
    let var_1 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(879f, -834f, -1622f, _wgslsmith_f_op_f32(trunc(-966f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(766f, -1123f, -2232f, -2169f)))))));
    global1 = array<Struct_2, 29>();
    var var_2 = select(!arg_1.zy, arg_1.zy, vec2<bool>(_wgslsmith_dot_vec2_u32(arg_0.d, countOneBits(arg_3.d)) > arg_3.d.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(803f - var_1.x))) < _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(-796f)), -841f))));
    return var_1.x;
}

fn func_5(arg_0: vec4<f32>, arg_1: u32) -> f32 {
    var var_0 = func_2(Struct_1(firstTrailingBit(vec4<i32>(_wgslsmith_sub_i32(global0.x, u_input.b), -u_input.b, 2147483647i, u_input.b)), func_3(Struct_1(~vec4<i32>(7655i, 1i, 30293i, -27050i), arg_1), ~select(66743u, 4294967295u, true), all(vec4<bool>(false, true, true, true)) == true).x));
    let var_1 = -min(13027i, -(~(-2147483647i)) & ~(u_input.b >> (4294967295u % 32u)));
    global0 = u_input.a;
    global1 = array<Struct_2, 29>();
    global0 = var_0.c.a.ywx & vec3<i32>(abs(30339i), 7039i, select(firstLeadingBit(2147483647i), u_input.b, all(vec3<bool>(true, true, true))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_0.x)) - arg_0.x));
}

fn func_1() -> vec4<bool> {
    global0 = -abs(_wgslsmith_mult_vec3_i32(-(vec3<i32>(global0.x, 2147483647i, u_input.a.x) << (vec3<u32>(0u, 30519u, 1u) % vec3<u32>(32u))), vec3<i32>(1i, -4484i, 33513i)));
    global0 = vec3<i32>(1i, 3384i, -23035i);
    global0 = ~abs(vec3<i32>(_wgslsmith_clamp_i32(0i, 29492i, u_input.a.x), u_input.a.x, 46365i) | u_input.a);
    var var_0 = any(!vec2<bool>(false, select(true, true, false)));
    var var_1 = vec2<f32>(259f, _wgslsmith_f_op_f32(func_5(vec4<f32>(-277f, _wgslsmith_f_op_f32(func_4(func_2(Struct_1(vec4<i32>(1i, 0i, -16291i, 2147483647i), 1u)), vec3<bool>(true, true, true), -2507i, func_2(Struct_1(vec4<i32>(global0.x, 42139i, global0.x, global0.x), 45446u)))), _wgslsmith_div_f32(-1010f, _wgslsmith_f_op_f32(1000f + 204f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(-548f))))), ~func_2(Struct_1(vec4<i32>(-30704i, -1i, global0.x, -5651i), 20513u)).c.b)));
    return select(vec4<bool>(any(vec3<bool>(true, true, true)), true, any(select(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true)), vec2<bool>(false, false), vec2<bool>(true, true))), false), vec4<bool>(true, func_2(Struct_1(vec4<i32>(global0.x, u_input.b, 0i, -1i), 0u)).b.c.a.x >= u_input.b, all(select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, true), 2523i < global0.x)), true), true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~vec3<u32>(~1u, abs(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 40191u, 74298u, 0u), vec4<u32>(9051u, 1u, 4294967295u, 1u))), 1u));
    var var_1 = select(vec4<bool>(false, _wgslsmith_f_op_f32(650f - _wgslsmith_f_op_f32(sign(1306f))) >= _wgslsmith_f_op_f32(170f + _wgslsmith_f_op_f32(-188f * -666f)), false || any(select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(true, true, false))), true), !func_1(), vec4<bool>(true, true, ~_wgslsmith_mod_i32(global0.x, 0i) == -_wgslsmith_sub_i32(u_input.b, 28034i), true));
    global0 = abs(select(vec3<i32>(36342i, u_input.a.x >> (var_0.x % 32u), _wgslsmith_sub_i32(u_input.a.x, u_input.a.x)), -u_input.a, vec3<bool>(true, var_1.x, var_1.x)) ^ u_input.a);
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-861f, 1430f) * _wgslsmith_f_op_f32(ceil(621f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(664f))), 832f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -820f))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-280f, -744f, -1543f, _wgslsmith_f_op_f32(step(236f, -1000f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(187f, 1211f, -1000f, -349f))))));
    var var_3 = Struct_1(vec4<i32>(select(-2147483647i, 10599i, false), -(~_wgslsmith_add_i32(u_input.a.x, u_input.b)), ~(abs(-1i) << (abs(var_0.x) % 32u)), -1i), _wgslsmith_mod_u32(var_0.x ^ _wgslsmith_add_u32(1u, var_0.x), ~_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, 4294967295u, var_0.x, 0u), vec4<u32>(84255u, 1u, var_0.x, var_0.x)), _wgslsmith_dot_vec2_u32(vec2<u32>(50984u, 59842u), vec2<u32>(31447u, var_0.x)))));
    let var_4 = var_0.x;
    global0 = firstLeadingBit(u_input.a);
    global0 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(~min(-global0.x, var_3.a.x), _wgslsmith_div_vec2_f32(var_2.yw, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(floor(var_2.zw)))))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(107f, 326f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(213f, var_2.x) - var_2.yw), var_3.b > 1u))), var_2.ww, (var_2.x >= -1000f) && true)), abs(var_0));
}

