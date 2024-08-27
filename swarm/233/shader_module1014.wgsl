struct Struct_1 {
    a: vec4<i32>,
    b: vec3<bool>,
    c: vec3<u32>,
    d: vec2<f32>,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: vec2<f32>,
    d: vec3<u32>,
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

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec4<u32>) -> vec3<u32> {
    var var_0 = _wgslsmith_f_op_f32(1032f + _wgslsmith_div_f32(-213f, -276f));
    var var_1 = arg_1;
    return (var_1.c ^ ~var_1.c) ^ ~_wgslsmith_add_vec3_u32(~vec3<u32>(var_1.c.x, 58043u, arg_0.c.x), arg_0.c);
}

fn func_2(arg_0: i32) -> Struct_1 {
    var var_0 = Struct_2(Struct_1(vec4<i32>(-1i) * -vec4<i32>(arg_0, arg_0, arg_0, 17755i), vec3<bool>(false, select(any(vec4<bool>(false, true, true, false)), true, true), any(vec3<bool>(true, true, true))), ~(vec3<u32>(41061u, 33336u, 23815u) & u_input.a.wxx) ^ countOneBits(~u_input.a.ywx), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1039f, -2455f), _wgslsmith_f_op_vec2_f32(vec2<f32>(-472f, 287f) + vec2<f32>(738f, 614f)))))), 134108u));
    var_0 = Struct_2(var_0.a);
    let var_1 = Struct_2(Struct_1(var_0.a.a, !(!select(vec3<bool>(var_0.a.b.x, false, var_0.a.b.x), var_0.a.b, false)), func_3(var_0.a, var_0.a, var_0.a, vec4<u32>(81285u, var_0.a.c.x, u_input.a.x, u_input.c)) ^ vec3<u32>(_wgslsmith_div_u32(var_0.a.c.x, var_0.a.e), 46234u & var_0.a.e, u_input.a.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_0.a.d.x), 2261f)), u_input.c));
    var_0 = Struct_2(var_0.a);
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(floor(var_0.a.d.x)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-2297f + -1648f), _wgslsmith_f_op_f32(f32(-1f) * -1000f), !(0i <= var_0.a.a.x))))));
    return var_0.a;
}

fn func_4(arg_0: Struct_2, arg_1: bool, arg_2: f32, arg_3: i32) -> f32 {
    let var_0 = Struct_2(func_2(~(-abs(arg_3))));
    var var_1 = Struct_1(vec4<i32>(27217i, firstTrailingBit(_wgslsmith_mod_i32(_wgslsmith_sub_i32(0i, u_input.b.x), arg_3)), _wgslsmith_clamp_i32(-62793i, arg_3, _wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.b.x, u_input.b.x, var_0.a.a.x, arg_0.a.a.x), arg_0.a.a)), 48262i), select(select(var_0.a.b, !var_0.a.b, vec3<bool>(!arg_1, any(vec4<bool>(false, arg_1, var_0.a.b.x, var_0.a.b.x)), !var_0.a.b.x)), vec3<bool>(true, arg_0.a.b.x, any(!vec4<bool>(var_0.a.b.x, false, true, true))), vec3<bool>(!(82582u >= arg_0.a.c.x), false, false)), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.c ^ 0u, 1u, 20243u), vec3<u32>(74210u, _wgslsmith_mod_u32(arg_0.a.e, var_0.a.c.x) >> (~0u % 32u), ~_wgslsmith_mult_u32(1u, var_0.a.e))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1579f, arg_2) - vec2<f32>(arg_0.a.d.x, arg_2))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.d.x, arg_0.a.d.x))))), abs(func_2(var_0.a.a.x).c.x));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1128f, var_1.d.x, arg_0.a.d.x, 279f), vec4<f32>(-1080f, 1194f, var_1.d.x, arg_0.a.d.x)))))))));
    var_2 = vec4<f32>(arg_0.a.d.x, -883f, _wgslsmith_div_f32(-1060f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(176f, 220f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-487f))));
    var_1 = func_2(var_0.a.a.x);
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1501f, 557f, all(!vec3<bool>(false, arg_0.a.b.x, arg_1)))))));
}

