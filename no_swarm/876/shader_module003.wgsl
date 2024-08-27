struct Struct_1 {
    a: vec4<f32>,
    b: u32,
    c: u32,
    d: u32,
    e: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec4<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<bool>,
}

struct Struct_4 {
    a: u32,
    b: Struct_3,
    c: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec4<i32>,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 4> = array<Struct_3, 4>(Struct_3(Struct_2(Struct_1(vec4<f32>(1000f, 411f, -868f, 175f), 0u, 50893u, 4294967295u, vec3<bool>(true, true, false)), false, vec4<u32>(4294967295u, 86967u, 4294967295u, 23782u)), vec4<bool>(true, false, true, true)), Struct_3(Struct_2(Struct_1(vec4<f32>(-1152f, -1544f, -1195f, 726f), 33933u, 1923u, 31480u, vec3<bool>(false, true, true)), false, vec4<u32>(68893u, 24041u, 4294967295u, 12757u)), vec4<bool>(false, true, false, true)), Struct_3(Struct_2(Struct_1(vec4<f32>(-394f, -1878f, 132f, -384f), 24263u, 0u, 66558u, vec3<bool>(true, true, true)), false, vec4<u32>(0u, 1u, 0u, 4294967295u)), vec4<bool>(false, false, false, false)), Struct_3(Struct_2(Struct_1(vec4<f32>(-513f, -494f, 1954f, -510f), 66216u, 4294967295u, 32910u, vec3<bool>(false, true, true)), true, vec4<u32>(12045u, 24057u, 18496u, 50984u)), vec4<bool>(false, true, false, true)));

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_2(arg_0: Struct_1, arg_1: u32, arg_2: i32) -> vec3<bool> {
    var var_0 = !(~arg_1 > 32511u);
    global0 = array<Struct_3, 4>();
    var var_1 = vec2<bool>(!arg_0.e.x, true);
    var_0 = true;
    var_0 = true;
    return arg_0.e;
}

fn func_1() -> u32 {
    global0 = array<Struct_3, 4>();
    let var_0 = -686f;
    let var_1 = Struct_2(Struct_1(vec4<f32>(784f, -1519f, -659f, _wgslsmith_f_op_f32(floor(var_0))), ~u_input.a.x, 24425u, countOneBits(1u), select(!func_2(Struct_1(vec4<f32>(-142f, -103f, var_0, var_0), u_input.a.x, u_input.a.x, 24450u, vec3<bool>(false, true, false)), u_input.a.x, 1i), vec3<bool>(true, true, true), any(vec3<bool>(true, false, false)))), true, vec4<u32>(1357u, _wgslsmith_mult_u32(countOneBits(u_input.a.x), firstLeadingBit(u_input.a.x)) & ~countOneBits(54456u), 4294967295u, u_input.a.x & _wgslsmith_sub_u32(66077u, 11607u)));
    global0 = array<Struct_3, 4>();
    var var_2 = u_input.a;
    return 1u;
}

fn func_3() -> bool {
    global0 = array<Struct_3, 4>();
    let var_0 = select(!(!(!select(vec2<bool>(false, false), vec2<bool>(false, true), true))), select(select(vec2<bool>(false, all(vec2<bool>(false, true))), vec2<bool>(func_2(Struct_1(vec4<f32>(-379f, -641f, -1196f, 1743f), u_input.a.x, 4294967295u, u_input.a.x, vec3<bool>(true, false, false)), u_input.a.x, 2147483647i).x, true), vec2<bool>(true, any(vec4<bool>(false, false, true, true)))), vec2<bool>(true, true), !select(select(vec2<bool>(false, false), vec2<bool>(false, true), false), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true)), select(vec2<bool>(false, false), vec2<bool>(false, true), true))), select(vec2<bool>(any(vec4<bool>(false, true, true, true)), true), select(vec2<bool>(true, false), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(true, all(vec3<bool>(false, true, false)))), select(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true)), vec2<bool>(false, any(vec2<bool>(false, false))), true != (u_input.a.x < 97707u))));
    global0 = array<Struct_3, 4>();
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(max(1692f, -1034f)), -896f, _wgslsmith_f_op_f32(-887f - 146f), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))))), reverseBits(~_wgslsmith_mod_u32(u_input.a.x, u_input.a.x) | firstTrailingBit(1u)), 1u, 4294967295u, vec3<bool>(true, var_0.x, var_0.x));
    let var_2 = Struct_3(Struct_2(var_1, true, _wgslsmith_div_vec4_u32(vec4<u32>(select(1u, 0u, true), var_1.c, _wgslsmith_mod_u32(0u, 42694u), min(var_1.b, 23627u)), firstLeadingBit(vec4<u32>(u_input.a.x, 1u, u_input.a.x, var_1.c) & vec4<u32>(u_input.a.x, 57365u, var_1.d, 0u)))), !vec4<bool>(true && !var_0.x, !var_1.e.x & !var_1.e.x, false, select(false, true, any(vec3<bool>(true, true, var_1.e.x)))));
    return true;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec3<bool>) -> vec2<i32> {
    global0 = array<Struct_3, 4>();
    let var_0 = Struct_2(arg_0, !(!(!func_3())), arg_1.c);
    global0 = array<Struct_3, 4>();
    let var_1 = select(arg_1.c.x, reverseBits(func_1()), func_3());
    global0 = array<Struct_3, 4>();
    return vec2<i32>(-u_input.e & _wgslsmith_div_i32(u_input.c.x, ~(~7957i)), _wgslsmith_dot_vec4_i32(u_input.d, u_input.c));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1199f, 473f) - _wgslsmith_div_f32(-347f, 1000f)), _wgslsmith_f_op_f32(107f + -933f))) * -1428f) - 1265f);
    var var_1 = vec4<u32>(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(u_input.a.xy, vec2<u32>(1u, u_input.a.x)), ~0u) & ~1u, ~_wgslsmith_dot_vec3_u32(~u_input.a, vec3<u32>(49081u, u_input.a.x, 22322u)), _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(u_input.a.yx | u_input.a.zx, _wgslsmith_mod_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), vec2<u32>(u_input.a.x, u_input.a.x)), _wgslsmith_clamp_vec2_u32(u_input.a.yy, u_input.a.zy, vec2<u32>(u_input.a.x, 0u)))), _wgslsmith_div_u32(u_input.a.x ^ func_1(), firstTrailingBit(~u_input.a.x))), ~(~_wgslsmith_clamp_u32(u_input.a.x & u_input.a.x, u_input.a.x, u_input.a.x)));
    var var_2 = 1i;
    var var_3 = func_4(Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(-503f, var_0), -212f, var_0, var_0)), ~1u, _wgslsmith_clamp_u32(var_1.x << (~var_1.x % 32u), var_1.x, _wgslsmith_div_u32(var_1.x, var_1.x | var_1.x)), var_1.x, vec3<bool>(func_3(), u_input.e < _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, u_input.b, -12278i), u_input.c.xzx), false)), Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, 420f, var_0, 371f))), 1u, countOneBits(~var_1.x), var_1.x ^ ~1233u, func_2(Struct_1(vec4<f32>(var_0, 1011f, var_0, 1732f), 0u, 0u, u_input.a.x, vec3<bool>(true, false, false)), u_input.a.x, _wgslsmith_div_i32(u_input.d.x, 3741i))), !(_wgslsmith_add_i32(-1i, 2147483647i) == u_input.c.x), min(~(~vec4<u32>(4294967295u, var_1.x, 41776u, var_1.x)), vec4<u32>(50182u >> (var_1.x % 32u), 7645u, 52859u >> (var_1.x % 32u), 8699u))), func_2(Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(-705f, var_0, 1500f, -1296f) + vec4<f32>(-1108f, 1906f, var_0, 727f)), _wgslsmith_clamp_u32(81852u, u_input.a.x, 48688u), ~(var_1.x ^ 23593u), 1u, !select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), true)), 46430u, i32(-1i) * -u_input.d.x));
    global0 = array<Struct_3, 4>();
    var var_4 = Struct_2(Struct_1(vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1098f * 1000f), _wgslsmith_f_op_f32(-var_0), true)), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(319f, 220f), -1197f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -282f)), var_0), 0u, 13056u, ~var_1.x, !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false))), false, countOneBits(vec4<u32>(_wgslsmith_div_u32(121652u, u_input.a.x) ^ (u_input.a.x >> (var_1.x % 32u)), u_input.a.x, var_1.x, 1u)));
    let var_5 = reverseBits(vec4<i32>(_wgslsmith_dot_vec2_i32(u_input.d.wz, ~(-vec2<i32>(8380i, var_3.x))), func_4(var_4.a, Struct_2(var_4.a, false, _wgslsmith_div_vec4_u32(vec4<u32>(0u, 4294967295u, 48235u, var_1.x), vec4<u32>(4294967295u, var_1.x, 1u, u_input.a.x))), var_4.a.e).x, i32(-1i) * -select(var_3.x, -43692i, var_4.a.e.x), 2147483647i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_4.a.a)), u_input.a.x >> (~abs(~46024u) % 32u), var_4.c.wwy);
}

