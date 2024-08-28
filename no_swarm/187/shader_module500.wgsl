struct Struct_1 {
    a: f32,
    b: f32,
    c: vec2<u32>,
    d: f32,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec4<f32>,
    c: vec2<i32>,
}

struct Struct_4 {
    a: u32,
    b: Struct_1,
}

struct Struct_5 {
    a: f32,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 5> = array<vec3<u32>, 5>(vec3<u32>(27127u, 1u, 48614u), vec3<u32>(4294967295u, 60106u, 32957u), vec3<u32>(28246u, 26224u, 49914u), vec3<u32>(14345u, 21893u, 1u), vec3<u32>(1u, 59587u, 1u));

var<private> global1: u32 = 8710u;

var<private> global2: array<vec2<bool>, 26>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_1(arg_0: Struct_1) -> Struct_4 {
    global0 = array<vec3<u32>, 5>();
    let var_0 = Struct_5(356f, vec2<bool>(((arg_0.e | true) != arg_0.e) || !arg_0.e, !any(vec4<bool>(false, arg_0.e, false, arg_0.e))));
    global0 = array<vec3<u32>, 5>();
    var var_1 = select(!vec3<bool>(true | (true & var_0.b.x), all(vec4<bool>(true, true, true, var_0.b.x)), !(u_input.b == 20352u)), vec3<bool>(arg_0.e, all(!vec4<bool>(true, false, var_0.b.x, true)), arg_0.e), !(!select(vec3<bool>(false, true, false), !vec3<bool>(var_0.b.x, true, arg_0.e), true)));
    global1 = _wgslsmith_dot_vec2_u32(arg_0.c, vec2<u32>(~4294967295u, 113214u));
    return Struct_4(arg_0.c.x, arg_0);
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: Struct_4, arg_3: Struct_4) -> bool {
    var var_0 = Struct_2(arg_2.b);
    global1 = 78957u;
    global1 = _wgslsmith_div_u32(56204u, _wgslsmith_add_u32(70593u, arg_3.a));
    global2 = array<vec2<bool>, 26>();
    let var_1 = true;
    return arg_1.a.e;
}

fn func_3(arg_0: vec2<u32>, arg_1: u32) -> u32 {
    global1 = 3276u;
    global0 = array<vec3<u32>, 5>();
    let var_0 = func_1(func_1(func_1(Struct_1(_wgslsmith_f_op_f32(max(-1879f, -471f)), _wgslsmith_div_f32(2214f, 129f), arg_0, -607f, true)).b).b);
    global2 = array<vec2<bool>, 26>();
    global0 = array<vec3<u32>, 5>();
    return ~48648u;
}

fn func_4(arg_0: Struct_5, arg_1: u32, arg_2: bool) -> Struct_1 {
    let var_0 = u_input.a;
    var var_1 = -1i;
    let var_2 = 1i;
    var var_3 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(694f, -116f) + vec2<f32>(arg_0.a, arg_0.a)), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-226f, arg_0.a))))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1038f, arg_0.a) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a, arg_0.a)))))));
    var var_4 = true;
    return Struct_1(1588f, arg_0.a, _wgslsmith_mod_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(arg_1, u_input.c.x) >> ((u_input.c.x << (arg_1 % 32u)) % 32u), arg_1 >> (u_input.b % 32u)), _wgslsmith_sub_vec2_u32(max(u_input.c, u_input.c) << (abs(u_input.c) % vec2<u32>(32u)), reverseBits(u_input.c))), _wgslsmith_f_op_f32(arg_0.a * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(arg_0.a)), -682f)))), false);
}

