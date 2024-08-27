struct Struct_1 {
    a: vec4<i32>,
    b: vec2<f32>,
    c: vec3<bool>,
    d: f32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: f32,
    c: vec3<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<f32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 27>;

var<private> global1: Struct_2 = Struct_2(vec3<f32>(-602f, -1333f, -503f), 387f, vec3<bool>(false, true, false));

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: i32) -> bool {
    var var_0 = Struct_3(Struct_1(_wgslsmith_mult_vec4_i32(_wgslsmith_mult_vec4_i32(~vec4<i32>(-22115i, -2147483647i, -19275i, 1i), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a, arg_0, u_input.a, 1i), vec4<i32>(u_input.a, -2147483647i, arg_0, u_input.a), vec4<i32>(u_input.a, u_input.a, global0[_wgslsmith_index_u32(u_input.b.x, 27u)], arg_0))), -_wgslsmith_mod_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(29332u, 27u)], 9065i, global0[_wgslsmith_index_u32(1u, 27u)], arg_0), vec4<i32>(-19796i, arg_0, -5706i, 2147483647i))), _wgslsmith_f_op_vec2_f32(global1.a.zx - vec2<f32>(1000f, _wgslsmith_f_op_f32(-global1.b))), vec3<bool>(!select(true, global1.c.x, global1.c.x), true, (u_input.b.x & u_input.b.x) <= ~30069u), _wgslsmith_f_op_f32(min(global1.a.x, global1.b))), vec2<f32>(global1.a.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-176f)), _wgslsmith_f_op_f32(-global1.a.x)))), Struct_1(vec4<i32>(firstTrailingBit(-9431i) >> (~15000u % 32u), abs(reverseBits(42197i)), firstLeadingBit(-15403i), abs(-1i)), global1.a.yx, !select(!global1.c, global1.c, vec3<bool>(global1.c.x, global1.c.x, true)), _wgslsmith_f_op_f32(-1123f + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(648f)), global1.b)))));
    let var_1 = _wgslsmith_mult_i32(~2147483647i, global0[_wgslsmith_index_u32(1u, 27u)] & -(~_wgslsmith_add_i32(1i, global0[_wgslsmith_index_u32(1314u, 27u)])));
    var var_2 = var_0.c.a.zx;
    global0 = array<i32, 27>();
    let var_3 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1682f, 1586f, var_0.b.x), global1.a))) * _wgslsmith_f_op_vec3_f32(round(global1.a))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_0.a.d, -561f)) - global1.b)))), !vec3<bool>(false, !any(vec4<bool>(true, false, false, global1.c.x)), _wgslsmith_mult_u32(u_input.b.x, 12854u) == max(4294967295u, 0u)));
    return true;
}

fn func_2(arg_0: i32, arg_1: f32, arg_2: Struct_3) -> u32 {
    var var_0 = !vec3<bool>(global1.c.x, !(func_3(arg_0) || !arg_2.a.c.x), u_input.b.x <= ~0u);
    let var_1 = arg_2.c;
    global0 = array<i32, 27>();
    return ~(_wgslsmith_div_u32(min(1u, select(0u, u_input.b.x, global1.c.x)), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, 1u, 0u), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.b.x, 43641u, 26434u), vec3<u32>(u_input.b.x, 1u, 20167u)))) | _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(u_input.b, abs(vec2<u32>(u_input.b.x, 32272u))), u_input.b));
}

