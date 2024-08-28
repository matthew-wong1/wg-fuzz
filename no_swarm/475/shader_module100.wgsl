struct Struct_1 {
    a: bool,
    b: vec4<i32>,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec4<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 25> = array<Struct_1, 25>(Struct_1(true, vec4<i32>(-18086i, 5043i, 0i, 0i), vec2<i32>(i32(-2147483648), 18825i)), Struct_1(true, vec4<i32>(27807i, 3399i, -1i, 0i), vec2<i32>(i32(-2147483648), 46686i)), Struct_1(true, vec4<i32>(1i, -1i, -9926i, 2147483647i), vec2<i32>(2147483647i, -36443i)), Struct_1(true, vec4<i32>(35178i, 40455i, -37438i, 15497i), vec2<i32>(i32(-2147483648), 2147483647i)), Struct_1(false, vec4<i32>(-39529i, 1i, -28018i, 1i), vec2<i32>(-1i, 6982i)), Struct_1(true, vec4<i32>(1i, 34356i, 1i, 41768i), vec2<i32>(1i, 17808i)), Struct_1(true, vec4<i32>(i32(-2147483648), -1i, 68635i, 28415i), vec2<i32>(-30626i, -1i)), Struct_1(false, vec4<i32>(i32(-2147483648), 1i, -1i, -12126i), vec2<i32>(i32(-2147483648), 1i)), Struct_1(true, vec4<i32>(25181i, 1i, i32(-2147483648), 17642i), vec2<i32>(57571i, i32(-2147483648))), Struct_1(true, vec4<i32>(-36i, 31936i, -12244i, -1i), vec2<i32>(29929i, 10205i)), Struct_1(false, vec4<i32>(0i, 1i, -17678i, -52818i), vec2<i32>(0i, i32(-2147483648))), Struct_1(true, vec4<i32>(i32(-2147483648), 17519i, 26026i, 2147483647i), vec2<i32>(-7400i, -3455i)), Struct_1(true, vec4<i32>(-37666i, -8840i, 2147483647i, 1i), vec2<i32>(1i, 1i)), Struct_1(false, vec4<i32>(52060i, -23436i, 16850i, 2147483647i), vec2<i32>(1i, 4615i)), Struct_1(false, vec4<i32>(1i, 28781i, 33446i, 2147483647i), vec2<i32>(-1i, -11426i)), Struct_1(true, vec4<i32>(-1i, 2607i, -1i, 1i), vec2<i32>(-11890i, -1i)), Struct_1(true, vec4<i32>(-13365i, 27672i, 2147483647i, 22604i), vec2<i32>(-23918i, 2147483647i)), Struct_1(true, vec4<i32>(-68003i, -12825i, 0i, 0i), vec2<i32>(19494i, 1i)), Struct_1(false, vec4<i32>(7441i, 9474i, -1i, 5110i), vec2<i32>(24802i, 1i)), Struct_1(false, vec4<i32>(-38010i, i32(-2147483648), 2147483647i, -35701i), vec2<i32>(-42461i, 2147483647i)), Struct_1(false, vec4<i32>(i32(-2147483648), 63260i, 0i, i32(-2147483648)), vec2<i32>(2147483647i, 0i)), Struct_1(true, vec4<i32>(47629i, 1i, -1i, 62105i), vec2<i32>(-1i, 2147483647i)), Struct_1(false, vec4<i32>(-56979i, 1i, -9773i, -52430i), vec2<i32>(i32(-2147483648), -65029i)), Struct_1(false, vec4<i32>(1i, -3307i, -23785i, -15909i), vec2<i32>(16014i, 2147483647i)), Struct_1(false, vec4<i32>(16869i, i32(-2147483648), 2147483647i, -5484i), vec2<i32>(-9396i, -10490i)));

var<private> global1: array<vec3<i32>, 16>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_1(arg_0: vec2<i32>, arg_1: i32, arg_2: Struct_1) -> f32 {
    global1 = array<vec3<i32>, 16>();
    global0 = array<Struct_1, 25>();
    global0 = array<Struct_1, 25>();
    let var_0 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -760f) * _wgslsmith_f_op_f32(825f + 1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-705f)) - _wgslsmith_f_op_f32(f32(-1f) * -1726f)))))));
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0 * var_0) * _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-var_0.x), -916f), vec2<f32>(_wgslsmith_div_f32(var_0.x, -1000f), _wgslsmith_f_op_f32(-var_0.x))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, 291f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, -1068f))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-119f, -478f)))));
    return _wgslsmith_f_op_f32(max(var_1.x, var_0.x));
}

