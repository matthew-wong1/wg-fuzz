struct Struct_1 {
    a: vec2<u32>,
    b: f32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: vec4<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: f32,
    d: i32,
}

struct Struct_4 {
    a: vec2<bool>,
    b: i32,
    c: vec3<i32>,
    d: vec3<f32>,
    e: bool,
}

struct Struct_5 {
    a: vec4<bool>,
    b: vec3<bool>,
    c: Struct_4,
    d: bool,
    e: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: i32,
    d: vec4<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 20> = array<Struct_4, 20>(Struct_4(vec2<bool>(true, false), -12075i, vec3<i32>(13821i, -1i, -1736i), vec3<f32>(2472f, -1000f, 1943f), false), Struct_4(vec2<bool>(true, true), 1i, vec3<i32>(28015i, 2147483647i, 2263i), vec3<f32>(505f, -470f, 344f), true), Struct_4(vec2<bool>(true, false), 4996i, vec3<i32>(-38176i, -20229i, 0i), vec3<f32>(659f, -997f, -346f), true), Struct_4(vec2<bool>(true, false), -4391i, vec3<i32>(-40117i, i32(-2147483648), -46114i), vec3<f32>(-333f, 242f, -141f), false), Struct_4(vec2<bool>(false, false), -1i, vec3<i32>(-2345i, -24608i, -50504i), vec3<f32>(895f, -573f, 769f), false), Struct_4(vec2<bool>(true, false), 0i, vec3<i32>(-5459i, 0i, 2147483647i), vec3<f32>(-1063f, -198f, 422f), false), Struct_4(vec2<bool>(false, false), 2147483647i, vec3<i32>(2147483647i, -9889i, -76508i), vec3<f32>(1332f, 1000f, -542f), false), Struct_4(vec2<bool>(false, true), -34590i, vec3<i32>(-1i, -50749i, -23090i), vec3<f32>(2338f, 1376f, 1373f), false), Struct_4(vec2<bool>(false, false), 25146i, vec3<i32>(23336i, 2147483647i, -74309i), vec3<f32>(-479f, 306f, 1553f), false), Struct_4(vec2<bool>(false, false), 1i, vec3<i32>(1i, 16750i, -1i), vec3<f32>(-870f, 1000f, 268f), true), Struct_4(vec2<bool>(false, false), 21149i, vec3<i32>(2147483647i, -1i, 1i), vec3<f32>(360f, 389f, -192f), true), Struct_4(vec2<bool>(false, false), -27480i, vec3<i32>(2147483647i, 20657i, 46592i), vec3<f32>(-1894f, -398f, -881f), false), Struct_4(vec2<bool>(true, true), 0i, vec3<i32>(25368i, -7269i, -1i), vec3<f32>(1077f, 241f, -859f), false), Struct_4(vec2<bool>(true, true), 53268i, vec3<i32>(i32(-2147483648), -1i, 34365i), vec3<f32>(305f, 1000f, 790f), false), Struct_4(vec2<bool>(true, true), 1i, vec3<i32>(2147483647i, 1i, 0i), vec3<f32>(1542f, -1441f, -568f), true), Struct_4(vec2<bool>(false, false), 0i, vec3<i32>(2147483647i, 7536i, 13376i), vec3<f32>(346f, -1538f, -889f), true), Struct_4(vec2<bool>(false, true), 2147483647i, vec3<i32>(32578i, i32(-2147483648), 2147483647i), vec3<f32>(1291f, -1729f, -1664f), true), Struct_4(vec2<bool>(true, false), 2147483647i, vec3<i32>(2147483647i, i32(-2147483648), -1i), vec3<f32>(1442f, 1000f, 1000f), true), Struct_4(vec2<bool>(true, true), 0i, vec3<i32>(-1i, 24315i, 0i), vec3<f32>(1167f, -725f, -150f), true), Struct_4(vec2<bool>(true, true), -53242i, vec3<i32>(-24884i, -1i, 2147483647i), vec3<f32>(413f, -257f, 798f), true));

var<private> global1: bool = false;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_2, arg_2: Struct_4) -> bool {
    let var_0 = any(select(arg_1.d.yzx, select(select(arg_1.d.xyw, !vec3<bool>(arg_1.d.x, arg_0.a.x, false), arg_0.a.x), arg_1.d.wzz, arg_1.a & all(arg_1.d)), any(!arg_1.d)));
    let var_1 = Struct_3(Struct_1(arg_1.b.a, arg_1.b.b), _wgslsmith_f_op_f32(1059f + arg_1.c.b), arg_0.d.x, reverseBits(-select(arg_2.b, -2147483647i, false)));
    global1 = any(!arg_1.d.zwy);
    var var_2 = max(abs(_wgslsmith_mod_vec4_i32(-countOneBits(vec4<i32>(u_input.c.x, 17i, u_input.d, u_input.c.x)), abs(vec4<i32>(1i, 2147483647i, u_input.d, 11560i)))), vec4<i32>(-2147483647i, 54685i, _wgslsmith_mod_i32(1i, u_input.d), -10075i));
    let var_3 = _wgslsmith_dot_vec4_i32(max(~firstTrailingBit(firstLeadingBit(vec4<i32>(var_1.d, -8740i, u_input.c.x, u_input.c.x))), vec4<i32>(firstTrailingBit(27740i), arg_2.c.x, 2147483647i, 34016i)), _wgslsmith_div_vec4_i32(firstLeadingBit(-vec4<i32>(var_1.d, var_1.d, 2147483647i, var_1.d)), -_wgslsmith_add_vec4_i32(vec4<i32>(u_input.c.x, var_2.x, 0i, -13066i), vec4<i32>(var_2.x, var_1.d, arg_2.c.x, 0i))) << (reverseBits(~(~vec4<u32>(arg_1.c.a.x, 35133u, 4294967295u, 1u))) % vec4<u32>(32u)));
    return false;
}