fn func_5(arg_0: i32, arg_1: vec3<bool>, arg_2: Struct_1) -> Struct_1 {
    let var_0 = !all(vec3<bool>(true, arg_1.x, arg_1.x));
    let var_1 = abs(_wgslsmith_sub_vec3_i32(vec3<i32>(arg_0, -3339i, u_input.a & u_input.a) & _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a, arg_0, -24618i), -vec3<i32>(0i, 30102i, arg_0), -vec3<i32>(u_input.a, 1i, u_input.a)), vec3<i32>(~u_input.a, -10795i, 27288i)));
    global2 = array<vec2<bool>, 26>();
    var var_2 = vec4<bool>(!(all(select(arg_1.xz, vec2<bool>(false, arg_1.x), true)) || true), false, !(true & all(vec2<bool>(false, arg_1.x))) | (arg_2.c.x != ~(~u_input.b)), false);
    let var_3 = Struct_4(4294967295u, Struct_1(1818f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(arg_2.a)), arg_2.d), vec2<u32>(_wgslsmith_sub_u32(u_input.b, _wgslsmith_clamp_u32(61084u, arg_2.c.x, u_input.c.x)), 50289u), 280f, any(!select(vec4<bool>(true, true, true, true), vec4<bool>(arg_1.x, var_2.x, arg_2.e, arg_2.e), arg_1.x))));
    return Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(2826f, 1000f, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.b.d - 1446f) * var_3.b.a)))), _wgslsmith_f_op_f32(arg_2.d - var_3.b.d), _wgslsmith_clamp_vec2_u32(_wgslsmith_clamp_vec2_u32(min(vec2<u32>(0u, var_3.b.c.x), var_3.b.c), ~arg_2.c ^ var_3.b.c, ~vec2<u32>(4294967295u, arg_2.c.x)), _wgslsmith_mod_vec2_u32(~u_input.c, select(vec2<u32>(46077u, 1u), _wgslsmith_clamp_vec2_u32(vec2<u32>(15894u, 1u), u_input.c, vec2<u32>(u_input.c.x, 58874u)), u_input.a <= -2147483647i)), var_3.b.c), -245f, true);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = 4294967295u;
    var var_0 = Struct_2(func_5(-_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, 1i, 2147483647i, u_input.a) & vec4<i32>(u_input.a, 1i, 0i, u_input.a), vec4<i32>(-79516i, u_input.a, -2596i, u_input.a) ^ vec4<i32>(26799i, 1i, 0i, -6356i)), vec3<bool>(func_2(firstLeadingBit(vec2<i32>(u_input.a, 14028i)), Struct_2(Struct_1(335f, 311f, vec2<u32>(u_input.b, u_input.c.x), 739f, false)), func_1(Struct_1(841f, 396f, u_input.c, -2882f, true)), Struct_4(u_input.c.x, Struct_1(858f, 955f, u_input.c, 1025f, true))), select(true, true, true), all(global2[_wgslsmith_index_u32(u_input.b, 26u)]) != true), func_4(Struct_5(_wgslsmith_f_op_f32(1449f + -1144f), global2[_wgslsmith_index_u32(~15533u, 26u)]), ~func_3(u_input.c, 60944u), false)));
    var var_1 = Struct_3(vec2<f32>(628f, 636f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.d, 722f, 329f, var_0.a.b) - _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1000f, var_0.a.d, -100f, var_0.a.d)))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.d, -1338f, 494f, -190f) + vec4<f32>(146f, -906f, var_0.a.b, 1922f)))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-394f, var_0.a.a, 1568f, var_0.a.a)))), ~firstTrailingBit(firstLeadingBit(countOneBits(vec2<i32>(-2147483647i, 10359i)))));
    var_0 = Struct_2(Struct_1(var_1.b.x, var_1.b.x, var_0.a.c, -439f, -25463i < _wgslsmith_dot_vec4_i32(abs(vec4<i32>(u_input.a, 31596i, u_input.a, 40977i)), _wgslsmith_add_vec4_i32(vec4<i32>(-46534i, 1i, var_1.c.x, u_input.a), vec4<i32>(u_input.a, var_1.c.x, var_1.c.x, 9370i)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_0.a.a), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(var_1.a.x, 276f), vec2<f32>(144f, var_1.b.x))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.a, 927f)) * _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_0.a.b, -1070f)))), _wgslsmith_div_vec2_f32(vec2<f32>(var_0.a.b, var_1.b.x), vec2<f32>(125f, var_1.a.x))))));
}

