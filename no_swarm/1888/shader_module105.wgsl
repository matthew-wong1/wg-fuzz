struct Struct_1 {
    a: vec4<f32>,
    b: f32,
    c: bool,
    d: vec4<f32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<bool>,
    c: vec2<bool>,
}

struct Struct_4 {
    a: u32,
    b: vec4<u32>,
    c: vec2<bool>,
    d: Struct_2,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<u32>,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 5>;

var<private> global1: vec3<f32>;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: vec3<i32>) -> f32 {
    let var_0 = min(_wgslsmith_div_vec4_u32(vec4<u32>(0u, 61871u, u_input.c.x, max(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.c.x, 40117u), vec3<u32>(4294967295u, 36458u, u_input.c.x)), _wgslsmith_mult_u32(u_input.c.x, 32050u))), vec4<u32>(_wgslsmith_div_u32(0u, ~934u), abs(10185u), ~(~u_input.c.x), u_input.c.x)), vec4<u32>(14401u, u_input.c.x, select(~(~45540u), u_input.c.x, all(vec3<bool>(true, false, false))), u_input.c.x));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1479f), global1.x)) - global1.x) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x * _wgslsmith_f_op_f32(ceil(109f))) * -736f));
    let var_2 = Struct_3(Struct_2(!any(select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, true), false))), vec2<bool>(true, true), vec2<bool>(!all(select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false), true)), true));
    var var_3 = ~min(_wgslsmith_add_vec4_i32(firstLeadingBit(vec4<i32>(0i, u_input.a, u_input.b, arg_0.x)), ~_wgslsmith_div_vec4_i32(vec4<i32>(25729i, arg_0.x, u_input.a, arg_0.x), vec4<i32>(u_input.b, arg_0.x, u_input.b, u_input.a))), (vec4<i32>(-1i) * -vec4<i32>(1i, 7456i, 1i, 5933i)) & -abs(vec4<i32>(11543i, -1i, arg_0.x, arg_0.x)));
    var_3 = _wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, 2147483647i, arg_0.x, i32(-1i) * -2147483647i), reverseBits(-vec4<i32>(~(-2147483647i), ~0i, ~(-46454i), arg_0.x)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(330f * 407f))));
}

fn func_4(arg_0: vec4<u32>, arg_1: f32, arg_2: f32) -> bool {
    var var_0 = Struct_3(Struct_2(all(!select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false)))), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(~105103u == _wgslsmith_sub_u32(u_input.c.x, arg_0.x), true)), select(vec2<bool>(true, true), select(!select(vec2<bool>(false, false), vec2<bool>(true, true), true), select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, false), true), true), arg_2 < arg_1), select(!select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true)), select(select(vec2<bool>(false, false), vec2<bool>(true, true), false), select(vec2<bool>(true, true), vec2<bool>(false, false), false), u_input.b < u_input.a), vec2<bool>(true, true))));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-356f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_2 - -1735f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1887f * -1067f), _wgslsmith_f_op_f32(-arg_2)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(207f, arg_1)) * _wgslsmith_div_f32(arg_1, -719f))) * vec4<f32>(1f, 1f, 1f, 1f)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_2, arg_2, arg_1, -227f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(237f, 241f, -634f, arg_2)))) + vec4<f32>(_wgslsmith_f_op_f32(arg_1 * arg_1), _wgslsmith_f_op_f32(round(arg_1)), _wgslsmith_f_op_f32(abs(1000f)), _wgslsmith_f_op_f32(arg_1 - -1488f))) * _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_1, 264f, arg_1, 266f)))))));
    global1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-2509f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1306f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) - 346f)));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)), _wgslsmith_f_op_f32(-var_1.x)))) * _wgslsmith_f_op_f32(arg_1 + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1144f))))));
    global1 = _wgslsmith_f_op_vec3_f32(var_1.xyz + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_1.zwy + var_1.yxx) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-444f, var_1.x, 1145f), var_1.yxz, var_0.b.x))) * _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(step(var_1.zwx, vec3<f32>(arg_2, arg_2, var_1.x))), var_1.zzy))), var_1.zwx, select(vec3<bool>(all(vec3<bool>(var_0.a.a, var_0.c.x, true)), var_0.b.x, all(vec3<bool>(false, true, false))), vec3<bool>(!var_0.c.x, var_0.b.x || true, true), _wgslsmith_f_op_f32(max(-1440f, arg_1)) < -258f))));
    return var_0.b.x;
}

