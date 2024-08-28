struct Struct_1 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec2<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 25>;

var<private> global1: array<Struct_1, 16> = array<Struct_1, 16>(Struct_1(vec2<u32>(15065u, 4294967295u)), Struct_1(vec2<u32>(0u, 4294967295u)), Struct_1(vec2<u32>(11750u, 0u)), Struct_1(vec2<u32>(0u, 0u)), Struct_1(vec2<u32>(0u, 4294967295u)), Struct_1(vec2<u32>(24763u, 14165u)), Struct_1(vec2<u32>(31557u, 31595u)), Struct_1(vec2<u32>(24959u, 4294967295u)), Struct_1(vec2<u32>(4294967295u, 4294967295u)), Struct_1(vec2<u32>(56534u, 25860u)), Struct_1(vec2<u32>(6656u, 11671u)), Struct_1(vec2<u32>(32225u, 11976u)), Struct_1(vec2<u32>(1u, 26076u)), Struct_1(vec2<u32>(0u, 72335u)), Struct_1(vec2<u32>(4294967295u, 2122u)), Struct_1(vec2<u32>(1u, 1u)));

var<private> global2: array<Struct_1, 20>;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: vec3<f32>, arg_3: u32) -> u32 {
    var var_0 = i32(-1i) * -18405i;
    let var_1 = global2[_wgslsmith_index_u32(select(arg_3, 0u, true), 20u)];
    var var_2 = false;
    var var_3 = arg_0;
    let var_4 = arg_2;
    return var_3.a.x;
}

fn func_3(arg_0: Struct_1) -> Struct_1 {
    global1 = array<Struct_1, 16>();
    global2 = array<Struct_1, 20>();
    global0 = array<Struct_1, 25>();
    let var_0 = global0[_wgslsmith_index_u32(max(arg_0.a.x >> (32585u % 32u), ~_wgslsmith_clamp_u32(0u, arg_0.a.x, _wgslsmith_clamp_u32(~4064u, ~32842u, 55710u))), 25u)];
    let var_1 = ~1i;
    return Struct_1(_wgslsmith_mult_vec2_u32(_wgslsmith_mod_vec2_u32(_wgslsmith_add_vec2_u32(arg_0.a | arg_0.a, vec2<u32>(arg_0.a.x, arg_0.a.x)), countOneBits(vec2<u32>(var_0.a.x, 74290u) ^ arg_0.a)), reverseBits(_wgslsmith_add_vec2_u32(firstLeadingBit(vec2<u32>(0u, var_0.a.x)), ~vec2<u32>(var_0.a.x, arg_0.a.x)))));
}

fn func_1(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: Struct_1) -> Struct_1 {
    let var_0 = func_3(global2[_wgslsmith_index_u32(func_2(global0[_wgslsmith_index_u32(~arg_0.a.x, 25u)], !(!select(vec3<bool>(arg_1.x, arg_1.x, true), vec3<bool>(arg_1.x, arg_1.x, arg_1.x), true)), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-750f, -473f, -1482f), vec3<f32>(878f, -781f, 852f))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(204f, -999f, -684f), vec3<f32>(996f, -893f, 691f), vec3<bool>(arg_1.x, false, arg_1.x)))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(1335f, 441f, 103f) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-610f, -1188f, -828f) + vec3<f32>(-1007f, -999f, -1427f)))), _wgslsmith_sub_u32(1u, ~arg_0.a.x)), 20u)]);
    global1 = array<Struct_1, 16>();
    global0 = array<Struct_1, 25>();
    global2 = array<Struct_1, 20>();
    var var_1 = select(vec4<u32>(41882u, 1u, 41707u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(arg_2.a.x, var_0.a.x), ~arg_0.a)), vec4<u32>(~_wgslsmith_div_u32(countOneBits(13429u), ~var_0.a.x), ~arg_0.a.x ^ (_wgslsmith_mod_u32(1u, 4294967295u) | _wgslsmith_dot_vec4_u32(vec4<u32>(3844u, 9641u, var_0.a.x, arg_2.a.x), vec4<u32>(23713u, arg_2.a.x, arg_0.a.x, 1u))), arg_2.a.x, firstTrailingBit(arg_0.a.x)), arg_1.x);
    return global1[_wgslsmith_index_u32(0u, 16u)];
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_1, 20>();
    global0 = array<Struct_1, 25>();
    let var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(step(1261f, _wgslsmith_f_op_f32(round(126f)))), _wgslsmith_f_op_f32(sign(-393f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1633f) - 1f)) - vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1174f)) + 335f), _wgslsmith_f_op_f32(-1849f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-369f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(435f + -762f) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(939f + -477f))))));
    let var_1 = true;
    var var_2 = func_1(Struct_1(~select(select(vec2<u32>(72424u, 21894u), vec2<u32>(11845u, 4724u), vec2<bool>(var_1, false)), ~vec2<u32>(10644u, 1u), var_0.x <= var_0.x)), !vec2<bool>(any(vec2<bool>(true, true)), var_1), global0[_wgslsmith_index_u32(~_wgslsmith_mult_u32(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 4294967295u, 1u), vec3<u32>(289u, 0u, 21614u)) ^ ~31561u), 25u)]);
    var var_3 = vec4<i32>(select(u_input.c.x, _wgslsmith_clamp_i32(u_input.a, 1i, _wgslsmith_clamp_i32(min(-1i, 0i), ~u_input.c.x, -u_input.c.x)), var_1), _wgslsmith_div_i32(u_input.c.x, 45293i) << (var_2.a.x % 32u), _wgslsmith_mod_i32(abs(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, u_input.a, u_input.a), u_input.c)), -2147483647i) | u_input.c.x, _wgslsmith_dot_vec2_i32(vec2<i32>(1i, _wgslsmith_clamp_i32(-21269i, u_input.a, u_input.c.x)), u_input.c.yy));
    var_3 = _wgslsmith_div_vec4_i32(vec4<i32>(var_3.x, var_3.x, (u_input.a ^ reverseBits(var_3.x)) << (var_2.a.x % 32u), _wgslsmith_mult_i32(u_input.a, var_3.x)), vec4<i32>(_wgslsmith_mult_i32(~(-1i), 1i), _wgslsmith_dot_vec3_i32(vec3<i32>(var_3.x, -1i, -14290i), -u_input.c), -u_input.b & firstTrailingBit(-14471i), _wgslsmith_clamp_i32(_wgslsmith_sub_i32(-1i, 2147483647i), u_input.b, _wgslsmith_dot_vec2_i32(vec2<i32>(var_3.x, u_input.c.x), vec2<i32>(u_input.a, -38275i)))) ^ countOneBits(_wgslsmith_mod_vec4_i32(firstTrailingBit(vec4<i32>(var_3.x, var_3.x, u_input.a, u_input.b)), abs(vec4<i32>(var_3.x, u_input.c.x, var_3.x, -4626i)))));
    global2 = array<Struct_1, 20>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, -u_input.c.xy, var_3.wy, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -121f), -1836f)))));
}

