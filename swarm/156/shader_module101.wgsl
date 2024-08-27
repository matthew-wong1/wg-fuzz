struct Struct_1 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec3<i32>,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2() -> u32 {
    let var_0 = _wgslsmith_sub_vec4_i32(~(-_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.c.x, u_input.c.x, u_input.e, u_input.e) | vec4<i32>(u_input.c.x, u_input.e, -1i, -21775i), _wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, u_input.e, u_input.e, 1i), vec4<i32>(u_input.e, u_input.e, u_input.c.x, -2147483647i)))), ~min((vec4<i32>(u_input.c.x, u_input.c.x, -1i, u_input.c.x) ^ vec4<i32>(u_input.c.x, u_input.c.x, u_input.e, u_input.e)) ^ _wgslsmith_sub_vec4_i32(vec4<i32>(-1i, -1i, -45710i, 2147483647i), vec4<i32>(0i, 1i, u_input.e, 1i)), select(reverseBits(vec4<i32>(-142i, -1025i, 0i, u_input.e)), min(vec4<i32>(1i, u_input.e, 1i, u_input.c.x), vec4<i32>(-44732i, 29152i, u_input.e, 0i)), true)));
    var var_1 = -u_input.e;
    var_1 = 29470i;
    var_1 = -u_input.e;
    let var_2 = Struct_1(var_0);
    return _wgslsmith_mult_u32(_wgslsmith_div_u32(~0u, abs(select(u_input.b.x, u_input.b.x, true) << (~4356u % 32u))), countOneBits(u_input.b.x));
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> f32 {
    var var_0 = vec4<f32>(-1504f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1246f)) - -763f) * 1f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -139f), _wgslsmith_f_op_f32(trunc(-797f)))), _wgslsmith_f_op_f32(-1f)))), _wgslsmith_f_op_f32(f32(-1f) * -1000f));
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, var_0.x, -1286f) + _wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_0.x, -695f, var_0.x, -1544f), vec4<f32>(var_0.x, 1345f, var_0.x, var_0.x)))) * vec4<f32>(_wgslsmith_f_op_f32(trunc(var_0.x)), _wgslsmith_f_op_f32(abs(1556f)), _wgslsmith_f_op_f32(floor(var_0.x)), -641f))));
    let var_1 = select(!select(vec2<bool>(true, true), vec2<bool>(true, true), any(select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, true), true))), select(!select(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true)), vec2<bool>(true, true), true), select(!select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(true, true), false), any(vec3<bool>(true, true, true))), true);
    var var_2 = arg_1;
    var var_3 = Struct_1(_wgslsmith_mod_vec4_i32(abs(-vec4<i32>(u_input.e, u_input.e, 2660i, 46061i)) >> (~abs(vec4<u32>(u_input.d.x, u_input.a, 29508u, u_input.d.x)) % vec4<u32>(32u)), vec4<i32>(min(u_input.c.x, 52443i), 1i, min(arg_1.a.x, var_2.a.x), -31509i) | ~arg_1.a));
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(745f, -1765f, var_1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1453f - var_0.x))))), true));
}

fn func_1(arg_0: Struct_1, arg_1: u32) -> u32 {
    let var_0 = ~vec2<u32>(abs(abs(u_input.d.x)), _wgslsmith_add_u32(1u, _wgslsmith_dot_vec2_u32(u_input.d.zx, u_input.d.xz))) ^ u_input.d.zz;
    var var_1 = _wgslsmith_div_vec3_u32(u_input.b.yzy, _wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(u_input.d.x, 4294967295u) ^ _wgslsmith_sub_u32(u_input.d.x, 4294967295u), func_2(), ~_wgslsmith_add_u32(arg_1, u_input.d.x)), _wgslsmith_mult_vec3_u32(~(vec3<u32>(0u, 0u, var_0.x) << (u_input.d % vec3<u32>(32u))), u_input.b.xyw)));
    var var_2 = 1i;
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(firstLeadingBit(vec3<i32>(25489i, u_input.c.x, u_input.e) ^ arg_0.a.zyz), arg_0, arg_0, Struct_1(vec4<i32>(u_input.c.x, -18551i, arg_0.a.x, u_input.c.x) << (u_input.b % vec4<u32>(32u))))) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-127f + -377f)))), _wgslsmith_f_op_f32(max(-1004f, -732f)));
    var_1 = u_input.b.yzy;
    return _wgslsmith_dot_vec2_u32(reverseBits(var_1.xz << (vec2<u32>(5742u, var_1.x) % vec2<u32>(32u))) << (_wgslsmith_clamp_vec2_u32(u_input.d.zz, ~vec2<u32>(var_0.x, var_1.x), reverseBits(vec2<u32>(4294967295u, var_1.x))) % vec2<u32>(32u)), firstTrailingBit(~(~var_0))) | u_input.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mod_i32(_wgslsmith_div_i32(u_input.e, (u_input.c.x << (func_1(Struct_1(vec4<i32>(u_input.c.x, u_input.e, u_input.e, u_input.e)), u_input.b.x) % 32u)) ^ _wgslsmith_sub_i32(-2479i, u_input.e)), ~_wgslsmith_sub_i32(u_input.c.x, -min(u_input.c.x, u_input.c.x)));
    var_0 = min(u_input.e, -14400i);
    var_0 = ~u_input.e;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-1775f, _wgslsmith_f_op_f32(f32(-1f) * -111f), true)), 679f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-326f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1126f), 221f))))));
    var_0 = u_input.e;
    var var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(-1272f, _wgslsmith_f_op_f32(abs(-387f))), var_1, _wgslsmith_f_op_f32(round(-495f))));
    let x = u_input.a;
    s_output = StorageBuffer(~1u, func_2(), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) - var_2.x), 1000f);
}

