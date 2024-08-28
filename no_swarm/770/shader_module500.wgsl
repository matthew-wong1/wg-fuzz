struct Struct_1 {
    a: vec3<u32>,
    b: u32,
    c: bool,
    d: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: vec4<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: i32,
    c: vec4<u32>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec4<bool>,
    c: u32,
}

struct Struct_5 {
    a: vec3<bool>,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec4<u32>,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(vec3<u32>(4294967295u, 1u, 20237u), 20001u, false, vec2<f32>(862f, 453f)), vec3<i32>(2147483647i, 22921i, -1i), vec4<f32>(-1310f, -2145f, -1000f, 156f), Struct_1(vec3<u32>(74562u, 101846u, 4294967295u), 4294967295u, true, vec2<f32>(1057f, 1074f)));

var<private> global1: array<vec3<bool>, 12> = array<vec3<bool>, 12>(vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(true, false, false));

var<private> global2: array<i32, 23> = array<i32, 23>(1i, 33961i, -5387i, i32(-2147483648), 64944i, 0i, -1i, -35687i, 0i, i32(-2147483648), i32(-2147483648), 1i, -1426i, 0i, 17679i, 4442i, -14943i, 45324i, -18062i, -11466i, 1i, -29309i, -36427i);

var<private> global3: i32 = -6214i;

var<private> global4: array<vec2<u32>, 9>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32, arg_1: Struct_4, arg_2: vec2<bool>, arg_3: vec4<u32>) -> f32 {
    var var_0 = _wgslsmith_clamp_vec3_i32(global0.b, _wgslsmith_div_vec3_i32(vec3<i32>(global0.b.x, ~(i32(-1i) * -1i), _wgslsmith_div_i32(_wgslsmith_add_i32(-1131i, global0.b.x), u_input.e.x)), ~(-min(vec3<i32>(arg_1.a.b.x, -35272i, global2[_wgslsmith_index_u32(arg_0, 23u)]), global0.b))), reverseBits(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(global2[_wgslsmith_index_u32(3228u, 23u)], 1i, arg_1.a.b.x, 2147483647i) | u_input.a, u_input.a), -select(u_input.a.x, -18368i, false), -2147483647i)));
    return _wgslsmith_f_op_f32(460f + _wgslsmith_f_op_f32(global0.a.d.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.a.d.d.x - 421f) + arg_1.a.c.x))));
}

