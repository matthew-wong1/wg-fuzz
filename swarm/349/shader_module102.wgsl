struct Struct_1 {
    a: vec4<i32>,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: f32,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: Struct_1,
    d: bool,
    e: i32,
}

struct Struct_4 {
    a: u32,
    b: f32,
    c: f32,
}

struct Struct_5 {
    a: i32,
    b: vec2<i32>,
    c: f32,
    d: vec2<bool>,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec4<f32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 14>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: u32, arg_1: Struct_1) -> i32 {
    let var_0 = vec2<f32>(-321f, -341f);
    var var_1 = arg_1;
    var_1 = Struct_1(_wgslsmith_add_vec4_i32(vec4<i32>(-1i) * -arg_1.a, vec4<i32>(-1i) * -vec4<i32>(-20193i, u_input.a.x, -4089i, u_input.a.x)), false);
    var var_2 = Struct_5(arg_1.a.x, countOneBits(select(~vec2<i32>(11992i, -72200i), _wgslsmith_mult_vec2_i32(vec2<i32>(66533i, -4550i), vec2<i32>(arg_1.a.x, arg_1.a.x)) & abs(vec2<i32>(arg_1.a.x, u_input.a.x)), true)), var_0.x, select(vec2<bool>(var_1.b, false), select(vec2<bool>(all(vec2<bool>(arg_1.b, false)), false), !select(vec2<bool>(true, arg_1.b), vec2<bool>(false, arg_1.b), false), false & arg_1.b), !(!vec2<bool>(arg_1.b, var_1.b))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, 570f, -219f, var_0.x) - vec4<f32>(var_0.x, -1523f, -267f, -226f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, 411f, -1000f)), false)))));
    global0 = array<vec3<bool>, 14>();
    return -2147483647i;
}

fn func_2() -> Struct_1 {
    global0 = array<vec3<bool>, 14>();
    let var_0 = vec3<i32>(u_input.a.x & reverseBits((u_input.a.x << (u_input.c.x % 32u)) | ~637i), 0i, 30186i);
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -2177f))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -899f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(284f, _wgslsmith_f_op_f32(sign(-941f)))));
    let var_2 = Struct_1(_wgslsmith_mod_vec4_i32(vec4<i32>(~(~var_0.x), max(firstTrailingBit(23430i), countOneBits(-1i)), func_3(_wgslsmith_mult_u32(80114u, u_input.c.x), Struct_1(vec4<i32>(7886i, -2147483647i, var_0.x, -2147483647i), false)), u_input.a.x), vec4<i32>(~1i, -26029i, _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, u_input.a.x, -13800i, -2147483647i), vec4<i32>(u_input.a.x, var_0.x, 42878i, -1i) ^ vec4<i32>(u_input.a.x, -1i, -2147483647i, -12305i)), _wgslsmith_sub_i32(u_input.a.x, u_input.a.x))), true);
    var_1 = vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_1.x - var_1.x))), var_1.x);
    return Struct_1((vec4<i32>(_wgslsmith_dot_vec4_i32(u_input.a, u_input.a), 1i, 1i, u_input.a.x) << (vec4<u32>(4294967295u, 4294967295u << (u_input.c.x % 32u), _wgslsmith_mult_u32(u_input.b, 12628u), 0u) % vec4<u32>(32u))) & var_2.a, var_2.b | true);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_4, arg_2: i32) -> Struct_5 {
    var var_0 = arg_0.b;
    global0 = array<vec3<bool>, 14>();
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(-arg_1.b), arg_1.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_1.b)))), -1453f);
    var_1 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(2930f, -280f, -1000f, 1936f) * vec4<f32>(-810f, -1129f, arg_1.c, arg_1.b)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, var_1.x, 935f, 1000f) + vec4<f32>(1000f, 559f, -307f, 1691f))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_1.b, arg_1.c, 418f, var_1.x))))) * vec4<f32>(_wgslsmith_f_op_f32(min(var_1.x, -1000f)), -689f, _wgslsmith_f_op_f32(min(var_1.x, _wgslsmith_f_op_f32(floor(var_1.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x - var_1.x))))));
    let var_2 = Struct_4(abs(arg_1.a), _wgslsmith_f_op_f32(var_1.x + var_1.x), var_1.x);
    return Struct_5(-(~5597i), vec2<i32>(u_input.a.x, -(~arg_2 << (_wgslsmith_mod_u32(4294967295u, 35414u) % 32u))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(var_2.b, -2676f)), _wgslsmith_f_op_f32(-1620f - _wgslsmith_f_op_f32(abs(var_2.b)))), select(select(select(!vec2<bool>(arg_0.b, arg_0.b), select(vec2<bool>(arg_0.b, false), vec2<bool>(arg_0.b, arg_0.b), arg_0.b), !arg_0.b), vec2<bool>(true, true), !select(vec2<bool>(true, arg_0.b), vec2<bool>(arg_0.b, false), vec2<bool>(true, arg_0.b))), vec2<bool>(true, true), select(select(select(vec2<bool>(true, true), vec2<bool>(arg_0.b, arg_0.b), vec2<bool>(true, false)), vec2<bool>(arg_0.b, arg_0.b), arg_0.b), select(vec2<bool>(arg_0.b, true), vec2<bool>(true, true), any(global0[_wgslsmith_index_u32(4294967295u, 14u)])), true)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.b, var_2.b, var_2.c, arg_1.c))) - vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(arg_1.c)))), _wgslsmith_f_op_f32(411f + _wgslsmith_f_op_f32(f32(-1f) * -254f)), _wgslsmith_f_op_f32(-var_2.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_1.x))))));
}

