struct Struct_1 {
    a: vec2<bool>,
    b: bool,
    c: vec2<u32>,
    d: bool,
    e: f32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec3<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: f32,
    d: vec3<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 12> = array<Struct_2, 12>(Struct_2(-435f, Struct_1(vec2<bool>(true, false), true, vec2<u32>(60657u, 4294967295u), false, 1265f), Struct_1(vec2<bool>(false, false), false, vec2<u32>(4294967295u, 102731u), false, -1430f)), Struct_2(-646f, Struct_1(vec2<bool>(false, false), false, vec2<u32>(21225u, 1u), false, 392f), Struct_1(vec2<bool>(true, false), false, vec2<u32>(29288u, 4294967295u), true, -1891f)), Struct_2(-534f, Struct_1(vec2<bool>(false, true), true, vec2<u32>(86421u, 58792u), false, 774f), Struct_1(vec2<bool>(false, true), false, vec2<u32>(0u, 0u), true, 192f)), Struct_2(-908f, Struct_1(vec2<bool>(false, false), false, vec2<u32>(4294967295u, 33707u), true, -242f), Struct_1(vec2<bool>(false, true), true, vec2<u32>(4294967295u, 4294967295u), false, -288f)), Struct_2(-1106f, Struct_1(vec2<bool>(false, true), true, vec2<u32>(702u, 40469u), false, -222f), Struct_1(vec2<bool>(true, false), true, vec2<u32>(0u, 4294967295u), true, -858f)), Struct_2(-1363f, Struct_1(vec2<bool>(true, false), true, vec2<u32>(48512u, 4294967295u), false, -1062f), Struct_1(vec2<bool>(true, false), false, vec2<u32>(1u, 0u), false, 1000f)), Struct_2(-683f, Struct_1(vec2<bool>(true, true), true, vec2<u32>(74643u, 4294967295u), false, 490f), Struct_1(vec2<bool>(true, false), true, vec2<u32>(82562u, 27806u), true, 1128f)), Struct_2(-273f, Struct_1(vec2<bool>(false, false), false, vec2<u32>(44789u, 1355u), false, -310f), Struct_1(vec2<bool>(false, false), true, vec2<u32>(6856u, 4294967295u), true, 1000f)), Struct_2(444f, Struct_1(vec2<bool>(true, false), false, vec2<u32>(1u, 1u), false, 977f), Struct_1(vec2<bool>(true, false), true, vec2<u32>(42740u, 4294967295u), false, 650f)), Struct_2(1123f, Struct_1(vec2<bool>(false, true), false, vec2<u32>(97901u, 4294967295u), true, -970f), Struct_1(vec2<bool>(false, false), true, vec2<u32>(0u, 31534u), true, -1268f)), Struct_2(182f, Struct_1(vec2<bool>(false, true), false, vec2<u32>(53300u, 72990u), false, -673f), Struct_1(vec2<bool>(false, false), true, vec2<u32>(0u, 16420u), false, 182f)), Struct_2(-1569f, Struct_1(vec2<bool>(true, true), true, vec2<u32>(41763u, 18692u), false, 1637f), Struct_1(vec2<bool>(false, true), false, vec2<u32>(62207u, 0u), true, -654f)));

var<private> global1: f32;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec2<f32>, arg_1: vec4<f32>, arg_2: Struct_1, arg_3: i32) -> u32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x - -1309f)), _wgslsmith_f_op_f32(step(-1000f, 1000f)), -442f, _wgslsmith_f_op_f32(floor(arg_1.x)))));
    var var_1 = arg_2;
    let var_2 = Struct_2(arg_1.x, arg_2, arg_2);
    global0 = array<Struct_2, 12>();
    let var_3 = ~select(_wgslsmith_div_vec2_i32(~abs(vec2<i32>(arg_3, 1i)), _wgslsmith_add_vec2_i32(u_input.d.zy ^ u_input.c.zz, vec2<i32>(arg_3, 0i))), ~min(-u_input.b.zy, ~vec2<i32>(-11950i, u_input.b.x)), true);
    return firstLeadingBit(0u);
}

fn func_2() -> f32 {
    let var_0 = -(~(~(_wgslsmith_dot_vec4_i32(u_input.b, u_input.b) >> (func_3(vec2<f32>(-181f, -754f), vec4<f32>(1000f, -405f, -327f, 341f), Struct_1(vec2<bool>(true, true), false, vec2<u32>(4294967295u, 0u), true, 929f), u_input.b.x) % 32u))));
    global1 = _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1728f + -878f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(886f - -451f)), 1438f))), -391f);
    let var_1 = _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(827f, -224f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1987f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1117f - 429f)))), vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-337f - 291f), _wgslsmith_f_op_f32(-785f * _wgslsmith_f_op_f32(min(980f, 497f))), u_input.c.x < select(1i, 0i, true))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-2160f, -1519f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -487f) + _wgslsmith_f_op_f32(-956f - 933f))))));
    let var_2 = _wgslsmith_mod_vec3_u32(select(vec3<u32>(max(1u, u_input.a) | (u_input.a & 0u), u_input.a, u_input.a), abs(firstTrailingBit(vec3<u32>(80241u, u_input.a, 1u) >> (vec3<u32>(u_input.a, u_input.a, 75261u) % vec3<u32>(32u)))), false), vec3<u32>(~u_input.a, u_input.a, ~max(~u_input.a, ~u_input.a)));
    var var_3 = Struct_2(_wgslsmith_f_op_f32(548f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(select(-541f, 1000f, true))) + 404f)), Struct_1(select(!select(vec2<bool>(true, true), vec2<bool>(false, false), true), vec2<bool>(any(vec3<bool>(true, true, false)), select(false, true, true)), vec2<bool>(true, true)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.x, var_1.x)) <= _wgslsmith_f_op_f32(select(var_1.x, 661f, select(false, true, false))), select(vec2<u32>(6625u, 0u), vec2<u32>(var_2.x, 7967u) << (vec2<u32>(51511u, 60192u) % vec2<u32>(32u)), select(vec2<bool>(true, true), vec2<bool>(false, false), true)) << (~vec2<u32>(0u, u_input.a) % vec2<u32>(32u)), any(!select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, false), false)), var_1.x), Struct_1(vec2<bool>(true, true), true, ~var_2.xz, true, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_1.x + -1405f), _wgslsmith_f_op_f32(f32(-1f) * -1975f), all(vec4<bool>(true, true, true, true))))))));
    return var_1.x;
}

