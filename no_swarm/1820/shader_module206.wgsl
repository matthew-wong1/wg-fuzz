struct Struct_1 {
    a: i32,
    b: bool,
    c: i32,
    d: f32,
    e: f32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: bool,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 13>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec3<bool>) -> vec4<bool> {
    let var_0 = -(vec3<i32>(-1i) * -abs(vec3<i32>(u_input.b, u_input.c.x, -2147483647i)));
    let var_1 = select(max(abs(u_input.a), vec2<u32>(4294967295u, ~u_input.a.x)), firstLeadingBit(vec2<u32>(_wgslsmith_clamp_u32(u_input.a.x, 24123u, _wgslsmith_dot_vec3_u32(vec3<u32>(3299u, 0u, u_input.a.x), vec3<u32>(4294967295u, 5417u, u_input.a.x))), _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, 4294967295u), vec3<u32>(8112u, 33682u, u_input.a.x)), ~vec3<u32>(9138u, 1u, 41264u)))), arg_0.x);
    var var_2 = ~4294967295u;
    var var_3 = 270f;
    let var_4 = var_1.x;
    return vec4<bool>(true, !(_wgslsmith_mod_i32(u_input.c.x, 1i) != u_input.c.x), (var_1.x & _wgslsmith_div_u32(abs(var_4), u_input.a.x & 25813u)) != u_input.a.x, arg_0.x);
}

fn func_2() -> u32 {
    var var_0 = vec3<f32>(1f, 1f, 1f);
    var var_1 = select(select(vec4<bool>(true, true, true, true), func_3(vec3<bool>(false, true, false)), all(func_3(vec3<bool>(true, true, true)))), vec4<bool>(true, true, true, true), true);
    let var_2 = _wgslsmith_f_op_f32(-var_0.x);
    let var_3 = 0u;
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2085f)));
    return ~0u;
}

fn func_4(arg_0: u32) -> vec2<bool> {
    global0 = array<vec2<bool>, 13>();
    var var_0 = !all(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true), false), func_3(vec3<bool>(true, true, false)).x)) & (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(2764f * 881f)))) == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(-1445f, -1068f)))) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(1200f, -613f)), _wgslsmith_f_op_f32(286f - 277f)))));
    let var_1 = Struct_3(Struct_2(global0[_wgslsmith_index_u32(~(~_wgslsmith_div_u32(arg_0, 0u)), 13u)], Struct_1(~u_input.b, true, 2147483647i, 1196f, -273f), !any(vec4<bool>(false, false, false, false))));
    var var_2 = Struct_3(Struct_2(func_3(select(vec3<bool>(false, true, var_1.a.c), vec3<bool>(var_1.a.c, true, var_1.a.b.b), vec3<bool>(false, true, var_1.a.b.b))).zw, Struct_1(~u_input.c.x, (var_1.a.b.a < u_input.c.x) || all(vec3<bool>(var_1.a.c, true, false)), -1008i, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_1.a.b.e), _wgslsmith_f_op_f32(ceil(var_1.a.b.e)))), var_1.a.b.d), all(select(!vec3<bool>(false, false, var_1.a.c), !vec3<bool>(var_1.a.a.x, var_1.a.c, var_1.a.b.b), all(vec2<bool>(true, var_1.a.c))))));
    let var_3 = var_2.a.b;
    return var_2.a.a;
}

fn func_1(arg_0: vec4<u32>, arg_1: vec2<i32>) -> Struct_3 {
    let var_0 = Struct_2(func_4(func_2()), Struct_1(arg_1.x, func_4(~1u).x != !(u_input.b != arg_1.x), abs(countOneBits(u_input.b)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(257f)))), 315f), _wgslsmith_f_op_f32(floor(2274f))), false);
    let var_1 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_0.b.d, var_0.b.e, var_0.b.e)))) - vec3<f32>(_wgslsmith_f_op_f32(round(1661f)), _wgslsmith_f_op_f32(var_0.b.d * var_0.b.d), var_0.b.e))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-393f, 155f, 1116f), vec3<f32>(-430f, var_0.b.e, var_0.b.d))), vec3<f32>(var_0.b.d, var_0.b.e, var_0.b.d)) + _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(197f, var_0.b.e, var_0.b.d)))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(1170f, -1246f, var_0.b.d) * vec3<f32>(-1783f, -244f, var_0.b.e)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-985f, var_0.b.d, 837f), vec3<f32>(var_0.b.e, 1769f, var_0.b.e), vec3<bool>(false, true, true))) * vec3<f32>(1f, 1f, 1f))))));
    let var_2 = var_0.b;
    var var_3 = ~(~arg_0);
    var var_4 = vec3<bool>(false, false, var_2.b);
    return Struct_3(Struct_2(!var_0.a, Struct_1(firstLeadingBit(-arg_1.x), false, ~var_0.b.a, _wgslsmith_div_f32(-2459f, -1060f), _wgslsmith_f_op_f32(abs(-454f))), var_4.x));
}

fn func_5(arg_0: Struct_3, arg_1: Struct_3, arg_2: vec4<u32>, arg_3: vec3<f32>) -> Struct_2 {
    return arg_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<bool>, 13>();
    let var_0 = Struct_3(func_5(Struct_3(Struct_2(vec2<bool>(true, true), Struct_1(u_input.b, false, 38390i, 1391f, -432f), false)), func_1(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 1u), _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.b, u_input.c.x), u_input.c.xw) ^ -u_input.c.yw), ~_wgslsmith_div_vec4_u32(max(vec4<u32>(u_input.a.x, 1u, u_input.a.x, u_input.a.x), vec4<u32>(33402u, u_input.a.x, 0u, 0u)), abs(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 36287u))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1040f, _wgslsmith_f_op_f32(floor(496f)), 171f))));
    let var_1 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1110f, var_0.a.b.d, var_0.a.b.e, 352f) + vec4<f32>(var_0.a.b.e, var_0.a.b.d, 530f, 1920f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0.a.b.d, var_0.a.b.e, 533f, var_0.a.b.d))) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1183f, var_0.a.b.d, var_0.a.b.e, var_0.a.b.e), vec4<f32>(var_0.a.b.d, -1924f, var_0.a.b.d, -296f), vec4<bool>(var_0.a.b.b, var_0.a.c, var_0.a.c, true))))))));
    var var_2 = func_1(_wgslsmith_sub_vec4_u32(~(firstLeadingBit(vec4<u32>(0u, 14562u, 6902u, u_input.a.x)) ^ abs(vec4<u32>(37464u, u_input.a.x, u_input.a.x, 1u))), abs(_wgslsmith_clamp_vec4_u32(~vec4<u32>(34497u, 31258u, 1u, 4294967295u), vec4<u32>(1u, u_input.a.x, u_input.a.x, u_input.a.x), abs(vec4<u32>(u_input.a.x, 96704u, u_input.a.x, u_input.a.x))))), -firstLeadingBit(firstLeadingBit(_wgslsmith_div_vec2_i32(vec2<i32>(var_0.a.b.a, 451i), u_input.c.yy))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(var_1.yxw * vec3<f32>(_wgslsmith_f_op_f32(step(var_1.x, var_0.a.b.d)), var_1.x, var_2.a.b.e)), var_1.yzy));
}

