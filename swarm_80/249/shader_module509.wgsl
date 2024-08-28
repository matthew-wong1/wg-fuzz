struct Struct_1 {
    a: i32,
    b: vec2<bool>,
    c: i32,
    d: vec2<f32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec4<bool>,
    c: Struct_1,
    d: vec2<bool>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 4> = array<Struct_1, 4>(Struct_1(-4130i, vec2<bool>(true, true), -1i, vec2<f32>(547f, 1599f)), Struct_1(-26697i, vec2<bool>(true, false), 0i, vec2<f32>(2003f, 2845f)), Struct_1(1i, vec2<bool>(false, true), 1i, vec2<f32>(-1000f, 1574f)), Struct_1(1188i, vec2<bool>(false, true), 35922i, vec2<f32>(1582f, -410f)));

var<private> global1: array<vec4<bool>, 20> = array<vec4<bool>, 20>(vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true));

var<private> global2: array<Struct_3, 7> = array<Struct_3, 7>(Struct_3(vec2<f32>(-1000f, -1954f), Struct_1(22634i, vec2<bool>(true, false), 63179i, vec2<f32>(-132f, 706f))), Struct_3(vec2<f32>(-655f, -274f), Struct_1(1i, vec2<bool>(false, true), -1259i, vec2<f32>(-211f, -748f))), Struct_3(vec2<f32>(407f, 1961f), Struct_1(-1i, vec2<bool>(false, true), 1i, vec2<f32>(-410f, -180f))), Struct_3(vec2<f32>(634f, 772f), Struct_1(-18851i, vec2<bool>(false, false), 2147483647i, vec2<f32>(1000f, -107f))), Struct_3(vec2<f32>(1284f, 2474f), Struct_1(-50322i, vec2<bool>(false, true), 2147483647i, vec2<f32>(1000f, -238f))), Struct_3(vec2<f32>(499f, 1210f), Struct_1(1i, vec2<bool>(true, true), 42270i, vec2<f32>(-620f, -207f))), Struct_3(vec2<f32>(1604f, -701f), Struct_1(-37695i, vec2<bool>(true, false), i32(-2147483648), vec2<f32>(1095f, -3207f))));

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: u32, arg_1: vec4<bool>) -> f32 {
    global2 = array<Struct_3, 7>();
    global1 = array<vec4<bool>, 20>();
    let var_0 = Struct_2(firstLeadingBit(max(vec4<u32>(select(u_input.e, 91605u, true), ~4294967295u, 20446u, select(arg_0, 26554u, false)), _wgslsmith_clamp_vec4_u32(~vec4<u32>(1u, arg_0, arg_0, 1u), ~vec4<u32>(u_input.e, 1u, u_input.e, 11574u), _wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, arg_0, 38184u, u_input.c), vec4<u32>(114059u, 63681u, 57799u, 53323u))))), vec4<bool>(!all(arg_1), _wgslsmith_div_i32(u_input.b, -u_input.b) >= -(~(-20203i)), true, _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0, u_input.c, arg_0, u_input.c), vec4<u32>(u_input.c, u_input.c, arg_0, arg_0)), u_input.c) > 61597u), Struct_1(_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.b, 3142i), vec2<i32>(u_input.a.x, u_input.a.x)), -1i), !vec2<bool>(arg_0 != u_input.c, !arg_1.x), ~(~(1i << (u_input.e % 32u))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(334f, 1079f))))), vec2<bool>(false, arg_1.x));
    let var_1 = Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(var_0.c.d))), Struct_1(var_0.c.a, vec2<bool>(all(!arg_1), countOneBits(arg_0) == u_input.e), -1352i, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_0.c.d, vec2<f32>(var_0.c.d.x, 299f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(467f, var_0.c.d.x)), true))));
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(277f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_1.b.d.x)))))), 1224f);
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(963f - var_0.c.d.x), var_0.c.d.x);
}

fn func_4(arg_0: i32, arg_1: f32, arg_2: vec4<f32>) -> i32 {
    global0 = array<Struct_1, 4>();
    let var_0 = max(_wgslsmith_add_vec2_u32(~(firstTrailingBit(vec2<u32>(u_input.c, 3142u)) & ~vec2<u32>(1u, 57980u)), ~_wgslsmith_add_vec2_u32(~vec2<u32>(7900u, 0u), _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.d, 16673u), vec2<u32>(26834u, u_input.c)))), _wgslsmith_mod_vec2_u32(abs(~vec2<u32>(7028u, 810u)) | vec2<u32>(~u_input.e, 1u), vec2<u32>(_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(u_input.c, 4294967295u, u_input.e), ~u_input.d, ~0u), 0u)));
    let var_1 = -348f;
    global0 = array<Struct_1, 4>();
    let var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_1)))), arg_1, _wgslsmith_f_op_f32(-var_1)));
    return _wgslsmith_dot_vec2_i32(vec2<i32>(-u_input.b, arg_0), u_input.a);
}