fn func_2(arg_0: Struct_3, arg_1: f32, arg_2: i32, arg_3: vec2<u32>) -> Struct_5 {
    global2 = array<i32, 23>();
    var var_0 = Struct_2(Struct_1(~global0.d.a, u_input.d, select(true, any(select(vec3<bool>(arg_0.a, false, arg_0.a), vec3<bool>(global0.a.c, true, global0.a.c), global1[_wgslsmith_index_u32(arg_0.c.x, 12u)])), !all(vec2<bool>(true, false))), _wgslsmith_f_op_vec2_f32(global0.c.xz + _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-1398f, global0.c.x), vec2<f32>(global0.c.x, global0.d.d.x))))), u_input.a.wzz, _wgslsmith_f_op_vec4_f32(vec4<f32>(510f, _wgslsmith_f_op_f32(func_3(arg_0.c.x, Struct_4(Struct_2(Struct_1(u_input.c.zwx, global0.d.a.x, arg_0.a, vec2<f32>(arg_1, arg_1)), vec3<i32>(global0.b.x, global2[_wgslsmith_index_u32(global0.a.b, 23u)], -25984i), global0.c, global0.d), vec4<bool>(global0.d.c, arg_0.a, arg_0.a, false), global0.a.a.x), !vec2<bool>(global0.d.c, true), ~vec4<u32>(global0.d.a.x, 0u, global0.d.a.x, arg_3.x))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(-1f)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_1, -331f, 1051f, arg_1), vec4<f32>(-1245f, -387f, global0.c.x, arg_1))) + _wgslsmith_f_op_vec4_f32(-global0.c)) + global0.c)), Struct_1(~_wgslsmith_mult_vec3_u32(global0.d.a, global0.a.a) ^ vec3<u32>(_wgslsmith_div_u32(arg_0.c.x, arg_0.c.x), 4294967295u << (arg_0.c.x % 32u), 1u ^ global0.d.b), arg_0.c.x, countOneBits(~u_input.d) >= 1u, _wgslsmith_f_op_vec2_f32(-global0.c.wy)));
    var var_1 = ~(~4294967295u);
    var var_2 = Struct_5(vec3<bool>(select(!(var_0.a.c || true), any(vec3<bool>(var_0.a.c, true, true)) && global0.a.c, false), any(vec4<bool>(var_0.a.c && arg_0.a, all(global1[_wgslsmith_index_u32(arg_0.c.x, 12u)]), arg_0.a, global0.d.c)), global0.a.c), ~_wgslsmith_add_vec4_u32(~_wgslsmith_div_vec4_u32(u_input.c, arg_0.c), _wgslsmith_clamp_vec4_u32(arg_0.c, arg_0.c, countOneBits(arg_0.c))));
    var var_3 = Struct_1(max(~vec3<u32>(4294967295u, ~u_input.c.x, ~1u), vec3<u32>(4294967295u, 43089u, ~4294967295u)), 16679u, var_2.a.x, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0.c.xw) + _wgslsmith_f_op_vec2_f32(-var_0.d.d)))))));
    return Struct_5(vec3<bool>(true, true, true), _wgslsmith_add_vec4_u32(~((var_2.b << (var_2.b % vec4<u32>(32u))) ^ firstLeadingBit(u_input.c)), _wgslsmith_sub_vec4_u32(vec4<u32>(abs(5696u), arg_3.x, _wgslsmith_mult_u32(global0.d.a.x, var_2.b.x), 20104u), max(vec4<u32>(13401u, var_0.a.a.x, 4294967295u, 1u), vec4<u32>(global0.a.b, arg_0.c.x, arg_3.x, u_input.d)))));
}

fn func_4(arg_0: bool, arg_1: vec3<bool>, arg_2: Struct_5) -> Struct_3 {
    let var_0 = global0.a.d.x <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-745f, global0.a.d.x))));
    global4 = array<vec2<u32>, 9>();
    global4 = array<vec2<u32>, 9>();
    var var_1 = ~arg_2.b.x << (abs(_wgslsmith_mod_u32(global0.a.a.x, _wgslsmith_sub_u32(~68845u, 1u))) % 32u);
    global1 = array<vec3<bool>, 12>();
    return Struct_3(func_2(Struct_3(true, _wgslsmith_clamp_i32(1i, u_input.e.x, -2147483647i), _wgslsmith_mult_vec4_u32(u_input.c, vec4<u32>(102264u, u_input.d, 23833u, 29236u))), global0.d.d.x, ~firstTrailingBit(max(u_input.e.x, global2[_wgslsmith_index_u32(u_input.c.x, 23u)])), global0.d.a.yy).a.x, global0.b.x, ~select(arg_2.b >> (arg_2.b % vec4<u32>(32u)), vec4<u32>(41606u, global0.a.b, _wgslsmith_mod_u32(90730u, 28433u), ~1u), select(select(vec4<bool>(arg_0, true, arg_2.a.x, false), vec4<bool>(false, global0.d.c, arg_0, true), arg_2.a.x), select(vec4<bool>(false, arg_2.a.x, false, global0.d.c), vec4<bool>(false, true, global0.d.c, true), vec4<bool>(false, true, false, global0.d.c)), !vec4<bool>(arg_2.a.x, var_0, arg_1.x, true))));
}

