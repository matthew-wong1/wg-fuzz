struct Struct_1 {
    a: vec4<u32>,
    b: vec2<f32>,
    c: vec2<bool>,
    d: bool,
}

struct Struct_2 {
    a: vec3<f32>,
    b: u32,
    c: vec3<bool>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec4<u32>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_3,
    c: vec4<i32>,
    d: vec3<f32>,
}

struct Struct_5 {
    a: Struct_1,
    b: vec2<bool>,
    c: f32,
    d: vec3<f32>,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: f32,
    d: vec2<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 4>;

var<private> global1: bool = false;

var<private> global2: array<Struct_3, 8> = array<Struct_3, 8>(Struct_3(vec2<f32>(-604f, 352f), vec4<u32>(40084u, 0u, 4294967295u, 78366u)), Struct_3(vec2<f32>(-1621f, 426f), vec4<u32>(1u, 20831u, 0u, 4294967295u)), Struct_3(vec2<f32>(-486f, -1331f), vec4<u32>(0u, 39248u, 8508u, 67875u)), Struct_3(vec2<f32>(-761f, -1824f), vec4<u32>(27251u, 981u, 12818u, 4294967295u)), Struct_3(vec2<f32>(809f, 1274f), vec4<u32>(1u, 77455u, 0u, 20135u)), Struct_3(vec2<f32>(-457f, -1375f), vec4<u32>(44359u, 1u, 77010u, 25571u)), Struct_3(vec2<f32>(220f, 374f), vec4<u32>(118335u, 1u, 36593u, 53561u)), Struct_3(vec2<f32>(1030f, -564f), vec4<u32>(1u, 30281u, 1u, 1u)));

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> f32 {
    global1 = all(vec3<bool>(false, all(select(select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, false), false), vec4<bool>(true, true, true, true), false)), any(select(select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, false)), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), true), select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, true))))));
    let var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1388f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-2666f)) * -1431f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-500f)), _wgslsmith_f_op_f32(425f - 1503f)))), reverseBits(max(max(abs(1u), u_input.a.x), u_input.c)), vec3<bool>(true, true, true), Struct_1(~_wgslsmith_clamp_vec4_u32(reverseBits(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.c)), firstTrailingBit(vec4<u32>(12830u, 10748u, 54370u, u_input.c)), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, 59388u, u_input.c, 38012u), vec4<u32>(u_input.c, u_input.a.x, u_input.c, 13391u))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, -494f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-261f, -441f))))), select(select(select(vec2<bool>(true, false), vec2<bool>(true, false), false), vec2<bool>(false, false), true), select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true)), vec2<bool>(true, true)), _wgslsmith_dot_vec4_i32(vec4<i32>(13317i, 36041i, 31996i, global0[_wgslsmith_index_u32(1u, 4u)]), vec4<i32>(-17473i, global0[_wgslsmith_index_u32(u_input.c, 4u)], 2147483647i, -2147483647i)) >= 1i), false));
    var var_1 = var_0.d;
    let var_2 = var_0.c.x;
    var var_3 = abs(~abs(min(~vec4<i32>(u_input.b.x, 10732i, 0i, u_input.b.x), -vec4<i32>(46614i, 2147483647i, u_input.b.x, u_input.b.x))));
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(450f, _wgslsmith_f_op_f32(min(657f, -852f))))));
}

fn func_2(arg_0: vec3<i32>) -> Struct_5 {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -713f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) - -1104f)))) > _wgslsmith_f_op_f32(func_3());
    let var_1 = -1018f;
    var var_2 = Struct_1(vec4<u32>(abs(abs(6066u)), 0u, 1u, _wgslsmith_clamp_u32(110210u, 1u, ~u_input.c)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(var_1 + var_1), _wgslsmith_f_op_f32(floor(-1000f))))), !vec2<bool>(any(vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(step(var_1, -422f)) >= _wgslsmith_f_op_f32(var_1 + 1090f)), all(vec4<bool>(all(vec4<bool>(false, false, false, true)) || true, false, true, all(vec3<bool>(true, false, false)))));
    var var_3 = Struct_1(firstTrailingBit(vec4<u32>(var_2.a.x, _wgslsmith_div_u32(u_input.a.x, 50172u >> (u_input.a.x % 32u)), reverseBits(var_2.a.x), ~(~var_2.a.x))), vec2<f32>(_wgslsmith_f_op_f32(round(-1494f)), var_2.b.x), var_2.c, true != all(!vec3<bool>(var_2.c.x, var_2.c.x, false)));
    global2 = array<Struct_3, 8>();
    return Struct_5(Struct_1(~(~vec4<u32>(1u, var_2.a.x, 77345u, u_input.a.x)), vec2<f32>(var_2.b.x, -1415f), !select(!vec2<bool>(true, var_3.d), vec2<bool>(var_2.c.x, false), var_3.c), false), var_3.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.b.x + -1129f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(vec3<f32>(var_2.b.x, var_1, var_3.b.x), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1048f, var_2.b.x, var_1), vec3<f32>(1183f, var_3.b.x, var_3.b.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.b.x, -566f, var_1))))) - vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(898f + var_3.b.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1 + 238f) - 1000f), _wgslsmith_f_op_f32(-var_3.b.x))), vec4<bool>(var_2.c.x, true, !var_2.d, var_2.d != !var_3.c.x));
}

