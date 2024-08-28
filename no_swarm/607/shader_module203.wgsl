struct Struct_1 {
    a: bool,
    b: vec2<f32>,
    c: f32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 10> = array<Struct_1, 10>(Struct_1(true, vec2<f32>(1815f, -517f), -371f), Struct_1(false, vec2<f32>(-640f, -516f), -661f), Struct_1(false, vec2<f32>(-736f, 329f), -3196f), Struct_1(true, vec2<f32>(427f, -970f), -443f), Struct_1(true, vec2<f32>(-547f, -390f), 912f), Struct_1(false, vec2<f32>(110f, 624f), -1048f), Struct_1(false, vec2<f32>(845f, -1000f), 625f), Struct_1(false, vec2<f32>(1093f, 315f), -629f), Struct_1(true, vec2<f32>(-159f, -266f), -1335f), Struct_1(false, vec2<f32>(3037f, 1387f), 505f));

var<private> global1: i32 = -1i;

var<private> global2: array<Struct_2, 4>;

var<private> global3: vec3<f32> = vec3<f32>(-1050f, -1018f, -954f);

var<private> global4: array<f32, 18>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: u32) -> vec2<u32> {
    global0 = array<Struct_1, 10>();
    global2 = array<Struct_2, 4>();
    let var_0 = ~105882u;
    var var_1 = Struct_2(select(true == select(var_0 != var_0, true, true), false, any(vec4<bool>(true, true, true, true))), Struct_1(all(vec4<bool>(u_input.c < u_input.a, true, any(vec3<bool>(true, false, false)), u_input.b == 1i)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(global3.yy, vec2<f32>(-1797f, -527f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-259f, 990f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.x * _wgslsmith_f_op_f32(666f * global4[_wgslsmith_index_u32(var_0, 18u)])) + _wgslsmith_f_op_f32(global3.x * _wgslsmith_f_op_f32(trunc(global4[_wgslsmith_index_u32(4294967295u, 18u)]))))), _wgslsmith_f_op_f32(-global3.x));
    let var_2 = Struct_2(true, global0[_wgslsmith_index_u32(~countOneBits(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, var_0), _wgslsmith_div_vec2_u32(vec2<u32>(8294u, 1u), vec2<u32>(0u, var_0)))), 10u)], _wgslsmith_f_op_f32(1362f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b.b.x))));
    return _wgslsmith_mod_vec2_u32(~(~(~vec2<u32>(1u, 17729u))), vec2<u32>(46855u, abs(5620u))) & _wgslsmith_div_vec2_u32(vec2<u32>(~u_input.a, u_input.c), ~vec2<u32>(1u, arg_0) ^ vec2<u32>(var_0, min(25767u, var_0)));
}

fn func_2(arg_0: vec3<i32>, arg_1: vec4<i32>, arg_2: Struct_2) -> Struct_2 {
    let var_0 = arg_1.x;
    var var_1 = func_3(u_input.a);
    global2 = array<Struct_2, 4>();
    global4 = array<f32, 18>();
    var_1 = vec2<u32>(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(~var_1.x, 1u), firstTrailingBit(vec2<u32>(0u, 1u))), u_input.c), _wgslsmith_dot_vec2_u32(vec2<u32>(min(63474u, 0u) << (~4294967295u % 32u), ~1u), vec2<u32>(~select(var_1.x, 0u, arg_2.a), var_1.x)));
    return Struct_2((var_1.x == (~var_1.x << (_wgslsmith_sub_u32(var_1.x, 3039u) % 32u))) | (global4[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(var_1.x, var_1.x, 61661u), vec3<u32>(50017u, u_input.c, 0u)), vec3<u32>(44684u, u_input.a, u_input.a)), 18u)] <= -310f), global0[_wgslsmith_index_u32(var_1.x, 10u)], -153f);
}

fn func_1() -> f32 {
    global0 = array<Struct_1, 10>();
    global4 = array<f32, 18>();
    var var_0 = _wgslsmith_mod_vec2_i32(firstTrailingBit(~reverseBits(vec2<i32>(1i, 1i))), vec2<i32>(-1i) * -select(vec2<i32>(1i, u_input.b) ^ vec2<i32>(-20837i, 0i), reverseBits(vec2<i32>(-1i, -2147483647i)), select(vec2<bool>(false, false), vec2<bool>(false, false), false)));
    var var_1 = func_2(abs(_wgslsmith_clamp_vec3_i32(vec3<i32>(-2147483647i, u_input.b, u_input.b), ~vec3<i32>(var_0.x, var_0.x, -1i), vec3<i32>(0i, u_input.b, 1i)) & select(vec3<i32>(23034i, u_input.b, -1i) >> (vec3<u32>(u_input.c, 28687u, u_input.c) % vec3<u32>(32u)), _wgslsmith_add_vec3_i32(vec3<i32>(-1i, var_0.x, u_input.b), vec3<i32>(1i, 0i, 0i)), false)), min(reverseBits(~min(vec4<i32>(u_input.b, u_input.b, var_0.x, 1i), vec4<i32>(1i, u_input.b, -2147483647i, u_input.b))), vec4<i32>(var_0.x, -u_input.b, var_0.x, 0i) | abs(select(vec4<i32>(18885i, -9020i, u_input.b, var_0.x), vec4<i32>(u_input.b, -28385i, var_0.x, -2147483647i), true))), global2[_wgslsmith_index_u32(u_input.c, 4u)]);
    var var_2 = Struct_2(true, func_2(_wgslsmith_sub_vec3_i32(~vec3<i32>(12796i, u_input.b, 2147483647i) | ~vec3<i32>(var_0.x, var_0.x, 43726i), vec3<i32>(_wgslsmith_div_i32(35584i, 68290i), 13950i, firstLeadingBit(47380i))), select(vec4<i32>(2468i, abs(2147483647i), ~(-15658i), var_0.x), reverseBits(vec4<i32>(var_0.x, -12277i, var_0.x, u_input.b)), vec4<bool>(var_1.b.a, true, true, true)), Struct_2(select(true, !var_1.a, false), Struct_1(false, global3.yx, _wgslsmith_f_op_f32(-2999f * 984f)), _wgslsmith_div_f32(-1377f, _wgslsmith_f_op_f32(f32(-1f) * -1193f)))).b, global3.x);
    return global3.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global3.zx;
    global3 = vec3<f32>(global4[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(~u_input.a, ~11157u, _wgslsmith_mod_u32(u_input.a, 64815u)), vec3<u32>(u_input.c, 33390u, u_input.c >> (42337u % 32u))) | _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(24200u, u_input.c, u_input.a, u_input.a) ^ vec4<u32>(23416u, 0u, 1739u, 4294967295u), firstTrailingBit(vec4<u32>(0u, 1u, 4294967295u, 75338u))), u_input.a), 18u)], global3.x, _wgslsmith_f_op_f32(func_1()));
    let var_1 = _wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(38100u, 18u)]);
    global4 = array<f32, 18>();
    global1 = u_input.b;
    let x = u_input.a;
    s_output = StorageBuffer(~(~u_input.a));
}

