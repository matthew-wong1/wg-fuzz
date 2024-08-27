struct Struct_1 {
    a: vec3<i32>,
    b: i32,
    c: u32,
    d: i32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: u32,
    c: Struct_1,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec3<bool>) -> i32 {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -244f))), 524f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1741f), 967f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-660f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(526f + -1096f) * _wgslsmith_f_op_f32(-2600f + -1265f))))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1f - -380f))))) + _wgslsmith_f_op_f32(664f + _wgslsmith_f_op_f32(var_0.x * -1749f)));
    var var_2 = !arg_0.zz;
    var_1 = 654f;
    var_2 = arg_0.zz;
    return _wgslsmith_add_i32(min(select(u_input.d, _wgslsmith_sub_i32(62662i, u_input.d), true), select(u_input.a, u_input.a, !all(arg_0.zx))), max(_wgslsmith_sub_i32(-u_input.c ^ ~u_input.a, u_input.a >> (7326u % 32u)), _wgslsmith_div_i32(firstLeadingBit(-2147483647i), 58466i)));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: f32) -> i32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, 127f, arg_2, -163f)))) - vec4<f32>(1086f, _wgslsmith_f_op_f32(f32(-1f) * -1003f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-634f, arg_2)), -2054f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_2 - arg_2), arg_2))));
    let var_1 = arg_1.a;
    var var_2 = var_0;
    var var_3 = firstLeadingBit(reverseBits(-_wgslsmith_div_i32(-5378i, ~arg_0.b)));
    var_3 = 10819i;
    return 0i;
}

fn func_2(arg_0: vec2<u32>, arg_1: f32) -> vec4<i32> {
    let var_0 = ~1u;
    return vec4<i32>(u_input.a, func_4(Struct_1(select(abs(vec3<i32>(-6135i, u_input.a, 1i)), _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a, u_input.d, -36337i), vec3<i32>(u_input.d, u_input.c, 10688i), vec3<i32>(u_input.a, 0i, u_input.a)), vec3<bool>(false, true, true)), ~func_3(vec3<bool>(true, false, false)), 14941u, ~u_input.d), Struct_2(~arg_0, ~(~0u), Struct_1(vec3<i32>(u_input.d, -1i, 0i), ~(-1i), 46835u, u_input.c), true), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) + -229f), 813f)), -2147483647i, -(-4154i << (_wgslsmith_clamp_u32(0u, _wgslsmith_div_u32(1u, 117058u), max(u_input.b, var_0)) % 32u)));
}

fn func_1(arg_0: vec4<f32>, arg_1: i32) -> vec4<i32> {
    return abs(abs(func_2(_wgslsmith_sub_vec2_u32(~vec2<u32>(u_input.b, u_input.b), select(vec2<u32>(u_input.b, 1120u), vec2<u32>(u_input.b, u_input.b), true)), _wgslsmith_f_op_f32(f32(-1f) * -495f))));
}

fn func_5(arg_0: vec3<f32>, arg_1: vec4<i32>, arg_2: Struct_2, arg_3: vec3<u32>) -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0));
    var_0 = _wgslsmith_f_op_vec3_f32(trunc(arg_0));
    var_0 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_0.x)) * _wgslsmith_f_op_f32(round(233f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -513f) + arg_0.x), -1000f), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0)))))), _wgslsmith_f_op_vec3_f32(arg_0 - _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-arg_0), _wgslsmith_f_op_vec3_f32(-arg_0))))))));
    var_0 = arg_0;
    var var_1 = -851f;
    return select(!select(select(vec3<bool>(arg_2.d, false, false), !vec3<bool>(false, true, arg_2.d), var_0.x != var_0.x), !vec3<bool>(arg_2.d, arg_2.d, false), !vec3<bool>(arg_2.d, false, arg_2.d)), !(!vec3<bool>(true, true, arg_2.d)), vec3<bool>(arg_2.d, true, false));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = all(!(!func_5(vec3<f32>(-1369f, 722f, 523f), func_1(vec4<f32>(830f, -813f, -556f, -1000f), u_input.d), Struct_2(vec2<u32>(36789u, u_input.b), u_input.b, Struct_1(vec3<i32>(-1i, -89922i, u_input.a), u_input.c, 3739u, u_input.d), true), vec3<u32>(4294967295u, u_input.b, 24517u) << (vec3<u32>(u_input.b, 0u, u_input.b) % vec3<u32>(32u)))));
    var var_1 = vec2<u32>(~1u, u_input.b);
    var var_2 = max(~firstTrailingBit(vec2<u32>(~56781u, reverseBits(1u))), firstTrailingBit(vec2<u32>(var_1.x, firstTrailingBit(_wgslsmith_div_u32(u_input.b, u_input.b)))));
    let var_3 = Struct_1(vec3<i32>(34509i, u_input.a, ~u_input.c), u_input.d, ~(~firstLeadingBit(4294967295u)) ^ select(1u ^ firstLeadingBit(var_1.x), _wgslsmith_mod_u32(var_1.x, var_1.x), true), u_input.d);
    var var_4 = vec4<i32>(~_wgslsmith_sub_i32(u_input.d, max(var_3.d, 41435i)), 12748i, var_3.d, u_input.a ^ -12470i);
    let var_5 = firstLeadingBit(firstLeadingBit(_wgslsmith_add_vec2_i32(-_wgslsmith_add_vec2_i32(vec2<i32>(1i, u_input.a), var_3.a.xz), func_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1211f, -1320f, -729f, -844f)), -var_4.x).wy)));
    var var_6 = 1245f;
    var var_7 = _wgslsmith_mod_vec4_u32(vec4<u32>(abs(abs(0u)), 0u, firstLeadingBit(var_2.x), var_2.x), _wgslsmith_div_vec4_u32(reverseBits(_wgslsmith_mult_vec4_u32(vec4<u32>(0u, var_1.x, var_1.x, u_input.b), vec4<u32>(var_1.x, 4294967295u, var_3.c, u_input.b))), vec4<u32>(var_1.x, u_input.b, ~1u, u_input.b ^ var_2.x))) << (vec4<u32>(0u, var_2.x, firstTrailingBit(~1u), _wgslsmith_add_u32(u_input.b, var_3.c)) % vec4<u32>(32u));
    var var_8 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(min(545f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1219f)) * -761f) + -166f))), _wgslsmith_mod_i32(-46562i, select(~(~(-2147483647i)), 2147483647i, all(select(vec2<bool>(true, var_0), vec2<bool>(true, var_0), var_0)))), var_5);
}

