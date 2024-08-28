struct Struct_1 {
    a: u32,
    b: i32,
    c: f32,
    d: vec4<f32>,
    e: bool,
}

struct Struct_2 {
    a: i32,
    b: vec4<f32>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec3<f32>,
    c: vec4<bool>,
    d: i32,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: bool,
    b: Struct_3,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: Struct_5 = Struct_5(true, Struct_3(vec2<i32>(-39050i, -1i), vec3<f32>(-1283f, 613f, -290f), vec4<bool>(true, true, true, true), 37422i, Struct_2(38555i, vec4<f32>(104f, -1060f, -643f, 1214f), Struct_1(4294967295u, -26455i, -890f, vec4<f32>(883f, -1000f, -483f, -1141f), false))), Struct_1(1u, 1i, -339f, vec4<f32>(361f, -189f, 231f, -1094f), true));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_1(arg_0: Struct_5, arg_1: vec2<i32>, arg_2: Struct_5) -> vec4<i32> {
    global0 = arg_0.b.a.x;
    var var_0 = any(select(arg_0.b.c, !select(select(vec4<bool>(global1.c.e, true, true, global1.a), global1.b.c, arg_0.b.e.c.e), global1.b.c, select(false, false, global1.c.e)), !(!select(arg_0.b.c, vec4<bool>(true, true, false, arg_0.b.c.x), vec4<bool>(true, true, true, global1.a)))));
    var_0 = !(_wgslsmith_mod_u32(~(arg_2.b.e.c.a & arg_2.b.e.c.a), ~countOneBits(u_input.a.x)) == u_input.a.x);
    var var_1 = 25196u;
    let var_2 = ~(~_wgslsmith_div_u32(min(32230u, arg_0.c.a), 80697u) >> (_wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(26133u, global1.c.a & 4294967295u)) % 32u));
    return _wgslsmith_sub_vec4_i32(countOneBits(~(~(-vec4<i32>(arg_0.b.d, arg_0.b.e.c.b, 2147483647i, 0i)))), -(~vec4<i32>(1i, arg_1.x, -31291i, arg_0.b.d) ^ reverseBits(vec4<i32>(22841i, -12681i, arg_2.b.a.x, 1i) & vec4<i32>(-2147483647i, arg_0.b.d, -1i, -21574i))));
}

