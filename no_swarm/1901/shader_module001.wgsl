struct Struct_1 {
    a: vec2<f32>,
    b: u32,
    c: f32,
    d: vec2<i32>,
    e: vec2<i32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec3<bool>,
    c: Struct_1,
    d: vec4<u32>,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 11451u;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
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

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_1) -> u32 {
    let var_0 = Struct_2(vec4<f32>(-381f, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(arg_1.a.x, _wgslsmith_f_op_f32(round(arg_1.a.x))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x * 374f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x + arg_1.c)), arg_1.c))), vec3<bool>(true, !(_wgslsmith_dot_vec2_i32(u_input.b, vec2<i32>(34119i, -5598i)) != firstLeadingBit(arg_1.d.x)), any(vec4<bool>(false, true, true, select(false, true, false)))), arg_1, ~((_wgslsmith_clamp_vec4_u32(vec4<u32>(71413u, 4294967295u, u_input.a.x, 4294967295u), vec4<u32>(1u, u_input.a.x, 4294967295u, 1u), vec4<u32>(65229u, 1u, 4294967295u, arg_1.b)) << (firstTrailingBit(vec4<u32>(4294967295u, 0u, arg_1.b, u_input.a.x)) % vec4<u32>(32u))) | firstLeadingBit(vec4<u32>(19807u, u_input.a.x, arg_1.b, u_input.a.x))), _wgslsmith_add_vec4_u32(~vec4<u32>(~arg_1.b, 1u, 4294967295u, u_input.a.x), max(firstTrailingBit(~vec4<u32>(u_input.a.x, 12202u, 37773u, 0u)), firstLeadingBit(vec4<u32>(20181u, 25529u, arg_1.b, 5787u)) ^ vec4<u32>(0u, 25137u, u_input.a.x, arg_1.b))));
    global0 = var_0.e.x;
    var var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-arg_0))), vec3<bool>(select(!(!var_0.b.x), any(vec2<bool>(false, false)), var_0.b.x), !var_0.b.x, ~11690i <= -var_0.c.e.x), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(arg_0.x, 962f))), var_0.a.x), u_input.a.x, arg_1.a.x, vec2<i32>(_wgslsmith_mult_i32(~var_0.c.e.x, i32(-1i) * -21513i), abs(max(-46734i, -1i))), var_0.c.e), vec4<u32>(var_0.d.x, 0u, 1u, _wgslsmith_mult_u32(_wgslsmith_mod_u32(select(var_0.d.x, u_input.a.x, false), 1u), 1u)), firstTrailingBit(var_0.d) ^ _wgslsmith_sub_vec4_u32(var_0.d, vec4<u32>(_wgslsmith_div_u32(arg_1.b, arg_1.b), arg_1.b, ~u_input.a.x, ~0u)));
    let var_2 = true;
    var var_3 = arg_1;
    return ~_wgslsmith_clamp_u32(1u, 1u, ~var_0.c.b);
}

fn func_2(arg_0: u32) -> vec4<u32> {
    global0 = ~(~min(u_input.a.x & func_3(vec4<f32>(-813f, 1564f, 248f, -820f), Struct_1(vec2<f32>(704f, 539f), arg_0, -1105f, u_input.b, vec2<i32>(u_input.b.x, u_input.b.x))), _wgslsmith_sub_u32(~4294967295u, _wgslsmith_add_u32(4294967295u, arg_0))));
    var var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(1553f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(277f, -766f)) - _wgslsmith_f_op_f32(f32(-1f) * -874f)) + _wgslsmith_f_op_f32(166f - 1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1156f + -1996f)))));
    global0 = _wgslsmith_dot_vec3_u32(~firstTrailingBit(u_input.a), u_input.a);
    global0 = ~(0u | _wgslsmith_mod_u32(4294967295u, max(u_input.a.x, ~arg_0)));
    var var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(191f, 507f, -391f, var_0.x))))))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0.x, var_0.x, _wgslsmith_div_f32(var_0.x, 431f), _wgslsmith_f_op_f32(ceil(var_0.x))))))), !select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), select(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), true), vec3<bool>(false, true, true), true), !select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, false))), Struct_1(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-var_0.xy))), ~u_input.a.x ^ arg_0, _wgslsmith_f_op_f32(ceil(var_0.x)), _wgslsmith_sub_vec2_i32(select(abs(u_input.b), vec2<i32>(u_input.b.x, 2147483647i), vec2<bool>(true, true)), vec2<i32>(i32(-1i) * -2147483647i, abs(u_input.b.x))), select((u_input.b & u_input.b) | vec2<i32>(u_input.b.x, u_input.b.x), _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.b.x, u_input.b.x), u_input.b, u_input.b) >> (u_input.a.yz % vec2<u32>(32u)), vec2<bool>(true, true))), select(~(~_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 67801u, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, arg_0))), vec4<u32>(4294967295u, u_input.a.x, 25372u, u_input.a.x), false), firstTrailingBit(firstTrailingBit(abs(vec4<u32>(arg_0, 2147u, u_input.a.x, u_input.a.x)))) >> (max(~_wgslsmith_div_vec4_u32(vec4<u32>(arg_0, arg_0, 2217u, 4294967295u), vec4<u32>(35104u, 78849u, arg_0, 23967u)), max(_wgslsmith_mod_vec4_u32(vec4<u32>(2302u, u_input.a.x, u_input.a.x, 0u), vec4<u32>(arg_0, arg_0, 100769u, 4294967295u)), min(vec4<u32>(40600u, arg_0, 1u, 1u), vec4<u32>(arg_0, arg_0, 0u, 4294967295u)))) % vec4<u32>(32u)));
    return vec4<u32>(~(firstTrailingBit(var_1.c.b) ^ max(max(20090u, 1u), var_1.c.b)), _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(~var_1.d.zz, vec2<u32>(1u, 1u)), arg_0), arg_0, min(abs(_wgslsmith_div_u32(u_input.a.x, 12033u)) << (var_1.e.x % 32u), arg_0));
}

