struct Struct_1 {
    a: vec3<f32>,
    b: vec3<u32>,
    c: f32,
    d: vec4<i32>,
}

struct Struct_2 {
    a: bool,
    b: vec4<f32>,
    c: Struct_1,
    d: Struct_1,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(false, true, true);

var<private> global1: array<vec3<bool>, 1> = array<vec3<bool>, 1>(vec3<bool>(true, false, true));

var<private> global2: array<vec3<u32>, 30>;

var<private> global3: array<vec2<i32>, 12>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> bool {
    global3 = array<vec2<i32>, 12>();
    global0 = global1[_wgslsmith_index_u32(u_input.a, 1u)];
    var var_0 = -17442i;
    let var_1 = Struct_2(true, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(357f, -3381f, -489f, 500f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-922f, -326f, 667f, -293f) - vec4<f32>(-627f, 663f, 384f, 708f)), u_input.b < u_input.b)))), Struct_1(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(1000f, -513f, 1235f), vec3<f32>(-1652f, 694f, -787f)) - vec3<f32>(-267f, 1064f, 1871f)))), reverseBits(vec3<u32>(u_input.a, _wgslsmith_div_u32(34077u, 41013u), u_input.a)), _wgslsmith_f_op_f32(round(-1366f)), _wgslsmith_clamp_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(8097i, 1i, u_input.b, u_input.b), vec4<i32>(u_input.b, u_input.b, u_input.b, 0i)), vec4<i32>(0i, u_input.b, 0i, u_input.b), _wgslsmith_add_vec4_i32(vec4<i32>(329i, 0i, 12495i, -2147483647i), vec4<i32>(u_input.b, -896i, 0i, 2147483647i))) >> (abs(~vec4<u32>(u_input.a, u_input.a, 45965u, u_input.a)) % vec4<u32>(32u))), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(vec3<f32>(-1191f, 461f, -274f), vec3<f32>(1246f, 2490f, 394f))))), global2[_wgslsmith_index_u32(u_input.a, 30u)], _wgslsmith_f_op_f32(290f * 424f), (countOneBits(vec4<i32>(-13090i, u_input.b, -1i, -24071i)) ^ vec4<i32>(u_input.b, -27331i, 26894i, u_input.b)) | vec4<i32>(_wgslsmith_add_i32(-3819i, -1i), u_input.b, 1i, u_input.b)), ~(~abs(4294967295u)));
    return any(global0.xx) || (((u_input.a ^ ~var_1.c.b.x) >= var_1.e) && global0.x);
}

fn func_2(arg_0: vec4<u32>) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 1545f, 1006f, -1049f)) - _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-270f, 3114f, -510f, 930f), vec4<f32>(1051f, -265f, -1000f, 466f)))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-664f, 1101f, -1422f, -275f), vec4<f32>(634f, 665f, -375f, -2348f))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-873f, 1203f, -509f, 328f), vec4<f32>(-1112f, 1397f, -387f, -1000f))))))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -140f), _wgslsmith_f_op_f32(1000f - -707f), -587f, _wgslsmith_f_op_f32(min(712f, -1000f))))));
    var var_1 = Struct_2(global0.x, vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -629f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.x + -151f), var_0.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.x), -1660f)), var_0.x), Struct_1(var_0.yxz, ~vec3<u32>(arg_0.x, _wgslsmith_sub_u32(arg_0.x, 5611u), 29397u), 1342f, -_wgslsmith_mod_vec4_i32(abs(vec4<i32>(u_input.b, 2147483647i, 0i, 40404i)), ~vec4<i32>(u_input.b, u_input.b, 1882i, u_input.b))), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.xzz)), arg_0.wyy, _wgslsmith_f_op_f32(f32(-1f) * -717f), vec4<i32>(-u_input.b, 1i, -min(33242i, -22099i), -(u_input.b >> (arg_0.x % 32u)))), arg_0.x);
    var var_2 = func_3();
    let var_3 = Struct_2(-7180i != _wgslsmith_mult_i32(_wgslsmith_sub_i32(var_1.c.d.x, var_1.c.d.x), ~(var_1.d.d.x | -10917i)), var_1.b, var_1.d, Struct_1(vec3<f32>(var_1.c.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(535f - var_0.x) + _wgslsmith_f_op_f32(trunc(1131f))), _wgslsmith_f_op_f32(f32(-1f) * -186f)), var_1.d.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(var_1.c.a.x + 1393f)))), abs(_wgslsmith_clamp_vec4_i32(-var_1.c.d, abs(var_1.c.d), var_1.d.d))), _wgslsmith_dot_vec3_u32(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, var_1.e, 4294967295u), arg_0.zwx), reverseBits(max(56837u, var_1.e))), 30u)], ~(vec3<u32>(1u, arg_0.x, u_input.a) & var_1.d.b) << ((~global2[_wgslsmith_index_u32(23602u, 30u)] << (global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(arg_0, arg_0), 30u)] % vec3<u32>(32u))) % vec3<u32>(32u))));
    return Struct_2(select(false, global0.x, false) && !(true & all(vec4<bool>(true, global0.x, var_3.a, var_3.a))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_3.b), _wgslsmith_f_op_vec4_f32(-var_3.b)), var_3.c, var_3.d, 1u);
}