fn func_4(arg_0: Struct_5, arg_1: u32, arg_2: Struct_2, arg_3: bool) -> Struct_5 {
    global2 = array<Struct_3, 8>();
    let var_0 = Struct_5(Struct_1(~vec4<u32>(min(arg_0.a.a.x, 35916u), _wgslsmith_mod_u32(1u, arg_0.a.a.x), firstLeadingBit(arg_0.a.a.x), _wgslsmith_add_u32(4294967295u, arg_0.a.a.x)), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -104f), arg_0.d.x), arg_2.d.c, false), select(arg_0.e.yy, vec2<bool>(false, false), arg_0.a.c.x), 1f, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(abs(arg_2.a.x)), -1978f, _wgslsmith_div_f32(183f, -874f)), vec3<f32>(arg_0.d.x, arg_2.a.x, _wgslsmith_f_op_f32(f32(-1f) * -863f))), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_2.a.x, _wgslsmith_f_op_f32(-arg_2.a.x), arg_0.a.b.x))), all(!(!vec4<bool>(true, true, false, arg_2.c.x))))), vec4<bool>(true, all(arg_2.d.c), arg_2.d.d && arg_3, true));
    let var_1 = Struct_4(Struct_3(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-func_2(vec3<i32>(0i, global0[_wgslsmith_index_u32(1u, 4u)], 0i)).a.b), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.c, -1000f)))), min(var_0.a.a, _wgslsmith_div_vec4_u32(arg_0.a.a, countOneBits(vec4<u32>(u_input.c, 1u, arg_1, arg_0.a.a.x))))), Struct_3(arg_0.d.yx, arg_2.d.a), select(countOneBits(countOneBits(vec4<i32>(-27308i, 5380i, u_input.b.x, u_input.b.x))), vec4<i32>(~u_input.b.x, u_input.b.x, min(38704i, -4486i), 31596i), arg_0.e) >> (arg_2.d.a % vec4<u32>(32u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(arg_2.a, arg_0.d), _wgslsmith_f_op_vec3_f32(min(arg_2.a, var_0.d))))));
    let var_2 = Struct_4(global2[_wgslsmith_index_u32(~_wgslsmith_div_u32(var_1.b.b.x, ~(~var_0.a.a.x)), 8u)], Struct_3(_wgslsmith_f_op_vec2_f32(-var_0.d.xz), var_1.b.b), _wgslsmith_clamp_vec4_i32((vec4<i32>(var_1.c.x, -3384i, -28709i, global0[_wgslsmith_index_u32(1u, 4u)]) | reverseBits(vec4<i32>(u_input.b.x, -17525i, global0[_wgslsmith_index_u32(4294967295u, 4u)], -9111i))) ^ vec4<i32>(global0[_wgslsmith_index_u32(select(arg_0.a.a.x, arg_2.b, true), 4u)], 43055i, 10312i, u_input.b.x), max(abs(vec4<i32>(u_input.b.x, global0[_wgslsmith_index_u32(0u, 4u)], u_input.b.x, global0[_wgslsmith_index_u32(u_input.c, 4u)]) << (vec4<u32>(var_0.a.a.x, var_1.a.b.x, var_1.b.b.x, arg_1) % vec4<u32>(32u))), -select(var_1.c, var_1.c, vec4<bool>(var_0.e.x, arg_2.d.c.x, true, arg_0.a.c.x))), vec4<i32>(-1i) * -(~vec4<i32>(-64752i, global0[_wgslsmith_index_u32(arg_0.a.a.x, 4u)], u_input.b.x, -2147483647i))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(func_2(vec3<i32>(var_1.c.x, var_1.c.x, -17877i)).d.x, var_0.c, _wgslsmith_f_op_f32(-274f + 100f))) - vec3<f32>(-866f, arg_2.d.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_0.c))))));
    var var_3 = select(!arg_2.d.c, arg_2.d.c, func_2(_wgslsmith_div_vec3_i32(var_1.c.wxw, var_2.c.wzy)).a.c);
    return func_2(var_2.c.zyy);
}

