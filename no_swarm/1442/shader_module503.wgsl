struct Struct_1 {
    a: i32,
    b: vec2<bool>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
    c: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 7>;

var<private> global1: Struct_1 = Struct_1(-4128i, vec2<bool>(true, true));

var<private> global2: vec2<f32> = vec2<f32>(1983f, -952f);

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> i32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(617f, global2.x)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(global2.x, global2.x), vec2<f32>(global2.x, global2.x)))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, 1181f) * vec2<f32>(global2.x, global2.x)), vec2<f32>(global2.x, global2.x)))))));
    global2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global2.x, var_0.x, false))), _wgslsmith_f_op_f32(ceil(var_0.x)));
    global2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.x, global2.x));
    global2 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1023f), _wgslsmith_f_op_f32(floor(global2.x)))))) * _wgslsmith_div_f32(-1000f, -793f)), _wgslsmith_f_op_f32(f32(-1f) * -636f));
    let var_1 = global1.a;
    return -(((-7955i >> (min(1u, u_input.c) % 32u)) << (4294967295u % 32u)) ^ _wgslsmith_sub_i32(u_input.a.x, u_input.b.x));
}

fn func_2(arg_0: f32, arg_1: u32, arg_2: vec2<bool>, arg_3: vec2<f32>) -> vec2<f32> {
    var var_0 = u_input.a;
    global0 = array<Struct_2, 7>();
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_0))), arg_0)) + _wgslsmith_f_op_f32(f32(-1f) * -390f));
    var var_2 = global0[_wgslsmith_index_u32(~u_input.c, 7u)];
    global1 = Struct_1(_wgslsmith_div_i32(_wgslsmith_add_i32(-u_input.a.x, -18483i), abs(abs(func_3()))), vec2<bool>(arg_2.x && (~arg_1 == ~100836u), any(arg_2)));
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.x, global2.x)) * _wgslsmith_f_op_vec2_f32(arg_3 - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-403f, 1217f), arg_3)) - _wgslsmith_f_op_vec2_f32(round(vec2<f32>(arg_3.x, 2112f)))))));
}

fn func_1(arg_0: vec3<i32>) -> Struct_1 {
    global2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(abs(global2.x)), _wgslsmith_f_op_f32(max(global2.x, global2.x))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(global2.x, global2.x), vec2<f32>(-1000f, global2.x)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-616f, global2.x))), vec2<f32>(-1256f, _wgslsmith_f_op_f32(-409f + -369f)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global2.x, global2.x))) + vec2<f32>(global2.x, global2.x))))));
    global2 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(func_2(_wgslsmith_f_op_f32(613f + _wgslsmith_f_op_f32(-global2.x)), min(~u_input.c & _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 0u), vec2<u32>(u_input.c, u_input.c)), 1u), vec2<bool>(!(global2.x < global2.x), any(select(vec2<bool>(false, global1.b.x), vec2<bool>(global1.b.x, global1.b.x), false))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.x, -1000f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global2.x, global2.x))) * vec2<f32>(281f, global2.x))))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1368f, global2.x), _wgslsmith_f_op_vec2_f32(vec2<f32>(global2.x, 2225f) + _wgslsmith_f_op_vec2_f32(vec2<f32>(393f, -135f) - vec2<f32>(846f, 1302f))), global1.b)))), vec2<bool>(false & select(true, !global1.b.x, all(vec4<bool>(global1.b.x, global1.b.x, true, global1.b.x))), true & (firstLeadingBit(-12168i) <= firstLeadingBit(global1.a)))));
    let var_0 = vec3<u32>(0u, 0u, u_input.c);
    let var_1 = Struct_1(abs(-countOneBits(_wgslsmith_div_i32(2147483647i, u_input.a.x))), global1.b);
    global0 = array<Struct_2, 7>();
    return var_1;
}

fn func_4(arg_0: Struct_1, arg_1: vec2<bool>) -> Struct_1 {
    global0 = array<Struct_2, 7>();
    let var_0 = Struct_3(arg_0);
    let var_1 = Struct_1(abs(-(~(-29005i))), vec2<bool>(!any(vec3<bool>(false, arg_1.x, true)), func_1(u_input.b).b.x));
    var var_2 = vec3<i32>(-1i) * -u_input.b;
    var var_3 = global0[_wgslsmith_index_u32(u_input.c << (u_input.c % 32u), 7u)];
    return Struct_1(~2147483647i, vec2<bool>(true, arg_1.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(func_1(max(vec3<i32>(1i, 29999i, 1i) & vec3<i32>(u_input.b.x, 1i, -2095i), abs(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, global1.a), u_input.b)))), select(global1.b, select(vec2<bool>(any(vec3<bool>(false, global1.b.x, true)), true), global1.b, !(!global1.b.x)), global1.b.x));
    var var_1 = 1u;
    let var_2 = vec2<bool>(any(vec4<bool>(global1.b.x, !(var_0.b.x || var_0.b.x), false, all(vec4<bool>(true, true, true, false)))), var_0.b.x);
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.x) - _wgslsmith_f_op_vec2_f32(func_2(_wgslsmith_f_op_f32(f32(-1f) * -1224f), ~(u_input.c >> (~u_input.c % 32u)), vec2<bool>(false, var_2.x), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global2.x + global2.x), global2.x), _wgslsmith_f_op_f32(trunc(global2.x))))).x);
    let var_4 = (_wgslsmith_dot_vec4_u32(~(~vec4<u32>(u_input.c, u_input.c, u_input.c, 33273u)), firstLeadingBit(~vec4<u32>(u_input.c, 67509u, 4294967295u, u_input.c))) | reverseBits(43000u)) <= 27484u;
    var var_5 = Struct_4(Struct_2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_vec2_f32(func_2(_wgslsmith_f_op_f32(var_3 * -781f), 1u, func_4(var_0, vec2<bool>(var_2.x, false)).b, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global2.x, global2.x), vec2<f32>(global2.x, -291f), true)))).x))), global0[_wgslsmith_index_u32(min(max(~u_input.c, _wgslsmith_mod_u32(4294967295u, u_input.c)) >> (u_input.c % 32u), _wgslsmith_mod_u32(3181u, u_input.c)), 7u)], -2147483647i);
    let var_6 = Struct_2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.x + 1265f) - -963f))), -1000f, true)));
    let var_7 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(-2735f, -302f, global2.x, var_5.b.a) - vec4<f32>(1000f, 778f, var_3, -1199f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_3, 338f, 1091f, var_5.a.a), vec4<f32>(997f, var_3, var_5.a.a, -998f), vec4<bool>(global1.b.x, false, var_0.b.x, var_7.b.x))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, var_3, -1277f, var_5.a.a) - vec4<f32>(global2.x, -1649f, 207f, 107f))) - _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(347f, global2.x, 611f, var_3), vec4<f32>(global2.x, -1388f, 691f, var_5.b.a)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_3, var_5.a.a, var_6.a, global2.x)))))), vec3<i32>(_wgslsmith_add_i32(-35862i, _wgslsmith_mult_i32(1i, 1i) & _wgslsmith_mult_i32(var_0.a, global1.a)), select(func_1(u_input.b).a, _wgslsmith_dot_vec2_i32(abs(u_input.a), abs(u_input.b.yx)), var_0.b.x), _wgslsmith_clamp_i32(-1i, ~6440i, abs(-2147483647i))));
}

