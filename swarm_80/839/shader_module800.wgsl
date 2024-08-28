struct Struct_1 {
    a: vec2<i32>,
    b: i32,
    c: u32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: vec4<i32>,
    d: i32,
}

struct Struct_3 {
    a: bool,
    b: u32,
    c: f32,
    d: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = i32(-2147483648);

var<private> global1: vec3<u32> = vec3<u32>(2893u, 1u, 12090u);

var<private> global2: u32 = 6302u;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
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

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: u32) -> u32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(759f, 114f, -1754f))) - vec3<f32>(-805f, 1923f, 944f)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(411f, -747f, -623f))))))) + vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1011f * 274f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-361f, -727f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(556f - -1776f) * _wgslsmith_f_op_f32(-1087f + 557f))))));
    global2 = min(~(~_wgslsmith_sub_u32(arg_0.b.c, max(u_input.a, 17432u))), arg_0.b.c);
    global2 = ~(~global1.x);
    var var_1 = Struct_3(true, 0u, var_0.x, arg_0);
    var var_2 = global1.x;
    return 12405u;
}

fn func_2(arg_0: vec3<bool>) -> Struct_2 {
    global1 = u_input.b;
    global2 = _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(func_3(Struct_2(arg_0.yy, Struct_1(vec2<i32>(0i, 0i), 50331i, 65973u), vec4<i32>(2147483647i, 2147483647i, -2147483647i, -2147483647i), -1i), vec4<i32>(-1i, 6206i, 0i, -1i), 108085u), max(1u, 0u)) ^ 51012u, countOneBits(_wgslsmith_mod_u32(~global1.x, ~1u)), u_input.b.x), _wgslsmith_sub_vec3_u32(reverseBits(u_input.b), ~u_input.b));
    let var_0 = Struct_1(-select(-vec2<i32>(2147483647i, -14067i), -firstTrailingBit(vec2<i32>(0i, -27886i)), select(arg_0.zy, arg_0.xy, arg_0.x)), -1i, u_input.b.x);
    let var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(381f, _wgslsmith_f_op_f32(644f - _wgslsmith_div_f32(-228f, -185f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1056f - -1660f)), -2652f)));
    global1 = _wgslsmith_clamp_vec3_u32(u_input.b, ~_wgslsmith_add_vec3_u32(abs(u_input.b), vec3<u32>(~global1.x, _wgslsmith_mult_u32(0u, 0u), ~1u)), countOneBits(u_input.b));
    return Struct_2(select(vec2<bool>(true, (var_0.c != 0u) & arg_0.x), arg_0.xx, arg_0.x), Struct_1(~(vec2<i32>(var_0.b, 0i) << (u_input.b.yx % vec2<u32>(32u))), _wgslsmith_sub_i32(var_0.a.x, ~(-38165i)), u_input.b.x), vec4<i32>(1i, max(reverseBits(var_0.a.x), _wgslsmith_dot_vec4_i32(~vec4<i32>(var_0.b, var_0.a.x, -1i, var_0.a.x), vec4<i32>(-49532i, var_0.a.x, 0i, 1i))), abs(var_0.b), select(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.b, 2147483647i, 31950i, 1i), _wgslsmith_div_vec4_i32(vec4<i32>(-11268i, -43671i, 37720i, 2147483647i), vec4<i32>(var_0.a.x, var_0.b, var_0.b, 23869i))), var_0.b, !any(vec4<bool>(arg_0.x, arg_0.x, false, false)))), var_0.b);
}

fn func_1() -> Struct_2 {
    return func_2(select(vec3<bool>(true, true, _wgslsmith_div_i32(-11705i, 25290i) < _wgslsmith_dot_vec3_i32(vec3<i32>(-87066i, -1i, 1i), vec3<i32>(-37236i, 72497i, 22169i))), select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), all(!select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = var_0.b.c >> (~(~max(4294967295u, u_input.a)) % 32u);
    var var_2 = max(_wgslsmith_div_vec4_u32(abs(vec4<u32>(1u, 4294967295u, 0u, 32044u)), firstTrailingBit(vec4<u32>(var_0.b.c, 28014u, var_0.b.c, var_0.b.c))) & _wgslsmith_div_vec4_u32(vec4<u32>(u_input.b.x, 58907u, u_input.a, 12585u), select(vec4<u32>(20328u, 1u, 28440u, 44936u), vec4<u32>(global1.x, 24984u, u_input.b.x, 0u), var_0.a.x)), ~(~vec4<u32>(0u, 2896u, u_input.b.x, global1.x))) << (~(~(~max(vec4<u32>(0u, u_input.a, global1.x, 57665u), vec4<u32>(1u, global1.x, 14029u, 43631u)))) % vec4<u32>(32u));
    var var_3 = func_2(vec3<bool>(true, var_0.a.x, ~_wgslsmith_sub_u32(var_2.x, 1u) > _wgslsmith_sub_u32(~global1.x, countOneBits(22824u)))).b;
    var var_4 = u_input.b.x;
    let var_5 = !var_0.a.x;
    let var_6 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1827f + 1266f) - _wgslsmith_f_op_f32(-1147f * 1376f)) - _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-683f, -439f)))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(284f - 1000f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(2484f + -722f), -741f))))));
    var var_7 = global1.xz;
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_dot_vec3_u32(~u_input.b, ~(~u_input.b)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_6, -1353f, -335f), vec3<f32>(-1000f, -431f, 596f))))))), abs(23584i), _wgslsmith_f_op_f32(var_6 - _wgslsmith_div_f32(-119f, 929f)));
}

