struct Struct_1 {
    a: bool,
    b: bool,
    c: vec3<i32>,
    d: vec4<i32>,
    e: vec3<f32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: vec3<u32>,
    b: Struct_1,
    c: f32,
    d: vec3<u32>,
    e: vec3<i32>,
}

struct Struct_5 {
    a: Struct_4,
    b: bool,
    c: Struct_2,
    d: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<i32>,
    c: vec4<f32>,
    d: vec3<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 23>;

var<private> global1: array<u32, 11> = array<u32, 11>(0u, 39152u, 52501u, 10729u, 4294967295u, 0u, 4294967295u, 4294967295u, 4294967295u, 85294u, 0u);

var<private> global2: array<Struct_2, 18> = array<Struct_2, 18>(Struct_2(false, Struct_1(false, false, vec3<i32>(57711i, 13853i, 20065i), vec4<i32>(-25506i, 0i, 1i, 1i), vec3<f32>(-677f, -392f, -317f))), Struct_2(true, Struct_1(true, true, vec3<i32>(-53096i, 20255i, 61100i), vec4<i32>(-10535i, -15600i, -860i, 29488i), vec3<f32>(114f, 1077f, -1553f))), Struct_2(true, Struct_1(true, true, vec3<i32>(i32(-2147483648), -2644i, i32(-2147483648)), vec4<i32>(-14103i, 38986i, -1i, i32(-2147483648)), vec3<f32>(1110f, 2531f, 195f))), Struct_2(true, Struct_1(true, true, vec3<i32>(0i, -9128i, i32(-2147483648)), vec4<i32>(-7960i, -38204i, 47507i, 2147483647i), vec3<f32>(1636f, 1197f, 436f))), Struct_2(true, Struct_1(false, true, vec3<i32>(2147483647i, -30336i, -1i), vec4<i32>(-20568i, 55411i, 22404i, 64601i), vec3<f32>(-1561f, -238f, -876f))), Struct_2(true, Struct_1(true, true, vec3<i32>(0i, -6554i, 1i), vec4<i32>(i32(-2147483648), -1i, -1i, 7526i), vec3<f32>(-740f, -504f, 237f))), Struct_2(false, Struct_1(false, true, vec3<i32>(-12899i, -15737i, 0i), vec4<i32>(0i, 17917i, 17490i, -1i), vec3<f32>(846f, 1450f, 412f))), Struct_2(false, Struct_1(false, true, vec3<i32>(13393i, -106152i, 1i), vec4<i32>(77364i, 9238i, 1i, -15682i), vec3<f32>(1044f, -1936f, -772f))), Struct_2(true, Struct_1(true, true, vec3<i32>(1i, i32(-2147483648), -1i), vec4<i32>(3429i, -60045i, -14905i, -1i), vec3<f32>(651f, 489f, 714f))), Struct_2(true, Struct_1(true, false, vec3<i32>(1i, 21711i, -40515i), vec4<i32>(0i, -75048i, 51911i, 2147483647i), vec3<f32>(295f, 1658f, 889f))), Struct_2(true, Struct_1(true, true, vec3<i32>(0i, -3447i, -38726i), vec4<i32>(-45811i, 31947i, -337i, 5156i), vec3<f32>(343f, -823f, -1365f))), Struct_2(false, Struct_1(false, true, vec3<i32>(15377i, 11191i, 5050i), vec4<i32>(1i, 24549i, -23295i, 32540i), vec3<f32>(178f, -819f, -497f))), Struct_2(true, Struct_1(true, false, vec3<i32>(1i, 19249i, -1i), vec4<i32>(-23418i, 13800i, 1i, 14336i), vec3<f32>(1237f, 250f, -995f))), Struct_2(false, Struct_1(false, false, vec3<i32>(2147483647i, 8720i, 2147483647i), vec4<i32>(1i, -1i, -52541i, 11116i), vec3<f32>(-283f, -186f, -486f))), Struct_2(true, Struct_1(false, true, vec3<i32>(-21740i, 11299i, 3540i), vec4<i32>(-1i, 1i, 0i, i32(-2147483648)), vec3<f32>(279f, -1367f, 177f))), Struct_2(true, Struct_1(false, true, vec3<i32>(34024i, 33179i, -1i), vec4<i32>(i32(-2147483648), -1i, i32(-2147483648), 1i), vec3<f32>(-177f, 1843f, 553f))), Struct_2(false, Struct_1(false, false, vec3<i32>(5977i, -49624i, -24030i), vec4<i32>(3880i, 50033i, -1i, 2147483647i), vec3<f32>(-976f, -144f, -450f))), Struct_2(true, Struct_1(false, true, vec3<i32>(13350i, -8630i, i32(-2147483648)), vec4<i32>(-59894i, 31813i, 2147483647i, 2147483647i), vec3<f32>(-139f, 734f, 955f))));

var<private> global3: vec2<i32> = vec2<i32>(16603i, 0i);

var<private> global4: array<u32, 23> = array<u32, 23>(47334u, 444u, 39852u, 7458u, 11875u, 1u, 26349u, 4294967295u, 47727u, 36845u, 0u, 4294967295u, 17413u, 29104u, 30601u, 33429u, 5214u, 4294967295u, 8445u, 53750u, 79678u, 60466u, 11499u);

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec2<f32>, arg_1: vec4<i32>) -> vec3<u32> {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1370f - -523f), _wgslsmith_f_op_f32(floor(-215f)))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(731f)))));
    global1 = array<u32, 11>();
    var var_1 = arg_1.x;
    var var_2 = Struct_4(vec3<u32>(~global1[_wgslsmith_index_u32(1u, 11u)], global1[_wgslsmith_index_u32(5049u, 11u)], global4[_wgslsmith_index_u32(~(~4294967295u), 23u)]), global0[_wgslsmith_index_u32(1u, 23u)], _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1899f))))), vec3<u32>(~global4[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(u_input.a, 11u)], 23u)], _wgslsmith_div_u32(global4[_wgslsmith_index_u32(u_input.b, 23u)], 103215u) | (global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(16753u, 23u)], 23u)], 23u)], 23u)], 11u)] ^ 1u), 1u) | _wgslsmith_mult_vec3_u32(_wgslsmith_sub_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(34754u, 11u)], global4[_wgslsmith_index_u32(u_input.b, 23u)], 4294967295u), vec3<u32>(20550u, u_input.b, 17206u)), ~vec3<u32>(global4[_wgslsmith_index_u32(0u, 23u)], global1[_wgslsmith_index_u32(1u, 11u)], 0u)), ~vec3<u32>(0u, 1u, 8723u) ^ firstLeadingBit(vec3<u32>(u_input.a, global1[_wgslsmith_index_u32(31707u, 11u)], global1[_wgslsmith_index_u32(0u, 11u)]))), u_input.d);
    global0 = array<Struct_1, 23>();
    return ~(~_wgslsmith_sub_vec3_u32(vec3<u32>(15094u >> (0u % 32u), abs(u_input.b), _wgslsmith_mult_u32(1u, var_2.a.x)), var_2.a));
}

