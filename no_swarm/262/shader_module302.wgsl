struct Struct_1 {
    a: vec2<f32>,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: vec4<i32>) -> i32 {
    global0 = ~u_input.b.xwx;
    let var_0 = u_input.b.xzz;
    global0 = u_input.b.yzx;
    global0 = ~(~(~u_input.b.xwy));
    global0 = ~firstLeadingBit(var_0);
    return -(_wgslsmith_clamp_i32(0i, abs(-5028i), arg_2.x) | _wgslsmith_dot_vec3_i32(-vec3<i32>(-26561i, 12726i, -32072i), _wgslsmith_mod_vec3_i32(_wgslsmith_mult_vec3_i32(arg_1.b.xzy, arg_2.wxz), -arg_2.zwz)));
}

fn func_2() -> Struct_1 {
    global0 = ~vec3<u32>(u_input.c.x, 4294967295u, 1u);
    var var_0 = false;
    var_0 = true;
    var var_1 = 1u;
    var var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1092f - 137f) + _wgslsmith_f_op_f32(sign(489f))), _wgslsmith_f_op_f32(-309f * _wgslsmith_div_f32(-1340f, 1000f))) + _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(select(913f, -328f, true)), _wgslsmith_f_op_f32(f32(-1f) * -1106f))))), ~(~abs(vec4<i32>(-1i, u_input.a.x, u_input.a.x, -67731i))) & reverseBits(vec4<i32>(i32(-1i) * -20913i, func_3(true, Struct_1(vec2<f32>(-2037f, 1168f), vec4<i32>(0i, u_input.a.x, 1i, u_input.a.x)), vec4<i32>(u_input.a.x, -2758i, u_input.a.x, u_input.a.x)), u_input.a.x, min(u_input.a.x, -2147483647i))));
    return Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1000f, 1000f), var_2.a)) * vec2<f32>(189f, var_2.a.x))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_2.a) + _wgslsmith_f_op_vec2_f32(max(var_2.a, var_2.a))))), -var_2.b);
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: Struct_1) -> f32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, arg_0.x, arg_1.a.x, -626f) + vec4<f32>(-325f, arg_2.a.x, arg_1.a.x, -616f))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.a.x, arg_2.a.x, arg_2.a.x, -1076f)))))));
    global0 = u_input.b.yzy;
    var var_1 = abs(firstLeadingBit(u_input.b.x));
    var var_2 = arg_1;
    var var_3 = ~u_input.b;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1118f)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(162f * arg_1.a.x) * -2004f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1336f))))));
}

fn func_1(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: f32, arg_3: vec3<bool>) -> f32 {
    var var_0 = -select(select(~countOneBits(u_input.a), vec2<i32>(u_input.a.x, ~2147483647i), arg_3.x && all(vec4<bool>(false, false, arg_3.x, false))), arg_1.b.zw << (global0.yz % vec2<u32>(32u)), true);
    var var_1 = _wgslsmith_mod_vec3_u32(vec3<u32>(23572u, _wgslsmith_mult_u32(u_input.b.x ^ (23535u ^ u_input.c.x), _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.c.x, 1u), vec3<u32>(40671u, u_input.b.x, 57355u)), _wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(u_input.b.x, 4294967295u, 4294967295u, 22689u)))), u_input.b.x), max((abs(u_input.b.xyy) | vec3<u32>(4294967295u, u_input.c.x, 9826u)) << (_wgslsmith_clamp_vec3_u32(~vec3<u32>(u_input.d, global0.x, 35472u), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.c.x, 13083u, u_input.b.x), vec3<u32>(1u, global0.x, global0.x)), ~u_input.b.zwx) % vec3<u32>(32u)), _wgslsmith_sub_vec3_u32(~(~u_input.b.xxx), vec3<u32>(~1u, 1u, abs(u_input.d)))));
    global0 = ~(((u_input.b.wxz | u_input.b.xzz) ^ select(vec3<u32>(66436u, 23044u, u_input.d), u_input.b.wzx, false)) ^ ~(u_input.b.yzx >> (vec3<u32>(4294967295u, u_input.c.x, 14773u) % vec3<u32>(32u)))) ^ vec3<u32>(_wgslsmith_mod_u32(0u, global0.x), 43513u, reverseBits(~var_1.x));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1146f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2, -297f, arg_0.x)), func_2(), Struct_1(arg_1.a, arg_1.b))))));
    return _wgslsmith_f_op_f32(644f * 183f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_1(vec4<f32>(-1929f, -525f, -229f, -1496f), Struct_1(vec2<f32>(-1000f, 1000f), vec4<i32>(-2147483647i, 0i, u_input.a.x, 2147483647i)), 221f, vec3<bool>(true, true, true))))), -106f) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, 2767f) + vec2<f32>(-646f, -170f)))), ~vec4<i32>(-2147483647i, -10649i, 2147483647i, 0i));
    var var_1 = _wgslsmith_f_op_f32(-700f + -712f);
    var var_2 = _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(~_wgslsmith_add_vec2_u32(u_input.c, vec2<u32>(4603u, u_input.b.x)), vec2<u32>(select(1u, u_input.b.x, true), _wgslsmith_dot_vec3_u32(u_input.b.zxy, u_input.b.ywy)) >> (vec2<u32>(_wgslsmith_clamp_u32(u_input.c.x, 1u, 1u), firstTrailingBit(u_input.c.x)) % vec2<u32>(32u))), ~global0.xy);
    var var_3 = !(!all(select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false))));
    var var_4 = ~u_input.b;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.b.x, max(var_0.b.xxy, var_0.b.wyx), -1000f);
}

