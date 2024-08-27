struct Struct_1 {
    a: i32,
    b: f32,
    c: i32,
    d: vec3<bool>,
    e: vec4<f32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: vec2<f32>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec2<f32>,
    c: bool,
    d: vec4<bool>,
}

struct Struct_4 {
    a: vec3<i32>,
    b: u32,
}

struct Struct_5 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 5>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec2<bool>, arg_1: vec3<bool>) -> bool {
    let var_0 = Struct_2(firstTrailingBit(vec3<i32>(1i, abs(_wgslsmith_sub_i32(u_input.a, 1154i)), -_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, 16850i, u_input.a, 57034i), vec4<i32>(2147483647i, u_input.a, u_input.a, -8597i)))), Struct_1(-(~(~51552i)), 1025f, reverseBits(-u_input.a), select(arg_1, arg_1, select(select(vec3<bool>(arg_1.x, arg_1.x, false), vec3<bool>(arg_0.x, true, arg_0.x), vec3<bool>(false, true, false)), select(vec3<bool>(true, true, true), arg_1, false), vec3<bool>(arg_1.x, true, false))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-281f, 1395f, -166f, -817f)), _wgslsmith_div_vec4_f32(vec4<f32>(600f, 1087f, -722f, 322f), vec4<f32>(-634f, -1029f, -285f, 2770f)), arg_1.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-2279f, 867f, 811f, 129f) * vec4<f32>(-1298f, -210f, -601f, 948f))), select(arg_0.x, true, any(vec3<bool>(true, arg_0.x, false)))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-390f, -777f), vec2<f32>(106f, 470f), vec2<bool>(arg_0.x, true))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(242f, 103f))))) - _wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-512f, 554f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1710f, -170f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(840f, 278f)) * vec2<f32>(1043f, -173f))))));
    let var_1 = Struct_2(vec3<i32>(_wgslsmith_dot_vec2_i32(-var_0.a.yx, max(countOneBits(vec2<i32>(1i, var_0.a.x)), vec2<i32>(0i, u_input.a))), u_input.a, 43606i), var_0.b, _wgslsmith_div_vec2_f32(var_0.c, _wgslsmith_f_op_vec2_f32(-var_0.c)));
    var var_2 = _wgslsmith_dot_vec3_u32(vec3<u32>(1u, firstLeadingBit(~1u), max(reverseBits(1u), u_input.b)), select(abs(countOneBits(vec3<u32>(76391u, 42666u, 0u)) << (min(vec3<u32>(u_input.c, 10978u, u_input.c), vec3<u32>(31605u, u_input.c, 1u)) % vec3<u32>(32u))), vec3<u32>(39100u, _wgslsmith_dot_vec2_u32(select(vec2<u32>(21169u, u_input.b), vec2<u32>(u_input.c, 9258u), true), _wgslsmith_div_vec2_u32(vec2<u32>(3276u, 4294967295u), vec2<u32>(1u, 15329u))), 0u), false));
    var var_3 = abs(-u_input.a);
    var var_4 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c << (_wgslsmith_mod_u32(1u, 1u) % 32u), u_input.b, abs(u_input.c & (u_input.b >> (u_input.c % 32u))), ~(~u_input.b)), ~_wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(0u, 53500u, 20365u, 20225u), vec4<u32>(u_input.c, 23183u, u_input.b, 30746u)), vec4<u32>(1788u, 3223u, 1u, firstTrailingBit(u_input.b)), firstLeadingBit(vec4<u32>(u_input.b, u_input.c, u_input.c, u_input.b) >> (vec4<u32>(u_input.b, u_input.b, u_input.c, u_input.c) % vec4<u32>(32u))))), 5u)];
    return !any(select(vec3<bool>(arg_1.x, true, var_1.a.x != u_input.a), vec3<bool>(true, all(vec2<bool>(arg_1.x, var_1.b.d.x)), var_1.b.d.x != false), all(vec4<bool>(true, true, true, arg_0.x))));
}

fn func_2() -> Struct_2 {
    var var_0 = true;
    var var_1 = vec4<bool>(true, true, !func_3(vec2<bool>(true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true))), all(vec3<bool>(true, false, true)));
    let var_2 = -15475i;
    var var_3 = !var_1.xzw;
    let var_4 = _wgslsmith_clamp_vec4_u32(abs(reverseBits(~vec4<u32>(u_input.b, u_input.c, u_input.c, 101886u)) ^ vec4<u32>(~u_input.b, 0u << (u_input.c % 32u), max(32731u, u_input.b), u_input.b)), firstTrailingBit(vec4<u32>(u_input.b, _wgslsmith_dot_vec4_u32(vec4<u32>(80149u, u_input.c, 1u, 1u), vec4<u32>(u_input.c, 1u, 30538u, u_input.c)), 4294967295u, u_input.c)) >> (~abs(firstLeadingBit(vec4<u32>(51227u, 96693u, 0u, u_input.b))) % vec4<u32>(32u)), ~vec4<u32>(~u_input.b, 1u, reverseBits(0u), 1u) << (~(~(~vec4<u32>(4294967295u, u_input.b, u_input.c, u_input.b))) % vec4<u32>(32u)));
    return Struct_2(firstLeadingBit(vec3<i32>(u_input.a, select(abs(var_2), _wgslsmith_add_i32(u_input.a, 1015i), var_4.x > var_4.x), var_2)), Struct_1(-106336i, 1415f, u_input.a, select(var_1.xww, var_1.zwy, var_4.x == abs(u_input.c)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(1365f, 197f)), _wgslsmith_f_op_f32(trunc(-851f)), -1000f, _wgslsmith_f_op_f32(1000f + -1311f)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-151f, -257f))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(138f, -1684f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(498f, 442f)))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(691f, -906f))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -617f), _wgslsmith_div_f32(-1585f, 1113f)))), !var_3.x)));
}