fn func_2(arg_0: f32, arg_1: bool, arg_2: Struct_1, arg_3: bool) -> i32 {
    global0 = array<Struct_4, 5>();
    global0 = array<Struct_4, 5>();
    global1 = _wgslsmith_div_vec3_f32(arg_2.a.yzy, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global1.x, 133f, true || arg_2.c)) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(1595f))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-137f, _wgslsmith_f_op_f32(-1338f + arg_2.a.x))), arg_2.b));
    let var_0 = Struct_3(Struct_2(func_4(~select(vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.c.x), vec4<u32>(52223u, 71u, 4294967295u, 35952u), arg_1), 1139f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2360f * arg_2.d.x) + _wgslsmith_f_op_f32(func_3(vec3<i32>(-1i, u_input.a, 0i)))))), select(!vec2<bool>(true | arg_1, func_4(vec4<u32>(4294967295u, u_input.c.x, u_input.c.x, u_input.c.x), arg_0, global1.x)), !vec2<bool>(global1.x >= 1017f, any(vec3<bool>(true, arg_1, false))), select(!(!vec2<bool>(arg_1, arg_2.c)), vec2<bool>(true, true), vec2<bool>(true, true))), select(vec2<bool>(arg_3, arg_3), select(select(!vec2<bool>(arg_1, false), vec2<bool>(arg_1, arg_3), arg_3), vec2<bool>(true, arg_2.c), select(!vec2<bool>(arg_2.c, false), !vec2<bool>(arg_3, arg_3), !vec2<bool>(arg_1, arg_1))), !arg_3));
    return firstTrailingBit(u_input.a);
}

fn func_1(arg_0: Struct_1, arg_1: Struct_4) -> f32 {
    let var_0 = arg_0.a.x;
    var var_1 = (u_input.b ^ -func_2(_wgslsmith_f_op_f32(trunc(global1.x)), u_input.b > u_input.a, Struct_1(vec4<f32>(2696f, arg_0.a.x, arg_0.d.x, var_0), -1023f, true, arg_0.a), select(arg_1.e.x, true, arg_1.c.x))) & 98687i;
    var var_2 = _wgslsmith_dot_vec3_u32(arg_1.b.zzw, _wgslsmith_add_vec3_u32(_wgslsmith_add_vec3_u32(reverseBits(~arg_1.b.xwx), abs(_wgslsmith_sub_vec3_u32(arg_1.b.wzw, vec3<u32>(arg_1.b.x, u_input.c.x, 21875u)))), arg_1.b.xzz));
    global0 = array<Struct_4, 5>();
    let var_3 = _wgslsmith_f_op_vec3_f32(arg_0.d.zxw * _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2794f) - _wgslsmith_f_op_f32(global1.x - var_0)), arg_0.a.x, -1468f)));
    return global1.x;
}

fn func_5(arg_0: f32, arg_1: f32, arg_2: u32) -> vec2<u32> {
    global0 = array<Struct_4, 5>();
    var var_0 = reverseBits(_wgslsmith_mod_vec2_u32(u_input.c, firstLeadingBit(vec2<u32>(arg_2, u_input.c.x))) ^ vec2<u32>(firstTrailingBit(~56902u), ~u_input.c.x | ~64531u));
    var var_1 = Struct_2(!all(vec4<bool>(any(vec4<bool>(true, false, false, false)), all(vec2<bool>(false, true)), true, true)));
    var var_2 = select(_wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.b, reverseBits(u_input.b), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, 9155i, u_input.b), vec3<i32>(1i, u_input.a, 1i))), _wgslsmith_clamp_vec3_i32(-(~vec3<i32>(u_input.b, 1i, u_input.a)), vec3<i32>(u_input.a, u_input.a, ~u_input.a), vec3<i32>(firstTrailingBit(-2147483647i), 1i, u_input.b))), u_input.a, var_1.a);
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-699f * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0))))) * _wgslsmith_f_op_f32(-arg_1));
    return vec2<u32>(4294967295u, 4294967295u);
}