fn func_3(arg_0: Struct_3) -> vec4<i32> {
    global1 = Struct_5(!(!any(vec2<bool>(true, false))), Struct_3(global1.b.a, arg_0.b, arg_0.c, global1.b.a.x >> (firstLeadingBit(abs(18438u)) % 32u), Struct_2(23624i & arg_0.d, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_0.e.b)), Struct_1(u_input.a.x, 34478i, _wgslsmith_f_op_f32(-global1.b.b.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.e.b.x, 1490f, 1611f, global1.b.b.x) * vec4<f32>(-891f, -503f, arg_0.b.x, -368f)), -1477f > global1.b.e.c.c))), global1.c);
    global1 = Struct_5(all(!(!select(vec4<bool>(arg_0.e.c.e, true, arg_0.e.c.e, false), global1.b.c, vec4<bool>(global1.c.e, false, global1.b.e.c.e, true)))), Struct_3(abs(vec2<i32>(0i, reverseBits(arg_0.a.x))), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-110f, global1.c.d.x, global1.c.e)), 792f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(global1.b.e.c.d.x)), arg_0.e.c.d.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(985f, 123f)))), select(!(!arg_0.c), global1.b.c, arg_0.c), -1i, global1.b.e), Struct_1(1u, global1.b.e.a, 630f, global1.c.d, !any(vec2<bool>(global1.a, arg_0.c.x))));
    global1 = Struct_5(false, Struct_3(vec2<i32>(~_wgslsmith_mult_i32(-2147483647i, 1i), ~22350i | (arg_0.a.x >> (66742u % 32u))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(global1.b.e.b.yxw * vec3<f32>(global1.c.d.x, 1000f, arg_0.e.c.c)))), !select(!vec4<bool>(global1.a, global1.b.c.x, global1.a, arg_0.e.c.e), vec4<bool>(true, arg_0.e.c.e, arg_0.c.x, global1.a), false), global1.c.b, Struct_2(arg_0.d, arg_0.e.b, global1.c)), global1.c);
    global1 = Struct_5(arg_0.e.c.e, arg_0, arg_0.e.c);
    var var_0 = select(vec4<i32>(-41652i, arg_0.d, _wgslsmith_mult_i32(2147483647i, -1i) ^ _wgslsmith_div_i32(global1.b.d, global1.b.e.a), 1i) >> (~vec4<u32>(_wgslsmith_sub_u32(arg_0.e.c.a, 1u), ~44983u, ~u_input.a.x, 1u) % vec4<u32>(32u)), vec4<i32>(abs(func_1(Struct_5(global1.b.c.x, Struct_3(global1.b.a, global1.c.d.wwz, vec4<bool>(true, false, false, global1.b.e.c.e), -18526i, global1.b.e), global1.c), arg_0.a, Struct_5(arg_0.e.c.e, Struct_3(vec2<i32>(arg_0.e.a, 0i), vec3<f32>(arg_0.b.x, 931f, -2326f), global1.b.c, arg_0.a.x, Struct_2(-1i, global1.c.d, Struct_1(0u, arg_0.e.a, arg_0.b.x, arg_0.e.b, arg_0.e.c.e))), Struct_1(arg_0.e.c.a, global1.b.e.a, arg_0.e.b.x, vec4<f32>(arg_0.e.b.x, arg_0.b.x, -1002f, -216f), true))).x), _wgslsmith_add_i32(~(-43699i), _wgslsmith_dot_vec2_i32(global1.b.a, arg_0.a)) & global1.c.b, -2147483647i, 1345i), !vec4<bool>(-1551f == arg_0.b.x, (false || global1.c.e) && all(arg_0.c.xyz), arg_0.c.x, false));
    return vec4<i32>(_wgslsmith_div_i32(_wgslsmith_mod_i32(_wgslsmith_sub_i32(arg_0.d | global1.c.b, arg_0.d & var_0.x), abs(var_0.x & -2147483647i)), 1i), _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, -33216i, arg_0.d), ~(~(-vec3<i32>(global1.b.a.x, global1.b.e.c.b, global1.b.a.x)))), arg_0.d, _wgslsmith_div_i32(8978i, -countOneBits(var_0.x ^ arg_0.d)));
}

fn func_2(arg_0: vec4<f32>) -> vec4<i32> {
    let var_0 = global1.b.c;
    return _wgslsmith_mult_vec4_i32(func_3(Struct_3(max(_wgslsmith_add_vec2_i32(global1.b.a, global1.b.a), global1.b.a), global1.c.d.yxx, select(select(global1.b.c, vec4<bool>(true, var_0.x, false, false), global1.b.c), global1.b.c, any(vec3<bool>(global1.b.e.c.e, true, true))), global1.b.a.x, Struct_2(global1.b.a.x, vec4<f32>(global1.c.d.x, global1.c.c, global1.c.c, -530f), Struct_1(u_input.a.x, global1.b.d, -289f, vec4<f32>(224f, arg_0.x, global1.c.c, -931f), true)))), vec4<i32>(1i, _wgslsmith_div_i32(-5965i ^ global1.b.e.c.b, _wgslsmith_mult_i32(70337i, global1.c.b)) & 2147483647i, 2147483647i, global1.b.e.a));
}

