struct Struct_1 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: f32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 3> = array<Struct_1, 3>(Struct_1(vec4<i32>(1i, -17613i, 0i, -1i)), Struct_1(vec4<i32>(-52718i, -11174i, 39030i, 1i)), Struct_1(vec4<i32>(i32(-2147483648), -52986i, -1i, 0i)));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: f32, arg_1: vec2<u32>, arg_2: Struct_1) -> vec4<u32> {
    var var_0 = arg_2;
    var_0 = global0[_wgslsmith_index_u32(u_input.c.x, 3u)];
    let var_1 = ~(-max(0i, var_0.a.x));
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -968f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(545f, -1029f)), 633f, _wgslsmith_f_op_f32(107f - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(608f, -131f)))))));
    return ~max(vec4<u32>(u_input.c.x, _wgslsmith_mult_u32(~1u, arg_1.x), max(97010u, _wgslsmith_sub_u32(u_input.b, 0u)), ~reverseBits(u_input.b)), vec4<u32>(u_input.d >> (arg_1.x % 32u), ~u_input.e, ~(~1u), arg_1.x >> (abs(28901u) % 32u)));
}

fn func_3(arg_0: vec4<u32>, arg_1: i32) -> Struct_1 {
    var var_0 = _wgslsmith_sub_i32(-4569i, arg_1 ^ (arg_1 >> (max(arg_0.x | arg_0.x, func_2(1000f, vec2<u32>(25353u, 0u), global0[_wgslsmith_index_u32(0u, 3u)]).x) % 32u)));
    var_0 = reverseBits(_wgslsmith_mod_i32(35370i, 1i));
    global0 = array<Struct_1, 3>();
    global0 = array<Struct_1, 3>();
    var var_1 = 2147483647i | _wgslsmith_mult_i32(countOneBits(u_input.a), 28159i);
    return Struct_1(reverseBits(_wgslsmith_mod_vec4_i32(~(vec4<i32>(-26397i, -20053i, 2147483647i, 0i) ^ vec4<i32>(arg_1, arg_1, 4763i, 50665i)), vec4<i32>(~0i, -2147483647i, u_input.a, -u_input.a))));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    return func_3(firstTrailingBit(func_2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(928f + 104f), -662f, true)), _wgslsmith_add_vec2_u32(vec2<u32>(0u, 7880u), max(vec2<u32>(u_input.b, u_input.e), vec2<u32>(u_input.b, u_input.b))), arg_0)), u_input.a);
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: bool) -> f32 {
    let var_0 = arg_1;
    let var_1 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-392f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1071f, -2045f) - -454f), _wgslsmith_f_op_f32(round(-667f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(672f, _wgslsmith_f_op_f32(round(-1539f)), _wgslsmith_div_f32(-1000f, -474f)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(649f, -1335f, 545f), vec3<f32>(-915f, 829f, 919f))) - _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1135f, -890f, -1309f))))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(-321f, 685f, -346f) * _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(394f, 477f, 1575f)))))))));
    var var_2 = ~(~(arg_0.a.x ^ -2147483647i));
    var var_3 = func_3(countOneBits(~vec4<u32>(4294967295u, 0u, ~var_0, _wgslsmith_add_u32(0u, 4294967295u))), abs(u_input.a));
    var_3 = arg_0;
    return _wgslsmith_f_op_f32(round(1000f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0[_wgslsmith_index_u32(reverseBits(1u), 3u)];
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(func_1(Struct_1(var_0.a), Struct_1(vec4<i32>(u_input.a, u_input.a, -28043i, var_0.a.x))), u_input.d ^ min(u_input.e, 20033u), true))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(-1130f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(1322f, 368f, false)), _wgslsmith_f_op_f32(775f * 965f)) * _wgslsmith_f_op_f32(632f * -1088f)))), 1f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(round(-606f)), _wgslsmith_f_op_vec3_f32(var_1 + var_1), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(984f)))))), u_input.c.xxx);
}

