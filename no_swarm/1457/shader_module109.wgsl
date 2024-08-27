struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct Struct_3 {
    a: vec4<f32>,
}

struct Struct_4 {
    a: vec3<bool>,
    b: vec2<i32>,
    c: Struct_2,
    d: vec2<u32>,
    e: Struct_2,
}

struct Struct_5 {
    a: vec4<f32>,
    b: vec3<bool>,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_5, arg_1: u32, arg_2: Struct_5, arg_3: Struct_5) -> vec3<bool> {
    let var_0 = ~(~abs(30827u));
    let var_1 = vec4<i32>(u_input.a.x, 2147483647i, -u_input.a.x, ~_wgslsmith_add_i32(abs(u_input.a.x), u_input.a.x));
    let var_2 = _wgslsmith_mult_vec2_i32(u_input.a.xx, min(firstTrailingBit(reverseBits(~vec2<i32>(var_1.x, u_input.b))), vec2<i32>(-1i, ~_wgslsmith_sub_i32(var_1.x, var_1.x))));
    return !arg_2.b;
}

fn func_2(arg_0: u32, arg_1: vec4<i32>, arg_2: vec4<u32>) -> f32 {
    let var_0 = u_input.a.yx;
    var var_1 = Struct_5(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-340f, 2389f, 971f, -668f)))) - vec4<f32>(2236f, -729f, 1f, 601f)), select(vec3<bool>(all(vec3<bool>(true, true, true)), false, !all(vec3<bool>(false, true, false))), func_3(Struct_5(_wgslsmith_f_op_vec4_f32(vec4<f32>(-473f, 1146f, -656f, -649f) + vec4<f32>(-541f, 244f, -807f, 1013f)), vec3<bool>(true, true, true), Struct_2(vec4<u32>(arg_0, arg_2.x, arg_2.x, 17303u))), 4294967295u, Struct_5(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-735f, -494f, -150f, -615f)), vec3<bool>(true, true, true), Struct_2(arg_2)), Struct_5(_wgslsmith_f_op_vec4_f32(vec4<f32>(-177f, 574f, 1181f, -311f) * vec4<f32>(234f, 1000f, 906f, -1000f)), vec3<bool>(true, false, true), Struct_2(vec4<u32>(arg_0, arg_0, arg_0, 12508u)))), select(func_3(Struct_5(vec4<f32>(-3020f, 672f, -791f, -574f), vec3<bool>(false, true, true), Struct_2(vec4<u32>(73721u, arg_0, 60887u, arg_0))), firstTrailingBit(arg_2.x), Struct_5(vec4<f32>(1632f, 564f, -785f, -897f), vec3<bool>(true, false, true), Struct_2(arg_2)), Struct_5(vec4<f32>(450f, -318f, -1000f, 947f), vec3<bool>(true, true, false), Struct_2(arg_2))), select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), false), true)), Struct_2(~abs(vec4<u32>(35918u, arg_0, 33882u, 35780u) | vec4<u32>(0u, arg_0, arg_2.x, 75274u))));
    var_1 = Struct_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(var_1.a * var_1.a))) - _wgslsmith_f_op_vec4_f32(var_1.a * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a.x, var_1.a.x, 1559f, var_1.a.x) * vec4<f32>(-1499f, -922f, var_1.a.x, var_1.a.x))))), !vec3<bool>(true, _wgslsmith_f_op_f32(min(1276f, -170f)) < _wgslsmith_f_op_f32(min(var_1.a.x, var_1.a.x)), var_1.b.x), var_1.c);
    var_1 = Struct_5(vec4<f32>(_wgslsmith_f_op_f32(var_1.a.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a.x + 865f))), var_1.a.x, _wgslsmith_div_f32(var_1.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + 482f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.a.x, var_1.a.x)) + var_1.a.x)), var_1.b, Struct_2(arg_2));
    let var_2 = Struct_5(vec4<f32>(_wgslsmith_f_op_f32(var_1.a.x + -549f), -1057f, var_1.a.x, -2765f), select(vec3<bool>(var_1.a.x <= _wgslsmith_f_op_f32(abs(-1123f)), !all(var_1.b.zy), true), select(select(vec3<bool>(var_1.b.x, var_1.b.x, var_1.b.x), var_1.b, func_3(Struct_5(vec4<f32>(-820f, 1122f, 992f, -1000f), vec3<bool>(true, var_1.b.x, var_1.b.x), var_1.c), arg_2.x, Struct_5(vec4<f32>(var_1.a.x, -559f, var_1.a.x, -833f), var_1.b, Struct_2(arg_2)), Struct_5(vec4<f32>(var_1.a.x, -102f, var_1.a.x, var_1.a.x), var_1.b, Struct_2(arg_2)))), select(select(var_1.b, var_1.b, var_1.b), !vec3<bool>(true, true, var_1.b.x), var_1.b.x), func_3(Struct_5(vec4<f32>(-396f, -135f, 319f, var_1.a.x), var_1.b, Struct_2(vec4<u32>(arg_0, arg_0, arg_2.x, 22706u))), _wgslsmith_mult_u32(arg_0, 66678u), Struct_5(vec4<f32>(1000f, 306f, 844f, 1151f), vec3<bool>(true, true, false), Struct_2(vec4<u32>(1u, var_1.c.a.x, var_1.c.a.x, 97886u))), Struct_5(var_1.a, var_1.b, Struct_2(arg_2)))), var_1.b.x), Struct_2(vec4<u32>(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(arg_2, vec4<u32>(var_1.c.a.x, 0u, var_1.c.a.x, 1u)), ~arg_0), ~(var_1.c.a.x ^ 0u), abs(max(68811u, 6146u)), _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(var_1.c.a, arg_2), ~var_1.c.a))));
    return 1642f;
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_4) -> vec3<u32> {
    let var_0 = _wgslsmith_clamp_u32(arg_1.c.a.x, max(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.c.a.x, arg_1.d.x ^ arg_1.e.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(92590u, 58933u, 4294967295u, arg_1.e.a.x), vec4<u32>(5614u, 4294967295u, 0u, arg_1.d.x)), 1u), ~(~vec4<u32>(0u, arg_1.c.a.x, 162667u, 2663u))), min(arg_1.c.a.x, arg_1.c.a.x)), ~firstLeadingBit(75219u));
    let var_1 = -1021f;
    let var_2 = _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) * _wgslsmith_f_op_f32(f32(-1f) * -1785f)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_0.x))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_0.x))))));
    var var_3 = Struct_5(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-323f * _wgslsmith_f_op_f32(max(var_2.x, var_2.x))) * _wgslsmith_f_op_f32(abs(var_1))), 220f, 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -333f))), !vec3<bool>(arg_1.a.x || arg_1.a.x, all(select(vec4<bool>(true, arg_1.a.x, true, arg_1.a.x), vec4<bool>(true, true, arg_1.a.x, arg_1.a.x), vec4<bool>(true, false, true, arg_1.a.x))), all(select(arg_1.a.xz, vec2<bool>(true, arg_1.a.x), arg_1.a.x))), Struct_2(~_wgslsmith_mult_vec4_u32(~arg_1.c.a, abs(arg_1.e.a))));
    let var_4 = Struct_1(_wgslsmith_add_vec3_i32(_wgslsmith_clamp_vec3_i32(u_input.a.wwz, u_input.a.wzy, u_input.a.wzz), ~(u_input.a.xxw ^ u_input.a.zzy) ^ countOneBits(select(vec3<i32>(arg_1.b.x, -34392i, arg_1.b.x), vec3<i32>(-39974i, arg_1.b.x, 2147483647i), var_3.b.x))));
    return _wgslsmith_mult_vec3_u32(var_3.c.a.wzw, var_3.c.a.wxw);
}

