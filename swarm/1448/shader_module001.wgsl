struct Struct_1 {
    a: u32,
    b: vec2<bool>,
    c: vec4<i32>,
    d: vec4<f32>,
    e: vec4<i32>,
}

struct Struct_2 {
    a: i32,
    b: f32,
    c: vec2<bool>,
    d: vec2<f32>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_1,
    c: vec3<i32>,
    d: i32,
}

struct Struct_4 {
    a: vec2<i32>,
    b: i32,
}

struct Struct_5 {
    a: f32,
    b: u32,
    c: bool,
    d: u32,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec2<u32>,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 11> = array<vec2<u32>, 11>(vec2<u32>(1871u, 0u), vec2<u32>(4294967295u, 30288u), vec2<u32>(10984u, 58869u), vec2<u32>(4294967295u, 35329u), vec2<u32>(0u, 0u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(0u, 46060u), vec2<u32>(38763u, 75952u), vec2<u32>(0u, 1u), vec2<u32>(1u, 1u), vec2<u32>(2182u, 75503u));

var<private> global1: array<vec4<f32>, 21>;

var<private> global2: array<Struct_4, 8> = array<Struct_4, 8>(Struct_4(vec2<i32>(-24286i, -367i), -49873i), Struct_4(vec2<i32>(-19469i, -9573i), -1i), Struct_4(vec2<i32>(-15267i, 1i), 2147483647i), Struct_4(vec2<i32>(-18492i, 2147483647i), 2147483647i), Struct_4(vec2<i32>(7365i, 2147483647i), 2147483647i), Struct_4(vec2<i32>(6518i, i32(-2147483648)), -84875i), Struct_4(vec2<i32>(2147483647i, 60555i), i32(-2147483648)), Struct_4(vec2<i32>(0i, 2147483647i), -1i));

var<private> global3: array<Struct_3, 5>;

var<private> global4: array<Struct_1, 16> = array<Struct_1, 16>(Struct_1(1u, vec2<bool>(true, false), vec4<i32>(-56179i, 2147483647i, 0i, 27945i), vec4<f32>(-1000f, -908f, -1286f, 799f), vec4<i32>(21087i, 31360i, 0i, -38441i)), Struct_1(64473u, vec2<bool>(false, true), vec4<i32>(0i, 56832i, -50796i, -33762i), vec4<f32>(696f, 818f, -1792f, 1502f), vec4<i32>(-31574i, 2147483647i, 2147483647i, 0i)), Struct_1(20848u, vec2<bool>(true, false), vec4<i32>(-1883i, i32(-2147483648), -23338i, -2994i), vec4<f32>(1923f, -1048f, 750f, 1812f), vec4<i32>(18982i, 0i, 19606i, 1i)), Struct_1(48979u, vec2<bool>(true, true), vec4<i32>(-7766i, 1i, 45505i, 1i), vec4<f32>(-2293f, -972f, -567f, 1655f), vec4<i32>(-36312i, -41466i, 16533i, 57073i)), Struct_1(48165u, vec2<bool>(true, true), vec4<i32>(-20952i, 21457i, 0i, 23468i), vec4<f32>(-414f, -654f, -1000f, -784f), vec4<i32>(-9966i, 41909i, 22914i, 1i)), Struct_1(67u, vec2<bool>(false, false), vec4<i32>(0i, 29684i, -49858i, -1i), vec4<f32>(-546f, -731f, -1610f, -166f), vec4<i32>(-23257i, 0i, -15391i, i32(-2147483648))), Struct_1(4294967295u, vec2<bool>(true, false), vec4<i32>(-18141i, 1570i, -1i, -6536i), vec4<f32>(-1485f, 465f, -613f, 766f), vec4<i32>(0i, -1i, -7368i, i32(-2147483648))), Struct_1(0u, vec2<bool>(true, true), vec4<i32>(22503i, 5950i, -1i, 1i), vec4<f32>(282f, 1592f, 342f, -1745f), vec4<i32>(0i, -1i, -27988i, -1i)), Struct_1(8965u, vec2<bool>(false, false), vec4<i32>(i32(-2147483648), -1i, i32(-2147483648), -40359i), vec4<f32>(520f, -662f, -1238f, 434f), vec4<i32>(1i, 22166i, -1i, 30618i)), Struct_1(1u, vec2<bool>(true, true), vec4<i32>(38208i, -38846i, -1i, 19252i), vec4<f32>(-2072f, -1820f, -1136f, -1000f), vec4<i32>(-16107i, -1i, 1932i, 1i)), Struct_1(55199u, vec2<bool>(true, true), vec4<i32>(0i, 0i, -5045i, -37662i), vec4<f32>(164f, 809f, -550f, -1022f), vec4<i32>(0i, -37421i, 2147483647i, -1328i)), Struct_1(0u, vec2<bool>(true, true), vec4<i32>(-26102i, 1i, 2147483647i, -1i), vec4<f32>(-1000f, -459f, 954f, 481f), vec4<i32>(2147483647i, 2147483647i, 0i, -1i)), Struct_1(26206u, vec2<bool>(false, true), vec4<i32>(-45613i, 0i, 0i, i32(-2147483648)), vec4<f32>(-243f, -866f, -773f, -332f), vec4<i32>(-17349i, -31055i, i32(-2147483648), i32(-2147483648))), Struct_1(37506u, vec2<bool>(false, true), vec4<i32>(0i, -25782i, 38968i, 1i), vec4<f32>(273f, -1142f, 161f, -1084f), vec4<i32>(i32(-2147483648), -19582i, 37597i, -1i)), Struct_1(21796u, vec2<bool>(false, true), vec4<i32>(i32(-2147483648), 18912i, -6738i, 0i), vec4<f32>(354f, -1000f, -1000f, -634f), vec4<i32>(326i, -32152i, -8910i, -6677i)), Struct_1(1u, vec2<bool>(false, true), vec4<i32>(187i, -8860i, -6911i, -1i), vec4<f32>(1596f, 1794f, 1001f, 1000f), vec4<i32>(56919i, -4451i, 1i, -1404i)));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: vec3<bool>, arg_3: f32) -> bool {
    let var_0 = Struct_2(1i, _wgslsmith_f_op_f32(-arg_0.d.x), vec2<bool>(true, any(select(select(vec4<bool>(arg_2.x, arg_2.x, arg_2.x, false), vec4<bool>(true, arg_2.x, true, arg_0.c.x), vec4<bool>(arg_2.x, arg_2.x, arg_0.c.x, false)), select(vec4<bool>(false, arg_2.x, true, false), vec4<bool>(arg_2.x, arg_0.c.x, true, true), arg_0.c.x), select(vec4<bool>(arg_0.c.x, arg_2.x, arg_0.c.x, false), vec4<bool>(arg_2.x, arg_0.c.x, true, false), vec4<bool>(arg_2.x, true, arg_0.c.x, arg_2.x))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_3 + 149f), _wgslsmith_f_op_f32(-arg_0.b)), -977f)));
    var var_1 = var_0;
    let var_2 = Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-140f, var_1.b)), 4294967295u, arg_0.c.x, 4294967295u, ~vec4<i32>(var_1.a, ~(~20195i), ~abs(var_0.a), -1i));
    var var_3 = var_2.b;
    global0 = array<vec2<u32>, 11>();
    return arg_2.x;
}

