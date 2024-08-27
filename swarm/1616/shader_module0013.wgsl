struct Struct_1 {
    a: f32,
    b: f32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: bool,
    d: Struct_1,
    e: i32,
}

struct Struct_3 {
    a: vec4<u32>,
}

struct Struct_4 {
    a: i32,
    b: f32,
    c: vec4<u32>,
    d: Struct_3,
    e: vec2<f32>,
}

struct Struct_5 {
    a: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 12>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> f32 {
    global0 = array<vec3<bool>, 12>();
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(_wgslsmith_div_f32(661f, -328f) * 1876f)), _wgslsmith_f_op_f32(step(-1442f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-370f, -407f)))), 619f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-158f, -416f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(498f * 644f))), (u_input.b <= -28156i) && true)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-278f - 1075f))))));
    let var_1 = true;
    var var_2 = Struct_4(_wgslsmith_sub_i32(40062i, -1327i), var_0.x, vec4<u32>(~_wgslsmith_dot_vec2_u32(u_input.c.xz, u_input.c.yx) >> (_wgslsmith_dot_vec2_u32(u_input.c.xy, vec2<u32>(u_input.a.x, 61875u)) % 32u), u_input.a.x, u_input.c.x, 17868u), Struct_3(min(_wgslsmith_mult_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(30065u, 86897u, 4294967295u, 45600u), vec4<u32>(1u, u_input.c.x, 1u, u_input.c.x), vec4<u32>(u_input.a.x, 4294967295u, u_input.c.x, u_input.c.x)), vec4<u32>(4294967295u, u_input.a.x, u_input.c.x, u_input.a.x)), vec4<u32>(u_input.c.x, ~u_input.a.x, ~4294967295u, reverseBits(0u)))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, 143f) - _wgslsmith_div_vec2_f32(var_0.zx, var_0.zz))))));
    let var_3 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(380f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.x))))), _wgslsmith_f_op_f32(var_2.b + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-710f + -273f) * _wgslsmith_f_op_f32(-var_2.b))))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_3.a - _wgslsmith_f_op_f32(min(571f, var_0.x))), var_3.b) + _wgslsmith_f_op_f32(-var_2.e.x)));
}

fn func_2(arg_0: vec3<i32>, arg_1: f32) -> Struct_3 {
    global0 = array<vec3<bool>, 12>();
    var var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1 + _wgslsmith_f_op_f32(abs(arg_1))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1 * 1024f) - _wgslsmith_f_op_f32(arg_1 + 248f))))));
    let var_1 = u_input.a;
    return Struct_3(vec4<u32>(abs(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(88673u, u_input.a.x, var_1.x, 38744u), vec4<u32>(var_1.x, 8792u, 0u, var_1.x)), firstTrailingBit(35215u))), ~(~_wgslsmith_sub_u32(var_1.x, var_1.x)), _wgslsmith_mod_u32(_wgslsmith_mult_u32(u_input.c.x & var_1.x, var_1.x << (0u % 32u)), 1540u), countOneBits(1u)));
}

fn func_4(arg_0: i32, arg_1: bool, arg_2: Struct_3, arg_3: vec3<bool>) -> f32 {
    var var_0 = u_input.a.x;
    var_0 = _wgslsmith_mod_u32(1u, ~1u);
    var var_1 = Struct_4(firstLeadingBit(~reverseBits(min(u_input.b, -1i))), _wgslsmith_f_op_f32(f32(-1f) * -1204f), ~min(arg_2.a, arg_2.a), func_2((vec3<i32>(arg_0, 6316i, u_input.b) | ~vec3<i32>(u_input.b, u_input.b, -32600i)) ^ -_wgslsmith_mult_vec3_i32(vec3<i32>(2147483647i, arg_0, u_input.b), vec3<i32>(77385i, arg_0, arg_0)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1f * -2724f), 191f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(min(121f, 117f)), -751f)));
    global0 = array<vec3<bool>, 12>();
    var var_2 = func_2(~(-(~(-vec3<i32>(u_input.b, -1i, var_1.a)))), _wgslsmith_f_op_f32(-749f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.e.x - _wgslsmith_f_op_f32(abs(var_1.e.x))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b) - -281f))));
    return _wgslsmith_f_op_f32(var_1.e.x * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_3()))));
}

fn func_1() -> StorageBuffer {
    var var_0 = !((select(_wgslsmith_div_u32(u_input.a.x, 162778u), ~u_input.a.x, select(false, false, false)) << (_wgslsmith_div_u32(4294967295u, 1u) % 32u)) < u_input.a.x);
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(0i, true, func_2(vec3<i32>(u_input.b, u_input.b, u_input.b), -990f), vec3<bool>(true, false, false))) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, 1006f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1442f)) - _wgslsmith_f_op_f32(func_4(u_input.b >> (u_input.c.x % 32u), true, Struct_3(vec4<u32>(0u, u_input.a.x, 13159u, 136u)), global0[_wgslsmith_index_u32(u_input.a.x, 12u)])))) <= -606f;
    var_0 = select(true || ((~(-2147483647i) | ~u_input.b) >= u_input.b), reverseBits(_wgslsmith_add_u32(abs(1u), 0u)) >= (u_input.c.x & u_input.a.x), var_1);
    let var_2 = vec2<u32>(u_input.a.x, select(_wgslsmith_sub_u32(u_input.c.x, u_input.a.x), 1u, var_1));
    global0 = array<vec3<bool>, 12>();
    return StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1506f) * -1558f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(651f, 386f), -1054f)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<bool>, 12>();
    let var_0 = Struct_5(true);
    var var_1 = vec4<u32>(45208u, 0u, 18436u, ~_wgslsmith_clamp_u32(u_input.c.x, 1u, 64447u));
    let x = u_input.a;
    s_output = func_1();
}