fn func_1(arg_0: u32) -> Struct_3 {
    var var_0 = countOneBits(vec4<u32>(~(~4294967295u), u_input.b.x, _wgslsmith_add_u32(~(~0u), 19399u), ~(~41476u)));
    let var_1 = Struct_1(~vec4<i32>(firstTrailingBit(-11031i), global0[_wgslsmith_index_u32(4294967295u, 27u)] >> (func_2(-24799i, global1.a.x, Struct_3(Struct_1(vec4<i32>(16594i, -1i, global0[_wgslsmith_index_u32(u_input.b.x, 27u)], u_input.a), vec2<f32>(global1.b, global1.b), vec3<bool>(true, true, false), global1.b), global1.a.xz, Struct_1(vec4<i32>(u_input.a, 4589i, u_input.a, 2147483647i), global1.a.yx, global1.c, global1.a.x))) % 32u), -_wgslsmith_dot_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(0u, 27u)], u_input.a, 1i), vec3<i32>(u_input.a, u_input.a, 2008i)), 1i), _wgslsmith_div_vec2_f32(vec2<f32>(global1.b, 1472f), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(283f + -711f) + -175f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.b + 732f)))), select(global1.c, vec3<bool>(true, true, true), false), _wgslsmith_f_op_f32(round(global1.a.x)));
    var_0 = vec4<u32>(~_wgslsmith_clamp_u32(4294967295u, _wgslsmith_div_u32(_wgslsmith_clamp_u32(arg_0, 0u, 4859u), select(1u, 6479u, global1.c.x)), arg_0), _wgslsmith_mult_u32(_wgslsmith_sub_u32(countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, var_0.x, u_input.b.x, u_input.b.x), vec4<u32>(17147u, var_0.x, 4294967295u, 4294967295u))), ~var_0.x), select(1u, firstTrailingBit(0u), 0i < var_1.a.x) | arg_0), func_2(-2147483647i, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(global1.b)), _wgslsmith_f_op_f32(-var_1.b.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(268f)) - _wgslsmith_f_op_f32(f32(-1f) * -393f))), Struct_3(var_1, var_1.b, var_1)), u_input.b.x);
    var_0 = vec4<u32>(func_2(-2838i >> (arg_0 % 32u), var_1.d, Struct_3(Struct_1(firstTrailingBit(var_1.a), _wgslsmith_div_vec2_f32(var_1.b, vec2<f32>(var_1.b.x, var_1.b.x)), vec3<bool>(true, true, true), _wgslsmith_f_op_f32(f32(-1f) * -3499f)), _wgslsmith_f_op_vec2_f32(exp2(var_1.b)), Struct_1(vec4<i32>(global0[_wgslsmith_index_u32(42539u, 27u)], -2147483647i, var_1.a.x, -27574i), _wgslsmith_f_op_vec2_f32(select(var_1.b, vec2<f32>(248f, -313f), global1.c.x)), global1.c, var_1.b.x))), 1u ^ ((~u_input.b.x ^ u_input.b.x) | 53352u), ~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, var_0.x, 0u, 4294967295u), ~vec4<u32>(arg_0, var_0.x, 4294967295u, u_input.b.x)) & 73552u, arg_0);
    var_0 = firstLeadingBit(~(~(~(~vec4<u32>(arg_0, 0u, 15807u, u_input.b.x)))));
    return Struct_3(var_1, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(min(global1.b, var_1.d)), _wgslsmith_f_op_f32(floor(-230f)))), Struct_1(~vec4<i32>(_wgslsmith_add_i32(u_input.a, var_1.a.x), 2147483647i, countOneBits(global0[_wgslsmith_index_u32(5509u, 27u)]), u_input.a), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1451f, _wgslsmith_f_op_f32(max(var_1.d, -449f))) - var_1.b), !select(var_1.c, select(vec3<bool>(var_1.c.x, true, global1.c.x), vec3<bool>(false, false, false), var_1.c), var_1.c), -488f));
}

fn func_4(arg_0: Struct_3, arg_1: f32) -> Struct_2 {
    let var_0 = -1002f;
    global1 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-223f, 593f)) + -357f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_0.a.b.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(global1.b)), _wgslsmith_f_op_f32(floor(global1.b))))), 198f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(-737f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(897f, -1012f)) - global1.a.x))))), select(select(!(!vec3<bool>(false, global1.c.x, false)), func_1(~u_input.b.x).c.c, global1.c.x), global1.c, vec3<bool>(!any(vec4<bool>(true, global1.c.x, arg_0.a.c.x, arg_0.a.c.x)), false && global1.c.x, select(any(global1.c.yy), true, !global1.c.x))));
    var var_1 = vec3<bool>(!(10587i >= _wgslsmith_dot_vec3_i32(arg_0.c.a.zwz, arg_0.c.a.yzx)), true, false);
    var var_2 = arg_0;
    var var_3 = !select(select(vec2<bool>(arg_0.a.c.x, global0[_wgslsmith_index_u32(76785u, 27u)] >= -4612i), vec2<bool>(var_1.x, !arg_0.a.c.x), global1.c.yy), var_2.a.c.yx, vec2<bool>(false, (0u << (u_input.b.x % 32u)) >= reverseBits(u_input.b.x)));
    return Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(global1.a)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global1.a) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-371f, global1.b, -200f) * vec3<f32>(-1000f, var_2.a.b.x, global1.a.x)) - _wgslsmith_f_op_vec3_f32(-global1.a)))), var_0, global1.c);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_4(func_1(u_input.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a.x) * global1.a.x));
    var var_0 = Struct_1(~func_1(u_input.b.x).c.a, vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -330f), global1.b), global1.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a.x)), _wgslsmith_f_op_f32(-415f + _wgslsmith_f_op_f32(global1.b * global1.a.x)))) * _wgslsmith_f_op_f32(-272f - func_4(func_1(u_input.b.x), 1243f).a.x)));
    global0 = array<i32, 27>();
    let var_1 = var_0.c.x;
    global1 = func_4(func_1(u_input.b.x), 779f);
    var var_2 = func_1(~min(63662u, _wgslsmith_add_u32(u_input.b.x | u_input.b.x, _wgslsmith_clamp_u32(26996u, 4294967295u, u_input.b.x)))).a;
    let var_3 = var_2.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_div_f32(global1.b, var_0.b.x), var_2.d, -226f, 888f), vec4<f32>(var_0.b.x, func_1(105828u).a.d, _wgslsmith_div_f32(var_0.b.x, var_0.b.x), _wgslsmith_f_op_f32(trunc(733f))))))), 0i, global0[_wgslsmith_index_u32(~(0u >> (_wgslsmith_sub_u32(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, 62899u, u_input.b.x), vec3<u32>(1u, 1u, u_input.b.x))) % 32u)), 27u)]);
}

