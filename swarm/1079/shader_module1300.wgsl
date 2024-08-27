struct Struct_1 {
    a: i32,
    b: i32,
    c: vec4<u32>,
}

struct Struct_2 {
    a: f32,
    b: i32,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec4<i32>,
    d: u32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 19> = array<vec2<u32>, 19>(vec2<u32>(0u, 4294967295u), vec2<u32>(6574u, 31514u), vec2<u32>(0u, 0u), vec2<u32>(54824u, 32681u), vec2<u32>(0u, 11817u), vec2<u32>(38420u, 0u), vec2<u32>(1u, 1u), vec2<u32>(0u, 54469u), vec2<u32>(56162u, 1u), vec2<u32>(4294967295u, 66084u), vec2<u32>(4294967295u, 70620u), vec2<u32>(4294967295u, 40680u), vec2<u32>(57310u, 4294967295u), vec2<u32>(9606u, 5788u), vec2<u32>(1u, 1u), vec2<u32>(30957u, 9969u), vec2<u32>(56306u, 61264u), vec2<u32>(2976u, 22280u), vec2<u32>(0u, 8213u));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec2<bool>) -> bool {
    global0 = array<vec2<u32>, 19>();
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -145f), _wgslsmith_f_op_f32(-593f + 976f), _wgslsmith_f_op_f32(select(294f, -159f, true))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(325f, -1596f, 314f)) - vec3<f32>(535f, 171f, -737f))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(157f, -1860f, 1000f)))), vec3<f32>(-833f, _wgslsmith_f_op_f32(step(1000f, -805f)), _wgslsmith_f_op_f32(1021f * 1166f))))));
    let var_1 = max(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), ~(~(~u_input.a.yyy)));
    let var_2 = vec3<f32>(539f, 538f, _wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(min(-1028f, var_0.x))));
    var var_3 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(578f, -819f, 1490f) - _wgslsmith_f_op_vec3_f32(-var_2)))))), _wgslsmith_f_op_vec3_f32(-var_2)));
    return arg_0.x;
}

fn func_2() -> u32 {
    global0 = array<vec2<u32>, 19>();
    var var_0 = Struct_2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(1150f)), -341f)))), 0i << (firstTrailingBit(reverseBits(_wgslsmith_add_u32(6221u, 26662u))) % 32u), Struct_1((u_input.a.x | (2147483647i ^ u_input.a.x)) ^ -_wgslsmith_sub_i32(u_input.a.x, 17914i), 4139i, abs(vec4<u32>(_wgslsmith_mult_u32(22244u, 96836u), _wgslsmith_sub_u32(24866u, 0u), 1900u, 49587u))));
    let var_1 = true;
    let var_2 = vec4<u32>(reverseBits(reverseBits(~(~56349u))), var_0.c.c.x, abs(_wgslsmith_mult_u32(~1u & (var_0.c.c.x << (var_0.c.c.x % 32u)), var_0.c.c.x | 4294967295u)), var_0.c.c.x);
    let var_3 = vec4<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a) + -221f) == var_0.a, false, (((-24175i >= var_0.b) | all(vec3<bool>(var_1, true, true))) || (func_3(vec2<bool>(true, false)) && true)) && true, var_1);
    return 1u;
}

fn func_1(arg_0: vec2<bool>, arg_1: vec3<i32>) -> i32 {
    global0 = array<vec2<u32>, 19>();
    var var_0 = vec2<bool>(!(!(all(vec2<bool>(arg_0.x, arg_0.x)) && false)), any(select(vec4<bool>(all(vec4<bool>(arg_0.x, false, arg_0.x, arg_0.x)), all(vec3<bool>(arg_0.x, true, true)), true, false && arg_0.x), select(vec4<bool>(false, true, arg_0.x, false), select(vec4<bool>(false, false, false, false), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), arg_0.x), true), !select(vec4<bool>(false, arg_0.x, true, true), vec4<bool>(false, arg_0.x, false, arg_0.x), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x)))));
    global0 = array<vec2<u32>, 19>();
    var var_1 = _wgslsmith_sub_vec2_u32(~global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(0u, 17559u, min(120936u, 48158u), 1u)), 19u)], global0[_wgslsmith_index_u32(func_2(), 19u)]);
    global0 = array<vec2<u32>, 19>();
    return firstTrailingBit(-min(abs(-11376i), 2147483647i) << ((select(var_1.x, var_1.x >> (24050u % 32u), true) & 17337u) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = firstTrailingBit(_wgslsmith_sub_u32(max(_wgslsmith_mult_u32(59998u, 1u), _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(0u, 10937u, 4294967295u), 87733u, 1u)), ~(~0u)));
    global0 = array<vec2<u32>, 19>();
    var_0 = ~79789u;
    global0 = array<vec2<u32>, 19>();
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1431f + _wgslsmith_f_op_f32(f32(-1f) * -377f)));
    global0 = array<vec2<u32>, 19>();
    var var_2 = vec3<i32>(_wgslsmith_mult_i32(u_input.a.x, func_1(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false)), _wgslsmith_mult_vec3_i32(u_input.a.wzx, u_input.a.yzz))), -1i, _wgslsmith_dot_vec2_i32(u_input.a.xy, ~(-u_input.a.xw))) | max(-select(vec3<i32>(u_input.a.x, 43658i, 0i), vec3<i32>(12259i, u_input.a.x, u_input.a.x), true) << (max(vec3<u32>(0u, 1u, 12493u), vec3<u32>(1u, 1u, 1u)) % vec3<u32>(32u)), -_wgslsmith_div_vec3_i32(select(u_input.a.wzy, vec3<i32>(-2147483647i, -15410i, u_input.a.x), vec3<bool>(false, false, true)), -vec3<i32>(u_input.a.x, u_input.a.x, 0i)));
    var_2 = u_input.a.yxy;
    let x = u_input.a;
    s_output = StorageBuffer(((vec2<i32>(u_input.a.x, -2147483647i) ^ _wgslsmith_mult_vec2_i32(u_input.a.xz, var_2.xx)) & u_input.a.xy) & abs(~u_input.a.wx << (~global0[_wgslsmith_index_u32(67332u, 19u)] % vec2<u32>(32u))), ~_wgslsmith_add_vec4_u32(firstTrailingBit(~vec4<u32>(21023u, 1u, 28326u, 1u)), ~vec4<u32>(4294967295u, 4442u, 4294967295u, 0u)), -(u_input.a ^ -(u_input.a >> (vec4<u32>(8598u, 4294967295u, 1u, 41714u) % vec4<u32>(32u)))), 0u, vec3<u32>(~_wgslsmith_add_u32(abs(1u), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 53893u, 0u), vec3<u32>(31648u, 72779u, 40235u))), _wgslsmith_mult_u32(1u, ~_wgslsmith_sub_u32(1u, 0u)), ~4294967295u));
}

