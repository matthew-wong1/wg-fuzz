struct Struct_1 {
    a: vec2<f32>,
    b: vec2<i32>,
    c: u32,
}

struct Struct_2 {
    a: i32,
    b: vec2<bool>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec3<u32>,
    c: u32,
    d: vec2<f32>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
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

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2() -> u32 {
    let var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_div_f32(1123f, 248f), _wgslsmith_f_op_f32(select(-131f, 525f, false)), _wgslsmith_f_op_f32(f32(-1f) * -1167f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(404f, 1323f, 1000f))))), vec3<u32>(select(u_input.a.x, firstLeadingBit(25600u), true), u_input.a.x, 82386u), _wgslsmith_mult_u32(u_input.a.x, 0u), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1109f * 392f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -124f))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1431f, -777f) + vec2<f32>(1733f, 323f)) + vec2<f32>(486f, 1452f)), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -503f), 1664f), true))));
    return u_input.a.x;
}

fn func_3() -> u32 {
    var var_0 = _wgslsmith_clamp_vec3_u32(_wgslsmith_clamp_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(37829u, ~u_input.a.x, 68551u), ~firstLeadingBit(vec3<u32>(1u, u_input.a.x, 34337u))), ~vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x) & ((vec3<u32>(u_input.a.x, 1u, 0u) << (vec3<u32>(u_input.a.x, 0u, 4294967295u) % vec3<u32>(32u))) << (max(vec3<u32>(u_input.a.x, u_input.a.x, 29753u), vec3<u32>(u_input.a.x, 4294967295u, 4294967295u)) % vec3<u32>(32u))), abs(abs(vec3<u32>(73713u, u_input.a.x, 1234u) >> (vec3<u32>(u_input.a.x, u_input.a.x, 41113u) % vec3<u32>(32u))))), ~select(vec3<u32>(1u, u_input.a.x | 4294967295u, _wgslsmith_sub_u32(u_input.a.x, u_input.a.x)), _wgslsmith_sub_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<u32>(u_input.a.x, 4294967295u, 8676u)), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)), vec3<bool>(any(vec3<bool>(false, true, true)), true, false)), abs(select(_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 0u, u_input.a.x) >> (vec3<u32>(32496u, 4294967295u, u_input.a.x) % vec3<u32>(32u)), vec3<u32>(9342u, 0u, 7754u), vec3<u32>(u_input.a.x, 13671u, 27628u) >> (vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x) % vec3<u32>(32u))), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), false)));
    var_0 = vec3<u32>(4294967295u, u_input.a.x, abs(_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(1u, u_input.a.x, 1061u), min(vec3<u32>(u_input.a.x, var_0.x, 4294967295u), vec3<u32>(u_input.a.x, u_input.a.x, 0u))), ~vec3<u32>(u_input.a.x, 54569u, 11792u))));
    var_0 = vec3<u32>(var_0.x, 13791u, 15277u);
    var var_1 = _wgslsmith_mult_vec2_i32(vec2<i32>(_wgslsmith_sub_i32(select(1i, 1i, true), _wgslsmith_sub_i32(1i, -18401i)), ~(-39378i)), ~vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-27421i, 1i, 1i), vec3<i32>(1215i, -31269i, 1i)), ~(-1i))) << ((reverseBits(select(u_input.a, max(u_input.a, var_0.yy), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true)))) ^ var_0.xy) % vec2<u32>(32u));
    var var_2 = ~countOneBits(_wgslsmith_add_u32(u_input.a.x, _wgslsmith_dot_vec4_u32(abs(vec4<u32>(var_0.x, 1u, u_input.a.x, 4294967295u)), _wgslsmith_sub_vec4_u32(vec4<u32>(15136u, 39718u, 41340u, var_0.x), vec4<u32>(37920u, 4294967295u, 2815u, 52013u)))));
    return ~u_input.a.x;
}

fn func_1(arg_0: vec4<u32>) -> vec2<bool> {
    var var_0 = _wgslsmith_mult_u32(func_2(), arg_0.x);
    var_0 = ~(~_wgslsmith_dot_vec4_u32(arg_0, arg_0 & ~vec4<u32>(arg_0.x, 1u, 13322u, u_input.a.x)));
    var_0 = _wgslsmith_mod_u32((~(~u_input.a.x) & u_input.a.x) & ~(countOneBits(u_input.a.x) & 4294967295u), _wgslsmith_sub_u32(u_input.a.x, func_3()) ^ _wgslsmith_sub_u32(arg_0.x, 0u));
    var var_1 = ~_wgslsmith_sub_u32(abs(17486u), _wgslsmith_mod_u32(firstTrailingBit(59659u), u_input.a.x)) <= firstLeadingBit(_wgslsmith_clamp_u32(select(41199u ^ u_input.a.x, firstTrailingBit(arg_0.x), 34886u < u_input.a.x), select(55625u, arg_0.x | 58165u, select(false, false, false)), ~arg_0.x));
    var_1 = all(vec4<bool>(false, any(vec4<bool>(true, true, true, true)), false, !all(vec3<bool>(false, false, false))));
    return vec2<bool>(true & (1i >= _wgslsmith_dot_vec2_i32(~vec2<i32>(-2147483647i, 36330i), vec2<i32>(9271i, -30637i))), true);
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_4, arg_2: f32, arg_3: i32) -> Struct_4 {
    let var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.a.c.a.x, arg_1.a.c.a.x, -1000f) + _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(exp2(arg_1.a.c.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -1610f), _wgslsmith_f_op_f32(f32(-1f) * -1187f))))), arg_0.xzx, firstLeadingBit(~arg_1.a.c.c), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1693f, arg_1.a.c.a.x)))));
    let var_1 = arg_1.a.c;
    let var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(var_1.a + var_0.a.yx), vec2<i32>(-11206i, _wgslsmith_div_i32(i32(-1i) * -arg_1.b.x, var_1.b.x << (_wgslsmith_sub_u32(var_0.b.x, 84343u) % 32u))), select(var_0.b.x, abs(func_2()), false));
    return Struct_4(arg_1.a, arg_1.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -593f), 1f));
    let var_1 = func_4(_wgslsmith_div_vec4_u32(vec4<u32>(34750u, u_input.a.x, ~u_input.a.x, 45618u), ~vec4<u32>(select(u_input.a.x, u_input.a.x, true), u_input.a.x, u_input.a.x, ~1u)), Struct_4(Struct_2(_wgslsmith_sub_i32(_wgslsmith_mod_i32(-18217i, 1i), abs(-36891i)), func_1(vec4<u32>(u_input.a.x, u_input.a.x, 19173u, 60356u)), Struct_1(_wgslsmith_div_vec2_f32(vec2<f32>(var_0, var_0), vec2<f32>(var_0, -269f)), min(vec2<i32>(-4720i, -1i), vec2<i32>(-45256i, 13972i)), 4294967295u)), vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, -47781i, -2536i), vec3<i32>(-50393i, 63993i, -2147483647i) >> (vec3<u32>(u_input.a.x, 83036u, u_input.a.x) % vec3<u32>(32u))), select(-1i << (u_input.a.x % 32u), ~(-35464i), all(vec4<bool>(true, false, true, true))), countOneBits(1i))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(201f))))), _wgslsmith_mult_i32(~1i, -3233i));
    let x = u_input.a;
    s_output = StorageBuffer(~var_1.a.c.c);
}

