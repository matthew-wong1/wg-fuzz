struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec3<f32>,
    c: i32,
}

struct Struct_4 {
    a: vec2<bool>,
}

struct Struct_5 {
    a: i32,
    b: bool,
    c: bool,
    d: vec2<u32>,
    e: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 8> = array<Struct_5, 8>(Struct_5(2147483647i, false, true, vec2<u32>(53116u, 103757u), 64036u), Struct_5(11409i, true, true, vec2<u32>(19832u, 1u), 0u), Struct_5(i32(-2147483648), true, false, vec2<u32>(10366u, 17013u), 0u), Struct_5(13414i, true, false, vec2<u32>(39463u, 65284u), 48078u), Struct_5(0i, false, false, vec2<u32>(4294967295u, 4294967295u), 57862u), Struct_5(1i, true, true, vec2<u32>(0u, 0u), 0u), Struct_5(-1i, true, false, vec2<u32>(31757u, 47397u), 44271u), Struct_5(7867i, true, false, vec2<u32>(101875u, 0u), 1u));

var<private> global1: array<vec2<i32>, 27> = array<vec2<i32>, 27>(vec2<i32>(-1i, -9307i), vec2<i32>(-1i, 2147483647i), vec2<i32>(-8196i, 2147483647i), vec2<i32>(25380i, 28725i), vec2<i32>(2147483647i, -1i), vec2<i32>(0i, 9751i), vec2<i32>(4313i, -15777i), vec2<i32>(-52665i, 31607i), vec2<i32>(2147483647i, i32(-2147483648)), vec2<i32>(-1i, 11195i), vec2<i32>(-13783i, 38261i), vec2<i32>(11564i, 1i), vec2<i32>(-16124i, -2169i), vec2<i32>(i32(-2147483648), 13791i), vec2<i32>(0i, -31566i), vec2<i32>(1i, -14370i), vec2<i32>(1i, 1i), vec2<i32>(18410i, 31736i), vec2<i32>(0i, -14079i), vec2<i32>(-10885i, 14166i), vec2<i32>(-15821i, -1i), vec2<i32>(0i, 74923i), vec2<i32>(32821i, 61110i), vec2<i32>(-33467i, -1i), vec2<i32>(26574i, 2147483647i), vec2<i32>(1i, 1i), vec2<i32>(0i, 10767i));

var<private> global2: vec2<u32>;

var<private> global3: bool;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2() -> u32 {
    return reverseBits(_wgslsmith_div_u32(u_input.a.x, _wgslsmith_sub_u32(~_wgslsmith_div_u32(u_input.c.x, 11974u), global2.x)));
}

fn func_3(arg_0: Struct_2, arg_1: vec3<u32>, arg_2: vec2<f32>, arg_3: f32) -> vec2<bool> {
    let var_0 = true;
    global1 = array<vec2<i32>, 27>();
    var var_1 = Struct_3(arg_0.b.a.x, _wgslsmith_f_op_vec3_f32(vec3<f32>(-709f, 112f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.x) * _wgslsmith_div_f32(266f, arg_3))) - vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_2.x * arg_3), _wgslsmith_f_op_f32(f32(-1f) * -1365f))), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(arg_2.x, arg_3))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(933f)) * -546f))), max(u_input.b, arg_0.b.a.x));
    var var_2 = _wgslsmith_div_i32(1i, var_1.a);
    var_1 = Struct_3(_wgslsmith_dot_vec4_i32(-arg_0.b.a, arg_0.b.a), _wgslsmith_f_op_vec3_f32(-var_1.b), ((1i << (arg_1.x % 32u)) | u_input.b) ^ -(-52679i >> ((u_input.c.x | 54226u) % 32u)));
    return !(!(!vec2<bool>(true, arg_0.a)));
}

fn func_4(arg_0: Struct_4, arg_1: vec2<bool>) -> vec3<bool> {
    let var_0 = true;
    var var_1 = -1i;
    var_1 = _wgslsmith_clamp_i32(_wgslsmith_div_i32(_wgslsmith_sub_i32(-1i, _wgslsmith_dot_vec4_i32(select(vec4<i32>(u_input.b, u_input.b, -55694i, u_input.b), vec4<i32>(-36862i, -2147483647i, 2147483647i, -14918i), vec4<bool>(var_0, arg_1.x, false, false)), _wgslsmith_clamp_vec4_i32(vec4<i32>(-20746i, 8479i, 46027i, u_input.b), vec4<i32>(u_input.b, u_input.b, -2147483647i, -1i), vec4<i32>(1i, -20554i, -2147483647i, 13376i)))), u_input.b), -40813i, 13669i);
    global3 = !(select(reverseBits(1u), _wgslsmith_mod_u32(1u, global2.x), var_0) <= ~u_input.c.x);
    var var_2 = Struct_1(-firstTrailingBit(vec4<i32>(abs(u_input.b), 2147483647i, u_input.b, -u_input.b)));
    return !vec3<bool>(all(vec3<bool>(true, !var_0, any(vec4<bool>(arg_0.a.x, false, arg_0.a.x, arg_1.x)))), select(var_0 != !arg_0.a.x, arg_1.x, true), true);
}