fn func_1(arg_0: vec4<bool>, arg_1: vec3<u32>) -> Struct_2 {
    global0 = array<Struct_5, 5>();
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(ceil(-403f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -104f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(470f * -1799f))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -881f) - 471f) * 118f))));
    global0 = array<Struct_5, 5>();
    let var_1 = ~u_input.a;
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) + _wgslsmith_f_op_f32(round(var_0.x))), _wgslsmith_f_op_f32(max(-287f, -1176f)), var_0.x, -1408f)));
    return func_2();
}

fn func_4(arg_0: i32, arg_1: u32, arg_2: Struct_2, arg_3: Struct_3) -> Struct_2 {
    global0 = array<Struct_5, 5>();
    var var_0 = Struct_4(arg_2.a, 13848u);
    var_0 = Struct_4(_wgslsmith_div_vec3_i32(-(-vec3<i32>(26737i, 1400i, -1i) ^ vec3<i32>(57765i, var_0.a.x, 27340i)), _wgslsmith_mult_vec3_i32(arg_2.a, _wgslsmith_div_vec3_i32(arg_2.a, ~vec3<i32>(arg_3.a.x, var_0.a.x, 0i)))), u_input.c);
    var_0 = Struct_4(-vec3<i32>(max(-13131i, i32(-1i) * -51354i), -min(-3618i, -88557i), -firstLeadingBit(0i)), u_input.b);
    var_0 = Struct_4(~(-arg_2.a), _wgslsmith_mult_u32(~select(~48321u, _wgslsmith_dot_vec2_u32(vec2<u32>(3435u, u_input.c), vec2<u32>(3200u, arg_1)), true), _wgslsmith_div_u32(4294967295u, arg_1)));
    return func_2();
}

fn func_5(arg_0: vec3<bool>, arg_1: i32, arg_2: Struct_2, arg_3: bool) -> Struct_2 {
    let var_0 = 4294967295u;
    var var_1 = Struct_2(abs(arg_2.a), func_1(vec4<bool>(arg_0.x, false, true, arg_2.b.d.x), ~min(~vec3<u32>(u_input.b, u_input.b, 23257u), vec3<u32>(var_0, 56405u, var_0))).b, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(arg_2.b.e.xy, vec2<f32>(-1548f, 422f))) - _wgslsmith_f_op_vec2_f32(arg_2.c - arg_2.b.e.zw)))))));
    var var_2 = ~select(reverseBits(abs(vec4<u32>(var_0, 59475u, 0u, 33323u) | vec4<u32>(u_input.b, 61430u, u_input.b, var_0))), ~vec4<u32>(1u, 15165u, _wgslsmith_mod_u32(1u, var_0), ~102743u), select(!(!vec4<bool>(var_1.b.d.x, arg_3, arg_2.b.d.x, arg_2.b.d.x)), vec4<bool>(true, true, true, false), !arg_2.b.d.x));
    var_2 = ~_wgslsmith_div_vec4_u32(vec4<u32>(~_wgslsmith_div_u32(40790u, var_0), ~1u, _wgslsmith_dot_vec3_u32(vec3<u32>(var_0, var_2.x, 59963u), var_2.yxw), ~u_input.c), _wgslsmith_sub_vec4_u32(vec4<u32>(var_2.x, var_0, 0u, var_2.x), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.c, var_2.x, var_2.x, 61848u), vec4<u32>(26748u, 1u, 4294967295u, var_0))) << (countOneBits(countOneBits(vec4<u32>(16478u, 4922u, 0u, var_2.x))) % vec4<u32>(32u)));
    var_1 = arg_2;
    return arg_2;
}