fn func_2(arg_0: Struct_3, arg_1: bool, arg_2: u32) -> Struct_5 {
    var var_0 = select(select(select(vec4<bool>(arg_0.b.b.x, !arg_0.b.b.x, false, arg_0.b.b.x), !select(vec4<bool>(false, false, arg_0.b.b.x, arg_1), vec4<bool>(false, false, arg_0.b.b.x, arg_1), arg_1), select(arg_1, true, any(vec2<bool>(arg_1, arg_1)))), vec4<bool>(all(vec3<bool>(true, false, arg_1)), !(arg_1 & false), all(vec3<bool>(arg_1, arg_0.b.b.x, true)), arg_0.b.b.x), firstTrailingBit(45767u & arg_0.b.a) >= ~(u_input.a >> (58066u % 32u))), !vec4<bool>(any(!vec4<bool>(arg_0.b.b.x, true, arg_1, true)), true, arg_0.b.b.x, false), vec4<bool>(func_3(Struct_2(reverseBits(u_input.b.x), _wgslsmith_f_op_f32(ceil(arg_0.b.d.x)), vec2<bool>(true, false), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, arg_0.b.d.x))), vec4<i32>(arg_0.d, 1i << (arg_2 % 32u), -1i, 2147483647i), !vec3<bool>(false, arg_1, false), 420f), any(select(select(vec2<bool>(arg_0.b.b.x, false), arg_0.b.b, vec2<bool>(false, arg_1)), !arg_0.b.b, arg_0.b.b.x || false)), arg_0.b.b.x, -10097i == firstLeadingBit(-arg_0.c.x)));
    var var_1 = Struct_2(-_wgslsmith_dot_vec2_i32(~vec2<i32>(17658i, u_input.b.x), vec2<i32>(u_input.b.x, 16568i & u_input.b.x)), -1649f, select(select(var_0.xw, vec2<bool>(false | arg_0.b.b.x, any(var_0.wy)), true), var_0.wx, !select(select(vec2<bool>(true, false), var_0.yy, arg_0.b.b.x), select(var_0.zz, vec2<bool>(arg_0.b.b.x, arg_0.b.b.x), arg_0.b.b), select(arg_0.b.b, vec2<bool>(false, arg_0.b.b.x), vec2<bool>(arg_0.b.b.x, arg_0.b.b.x)))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -147f) * arg_0.b.d.x) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1150f) + -246f)), arg_0.b.d.x));
    var var_2 = Struct_1(u_input.a, arg_0.b.b, vec4<i32>(u_input.b.x, _wgslsmith_dot_vec4_i32(~arg_0.b.c, arg_0.b.e) ^ (i32(-1i) * -var_1.a), firstLeadingBit(-33820i), 2147483647i), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1110f), _wgslsmith_f_op_f32(arg_0.b.d.x - 1175f)))), var_1.d.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_1.d.x))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.b.d.x * 1699f) + arg_0.b.d.x)))), reverseBits(~arg_0.b.e));
    let var_3 = false;
    let var_4 = select(select(select(select(vec4<bool>(var_2.b.x, var_1.c.x, var_0.x, false), !vec4<bool>(var_1.c.x, true, true, true), select(vec4<bool>(false, arg_1, arg_1, var_0.x), vec4<bool>(false, var_0.x, true, false), arg_0.b.b.x)), !select(vec4<bool>(true, arg_0.b.b.x, true, true), vec4<bool>(arg_0.b.b.x, true, arg_1, arg_0.b.b.x), false), select(select(vec4<bool>(false, var_0.x, true, var_3), vec4<bool>(var_1.c.x, var_1.c.x, arg_1, arg_1), true), !vec4<bool>(var_0.x, var_2.b.x, false, false), !vec4<bool>(var_0.x, var_1.c.x, var_1.c.x, false))), vec4<bool>(var_0.x, var_0.x, !arg_0.b.b.x, !all(vec2<bool>(arg_0.b.b.x, var_0.x))), !select(!vec4<bool>(false, true, arg_0.b.b.x, var_1.c.x), select(vec4<bool>(var_3, true, var_1.c.x, arg_0.b.b.x), vec4<bool>(true, var_0.x, false, var_0.x), true), var_2.b.x)), !(!select(!vec4<bool>(var_3, true, true, true), select(vec4<bool>(false, var_1.c.x, arg_1, var_3), vec4<bool>(false, var_3, false, false), vec4<bool>(true, arg_1, true, var_3)), arg_0.b.b.x)), vec4<bool>(any(!(!vec3<bool>(false, var_1.c.x, arg_0.b.b.x))), var_2.b.x, false == (_wgslsmith_f_op_f32(arg_0.b.d.x + 394f) <= _wgslsmith_div_f32(var_2.d.x, var_1.d.x)), all(select(select(var_0.wxy, vec3<bool>(var_1.c.x, var_3, false), var_0.zyx), vec3<bool>(true, var_2.b.x, arg_0.b.b.x), select(vec3<bool>(var_2.b.x, true, var_0.x), vec3<bool>(arg_1, false, var_1.c.x), vec3<bool>(var_2.b.x, true, false))))));
    return Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(-1533f, _wgslsmith_f_op_f32(trunc(arg_0.b.d.x))), var_2.d.x)), 15340u, (max(~var_2.a, _wgslsmith_sub_u32(arg_0.b.a, 1u)) != _wgslsmith_add_u32(~3976u, min(76194u, 1u))) && true, ~u_input.a, arg_0.b.c);
}

