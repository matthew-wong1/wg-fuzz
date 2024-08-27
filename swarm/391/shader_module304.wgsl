struct Struct_1 {
    a: f32,
    b: vec2<i32>,
    c: bool,
    d: vec2<u32>,
    e: i32,
}

struct Struct_2 {
    a: f32,
    b: vec3<bool>,
    c: vec4<u32>,
}

struct Struct_3 {
    a: bool,
    b: bool,
    c: vec2<f32>,
}

struct Struct_4 {
    a: vec4<i32>,
    b: Struct_3,
}

struct Struct_5 {
    a: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: Struct_5, arg_1: i32, arg_2: bool, arg_3: vec3<f32>) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.x + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_3.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1379f))))));
    var var_1 = -vec2<i32>(arg_1, arg_1);
    var_1 = vec2<i32>(1i, var_1.x);
    var_1 = vec2<i32>(_wgslsmith_sub_i32(i32(-1i) * -41260i, -41862i | firstLeadingBit(arg_1)), abs(~min(2147483647i ^ var_1.x, arg_1)));
    let var_2 = _wgslsmith_div_f32(1441f, 2166f);
    return 736f;
}

fn func_3(arg_0: u32) -> u32 {
    var var_0 = Struct_3(4294967295u > abs(u_input.a.x), true, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(1923f, -225f), vec2<f32>(400f, -518f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(758f, 784f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-631f, 1111f)) + _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-730f, -1027f))))))));
    let var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -622f)));
    var var_2 = vec4<u32>(36389u, 1126u, u_input.a.x, 78188u);
    let var_3 = Struct_5(var_2.x);
    let var_4 = _wgslsmith_sub_u32(max(var_2.x, abs(_wgslsmith_div_u32(0u, 1u))), 0u);
    return u_input.a.x;
}

fn func_2(arg_0: vec2<i32>, arg_1: vec2<i32>, arg_2: Struct_1) -> Struct_4 {
    var var_0 = !(arg_2.c && (func_3(~1u) <= arg_2.d.x));
    var var_1 = Struct_4(vec4<i32>(arg_2.b.x >> (_wgslsmith_dot_vec4_u32(select(vec4<u32>(4294967295u, u_input.a.x, 1u, 0u), vec4<u32>(u_input.a.x, 1u, 1u, u_input.a.x), false), ~vec4<u32>(u_input.a.x, 45318u, u_input.a.x, arg_2.d.x)) % 32u), _wgslsmith_mult_i32(~arg_1.x, arg_0.x), firstTrailingBit(arg_2.b.x ^ abs(-12369i)), -2147483647i), Struct_3(!arg_2.c, arg_2.c, _wgslsmith_f_op_vec2_f32(vec2<f32>(-1576f, arg_2.a) * _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.a, 412f) * vec2<f32>(arg_2.a, -181f)))))));
    let var_2 = !(!(!(!vec3<bool>(true, var_1.b.a, var_1.b.b))));
    var var_3 = arg_2.d.x;
    let var_4 = Struct_3(!(countOneBits(arg_0.x) != -2147483647i), ~_wgslsmith_sub_u32(~1u, arg_2.d.x) != ~arg_2.d.x, var_1.b.c);
    return Struct_4(~vec4<i32>(-51232i, -32312i, i32(-1i) * -40663i, 1i), var_4);
}

