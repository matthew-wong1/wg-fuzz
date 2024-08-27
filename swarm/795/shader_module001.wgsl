struct Struct_1 {
    a: i32,
    b: bool,
    c: vec4<i32>,
    d: bool,
}

struct Struct_2 {
    a: f32,
    b: vec4<f32>,
    c: vec2<u32>,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 21>;

var<private> global1: i32 = 101205i;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<bool>) -> u32 {
    global1 = -u_input.a.x >> (1u % 32u);
    let var_0 = vec2<bool>(false, select(true, true, (_wgslsmith_sub_u32(u_input.b, u_input.b) >> ((u_input.b ^ 69151u) % 32u)) <= u_input.b));
    var var_1 = _wgslsmith_f_op_f32(-882f + -2356f);
    let var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-134f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1516f * -1528f))) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(491f))))))));
    var var_3 = u_input.a.zyw;
    return reverseBits(19971u);
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1(0i << (func_3(vec3<bool>(false, true, false & global0[_wgslsmith_index_u32(18690u, 21u)])) % 32u), global0[_wgslsmith_index_u32(u_input.b, 21u)], -u_input.a, u_input.b < 59993u);
    let var_1 = all(vec3<bool>(!(_wgslsmith_f_op_f32(floor(-576f)) >= 1000f), all(select(select(vec4<bool>(false, false, false, global0[_wgslsmith_index_u32(u_input.b, 21u)]), vec4<bool>(true, var_0.d, true, true), vec4<bool>(global0[_wgslsmith_index_u32(u_input.b, 21u)], var_0.d, var_0.d, global0[_wgslsmith_index_u32(4294967295u, 21u)])), select(vec4<bool>(var_0.d, true, false, var_0.b), vec4<bool>(true, var_0.b, true, global0[_wgslsmith_index_u32(u_input.b, 21u)]), vec4<bool>(false, var_0.b, false, var_0.b)), u_input.b == 1u)), !all(select(vec4<bool>(var_0.b, var_0.b, false, false), vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.b, 21u)], var_0.b, true), vec4<bool>(global0[_wgslsmith_index_u32(26851u, 21u)], true, true, var_0.b)))));
    let var_2 = Struct_2(-1135f, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -763f) + -968f) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(-384f, -1401f) * -866f)), _wgslsmith_f_op_f32(-424f - _wgslsmith_f_op_f32(abs(-103f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(-273f, 455f, var_0.d)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2384f + -398f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-245f)) * 1164f)), vec2<u32>(0u, _wgslsmith_mod_u32(_wgslsmith_clamp_u32(_wgslsmith_div_u32(u_input.b, 4294967295u), 4294967295u, 37930u), _wgslsmith_add_u32(~21722u, 0u))), vec3<u32>(reverseBits(min(4294967295u, _wgslsmith_add_u32(u_input.b, 4294967295u))), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, _wgslsmith_sub_u32(u_input.b, u_input.b), ~u_input.b), ~(~vec3<u32>(1u, u_input.b, u_input.b))), u_input.b));
    var var_3 = var_0;
    let var_4 = _wgslsmith_div_vec4_u32(vec4<u32>(30926u, select(~u_input.b >> ((u_input.b ^ var_2.d.x) % 32u), var_2.c.x, false), var_2.d.x, 22130u), ~(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b, var_2.d.x, u_input.b, 13251u), ~vec4<u32>(var_2.d.x, var_2.d.x, u_input.b, var_2.d.x)) & ~_wgslsmith_div_vec4_u32(vec4<u32>(var_2.d.x, 39215u, u_input.b, 0u), vec4<u32>(u_input.b, u_input.b, 1u, var_2.c.x))));
    return Struct_1(_wgslsmith_dot_vec2_i32(vec2<i32>(~2147483647i ^ _wgslsmith_dot_vec4_i32(var_3.c, var_0.c), 1i), ~_wgslsmith_sub_vec2_i32(vec2<i32>(5626i, 2147483647i), min(vec2<i32>(u_input.a.x, -27890i), var_0.c.ww))), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(1u, _wgslsmith_mult_u32(var_2.c.x, u_input.b), firstTrailingBit(13969u), 1u), ~abs(vec4<u32>(var_4.x, u_input.b, 24148u, u_input.b)) ^ var_4), 21u)], -select(countOneBits(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a.x, 28684i, 30602i, -15894i), var_3.c)), vec4<i32>(var_3.c.x, 24577i, var_0.a, var_3.c.x) >> (vec4<u32>(41193u, u_input.b, u_input.b, 6354u) % vec4<u32>(32u)), true), true);
}

