struct Struct_1 {
    a: bool,
    b: vec3<i32>,
}

struct Struct_2 {
    a: f32,
    b: vec4<f32>,
}

struct Struct_3 {
    a: f32,
    b: bool,
}

struct Struct_4 {
    a: i32,
}

struct Struct_5 {
    a: Struct_3,
    b: u32,
    c: Struct_1,
    d: vec4<u32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 16> = array<vec2<u32>, 16>(vec2<u32>(0u, 45028u), vec2<u32>(0u, 1u), vec2<u32>(4294967295u, 22510u), vec2<u32>(23203u, 4294967295u), vec2<u32>(1u, 1u), vec2<u32>(1u, 51234u), vec2<u32>(4294967295u, 0u), vec2<u32>(22013u, 36490u), vec2<u32>(1u, 9788u), vec2<u32>(4294967295u, 0u), vec2<u32>(4294967295u, 1u), vec2<u32>(1u, 60577u), vec2<u32>(4294967295u, 1u), vec2<u32>(4294967295u, 61523u), vec2<u32>(0u, 0u), vec2<u32>(9535u, 0u));

var<private> global1: Struct_2 = Struct_2(913f, vec4<f32>(182f, 1000f, -1009f, 1245f));

var<private> global2: array<vec2<bool>, 15>;

var<private> global3: array<vec2<u32>, 21>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> vec4<u32> {
    let var_0 = _wgslsmith_f_op_f32(round(1270f));
    global0 = array<vec2<u32>, 16>();
    global1 = Struct_2(-465f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global1.b)));
    let var_1 = Struct_4(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, u_input.a.x, u_input.a.x), u_input.a));
    global1 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(950f)), _wgslsmith_f_op_f32(f32(-1f) * -841f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1000f)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(361f)) + _wgslsmith_f_op_f32(round(global1.a)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.a, -1033f, global1.b.x, 336f) - _wgslsmith_f_op_vec4_f32(-global1.b))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(global1.b - vec4<f32>(2943f, -517f, var_0, -1681f)))) * vec4<f32>(_wgslsmith_f_op_f32(abs(969f)), _wgslsmith_f_op_f32(var_0 - -701f), _wgslsmith_f_op_f32(global1.b.x + -924f), _wgslsmith_f_op_f32(global1.b.x + global1.a)))));
    return vec4<u32>(_wgslsmith_sub_u32(firstLeadingBit(min(select(126498u, 1u, false), max(98274u, 0u))), 96032u), 4294967295u, 45073u, _wgslsmith_mult_u32(~(~34001u), _wgslsmith_mod_u32(4330u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 0u, 4294967295u, 0u), vec4<u32>(13268u, 4294967295u, 1u, 1u))) >> ((~0u >> (firstTrailingBit(0u) % 32u)) % 32u)));
}

fn func_2() -> Struct_1 {
    let var_0 = (~vec4<u32>(19525u, 1u, max(937u, 4294967295u), 1u) ^ (vec4<u32>(~15801u, 28213u, _wgslsmith_clamp_u32(0u, 23173u, 4294967295u), abs(1u)) >> (~vec4<u32>(48536u, 0u, 63872u, 58734u) % vec4<u32>(32u)))) & vec4<u32>(_wgslsmith_clamp_u32(0u, min(1u, ~0u), _wgslsmith_clamp_u32(_wgslsmith_mult_u32(515u, 1u), 1u, 4294967295u)), max(~_wgslsmith_clamp_u32(1u, 0u, 4294967295u), 9255u), ~(~(~39004u)), ~select(firstLeadingBit(74u), 1u, any(vec2<bool>(true, false))));
    var var_1 = u_input.a.x;
    var var_2 = select(vec4<u32>(max(abs(12470u) & (4294967295u | var_0.x), ~0u), var_0.x, _wgslsmith_dot_vec2_u32(var_0.wy ^ vec2<u32>(104170u, var_0.x), abs(global0[_wgslsmith_index_u32(14895u, 16u)])) | var_0.x, var_0.x), func_3(), !(!select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true))));
    global1 = Struct_2(_wgslsmith_f_op_f32(round(419f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.a, -388f, 765f, -499f)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1375f, global1.a, global1.b.x, global1.a) - vec4<f32>(global1.b.x, global1.b.x, global1.b.x, global1.a)), vec4<f32>(global1.b.x, 1427f, global1.b.x, global1.a))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(global1.b)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global1.b) * global1.b))));
    global1 = Struct_2(-628f, global1.b);
    return Struct_1(true, _wgslsmith_mult_vec3_i32(u_input.a, u_input.a));
}