fn func_1() -> Struct_2 {
    var var_0 = func_2(reverseBits(firstTrailingBit(~vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a))));
    var var_1 = Struct_2(global0.x, vec4<f32>(_wgslsmith_f_op_f32(round(789f)), _wgslsmith_f_op_f32(-var_0.c.a.x), 1f, 346f), func_2(~(~vec4<u32>(4294967295u, u_input.a, 17148u, u_input.a) & ~vec4<u32>(var_0.e, var_0.d.b.x, var_0.d.b.x, var_0.e))).c, func_2(select(~(~vec4<u32>(19109u, 1u, var_0.e, u_input.a)), _wgslsmith_div_vec4_u32(~vec4<u32>(var_0.c.b.x, 3396u, 0u, u_input.a), _wgslsmith_mult_vec4_u32(vec4<u32>(33045u, 1u, 1u, 14368u), vec4<u32>(0u, u_input.a, var_0.e, u_input.a))), func_3())).d, 1u);
    var var_2 = 7761i;
    let var_3 = -_wgslsmith_mult_i32(-max(-u_input.b, max(8420i, 2147483647i)), var_1.c.d.x);
    let var_4 = func_2(_wgslsmith_mod_vec4_u32(vec4<u32>(~_wgslsmith_sub_u32(var_0.d.b.x, 0u), var_1.c.b.x, var_1.e, ~(u_input.a | var_0.e)), (vec4<u32>(0u, 0u, 60559u, 1u) | (vec4<u32>(15196u, var_0.c.b.x, 39218u, var_1.d.b.x) << (vec4<u32>(0u, u_input.a, 1u, var_0.c.b.x) % vec4<u32>(32u)))) >> (~vec4<u32>(4294967295u, var_0.e, 27310u, var_1.e) % vec4<u32>(32u))));
    return Struct_2(true, var_4.b, var_1.c, func_2(~_wgslsmith_sub_vec4_u32(vec4<u32>(75721u, var_1.d.b.x, 7653u, 6266u), _wgslsmith_div_vec4_u32(vec4<u32>(42306u, var_4.e, 58639u, var_1.e), vec4<u32>(var_1.e, 52164u, 4294967295u, var_1.e)))).c, 11819u);
}

fn func_4(arg_0: Struct_2, arg_1: i32, arg_2: Struct_1, arg_3: vec2<f32>) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(-func_1().d.a.x), -1000f)));
    var var_1 = ~(~(~(arg_2.b.x & u_input.a)));
    var var_2 = !global1[_wgslsmith_index_u32(~(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.b.x, u_input.a, 4294967295u, 11384u), select(vec4<u32>(arg_0.d.b.x, 4294967295u, 43848u, 37174u), vec4<u32>(u_input.a, 54693u, arg_2.b.x, 7493u), global0.x)) >> (65591u % 32u)), 1u)];
    var var_3 = arg_0;
    global1 = array<vec3<bool>, 1>();
    return Struct_2(true, _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1589f) * _wgslsmith_div_f32(var_3.b.x, arg_2.c)), _wgslsmith_f_op_f32(2310f + _wgslsmith_f_op_f32(min(-2330f, var_3.d.a.x))), -1129f)), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.c.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1234f * 120f) - -1000f), -520f), _wgslsmith_sub_vec3_u32(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(var_3.d.b.x, arg_2.b.x, 0u, 1u), vec4<u32>(arg_0.d.b.x, var_3.e, arg_2.b.x, u_input.a))), 30u)], arg_0.c.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1136f) * -235f)), max(vec4<i32>(_wgslsmith_mult_i32(arg_1, -1i), -2147483647i, 9399i, _wgslsmith_clamp_i32(arg_1, arg_0.c.d.x, var_3.d.d.x)), ~_wgslsmith_clamp_vec4_i32(arg_2.d, var_3.c.d, vec4<i32>(-42810i, -1i, -1i, -1i)))), var_3.c, var_3.d.b.x);
}