fn func_6(arg_0: vec2<u32>, arg_1: vec4<f32>, arg_2: Struct_1) -> Struct_2 {
    global1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(296f, 827f, -1486f))) - vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global1.x))), arg_2.a.x, arg_1.x)), arg_2.a.wwx);
    var var_0 = Struct_3(Struct_2(select(any(vec4<bool>(false, true, arg_2.c, arg_2.c)), !arg_2.c, false)), select(vec2<bool>(any(vec3<bool>(true, arg_2.c, arg_2.c)) & true, (arg_2.c & true) && true), select(!vec2<bool>(arg_2.c, arg_2.c), vec2<bool>(arg_2.c, arg_2.c), select(select(vec2<bool>(false, false), vec2<bool>(arg_2.c, true), true), vec2<bool>(arg_2.c, false), select(vec2<bool>(true, arg_2.c), vec2<bool>(false, false), arg_2.c))), !select(select(vec2<bool>(false, false), vec2<bool>(false, arg_2.c), vec2<bool>(arg_2.c, true)), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(arg_2.c, arg_2.c)), !vec2<bool>(arg_2.c, arg_2.c))), !select(vec2<bool>(!arg_2.c, arg_2.c), !select(vec2<bool>(arg_2.c, arg_2.c), vec2<bool>(false, true), true), true && (arg_2.c | arg_2.c)));
    var var_1 = vec2<u32>(arg_0.x, u_input.c.x);
    let var_2 = select(!select(vec3<bool>(true, true, true), select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, var_0.c.x), false), !vec3<bool>(var_0.a.a, arg_2.c, false), vec3<bool>(var_0.c.x, var_0.c.x, arg_2.c)), all(select(vec3<bool>(arg_2.c, true, arg_2.c), vec3<bool>(arg_2.c, var_0.a.a, var_0.c.x), true))), !(!(!(!vec3<bool>(var_0.b.x, arg_2.c, arg_2.c)))), func_4(~vec4<u32>(arg_0.x, 3922u, 4294967295u, var_1.x), _wgslsmith_f_op_f32(floor(global1.x)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x + arg_1.x))))));
    var var_3 = arg_2;
    return var_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(func_6(func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_1(vec4<f32>(global1.x, -715f, 1000f, global1.x), -277f, false, vec4<f32>(191f, 484f, -116f, -581f)), global0[_wgslsmith_index_u32(0u, 5u)]))), 572f, 4294967295u >> (_wgslsmith_mod_u32(u_input.c.x, u_input.c.x) % 32u)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(func_1(Struct_1(vec4<f32>(global1.x, global1.x, 616f, -1307f), 143f, true, vec4<f32>(-652f, global1.x, global1.x, global1.x)), Struct_4(u_input.c.x, vec4<u32>(u_input.c.x, u_input.c.x, 20544u, 0u), vec2<bool>(true, false), Struct_2(false), vec2<bool>(true, true)))), _wgslsmith_f_op_f32(f32(-1f) * -194f), _wgslsmith_f_op_f32(global1.x - global1.x), _wgslsmith_f_op_f32(round(global1.x))))), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-global1.x), 174f, _wgslsmith_f_op_f32(abs(-995f)), _wgslsmith_f_op_f32(round(global1.x))), _wgslsmith_f_op_f32(max(-430f, _wgslsmith_f_op_f32(sign(-1000f)))), _wgslsmith_div_i32(u_input.a, u_input.a) >= (u_input.a & u_input.b), vec4<f32>(_wgslsmith_f_op_f32(-global1.x), -850f, 1f, global1.x))), select(select(select(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false)), select(vec2<bool>(true, true), vec2<bool>(false, true), false), all(vec3<bool>(false, false, true))), select(vec2<bool>(true, true), vec2<bool>(true, true), select(false, true, true)), !select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true))), vec2<bool>(true, true), !select(vec2<bool>(true, true), vec2<bool>(false, true), true)), vec2<bool>(all(vec4<bool>(any(vec4<bool>(false, true, true, false)), all(vec2<bool>(true, true)), u_input.c.x >= u_input.c.x, true)), !any(vec3<bool>(true, true, false))));
    var var_1 = var_0.a;
    var var_2 = ~(~_wgslsmith_div_vec3_u32(vec3<u32>(~u_input.c.x, u_input.c.x >> (u_input.c.x % 32u), _wgslsmith_div_u32(1u, u_input.c.x)), vec3<u32>(func_5(1142f, global1.x, u_input.c.x).x, _wgslsmith_mult_u32(u_input.c.x, u_input.c.x), min(u_input.c.x, u_input.c.x))));
    var_2 = _wgslsmith_add_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(var_2.x, func_5(_wgslsmith_f_op_f32(floor(global1.x)), _wgslsmith_f_op_f32(f32(-1f) * -927f), ~0u).x, reverseBits(u_input.c.x) << (1u % 32u)), ~(~vec3<u32>(1u, u_input.c.x, 31468u)) >> ((~vec3<u32>(u_input.c.x, u_input.c.x, var_2.x) >> ((vec3<u32>(u_input.c.x, var_2.x, var_2.x) | vec3<u32>(var_2.x, 1u, var_2.x)) % vec3<u32>(32u))) % vec3<u32>(32u)), ~(~firstLeadingBit(vec3<u32>(u_input.c.x, 8042u, 54802u)))), ~vec3<u32>(1u, select(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(var_2.x, var_2.x), vec2<u32>(25998u, 1u)), true), 1u));
    let var_3 = select(countOneBits(u_input.b), _wgslsmith_div_i32(u_input.a, -firstLeadingBit(u_input.a)), true);
    var_2 = vec3<u32>(_wgslsmith_sub_u32(1u, u_input.c.x), 20465u, 1u);
    var var_4 = select(_wgslsmith_add_vec4_i32(_wgslsmith_clamp_vec4_i32(select(_wgslsmith_div_vec4_i32(vec4<i32>(29503i, var_3, u_input.a, u_input.b), vec4<i32>(16547i, 2147483647i, var_3, 0i)), abs(vec4<i32>(-47601i, -8453i, u_input.b, var_3)), select(vec4<bool>(var_0.a.a, true, true, false), vec4<bool>(false, false, true, var_0.a.a), vec4<bool>(true, true, var_0.b.x, true))), min(-vec4<i32>(u_input.b, 9307i, u_input.b, u_input.a), -vec4<i32>(-11237i, -1i, u_input.a, 0i)), abs(vec4<i32>(var_3, var_3, var_3, u_input.b))), -countOneBits(vec4<i32>(0i, 1i, 2147483647i, -1i) | vec4<i32>(var_3, -1658i, var_3, u_input.a))), _wgslsmith_add_vec4_i32(_wgslsmith_mult_vec4_i32(-vec4<i32>(var_3, var_3, u_input.a, var_3), max(~vec4<i32>(var_3, var_3, -1i, -1i), -vec4<i32>(1i, -1i, var_3, -2147483647i))), vec4<i32>(_wgslsmith_sub_i32(var_3 << (u_input.c.x % 32u), var_3), -(~u_input.b), 0i, 12473i)), select(vec4<bool>(var_1.a | true, var_0.c.x, all(select(vec4<bool>(false, var_0.c.x, var_0.c.x, var_0.b.x), vec4<bool>(var_0.b.x, var_0.c.x, true, true), vec4<bool>(var_0.a.a, false, var_0.a.a, false))), any(select(var_0.c, vec2<bool>(var_0.c.x, var_1.a), vec2<bool>(var_1.a, true)))), vec4<bool>(~u_input.c.x <= (var_2.x | u_input.c.x), any(!vec3<bool>(true, true, var_0.b.x)), true, true), vec4<bool>(any(select(var_0.c, vec2<bool>(true, var_0.a.a), var_0.b)), true, !(var_0.c.x != false), any(select(vec3<bool>(false, true, false), vec3<bool>(var_1.a, true, var_1.a), vec3<bool>(false, false, true))))));
    var_4 = firstTrailingBit(~select(vec4<i32>(~0i, reverseBits(var_3), -52080i, select(var_4.x, 1i, var_0.c.x)), min(vec4<i32>(u_input.a, var_4.x, 21362i, var_3), countOneBits(vec4<i32>(u_input.b, 1i, -44717i, -2147483647i))), !select(vec4<bool>(false, false, true, true), vec4<bool>(true, var_1.a, var_1.a, true), var_0.b.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-725f, -733f)) - _wgslsmith_f_op_f32(ceil(-1876f))), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(1101f, global1.x), _wgslsmith_f_op_f32(f32(-1f) * -113f))), _wgslsmith_f_op_f32(-global1.x), global1.x))), reverseBits(~(~_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.c.x, var_2.x, 4294967295u), vec3<u32>(u_input.c.x, u_input.c.x, 19960u)))), func_5(global1.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1968f - global1.x), _wgslsmith_f_op_f32(233f * global1.x)), u_input.c.x).x | var_2.x, global1.x);
}