fn func_5(arg_0: vec3<f32>, arg_1: Struct_3, arg_2: vec2<u32>, arg_3: vec2<i32>) -> Struct_2 {
    var var_0 = Struct_4(Struct_2(global0.a, -(~countOneBits(vec3<i32>(0i, -5515i, -17180i))), _wgslsmith_div_vec4_f32(vec4<f32>(1704f, arg_0.x, _wgslsmith_f_op_f32(trunc(980f)), global0.d.d.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(-496f, arg_0.x, -318f, global0.d.d.x) + global0.c)), Struct_1(~u_input.b, _wgslsmith_add_u32(reverseBits(u_input.c.x), 47750u), arg_1.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-844f, arg_0.x) - arg_0.zy)))), !(!(!(!vec4<bool>(global0.d.c, global0.a.c, false, false)))), ~4294967295u);
    var var_1 = firstTrailingBit(~u_input.a);
    let var_2 = Struct_5(global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(global0.d.a, _wgslsmith_clamp_vec3_u32(var_0.a.d.a, vec3<u32>(arg_2.x, 30415u, 56076u) | var_0.a.d.a, vec3<u32>(global0.d.a.x, global0.d.b, 4294967295u))), 12u)], _wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(arg_1.c, func_2(Struct_3(true, -56830i, vec4<u32>(44605u, 53134u, 4294967295u, u_input.d)), global0.d.d.x, global2[_wgslsmith_index_u32(u_input.d, 23u)], var_0.a.d.a.xy).b >> (arg_1.c % vec4<u32>(32u)), firstTrailingBit(u_input.c)), (vec4<u32>(u_input.c.x, 1u, u_input.c.x, u_input.b.x) & ~vec4<u32>(1u, u_input.d, 27256u, var_0.c)) << (~abs(vec4<u32>(arg_2.x, 3162u, arg_2.x, arg_1.c.x)) % vec4<u32>(32u))));
    let var_3 = func_4(true, vec3<bool>(false, !func_4(true, select(vec3<bool>(var_2.a.x, arg_1.a, var_0.a.d.c), vec3<bool>(global0.d.c, false, false), false), var_2).a, arg_1.a), var_2);
    global2 = array<i32, 23>();
    return Struct_2(Struct_1(vec3<u32>(~func_4(false, var_0.b.xzz, var_2).c.x, 4294967295u, 4294967295u), 0u, min(var_2.b.x, arg_1.c.x) >= 4372u, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(sign(global0.c.x)), _wgslsmith_f_op_f32(ceil(-540f))) + _wgslsmith_div_vec2_f32(vec2<f32>(1667f, arg_0.x), global0.d.d))), global0.b, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1406f, var_0.a.a.d.x, 892f, var_0.a.c.x)))) * vec4<f32>(-496f, var_0.a.d.d.x, var_0.a.c.x, _wgslsmith_f_op_f32(select(331f, global0.d.d.x, global0.d.c)))), _wgslsmith_f_op_vec4_f32(global0.c + global0.c), select(var_0.b, var_0.b, true))), global0.a);
}