fn func_2(arg_0: u32, arg_1: Struct_2, arg_2: f32, arg_3: vec3<u32>) -> bool {
    let var_0 = arg_1.c;
    let var_1 = 31308u | arg_0;
    let var_2 = global2[_wgslsmith_index_u32(arg_1.a.x, 7u)];
    var var_3 = ~arg_1.a;
    let var_4 = global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(arg_3.x, _wgslsmith_dot_vec3_u32(arg_3, arg_1.a.wyz), 4294967295u), 7u)];
    return _wgslsmith_mult_i32(~(-2147483647i), func_4(73814i, _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(var_4.a.x, -183f)), _wgslsmith_f_op_f32(func_3(u_input.d, arg_1.b))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.d.x, 475f, var_4.b.d.x, var_0.d.x), vec4<f32>(1056f, arg_1.c.d.x, -332f, var_4.a.x), vec4<bool>(false, var_0.b.x, var_2.b.b.x, false)))))) < _wgslsmith_mult_i32(32293i, firstLeadingBit(_wgslsmith_sub_i32(1958i, 19871i) ^ -var_0.c));
}

fn func_5(arg_0: Struct_2, arg_1: bool, arg_2: vec2<f32>, arg_3: Struct_2) -> Struct_1 {
    var var_0 = select(vec4<i32>(~(-2147483647i), _wgslsmith_dot_vec4_i32(abs(vec4<i32>(arg_0.c.c, u_input.a.x, u_input.a.x, -2147483647i)), vec4<i32>(-39852i, u_input.a.x, arg_0.c.a, arg_3.c.c)), _wgslsmith_clamp_i32(arg_3.c.c, ~arg_0.c.a, ~(-36682i)), arg_3.c.a) >> (min(_wgslsmith_mult_vec4_u32(vec4<u32>(arg_0.a.x, 0u, u_input.e, 84539u), vec4<u32>(4294967295u, 55823u, 36401u, 43088u)), vec4<u32>(34546u, _wgslsmith_sub_u32(40716u, arg_0.a.x), 1u, ~37391u)) % vec4<u32>(32u)), ~(-abs(vec4<i32>(arg_0.c.a, 0i, u_input.a.x, 2147483647i))) >> (~(~arg_0.a) % vec4<u32>(32u)), true);
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_2)) - arg_3.c.d);
    global0 = array<Struct_1, 4>();
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_3.c.d.x, _wgslsmith_f_op_f32(-arg_0.c.d.x), _wgslsmith_f_op_f32(-arg_3.c.d.x)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_1.x, var_1.x, 1000f), vec3<f32>(-2571f, arg_2.x, var_1.x), true))))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.c.d.x, _wgslsmith_f_op_f32(arg_3.c.d.x * arg_3.c.d.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -567f) * _wgslsmith_f_op_f32(func_3(arg_0.a.x, vec4<bool>(false, arg_3.b.x, true, arg_3.c.b.x))))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(926f, _wgslsmith_f_op_f32(-arg_2.x), -1354f))));
    var var_3 = select(u_input.a, var_0.yy, all(select(select(vec3<bool>(arg_1, arg_0.d.x, true), select(arg_3.b.yww, arg_0.b.yyx, false), all(vec2<bool>(arg_0.b.x, true))), vec3<bool>(arg_3.a.x == 17008u, false, arg_1), all(vec2<bool>(arg_3.c.b.x, true)))));
    return Struct_1((_wgslsmith_add_i32(arg_3.c.c, firstLeadingBit(27922i)) | var_0.x) & ~_wgslsmith_mod_i32(var_3.x & -19981i, ~u_input.a.x), arg_0.d, arg_3.c.a, _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_2.yy)))));
}

