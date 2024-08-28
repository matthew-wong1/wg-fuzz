struct Struct_1 {
    a: u32,
    b: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: f32,
    d: vec3<f32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 17> = array<vec4<u32>, 17>(vec4<u32>(4294967295u, 4294967295u, 1u, 1u), vec4<u32>(68953u, 4294967295u, 68153u, 4294967295u), vec4<u32>(6062u, 4294967295u, 10818u, 0u), vec4<u32>(41261u, 19986u, 0u, 16566u), vec4<u32>(47535u, 13518u, 41891u, 53700u), vec4<u32>(4294967295u, 10356u, 4294967295u, 28335u), vec4<u32>(37636u, 4294967295u, 53115u, 12545u), vec4<u32>(53947u, 1u, 33538u, 1u), vec4<u32>(28880u, 4294967295u, 43805u, 4294967295u), vec4<u32>(73587u, 4294967295u, 73311u, 4294967295u), vec4<u32>(42575u, 1u, 1u, 4294967295u), vec4<u32>(66800u, 37852u, 1u, 4294967295u), vec4<u32>(1u, 4294967295u, 0u, 1u), vec4<u32>(0u, 1u, 1u, 43959u), vec4<u32>(18573u, 66827u, 4294967295u, 26986u), vec4<u32>(4294967295u, 4064u, 4294967295u, 0u), vec4<u32>(21378u, 1u, 0u, 18505u));

var<private> global1: f32 = 1048f;

var<private> global2: vec3<f32>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> i32 {
    global0 = array<vec4<u32>, 17>();
    var var_0 = vec3<i32>(_wgslsmith_div_i32(abs(u_input.a.x), u_input.e), 7474i, u_input.d.x);
    global0 = array<vec4<u32>, 17>();
    let var_1 = _wgslsmith_add_u32(17004u, select(~4294967295u, 4294967295u, true)) ^ _wgslsmith_div_u32(0u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 18470u), vec2<u32>(70421u, 4294967295u)) & 0u);
    global2 = vec3<f32>(-787f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(global2.x, 680f), _wgslsmith_f_op_f32(global2.x * 565f), all(vec3<bool>(true, true, true)))))))), _wgslsmith_f_op_f32(abs(global2.x)));
    return 1i;
}

fn func_2() -> u32 {
    global0 = array<vec4<u32>, 17>();
    let var_0 = true;
    global0 = array<vec4<u32>, 17>();
    var var_1 = 34174u;
    let var_2 = _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(13525i, ~(~u_input.d.x), _wgslsmith_mult_i32(2147483647i, 0i), func_3()), min(countOneBits(-vec4<i32>(u_input.b, u_input.c, u_input.b, u_input.d.x)), vec4<i32>(reverseBits(-1i), u_input.d.x, 0i, u_input.c))), u_input.d);
    return _wgslsmith_mod_u32(1u | (_wgslsmith_dot_vec4_u32(global0[_wgslsmith_index_u32(select(0u, 9003u, var_0), 17u)], min(vec4<u32>(0u, 0u, 4294967295u, 9197u), global0[_wgslsmith_index_u32(22156u, 17u)])) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 1u, 1u, 100961u), global0[_wgslsmith_index_u32(109249u, 17u)] << (vec4<u32>(3295u, 32911u, 4294967295u, 84097u) % vec4<u32>(32u))) % 32u)), ~select(69014u, ~1u, select(var_0, var_0, true)) << (_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 126466u, 1161u, 13225u), max(global0[_wgslsmith_index_u32(46565u, 17u)], vec4<u32>(15525u, 4294967295u, 4294967295u, 0u))), _wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 0u, 4294967295u, 1u), global0[_wgslsmith_index_u32(4294967295u, 17u)]), reverseBits(_wgslsmith_add_u32(4486u, 0u))) % 32u));
}

fn func_4(arg_0: u32, arg_1: Struct_1) -> vec2<u32> {
    global2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-680f, arg_1.b, global2.x), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_1.b, -761f, -1701f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_1.b, -324f, -659f)))))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, global2.x, global2.x)))))));
    global0 = array<vec4<u32>, 17>();
    var var_0 = vec3<f32>(1000f, arg_1.b, arg_1.b);
    global0 = array<vec4<u32>, 17>();
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_0.x, -1121f, -1757f), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(189f, -181f, -153f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, 328f, var_0.x))))))));
    return vec2<u32>(_wgslsmith_mult_u32(0u, _wgslsmith_add_u32(39104u, _wgslsmith_dot_vec3_u32(~vec3<u32>(94604u, arg_0, arg_1.a), firstLeadingBit(vec3<u32>(1852u, 16970u, arg_0))))), countOneBits(_wgslsmith_sub_u32(~arg_1.a, 1u)) >> (reverseBits(firstTrailingBit(arg_1.a)) % 32u));
}