fn func_2(arg_0: i32, arg_1: u32) -> vec3<bool> {
    let var_0 = Struct_1(~u_input.b, -1707f);
    global1 = true;
    let var_1 = Struct_5(!(!vec4<bool>(any(vec4<bool>(true, false, false, false)), true, any(vec4<bool>(true, false, true, false)), true)), vec3<bool>(true, all(select(vec4<bool>(true, false, true, false), select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true), false), true)), abs(var_0.a.x) < var_0.a.x), Struct_4(vec2<bool>(true, true), -7393i, -(~vec3<i32>(-2147483647i, -2050i, -2147483647i)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-963f, var_0.b, var_0.b) * _wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_0.b, -1831f, -138f), vec3<f32>(-942f, var_0.b, var_0.b))))), true), func_3(Struct_4(vec2<bool>(false, false), -18936i, vec3<i32>(u_input.d, abs(arg_0), _wgslsmith_mult_i32(0i, u_input.c.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b, var_0.b, var_0.b)) + _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(305f, -329f, -1000f)))), !any(vec2<bool>(false, false))), Struct_2(true, Struct_1(abs(var_0.a), _wgslsmith_f_op_f32(min(-406f, var_0.b))), var_0, vec4<bool>(true, true, true, true)), Struct_4(vec2<bool>(true, true), ~_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0, 0i, 0i), vec3<i32>(arg_0, arg_0, arg_0)), vec3<i32>(5569i & arg_0, -6461i, arg_0 ^ arg_0), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_0.b, 294f, var_0.b), vec3<f32>(var_0.b, 942f, 2073f))), (u_input.d >> (u_input.a % 32u)) > (arg_0 >> (4294967295u % 32u)))), Struct_3(var_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(var_0.b)))) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(var_0.b))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0.b)) * _wgslsmith_f_op_f32(step(var_0.b, var_0.b))) * _wgslsmith_f_op_f32(select(var_0.b, 1264f, any(vec4<bool>(false, true, false, false))))), countOneBits(u_input.c.x << (abs(0u) % 32u))));
    var var_2 = var_1.e.a;
    let var_3 = var_1;
    return var_3.b;
}

fn func_1() -> Struct_5 {
    global0 = array<Struct_4, 20>();
    global1 = any(func_2(u_input.c.x, _wgslsmith_dot_vec2_u32(countOneBits(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a, u_input.a), u_input.b)), u_input.b)));
    global1 = false;
    var var_0 = 25627u;
    let var_1 = Struct_2(u_input.d < 1i, Struct_1(u_input.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f))), Struct_1(vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(27487u, 0u, u_input.a), vec3<u32>(1u, u_input.a, u_input.a)) >> (59673u % 32u), 23517u), 1027f), select(select(vec4<bool>(select(true, false, false), false, true, any(vec4<bool>(true, true, false, false))), vec4<bool>(true, false, u_input.c.x <= 33414i, u_input.a != 3218u), false), select(vec4<bool>(func_3(global0[_wgslsmith_index_u32(1u, 20u)], Struct_2(false, Struct_1(u_input.b, 321f), Struct_1(vec2<u32>(u_input.b.x, u_input.a), 360f), vec4<bool>(false, false, false, false)), Struct_4(vec2<bool>(false, false), u_input.c.x, vec3<i32>(u_input.c.x, u_input.d, u_input.c.x), vec3<f32>(-784f, 635f, -110f), true)), true, all(vec3<bool>(false, true, false)), true), vec4<bool>(u_input.a < u_input.b.x, true, true, true), func_3(Struct_4(vec2<bool>(false, false), u_input.c.x, vec3<i32>(u_input.c.x, u_input.d, 28499i), vec3<f32>(1134f, -1894f, 939f), true), Struct_2(true, Struct_1(vec2<u32>(u_input.a, 1u), 1671f), Struct_1(vec2<u32>(4294967295u, u_input.a), 3440f), vec4<bool>(true, true, true, false)), Struct_4(vec2<bool>(false, false), u_input.d, vec3<i32>(u_input.d, u_input.c.x, u_input.c.x), vec3<f32>(-466f, -182f, -1020f), false)) | true), vec4<bool>((-1i | u_input.c.x) > 12303i, u_input.a >= 1u, true, true)));
    return Struct_5(!var_1.d, !(!var_1.d.wzz), global0[_wgslsmith_index_u32(countOneBits(~(~var_1.c.a.x)), 20u)], _wgslsmith_div_u32(~u_input.b.x, u_input.a) <= _wgslsmith_dot_vec3_u32(vec3<u32>(~4294967295u, 0u, reverseBits(var_1.b.a.x)), vec3<u32>(var_1.c.a.x, u_input.a, 0u) >> (vec3<u32>(958u, 4294967295u, 1718u) % vec3<u32>(32u))), Struct_3(var_1.c, var_1.c.b, 1251f, u_input.d));
}

