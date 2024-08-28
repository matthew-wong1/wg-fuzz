struct Struct_1 {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec2<i32>,
    d: vec4<f32>,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
}

struct Struct_4 {
    a: bool,
    b: bool,
}

struct Struct_5 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
    d: vec3<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: u32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 31>;

var<private> global1: array<vec3<u32>, 22>;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
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

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3() -> bool {
    let var_0 = Struct_1(~(~(~_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, 4294967295u, 36395u), vec3<u32>(1u, 4294967295u, u_input.c.x), vec3<u32>(u_input.a, u_input.a, u_input.c.x)))), max(min(vec2<i32>(u_input.d.x, 31028i), u_input.d.zx), u_input.e.yw | u_input.e.zw), vec2<i32>(u_input.b, -min(u_input.b, -1i)), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1374f + -443f)) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1265f + -1485f), _wgslsmith_f_op_f32(f32(-1f) * -182f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1175f), _wgslsmith_f_op_f32(1487f - 892f))), _wgslsmith_f_op_f32(1111f + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1862f - 671f), 465f))), _wgslsmith_f_op_f32(-121f - _wgslsmith_div_f32(-229f, _wgslsmith_f_op_f32(f32(-1f) * -1636f)))), _wgslsmith_dot_vec2_u32(~(~_wgslsmith_mult_vec2_u32(u_input.c, u_input.c)), u_input.c));
    var var_1 = true;
    let var_2 = ~global1[_wgslsmith_index_u32(min(_wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, 25156u), ~u_input.c) ^ var_0.e, min(_wgslsmith_mult_u32(67703u, u_input.a), u_input.a << (0u % 32u)) >> (_wgslsmith_mult_u32(var_0.e, ~u_input.a) % 32u)), 22u)];
    var var_3 = Struct_5(var_0.d);
    let var_4 = countOneBits(2147483647i);
    return true;
}

fn func_4(arg_0: u32, arg_1: Struct_4, arg_2: i32) -> i32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-550f, -871f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1674f, 1000f)))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)))));
    global0 = array<Struct_1, 31>();
    let var_1 = Struct_5(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_0.x), 461f, -1026f, -456f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -212f), _wgslsmith_f_op_f32(ceil(-1509f)), _wgslsmith_f_op_f32(trunc(736f)), _wgslsmith_f_op_f32(exp2(var_0.x))))));
    let var_2 = abs(min(vec4<u32>(select(1u, 74647u, all(vec2<bool>(false, true))), ~_wgslsmith_dot_vec3_u32(global1[_wgslsmith_index_u32(23322u, 22u)], vec3<u32>(23130u, u_input.c.x, u_input.a)), 0u, 4294967295u), ~(~(vec4<u32>(4294967295u, arg_0, 1u, 4294967295u) >> (vec4<u32>(0u, 48579u, 4294967295u, 9334u) % vec4<u32>(32u))))));
    global1 = array<vec3<u32>, 22>();
    return -2147483647i;
}

fn func_2() -> Struct_4 {
    global1 = array<vec3<u32>, 22>();
    var var_0 = _wgslsmith_mult_i32(2147483647i, (u_input.e.x ^ (u_input.e.x ^ 38004i)) >> (~_wgslsmith_div_u32(abs(59339u), u_input.c.x) % 32u));
    global0 = array<Struct_1, 31>();
    var_0 = func_4(min(_wgslsmith_dot_vec2_u32(~u_input.c, u_input.c), u_input.c.x), Struct_4(true, func_3() || func_3()), -56355i);
    return Struct_4(true, func_3());
}

fn func_5(arg_0: vec3<u32>, arg_1: Struct_4, arg_2: vec4<f32>, arg_3: vec3<f32>) -> Struct_2 {
    global1 = array<vec3<u32>, 22>();
    var var_0 = arg_0.x;
    let var_1 = abs(1u);
    var_0 = ~_wgslsmith_mod_u32(_wgslsmith_sub_u32(21185u, u_input.c.x), select(select(u_input.a, var_1, true), 85377u, true)) << (1u % 32u);
    global1 = array<vec3<u32>, 22>();
    return Struct_2(Struct_1(vec3<u32>(27269u, _wgslsmith_mult_u32(_wgslsmith_div_u32(arg_0.x, arg_0.x), _wgslsmith_clamp_u32(26408u, u_input.c.x, var_1)), 108522u), vec2<i32>(-27679i, u_input.e.x), max(vec2<i32>(u_input.b, u_input.e.x), ~vec2<i32>(1i, u_input.e.x)), arg_2, _wgslsmith_add_u32(abs(~4294967295u), _wgslsmith_clamp_u32(u_input.a, 4294967295u, ~0u))), -u_input.d.xz, ~1u);
}