fn func_1(arg_0: vec4<bool>, arg_1: vec2<bool>, arg_2: vec4<i32>, arg_3: i32) -> u32 {
    let var_0 = 1f;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(Struct_2(func_2(u_input.b.x)), !any(select(arg_0.ywz, arg_0.xwy, false)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -221f))), ~(-1i))));
    var var_2 = func_2(_wgslsmith_mult_i32(max(-1i, countOneBits(-11196i)), abs(u_input.b.x)));
    let var_3 = ~u_input.a.xxx;
    let var_4 = arg_3;
    return ~_wgslsmith_clamp_u32(~(~4294967295u), var_2.e, abs(var_2.e ^ 0u)) & min(var_3.x, u_input.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 2360f;
    var var_1 = Struct_1(-vec4<i32>(-41109i, u_input.b.x, u_input.b.x, _wgslsmith_mult_i32(u_input.b.x, -3618i) >> ((u_input.a.x >> (54641u % 32u)) % 32u)), !vec3<bool>((u_input.b.x ^ 2147483647i) >= _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 37662i, 8017i), vec3<i32>(u_input.b.x, u_input.b.x, 5264i)), any(select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false), true)), any(vec3<bool>(true, true, true))), vec3<u32>(4294967295u, ~u_input.a.x, ~(~1u)), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1125f, var_0), vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_0 + 570f))), var_0))), u_input.c << ((func_1(select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, false)), select(vec2<bool>(false, true), vec2<bool>(false, true), true), vec4<i32>(u_input.b.x, 1i, 1i, 2147483647i), -1i) & _wgslsmith_mult_u32(func_1(vec4<bool>(false, false, true, true), vec2<bool>(true, true), vec4<i32>(u_input.b.x, u_input.b.x, 2147483647i, u_input.b.x), 38277i), select(4294967295u, 4324u, true))) % 32u));
    var var_2 = func_2(countOneBits(var_1.a.x));
    let var_3 = func_2(_wgslsmith_mult_i32(_wgslsmith_mod_i32(~var_1.a.x & reverseBits(-2147483647i), reverseBits(2812i)), 0i));
    var_1 = Struct_1(firstTrailingBit(_wgslsmith_div_vec4_i32(vec4<i32>(4984i, 56042i, -2147483647i, var_3.a.x) & vec4<i32>(u_input.b.x, -1i, var_1.a.x, var_3.a.x), var_2.a)), func_2(~2239i ^ (~var_3.a.x | _wgslsmith_dot_vec4_i32(vec4<i32>(-3114i, var_3.a.x, u_input.b.x, var_2.a.x), vec4<i32>(-5701i, -2147483647i, u_input.b.x, 19870i)))).b, var_2.c, var_1.d, 0u);
    var_1 = Struct_1(vec4<i32>(-2147483647i, countOneBits(var_2.a.x), _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(select(vec2<i32>(var_3.a.x, u_input.b.x), vec2<i32>(-1i, 10614i), vec2<bool>(var_2.b.x, true)), vec2<i32>(var_2.a.x, var_3.a.x)), var_2.a.x), var_2.a.x), !select(var_2.b, !vec3<bool>(false, var_3.b.x, true), 1u == var_3.c.x), ~vec3<u32>(var_3.c.x, ~var_3.c.x, countOneBits(~70822u)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_3.d.x, var_2.d.x))) - var_2.d) * vec2<f32>(_wgslsmith_f_op_f32(var_2.d.x - _wgslsmith_f_op_f32(-var_1.d.x)), var_3.d.x)), 1u ^ ~reverseBits(abs(u_input.c)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(var_3.e, var_3.e), _wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, var_3.c.x, var_1.e), ~(vec3<u32>(var_2.c.x, var_3.e, u_input.c) ^ vec3<u32>(68277u, 0u, u_input.a.x)), min(var_1.c, vec3<u32>(25377u, var_2.e, 4294967295u) | (var_2.c | vec3<u32>(u_input.a.x, var_3.c.x, 1u)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_3.d.x), var_1.d.x)), min(firstTrailingBit(var_1.c), u_input.a.zyx));
}