fn func_4(arg_0: u32, arg_1: Struct_5, arg_2: Struct_4, arg_3: vec2<u32>) -> Struct_4 {
    let var_0 = func_1().c.b;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1592f * -871f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -886f) - arg_1.c.d.x));
    let var_2 = global0[_wgslsmith_index_u32(u_input.b.x, 20u)];
    return func_1().c;
}

fn func_5(arg_0: Struct_4, arg_1: Struct_4) -> f32 {
    var var_0 = _wgslsmith_add_vec4_i32(~reverseBits(-vec4<i32>(u_input.d, arg_0.c.x, 19756i, arg_0.b) ^ -vec4<i32>(35445i, 1i, 864i, -15820i)), firstTrailingBit(vec4<i32>(2147483647i, _wgslsmith_div_i32(countOneBits(u_input.c.x), arg_1.b), arg_1.c.x, func_1().c.c.x << (abs(u_input.a) % 32u))));
    let var_1 = _wgslsmith_f_op_f32(select(-1933f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(arg_0.d.x))))))), (-117f > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-664f - arg_0.d.x) + -457f)) | (true && !select(arg_1.e, arg_0.a.x, true))));
    var_0 = vec4<i32>(arg_1.b, (abs(0i) | _wgslsmith_mult_i32(func_4(53076u, Struct_5(vec4<bool>(arg_1.e, true, true, arg_0.a.x), vec3<bool>(arg_0.e, arg_0.a.x, arg_1.e), Struct_4(vec2<bool>(arg_1.a.x, true), var_0.x, vec3<i32>(12975i, -2147483647i, arg_1.c.x), arg_0.d, false), false, Struct_3(Struct_1(vec2<u32>(0u, u_input.a), var_1), var_1, arg_1.d.x, -21440i)), arg_0, u_input.b).b, 1i)) | countOneBits(firstLeadingBit(_wgslsmith_mult_i32(1i, 1i))), 46457i, -2147483647i);
    let var_2 = global0[_wgslsmith_index_u32(u_input.b.x, 20u)];
    let var_3 = 28504u;
    return arg_1.d.x;
}

fn func_6(arg_0: f32, arg_1: u32, arg_2: Struct_1) -> StorageBuffer {
    global1 = false;
    let var_0 = Struct_2(select(4294967295u < u_input.a, all(vec4<bool>(false, true, false, true)) | (true && (18103i <= u_input.c.x)), false), func_1().e.a, arg_2, vec4<bool>(select(1i > u_input.c.x, !all(vec4<bool>(true, false, false, false)), true), true, func_1().d, func_2(-1i, u_input.a).x));
    var var_1 = 1204f;
    var var_2 = var_0;
    global1 = false;
    return StorageBuffer(select(-(~u_input.d) << (1u % 32u), -57987i, var_2.d.x), var_0.b.b, u_input.c.x, ~_wgslsmith_mult_vec4_u32(countOneBits(vec4<u32>(4294967295u, var_2.b.a.x, var_2.b.a.x, 16470u)), ~vec4<u32>(arg_2.a.x, arg_1, var_0.c.a.x, 47446u)), _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(sign(var_2.c.b))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_6(-1000f, u_input.b.x << ((u_input.a & ~(~u_input.a)) % 32u), Struct_1(vec2<u32>(u_input.b.x, ~u_input.b.x >> (_wgslsmith_mult_u32(u_input.b.x, 4125u) % 32u)), _wgslsmith_f_op_f32(func_5(func_4(1u, func_1(), global0[_wgslsmith_index_u32(u_input.a, 20u)], ~u_input.b), Struct_4(vec2<bool>(false, true), _wgslsmith_mod_i32(36198i, -1i), vec3<i32>(-23284i, 12467i, 106205i) << (vec3<u32>(u_input.a, 58704u, u_input.b.x) % vec3<u32>(32u)), vec3<f32>(389f, -354f, 2582f), true)))));
}

