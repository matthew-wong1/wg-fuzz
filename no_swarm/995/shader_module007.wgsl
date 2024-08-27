struct Struct_1 {
    a: vec4<f32>,
    b: u32,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 29>;

var<private> global1: Struct_2;

var<private> global2: array<Struct_1, 5> = array<Struct_1, 5>(Struct_1(vec4<f32>(-475f, 250f, 695f, 340f), 12799u, 69811u), Struct_1(vec4<f32>(1000f, 444f, 331f, 957f), 91699u, 19952u), Struct_1(vec4<f32>(1668f, 1598f, -583f, -933f), 17768u, 1u), Struct_1(vec4<f32>(774f, -459f, 348f, -639f), 0u, 4294967295u), Struct_1(vec4<f32>(380f, -620f, 1000f, 1754f), 50112u, 4294967295u));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: vec4<f32>, arg_1: Struct_3) -> i32 {
    return 8449i;
}

fn func_3(arg_0: vec3<bool>) -> f32 {
    let var_0 = Struct_3(~(~max(~vec4<u32>(u_input.d, u_input.d, global0[_wgslsmith_index_u32(1u, 29u)], global0[_wgslsmith_index_u32(u_input.c, 29u)]), _wgslsmith_clamp_vec4_u32(vec4<u32>(31794u, 0u, global1.a.c, global1.a.c), vec4<u32>(u_input.d, global1.a.c, global1.a.b, 4294967295u), vec4<u32>(global0[_wgslsmith_index_u32(16099u, 29u)], 0u, 2780u, global0[_wgslsmith_index_u32(global1.a.b, 29u)])))), vec3<f32>(global1.a.a.x, 432f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -706f) + _wgslsmith_f_op_f32(min(global1.a.a.x, global1.a.a.x)))))));
    global1 = Struct_2(global1.a);
    let var_1 = Struct_3((~vec4<u32>(2736u, u_input.d, 0u, u_input.c) ^ firstTrailingBit(select(vec4<u32>(4294967295u, 20520u, global1.a.b, u_input.c), vec4<u32>(1u, global1.a.c, 0u, u_input.d), vec4<bool>(false, arg_0.x, arg_0.x, arg_0.x)))) | var_0.a, var_0.b);
    var var_2 = _wgslsmith_f_op_f32(abs(var_1.b.x));
    var var_3 = vec2<bool>(arg_0.x != true, select(!(!(var_0.b.x < -626f)), true, select(true, u_input.b == (-2147483647i << (u_input.c % 32u)), !arg_0.x)));
    return _wgslsmith_f_op_f32(min(283f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-307f - var_1.b.x))));
}

fn func_2(arg_0: Struct_3, arg_1: vec2<i32>, arg_2: Struct_3) -> Struct_3 {
    let var_0 = !vec2<bool>(true, any(vec3<bool>(true, true, true)));
    var var_1 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(func_3(vec3<bool>(!var_0.x, var_0.x, !var_0.x))), _wgslsmith_f_op_f32(round(632f)), arg_2.b.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(511f + 597f), _wgslsmith_f_op_f32(sign(-371f)), select(var_0.x, false, var_0.x))), arg_2.b.x)), ~global1.a.b, min(min(~arg_0.a.x, ~u_input.c), firstLeadingBit(global0[_wgslsmith_index_u32(u_input.c, 29u)]) >> (1u % 32u)) >> (~u_input.d % 32u));
    var var_2 = vec3<u32>(global1.a.c, ~firstTrailingBit(~_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.a.x, 123851u), arg_0.a.yy)), 1u);
    var var_3 = _wgslsmith_dot_vec3_u32(vec3<u32>(var_2.x, var_2.x, arg_0.a.x) ^ ~(~arg_2.a.xww), vec3<u32>(~(~(~0u)), _wgslsmith_mult_u32(_wgslsmith_clamp_u32(abs(4294967295u), _wgslsmith_dot_vec4_u32(arg_0.a, vec4<u32>(var_1.b, 1u, u_input.d, 26601u)), abs(var_2.x)), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(arg_0.a.yzx, vec3<u32>(96121u, 0u, arg_0.a.x)) ^ _wgslsmith_sub_u32(64248u, var_2.x), 29u)]), 1u));
    var_2 = ~(vec3<u32>(~global0[_wgslsmith_index_u32(abs(arg_2.a.x), 29u)], ~(~4294967295u), _wgslsmith_sub_u32(4294967295u, firstTrailingBit(arg_0.a.x))) << (_wgslsmith_add_vec3_u32(arg_0.a.yzw, ~(~arg_2.a.xyw)) % vec3<u32>(32u)));
    return Struct_3(_wgslsmith_sub_vec4_u32(~arg_2.a, min(~vec4<u32>(1u, global1.a.b, u_input.c, var_1.b), ~arg_2.a)) | _wgslsmith_div_vec4_u32(vec4<u32>(1u >> (0u % 32u), _wgslsmith_clamp_u32(arg_0.a.x, 113071u, 4294967295u), 4294967295u, var_1.c), ~vec4<u32>(u_input.c, global0[_wgslsmith_index_u32(0u, 29u)], u_input.d, 13377u)), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(978f, _wgslsmith_div_f32(global1.a.a.x, arg_2.b.x), _wgslsmith_f_op_f32(2383f - 666f)))))));
}