fn func_1(arg_0: f32) -> Struct_2 {
    global1 = -727f;
    global1 = arg_0;
    var var_0 = Struct_1(select(!vec2<bool>(any(vec2<bool>(true, true)), all(vec3<bool>(true, false, false))), vec2<bool>(all(select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), true)), true), true), !(!any(vec4<bool>(true, false, false, true))), countOneBits(vec2<u32>(u_input.a, _wgslsmith_mod_u32(u_input.a, reverseBits(u_input.a)))), 0u <= u_input.a, _wgslsmith_f_op_f32(func_2()));
    let var_1 = -1i;
    var_0 = Struct_1(var_0.a, true, var_0.c, !any(select(vec4<bool>(true, var_0.a.x, var_0.a.x, var_0.a.x), vec4<bool>(false, false, var_0.b, var_0.a.x), vec4<bool>(false, var_0.d, var_0.a.x, var_0.b))) && all(!(!vec3<bool>(false, var_0.d, false))), -1426f);
    return Struct_2(-897f, Struct_1(select(var_0.a, var_0.a, select(var_0.a, vec2<bool>(var_0.a.x, true), var_0.a)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(474f, 411f)) >= _wgslsmith_f_op_f32(exp2(arg_0)), var_0.c, all(vec4<bool>(true, false, true, true)), 1237f), Struct_1(vec2<bool>(true, true), !any(!vec3<bool>(var_0.a.x, var_0.d, var_0.b)), var_0.c & _wgslsmith_div_vec2_u32(vec2<u32>(57682u, 2156u) >> (var_0.c % vec2<u32>(32u)), vec2<u32>(var_0.c.x, var_0.c.x)), 1053f >= _wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(max(var_0.e, arg_0))), 516f));
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_2) -> f32 {
    return _wgslsmith_f_op_f32(func_2());
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(426f, -555f)), -1417f, u_input.a >= 1u)), 434f, 654f, _wgslsmith_f_op_f32(116f + _wgslsmith_f_op_f32(-681f * 464f))), func_1(1498f))));
    global0 = array<Struct_2, 12>();
    var var_0 = select(select(select(vec4<bool>(true, true, true, all(vec3<bool>(true, false, true))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), u_input.a <= u_input.a), select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, false)), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false))), vec4<bool>(false, (u_input.c.x == -11659i) || true, min(1i, u_input.c.x) < ~11906i, (u_input.d.x >= -12551i) | true), (56021u >= (u_input.a & u_input.a)) && false), select(select(vec4<bool>(true, true, all(vec3<bool>(true, true, false)), true), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, true)), select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, false), false), vec4<bool>(true, true, true, true)), true), select(select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), true), vec4<bool>(select(true, false, false), false, true, true), true), vec4<bool>(u_input.a != u_input.a, !(u_input.a < 48652u), all(vec4<bool>(false, true, false, true)) | true, true)), true);
    let var_1 = func_1(_wgslsmith_f_op_f32(1492f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1559f + 819f) - _wgslsmith_f_op_f32(step(1513f, 968f)))))).b;
    let var_2 = global0[_wgslsmith_index_u32(_wgslsmith_div_u32(~14161u, _wgslsmith_dot_vec2_u32(var_1.c, ~(~var_1.c)) << (_wgslsmith_clamp_u32(abs(var_1.c.x), ~_wgslsmith_mult_u32(var_1.c.x, u_input.a), 17785u) % 32u)), 12u)];
    let x = u_input.a;
    s_output = StorageBuffer(((~vec4<u32>(0u, var_1.c.x, var_1.c.x, 83572u) ^ _wgslsmith_div_vec4_u32(vec4<u32>(0u, 33295u, 30276u, 34774u), vec4<u32>(4294967295u, 0u, var_2.b.c.x, 4294967295u))) << (vec4<u32>(~10642u, max(var_2.b.c.x, var_1.c.x), _wgslsmith_mod_u32(var_1.c.x, var_2.c.c.x), 30282u) % vec4<u32>(32u))) ^ countOneBits(vec4<u32>(78202u, 41317u, 0u, 1u) | vec4<u32>(41710u, 4294967295u, 9769u, var_2.b.c.x)), max(vec2<i32>(_wgslsmith_mult_i32(u_input.c.x, u_input.c.x), -4675i), u_input.c.yx) & vec2<i32>(5666i, max(countOneBits(2147483647i), u_input.b.x << (1u % 32u))), var_2.a, vec3<i32>(u_input.c.x, countOneBits(~u_input.d.x), _wgslsmith_mult_i32(u_input.d.x, 1i) >> ((countOneBits(var_1.c.x) | u_input.a) % 32u)), ~_wgslsmith_sub_u32(u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 71092u, var_2.b.c.x, 4294967295u), abs(vec4<u32>(67223u, var_2.b.c.x, u_input.a, 10577u)))));
}