fn func_5(arg_0: vec4<bool>, arg_1: bool, arg_2: Struct_2, arg_3: Struct_2) -> Struct_2 {
    let var_0 = ~arg_3.d.d.x | _wgslsmith_dot_vec4_i32(~arg_2.d.d << (firstTrailingBit(countOneBits(vec4<u32>(u_input.a, 0u, arg_3.c.b.x, 4294967295u))) % vec4<u32>(32u)), vec4<i32>(47317i, arg_2.c.d.x, 73715i, _wgslsmith_sub_i32(u_input.b, -1i)) >> ((reverseBits(vec4<u32>(17001u, 46968u, u_input.a, arg_2.c.b.x)) << (firstTrailingBit(vec4<u32>(u_input.a, 0u, arg_2.d.b.x, arg_3.e)) % vec4<u32>(32u))) % vec4<u32>(32u)));
    let var_1 = abs(firstTrailingBit(arg_3.d.d.x | ~17691i));
    var var_2 = _wgslsmith_f_op_f32(exp2(arg_2.b.x));
    let var_3 = arg_2.c.b.yx;
    var var_4 = arg_2.d;
    return arg_2;
}

fn func_6(arg_0: Struct_2) -> Struct_1 {
    var var_0 = func_2(abs(_wgslsmith_div_vec4_u32(vec4<u32>(~60072u, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 12154u), vec2<u32>(24533u, u_input.a)), ~arg_0.e, func_4(Struct_2(false, vec4<f32>(arg_0.c.a.x, 1000f, arg_0.c.a.x, arg_0.d.a.x), arg_0.c, Struct_1(arg_0.d.a, arg_0.d.b, arg_0.c.c, vec4<i32>(u_input.b, u_input.b, u_input.b, 1i)), arg_0.e), arg_0.c.d.x, Struct_1(arg_0.d.a, arg_0.d.b, arg_0.b.x, arg_0.d.d), arg_0.d.a.zx).d.b.x), countOneBits(~vec4<u32>(u_input.a, arg_0.e, 62606u, arg_0.c.b.x))))).c;
    let var_1 = _wgslsmith_clamp_u32(_wgslsmith_mult_u32(~arg_0.e, ~(~(~arg_0.e))), u_input.a, select(firstTrailingBit(arg_0.d.b.x), reverseBits(func_5(!vec4<bool>(global0.x, global0.x, false, false), global0.x && arg_0.a, func_1(), func_2(vec4<u32>(18057u, 40621u, var_0.b.x, 4294967295u))).c.b.x), false));
    global0 = vec3<bool>(!(!((global0.x & global0.x) & func_5(vec4<bool>(global0.x, false, false, arg_0.a), false, arg_0, Struct_2(global0.x, arg_0.b, Struct_1(vec3<f32>(arg_0.b.x, arg_0.b.x, var_0.c), var_0.b, -1512f, arg_0.c.d), arg_0.d, 52240u)).a)), global0.x & true, any(vec2<bool>(!global0.x, true)));
    var var_2 = false;
    return func_4(func_4(arg_0, arg_0.c.d.x, Struct_1(vec3<f32>(var_0.c, arg_0.b.x, 903f), ~(var_0.b << (global2[_wgslsmith_index_u32(var_1, 30u)] % vec3<u32>(32u))), func_4(Struct_2(arg_0.a, vec4<f32>(-142f, var_0.c, -259f, var_0.a.x), arg_0.c, Struct_1(vec3<f32>(-193f, 1078f, -884f), global2[_wgslsmith_index_u32(var_0.b.x, 30u)], -1470f, var_0.d), u_input.a), -59875i, Struct_1(vec3<f32>(var_0.a.x, 1596f, 847f), arg_0.c.b, -1369f, arg_0.d.d), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-635f, var_0.a.x))).b.x, ~(-var_0.d)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(var_0.a.x, -1464f), -652f))), u_input.b, arg_0.c, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-646f)) - -1057f)), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.c.c), _wgslsmith_f_op_f32(-var_0.c)), _wgslsmith_f_op_f32(860f - -409f)))).c;
}

