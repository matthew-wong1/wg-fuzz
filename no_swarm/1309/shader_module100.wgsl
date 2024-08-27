struct Struct_1 {
    a: bool,
    b: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: i32,
    d: vec3<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: vec2<bool>,
}

struct Struct_5 {
    a: vec2<bool>,
    b: vec4<u32>,
    c: vec4<bool>,
    d: vec2<u32>,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 25>;

var<private> global1: array<Struct_4, 11>;

var<private> global2: array<Struct_4, 13>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_3, arg_2: vec2<u32>, arg_3: i32) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(arg_1.b)), -374f)) + arg_1.b);
    var var_1 = firstTrailingBit(arg_1.a.b) << (~vec4<u32>(45119u, 44785u, (47739u ^ u_input.a) | arg_2.x, u_input.a) % vec4<u32>(32u));
    var var_2 = arg_1.a.a;
    var var_3 = var_0;
    global1 = array<Struct_4, 11>();
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 - _wgslsmith_f_op_f32(-2345f + 638f)) - _wgslsmith_f_op_f32(sign(-513f)))))));
}

fn func_2(arg_0: Struct_4) -> Struct_2 {
    global2 = array<Struct_4, 13>();
    global0 = array<vec2<f32>, 25>();
    let var_0 = vec3<f32>(-450f, _wgslsmith_f_op_f32(func_3(vec4<bool>(arg_0.a.a, true, true, arg_0.d.x), Struct_3(arg_0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c))), vec2<u32>(1u, 1u), max(34660i, -2147483647i))), -1000f);
    let var_1 = u_input.a;
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    return Struct_2(Struct_1(false, vec4<u32>(_wgslsmith_div_u32(1u, ~0u), firstTrailingBit(~arg_0.a.b.x), 14177u, _wgslsmith_dot_vec3_u32(reverseBits(arg_0.a.b.xyz), max(arg_0.a.b.wzy, vec3<u32>(16164u, var_1, u_input.a))))), !vec3<bool>(false, any(arg_0.d), any(vec4<bool>(arg_0.a.a, arg_0.b.a, arg_0.a.a, false))), select(50563i, 2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(1i, -9621i), vec2<i32>(26340i, 1i)) >= 1i), countOneBits(vec3<i32>(60443i, ~(-2147483647i), -(~0i))));
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_2) -> Struct_5 {
    global0 = array<vec2<f32>, 25>();
    var var_0 = arg_1.a.b.x;
    let var_1 = select(any(vec2<bool>(_wgslsmith_f_op_f32(trunc(-300f)) > _wgslsmith_div_f32(-170f, 671f), select(1u >= u_input.a, true, !arg_1.b.x))), !any(vec4<bool>(all(vec4<bool>(false, false, arg_1.b.x, false)), arg_1.b.x, arg_1.b.x && false, true)), arg_1.a.b.x > select(59798u, 0u, !(!arg_1.b.x)));
    global2 = array<Struct_4, 13>();
    let var_2 = !vec3<bool>(arg_1.a.a, !(!(9644u != arg_0.x)), countOneBits(_wgslsmith_div_u32(arg_0.x, arg_1.a.b.x)) < arg_1.a.b.x);
    return Struct_5(!vec2<bool>(any(arg_1.b) || true, any(vec4<bool>(true, var_2.x, var_1, false))), vec4<u32>(_wgslsmith_div_u32(_wgslsmith_add_u32(func_2(global2[_wgslsmith_index_u32(6513u, 13u)]).a.b.x, abs(u_input.a)), ~_wgslsmith_add_u32(arg_0.x, u_input.a)), u_input.a, 0u & firstLeadingBit(_wgslsmith_mult_u32(u_input.a, 0u)), arg_1.a.b.x), vec4<bool>(!(var_1 || true), _wgslsmith_div_i32(31988i, _wgslsmith_dot_vec3_i32(vec3<i32>(0i, -2147483647i, 1i), arg_1.d)) == -1i, any(select(vec2<bool>(true, arg_1.b.x), vec2<bool>(var_1, false), true)), arg_1.b.x), arg_1.a.b.wy, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1322f * -1299f)))), -1279f, _wgslsmith_f_op_f32(ceil(-492f))));
}