fn func_4(arg_0: Struct_4, arg_1: vec3<bool>, arg_2: vec4<i32>) -> Struct_2 {
    let var_0 = 1619f;
    var var_1 = vec4<u32>(_wgslsmith_sub_u32(~_wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(u_input.a.x, 4073u)), ~vec2<u32>(u_input.a.x, 30477u)), u_input.a.x), ~abs(u_input.a.x), _wgslsmith_dot_vec2_u32(~u_input.a.zz, ~(~vec2<u32>(u_input.a.x, u_input.a.x))), 0u);
    let var_2 = vec2<i32>(1i ^ _wgslsmith_sub_i32(~arg_0.a.x | arg_2.x, arg_2.x), -12809i);
    let var_3 = func_2(vec2<i32>(arg_2.x, ~_wgslsmith_mod_i32(~(-63788i), -1i & arg_0.a.x)), ~(~vec2<i32>(var_2.x, arg_2.x)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-589f + _wgslsmith_f_op_f32(-arg_0.b.c.x))), vec2<i32>(arg_0.a.x, i32(-1i) * -arg_2.x), (var_1.x << (_wgslsmith_mod_u32(var_1.x, var_1.x) % 32u)) >= ~abs(33595u), ~u_input.a.xx, _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_add_i32(var_2.x, var_2.x), _wgslsmith_sub_i32(arg_0.a.x, 488i)), _wgslsmith_mult_vec2_i32(abs(vec2<i32>(var_2.x, arg_2.x)), firstTrailingBit(arg_2.ww)))));
    var_1 = select(_wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(var_1.x, ~var_1.x), 41962u, ~1u, _wgslsmith_mod_u32(~var_1.x, ~42825u)), _wgslsmith_sub_vec4_u32(vec4<u32>(var_1.x, 0u, u_input.a.x, u_input.a.x) ^ firstLeadingBit(vec4<u32>(4294967295u, 4294967295u, u_input.a.x, var_1.x)), ~(~vec4<u32>(5835u, u_input.a.x, var_1.x, 1u)))), vec4<u32>(~var_1.x, ~(var_1.x ^ ~var_1.x), 4294967295u, min(firstLeadingBit(~4294967295u), 36493u)), !select(vec4<bool>(true, any(vec3<bool>(true, var_3.b.b, arg_0.b.b)), false, !arg_0.b.b), !select(vec4<bool>(arg_0.b.a, false, true, false), vec4<bool>(arg_0.b.a, true, true, arg_1.x), vec4<bool>(false, arg_1.x, arg_1.x, true)), select(select(vec4<bool>(false, arg_1.x, arg_0.b.b, arg_0.b.b), vec4<bool>(arg_1.x, true, arg_0.b.a, var_3.b.a), vec4<bool>(false, var_3.b.a, arg_0.b.a, true)), select(vec4<bool>(arg_1.x, arg_0.b.b, arg_0.b.a, true), vec4<bool>(var_3.b.a, false, arg_0.b.b, arg_0.b.b), false), !vec4<bool>(false, true, arg_0.b.b, arg_0.b.a))));
    return Struct_2(994f, select(select(arg_1, arg_1, arg_1.x), !select(select(vec3<bool>(var_3.b.b, arg_0.b.a, arg_1.x), arg_1, vec3<bool>(false, false, arg_0.b.a)), !arg_1, false), arg_0.b.a), min(~max(vec4<u32>(var_1.x, var_1.x, 10882u, 70806u), vec4<u32>(var_1.x, 44510u, 4294967295u, 7006u)) ^ ~_wgslsmith_add_vec4_u32(vec4<u32>(0u, u_input.a.x, var_1.x, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, 0u, 18456u)), vec4<u32>(~u_input.a.x, 4294967295u, _wgslsmith_mult_u32(var_1.x, abs(u_input.a.x)), _wgslsmith_add_u32(22426u, var_1.x))));
}

