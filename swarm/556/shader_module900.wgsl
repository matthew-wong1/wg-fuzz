struct Struct_1 {
    a: bool,
    b: vec4<f32>,
    c: vec2<bool>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec2<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<i32>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<f32>,
    c: vec4<u32>,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec2<u32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3() -> f32 {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -1663f), Struct_1(true, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-427f))), -166f, _wgslsmith_f_op_f32(f32(-1f) * -852f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1288f + -496f), _wgslsmith_f_op_f32(-2075f * -436f), false))), vec2<bool>(true, false)), ~vec2<u32>(u_input.b.x, u_input.b.x));
    var_0 = Struct_2(_wgslsmith_f_op_f32(-var_0.a), Struct_1(true, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(var_0.a)), var_0.a, var_0.a, _wgslsmith_f_op_f32(-var_0.b.b.x))), vec2<bool>(var_0.b.c.x, false)), ~vec2<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(0u, var_0.c.x, 1u), ~vec3<u32>(8944u, 23159u, u_input.b.x)), u_input.b.x << (max(9521u, var_0.c.x) % 32u)));
    var var_1 = true;
    let var_2 = Struct_2(1138f, var_0.b, countOneBits(~(_wgslsmith_mult_vec2_u32(vec2<u32>(55238u, 27109u), u_input.b) & _wgslsmith_add_vec2_u32(vec2<u32>(33303u, 1u), u_input.b))));
    var var_3 = Struct_3(var_2.b, _wgslsmith_mod_vec4_i32(-u_input.c, ~abs(reverseBits(vec4<i32>(-1i, 2147483647i, u_input.a, u_input.a)))));
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(-429f))));
}

fn func_2(arg_0: f32, arg_1: Struct_4, arg_2: Struct_3) -> i32 {
    var var_0 = 443f;
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) - _wgslsmith_f_op_f32(-arg_1.b.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) + arg_1.b.x), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(-876f, arg_2.a.b.x))))))));
    var_0 = arg_0;
    var_0 = arg_0;
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3()));
    return arg_2.b.x;
}

fn func_4(arg_0: i32, arg_1: Struct_2, arg_2: vec3<f32>) -> Struct_1 {
    var var_0 = arg_1.b;
    var_0 = Struct_1(var_0.c.x, arg_1.b.b, !var_0.c);
    var_0 = arg_1.b;
    var var_1 = Struct_2(arg_1.b.b.x, Struct_1(true, _wgslsmith_f_op_vec4_f32(select(arg_1.b.b, vec4<f32>(_wgslsmith_div_f32(-535f, -1700f), _wgslsmith_div_f32(536f, arg_1.b.b.x), -323f, arg_1.b.b.x), 1u == ~arg_1.c.x)), select(vec2<bool>(true, true), !(!vec2<bool>(false, var_0.a)), vec2<bool>(arg_1.b.a, any(vec4<bool>(var_0.a, arg_1.b.a, false, var_0.a))))), countOneBits(arg_1.c));
    var_0 = var_1.b;
    return Struct_1(true, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.b.b.x, arg_1.b.b.x, -696f, 1041f) * var_1.b.b) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a, 818f, 120f, -585f))) * _wgslsmith_f_op_vec4_f32(step(vec4<f32>(2601f, _wgslsmith_f_op_f32(-var_0.b.x), _wgslsmith_f_op_f32(func_3()), var_1.a), _wgslsmith_f_op_vec4_f32(select(var_1.b.b, arg_1.b.b, all(vec3<bool>(arg_1.b.c.x, true, true))))))), vec2<bool>(arg_1.b.c.x, _wgslsmith_clamp_i32(arg_0, ~53608i, _wgslsmith_dot_vec3_i32(u_input.c.ywx, u_input.c.wzx)) <= _wgslsmith_mod_i32(1i, u_input.a)));
}

fn func_1(arg_0: bool) -> StorageBuffer {
    var var_0 = vec2<i32>(-48564i, u_input.a);
    let var_1 = func_4(~_wgslsmith_dot_vec4_i32(vec4<i32>(-22601i, var_0.x, func_2(871f, Struct_4(Struct_2(897f, Struct_1(arg_0, vec4<f32>(843f, 528f, -111f, 1000f), vec2<bool>(arg_0, arg_0)), u_input.b), vec3<f32>(-299f, 933f, -395f), vec4<u32>(u_input.b.x, 4294967295u, 4294967295u, 0u), arg_0), Struct_3(Struct_1(arg_0, vec4<f32>(-502f, -1000f, 1000f, -322f), vec2<bool>(false, arg_0)), u_input.c)), _wgslsmith_add_i32(var_0.x, var_0.x)), firstTrailingBit(abs(vec4<i32>(57611i, 24048i, var_0.x, -7370i)))), Struct_2(_wgslsmith_f_op_f32(abs(-477f)), Struct_1(true, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(233f, 101f, -120f, 2045f) * vec4<f32>(-409f, 646f, 1903f, -190f)), vec4<f32>(1f, 1f, 1f, 1f), vec4<bool>(arg_0, false, true, arg_0))), select(vec2<bool>(false, arg_0), select(vec2<bool>(arg_0, true), vec2<bool>(false, arg_0), vec2<bool>(false, true)), select(vec2<bool>(arg_0, false), vec2<bool>(false, true), true))), vec2<u32>(u_input.b.x, 0u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-168f, 391f, 699f) - vec3<f32>(-1569f, -775f, 2787f)), _wgslsmith_div_vec3_f32(vec3<f32>(202f, -1000f, -266f), vec3<f32>(1000f, 991f, 167f))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1220f, -116f, 322f) * vec3<f32>(844f, 806f, -1006f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-658f, -453f, -449f) + vec3<f32>(1210f, 873f, 508f))))));
    var_0 = firstLeadingBit(vec2<i32>(_wgslsmith_sub_i32(1i, var_0.x), 1361i));
    var var_2 = 870f;
    var var_3 = Struct_4(Struct_2(436f, var_1, _wgslsmith_div_vec2_u32(u_input.b, vec2<u32>(u_input.b.x, u_input.b.x) << (u_input.b % vec2<u32>(32u))) << (u_input.b % vec2<u32>(32u))), vec3<f32>(_wgslsmith_f_op_f32(-832f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1263f) - _wgslsmith_f_op_f32(select(-1269f, 1175f, true)))), _wgslsmith_f_op_f32(abs(1204f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-813f, 1627f)))))), vec4<u32>(~(~(~20089u)), u_input.b.x, _wgslsmith_div_u32(u_input.b.x, 1u), (u_input.b.x & (12766u >> (u_input.b.x % 32u))) >> (u_input.b.x % 32u)), var_1.c.x);
    return StorageBuffer(5714i, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.a.a - -1374f)))), _wgslsmith_add_vec2_u32(_wgslsmith_mod_vec2_u32(~var_3.c.ww, _wgslsmith_mod_vec2_u32(~u_input.b, firstLeadingBit(vec2<u32>(u_input.b.x, u_input.b.x)))), reverseBits(u_input.b)), vec2<i32>(-u_input.c.x, 2147483647i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !vec4<bool>(true, true, any(select(select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true), false), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false), true))), any(!select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true))));
    let x = u_input.a;
    s_output = func_1(true);
}

