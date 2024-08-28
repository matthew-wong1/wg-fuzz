struct Struct_1 {
    a: vec4<u32>,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec4<u32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec4<u32>, arg_1: vec4<f32>, arg_2: u32) -> i32 {
    var var_0 = _wgslsmith_dot_vec3_u32(~u_input.b, arg_0.zwx);
    return _wgslsmith_add_i32(max(_wgslsmith_mod_i32(~49338i, u_input.d), u_input.a.x), _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(u_input.a.wx, vec2<i32>(u_input.a.x, 0i)), -2147483647i) & _wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.d, -1i, -2147483647i, u_input.d), vec4<i32>(0i, u_input.a.x, -2147483647i, u_input.a.x))) | u_input.a.x;
}

fn func_2() -> vec4<u32> {
    let var_0 = Struct_2(Struct_1(_wgslsmith_sub_vec4_u32(~(u_input.c & u_input.c), _wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(24820u, 4294967295u, 1u, 33985u), vec4<u32>(28732u, 4294967295u, 42154u, u_input.b.x)), vec4<u32>(93506u, 20092u, 36185u, 64970u))), countOneBits(_wgslsmith_clamp_i32(func_3(vec4<u32>(22223u, 45246u, u_input.e, u_input.b.x), vec4<f32>(1552f, -414f, -346f, 437f), u_input.c.x), -u_input.d, ~u_input.a.x))), _wgslsmith_add_vec3_i32(~vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 2147483647i, 1i), vec3<i32>(-19798i, 42211i, -1i)), countOneBits(u_input.a.x), ~61583i), u_input.a.wzz), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(101f))), 1f));
    let var_1 = 1u;
    var var_2 = var_0.c.x;
    var var_3 = Struct_1(~_wgslsmith_mult_vec4_u32(var_0.a.a, _wgslsmith_clamp_vec4_u32(vec4<u32>(42063u, var_0.a.a.x, 0u, 4294967295u), vec4<u32>(6u, var_0.a.a.x, var_0.a.a.x, 4294967295u) ^ vec4<u32>(1u, u_input.c.x, var_1, 4294967295u), vec4<u32>(0u, 76171u, 4294967295u, 0u))), var_0.a.b);
    var var_4 = !((_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c.x)) < _wgslsmith_f_op_f32(var_0.c.x + -163f)) || true);
    return _wgslsmith_div_vec4_u32(vec4<u32>(~firstTrailingBit(~var_0.a.a.x), _wgslsmith_dot_vec2_u32(vec2<u32>(var_1, var_0.a.a.x), var_3.a.xx), var_1, reverseBits(~(~var_0.a.a.x))), max(var_0.a.a, reverseBits(reverseBits(vec4<u32>(1u, 4294967295u, u_input.e, var_0.a.a.x))) << (_wgslsmith_add_vec4_u32(var_0.a.a, vec4<u32>(43253u, var_0.a.a.x, 4294967295u, 30448u)) % vec4<u32>(32u))));
}

fn func_1(arg_0: i32, arg_1: vec4<f32>, arg_2: vec4<bool>) -> bool {
    let var_0 = _wgslsmith_add_i32(-(firstTrailingBit(firstLeadingBit(2147483647i)) & (_wgslsmith_mod_i32(u_input.a.x, 11017i) & 1i)), u_input.a.x);
    let var_1 = func_2();
    var var_2 = arg_2.x;
    var_2 = any(select(vec3<bool>(true, false, 0u > u_input.b.x), !select(select(arg_2.wxy, arg_2.zxy, vec3<bool>(false, arg_2.x, true)), select(arg_2.yyw, arg_2.xyy, false), true), arg_2.zyz));
    var_2 = arg_2.x;
    return -(func_3(u_input.c, vec4<f32>(arg_1.x, arg_1.x, -1395f, arg_1.x), _wgslsmith_mult_u32(49570u, 10947u)) >> (~var_1.x % 32u)) < ((reverseBits(abs(arg_0)) & (func_3(vec4<u32>(var_1.x, u_input.b.x, 48845u, 4294967295u), vec4<f32>(arg_1.x, -325f, -235f, arg_1.x), u_input.e) << (var_1.x % 32u))) >> (62938u % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.d;
    var_0 = ~(-903i);
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-157f, -3040f, -1000f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1131f, 124f, -798f) + vec3<f32>(-1292f, 1945f, -1630f)) + _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1322f, 403f, -924f), vec3<f32>(-293f, 1927f, 1102f)))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(787f, 1371f, 1690f))))));
    var_0 = 1i;
    var var_2 = select(select(!select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, true)), vec3<bool>(false, select(false, func_1(-2147483647i, vec4<f32>(1057f, var_1.x, var_1.x, var_1.x), vec4<bool>(true, true, false, true)), any(vec3<bool>(true, false, false))), false), all(vec4<bool>(true, true, true, false))), !select(select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), true), select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false))), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), true), vec3<bool>(true, true, all(vec3<bool>(any(vec4<bool>(false, true, false, true)), var_1.x < var_1.x, u_input.a.x != -2147483647i))));
    var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, -127f, 1000f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, var_1.x, 1092f)))))) + vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(var_1.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -657f), _wgslsmith_f_op_f32(-var_1.x), !var_2.x)), all(!var_2.zz))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(step(971f, var_1.x)))), -213f));
    let var_3 = _wgslsmith_dot_vec2_u32(u_input.c.zz & vec2<u32>(~u_input.c.x, func_2().x), u_input.c.zx) & func_2().x;
    let var_4 = u_input.c;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(-min(-13260i & u_input.d, abs(-2758i)), _wgslsmith_sub_i32(0i, u_input.d), _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(u_input.a, u_input.a), _wgslsmith_sub_i32(u_input.a.x, ~u_input.a.x))), vec4<u32>(1u, ~max(34855u, var_3), ~var_4.x, 13316u) << (var_4 % vec4<u32>(32u)), _wgslsmith_mult_i32(max(-27765i, 52077i), -_wgslsmith_dot_vec3_i32(u_input.a.zyw ^ u_input.a.zwy, vec3<i32>(2147483647i, -21725i, 9623i))));
}