fn func_6(arg_0: vec3<u32>, arg_1: vec2<f32>, arg_2: Struct_2, arg_3: vec4<u32>) -> Struct_2 {
    let var_0 = firstTrailingBit(arg_3.x);
    let var_1 = Struct_1(_wgslsmith_clamp_vec3_u32(~vec3<u32>(10357u << (u_input.d % 32u), var_0 | arg_3.x, 4294967295u), vec3<u32>(firstLeadingBit(49597u), _wgslsmith_mult_u32(~41568u, global0.a.a.x), ~(~arg_3.x)), ~arg_2.a.a), _wgslsmith_mult_u32(~(arg_2.d.a.x ^ ~arg_0.x), func_4(global0.a.c, global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_mod_u32(var_0, 1u), 41008u), 12u)], Struct_5(!vec3<bool>(false, arg_2.a.c, false), arg_3)).c.x), false, _wgslsmith_div_vec2_f32(arg_2.c.wz, _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_1) - vec2<f32>(-1907f, arg_1.x))))));
    var var_2 = func_4(global0.d.c, select(select(global1[_wgslsmith_index_u32(63708u, 12u)], !global1[_wgslsmith_index_u32(5750u, 12u)], global1[_wgslsmith_index_u32(4294967295u, 12u)]), func_2(func_4(all(vec4<bool>(false, arg_2.a.c, var_1.c, true)), global1[_wgslsmith_index_u32(4294967295u, 12u)], Struct_5(vec3<bool>(false, false, true), vec4<u32>(20992u, arg_3.x, 72731u, 0u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_1.d.x)) - _wgslsmith_f_op_f32(step(-1000f, arg_2.c.x))), -1i, _wgslsmith_div_vec2_u32(~vec2<u32>(u_input.d, 66117u), ~u_input.c.wz)).a, global0.a.c), Struct_5(vec3<bool>(false, global0.d.c && global0.d.c, true), _wgslsmith_sub_vec4_u32(abs(~arg_3), ~u_input.c)));
    var var_3 = false;
    let var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.d.x, -551f) + var_1.d))))))));
    return func_5(global0.c.yzx, Struct_3(true, global0.b.x, u_input.c), reverseBits(~arg_2.a.a.yz), global0.b.zx);
}