fn func_1(arg_0: u32) -> u32 {
    global3 = array<Struct_3, 5>();
    var var_0 = func_2(global3[_wgslsmith_index_u32(max(~select(u_input.a, 25542u, u_input.a > u_input.a), 86625u), 5u)], true, u_input.a);
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(func_2(global3[_wgslsmith_index_u32(var_0.d, 5u)], var_0.c, ~4294967295u).a * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -188f))), _wgslsmith_f_op_f32(f32(-1f) * -140f));
    var_1 = vec2<f32>(_wgslsmith_f_op_f32(abs(var_1.x)), 1727f);
    let var_2 = countOneBits(var_0.e);
    return var_0.d;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_3, 5>();
    var var_0 = !any(vec2<bool>(true, true));
    var var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1362f, 167f)))));
    let var_2 = Struct_3(vec4<u32>(u_input.a, u_input.a, ~84914u, max(u_input.a, ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(20665u, 312u, u_input.a)))), Struct_1(firstLeadingBit(~func_1(u_input.a)), vec2<bool>(true, true), select(vec4<i32>(abs(0i), countOneBits(u_input.b.x), firstTrailingBit(u_input.b.x), -34030i & u_input.b.x), abs(vec4<i32>(u_input.b.x, 34537i, 62185i, u_input.b.x)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(global1[_wgslsmith_index_u32(36033u, 21u)], global1[_wgslsmith_index_u32(25760u, 21u)]))))), _wgslsmith_add_vec4_i32(func_2(global3[_wgslsmith_index_u32(9990u, 5u)], u_input.b.x > 2147483647i, 0u).e, select(vec4<i32>(u_input.b.x, 0i, 8236i, u_input.b.x) << (vec4<u32>(u_input.a, 0u, u_input.a, u_input.a) % vec4<u32>(32u)), vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x) >> (vec4<u32>(74062u, u_input.a, 0u, u_input.a) % vec4<u32>(32u)), vec4<bool>(true, true, false, false)))), select(firstTrailingBit(firstLeadingBit(vec3<i32>(u_input.b.x, 33459i, u_input.b.x))), _wgslsmith_div_vec3_i32(abs(vec3<i32>(1i, 18741i, -5962i)), ~vec3<i32>(2147483647i, 8704i, u_input.b.x)), !select(false, false, false)) & _wgslsmith_clamp_vec3_i32(countOneBits(vec3<i32>(u_input.b.x, -13542i, u_input.b.x) << (vec3<u32>(u_input.a, u_input.a, u_input.a) % vec3<u32>(32u))), -(~vec3<i32>(-44460i, -22424i, u_input.b.x)), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x) >> (vec3<u32>(u_input.a, u_input.a, u_input.a) % vec3<u32>(32u)), ~vec3<i32>(u_input.b.x, -1i, 2147483647i))), u_input.b.x);
    global2 = array<Struct_4, 8>();
    global0 = array<vec2<u32>, 11>();
    global0 = array<vec2<u32>, 11>();
    let x = u_input.a;
    s_output = StorageBuffer(~(~((var_2.b.a | var_2.b.a) ^ u_input.a)), vec2<u32>(_wgslsmith_mod_u32(~8915u << (firstTrailingBit(21842u) % 32u), func_1(u_input.a)), 1u), firstTrailingBit(firstLeadingBit(~global0[_wgslsmith_index_u32(_wgslsmith_div_u32(4294967295u, u_input.a), 11u)])), abs(~reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(30525u, var_2.b.a, var_2.a.x), var_2.a.yxw))), -11854i);
}

