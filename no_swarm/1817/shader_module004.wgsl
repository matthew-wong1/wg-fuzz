struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: Struct_1,
    d: f32,
    e: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec2<f32>,
    c: Struct_1,
    d: vec2<f32>,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(true, vec2<f32>(553f, -215f), Struct_1(52302i), vec2<f32>(1000f, -380f), vec4<f32>(2054f, 894f, -1299f, -428f));

var<private> global1: array<Struct_1, 8> = array<Struct_1, 8>(Struct_1(2147483647i), Struct_1(1i), Struct_1(-56377i), Struct_1(2147483647i), Struct_1(2147483647i), Struct_1(24356i), Struct_1(-9831i), Struct_1(10722i));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_3, arg_1: Struct_1, arg_2: vec2<bool>) -> i32 {
    return _wgslsmith_dot_vec3_i32(vec3<i32>(~_wgslsmith_clamp_i32(1i, -2147483647i, global0.c.a & u_input.d.x), u_input.d.x, -4380i), ~(-vec3<i32>(u_input.d.x & global0.c.a, _wgslsmith_mod_i32(u_input.d.x, arg_0.c.a), global0.c.a | arg_1.a)));
}

fn func_2() -> Struct_3 {
    global0 = Struct_3(true, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(global0.b.x, 1146f), -1976f) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, global0.d.x))))), Struct_1(_wgslsmith_sub_i32(global0.c.a, min(-u_input.d.x, ~u_input.d.x))), _wgslsmith_f_op_vec2_f32(-global0.e.xy), global0.e);
    global0 = Struct_3(global0.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(global0.d.x, _wgslsmith_f_op_f32(min(-1434f, global0.e.x))), vec2<f32>(global0.b.x, global0.d.x)))), Struct_1(func_3(Struct_3(true, _wgslsmith_f_op_vec2_f32(-global0.e.ww), Struct_1(global0.c.a), _wgslsmith_f_op_vec2_f32(-global0.e.yx), global0.e), Struct_1(~(-40107i)), vec2<bool>(true, any(vec4<bool>(global0.a, true, false, false))))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(sign(global0.e.x)), global0.d.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(603f, -203f)))))), global0.e);
    let var_0 = global1[_wgslsmith_index_u32(~34342u, 8u)];
    let var_1 = max(u_input.b << (vec4<u32>(1u, u_input.a.x, firstTrailingBit(~u_input.b.x), 0u) % vec4<u32>(32u)), countOneBits(~vec4<u32>(countOneBits(4294967295u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.b.x, u_input.b.x, 26086u), vec4<u32>(59900u, 35841u, 38835u, u_input.a.x)), u_input.a.x, u_input.b.x)));
    var var_2 = Struct_3(global0.a, vec2<f32>(global0.d.x, -766f), global0.c, vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(352f)) + global0.d.x))), global0.d.x), global0.e);
    return Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(var_2.d.x)), _wgslsmith_f_op_f32(min(2056f, -1041f))))) == _wgslsmith_f_op_f32(exp2(var_2.b.x)), global0.d, Struct_1(1i), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(548f, var_2.d.x))))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(var_2.e))));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_1) -> u32 {
    var var_0 = any(select(select(select(!vec3<bool>(false, global0.a, global0.a), select(vec3<bool>(false, arg_0.a, arg_0.a), vec3<bool>(global0.a, false, true), false), vec3<bool>(true, true, false)), select(vec3<bool>(global0.a, global0.a, global0.a), !vec3<bool>(global0.a, global0.a, arg_0.a), select(vec3<bool>(arg_0.a, global0.a, false), vec3<bool>(false, false, true), false)), !vec3<bool>(arg_0.a, false, global0.a)), !(!select(vec3<bool>(true, global0.a, false), vec3<bool>(true, false, arg_0.a), global0.a)), global0.a));
    var var_1 = Struct_3(select(any(select(!vec3<bool>(true, arg_0.a, true), vec3<bool>(true, true, true), !global0.a)), 0i == firstTrailingBit(-arg_1.a), global0.a), _wgslsmith_f_op_vec2_f32(max(arg_0.b, arg_0.d)), Struct_1(_wgslsmith_mod_i32(abs(-60614i), func_2().c.a) ^ arg_1.a), vec2<f32>(_wgslsmith_f_op_f32(971f + -810f), 407f), global0.e);
    var_1 = arg_0;
    global1 = array<Struct_1, 8>();
    var_0 = false;
    return u_input.b.x;
}

