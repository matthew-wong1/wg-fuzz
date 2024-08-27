struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: f32,
    b: u32,
    c: Struct_1,
    d: Struct_2,
    e: bool,
}

struct Struct_4 {
    a: Struct_2,
    b: f32,
    c: i32,
    d: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: vec3<u32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: i32 = 2147483647i;

var<private> global2: array<vec2<f32>, 5>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> vec3<f32> {
    let var_0 = !vec3<bool>(all(vec2<bool>(true, true)) | false, !(!(global0.x <= 517f)), (u_input.b.x | ~u_input.b.x) < firstLeadingBit(firstTrailingBit(u_input.a.x)));
    let var_1 = Struct_2(~(~u_input.a.x));
    global2 = array<vec2<f32>, 5>();
    var var_2 = vec3<u32>(var_1.a, var_1.a, _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(select(u_input.c.xz, u_input.c.xz, vec2<bool>(var_0.x, true)) & vec2<u32>(55553u, var_1.a), u_input.c.yx | vec2<u32>(u_input.b.x, var_1.a)), u_input.c.x));
    global0 = vec4<f32>(global0.x, -1205f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1217f + 355f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1157f, global0.x)))), global0.x);
    return vec3<f32>(-1238f, 713f, global0.x);
}

fn func_4(arg_0: Struct_3, arg_1: Struct_4, arg_2: vec3<f32>) -> i32 {
    let var_0 = -firstTrailingBit(vec4<i32>(abs(~3462i), arg_0.c.a.x, arg_1.c, _wgslsmith_dot_vec2_i32(arg_0.c.a | vec2<i32>(17124i, -36202i), max(vec2<i32>(u_input.d, u_input.d), vec2<i32>(-2147483647i, 2147483647i)))));
    var var_1 = arg_1.a;
    return ~(~1i);
}

fn func_2(arg_0: Struct_1, arg_1: u32, arg_2: vec3<bool>) -> Struct_1 {
    var var_0 = arg_0;
    global1 = _wgslsmith_mod_i32(func_4(Struct_3(-557f, 1u, Struct_1(arg_0.a), Struct_2(18718u), any(!vec4<bool>(false, false, false, arg_2.x))), Struct_4(Struct_2(21241u), -1027f, -(36988i ^ var_0.a.x), -438f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3()) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1477f, -863f, global0.x)))), arg_0.a.x);
    var_0 = arg_0;
    var var_1 = true;
    var var_2 = ~(-select(_wgslsmith_mult_vec3_i32(vec3<i32>(arg_0.a.x, -1i, -13564i), vec3<i32>(var_0.a.x, arg_0.a.x, u_input.d)) | ~vec3<i32>(u_input.d, -2147483647i, 0i), vec3<i32>(u_input.d, ~var_0.a.x, min(-10823i, var_0.a.x)), arg_2.x));
    return arg_0;
}

fn func_5(arg_0: Struct_1, arg_1: u32, arg_2: Struct_3) -> Struct_1 {
    let var_0 = arg_2;
    global2 = array<vec2<f32>, 5>();
    return func_2(func_2(arg_2.c, _wgslsmith_dot_vec3_u32(u_input.c, _wgslsmith_div_vec3_u32(abs(vec3<u32>(u_input.a.x, 1u, 16974u)), vec3<u32>(u_input.e, arg_2.b, 1214u) & vec3<u32>(0u, arg_1, var_0.d.a))), vec3<bool>(arg_2.e, arg_2.e, var_0.e)), var_0.b, select(vec3<bool>(arg_2.e, any(select(vec2<bool>(var_0.e, true), vec2<bool>(true, arg_2.e), true)), var_0.e), vec3<bool>(arg_2.e, false, false), select(vec3<bool>(any(vec2<bool>(true, false)), true, false), vec3<bool>(false, select(false, arg_2.e, var_0.e), true), !all(vec3<bool>(arg_2.e, arg_2.e, false)))));
}

fn func_1(arg_0: Struct_2) -> Struct_1 {
    let var_0 = Struct_3(global0.x, 4294967295u, func_5(func_2(Struct_1(-vec2<i32>(u_input.d, u_input.d)), 46039u, vec3<bool>(true, true, true)), u_input.b.x, Struct_3(_wgslsmith_f_op_vec3_f32(func_3()).x, arg_0.a, Struct_1(select(vec2<i32>(u_input.d, -1i), vec2<i32>(-2147483647i, u_input.d), vec2<bool>(true, false))), Struct_2(max(arg_0.a, arg_0.a)), !all(vec4<bool>(false, false, true, false)))), arg_0, all(vec2<bool>(true, true)) || ((countOneBits(9392i) > u_input.d) & select(any(vec3<bool>(true, false, false)), false, any(vec3<bool>(false, true, false)))));
    let var_1 = func_2(func_2(Struct_1(vec2<i32>(-10158i, ~30138i)), ~_wgslsmith_dot_vec2_u32(u_input.b.yz, u_input.b.xz), !vec3<bool>(true, all(vec4<bool>(false, false, var_0.e, var_0.e)), var_0.e)), _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(abs(vec3<u32>(3843u, 33124u, arg_0.a)), u_input.c), ~u_input.b), !vec3<bool>(any(vec2<bool>(true, true)), abs(var_0.c.a.x) > reverseBits(u_input.d), any(vec3<bool>(false, var_0.e, false))));
    let var_2 = func_5(func_5(var_0.c, 70709u, Struct_3(-1053f, var_0.d.a, func_2(func_5(var_0.c, arg_0.a, Struct_3(1639f, var_0.d.a, var_0.c, arg_0, true)), var_0.b & 24588u, vec3<bool>(false, var_0.e, var_0.e)), Struct_2(min(46850u, 1u)), true)), u_input.a.x, Struct_3(_wgslsmith_f_op_f32(max(-1000f, var_0.a)), 4294967295u, Struct_1(var_1.a), var_0.d, all(select(vec3<bool>(var_0.e, true, var_0.e), !vec3<bool>(var_0.e, var_0.e, true), var_0.e || false))));
    global1 = min(_wgslsmith_add_i32(1i, -1i) ^ var_2.a.x, 0i);
    var var_3 = Struct_4(var_0.d, _wgslsmith_f_op_f32(select(-941f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-2253f - -977f), _wgslsmith_f_op_f32(-var_0.a)) + _wgslsmith_f_op_f32(-var_0.a)), false)), var_2.a.x, var_0.a);
    return var_1;
}