fn func_2(arg_0: u32) -> Struct_1 {
    var var_0 = reverseBits(~vec2<u32>(arg_0, global4[_wgslsmith_index_u32(~19622u, 23u)]));
    var var_1 = _wgslsmith_mult_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(func_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(650f, 557f) * vec2<f32>(435f, 1251f)), vec4<i32>(2147483647i, -1i, global3.x, u_input.d.x) ^ vec4<i32>(u_input.c, u_input.d.x, u_input.c, global3.x)), firstLeadingBit(vec3<u32>(0u, 16910u, 65262u)) >> (_wgslsmith_add_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(4294967295u, 11u)], 4294967295u, 0u), vec3<u32>(4294967295u, 10477u, 0u)) % vec3<u32>(32u))), ~92142u), global1[_wgslsmith_index_u32(~1u, 11u)] >> (abs(~(4294967295u & global1[_wgslsmith_index_u32(arg_0, 11u)])) % 32u));
    global0 = array<Struct_1, 23>();
    let var_2 = u_input.d.xz;
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-729f, 420f, -1000f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-144f, -1185f, -320f)), true)), vec3<f32>(-1577f, -247f, _wgslsmith_f_op_f32(trunc(331f))))));
    return Struct_1(all(vec4<bool>(true, true, true, true)), true, vec3<i32>(u_input.c, select(var_2.x | u_input.d.x, _wgslsmith_div_i32(458i, _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, var_2.x, 13875i, var_2.x), vec4<i32>(var_2.x, u_input.d.x, -8905i, u_input.d.x))), true), -1i), ~_wgslsmith_mod_vec4_i32(~min(vec4<i32>(global3.x, 10801i, -1i, var_2.x), vec4<i32>(-2147483647i, 41349i, u_input.c, u_input.d.x)), select(select(vec4<i32>(-8917i, 0i, -1i, u_input.c), vec4<i32>(global3.x, global3.x, -752i, var_2.x), vec4<bool>(true, false, false, true)), -vec4<i32>(var_2.x, global3.x, global3.x, 22986i), select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, false), false))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1922f), var_3.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1602f + _wgslsmith_f_op_f32(select(var_3.x, var_3.x, true))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-870f + -714f))), var_3.x));
}