fn func_5(arg_0: vec2<i32>, arg_1: Struct_5) -> f32 {
    let var_0 = 440f;
    global0 = array<vec3<bool>, 14>();
    var var_1 = !(!vec4<bool>(arg_1.d.x, !arg_1.d.x, true, arg_1.d.x || func_2().b));
    var var_2 = func_4(func_2(), Struct_4(u_input.b, var_0, _wgslsmith_f_op_f32(-287f * _wgslsmith_f_op_f32(ceil(arg_1.e.x)))), 89092i);
    let var_3 = Struct_3(u_input.a.x, Struct_2(func_2(), var_2.d.x, arg_1.c), Struct_1(-(~min(vec4<i32>(21784i, arg_1.a, u_input.a.x, -1i), vec4<i32>(var_2.b.x, 2147483647i, -2489i, 12480i))), false), !(!arg_1.d.x), u_input.a.x);
    return var_0;
}

fn func_6(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: vec2<i32>) -> Struct_3 {
    var var_0 = firstTrailingBit(vec2<i32>(arg_2.x, 21304i & func_3(u_input.c.x, arg_1.a)));
    let var_1 = arg_1.a;
    var var_2 = Struct_2(Struct_1(vec4<i32>(_wgslsmith_mult_i32(firstTrailingBit(1i), 5379i << (u_input.c.x % 32u)), 1i, -1i, arg_1.a.a.x), !var_1.b), !var_1.b, arg_0.x);
    var var_3 = reverseBits(var_1.a.wyy);
    var var_4 = var_2.a.a.x;
    return Struct_3(53851i, Struct_2(Struct_1(_wgslsmith_div_vec4_i32(arg_1.a.a, var_1.a) | u_input.a, arg_1.a.b), arg_1.b && func_2().b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(307f)))))), Struct_1(max(_wgslsmith_mod_vec4_i32(reverseBits(u_input.a), vec4<i32>(var_0.x, 73920i, -1i, var_2.a.a.x)), var_1.a), !(var_2.c != _wgslsmith_f_op_f32(-1000f + 416f))), true, var_0.x);
}