fn func_1() -> Struct_3 {
    let var_0 = ~abs(func_4(func_2(), global0.c));
    var var_1 = vec3<bool>(all(!(!select(vec3<bool>(false, true, true), vec3<bool>(true, false, global0.a), vec3<bool>(global0.a, global0.a, false)))), false, _wgslsmith_add_u32(reverseBits(u_input.b.x) & 59078u, u_input.a.x) <= var_0);
    var var_2 = _wgslsmith_clamp_vec2_i32(max(reverseBits(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.c, u_input.d.x), vec2<i32>(2147483647i, -19091i))), _wgslsmith_sub_vec2_i32(u_input.d, select(vec2<i32>(u_input.d.x, global0.c.a), u_input.d, vec2<bool>(var_1.x, false)))), -_wgslsmith_mod_vec2_i32(u_input.d, abs(firstLeadingBit(vec2<i32>(u_input.d.x, global0.c.a)))), firstTrailingBit(~(select(vec2<i32>(u_input.d.x, 54198i), u_input.d, var_1.zx) >> (vec2<u32>(var_0, 33992u) % vec2<u32>(32u)))));
    let var_3 = func_2();
    var_1 = vec3<bool>(all(select(!vec4<bool>(true, var_3.a, global0.a, true), vec4<bool>(all(vec4<bool>(true, global0.a, global0.a, true)), any(vec3<bool>(true, var_3.a, true)), var_1.x, !global0.a), false)), true, !(!(!var_3.a)));
    return Struct_3(-2147483647i < u_input.d.x, vec2<f32>(global0.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(955f)))), Struct_1(i32(-1i) * -u_input.c), var_3.b, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global0.e) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.b.x, var_3.d.x, 1219f, -828f) - global0.e)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-var_3.e))))));
}

fn func_5(arg_0: Struct_3) -> Struct_1 {
    return Struct_1(u_input.d.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0.b;
    let var_1 = Struct_2(global1[_wgslsmith_index_u32(max(~_wgslsmith_dot_vec4_u32(u_input.b, u_input.b), _wgslsmith_mod_u32(21978u, _wgslsmith_mult_u32(u_input.b.x, 29340u))) | 0u, 8u)], vec3<i32>(-1i) * -_wgslsmith_div_vec3_i32(reverseBits(vec3<i32>(u_input.c, -2147483647i, global0.c.a)), vec3<i32>(1i, -46397i, u_input.c)), func_5(func_1()), global0.d.x, global1[_wgslsmith_index_u32(u_input.b.x, 8u)]);
    global1 = array<Struct_1, 8>();
    global0 = func_2();
    let var_2 = var_1.c.a;
    let var_3 = Struct_3(any(vec4<bool>(true, true, true, true)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.d))))), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(_wgslsmith_div_u32(39300u, 47803u), _wgslsmith_dot_vec3_u32(u_input.b.xzy, u_input.b.wyx), 35730u)), u_input.b.xyw), 8u)], global0.d, _wgslsmith_f_op_vec4_f32(vec4<f32>(-1571f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.d)), global0.e.x, _wgslsmith_f_op_f32(var_1.d * _wgslsmith_f_op_f32(-global0.d.x))) + func_1().e));
    global0 = func_2();
    global0 = Struct_3(true, vec2<f32>(_wgslsmith_f_op_f32(1267f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * _wgslsmith_f_op_f32(var_1.d - var_3.e.x))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-725f)) * _wgslsmith_f_op_f32(var_0.x + 841f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.d))))), global1[_wgslsmith_index_u32(23125u, 8u)], _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.b.x, var_3.d.x))) - vec2<f32>(_wgslsmith_f_op_f32(1356f + 497f), global0.d.x))), var_3.e);
    var var_4 = !select(vec3<bool>(global0.a, false | !var_3.a, !global0.a), vec3<bool>(!global0.a && func_1().a, var_3.a, var_3.a), var_3.a);
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.b.zzy, ~(_wgslsmith_div_u32(u_input.b.x, _wgslsmith_mod_u32(24228u, 25520u)) << (u_input.a.x % 32u)), ~vec4<i32>(var_2, global0.c.a, 2147483647i, ~firstTrailingBit(2147483647i)));
}