fn func_1(arg_0: vec3<i32>, arg_1: vec2<i32>, arg_2: vec2<u32>) -> Struct_3 {
    let var_0 = _wgslsmith_div_vec3_u32(_wgslsmith_add_vec3_u32(_wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(0u, 1u, arg_2.x), vec3<u32>(72929u, 1u, 36198u)), _wgslsmith_mod_vec3_u32(vec3<u32>(38777u, arg_2.x, 75739u), vec3<u32>(arg_2.x, 4294967295u, arg_2.x))), ~abs(vec3<u32>(8658u, arg_2.x, arg_2.x))), vec3<u32>(1u, ~(0u | arg_2.x), 85639u)) << (func_4(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -582f), -228f, _wgslsmith_f_op_f32(486f * 478f)) * vec3<f32>(_wgslsmith_f_op_f32(3044f + 518f), _wgslsmith_f_op_f32(func_2(arg_2.x, u_input.a, vec4<u32>(arg_2.x, 4294967295u, arg_2.x, arg_2.x))), _wgslsmith_f_op_f32(f32(-1f) * -1692f))), Struct_4(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false), -_wgslsmith_mod_vec2_i32(arg_0.yy, arg_0.yx), Struct_2(firstLeadingBit(vec4<u32>(arg_2.x, 0u, arg_2.x, 48968u))), vec2<u32>(_wgslsmith_div_u32(arg_2.x, 0u), ~arg_2.x), Struct_2(vec4<u32>(25617u, 81969u, 1u, 4294967295u) & vec4<u32>(arg_2.x, arg_2.x, arg_2.x, 1u)))) % vec3<u32>(32u));
    let var_1 = vec2<i32>(firstLeadingBit(5833i), 1i);
    let var_2 = Struct_2(vec4<u32>(firstTrailingBit(var_0.x), 4294967295u, _wgslsmith_mult_u32(0u | select(35846u, arg_2.x, false), arg_2.x), ~_wgslsmith_dot_vec2_u32(arg_2, select(vec2<u32>(1u, 17548u), vec2<u32>(28157u, 0u), false))));
    var var_3 = vec2<i32>(~(arg_1.x >> ((firstTrailingBit(14222u) >> (1u % 32u)) % 32u)), countOneBits(-1i));
    var_3 = arg_0.zy >> (vec2<u32>(arg_2.x, countOneBits(var_2.a.x)) % vec2<u32>(32u));
    return Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(222f, -2433f, 1479f, -242f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-403f, -1000f, -1098f, 304f))))))));
}