fn func_5(arg_0: Struct_2, arg_1: u32, arg_2: Struct_3) -> bool {
    var var_0 = 0i;
    var var_1 = Struct_5(u_input.a.x);
    var_1 = Struct_5(44785u);
    var_1 = Struct_5(select(arg_1, var_1.a, false && (any(vec2<bool>(arg_2.a, false)) || any(vec2<bool>(false, true)))));
    var_1 = Struct_5(firstLeadingBit(var_1.a | firstTrailingBit(89264u)));
    return (_wgslsmith_add_u32(_wgslsmith_sub_u32(~38445u, u_input.a.x), ~(~4294967295u)) != arg_1) && arg_2.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !vec2<bool>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_1(Struct_5(u_input.a.x), 3245i, false, vec3<f32>(-1964f, 414f, 1000f))))) != _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(-201f)))), func_5(func_4(func_2(vec2<i32>(2147483647i, 0i), vec2<i32>(1i, 1i), Struct_1(235f, vec2<i32>(-3261i, 49815i), false, u_input.a.yx, -30740i)), vec3<bool>(true, false, true), reverseBits(vec4<i32>(-32590i, 4379i, 0i, 753i))), ~1u, func_2(max(vec2<i32>(-48938i, -2147483647i), vec2<i32>(-1i, 0i)), ~vec2<i32>(-3889i, -11306i), Struct_1(-644f, vec2<i32>(29206i, -27773i), false, u_input.a.yz, 33516i)).b));
    let var_1 = vec2<i32>(~(-11083i), 1i << (1u % 32u)) >> ((~func_4(Struct_4(vec4<i32>(-31264i, 1i, 0i, 2147483647i), Struct_3(var_0.x, false, vec2<f32>(-1469f, -1786f))), func_4(Struct_4(vec4<i32>(47381i, 1i, -7503i, 0i), Struct_3(var_0.x, true, vec2<f32>(1002f, -610f))), vec3<bool>(false, true, var_0.x), vec4<i32>(-29317i, -31542i, -6355i, 0i)).b, -vec4<i32>(-9556i, 0i, 2147483647i, 1i)).c.zz ^ ~(_wgslsmith_add_vec2_u32(vec2<u32>(11077u, 0u), u_input.a.zy) >> (u_input.a.zy % vec2<u32>(32u)))) % vec2<u32>(32u));
    let var_2 = ~u_input.a.x;
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1126f, -1198f), vec2<f32>(312f, -423f))), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-180f, 1388f)))))) - _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(303f, -1000f)) * _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-670f, 1793f), vec2<f32>(1000f, 187f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1500f, 278f) - vec2<f32>(-291f, 2647f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-232f, -1157f)))))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-702f, 1000f), _wgslsmith_f_op_f32(sign(2098f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-198f - -717f))))));
    var var_4 = func_4(func_2(-(~vec2<i32>(1i, var_1.x)), -var_1, Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -867f), var_1, var_0.x, u_input.a.xy, -(~var_1.x))), vec3<bool>(true, true, !var_0.x), vec4<i32>(1i, _wgslsmith_mult_i32(_wgslsmith_mult_i32(1i, var_1.x | 20055i), (var_1.x & var_1.x) << ((1u & u_input.a.x) % 32u)), var_1.x, ~(-1i)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec4_u32(select(vec4<u32>(_wgslsmith_add_u32(u_input.a.x, var_4.c.x), 3922u, _wgslsmith_mult_u32(u_input.a.x, 8390u), _wgslsmith_div_u32(4294967295u, u_input.a.x)), var_4.c, var_3.x < _wgslsmith_f_op_f32(step(641f, -783f))), (_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, 1u, u_input.a.x, var_4.c.x), vec4<u32>(0u, 0u, var_4.c.x, 4294967295u)) >> ((var_4.c & var_4.c) % vec4<u32>(32u))) | var_4.c, (firstTrailingBit(var_4.c) << (~var_4.c % vec4<u32>(32u))) & ~(~vec4<u32>(4294967295u, u_input.a.x, 3392u, var_2))), reverseBits(~(-1i)), vec4<f32>(_wgslsmith_div_f32(var_4.a, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1026f), func_4(Struct_4(vec4<i32>(var_1.x, -1i, 0i, -42127i), Struct_3(true, var_0.x, var_3)), vec3<bool>(false, true, var_4.b.x), vec4<i32>(-62483i, 31586i, 6542i, -5592i)).a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-336f, 1f)) - -217f), var_4.a, 1619f));
}

