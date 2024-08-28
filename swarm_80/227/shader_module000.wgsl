struct Struct_1 {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec4<u32>,
    d: u32,
    e: vec3<bool>,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: vec3<i32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: f32,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> bool {
    let var_0 = ~2123u;
    return any(!select(select(select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(false, true, true)), vec3<bool>(true, false, true), true), vec3<bool>(true, true, all(vec3<bool>(true, true, true))), vec3<bool>(true, true, true)));
}

fn func_2(arg_0: vec3<i32>) -> vec3<bool> {
    var var_0 = Struct_1(u_input.b, vec3<i32>(u_input.c.x, -1i, arg_0.x), max(vec4<u32>(u_input.b.x, firstLeadingBit(abs(4294967295u)), firstLeadingBit(u_input.b.x) << ((u_input.b.x << (0u % 32u)) % 32u), _wgslsmith_dot_vec3_u32(min(vec3<u32>(10853u, u_input.b.x, u_input.b.x), vec3<u32>(u_input.b.x, 4294967295u, 1u)), _wgslsmith_sub_vec3_u32(u_input.b, u_input.b))), abs(max(_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 4294967295u, u_input.b.x, 0u), vec4<u32>(13550u, u_input.b.x, u_input.b.x, u_input.b.x), vec4<u32>(0u, 54179u, 69270u, u_input.b.x)), vec4<u32>(u_input.b.x, 4294967295u, 43119u, 1u) << (vec4<u32>(82048u, u_input.b.x, u_input.b.x, u_input.b.x) % vec4<u32>(32u))))), u_input.b.x, !select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(false, false, false), true));
    var_0 = Struct_1(var_0.a, vec3<i32>(18101i, -arg_0.x, var_0.b.x), ~reverseBits(vec4<u32>(var_0.d, 44988u, 89997u, u_input.b.x)) >> (var_0.c % vec4<u32>(32u)), u_input.b.x, !vec3<bool>(func_3(), var_0.e.x, var_0.e.x));
    var_0 = Struct_1(countOneBits(select(u_input.b, select(~u_input.b, vec3<u32>(4294967295u, 4294967295u, var_0.a.x), false), true)), countOneBits(~var_0.b), _wgslsmith_mult_vec4_u32(var_0.c, select(var_0.c, vec4<u32>(38275u, 1u, 1u, 1u), !select(vec4<bool>(var_0.e.x, false, false, var_0.e.x), vec4<bool>(true, var_0.e.x, false, false), true))), 1u, select(!var_0.e, var_0.e, var_0.e.x));
    let var_1 = Struct_1(_wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_dot_vec3_u32(var_0.a, vec3<u32>(u_input.b.x, var_0.a.x, var_0.a.x)), 4294967295u, 2244u) ^ vec3<u32>(4456u, 0u, ~u_input.b.x), _wgslsmith_mod_vec3_u32(u_input.b, vec3<u32>(0u, var_0.c.x, var_0.c.x << (62270u % 32u)))), vec3<i32>(0i ^ var_0.b.x, u_input.c.x, u_input.a.x) << (~(~u_input.b ^ vec3<u32>(u_input.b.x, 0u, 60957u)) % vec3<u32>(32u)), ~var_0.c, _wgslsmith_add_u32(_wgslsmith_mult_u32(u_input.b.x, firstLeadingBit(_wgslsmith_mod_u32(u_input.b.x, 39979u))), select(~u_input.b.x, _wgslsmith_add_u32(countOneBits(4294967295u), ~u_input.b.x), any(select(vec4<bool>(var_0.e.x, var_0.e.x, var_0.e.x, var_0.e.x), vec4<bool>(false, var_0.e.x, var_0.e.x, false), vec4<bool>(true, false, true, true))))), vec3<bool>(select(!var_0.e.x, var_0.e.x, firstTrailingBit(var_0.a.x) == _wgslsmith_div_u32(u_input.b.x, 0u)), var_0.e.x, select(var_0.e.x, false, var_0.e.x | var_0.e.x) || var_0.e.x));
    var var_2 = _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(~(~countOneBits(var_0.c.wxw)), ~(~var_1.a)), min(min((u_input.b & vec3<u32>(var_1.a.x, var_0.d, var_1.a.x)) << (firstTrailingBit(vec3<u32>(67339u, u_input.b.x, u_input.b.x)) % vec3<u32>(32u)), ~_wgslsmith_mod_vec3_u32(vec3<u32>(1u, var_0.d, u_input.b.x), u_input.b)), _wgslsmith_add_vec3_u32(min(~vec3<u32>(79123u, var_0.d, 14981u), vec3<u32>(8938u, 1u, 19838u) & vec3<u32>(var_0.a.x, 4294967295u, var_1.d)), vec3<u32>(~u_input.b.x, u_input.b.x, reverseBits(0u)))));
    return var_0.e;
}