fn func_5(arg_0: Struct_5, arg_1: i32, arg_2: Struct_3, arg_3: Struct_3) -> u32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(min(-1738f, func_1(u_input.a.wzx, u_input.a.yz, vec2<u32>(28211u, arg_0.c.a.x)).a.x)), arg_0.a.x, 1000f) + arg_3.a.xyw));
    var var_1 = arg_1;
    var_1 = arg_1;
    let var_2 = _wgslsmith_mod_u32(_wgslsmith_clamp_u32((~arg_0.c.a.x << (47280u % 32u)) >> (_wgslsmith_sub_u32(_wgslsmith_div_u32(arg_0.c.a.x, 58308u), arg_0.c.a.x) % 32u), ~1u, abs(arg_0.c.a.x) << (arg_0.c.a.x % 32u)), firstLeadingBit(~88012u));
    let var_3 = var_0.x;
    return ~var_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(308f - _wgslsmith_f_op_f32(f32(-1f) * -421f));
    var var_1 = _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(1u, 1u), vec2<u32>(func_5(Struct_5(vec4<f32>(var_0, 882f, -296f, var_0), vec3<bool>(true, true, false), Struct_2(vec4<u32>(8611u, 0u, 1u, 15152u))), 1i, func_1(u_input.a.wzy, u_input.a.zz, vec2<u32>(0u, 102612u)), Struct_3(vec4<f32>(var_0, 2639f, -321f, var_0))), ~37896u)), _wgslsmith_dot_vec3_u32(reverseBits(_wgslsmith_clamp_vec3_u32(vec3<u32>(22937u, 63359u, 4294967295u), vec3<u32>(11575u, 0u, 54425u), vec3<u32>(0u, 74332u, 1u))) & vec3<u32>(76345u, func_4(vec3<f32>(var_0, var_0, var_0), Struct_4(vec3<bool>(false, true, false), vec2<i32>(u_input.b, -63786i), Struct_2(vec4<u32>(1u, 4294967295u, 43162u, 4294967295u)), vec2<u32>(0u, 1u), Struct_2(vec4<u32>(49450u, 1u, 1u, 4294967295u)))).x, _wgslsmith_mod_u32(22341u, 4294967295u)), vec3<u32>(countOneBits(6707u), _wgslsmith_mod_u32(1u, 1u), _wgslsmith_dot_vec2_u32(vec2<u32>(7753u, 7772u), vec2<u32>(0u, 0u))) & _wgslsmith_clamp_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(1u, 16330u, 77679u), vec3<u32>(50788u, 1u, 79689u)), vec3<u32>(1u, 1u, 1u), vec3<u32>(106496u, 10318u, 43388u))));
    let var_2 = ~_wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 1u, 1u, 1u), reverseBits(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), ~vec4<u32>(4294967295u, 4294967295u, 15194u, 24422u))));
    let var_3 = Struct_4(select(!select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), func_3(Struct_5(vec4<f32>(118f, -428f, 1104f, -814f), vec3<bool>(true, false, true), Struct_2(vec4<u32>(var_2, var_2, var_2, var_2))), var_2, Struct_5(vec4<f32>(949f, var_0, -365f, var_0), vec3<bool>(true, true, false), Struct_2(vec4<u32>(67508u, var_2, var_2, var_2))), Struct_5(vec4<f32>(-437f, -116f, -837f, 1359f), vec3<bool>(false, true, true), Struct_2(vec4<u32>(var_2, 4294967295u, var_2, 32454u))))), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), func_3(Struct_5(vec4<f32>(-856f, var_0, var_0, -1000f), vec3<bool>(false, false, false), Struct_2(vec4<u32>(6454u, var_2, var_2, 4294967295u))), 0u, Struct_5(vec4<f32>(-407f, -1231f, -1553f, var_0), vec3<bool>(true, true, true), Struct_2(vec4<u32>(var_2, var_2, var_2, 0u))), Struct_5(vec4<f32>(-182f, var_0, var_0, var_0), vec3<bool>(false, false, true), Struct_2(vec4<u32>(0u, 0u, 1u, var_2))))), vec3<bool>(true, any(vec4<bool>(false, true, false, true)), false)), -min(vec2<i32>(~80054i, u_input.a.x >> (31372u % 32u)), u_input.a.zw), Struct_2(_wgslsmith_mod_vec4_u32(vec4<u32>(var_2, var_2, 1u, _wgslsmith_mod_u32(1u, var_2)), vec4<u32>(~var_2, ~0u, ~0u, ~var_2))), ~_wgslsmith_div_vec2_u32(min(~vec2<u32>(1u, 1u), _wgslsmith_mult_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(var_2, var_2))), ~abs(vec2<u32>(4294967295u, 0u))), Struct_2(~vec4<u32>(var_2, 50248u, _wgslsmith_mult_u32(114297u, var_2), abs(var_2))));
    var var_4 = Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, var_0, -832f, var_0) - vec4<f32>(var_0, var_0, var_0, -157f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(267f, var_0, var_0, -2466f)))))));
    let var_5 = func_1(vec3<i32>(-1i, _wgslsmith_add_i32(countOneBits(-1i) ^ _wgslsmith_dot_vec2_i32(var_3.b, vec2<i32>(u_input.a.x, u_input.a.x)), _wgslsmith_div_i32(2362i ^ var_3.b.x, 1i)), ~select(~1i, var_3.b.x, var_3.a.x)), vec2<i32>(2147483647i, -8029i), ~_wgslsmith_mult_vec2_u32(_wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(8203u, var_3.e.a.x), var_3.c.a.xz), vec2<u32>(var_2, var_2)), vec2<u32>(func_5(Struct_5(vec4<f32>(var_4.a.x, var_4.a.x, var_0, var_4.a.x), var_3.a, var_3.e), -36406i, Struct_3(var_4.a), Struct_3(var_4.a)), ~var_3.e.a.x)));
    var var_6 = Struct_2(var_3.c.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(sign(var_5.a.www)))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(var_4.a.xyy, vec3<f32>(var_4.a.x, -653f, 1092f))))), 1i, var_2, -select(max(i32(-1i) * -5560i, ~8071i), ~u_input.b, !(true != var_3.a.x)));
}