fn func_1() -> Struct_2 {
    global2 = array<Struct_3, 8>();
    let var_0 = func_4(func_2(((vec3<i32>(u_input.b.x, 31409i, 1i) >> (u_input.a % vec3<u32>(32u))) >> (~vec3<u32>(0u, u_input.c, u_input.a.x) % vec3<u32>(32u))) >> (vec3<u32>(~u_input.a.x, 4294967295u, u_input.a.x) % vec3<u32>(32u))), reverseBits(reverseBits(u_input.c >> (0u % 32u)) << (u_input.a.x % 32u)), Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) - _wgslsmith_f_op_vec3_f32(step(vec3<f32>(1285f, 2015f, -686f), vec3<f32>(-193f, -649f, -697f)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-194f, 1000f, -2245f), vec3<f32>(235f, -406f, -714f), false)))), 97213u, vec3<bool>(true, select(any(vec4<bool>(true, true, false, false)), true, true), true), Struct_1(_wgslsmith_mod_vec4_u32(countOneBits(vec4<u32>(0u, 1u, 1u, 0u)), vec4<u32>(u_input.a.x, 73111u, u_input.c, u_input.a.x) & vec4<u32>(4294967295u, u_input.a.x, 16685u, 38598u)), _wgslsmith_div_vec2_f32(vec2<f32>(-1697f, 2360f), vec2<f32>(-522f, 1430f)), vec2<bool>(true, true), true)), true);
    global1 = !var_0.e.x;
    let var_1 = Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a.b.x, 2014f) * _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_0.c, var_0.a.b.x)))))), ~var_0.a.a);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(483f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1082f - -570f), var_0.c, true))) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(var_1.a.x)), _wgslsmith_f_op_f32(var_0.c * 989f)))));
    return Struct_2(vec3<f32>(_wgslsmith_f_op_f32(-var_1.a.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-580f - 1094f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.a.x), _wgslsmith_f_op_f32(round(-339f)))), _wgslsmith_f_op_f32(step(var_0.a.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c * var_0.c))))), ~abs(var_0.a.a.x), vec3<bool>(all(select(func_4(Struct_5(var_0.a, var_0.b, var_0.a.b.x, vec3<f32>(-446f, var_0.c, 404f), vec4<bool>(var_0.b.x, var_0.b.x, var_0.a.c.x, true)), 20325u, Struct_2(vec3<f32>(-1046f, var_1.a.x, var_1.a.x), var_1.b.x, var_0.e.zzy, var_0.a), true).e.xzw, vec3<bool>(var_0.b.x, true, var_0.e.x), var_0.e.wxy)), var_0.e.x, false), func_4(var_0, 1u, Struct_2(var_0.d, u_input.a.x, var_0.e.yww, func_4(Struct_5(Struct_1(vec4<u32>(var_0.a.a.x, var_0.a.a.x, var_0.a.a.x, var_0.a.a.x), vec2<f32>(2770f, -290f), vec2<bool>(var_0.e.x, var_0.b.x), var_0.e.x), vec2<bool>(true, var_0.a.c.x), 1691f, vec3<f32>(var_1.a.x, -913f, var_1.a.x), vec4<bool>(var_0.a.c.x, var_0.b.x, var_0.a.d, var_0.a.d)), ~u_input.c, Struct_2(vec3<f32>(415f, 1331f, var_0.c), var_0.a.a.x, vec3<bool>(var_0.a.c.x, true, false), var_0.a), !var_0.b.x).a), var_0.a.b.x > var_0.a.b.x).a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = i32(-1i) * -2147483647i;
    global1 = (reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, u_input.c, u_input.a.x), abs(vec3<u32>(u_input.c, u_input.c, 11791u)))) >= reverseBits(u_input.a.x)) != true;
    let var_1 = func_1();
    var var_2 = vec2<bool>(all(var_1.c.yy) || false, all(select(vec2<bool>(!var_1.c.x, var_1.d.d), vec2<bool>(all(var_1.c), var_1.b == 0u), select(!var_1.d.c, func_2(vec3<i32>(global0[_wgslsmith_index_u32(0u, 4u)], 0i, 11339i)).a.c, vec2<bool>(var_1.c.x, var_1.d.c.x)))));
    let var_3 = Struct_1(var_1.d.a, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(var_1.a.yx, func_4(Struct_5(var_1.d, var_1.c.yz, 901f, var_1.a, vec4<bool>(var_2.x, false, var_1.d.c.x, var_2.x)), _wgslsmith_mult_u32(1u, u_input.c), var_1, !var_2.x).d.zx))), !func_1().d.c, !((-997f > _wgslsmith_f_op_f32(sign(var_1.d.b.x))) || select(var_1.c.x != false, true, true)));
    let var_4 = vec4<i32>(0i, min(-2147483647i, u_input.b.x), var_0, 55240i & (abs(u_input.b.x) ^ 1i)) | vec4<i32>(1i, _wgslsmith_dot_vec2_i32(u_input.b, ~vec2<i32>(0i, var_0)), -11042i, reverseBits(-1i));
    global0 = array<i32, 4>();
    let x = u_input.a;
    s_output = StorageBuffer(var_3.b.x, var_4.zwx, var_1.a.x, min(vec2<i32>(_wgslsmith_dot_vec2_i32(abs(var_4.xw), u_input.b), -u_input.b.x), _wgslsmith_clamp_vec2_i32(firstLeadingBit(vec2<i32>(u_input.b.x, -1146i)), ~u_input.b, vec2<i32>(u_input.b.x, var_4.x)) >> (func_2(select(vec3<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 4u)], 1i, 13957i), vec3<i32>(u_input.b.x, -3444i, -36422i), var_1.c)).a.a.zw % vec2<u32>(32u))), u_input.c);
}

