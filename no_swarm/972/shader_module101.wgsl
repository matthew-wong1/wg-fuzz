struct Struct_1 {
    a: bool,
    b: bool,
}

struct Struct_2 {
    a: u32,
    b: bool,
    c: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<i32>,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<Struct_4, 11>;

var<private> global2: array<vec3<i32>, 7>;

var<private> global3: u32 = 7482u;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> vec3<i32> {
    let var_0 = ~max(u_input.c, firstLeadingBit(-u_input.c));
    let var_1 = Struct_2(_wgslsmith_dot_vec3_u32(~u_input.b.zyz, reverseBits(max(_wgslsmith_mult_vec3_u32(u_input.b.wyw, vec3<u32>(0u, u_input.b.x, u_input.a)), countOneBits(vec3<u32>(4294967295u, 4294967295u, 1u))))), global0.c.b == !any(select(vec2<bool>(false, true), vec2<bool>(global0.a.a, global0.a.b), vec2<bool>(global0.a.a, global0.a.b))), -(i32(-1i) * -39610i));
    global2 = array<vec3<i32>, 7>();
    global2 = array<vec3<i32>, 7>();
    global3 = 1u ^ u_input.a;
    return select(global0.b & -_wgslsmith_div_vec3_i32(vec3<i32>(-66091i, -34596i, 25460i), global2[_wgslsmith_index_u32(u_input.a, 7u)]), vec3<i32>(-1i, u_input.c, firstTrailingBit(11050i)), !(true & (10814u > var_1.a))) ^ _wgslsmith_add_vec3_i32(vec3<i32>(_wgslsmith_mult_i32(firstLeadingBit(u_input.c), 1i), -2569i, ~global0.b.x), vec3<i32>(-global0.b.x, 1i, u_input.c) ^ -(vec3<i32>(-2147483647i, -32121i, var_0) >> (vec3<u32>(37042u, 6129u, 20249u) % vec3<u32>(32u))));
}

fn func_2() -> Struct_3 {
    var var_0 = 4294967295u;
    let var_1 = false;
    let var_2 = Struct_4(Struct_3(global0.a, _wgslsmith_div_vec3_i32(func_3(), select(global0.b, global2[_wgslsmith_index_u32(u_input.a, 7u)], global0.a.a) & abs(vec3<i32>(global0.b.x, -2147483647i, u_input.c))), global0.c), max(-6562i, countOneBits(0i)));
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(290f, -1661f), vec2<f32>(-1321f, -1000f), vec2<bool>(true, true))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-775f, -1287f)))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1666f + -1000f) - _wgslsmith_f_op_f32(max(-885f, -1182f))), -493f))));
    var var_4 = 1000f;
    return Struct_3(Struct_1(var_1, true), vec3<i32>(97825i, -3802i, u_input.c), Struct_1(true, all(!select(vec3<bool>(var_1, var_1, var_2.a.a.a), vec3<bool>(true, false, var_1), var_2.a.c.b))));
}

fn func_1(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: vec3<bool>) -> vec2<f32> {
    global0 = func_2();
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(1f, 1f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(734f, -119f) * vec2<f32>(565f, -1247f)) + _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1212f, -1000f))))))));
}

fn func_4(arg_0: u32, arg_1: vec2<f32>, arg_2: Struct_1, arg_3: Struct_3) -> Struct_4 {
    global0 = arg_3;
    var var_0 = Struct_2(_wgslsmith_dot_vec3_u32(~(select(vec3<u32>(4294967295u, u_input.b.x, u_input.a), vec3<u32>(28482u, arg_0, 0u), true) << (u_input.b.yyw % vec3<u32>(32u))), _wgslsmith_clamp_vec3_u32(max(u_input.b.xww, select(vec3<u32>(17659u, arg_0, arg_0), u_input.b.xwy, false)), vec3<u32>(arg_0, ~u_input.b.x, _wgslsmith_mult_u32(arg_0, arg_0)), u_input.b.xzw)), arg_1.x > -1354f, 45019i);
    global1 = array<Struct_4, 11>();
    let var_1 = Struct_2(~(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(u_input.b.zw, vec2<u32>(23315u, 4294967295u)), _wgslsmith_mult_vec2_u32(vec2<u32>(1u, 4294967295u), u_input.b.xz)) << (~u_input.b.x % 32u)), _wgslsmith_f_op_f32(sign(arg_1.x)) > 348f, arg_3.b.x);
    let var_2 = Struct_3(Struct_1(false, !(true && (arg_1.x > arg_1.x))), abs(global0.b), Struct_1(false, var_0.b));
    return Struct_4(var_2, -_wgslsmith_clamp_i32(i32(-1i) * -2147483647i, ~var_0.c, ~2147483647i) >> (89852u % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(u_input.b.x, _wgslsmith_f_op_vec2_f32(func_1(global0.c, u_input.b, !(!(!vec3<bool>(global0.a.a, true, true))))), global0.c, Struct_3(Struct_1(global0.a.a, true), func_2().b, func_2().a));
    let var_1 = 0u;
    global3 = _wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(0u, var_1, 0u, 1u));
    var var_2 = Struct_3(global0.c, vec3<i32>(global0.b.x, 2147483647i, _wgslsmith_mult_i32(-global0.b.x >> (min(var_1, var_1) % 32u), ~27083i)), func_4(_wgslsmith_mult_u32(_wgslsmith_mod_u32(select(33021u, 26933u, var_0.a.a.b), _wgslsmith_mult_u32(u_input.b.x, 15424u)), u_input.b.x), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1305f, -177f) * vec2<f32>(-960f, 2063f))), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-614f, -1000f)))), Struct_1(true, !global0.a.a || false), var_0.a).a.c);
    var_0 = func_4(15950u, _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(598f, 1000f))))))), var_0.a.c, Struct_3(Struct_1(false, true), -vec3<i32>(abs(27594i), firstLeadingBit(12188i), ~38148i), func_2().a));
    let x = u_input.a;
    s_output = StorageBuffer(46084u | ~u_input.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1652f + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(248f - -753f)))) - 425f), ~_wgslsmith_clamp_i32(_wgslsmith_add_i32(var_2.b.x, 4428i & var_2.b.x), i32(-1i) * -1i, global0.b.x), 1000f);
}