fn func_1() -> Struct_1 {
    let var_0 = 26106u;
    global4 = array<vec2<u32>, 9>();
    global4 = array<vec2<u32>, 9>();
    var var_1 = func_6(vec3<u32>(~(~4294967295u), global0.a.b, ~(~1u)) << (u_input.c.wzx % vec3<u32>(32u)), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global0.c.x, -719f))), func_5(vec3<f32>(_wgslsmith_f_op_f32(-1000f + global0.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(269f + 376f)), -534f), func_4(global0.d.c, vec3<bool>(all(vec4<bool>(false, true, true, false)), all(vec4<bool>(global0.d.c, false, global0.a.c, global0.d.c)), true), func_2(Struct_3(global0.d.c, 2147483647i, vec4<u32>(0u, var_0, 6924u, var_0)), _wgslsmith_f_op_f32(-global0.c.x), 0i, ~vec2<u32>(global0.d.b, global0.a.b))), global0.a.a.zy, _wgslsmith_div_vec2_i32(select(u_input.a.xx, u_input.a.zw, vec2<bool>(global0.d.c, false)), vec2<i32>(_wgslsmith_mult_i32(1i, -27458i), -global0.b.x))), vec4<u32>(~(~(~46303u)), _wgslsmith_dot_vec3_u32(~(vec3<u32>(6533u, global0.d.b, 52659u) << (vec3<u32>(u_input.b.x, u_input.c.x, 38627u) % vec3<u32>(32u))), global0.a.a & global0.d.a), ~(~global0.a.b & u_input.d), _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, 10877u), _wgslsmith_mod_vec2_u32(u_input.c.yz, vec2<u32>(global0.d.b, u_input.d))), 64506u)));
    let var_2 = all(!vec2<bool>(true && global0.d.c, func_6(global0.d.a, _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.d.d.x, -2741f)), Struct_2(Struct_1(u_input.b, 17361u, false, var_1.d.d), var_1.b, vec4<f32>(var_1.c.x, -952f, -1447f, -265f), global0.d), select(vec4<u32>(var_0, 4294967295u, 29890u, u_input.c.x), u_input.c, var_1.a.c)).d.c));
    return var_1.d;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_add_vec3_u32(vec3<u32>(~14931u, global0.d.b, 1u) >> (~vec3<u32>(u_input.b.x, 4294967295u, 0u) % vec3<u32>(32u)), ~(~firstTrailingBit(global0.a.a))), min(0u, 12005u), any(!(!(!vec2<bool>(false, global0.a.c)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-global0.a.d.x), _wgslsmith_f_op_f32(global0.c.x - 455f)) - vec2<f32>(_wgslsmith_f_op_f32(-global0.d.d.x), _wgslsmith_f_op_f32(global0.c.x * 242f))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(ceil(global0.d.d)), vec2<f32>(global0.d.d.x, 1684f))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(global0.c.x, 554f))), vec2<f32>(global0.a.d.x, global0.c.x)))));
    global4 = array<vec2<u32>, 9>();
    let var_1 = global0.a.d.x > -1000f;
    global0 = Struct_2(func_1(), firstLeadingBit(firstLeadingBit(vec3<i32>(61796i, 0i, u_input.a.x))) << (vec3<u32>(~var_0.b, ~(~30182u), 0u) % vec3<u32>(32u)), global0.c, func_6((~vec3<u32>(4294967295u, 4294967295u, 1u) << (var_0.a % vec3<u32>(32u))) >> (_wgslsmith_add_vec3_u32(var_0.a, vec3<u32>(0u, 37108u, 1u)) % vec3<u32>(32u)), global0.c.zw, Struct_2(Struct_1(_wgslsmith_mod_vec3_u32(var_0.a, vec3<u32>(4294967295u, global0.d.a.x, 1u)), u_input.c.x, true, _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.d.x, 1424f))), vec3<i32>(31474i, 1428i, global2[_wgslsmith_index_u32(4294967295u, 23u)]) >> (u_input.c.wwx % vec3<u32>(32u)), _wgslsmith_f_op_vec4_f32(global0.c - _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global0.c.x, global0.d.d.x, global0.c.x, var_0.d.x)))), func_5(_wgslsmith_f_op_vec3_f32(-global0.c.zyy), Struct_3(var_1, u_input.e.x, u_input.c), ~vec2<u32>(var_0.a.x, global0.d.a.x), global0.b.zx & vec2<i32>(u_input.a.x, u_input.e.x)).d), u_input.c).a);
    var_0 = func_1();
    let var_2 = select(!(!(!select(vec4<bool>(global0.d.c, true, true, global0.d.c), vec4<bool>(global0.a.c, var_0.c, global0.d.c, var_0.c), true))), select(select(vec4<bool>(var_0.c, true, true, var_0.c || true), select(vec4<bool>(global0.a.c, var_1, global0.a.c, true), select(vec4<bool>(true, var_0.c, false, var_1), vec4<bool>(false, true, global0.a.c, global0.d.c), global0.a.c), !vec4<bool>(var_0.c, false, global0.a.c, var_1)), select(select(vec4<bool>(false, global0.a.c, var_0.c, var_0.c), vec4<bool>(global0.a.c, true, false, global0.d.c), true), select(vec4<bool>(global0.d.c, true, var_0.c, global0.a.c), vec4<bool>(global0.a.c, var_1, false, true), vec4<bool>(false, false, var_1, var_0.c)), var_0.c)), !select(!vec4<bool>(global0.d.c, global0.a.c, var_0.c, var_1), select(vec4<bool>(false, true, true, global0.a.c), vec4<bool>(true, var_0.c, global0.d.c, global0.d.c), true), select(vec4<bool>(var_1, var_1, var_0.c, false), vec4<bool>(false, var_1, true, global0.d.c), vec4<bool>(var_0.c, false, true, true))), var_0.c), !select(select(!vec4<bool>(var_1, false, global0.a.c, true), select(vec4<bool>(false, global0.a.c, true, true), vec4<bool>(global0.d.c, var_0.c, false, var_0.c), vec4<bool>(var_0.c, false, global0.d.c, true)), any(global1[_wgslsmith_index_u32(0u, 12u)])), select(select(vec4<bool>(global0.d.c, false, global0.d.c, true), vec4<bool>(false, var_0.c, false, var_0.c), vec4<bool>(true, global0.a.c, true, true)), !vec4<bool>(var_1, var_1, false, var_1), !vec4<bool>(false, var_0.c, true, false)), !vec4<bool>(true, false, global0.d.c, var_0.c)));
    let x = u_input.a;
    s_output = StorageBuffer(global0.a.a.zz, global0.b.zy, -12706i);
}

