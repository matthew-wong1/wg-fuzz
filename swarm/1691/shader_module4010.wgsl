struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: u32,
    d: bool,
    e: i32,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: f32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<vec3<i32>, 4> = array<vec3<i32>, 4>(vec3<i32>(0i, 2147483647i, -1i), vec3<i32>(36927i, i32(-2147483648), 39800i), vec3<i32>(27336i, 34023i, -23057i), vec3<i32>(13534i, 29276i, 2147483647i));

var<private> global2: vec2<f32>;

var<private> global3: Struct_1 = Struct_1(vec3<i32>(-98i, 13770i, 16991i), true, 0u, false, 2147483647i);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_1() -> u32 {
    let var_0 = u_input.e;
    var var_1 = countOneBits(var_0 << (_wgslsmith_mult_u32(var_0, 1u >> (var_0 % 32u)) % 32u));
    global2 = vec2<f32>(global2.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(global2.x)))));
    let var_2 = vec3<bool>(true, !(u_input.c < _wgslsmith_mod_i32(~global3.a.x, _wgslsmith_mult_i32(global3.e, u_input.a.x))), !any(vec2<bool>(false, true)));
    var var_3 = -2147483647i;
    return 1u;
}

fn func_3() -> i32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1590f + global2.x), _wgslsmith_f_op_f32(sign(1f))) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(f32(-1f) * -369f))))));
    let var_1 = Struct_1(_wgslsmith_add_vec3_i32(vec3<i32>(firstTrailingBit(15979i | u_input.c), -2147483647i, reverseBits(global3.a.x)), u_input.a.xzx), any(!select(!vec4<bool>(global3.d, global3.b, global3.d, true), vec4<bool>(global3.b, true, global3.d, true), global3.b)), (reverseBits(global3.c) & 81979u) >> (~countOneBits(func_1()) % 32u), global3.d, 22824i);
    global0 = 1507f <= global2.x;
    let var_2 = var_1.b;
    var_0 = global2.x;
    return ~(8577i << (global3.c % 32u));
}

fn func_2(arg_0: Struct_2) -> vec4<bool> {
    var var_0 = ~firstTrailingBit(~vec3<u32>(~u_input.e, ~0u, ~4294967295u));
    let var_1 = Struct_1(vec3<i32>(~(~0i), _wgslsmith_mod_i32(-_wgslsmith_sub_i32(u_input.b, 10801i), func_3()), ~abs(min(1i, -1i))), !global3.b, var_0.x, true, global3.e);
    let var_2 = u_input.e;
    let var_3 = var_1;
    let var_4 = Struct_1(vec3<i32>(abs(-reverseBits(var_3.e)), i32(-1i) * -abs(global3.a.x), -_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(global3.a, vec3<i32>(22052i, var_1.e, var_3.a.x)), select(1i, -2147483647i, false))), true, 4294967295u, global3.b != !((var_1.c <= u_input.e) && true), reverseBits(2147483647i));
    return !(!(!(!select(vec4<bool>(true, true, var_1.b, true), vec4<bool>(var_3.b, global3.d, true, var_3.d), vec4<bool>(true, var_3.d, true, true)))));
}