fn func_5(arg_0: vec2<i32>) -> Struct_1 {
    global1 = _wgslsmith_f_op_f32(-global2.x);
    let var_0 = !select(vec2<bool>(true, true), select(vec2<bool>(true, true), select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, true), false), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false))), vec2<bool>(true, true)), true);
    global2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global2.x, 1619f, global2.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(global2.x, 1176f, global2.x) - vec3<f32>(719f, -426f, global2.x)), vec3<bool>(var_0.x, var_0.x, true))) + vec3<f32>(_wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(floor(1447f)), _wgslsmith_div_f32(224f, global2.x))))));
    global2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -1895f, -692f) + vec3<f32>(1004f, 1001f, global2.x))), vec3<f32>(global2.x, global2.x, _wgslsmith_f_op_f32(sign(-1878f))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(944f, global2.x, global2.x)), vec3<f32>(global2.x, global2.x, 892f))) - _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1400f, 162f, global2.x))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(100f, -636f, global2.x)))))) + vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(941f + global2.x) - _wgslsmith_f_op_f32(-global2.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(-975f)), _wgslsmith_f_op_f32(-global2.x))), -1000f)));
    var var_1 = vec2<bool>(var_0.x, all(select(!(!vec4<bool>(false, false, var_0.x, var_0.x)), !select(vec4<bool>(var_0.x, false, var_0.x, false), vec4<bool>(true, var_0.x, var_0.x, false), vec4<bool>(false, true, var_0.x, var_0.x)), select(select(vec4<bool>(var_0.x, var_0.x, true, var_0.x), vec4<bool>(false, var_0.x, var_0.x, var_0.x), true), !vec4<bool>(true, false, false, var_0.x), any(vec3<bool>(true, var_0.x, var_0.x))))));
    return Struct_1(_wgslsmith_dot_vec4_u32(vec4<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(24682u, 69980u), vec2<u32>(82248u, 9632u)), 0u, reverseBits(1u), _wgslsmith_clamp_u32(~0u, reverseBits(1u), 1u)), _wgslsmith_clamp_vec4_u32(~(global0[_wgslsmith_index_u32(4294967295u, 17u)] << (global0[_wgslsmith_index_u32(4294967295u, 17u)] % vec4<u32>(32u))), ~global0[_wgslsmith_index_u32(0u, 17u)] ^ abs(vec4<u32>(1u, 1u, 0u, 0u)), ~global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(29483u, 4294967295u, 0u), 17u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x))) - global2.x));
}

fn func_1() -> f32 {
    var var_0 = false;
    var_0 = true;
    var var_1 = ~(~abs(abs(0u)));
    global0 = array<vec4<u32>, 17>();
    var var_2 = func_5(u_input.a.xy >> (func_4(~func_2(), Struct_1(func_2(), -1000f)) % vec2<u32>(32u)));
    return global2.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(41820u, _wgslsmith_f_op_f32(select(-1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(996f - _wgslsmith_f_op_f32(-global2.x))), true)));
    global0 = array<vec4<u32>, 17>();
    var_0 = Struct_1(_wgslsmith_clamp_u32(var_0.a, ~var_0.a, var_0.a & 9399u), _wgslsmith_f_op_f32(sign(1476f)));
    var var_1 = select(!vec3<bool>(select(true, false, false), true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, false, all(vec3<bool>(true, true, true))), vec3<bool>(~var_0.a < 1u, any(vec4<bool>(true, true, true, true)), true)), select(select(select(vec3<bool>(false, false, false), select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), false), any(vec2<bool>(true, false))), vec3<bool>(true, true, all(vec2<bool>(false, false))), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), vec3<bool>(true, true, true)));
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global2.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.b), 716f) * -603f))) - 1195f);
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x)), -760f);
    var var_3 = ~_wgslsmith_div_vec3_i32(firstTrailingBit(-(~vec3<i32>(u_input.c, -4529i, u_input.d.x))), u_input.a.xww);
    let x = u_input.a;
    s_output = StorageBuffer(global0[_wgslsmith_index_u32(var_0.a, 17u)] | ~(~(~vec4<u32>(var_0.a, 137492u, var_0.a, var_0.a))), _wgslsmith_f_op_f32(min(global2.x, var_0.b)), 1f, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.x, 120f, 334f) + vec3<f32>(-859f, var_2.x, var_0.b)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-746f, global2.x, var_2.x), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1000f, global2.x, 813f), vec3<f32>(586f, var_2.x, -776f))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1972f, 992f, -248f)) * _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(544f, 1017f, 540f))))))), vec2<u32>(var_0.a, countOneBits(reverseBits(var_0.a) >> ((var_0.a << (29328u % 32u)) % 32u))));
}