fn func_4(arg_0: vec4<i32>, arg_1: i32, arg_2: Struct_4, arg_3: Struct_3) -> Struct_4 {
    global0 = ~(i32(-1i) * -11338i);
    let var_0 = vec4<u32>(~arg_2.a.c.a, 58987u, global1.b.e.c.a, 92177u);
    let var_1 = max(u_input.a.x & ~var_0.x, u_input.a.x);
    let var_2 = 50717u ^ arg_2.a.c.a;
    var var_3 = !select(select(!select(vec2<bool>(arg_3.e.c.e, true), vec2<bool>(false, false), arg_3.c.wz), select(select(vec2<bool>(arg_2.a.c.e, global1.c.e), arg_3.c.yx, arg_3.e.c.e), vec2<bool>(true, true), global1.b.c.wz), vec2<bool>(true, false)), !(!global1.b.c.yx), !(!global1.b.e.c.e));
    return Struct_4(Struct_2(~_wgslsmith_add_i32(~arg_0.x, 4608i), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(947f)) * -687f), _wgslsmith_f_op_f32(arg_3.e.c.d.x - _wgslsmith_f_op_f32(select(1629f, -789f, false))), _wgslsmith_f_op_f32(-arg_2.a.c.d.x), arg_3.b.x), global1.c));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(~(~(func_1(Struct_5(false, global1.b, global1.b.e.c), global1.b.a, Struct_5(false, Struct_3(global1.b.a, global1.c.d.wxy, global1.b.c, global1.b.a.x, Struct_2(global1.b.e.c.b, vec4<f32>(global1.b.b.x, global1.c.c, global1.c.d.x, global1.c.d.x), Struct_1(62462u, global1.c.b, 636f, vec4<f32>(global1.c.c, global1.c.c, global1.c.c, global1.c.c), false))), global1.c)) & ~vec4<i32>(global1.b.a.x, 1i, 6227i, 0i))), 16071i | _wgslsmith_dot_vec4_i32(func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-630f, global1.b.e.b.x, global1.b.b.x, global1.b.b.x))), vec4<i32>(global1.b.e.a, -global1.c.b, global1.b.a.x, 0i)), Struct_4(global1.b.e), Struct_3(reverseBits(func_2(vec4<f32>(global1.b.e.c.d.x, global1.b.e.b.x, 1006f, global1.c.d.x)).yz << (_wgslsmith_mult_vec2_u32(u_input.a, u_input.a) % vec2<u32>(32u))), _wgslsmith_div_vec3_f32(vec3<f32>(-249f, global1.b.e.b.x, _wgslsmith_f_op_f32(min(global1.b.b.x, -620f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.c.c, -1551f, global1.b.e.c.c) * vec3<f32>(global1.b.b.x, global1.b.e.c.c, -184f))), select(global1.b.c, global1.b.c, global1.b.c), _wgslsmith_div_i32(global1.c.b, -41117i), global1.b.e));
    var var_1 = _wgslsmith_mult_u32(4294967295u, var_0.a.c.a);
    var_1 = 1u;
    global1 = Struct_5(all(vec3<bool>(var_0.a.c.e, true, var_0.a.c.a >= abs(75601u))), global1.b, Struct_1(_wgslsmith_sub_u32(~(~4294967295u), var_0.a.c.a), -1i, _wgslsmith_f_op_f32(abs(-207f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-global1.c.d), vec4<f32>(557f, global1.c.c, -3483f, -847f)) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(global1.b.e.b)), vec4<f32>(global1.b.e.b.x, global1.c.c, 235f, var_0.a.c.c), !global1.a))), !(!all(global1.b.c))));
    var var_2 = 222f;
    var var_3 = 788u;
    var_1 = u_input.a.x;
    let var_4 = Struct_5(true, Struct_3(firstTrailingBit(-max(vec2<i32>(var_0.a.c.b, 1i), vec2<i32>(var_0.a.c.b, global1.c.b))), vec3<f32>(_wgslsmith_f_op_f32(max(-419f, _wgslsmith_div_f32(156f, -288f))), _wgslsmith_f_op_f32(f32(-1f) * -930f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -416f)))), select(vec4<bool>(!global1.b.e.c.e, global1.c.e, true, true), !select(vec4<bool>(false, global1.a, var_0.a.c.e, var_0.a.c.e), global1.b.c, global1.b.c), vec4<bool>(true, true, false, global1.b.c.x)), 0i, global1.b.e), var_0.a.c);
    let x = u_input.a;
    s_output = StorageBuffer(-1168f, _wgslsmith_f_op_vec2_f32(global1.b.e.b.yw - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a.b.x, 741f) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-202f, -2234f) - vec2<f32>(var_0.a.b.x, 969f))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_4.b.b.x, var_4.c.d.x)))), 1u);
}