fn func_7(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32, arg_3: Struct_1) -> u32 {
    let var_0 = vec4<bool>(global0.x, false, all(global0.zy) || all(!(!vec2<bool>(true, global0.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_0.c, -435f))), _wgslsmith_f_op_f32(f32(-1f) * -785f)) < _wgslsmith_f_op_f32(f32(-1f) * -869f));
    global1 = array<vec3<bool>, 1>();
    let var_1 = Struct_2(any(!var_0.xw), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1117f, _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(min(-895f, arg_0.c))), arg_0.c, func_5(select(vec4<bool>(true, var_0.x, var_0.x, false), var_0, global0.x), false && global0.x, Struct_2(false, vec4<f32>(arg_0.a.x, arg_1.c, -775f, 612f), arg_3, arg_0, 6441u), Struct_2(global0.x, vec4<f32>(arg_0.c, -316f, arg_3.c, arg_0.c), arg_3, Struct_1(vec3<f32>(arg_3.a.x, arg_3.c, 882f), arg_3.b, arg_1.c, arg_1.d), u_input.a)).c.a.x))), Struct_1(arg_0.a, func_6(func_2(vec4<u32>(4294967295u, arg_0.b.x, u_input.a, arg_1.b.x))).b << (~global2[_wgslsmith_index_u32(1u, 30u)] % vec3<u32>(32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(145f + arg_3.c))), arg_1.d), func_1().c, _wgslsmith_mod_u32(arg_3.b.x, countOneBits(4294967295u)));
    let var_2 = arg_0.d.x;
    return 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec3<u32>, 30>();
    global0 = vec3<bool>(!(!global0.x), _wgslsmith_dot_vec2_i32(firstTrailingBit(~vec2<i32>(0i, -2147483647i)), ~(global3[_wgslsmith_index_u32(1u, 12u)] | vec2<i32>(u_input.b, 84542i))) >= -2147483647i, global0.x);
    global3 = array<vec2<i32>, 12>();
    global3 = array<vec2<i32>, 12>();
    var var_0 = func_7(func_6(func_5(!vec4<bool>(true, global0.x, true, true), false, func_4(func_1(), u_input.b >> (u_input.a % 32u), Struct_1(vec3<f32>(-1000f, 1447f, 314f), vec3<u32>(1u, u_input.a, 12030u), -340f, vec4<i32>(u_input.b, u_input.b, 0i, 13904i)), vec2<f32>(-515f, 1370f)), Struct_2(global0.x, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-581f, -663f, 613f, 255f)), Struct_1(vec3<f32>(-954f, -866f, -678f), vec3<u32>(u_input.a, 13413u, u_input.a), 698f, vec4<i32>(u_input.b, 49221i, u_input.b, -1i)), func_2(vec4<u32>(u_input.a, 14007u, 1u, 53876u)).d, 20261u ^ u_input.a))), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-266f, -1002f, 442f))), func_6(func_4(Struct_2(true, vec4<f32>(-1711f, -486f, 1881f, 1697f), Struct_1(vec3<f32>(696f, 1188f, 800f), vec3<u32>(u_input.a, u_input.a, 4294967295u), -515f, vec4<i32>(-62193i, 53914i, 46108i, -7825i)), Struct_1(vec3<f32>(-626f, -2067f, 781f), global2[_wgslsmith_index_u32(0u, 30u)], 233f, vec4<i32>(0i, -28615i, u_input.b, -13851i)), u_input.a), -21289i, Struct_1(vec3<f32>(-1660f, -584f, 293f), global2[_wgslsmith_index_u32(u_input.a, 30u)], -253f, vec4<i32>(-1i, -1i, u_input.b, 26256i)), vec2<f32>(1391f, -1598f))).b << (func_5(!vec4<bool>(global0.x, global0.x, false, false), global0.x, func_2(vec4<u32>(20067u, u_input.a, 1u, u_input.a)), Struct_2(true, vec4<f32>(-148f, -726f, 889f, -175f), Struct_1(vec3<f32>(303f, -2043f, -1000f), vec3<u32>(u_input.a, 1u, u_input.a), -1036f, vec4<i32>(2632i, 62643i, u_input.b, u_input.b)), Struct_1(vec3<f32>(978f, 2113f, -1995f), global2[_wgslsmith_index_u32(43142u, 30u)], 393f, vec4<i32>(u_input.b, 0i, u_input.b, -1i)), u_input.a)).d.b % vec3<u32>(32u)), 1602f, vec4<i32>(-1059i, ~select(-29000i, -2147483647i, false), ~abs(u_input.b), ~0i)), ~0i, func_1().d);
    var var_1 = abs(~40043u);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(1568f - func_4(Struct_2(false, vec4<f32>(545f, -1018f, -117f, 1975f), Struct_1(vec3<f32>(406f, -351f, -655f), global2[_wgslsmith_index_u32(u_input.a, 30u)], -759f, vec4<i32>(u_input.b, u_input.b, -43312i, u_input.b)), Struct_1(vec3<f32>(-269f, -626f, -103f), vec3<u32>(u_input.a, u_input.a, 50137u), 1087f, vec4<i32>(u_input.b, 0i, u_input.b, -1i)), 24383u), u_input.b, func_4(Struct_2(global0.x, vec4<f32>(385f, -1203f, 1170f, -1040f), Struct_1(vec3<f32>(164f, 133f, 288f), global2[_wgslsmith_index_u32(797u, 30u)], 1163f, vec4<i32>(u_input.b, 2811i, u_input.b, u_input.b)), Struct_1(vec3<f32>(-931f, -1553f, -1221f), vec3<u32>(8875u, 54053u, u_input.a), -346f, vec4<i32>(-44688i, 2219i, -1i, u_input.b)), u_input.a), 86513i, Struct_1(vec3<f32>(-1566f, -176f, -748f), global2[_wgslsmith_index_u32(u_input.a, 30u)], 2008f, vec4<i32>(-246i, 12048i, u_input.b, -9977i)), vec2<f32>(-153f, 278f)).c, _wgslsmith_div_vec2_f32(vec2<f32>(-528f, -368f), vec2<f32>(-162f, 3419f))).d.a.x), -1252f, -1642f, _wgslsmith_f_op_f32(-func_4(func_1(), func_6(Struct_2(global0.x, vec4<f32>(-219f, -397f, -3549f, -1583f), Struct_1(vec3<f32>(1009f, -758f, -1000f), global2[_wgslsmith_index_u32(u_input.a, 30u)], 171f, vec4<i32>(u_input.b, -2147483647i, -1i, u_input.b)), Struct_1(vec3<f32>(-399f, 806f, -470f), global2[_wgslsmith_index_u32(0u, 30u)], 1122f, vec4<i32>(11324i, 0i, -2147483647i, u_input.b)), 15775u)).d.x, func_5(vec4<bool>(global0.x, true, global0.x, global0.x), global0.x, Struct_2(false, vec4<f32>(1114f, 413f, 588f, -1000f), Struct_1(vec3<f32>(829f, -1000f, -1000f), global2[_wgslsmith_index_u32(1u, 30u)], 457f, vec4<i32>(-18462i, u_input.b, 0i, -1i)), Struct_1(vec3<f32>(-1000f, 1000f, -333f), global2[_wgslsmith_index_u32(u_input.a, 30u)], 2217f, vec4<i32>(u_input.b, -2147483647i, -2147483647i, 1i)), 1u), Struct_2(false, vec4<f32>(-203f, 654f, -281f, -603f), Struct_1(vec3<f32>(-250f, 223f, 1136f), vec3<u32>(u_input.a, u_input.a, u_input.a), -176f, vec4<i32>(u_input.b, u_input.b, u_input.b, 56453i)), Struct_1(vec3<f32>(634f, -527f, 466f), global2[_wgslsmith_index_u32(1u, 30u)], -1218f, vec4<i32>(u_input.b, 0i, 63054i, 23037i)), u_input.a)).d, func_5(vec4<bool>(true, global0.x, global0.x, global0.x), true, Struct_2(true, vec4<f32>(222f, 919f, -367f, 1199f), Struct_1(vec3<f32>(-532f, -810f, 305f), global2[_wgslsmith_index_u32(1u, 30u)], -468f, vec4<i32>(u_input.b, u_input.b, u_input.b, 0i)), Struct_1(vec3<f32>(-1000f, 895f, -228f), vec3<u32>(u_input.a, u_input.a, u_input.a), 649f, vec4<i32>(6504i, u_input.b, 2147483647i, u_input.b)), 62278u), Struct_2(global0.x, vec4<f32>(-1000f, 1176f, -1102f, 2390f), Struct_1(vec3<f32>(-1458f, 611f, -1173f), vec3<u32>(12407u, u_input.a, u_input.a), -192f, vec4<i32>(u_input.b, 1i, 1i, -2147483647i)), Struct_1(vec3<f32>(1187f, 390f, -2723f), global2[_wgslsmith_index_u32(1u, 30u)], 111f, vec4<i32>(27906i, u_input.b, u_input.b, -16221i)), u_input.a)).c.a.yx).b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1333f)), countOneBits(_wgslsmith_clamp_vec3_u32(max(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, 4294967295u, 1u), vec3<u32>(1u, 4117u, 4294967295u)), ~global2[_wgslsmith_index_u32(u_input.a, 30u)]), ~firstLeadingBit(global2[_wgslsmith_index_u32(4294967295u, 30u)]), global2[_wgslsmith_index_u32(4294967295u, 30u)])));
}