fn func_1() -> u32 {
    let var_0 = vec2<i32>(-2147483647i << (~abs(_wgslsmith_clamp_u32(u_input.c, u_input.d, 39484u)) % 32u), u_input.a.x);
    global2 = array<Struct_3, 7>();
    global0 = array<Struct_1, 4>();
    global2 = array<Struct_3, 7>();
    let var_1 = func_5(Struct_2(max(_wgslsmith_mod_vec4_u32(vec4<u32>(1u, u_input.c, 0u, u_input.e) >> (vec4<u32>(89432u, 1u, u_input.d, 19719u) % vec4<u32>(32u)), ~vec4<u32>(10773u, 4294967295u, u_input.e, 4294967295u)), reverseBits(vec4<u32>(u_input.e, u_input.e, 56494u, u_input.d))), vec4<bool>(func_2(countOneBits(u_input.d), Struct_2(vec4<u32>(0u, 25608u, u_input.e, 34604u), vec4<bool>(true, false, true, true), global0[_wgslsmith_index_u32(1u, 4u)], vec2<bool>(true, true)), _wgslsmith_f_op_f32(-1542f + -786f), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.e, 14568u, 0u), vec3<u32>(9579u, u_input.c, u_input.d))), true, any(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true))), func_2(~39559u, Struct_2(vec4<u32>(1u, 29404u, 4294967295u, 0u), vec4<bool>(true, true, true, false), global0[_wgslsmith_index_u32(4542u, 4u)], vec2<bool>(false, true)), _wgslsmith_f_op_f32(f32(-1f) * -476f), vec3<u32>(u_input.d, u_input.c, 0u))), Struct_1(-12202i, vec2<bool>(true, true), -26864i, vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -448f), _wgslsmith_f_op_f32(min(-670f, 1000f)))), select(vec2<bool>(u_input.e >= u_input.c, 0u < u_input.c), vec2<bool>(func_2(1u, Struct_2(vec4<u32>(0u, 39124u, u_input.d, u_input.d), global1[_wgslsmith_index_u32(52363u, 20u)], Struct_1(var_0.x, vec2<bool>(true, false), var_0.x, vec2<f32>(4105f, -643f)), vec2<bool>(false, false)), 133f, vec3<u32>(0u, u_input.d, u_input.e)), true), vec2<bool>(all(vec3<bool>(false, false, true)), true))), abs(u_input.e) > 4294967295u, _wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-795f, _wgslsmith_f_op_f32(sign(-973f))))), Struct_2(~select(~vec4<u32>(0u, 12933u, u_input.c, u_input.d), _wgslsmith_div_vec4_u32(vec4<u32>(1u, u_input.d, u_input.d, u_input.d), vec4<u32>(0u, u_input.e, 87187u, u_input.d)), select(vec4<bool>(false, false, true, true), global1[_wgslsmith_index_u32(u_input.c, 20u)], vec4<bool>(false, true, false, false))), select(global1[_wgslsmith_index_u32(select(select(29686u, u_input.e, false), firstLeadingBit(4294967295u), 33848u != u_input.d), 20u)], global1[_wgslsmith_index_u32(min(~u_input.e, _wgslsmith_mult_u32(88369u, u_input.d)), 20u)], vec4<bool>(true, all(vec2<bool>(false, true)), all(global1[_wgslsmith_index_u32(u_input.c, 20u)]), func_2(4294967295u, Struct_2(vec4<u32>(61907u, u_input.d, 1u, 34350u), global1[_wgslsmith_index_u32(u_input.e, 20u)], Struct_1(-1i, vec2<bool>(false, true), var_0.x, vec2<f32>(-1000f, -459f)), vec2<bool>(true, false)), 959f, vec3<u32>(u_input.c, 1u, 89451u)))), Struct_1(i32(-1i) * -var_0.x, !select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false)), u_input.b, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(873f, -269f) - vec2<f32>(-1058f, 915f))))), vec2<bool>(true, true)));
    return u_input.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.e, (0u >> (u_input.e % 32u)) & u_input.e, ~(func_1() << (firstLeadingBit(_wgslsmith_add_u32(u_input.e, 1u)) % 32u))), 7u)];
    var var_1 = u_input.c;
    var var_2 = Struct_2(vec4<u32>(~firstTrailingBit(51818u), ~u_input.e ^ ((u_input.c >> (u_input.d % 32u)) << (0u % 32u)), u_input.d, _wgslsmith_add_u32(u_input.e, _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.e, 27678u), vec2<u32>(26246u, u_input.d)), _wgslsmith_add_vec2_u32(vec2<u32>(u_input.c, u_input.e), vec2<u32>(7932u, 42297u))))), !select(select(!global1[_wgslsmith_index_u32(u_input.c, 20u)], vec4<bool>(var_0.b.b.x, true, var_0.b.b.x, var_0.b.b.x), false), vec4<bool>(select(var_0.b.b.x, false, false), false, all(vec3<bool>(var_0.b.b.x, false, var_0.b.b.x)), -1180f > var_0.b.d.x), true), Struct_1((i32(-1i) * -2147483647i) | ~u_input.b, vec2<bool>(!var_0.b.b.x, !(!var_0.b.b.x)), 17660i, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(var_0.a + _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.x, var_0.b.d.x)))))), select(!(!var_0.b.b), vec2<bool>(all(vec3<bool>(var_0.b.b.x, false, var_0.b.b.x)) && !var_0.b.b.x, _wgslsmith_f_op_f32(348f * var_0.a.x) <= _wgslsmith_f_op_f32(-721f * 938f)), !all(vec4<bool>(true, true, var_0.b.b.x, var_0.b.b.x))));
    var var_3 = vec4<u32>((15313u & u_input.d) << (u_input.c % 32u), firstTrailingBit(u_input.d), u_input.c, var_2.a.x);
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.x) - _wgslsmith_f_op_f32(func_5(Struct_2(vec4<u32>(var_3.x, var_3.x, var_2.a.x, var_2.a.x), vec4<bool>(var_0.b.b.x, var_2.c.b.x, false, false), var_0.b, vec2<bool>(var_2.b.x, false)), !var_2.c.b.x, _wgslsmith_f_op_vec2_f32(abs(var_0.a)), Struct_2(vec4<u32>(var_2.a.x, var_2.a.x, u_input.e, var_3.x), global1[_wgslsmith_index_u32(4294967295u, 20u)], Struct_1(-1i, var_2.c.b, var_0.b.c, vec2<f32>(408f, var_0.a.x)), var_0.b.b)).d.x - var_0.b.d.x)) + _wgslsmith_f_op_f32(380f + 573f));
    let var_5 = var_2.c.d;
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.c);
}