fn func_4(arg_0: Struct_3, arg_1: vec2<u32>, arg_2: vec3<u32>) -> i32 {
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(trunc(global1.a.a)), firstTrailingBit(35029u), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(~_wgslsmith_sub_u32(4294967295u, arg_1.x), 4294967295u), 29u)]));
    let var_1 = arg_0.a;
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.a.a.yz));
    var var_3 = !(true == !all(vec2<bool>(true, true)));
    var_0 = Struct_2(Struct_1(vec4<f32>(1f, var_2.x, _wgslsmith_f_op_f32(arg_0.b.x * _wgslsmith_f_op_f32(select(413f, -773f, true))), _wgslsmith_f_op_f32(var_2.x - -795f)), 31809u, arg_0.a.x));
    return select(func_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(-928f, 1383f), _wgslsmith_f_op_f32(var_0.a.a.x - var_2.x), _wgslsmith_f_op_f32(global1.a.a.x + var_0.a.a.x), 305f)), arg_0), -1i, select(any(!select(vec2<bool>(true, false), vec2<bool>(true, true), false)), 6904u <= ~_wgslsmith_clamp_u32(0u, arg_2.x, 1u), all(select(select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(false, true, false)), vec3<bool>(true, false, false), select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), true)))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_1, 5>();
    var var_0 = _wgslsmith_sub_vec4_i32(vec4<i32>(~u_input.a.x, u_input.a.x, _wgslsmith_add_i32(_wgslsmith_div_i32(u_input.a.x, func_1(global1.a.a, Struct_3(vec4<u32>(u_input.c, 53691u, 41960u, 42871u), vec3<f32>(425f, 178f, global1.a.a.x)))), func_4(func_2(Struct_3(vec4<u32>(global0[_wgslsmith_index_u32(global1.a.c, 29u)], 4294967295u, global0[_wgslsmith_index_u32(4294967295u, 29u)], u_input.d), vec3<f32>(global1.a.a.x, -351f, global1.a.a.x)), vec2<i32>(-41534i, u_input.b), Struct_3(vec4<u32>(1u, global1.a.c, 1u, global0[_wgslsmith_index_u32(u_input.c, 29u)]), global1.a.a.zyz)), ~vec2<u32>(global1.a.c, global0[_wgslsmith_index_u32(u_input.c, 29u)]), ~vec3<u32>(global0[_wgslsmith_index_u32(u_input.c, 29u)], 3035u, global1.a.c))), min(~5673i, -32030i)), select(min(abs(reverseBits(u_input.a)), u_input.a), _wgslsmith_clamp_vec4_i32(vec4<i32>(abs(u_input.b), ~u_input.a.x, ~u_input.a.x, ~22325i), min(vec4<i32>(-2147483647i, u_input.a.x, u_input.a.x, u_input.b), vec4<i32>(13759i, 0i, u_input.b, u_input.a.x)) ^ -vec4<i32>(u_input.b, u_input.b, 1i, 14651i), ~(vec4<i32>(60999i, 0i, u_input.b, u_input.a.x) << (vec4<u32>(global1.a.b, 0u, 4294967295u, 1u) % vec4<u32>(32u)))), false));
    let var_1 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec3<bool>(true, true, false))) * -262f) + _wgslsmith_f_op_f32(exp2(global1.a.a.x))), global1.a.a.x, _wgslsmith_f_op_f32(global1.a.a.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global1.a.a.x)) + -1910f))), _wgslsmith_f_op_vec3_f32(-global1.a.a.zwx), true));
    var var_2 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global1.a.a)), global0[_wgslsmith_index_u32(global1.a.b, 29u)], global1.a.b));
    global0 = array<u32, 29>();
    let var_3 = vec4<u32>(u_input.d, 0u, 4294967295u, 4294967295u);
    var_2 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(var_2.a.a + var_2.a.a), ~(~(~var_3.x)), _wgslsmith_sub_u32(6228u, global1.a.b)));
    global0 = array<u32, 29>();
    var_0 = vec4<i32>(~(-var_0.x), _wgslsmith_dot_vec2_i32(u_input.a.xz, vec2<i32>(-u_input.b, var_0.x) >> (var_3.xz % vec2<u32>(32u))), _wgslsmith_dot_vec3_i32(vec3<i32>(reverseBits(~u_input.b), -func_1(vec4<f32>(global1.a.a.x, var_2.a.a.x, var_2.a.a.x, 761f), Struct_3(vec4<u32>(4294967295u, 22649u, 11744u, 13168u), var_1)), -33241i), var_0.yyx), 0i);
    let x = u_input.a;
    s_output = StorageBuffer(var_2.a.a.x, var_1.x, -2147483647i);
}