fn func_5(arg_0: Struct_5, arg_1: vec4<i32>, arg_2: bool, arg_3: bool) -> Struct_1 {
    var var_0 = Struct_5(!vec2<bool>(_wgslsmith_clamp_u32(4294967295u, 0u, 1u) >= u_input.a, true), arg_0.b, arg_0.c, firstTrailingBit(arg_0.d), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0.e) * arg_0.e))));
    var var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.e.zx), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(117f, arg_0.e.x)))))));
    var_0 = func_4(var_0.d, Struct_2(Struct_1(arg_0.a.x == true, ~firstLeadingBit(vec4<u32>(4294967295u, 60196u, 33873u, 4294967295u))), vec3<bool>(func_4(vec2<u32>(0u, var_0.d.x), Struct_2(Struct_1(false, vec4<u32>(u_input.a, 4294967295u, 4294967295u, u_input.a)), vec3<bool>(arg_3, var_0.c.x, arg_3), arg_1.x, vec3<i32>(-47793i, -5901i, -1i))).a.x && arg_3, true, arg_3), arg_1.x, firstLeadingBit(~(arg_1.xxy >> (vec3<u32>(u_input.a, var_0.d.x, 0u) % vec3<u32>(32u))))));
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(arg_0.e.x, 350f, arg_0.e.x, 562f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.e.x, var_0.e.x, var_1.x, 1774f)))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1087f, 1065f, -439f, var_1.x)))))));
    let var_3 = func_4(~vec2<u32>(~var_0.b.x, _wgslsmith_mult_u32(max(arg_0.b.x, 7429u), abs(var_0.b.x))), Struct_2(func_2(global2[_wgslsmith_index_u32(33071u, 13u)]).a, vec3<bool>(-7591i <= (0i | arg_1.x), true, !func_2(global2[_wgslsmith_index_u32(47911u, 13u)]).b.x), _wgslsmith_sub_i32(14393i, ~max(-2147483647i, 0i)), max(_wgslsmith_sub_vec3_i32(vec3<i32>(1i, arg_1.x, 1i), arg_1.zxx), vec3<i32>(0i, arg_1.x, ~0i)))).c;
    return func_2(Struct_4(func_2(global1[_wgslsmith_index_u32(0u, 11u)]).a, Struct_1(!(var_0.b.x > u_input.a), _wgslsmith_sub_vec4_u32(vec4<u32>(1u, 4294967295u, 33458u, 12449u), ~arg_0.b)), arg_0.e.x, func_4(arg_0.b.xy, Struct_2(func_2(global2[_wgslsmith_index_u32(15516u, 13u)]).a, var_0.c.xyw, arg_1.x, _wgslsmith_add_vec3_i32(vec3<i32>(0i, arg_1.x, -16713i), vec3<i32>(arg_1.x, -57790i, 1i)))).a)).a;
}

