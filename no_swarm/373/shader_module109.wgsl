struct Struct_1 {
    a: u32,
    b: u32,
    c: vec3<bool>,
    d: vec3<f32>,
    e: vec3<f32>,
}

struct Struct_2 {
    a: f32,
    b: vec3<bool>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: u32,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 12> = array<vec2<u32>, 12>(vec2<u32>(4294967295u, 0u), vec2<u32>(64048u, 13822u), vec2<u32>(16196u, 50280u), vec2<u32>(58470u, 49974u), vec2<u32>(4294967295u, 107826u), vec2<u32>(36073u, 4421u), vec2<u32>(85399u, 21632u), vec2<u32>(59351u, 1u), vec2<u32>(0u, 1u), vec2<u32>(4294967295u, 1u), vec2<u32>(11860u, 11468u), vec2<u32>(4294967295u, 1u));

var<private> global1: Struct_1;

var<private> global2: array<vec4<bool>, 5>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: bool, arg_1: u32, arg_2: Struct_2) -> bool {
    let var_0 = ~countOneBits(1u);
    global0 = array<vec2<u32>, 12>();
    global2 = array<vec4<bool>, 5>();
    var var_1 = 50728u;
    global2 = array<vec4<bool>, 5>();
    return _wgslsmith_f_op_f32(min(arg_2.a, -676f)) != _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(-1932f)), _wgslsmith_f_op_f32(-957f - arg_2.c.d.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1668f * 1237f) - _wgslsmith_f_op_f32(sign(global1.e.x)))))));
}

fn func_2(arg_0: Struct_2) -> bool {
    global2 = array<vec4<bool>, 5>();
    global2 = array<vec4<bool>, 5>();
    global0 = array<vec2<u32>, 12>();
    var var_0 = _wgslsmith_dot_vec2_u32(vec2<u32>(~_wgslsmith_div_u32(33387u, _wgslsmith_add_u32(0u, global1.b)), ~firstLeadingBit(global1.b)), vec2<u32>(~1u, 4294967295u));
    let var_1 = global1.c.x;
    return func_3(false, _wgslsmith_clamp_u32(32635u << (~arg_0.c.a % 32u), _wgslsmith_mod_u32(59740u, 10671u), _wgslsmith_mod_u32(18997u, 86710u | arg_0.c.b)) >> (u_input.a.x % 32u), Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global1.d.x))) - _wgslsmith_f_op_f32(select(1540f, global1.e.x, true))), select(vec3<bool>(global1.c.x, true, any(vec4<bool>(true, true, true, true))), !arg_0.b, global1.c.x), arg_0.c));
}

fn func_1(arg_0: Struct_1, arg_1: u32, arg_2: Struct_2, arg_3: vec2<f32>) -> vec4<u32> {
    global1 = Struct_1(firstTrailingBit(1u), ~min(0u, ~(2204u << (global1.b % 32u))), select(!select(select(arg_2.c.c, arg_2.b, global1.c), vec3<bool>(true, arg_2.c.c.x, false), select(arg_0.c, arg_2.c.c, arg_2.c.c.x)), vec3<bool>(func_2(Struct_2(1218f, vec3<bool>(global1.c.x, global1.c.x, global1.c.x), arg_0)), arg_2.c.e.x != _wgslsmith_f_op_f32(ceil(1624f)), 53650u < (u_input.a.x | 19622u)), !all(global2[_wgslsmith_index_u32(arg_2.c.b << (0u % 32u), 5u)])), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, _wgslsmith_f_op_f32(-arg_3.x), 396f)), vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.x - arg_0.e.x)))), -1059f, _wgslsmith_f_op_f32(select(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.d.x)), all(global2[_wgslsmith_index_u32(4294967295u, 5u)])))));
    global0 = array<vec2<u32>, 12>();
    var var_0 = 16449i;
    global1 = arg_0;
    global0 = array<vec2<u32>, 12>();
    return ~vec4<u32>(u_input.a.x, 112775u, max(abs(arg_0.a >> (1u % 32u)), _wgslsmith_mult_u32(16152u, max(arg_1, arg_0.b))), 0u);
}

fn func_4(arg_0: vec4<u32>, arg_1: vec2<f32>, arg_2: i32) -> i32 {
    let var_0 = Struct_1(~_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(1u, u_input.a.x >> (104072u % 32u), _wgslsmith_clamp_u32(global1.a, 4294967295u, global1.b), select(4294967295u, arg_0.x, true))), ~u_input.a.x, global1.c, global1.e, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(floor(global1.d)))), global1.e, all(!(!vec2<bool>(false, global1.c.x))))));
    global0 = array<vec2<u32>, 12>();
    var var_1 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-624f, _wgslsmith_f_op_f32(-531f - -919f), -267f, _wgslsmith_f_op_f32(arg_1.x - arg_1.x)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_1.x, 1291f, arg_1.x, -891f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_1.x, global1.e.x, var_0.e.x, 1722f), vec4<f32>(1412f, 107f, 1456f, var_0.e.x))))))));
    let var_2 = select(false, true & (!(global1.a > 0u) || !global1.c.x), var_0.c.x);
    global2 = array<vec4<bool>, 5>();
    return ~arg_2;
}