fn func_4(arg_0: u32, arg_1: Struct_2, arg_2: u32, arg_3: f32) -> vec3<bool> {
    var var_0 = 57468u & ~(~(0u & firstLeadingBit(arg_0)));
    let var_1 = u_input.c.x << (4294967295u % 32u);
    var_0 = arg_2;
    var var_2 = vec3<i32>(var_1, reverseBits(26132i), -1i);
    var_0 = arg_2;
    return vec3<bool>(all(select(!arg_1.a.zy, arg_1.a.zx, arg_1.a.x)), !(~u_input.b.x > arg_0), true);
}

fn func_1(arg_0: f32, arg_1: f32) -> vec3<bool> {
    var var_0 = select(all(vec4<bool>(false, !(763f != arg_1), true, true)), !any(vec3<bool>(-16164i > u_input.d, any(vec4<bool>(true, false, true, true)), true)), (true | (-2147483647i <= firstLeadingBit(u_input.a.x))) & true);
    return !func_4(abs(u_input.b.x), Struct_2(func_2(u_input.c)), u_input.b.x, _wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(arg_1 + arg_1)));
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    let var_0 = Struct_2(arg_0.e);
    var var_1 = arg_0;
    var_1 = arg_0;
    var var_2 = Struct_2(!(!arg_0.e));
    let var_3 = Struct_2(!vec3<bool>(var_0.a.x, var_2.a.x, !arg_0.e.x));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(Struct_1(u_input.b, _wgslsmith_add_vec3_i32(u_input.a, vec3<i32>(-2147483647i, ~u_input.c.x, -u_input.c.x)), select(vec4<u32>(u_input.b.x, 74993u, 4294967295u, u_input.b.x), (vec4<u32>(u_input.b.x, u_input.b.x, 10011u, 31414u) ^ vec4<u32>(u_input.b.x, u_input.b.x, 48964u, u_input.b.x)) << (vec4<u32>(0u, 0u, u_input.b.x, 92298u) % vec4<u32>(32u)), true), firstLeadingBit(abs(~u_input.b.x)), select(select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, false, false)), select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), false), select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), false)), vec3<bool>(true, true, true), func_1(_wgslsmith_div_f32(-1000f, 2272f), -318f))));
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1330f, -448f, 1426f)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-977f, 258f, -633f)))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(651f, 1542f, -315f)))) - vec3<f32>(313f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1232f))), -1596f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-977f + -1249f) + _wgslsmith_f_op_f32(f32(-1f) * -1104f)))));
    var_1 = _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), var_1.x), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(var_1.x)), _wgslsmith_f_op_f32(round(var_1.x)))))));
    let var_2 = var_1.yz;
    var var_3 = vec3<u32>(~(_wgslsmith_mult_u32(var_0.a.x, var_0.a.x) & _wgslsmith_dot_vec2_u32(var_0.c.zw, u_input.b.xz)) << (4294967295u % 32u), ~func_5(func_5(var_0)).c.x, u_input.b.x);
    let var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(1000f, var_1.x), var_1.x, _wgslsmith_f_op_f32(max(-1000f, -861f)), var_2.x) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1310f, -792f, var_1.x, var_1.x)))))) - vec4<f32>(_wgslsmith_f_op_f32(min(var_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) - var_2.x))), -1111f, _wgslsmith_f_op_f32(round(496f)), _wgslsmith_f_op_f32(select(137f, _wgslsmith_f_op_f32(var_2.x * -1839f), var_0.e.x))));
    let x = u_input.a;
    s_output = StorageBuffer(1229f, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(522f, var_4.x) - var_1.zy) * var_4.yw))))), 513f, 1i, ~firstLeadingBit(u_input.b.x));
}

