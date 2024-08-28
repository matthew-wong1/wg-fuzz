struct Struct_1 {
    a: vec3<bool>,
    b: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
}

struct Struct_3 {
    a: i32,
    b: u32,
}

struct Struct_4 {
    a: vec3<i32>,
    b: vec4<u32>,
    c: Struct_2,
    d: f32,
}

struct Struct_5 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: vec2<f32> = vec2<f32>(1548f, 1000f);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: f32, arg_1: vec4<i32>, arg_2: i32, arg_3: vec4<u32>) -> vec2<f32> {
    global1 = vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(632f - 130f)))))), _wgslsmith_f_op_f32(f32(-1f) * -400f));
    global1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-209f * arg_0) + _wgslsmith_f_op_f32(-global1.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x * -112f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(arg_0, arg_0), _wgslsmith_f_op_f32(round(760f)))), global1.x)) - _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(arg_0 * arg_0), _wgslsmith_f_op_f32(max(arg_0, arg_0))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(2132f, -560f), vec2<f32>(-972f, -283f), true)) - _wgslsmith_div_vec2_f32(vec2<f32>(arg_0, global1.x), vec2<f32>(539f, 1435f)))))));
    var var_0 = u_input.a << (firstLeadingBit(~(~(~u_input.a))) % vec4<u32>(32u));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(785f + -1492f), 1052f, arg_0) + vec4<f32>(-1000f, _wgslsmith_f_op_f32(round(-417f)), _wgslsmith_f_op_f32(sign(-1000f)), arg_0))));
    var_0 = arg_3;
    return var_1.ww;
}

fn func_2(arg_0: f32) -> u32 {
    global1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_f_op_f32(sign(336f)), vec4<i32>(-344i, u_input.c.x, 2147483647i, u_input.c.x), firstTrailingBit(40713i), ~vec4<u32>(4294967295u, 1u, u_input.b.x, u_input.a.x)))) + _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(1f, global1.x)))));
    var var_0 = !all(select(vec3<bool>(true, true, true), select(select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), false), select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, false, false)), vec3<bool>(false, true, true)), vec3<bool>(all(vec2<bool>(false, false)), true, true)));
    let var_1 = ~vec2<u32>(4294967295u, abs(firstTrailingBit(1u)));
    global1 = vec2<f32>(arg_0, _wgslsmith_f_op_f32(-135f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global1.x, global1.x, false))))));
    let var_2 = 789f > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))) + _wgslsmith_f_op_f32(-480f + global1.x));
    return var_1.x;
}

fn func_4(arg_0: u32, arg_1: bool) -> Struct_4 {
    let var_0 = Struct_2(Struct_1(!vec3<bool>(false, true, any(vec2<bool>(arg_1, arg_1))), !vec2<bool>(any(vec3<bool>(false, false, true)), arg_1)), vec4<i32>(-10425i, reverseBits(u_input.c.x), _wgslsmith_sub_i32(-u_input.c.x, u_input.c.x), reverseBits(_wgslsmith_sub_i32(u_input.c.x, u_input.c.x)) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(41789u, arg_0, arg_0) << (u_input.a.yyy % vec3<u32>(32u)), _wgslsmith_mult_vec3_u32(u_input.a.zzz, vec3<u32>(18450u, u_input.b.x, 4294967295u))) % 32u)));
    var var_1 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global1.x))), global1.x), vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.x, 1112f) + -547f), _wgslsmith_f_op_f32(select(global1.x, -788f, !arg_1)), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global1.x), 165f)))));
    let var_2 = var_0;
    global1 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_vec2_f32(func_3(1615f, var_2.b, var_0.b.x, _wgslsmith_mult_vec4_u32(u_input.a, vec4<u32>(u_input.a.x, u_input.a.x, u_input.b.x, arg_0) | u_input.a))).x, _wgslsmith_f_op_f32(-global1.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, _wgslsmith_div_f32(var_1.x, var_1.x))) - _wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_f_op_f32(select(-373f, global1.x, var_2.a.b.x)), vec4<i32>(-8598i, ~var_2.b.x, _wgslsmith_sub_i32(var_0.b.x, u_input.c.x), ~(-25437i)), _wgslsmith_dot_vec3_i32(abs(u_input.c), ~vec3<i32>(u_input.c.x, var_2.b.x, 10011i)), ~vec4<u32>(20502u, 0u, 20975u, u_input.a.x)))), select(true, var_2.a.a.x, any(vec2<bool>(false, all(vec4<bool>(false, false, var_0.a.a.x, arg_1)))))));
    var var_3 = Struct_5(Struct_2(Struct_1(vec3<bool>(true, true, 1u < arg_0), select(!var_0.a.b, select(vec2<bool>(false, arg_1), var_0.a.b, vec2<bool>(true, var_2.a.b.x)), var_0.a.b.x)), _wgslsmith_mult_vec4_i32(firstLeadingBit(min(vec4<i32>(5115i, -2147483647i, 40148i, -1i), vec4<i32>(var_2.b.x, u_input.c.x, u_input.c.x, -2147483647i))), ~var_2.b | vec4<i32>(2147483647i, u_input.c.x, var_0.b.x, 1i))));
    return Struct_4(-var_3.a.b.zzz, vec4<u32>(4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, arg_0, arg_0, u_input.a.x), vec4<u32>(56042u, arg_0 << (0u % 32u), ~24807u, _wgslsmith_add_u32(u_input.b.x, u_input.a.x))), 4294967295u, ~_wgslsmith_mult_u32(8054u, countOneBits(u_input.b.x))), var_0, -1265f);
}

fn func_1() -> Struct_2 {
    var var_0 = func_4(_wgslsmith_sub_u32(~_wgslsmith_sub_u32(~0u, 1u), _wgslsmith_mult_u32(select(func_2(1248f), u_input.b.x, true), ~u_input.a.x)), true);
    var_0 = func_4(71234u, var_0.c.a.b.x);
    var var_1 = _wgslsmith_f_op_f32(-global1.x);
    let var_2 = ~(vec4<u32>(57185u, ~var_0.b.x, 1u, 1u) << (u_input.a % vec4<u32>(32u)));
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.d, _wgslsmith_div_f32(1683f, global1.x), _wgslsmith_f_op_f32(-func_4(1u, false).d), var_0.d) + _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(-110f, 1023f), _wgslsmith_f_op_f32(max(-574f, var_0.d)), -594f, _wgslsmith_f_op_f32(max(807f, -323f))) * vec4<f32>(434f, _wgslsmith_f_op_f32(-global1.x), var_0.d, func_4(10413u, false).d))));
    return var_0.c;
}

fn func_5(arg_0: Struct_2) -> Struct_2 {
    var var_0 = func_4(u_input.a.x, false).c;
    let var_1 = 42247u;
    global0 = 0u;
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(sign(-884f)), _wgslsmith_f_op_f32(-global1.x), global1.x, _wgslsmith_f_op_f32(max(229f, global1.x))))), vec4<f32>(global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)), global1.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(817f * global1.x), _wgslsmith_f_op_f32(-383f * global1.x))))));
    let var_3 = 118f;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -2147483647i;
    var_0 = -(~((_wgslsmith_clamp_i32(u_input.c.x, 6045i, u_input.c.x) ^ _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c.x, u_input.c.x), u_input.c.xy)) ^ firstLeadingBit(-u_input.c.x)));
    var_0 = _wgslsmith_mult_i32(-28945i, u_input.c.x);
    var var_1 = func_5(func_1());
    let x = u_input.a;
    s_output = StorageBuffer(37273i);
}