fn func_1(arg_0: u32, arg_1: f32) -> bool {
    global0 = ~(~u_input.a.x) ^ (min(~u_input.a.x, ~u_input.a.x) >> (_wgslsmith_dot_vec4_u32(firstTrailingBit(~vec4<u32>(u_input.a.x, 0u, u_input.a.x, arg_0)), _wgslsmith_sub_vec4_u32(func_2(71556u), _wgslsmith_sub_vec4_u32(vec4<u32>(arg_0, u_input.a.x, arg_0, 1u), vec4<u32>(arg_0, arg_0, 12870u, 39795u)))) % 32u));
    let var_0 = ~_wgslsmith_add_vec4_u32(~(~(~vec4<u32>(38606u, u_input.a.x, 1u, 53520u))), _wgslsmith_sub_vec4_u32(~reverseBits(vec4<u32>(53817u, 4294967295u, 5949u, 4294967295u)), ~(vec4<u32>(arg_0, arg_0, arg_0, u_input.a.x) >> (vec4<u32>(0u, 28072u, 1u, u_input.a.x) % vec4<u32>(32u)))));
    global0 = _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(~_wgslsmith_div_vec2_u32(vec2<u32>(13832u, 10875u), _wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, 0u), var_0.wz)), reverseBits(~(~vec2<u32>(arg_0, var_0.x)))), ~_wgslsmith_mult_vec2_u32(_wgslsmith_div_vec2_u32(min(vec2<u32>(100320u, u_input.a.x), vec2<u32>(u_input.a.x, 23424u)), vec2<u32>(var_0.x, u_input.a.x)), ~(~vec2<u32>(4294967295u, arg_0))));
    global0 = firstTrailingBit(var_0.x);
    let var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -225f, 718f, arg_1) + vec4<f32>(1005f, arg_1, arg_1, -138f))) + _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_1, -347f, 325f, arg_1)))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(min(487f, arg_1)), -517f, _wgslsmith_div_f32(853f, 749f))))), !(!vec3<bool>(-2147483647i == u_input.b.x, true, true)), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(1691f, -371f)))))), 0u, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1058f) + _wgslsmith_div_f32(1036f, 558f)), -461f), u_input.b, -u_input.b), var_0, ~var_0);
    return var_1.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~u_input.a.x;
    let var_1 = !any(!vec4<bool>(u_input.a.x < u_input.a.x, u_input.b.x <= u_input.b.x, false, true));
    let var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, 197f) + 1f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -327f), _wgslsmith_f_op_f32(step(919f, -1903f))), 263f)), !select(!select(vec3<bool>(false, var_1, var_1), vec3<bool>(var_1, var_1, false), vec3<bool>(var_1, true, true)), !vec3<bool>(var_1, var_1, false), select(select(vec3<bool>(var_1, true, var_1), vec3<bool>(var_1, false, var_1), true), vec3<bool>(true, var_1, var_1), func_1(u_input.a.x, -1104f))), Struct_1(vec2<f32>(984f, 823f), u_input.a.x & func_3(vec4<f32>(976f, -316f, -2120f, 1339f), Struct_1(vec2<f32>(-928f, -604f), 4294967295u, 1079f, vec2<i32>(16446i, u_input.b.x), u_input.b)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1605f))))), -vec2<i32>(~(-1i), -1i), reverseBits(vec2<i32>(-22412i << (u_input.a.x % 32u), -6316i))), ~countOneBits(~vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 4294967295u)), vec4<u32>(94027u, func_2(countOneBits(min(32136u, u_input.a.x))).x, u_input.a.x, ~u_input.a.x));
    var var_3 = 2176i;
    var var_4 = ~vec2<u32>(~(~_wgslsmith_mult_u32(var_2.c.b, 1u)), var_2.d.x);
    let var_5 = _wgslsmith_f_op_f32(-1957f * 1000f);
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(1i));
}