fn func_1(arg_0: Struct_4, arg_1: u32) -> vec4<bool> {
    var var_0 = func_5(func_4(_wgslsmith_add_vec2_u32(~vec2<u32>(25492u, arg_1), vec2<u32>(u_input.a, ~arg_0.b.b.x)), func_2(global2[_wgslsmith_index_u32(u_input.a & select(4294967295u, 44513u, false), 13u)])), ~(-firstTrailingBit(vec4<i32>(8644i, 1i, -15816i, -2147483647i))), !arg_0.b.a, 31360u >= _wgslsmith_div_u32(~u_input.a, arg_0.a.b.x));
    var var_1 = Struct_3(func_2(Struct_4(func_5(func_4(arg_0.b.b.yy, Struct_2(arg_0.a, vec3<bool>(false, false, false), -1i, vec3<i32>(-16470i, 52685i, 2147483647i))), -vec4<i32>(-22444i, 2147483647i, 78412i, -2147483647i), true, any(vec4<bool>(var_0.a, var_0.a, false, false))), func_2(global1[_wgslsmith_index_u32(4294967295u, 11u)]).a, -1000f, vec2<bool>(!arg_0.d.x, true))).a, arg_0.c);
    var var_2 = firstLeadingBit(13049i);
    let var_3 = func_4(vec2<u32>(_wgslsmith_div_u32(35079u, 11847u), _wgslsmith_add_u32(~13452u, var_1.a.b.x)), Struct_2(Struct_1(func_2(Struct_4(Struct_1(var_1.a.a, var_1.a.b), Struct_1(false, arg_0.a.b), arg_0.c, arg_0.d)).a.a, var_1.a.b), select(select(func_2(arg_0).b, !vec3<bool>(true, true, arg_0.b.a), all(arg_0.d)), vec3<bool>(true, true, true), select(func_4(vec2<u32>(1u, arg_0.b.b.x), Struct_2(var_1.a, vec3<bool>(var_1.a.a, arg_0.d.x, var_0.a), 2147483647i, vec3<i32>(2287i, 13043i, -8941i))).c.zxy, vec3<bool>(arg_0.a.a, var_0.a, true), func_2(arg_0).b)), ~firstTrailingBit(-18227i), min(~vec3<i32>(0i, -38326i, 2147483647i), vec3<i32>(_wgslsmith_div_i32(1i, 7559i), -2147483647i, ~6482i)))).c.wzy;
    var var_4 = vec3<f32>(var_1.b, arg_0.c, var_1.b);
    return select(!vec4<bool>(all(var_3), any(func_4(arg_0.b.b.wy, Struct_2(Struct_1(false, var_1.a.b), vec3<bool>(true, false, var_0.a), -11379i, vec3<i32>(-2147483647i, 0i, -28588i))).c), func_4(select(vec2<u32>(u_input.a, var_1.a.b.x), var_1.a.b.yy, var_3.x), Struct_2(var_1.a, vec3<bool>(false, var_0.a, arg_0.d.x), 2147483647i, vec3<i32>(9495i, 0i, -10203i))).a.x, all(var_3.xy)), select(!vec4<bool>(func_4(vec2<u32>(u_input.a, 4294967295u), Struct_2(arg_0.b, var_3, 2147483647i, vec3<i32>(2147483647i, -2147483647i, 1i))).a.x, !var_1.a.a, !arg_0.a.a, var_3.x), select(!select(vec4<bool>(arg_0.d.x, var_3.x, arg_0.a.a, false), vec4<bool>(true, arg_0.a.a, var_0.a, true), vec4<bool>(var_1.a.a, var_1.a.a, true, true)), vec4<bool>(any(var_3.zy), any(var_3.zy), any(vec4<bool>(var_0.a, var_3.x, var_0.a, false)), var_0.a || arg_0.d.x), !var_1.a.a), !(!(!vec4<bool>(false, false, true, arg_0.d.x)))), vec4<bool>(!(all(vec4<bool>(true, var_0.a, var_1.a.a, true)) & var_0.a), true, true, any(vec4<bool>(true, all(vec2<bool>(var_0.a, false)), true, func_5(Struct_5(vec2<bool>(true, false), arg_0.a.b, vec4<bool>(var_3.x, var_0.a, arg_0.d.x, true), var_1.a.b.zz, vec3<f32>(var_1.b, var_1.b, -2314f)), vec4<i32>(-2147483647i, 1i, -30369i, -1i), var_3.x, var_1.a.a).a))));
}

fn func_6(arg_0: vec3<u32>, arg_1: vec4<bool>) -> StorageBuffer {
    let var_0 = false;
    global2 = array<Struct_4, 13>();
    let var_1 = func_2(Struct_4(Struct_1(47683u <= (arg_0.x >> (arg_0.x % 32u)), vec4<u32>(arg_0.x, u_input.a, ~arg_0.x, ~1u)), Struct_1(false, ~vec4<u32>(u_input.a, arg_0.x, u_input.a, 0u) | vec4<u32>(arg_0.x, 49551u, u_input.a, 1u)), _wgslsmith_f_op_f32(min(1f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1358f), 1968f))), arg_1.yz));
    let var_2 = global1[_wgslsmith_index_u32(3566u, 11u)];
    let var_3 = -17063i;
    return StorageBuffer(var_1.d.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~(-27025i));
    var var_1 = firstLeadingBit(_wgslsmith_div_u32(1u | (select(u_input.a, u_input.a, true) << (~41534u % 32u)), ~(~u_input.a) & 19934u));
    global2 = array<Struct_4, 13>();
    global2 = array<Struct_4, 13>();
    let var_2 = 29233u;
    let x = u_input.a;
    s_output = func_6(~max(vec3<u32>(~u_input.a, u_input.a, u_input.a), abs(vec3<u32>(var_2, 4294967295u, 0u)) >> (~vec3<u32>(u_input.a, var_2, u_input.a) % vec3<u32>(32u))), vec4<bool>(any(!func_1(Struct_4(Struct_1(true, vec4<u32>(u_input.a, 0u, u_input.a, 38578u)), Struct_1(false, vec4<u32>(0u, 120722u, 0u, u_input.a)), -1257f, vec2<bool>(true, true)), 19333u)), any(vec4<bool>(true, true, true, true)) == (false || (var_0 > var_0)), any(vec4<bool>(true, true, true, true)), true));
}