fn func_5(arg_0: i32, arg_1: f32, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    var var_0 = vec2<u32>(arg_3.a, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_3.b, 38962u), abs(u_input.a.yx)));
    let var_1 = Struct_1(0u, arg_2.b, !vec3<bool>(_wgslsmith_mod_u32(arg_3.a, 105553u) < arg_3.a, !all(vec4<bool>(false, false, global1.c.x, arg_2.c.x)), true), global1.d, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(499f, -518f, -508f) - vec3<f32>(global1.d.x, 466f, 285f)) * global1.e)));
    let var_2 = ~vec2<u32>(~(~arg_2.a), 87146u);
    global2 = array<vec4<bool>, 5>();
    global1 = arg_2;
    return arg_2;
}

fn func_6(arg_0: bool, arg_1: vec2<f32>, arg_2: vec2<bool>, arg_3: Struct_2) -> StorageBuffer {
    global0 = array<vec2<u32>, 12>();
    let var_0 = global1.c;
    global2 = array<vec4<bool>, 5>();
    let var_1 = arg_3;
    let var_2 = Struct_2(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(global1.e.x, -743f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(257f * global1.d.x) - _wgslsmith_div_f32(arg_1.x, arg_3.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-392f))), true)), global1.c, arg_3.c);
    return StorageBuffer(_wgslsmith_f_op_f32(-2175f - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.c.e.x) + _wgslsmith_f_op_f32(f32(-1f) * -939f))))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(var_2.c.d.xy)) - _wgslsmith_f_op_vec2_f32(arg_1 + vec2<f32>(global1.e.x, -477f))), var_1.c.e.zy, !var_2.c.c.zz)))), 4294967295u, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(1722f, arg_3.a) * var_1.a)), _wgslsmith_div_f32(var_1.c.e.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global1.e.x, 987f, arg_0)))))), _wgslsmith_div_i32(-firstTrailingBit(-6969i), ~_wgslsmith_add_i32(-12409i, 18436i)) & (func_4(vec4<u32>(4294967295u, 43155u, 62137u, 4294967295u), vec2<f32>(arg_3.a, var_2.c.d.x), 1i) | _wgslsmith_add_i32(_wgslsmith_add_i32(-1i, -2147483647i), firstLeadingBit(-29081i))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    var var_1 = reverseBits(countOneBits(_wgslsmith_mult_vec3_i32(-abs(vec3<i32>(0i, -7218i, 0i)), abs(select(vec3<i32>(3957i, -20351i, -44402i), vec3<i32>(0i, 1i, 0i), vec3<bool>(false, global1.c.x, true))))));
    global2 = array<vec4<bool>, 5>();
    var var_2 = global1.e.x;
    var_2 = _wgslsmith_f_op_f32(global1.e.x + _wgslsmith_f_op_f32(global1.d.x + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1079f)), _wgslsmith_f_op_f32(-296f + -422f)))));
    var var_3 = var_1.x;
    let var_4 = _wgslsmith_f_op_f32(global1.d.x * _wgslsmith_f_op_f32(f32(-1f) * -193f));
    let x = u_input.a;
    s_output = func_6(true, _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(sign(-1157f)), -2870f))), global1.c.yy, Struct_2(-931f, select(global1.c, !select(vec3<bool>(global1.c.x, global1.c.x, false), global1.c, true), all(global2[_wgslsmith_index_u32(26688u, 5u)])), func_5(func_4(func_1(Struct_1(global1.b, u_input.a.x, global1.c, vec3<f32>(var_4, var_4, var_4), global1.e), 4294967295u, Struct_2(global1.e.x, vec3<bool>(global1.c.x, global1.c.x, global1.c.x), Struct_1(28318u, u_input.a.x, global1.c, vec3<f32>(835f, 239f, var_4), global1.e)), global1.e.yy), _wgslsmith_f_op_vec2_f32(ceil(global1.d.zx)), 1i), -273f, Struct_1(6453u, 68858u, select(global1.c, global1.c, true), vec3<f32>(-1339f, -1473f, global1.e.x), vec3<f32>(var_4, global1.d.x, var_4)), Struct_1(_wgslsmith_mult_u32(u_input.a.x, global1.b), ~u_input.a.x, !global1.c, vec3<f32>(var_4, global1.d.x, var_4), vec3<f32>(-1957f, var_4, var_4)))));
}