fn func_4(arg_0: vec4<f32>, arg_1: vec4<bool>, arg_2: vec2<i32>, arg_3: Struct_2) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(689f, 1666f, -898f)), _wgslsmith_f_op_vec3_f32(-arg_0.yyy)));
    var var_1 = Struct_2(~vec2<u32>(~0u, u_input.e));
    let var_2 = _wgslsmith_div_i32(u_input.c, _wgslsmith_sub_i32(-2147483647i, arg_2.x));
    var var_3 = select(arg_1.wyx, arg_1.yww, select(vec3<bool>(false, (4294967295u >= arg_3.a.x) && true, 82165u <= _wgslsmith_div_u32(var_1.a.x, 0u)), vec3<bool>(func_2(arg_3).x, global3.b, false), arg_1.x));
    var var_4 = Struct_1(~_wgslsmith_div_vec3_i32(vec3<i32>(10803i, firstTrailingBit(arg_2.x), global3.a.x), _wgslsmith_sub_vec3_i32(_wgslsmith_sub_vec3_i32(global3.a, global1[_wgslsmith_index_u32(50000u, 4u)]), _wgslsmith_sub_vec3_i32(u_input.a.yyw, vec3<i32>(15173i, global3.e, var_2)))), all(!vec3<bool>(all(var_3.zy), arg_1.x, true)), 1u, global3.b, firstTrailingBit(arg_2.x) & global3.e);
    return Struct_1(var_4.a, true, u_input.e, true, _wgslsmith_clamp_i32(arg_2.x | -1i, _wgslsmith_clamp_i32(-28405i, -(~arg_2.x), select(arg_2.x, _wgslsmith_dot_vec4_i32(vec4<i32>(global3.e, global3.e, 2147483647i, 2147483647i), u_input.a), var_3.x)), ~(-1i)));
}

fn func_5(arg_0: u32, arg_1: u32, arg_2: Struct_1) -> bool {
    var var_0 = -187f;
    var var_1 = _wgslsmith_mult_u32(~0u, _wgslsmith_mult_u32(4294967295u, abs(0u)));
    let var_2 = vec2<u32>(func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(503f, global2.x, global2.x, -575f), vec4<f32>(-1000f, global2.x, global2.x, global2.x), vec4<bool>(true, true, arg_2.d, false))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, -744f, 331f, -211f)))), vec4<bool>(any(func_2(Struct_2(vec2<u32>(30386u, 4294967295u))).zxz), !global3.d && global3.b, (u_input.a.x == global3.e) || any(vec2<bool>(global3.b, global3.b)), arg_2.b), -(~vec2<i32>(global3.a.x, u_input.b)), Struct_2(vec2<u32>(0u, reverseBits(1u)))).c, 65574u);
    var_1 = _wgslsmith_div_u32(countOneBits(10456u), ~96377u);
    let var_3 = vec3<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(~(~vec4<u32>(var_2.x, 29u, arg_0, arg_0)), vec4<u32>(reverseBits(global3.c), 1u, arg_2.c, arg_2.c)), vec4<u32>(reverseBits(arg_0) & ~u_input.e, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, arg_1, arg_2.c), vec3<u32>(var_2.x, arg_1, arg_2.c)) >> (~var_2.x % 32u), 4294967295u, 80554u)), arg_0, u_input.e);
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mod_u32(~global3.c, u_input.e) << (u_input.e % 32u);
    global0 = func_5(abs(30418u) ^ firstTrailingBit(u_input.e & func_1()), global3.c, func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(331f, 1719f, global2.x, global2.x)) * vec4<f32>(735f, _wgslsmith_f_op_f32(-1716f - global2.x), _wgslsmith_f_op_f32(global2.x * -111f), -176f)), func_2(Struct_2(~vec2<u32>(global3.c, global3.c))), -min(firstTrailingBit(vec2<i32>(u_input.a.x, global3.a.x)), max(vec2<i32>(-1i, global3.e), vec2<i32>(u_input.b, global3.a.x))), Struct_2(_wgslsmith_clamp_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(1u, 30786u), vec2<u32>(10657u, u_input.e)), ~vec2<u32>(14995u, 0u), reverseBits(vec2<u32>(1u, 4294967295u))))));
    var var_1 = _wgslsmith_f_op_f32(global2.x * global2.x);
    global1 = array<vec3<i32>, 4>();
    global0 = global3.d;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global2.x)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(214f)) + -824f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1177f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(global2.x)), _wgslsmith_f_op_f32(-global2.x), false)) + 571f), vec2<i32>(-1i, firstTrailingBit(global3.a.x)));
}