fn func_6(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: vec2<bool>) -> vec2<f32> {
    let var_0 = vec4<bool>(true, false, true, any(arg_1.b.d));
    global0 = array<Struct_5, 5>();
    global0 = array<Struct_5, 5>();
    let var_1 = func_1(select(!select(vec4<bool>(false, false, arg_1.b.d.x, arg_2.x), var_0, 2147483647i >= u_input.a), !select(select(var_0, vec4<bool>(true, false, false, false), var_0), var_0, !var_0), var_0), arg_0).b;
    let var_2 = global0[_wgslsmith_index_u32(8400u, 5u)];
    return _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-var_1.e.zz)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_sub_u32(~firstLeadingBit(~countOneBits(u_input.b)), ~32150u);
    let var_1 = Struct_3(vec2<i32>(-1i, countOneBits(-698i)), _wgslsmith_f_op_vec2_f32(func_6(vec3<u32>(_wgslsmith_mod_u32(~u_input.b, 40590u), u_input.c, 4294967295u), func_5(vec3<bool>(true, any(vec4<bool>(true, false, true, false)), false), -31116i, func_4(-13476i >> (u_input.b % 32u), max(u_input.c, 0u), func_1(vec4<bool>(true, false, false, false), vec3<u32>(57984u, 79744u, 53303u)), Struct_3(vec2<i32>(39872i, 1i), vec2<f32>(230f, 671f), false, vec4<bool>(true, true, false, false))), true), !vec2<bool>(u_input.b > 57845u, true))), func_4(~54883i, u_input.c, func_2(), Struct_3(vec2<i32>(1i, _wgslsmith_sub_i32(-43256i, u_input.a)), _wgslsmith_f_op_vec2_f32(-func_5(vec3<bool>(true, true, false), 2147483647i, Struct_2(vec3<i32>(u_input.a, u_input.a, 11027i), Struct_1(u_input.a, 182f, u_input.a, vec3<bool>(true, false, true), vec4<f32>(-186f, 515f, 592f, 1000f)), vec2<f32>(-1904f, -721f)), true).c), !any(vec2<bool>(false, false)), vec4<bool>(select(true, true, true), true, func_3(vec2<bool>(false, false), vec3<bool>(false, true, true)), true))).b.d.x, vec4<bool>(all(vec2<bool>(true, false)) & true, false, true, all(func_1(vec4<bool>(false, false, false, true), ~vec3<u32>(u_input.c, u_input.c, 29343u)).b.d)));
    let var_2 = func_4(_wgslsmith_div_i32(max(select(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, -37579i, 2147483647i, 24039i), vec4<i32>(-1i, var_1.a.x, u_input.a, -1i)), -29951i, var_1.d.x && true), -2147483647i), min(-1i, func_5(vec3<bool>(true, true, var_1.d.x), _wgslsmith_add_i32(var_1.a.x, 0i), func_4(u_input.a, 1u, Struct_2(vec3<i32>(41423i, u_input.a, -22826i), Struct_1(12300i, var_1.b.x, u_input.a, vec3<bool>(true, false, var_1.d.x), vec4<f32>(var_1.b.x, 131f, 1036f, 1573f)), vec2<f32>(var_1.b.x, 1133f)), var_1), func_2().b.d.x).b.a)), reverseBits(u_input.b >> (select(38893u, ~u_input.c, all(vec4<bool>(var_1.d.x, true, false, var_1.d.x))) % 32u)), Struct_2(_wgslsmith_add_vec3_i32(-vec3<i32>(-38725i, 2147483647i, u_input.a) ^ select(vec3<i32>(var_1.a.x, u_input.a, 35228i), vec3<i32>(u_input.a, 25380i, -2147483647i), var_1.d.x), vec3<i32>(-2147483647i, 51845i >> (u_input.b % 32u), var_1.a.x)), Struct_1(var_1.a.x & ~u_input.a, var_1.b.x, firstTrailingBit(_wgslsmith_add_i32(var_1.a.x, 13799i)), func_2().b.d, vec4<f32>(_wgslsmith_f_op_f32(max(217f, 712f)), -2627f, var_1.b.x, -293f)), var_1.b), Struct_3(_wgslsmith_clamp_vec2_i32(vec2<i32>(81791i, u_input.a), firstTrailingBit(vec2<i32>(u_input.a, var_1.a.x)), -vec2<i32>(38545i, var_1.a.x)) << (((vec2<u32>(86128u, 0u) ^ vec2<u32>(0u, u_input.b)) >> (vec2<u32>(u_input.c, u_input.b) % vec2<u32>(32u))) % vec2<u32>(32u)), vec2<f32>(var_1.b.x, _wgslsmith_div_f32(var_1.b.x, -1241f)), var_1.d.x, var_1.d));
    var_0 = ~(~(~(~max(u_input.c, u_input.b))));
    var var_3 = select(var_2.a, vec3<i32>(_wgslsmith_add_i32(_wgslsmith_div_i32(var_1.a.x, -var_2.b.a), var_2.b.a), countOneBits(18814i), reverseBits(select(var_1.a.x, _wgslsmith_dot_vec2_i32(var_1.a, vec2<i32>(-4709i, -24703i)), var_1.c))), all(var_2.b.d.yx));
    var_3 = var_2.a;
    let var_4 = -2048f;
    let var_5 = Struct_4(vec3<i32>(var_1.a.x, _wgslsmith_sub_i32(32362i, 1i), abs(~var_1.a.x)), abs(u_input.c));
    global0 = array<Struct_5, 5>();
    let x = u_input.a;
    s_output = StorageBuffer(-1516f, _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(var_2.c, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-218f, var_2.b.b) - vec2<f32>(var_1.b.x, var_4)) + var_2.c)) + var_2.c), _wgslsmith_f_op_f32(829f * var_2.b.b));
}