fn func_4(arg_0: Struct_4, arg_1: Struct_4, arg_2: vec2<f32>, arg_3: vec2<f32>) -> vec3<u32> {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(trunc(-1340f)), _wgslsmith_f_op_f32(1513f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_3.x))) + -1574f)));
    let var_1 = ~_wgslsmith_sub_i32(i32(-1i) * -26918i, 9841i | countOneBits(global3.x));
    let var_2 = 23257u;
    global0 = array<Struct_1, 23>();
    var var_3 = Struct_5(arg_1, !arg_1.b.a, Struct_2(_wgslsmith_div_u32(~34801u, func_3(arg_1.b.e.yy, arg_0.b.d).x) < countOneBits(~58958u), Struct_1(arg_3.x > _wgslsmith_f_op_f32(arg_1.b.e.x - arg_1.c), !(!arg_1.b.b), arg_0.b.d.zwz, _wgslsmith_sub_vec4_i32(func_2(global1[_wgslsmith_index_u32(485u, 11u)]).d, arg_0.b.d), vec3<f32>(_wgslsmith_f_op_f32(arg_0.c - var_0.x), _wgslsmith_f_op_f32(sign(226f)), _wgslsmith_f_op_f32(-arg_3.x)))), Struct_2(true == (abs(arg_0.b.d.x) == var_1), func_2(global4[_wgslsmith_index_u32(~var_2, 23u)])));
    return ~min(~abs(_wgslsmith_mod_vec3_u32(arg_0.a, arg_1.d)), vec3<u32>(_wgslsmith_clamp_u32(global4[_wgslsmith_index_u32(firstLeadingBit(global4[_wgslsmith_index_u32(var_3.a.a.x, 23u)]), 23u)], global1[_wgslsmith_index_u32(0u, 11u)], ~0u), ~(4294967295u >> (u_input.b % 32u)), 0u));
}

fn func_1(arg_0: i32) -> vec3<u32> {
    var var_0 = -14452i;
    global3 = vec2<i32>(0i, -13616i);
    global0 = array<Struct_1, 23>();
    global0 = array<Struct_1, 23>();
    global2 = array<Struct_2, 18>();
    return func_4(Struct_4(~(~(~vec3<u32>(38773u, global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 23u)], 11u)], 10653u))), func_2(0u), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(801f))))), firstLeadingBit(vec3<u32>(30945u, 0u, ~global1[_wgslsmith_index_u32(u_input.b, 11u)])), u_input.d), Struct_4(vec3<u32>(~(~global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(28343u, 23u)], 23u)], 11u)], 23u)]), 330u, ~_wgslsmith_sub_u32(41814u, u_input.b)), Struct_1(true, all(vec4<bool>(true, true, false, false)), _wgslsmith_add_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(2147483647i, -17479i, arg_0), vec3<i32>(u_input.c, global3.x, 3808i)), vec3<i32>(-2147483647i, global3.x, -13822i)), countOneBits(~vec4<i32>(arg_0, 1i, u_input.d.x, 0i)), vec3<f32>(_wgslsmith_f_op_f32(1623f * 389f), _wgslsmith_f_op_f32(floor(440f)), _wgslsmith_f_op_f32(max(114f, -235f)))), 325f, countOneBits(select(firstTrailingBit(vec3<u32>(global4[_wgslsmith_index_u32(0u, 23u)], 3087u, global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 11u)], 23u)], 11u)])), _wgslsmith_add_vec3_u32(vec3<u32>(5514u, global4[_wgslsmith_index_u32(u_input.a, 23u)], global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 23u)], 11u)]), vec3<u32>(u_input.a, global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 23u)], 11u)], 11u)], 23u)], 28849u)), all(vec2<bool>(false, true)))), firstLeadingBit(vec3<i32>(-1i) * -u_input.d)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(331f, -180f))), vec2<f32>(-1000f, 245f)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-131f, -326f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-745f, 670f))))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-968f, 444f), vec2<f32>(-622f, -1277f))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1138f, -192f)))), -_wgslsmith_sub_vec3_i32(u_input.d >> ((vec3<u32>(42911u, 4294967295u, global4[_wgslsmith_index_u32(0u, 23u)]) & vec3<u32>(global4[_wgslsmith_index_u32(u_input.b, 23u)], global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(16373u, 11u)], 23u)], 23u)], 11u)], 14065u)) % vec3<u32>(32u)), vec3<i32>(-2147483647i, 1i, _wgslsmith_clamp_i32(0i, 2147483647i, -30149i))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(919f, 606f, 701f, 1658f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(2241f, -513f, 1505f, 508f))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(917f, 425f, -125f, 877f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-583f, -828f, 1545f, -1764f) + vec4<f32>(746f, 921f, -974f, 1017f)))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(434f, 796f, -803f, 731f)))))), func_1(1896i) | _wgslsmith_add_vec3_u32(vec3<u32>(1u, global1[_wgslsmith_index_u32(1225u, 11u)] & global4[_wgslsmith_index_u32(1u, 23u)], global4[_wgslsmith_index_u32(4294967295u, 23u)]), _wgslsmith_div_vec3_u32(vec3<u32>(30020u, global1[_wgslsmith_index_u32(1u, 11u)], global1[_wgslsmith_index_u32(u_input.b, 11u)]), vec3<u32>(u_input.b, 4294967295u, u_input.a)) | (vec3<u32>(33822u, u_input.a, u_input.a) >> (vec3<u32>(3366u, global1[_wgslsmith_index_u32(u_input.b, 11u)], 0u) % vec3<u32>(32u)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-822f + _wgslsmith_f_op_f32(f32(-1f) * -592f)) - 1483f)));
}