fn func_1() -> vec3<f32> {
    global1 = array<vec3<u32>, 22>();
    var var_0 = u_input.b;
    let var_1 = Struct_3(func_5(vec3<u32>(4294967295u, 14918u, u_input.c.x), func_2(), vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(505f, -1076f, -1713f) - vec3<f32>(1997f, 572f, 267f))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1934f, -540f, 759f))), _wgslsmith_div_vec3_f32(vec3<f32>(1699f, -223f, -2333f), vec3<f32>(1573f, -915f, 1467f)))), !select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), true)))), true != all(vec4<bool>(any(vec2<bool>(true, false)), select(true, true, true), true, true)));
    let var_2 = min(_wgslsmith_mult_u32((u_input.a ^ ~u_input.a) | _wgslsmith_add_u32(var_1.a.a.a.x >> (1u % 32u), 1216u), var_1.a.c), firstLeadingBit(~select(~99091u, reverseBits(var_1.a.a.e), var_1.a.b.x <= var_1.a.a.c.x)));
    let var_3 = vec4<bool>((reverseBits(~(-28662i)) <= func_5(~vec3<u32>(var_2, u_input.a, u_input.c.x), Struct_4(true, false), vec4<f32>(var_1.a.a.d.x, var_1.a.a.d.x, var_1.a.a.d.x, var_1.a.a.d.x), vec3<f32>(var_1.a.a.d.x, 1875f, var_1.a.a.d.x)).b.x) != (_wgslsmith_f_op_f32(-var_1.a.a.d.x) < _wgslsmith_f_op_f32(_wgslsmith_div_f32(179f, -795f) * _wgslsmith_f_op_f32(trunc(1422f)))), var_1.b, select(any(select(!vec3<bool>(var_1.b, true, true), select(vec3<bool>(var_1.b, var_1.b, true), vec3<bool>(false, false, false), true), var_1.b & var_1.b)), false, all(!vec3<bool>(var_1.b, var_1.b, true)) | true), false);
    return _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.a.a.d.x), -747f), _wgslsmith_f_op_f32(-351f + var_1.a.a.d.x), -102f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_1.a.a.d.xwz) * vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1027f), _wgslsmith_f_op_f32(trunc(1000f)), var_1.a.a.d.x)), true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-592f, 911f, -907f) * vec3<f32>(-1000f, -355f, -1611f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-798f, -530f, 1989f) + vec3<f32>(-967f, -440f, -348f))) + _wgslsmith_f_op_vec3_f32(func_1())) * vec3<f32>(_wgslsmith_f_op_f32(1393f + 1f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(162f + -121f), -1000f, true)), 455f)));
    global0 = array<Struct_1, 31>();
    global0 = array<Struct_1, 31>();
    var var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -2114f)));
    var var_2 = Struct_2(func_5(select(reverseBits(vec3<u32>(u_input.a, 17908u, 63927u)), vec3<u32>(max(74295u, u_input.a), 1u, abs(60873u)), select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), true)), Struct_4(false, true || all(vec2<bool>(true, false))), vec4<f32>(1330f, var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -815f), var_0.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0) + var_0)).a, vec2<i32>(u_input.b, -42591i << (_wgslsmith_div_u32(1u, firstLeadingBit(u_input.c.x)) % 32u)), ~(~((u_input.a << (u_input.c.x % 32u)) >> (54353u % 32u))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_2.a.d.x - var_0.x), _wgslsmith_f_op_f32(-1000f - -795f))), _wgslsmith_f_op_f32(max(var_2.a.d.x, _wgslsmith_f_op_f32(-2115f + var_0.x)))) + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-func_5(vec3<u32>(4294967295u, 61796u, 20185u), Struct_4(true, true), vec4<f32>(-553f, 823f, var_0.x, var_0.x), var_2.a.d.yxy).a.d.x)))), 4294967295u, u_input.c);
}