fn func_1(arg_0: i32) -> Struct_2 {
    var var_0 = func_6(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1349f) * _wgslsmith_f_op_f32(-1647f + 340f))), -921f, _wgslsmith_f_op_f32(f32(-1f) * -796f), _wgslsmith_f_op_f32(func_5(vec2<i32>(0i, ~arg_0), func_4(func_2(), Struct_4(u_input.c.x, 527f, 119f), u_input.a.x)))), Struct_2(func_2(), !func_2().b, _wgslsmith_f_op_f32(-1f)), firstLeadingBit(-u_input.a.wx) >> (_wgslsmith_mod_vec2_u32(select(vec2<u32>(u_input.c.x, u_input.c.x), u_input.c.xz, vec2<bool>(true, true)), u_input.c.xw) % vec2<u32>(32u)));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(func_5(-vec2<i32>(u_input.a.x, u_input.a.x), Struct_5(-2147483647i, vec2<i32>(7621i, 2147483647i), var_0.b.c, vec2<bool>(var_0.b.b, var_0.b.b), vec4<f32>(-1770f, 1065f, -1000f, -533f)))), _wgslsmith_f_op_f32(func_5(func_6(vec4<f32>(var_0.b.c, -1345f, 1012f, var_0.b.c), Struct_2(Struct_1(vec4<i32>(-15406i, u_input.a.x, 41570i, arg_0), var_0.d), false, var_0.b.c), u_input.a.yx).b.a.a.yw, func_4(var_0.c, Struct_4(4294967295u, var_0.b.c, -265f), -2147483647i))), 1491f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.b.c, -948f)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1000f, _wgslsmith_f_op_f32(exp2(var_0.b.c)), var_0.b.c, -293f))) + vec4<f32>(-778f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.c) - -2472f), var_0.b.c, _wgslsmith_f_op_f32(var_0.b.c - 119f))));
    var_0 = func_6(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(abs(1454f)), var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.c * var_0.b.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) * _wgslsmith_f_op_f32(-757f * 483f))))), Struct_2(func_2(), var_0.d, -1163f), var_0.c.a.yw);
    let var_2 = _wgslsmith_mod_u32(4294967295u, u_input.c.x);
    let var_3 = global0[_wgslsmith_index_u32(~abs(~_wgslsmith_clamp_u32(u_input.b, ~var_2, 0u)), 14u)];
    return Struct_2(Struct_1(-(u_input.a & (u_input.a << (u_input.c % vec4<u32>(32u)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_1.x)) * _wgslsmith_f_op_f32(floor(2076f))) < var_1.x), true, _wgslsmith_f_op_f32(-var_1.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<bool>, 14>();
    let var_0 = func_1(37240i ^ u_input.a.x);
    let var_1 = Struct_4(_wgslsmith_dot_vec4_u32(u_input.c, u_input.c), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_5(abs(u_input.a.zx), func_4(var_0.a, Struct_4(22173u, var_0.c, -105f), func_3(u_input.c.x, Struct_1(vec4<i32>(-33960i, -2147483647i, -3931i, var_0.a.a.x), var_0.a.b))))), var_0.c), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-304f, var_0.c) * _wgslsmith_div_f32(-171f, var_0.c)));
    var var_2 = Struct_3(firstLeadingBit(48549i), Struct_2(func_6(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(941f, var_1.b, 1548f, 1000f)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0.c, 734f, 701f, -1076f), vec4<f32>(106f, 768f, var_1.b, 1000f)))), func_6(vec4<f32>(var_1.c, 698f, var_0.c, var_1.b), func_6(vec4<f32>(var_0.c, var_0.c, 1000f, 236f), var_0, var_0.a.a.xw).b, -vec2<i32>(-62671i, -1i)).b, ~(~u_input.a.zw)).c, !var_0.a.b, _wgslsmith_f_op_f32(step(var_1.b, _wgslsmith_f_op_f32(var_1.b + -1079f)))), Struct_1(_wgslsmith_clamp_vec4_i32(~u_input.a, ~func_2().a, -vec4<i32>(2147483647i, -69468i, -1i, u_input.a.x) >> (_wgslsmith_mod_vec4_u32(vec4<u32>(var_1.a, 4294967295u, var_1.a, var_1.a), u_input.c) % vec4<u32>(32u))), var_0.a.b), var_0.b, func_6(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.b, var_0.c, var_1.b, var_1.c), vec4<f32>(309f, var_1.c, var_1.b, var_0.c), var_0.a.b)))), Struct_2(Struct_1(-vec4<i32>(var_0.a.a.x, -2147483647i, 1i, 9265i), var_0.c >= var_1.b), any(!global0[_wgslsmith_index_u32(u_input.c.x, 14u)]), 1f), var_0.a.a.zz).b.a.a.x);
    let var_3 = Struct_5(firstTrailingBit(~0i), vec2<i32>(var_2.e >> (var_1.a % 32u), -var_0.a.a.x ^ ~_wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(-50254i, 27480i, var_0.a.a.x, var_2.b.a.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-700f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_5(vec2<i32>(-146i, var_2.a), Struct_5(-1i, u_input.a.wx, var_1.c, vec2<bool>(true, false), vec4<f32>(var_2.b.c, var_2.b.c, var_2.b.c, var_1.b)))))))), !select(func_4(Struct_1(vec4<i32>(var_2.e, 29824i, -2147483647i, 15069i), var_0.a.b), Struct_4(var_1.a, -567f, var_1.c), ~var_2.c.a.x).d, vec2<bool>(!var_0.b, func_4(var_0.a, var_1, u_input.a.x).d.x), select(vec2<bool>(false, var_0.b), vec2<bool>(true, var_2.d), all(global0[_wgslsmith_index_u32(u_input.b, 14u)]))), vec4<f32>(_wgslsmith_f_op_f32(-var_0.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(func_6(vec4<f32>(var_0.c, var_2.b.c, 530f, var_2.b.c), var_0, var_2.c.a.xy).b.c))), _wgslsmith_f_op_f32(-var_1.c), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(var_1.c, var_0.c), var_0.c))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(~abs(~var_1.a), _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(13508u, u_input.c.x, var_1.a), u_input.c.xwz), 0u)), 0i, var_3.e, _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.e.x, _wgslsmith_f_op_f32(var_1.b + -388f), -312f)))));
}