fn func_1(arg_0: bool, arg_1: u32, arg_2: Struct_2, arg_3: vec4<u32>) -> Struct_2 {
    let var_0 = func_2();
    let var_1 = Struct_1(-19553i << (~(~0u) % 32u), any(select(select(select(vec2<bool>(true, global0[_wgslsmith_index_u32(82353u, 21u)]), vec2<bool>(false, false), false), select(vec2<bool>(false, var_0.b), vec2<bool>(false, arg_0), vec2<bool>(var_0.b, var_0.b)), !vec2<bool>(false, var_0.d)), select(!vec2<bool>(var_0.b, global0[_wgslsmith_index_u32(1u, 21u)]), !vec2<bool>(arg_0, arg_0), vec2<bool>(var_0.d, arg_0)), arg_0)), abs(var_0.c), var_0.d != true);
    let var_2 = arg_2;
    let var_3 = Struct_2(_wgslsmith_f_op_f32(abs(376f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(floor(947f)), arg_2.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_2.b.x)) * _wgslsmith_f_op_f32(floor(495f))), 1419f), arg_2.b, false)), abs(select(var_2.c, vec2<u32>(16673u, ~51135u), arg_0)), arg_2.d);
    let var_4 = var_1;
    return Struct_2(var_2.a, var_2.b, arg_3.xw, var_3.d);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(!(!(true || global0[_wgslsmith_index_u32(u_input.b, 21u)]) | all(select(vec2<bool>(global0[_wgslsmith_index_u32(u_input.b, 21u)], true), vec2<bool>(false, global0[_wgslsmith_index_u32(13359u, 21u)]), global0[_wgslsmith_index_u32(14916u, 21u)]))), _wgslsmith_mod_u32(abs(23443u) & ~countOneBits(u_input.b), ~_wgslsmith_mult_u32(0u, _wgslsmith_clamp_u32(0u, 44237u, 1u))), Struct_2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(2363f + -1405f))), vec4<f32>(-661f, -251f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1020f + -510f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1553f, 116f, global0[_wgslsmith_index_u32(u_input.b, 21u)])) * 1472f)), vec2<u32>(4294967295u, ~1u) | ~vec2<u32>(29097u, u_input.b), (_wgslsmith_add_vec3_u32(vec3<u32>(23573u, u_input.b, 52671u), vec3<u32>(42562u, 58773u, u_input.b)) >> (vec3<u32>(65240u, 42017u, 16759u) % vec3<u32>(32u))) | _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b, 4294967295u, u_input.b), min(vec3<u32>(u_input.b, 86298u, u_input.b), vec3<u32>(1u, 31195u, u_input.b)))), reverseBits(~(~_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b, u_input.b, u_input.b, 6213u), vec4<u32>(0u, u_input.b, u_input.b, 18125u), vec4<u32>(u_input.b, 1u, 0u, 0u)))));
    var var_1 = 0u;
    global0 = array<bool, 21>();
    global1 = _wgslsmith_mod_i32(39477i, ~_wgslsmith_mult_i32(-49355i, -(u_input.a.x ^ -7714i)));
    let var_2 = vec3<i32>(-9737i, _wgslsmith_add_i32(u_input.a.x, 1i), max(u_input.a.x, max(countOneBits(2147483647i), u_input.a.x << (53090u % 32u)) | (-11987i & u_input.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.c.x, 6154i, ~vec3<u32>(~firstTrailingBit(u_input.b), _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.d.x, 102978u, var_0.c.x, u_input.b), vec4<u32>(36022u, u_input.b, u_input.b, var_0.c.x)), 0u), var_0.d.x));
}