fn func_2(arg_0: u32, arg_1: u32) -> u32 {
    let var_0 = global0[_wgslsmith_index_u32(_wgslsmith_add_u32(arg_0, reverseBits(5337u)), 25u)];
    var var_1 = true;
    var var_2 = true;
    var_2 = true;
    global1 = array<vec3<i32>, 16>();
    return 1u;
}

fn func_3(arg_0: u32, arg_1: vec4<i32>, arg_2: Struct_1) -> vec4<i32> {
    var var_0 = _wgslsmith_mod_u32(u_input.e, 4294967295u);
    var var_1 = Struct_1(arg_2.a, arg_1 >> (reverseBits(vec4<u32>(15024u, 1u, ~4294967295u, ~arg_0)) % vec4<u32>(32u)), _wgslsmith_clamp_vec2_i32(vec2<i32>(_wgslsmith_dot_vec3_i32(arg_1.yww, arg_1.wxw), -2147483647i), select(arg_1.wx, vec2<i32>(_wgslsmith_div_i32(arg_1.x, -2147483647i), arg_1.x), !arg_2.a), max(vec2<i32>(-8078i, arg_1.x) >> (vec2<u32>(arg_0, u_input.e) % vec2<u32>(32u)), vec2<i32>(arg_1.x, 1i))));
    var var_2 = ~u_input.e;
    var var_3 = arg_2;
    var_3 = global0[_wgslsmith_index_u32(~0u << (countOneBits(max(arg_0, 1u)) % 32u), 25u)];
    return arg_2.b;
}

fn func_4(arg_0: f32, arg_1: f32, arg_2: vec4<bool>, arg_3: Struct_1) -> vec4<u32> {
    global1 = array<vec3<i32>, 16>();
    var var_0 = Struct_1(arg_2.x & select(true, true, (arg_3.a | true) & true), vec4<i32>(-37645i, u_input.c, 0i, reverseBits(~(-1i))), -vec2<i32>(~u_input.c, 43720i));
    var var_1 = 41144u | ~(~u_input.e & ~(~1u));
    var_1 = 1u;
    let var_2 = firstLeadingBit(23207i);
    return u_input.d;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -632f) * _wgslsmith_f_op_f32(func_1(vec2<i32>(u_input.c, u_input.c), u_input.c, Struct_1(false, vec4<i32>(u_input.c, u_input.c, 0i, u_input.c), vec2<i32>(4249i, u_input.c)))))))))));
    global1 = array<vec3<i32>, 16>();
    var var_1 = ~u_input.d;
    var var_2 = vec2<u32>(1u, reverseBits(func_2(4294967295u, u_input.a.x)));
    let var_3 = vec3<i32>(~(firstTrailingBit(-2147483647i | u_input.c) | countOneBits(_wgslsmith_mult_i32(-14999i, -27948i))), -7766i, _wgslsmith_div_i32(1i, 14469i));
    let x = u_input.a;
    s_output = StorageBuffer(~func_4(_wgslsmith_f_op_f32(739f - -2153f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1382f), 229f), vec4<bool>(all(vec4<bool>(false, false, false, false)), false, true, any(vec3<bool>(false, true, true))), Struct_1(true, func_3(20667u, vec4<i32>(u_input.c, -1i, 50570i, var_3.x), global0[_wgslsmith_index_u32(0u, 25u)]), _wgslsmith_div_vec2_i32(vec2<i32>(u_input.c, u_input.c), vec2<i32>(-30622i, u_input.c)))), 27399i, vec4<u32>(83326u, 1u, ~0u, _wgslsmith_add_u32(~_wgslsmith_dot_vec2_u32(u_input.d.yz, var_1.yy), 4888u)), _wgslsmith_f_op_f32(f32(-1f) * -374f));
}