fn func_1(arg_0: bool, arg_1: u32, arg_2: vec4<bool>, arg_3: i32) -> Struct_2 {
    global2 = array<vec2<bool>, 15>();
    var var_0 = 8707i;
    var var_1 = Struct_5(Struct_3(_wgslsmith_f_op_f32(floor(global1.a)), false), 1u, func_2(), vec4<u32>(1654u, ~1792u, 26916u, select(~4294967295u, 139649u, arg_0) & _wgslsmith_dot_vec2_u32(global3[_wgslsmith_index_u32(arg_1, 21u)], vec2<u32>(arg_1, 44307u) & global3[_wgslsmith_index_u32(arg_1, 21u)])), Struct_1(false, -(firstTrailingBit(u_input.a) >> (~vec3<u32>(65991u, 7454u, arg_1) % vec3<u32>(32u)))));
    let var_2 = abs(u_input.a.xy);
    let var_3 = Struct_3(-583f, true);
    return Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.b.x) - var_3.a), global1.b);
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: f32) -> Struct_5 {
    global1 = Struct_2(arg_1.a, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(707f, global1.a, -1161f, _wgslsmith_f_op_f32(-arg_2)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(global1.b.x + 1000f), global1.a, arg_1.a, arg_1.b.x)), true)));
    var var_0 = vec2<f32>(global1.a, arg_2);
    global3 = array<vec2<u32>, 21>();
    global3 = array<vec2<u32>, 21>();
    let var_1 = 121f;
    return Struct_5(Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2 * arg_2) + -901f), false), max(_wgslsmith_div_u32(1u, 4294967295u), 1u), Struct_1(any(vec3<bool>(true, true, true)), ~(min(arg_0.zwz, vec3<i32>(19552i, arg_0.x, u_input.a.x)) & (vec3<i32>(arg_0.x, arg_0.x, u_input.a.x) | u_input.a))), _wgslsmith_mod_vec4_u32(abs(~vec4<u32>(1u, 1u, 1u, 1u)), ~firstTrailingBit(countOneBits(vec4<u32>(681u, 15054u, 0u, 17225u)))), Struct_1(false, u_input.a));
}

fn func_5(arg_0: u32, arg_1: Struct_5) -> Struct_4 {
    let var_0 = arg_1.c;
    var var_1 = global1.b.xy;
    let var_2 = ~(arg_1.e.b.x | 2147483647i);
    var var_3 = func_4(vec4<i32>(_wgslsmith_mult_i32(-23657i, _wgslsmith_clamp_i32(arg_1.e.b.x, _wgslsmith_sub_i32(-21196i, u_input.a.x), u_input.a.x)), -1i, var_2, -u_input.a.x), Struct_2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-2117f - _wgslsmith_f_op_f32(-global1.b.x)), 187f, false)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, -1107f, var_1.x, arg_1.a.a) + _wgslsmith_f_op_vec4_f32(-global1.b)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(global1.a, _wgslsmith_f_op_f32(1267f * var_1.x)))))).a;
    global1 = Struct_2(-496f, global1.b);
    return Struct_4(countOneBits(countOneBits(var_0.b.x)) ^ _wgslsmith_add_i32(-2147483647i, 1i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(global2[_wgslsmith_index_u32(~max(~(~22751u), 62530u), 15u)], !global2[_wgslsmith_index_u32(1u, 15u)], all(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true))));
    global1 = Struct_2(_wgslsmith_f_op_f32(abs(1822f)), _wgslsmith_f_op_vec4_f32(select(global1.b, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(global1.a)), _wgslsmith_f_op_f32(global1.a - 520f), _wgslsmith_f_op_f32(step(global1.b.x, global1.b.x)), _wgslsmith_f_op_f32(abs(global1.b.x)))), true)));
    var var_1 = var_0.x;
    var_1 = false;
    let var_2 = func_5(28347u | _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 1u, 1u)), 19610u), func_4(vec4<i32>(~_wgslsmith_add_i32(19541i, 1i), -_wgslsmith_mod_i32(-47165i, -2147483647i), _wgslsmith_mod_i32(u_input.a.x ^ -3694i, countOneBits(46502i)), ~u_input.a.x), func_1(true, 56452u, select(!vec4<bool>(true, var_0.x, var_0.x, false), !vec4<bool>(var_0.x, false, var_0.x, var_0.x), vec4<bool>(false, true, var_0.x, var_0.x)), ~1i), _wgslsmith_f_op_f32(min(-462f, _wgslsmith_f_op_f32(-global1.a)))));
    global1 = Struct_2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(-398f)))), vec4<f32>(-1832f, _wgslsmith_f_op_f32(min(global1.a, global1.b.x)), global1.a, global1.a));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(select(firstTrailingBit(global0[_wgslsmith_index_u32(0u, 16u)]), global3[_wgslsmith_index_u32(4294967295u, 21u)], !func_4(vec4<i32>(-1i, 2147483647i, 0i, var_2.a), Struct_2(-1000f, vec4<f32>(-1237f, global1.a, -296f, global1.b.x)), global1.b.x).c.a)), -(i32(-1i) * -15736i), firstLeadingBit(0u));
}