fn func_5(arg_0: u32, arg_1: vec2<i32>, arg_2: vec3<bool>, arg_3: Struct_4) -> Struct_2 {
    var var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(758f))), _wgslsmith_f_op_f32(max(-294f, _wgslsmith_f_op_f32(239f * -282f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1356f, 1033f, arg_2.x)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -804f), _wgslsmith_f_op_f32(-279f + -696f), _wgslsmith_div_f32(915f, 230f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1028f, 2181f, -322f)))));
    global2 = vec2<u32>(~_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global2.x, 1u, 0u, 0u), u_input.c), ~global2.x), 16497u) ^ _wgslsmith_sub_vec2_u32(u_input.c.yy, min(vec2<u32>(u_input.a.x, u_input.a.x << (1u % 32u)), abs(~u_input.c.xz)));
    global1 = array<vec2<i32>, 27>();
    var var_1 = arg_3.a.x;
    global0 = array<Struct_5, 8>();
    return Struct_2(false, Struct_1(_wgslsmith_clamp_vec4_i32(vec4<i32>(-13766i, i32(-1i) * -2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(107378i, -18064i, -1i, arg_1.x), vec4<i32>(u_input.b, 4708i, arg_1.x, 125i)), -arg_1.x), vec4<i32>(u_input.b, _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, u_input.b, 4040i, 20025i), vec4<i32>(arg_1.x, 0i, 36448i, -32949i)), u_input.b, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, -14419i), arg_1)), vec4<i32>(-2147483647i, u_input.b, arg_1.x, u_input.b) ^ abs(vec4<i32>(u_input.b, 0i, -36330i, 0i)))));
}

fn func_1() -> f32 {
    var var_0 = _wgslsmith_dot_vec3_u32(~reverseBits(vec3<u32>(1u, 4294967295u, _wgslsmith_mod_u32(global2.x, global2.x))), u_input.c.xxy);
    global0 = array<Struct_5, 8>();
    var var_1 = func_5(1u, global1[_wgslsmith_index_u32(~func_2(), 27u)], func_4(Struct_4(select(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(false, false), true)), select(select(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<bool>(true, true), vec2<bool>(true, true)), func_3(Struct_2(false, Struct_1(vec4<i32>(2147483647i, 1i, 0i, u_input.b))), vec3<u32>(9442u, u_input.c.x, global2.x), _wgslsmith_f_op_vec2_f32(vec2<f32>(-677f, 626f) * vec2<f32>(-1290f, 2152f)), _wgslsmith_div_f32(154f, 497f)), all(vec2<bool>(true, true)))), Struct_4(vec2<bool>(true, ~global2.x >= global2.x)));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(639f, -303f)) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(1095f)), _wgslsmith_f_op_f32(f32(-1f) * -1291f), false))) * -2541f));
    global0 = array<Struct_5, 8>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-438f * _wgslsmith_f_op_f32(trunc(1000f))) - -842f)) - 154f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a;
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -261f, _wgslsmith_f_op_f32(-684f + _wgslsmith_f_op_f32(f32(-1f) * -227f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-150f)) + _wgslsmith_f_op_f32(-691f * -1558f)) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(abs(-689f))))));
    global1 = array<vec2<i32>, 27>();
    global0 = array<Struct_5, 8>();
    var var_2 = true;
    var var_3 = Struct_5(-_wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(firstTrailingBit(vec2<i32>(u_input.b, -53398i)), ~vec2<i32>(-19106i, 37586i)), vec2<i32>(18722i, 10233i) << ((var_0.zw ^ u_input.c.xx) % vec2<u32>(32u))), false, var_1.x == -1515f, ~firstLeadingBit(vec2<u32>(4294967295u, var_0.x) | vec2<u32>(0u, 0u)), _wgslsmith_clamp_u32(39654u, 4294967295u, 17686u));
    var_0 = u_input.c;
    var var_4 = var_3.d;
    global2 = (min(_wgslsmith_sub_vec2_u32(~var_3.d, vec2<u32>(var_0.x, var_3.d.x) | vec2<u32>(24236u, 4294967295u)), firstLeadingBit(var_0.yz)) ^ ~(select(vec2<u32>(1u, var_0.x), u_input.c.zy, vec2<bool>(var_3.b, var_3.b)) | vec2<u32>(2895u, 4294967295u))) & var_0.zx;
    let x = u_input.a;
    s_output = StorageBuffer(~((countOneBits(vec2<i32>(u_input.b, u_input.b)) << (_wgslsmith_mult_vec2_u32(vec2<u32>(1u, global2.x), u_input.c.xy) % vec2<u32>(32u))) | (_wgslsmith_clamp_vec2_i32(vec2<i32>(var_3.a, u_input.b), global1[_wgslsmith_index_u32(var_4.x, 27u)], vec2<i32>(-2147483647i, -1i)) >> (var_3.d % vec2<u32>(32u)))), countOneBits(max(4294967295u, var_0.x)));
}