fn func_6(arg_0: vec3<u32>, arg_1: i32, arg_2: vec2<bool>, arg_3: Struct_1) -> f32 {
    global0 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, global0.x, -1000f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(146f, -486f, global0.x, global0.x)))) + _wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(vec4<f32>(-1558f, -476f, -1606f, global0.x), vec4<f32>(global0.x, global0.x, global0.x, global0.x)), vec4<f32>(global0.x, 2156f, -228f, -1000f)))) * _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, -1182f, -317f, global0.x)) * vec4<f32>(827f, -310f, -1319f, global0.x)))))));
    global2 = array<vec2<f32>, 5>();
    global2 = array<vec2<f32>, 5>();
    global2 = array<vec2<f32>, 5>();
    var var_0 = Struct_3(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1004f))), ~select(arg_0.x, 997u, !(arg_2.x || arg_2.x)), func_5(arg_3, ~arg_0.x | 18591u, Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(332f, 129f))), ~(~61812u), func_5(func_1(Struct_2(0u)), _wgslsmith_div_u32(u_input.c.x, 675u), Struct_3(global0.x, 4294967295u, Struct_1(vec2<i32>(2147483647i, 1i)), Struct_2(arg_0.x), true)), Struct_2(~u_input.c.x), true)), Struct_2(firstLeadingBit(~_wgslsmith_dot_vec3_u32(u_input.c, u_input.c))), true);
    return _wgslsmith_f_op_f32(global0.x - -352f);
}

fn func_7(arg_0: f32, arg_1: Struct_1, arg_2: Struct_4) -> Struct_2 {
    var var_0 = Struct_4(Struct_2(26448u), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_0)))), 623f), u_input.d & -2147483647i, global0.x);
    global0 = vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_0.d * -616f)))), arg_0)), -203f, 562f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -741f) + _wgslsmith_f_op_f32(arg_2.b * _wgslsmith_f_op_f32(max(var_0.b, -104f))))));
    var var_1 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_2.d))), u_input.c.x, Struct_1(-(~arg_1.a >> (vec2<u32>(1u, var_0.a.a) % vec2<u32>(32u)))), var_0.a, (33375i << (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.e, var_0.a.a, var_0.a.a, arg_2.a.a), abs(vec4<u32>(4294967295u, 22787u, var_0.a.a, 11513u))) % 32u)) > 9247i);
    return arg_2.a;
}

fn func_8(arg_0: Struct_4, arg_1: vec3<i32>) -> Struct_2 {
    global1 = select(_wgslsmith_clamp_i32(arg_1.x, _wgslsmith_div_i32(arg_1.x, 2147483647i) >> ((u_input.a.x >> (37869u % 32u)) % 32u), max(_wgslsmith_dot_vec3_i32(arg_1, vec3<i32>(-21607i, arg_0.c, u_input.d)), arg_0.c)) & ~u_input.d, u_input.d ^ firstLeadingBit(u_input.d), true);
    global2 = array<vec2<f32>, 5>();
    global1 = i32(-1i) * -1i;
    var var_0 = vec3<bool>(false, all(vec3<bool>(false, true, true)), select(false, false, (u_input.e <= ~u_input.e) && all(vec3<bool>(true, true, true))));
    var var_1 = Struct_2(_wgslsmith_dot_vec3_u32(abs(u_input.b >> (u_input.c % vec3<u32>(32u))), u_input.c));
    return Struct_2(arg_0.a.a);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = -6156i;
    global2 = array<vec2<f32>, 5>();
    var var_0 = any(!vec2<bool>(!all(vec3<bool>(false, true, true)), true));
    global2 = array<vec2<f32>, 5>();
    let var_1 = 42313u;
    var var_2 = func_8(Struct_4(func_7(_wgslsmith_f_op_f32(func_6(vec3<u32>(u_input.e, var_1, u_input.c.x) >> (u_input.c % vec3<u32>(32u)), u_input.d, select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true)), func_1(Struct_2(u_input.e)))), func_5(Struct_1(vec2<i32>(u_input.d, 1i)), ~2480u, Struct_3(global0.x, u_input.c.x, Struct_1(vec2<i32>(u_input.d, -2147483647i)), Struct_2(1u), false)), Struct_4(Struct_2(34358u), global0.x, ~u_input.d, _wgslsmith_f_op_vec3_f32(func_3()).x)), global0.x, -2147483647i, 561f), firstLeadingBit(_wgslsmith_div_vec3_i32(~(-vec3<i32>(2802i, 1i, 22514i)), select(firstTrailingBit(vec3<i32>(u_input.d, u_input.d, u_input.d)), -vec3<i32>(u_input.d, -19161i, 22068i), vec3<bool>(false, true, false)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(_wgslsmith_sub_u32(u_input.b.x, max(var_1, var_2.a >> (var_2.a % 32u))), var_2.a, var_1));
}

