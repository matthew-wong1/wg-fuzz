struct Struct_1 {
    a: f32,
    b: u32,
    c: vec2<u32>,
    d: f32,
    e: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 1>;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2(arg_0: vec2<f32>) -> u32 {
    var var_0 = ~abs(~_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.c.x, 0u, 4294967295u, 9693u), vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.c.x)));
    let var_1 = Struct_2(Struct_1(140f, u_input.c.x, _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.c.x, _wgslsmith_sub_u32(4294967295u, u_input.c.x)), vec2<u32>(u_input.c.x, u_input.c.x)), -420f, max(_wgslsmith_mod_vec3_u32(abs(u_input.c), ~vec3<u32>(u_input.c.x, 1u, 1u)), u_input.c)));
    var_0 = 0u;
    let var_2 = var_1;
    global0 = array<i32, 1>();
    return 13620u;
}

fn func_3() -> u32 {
    global0 = array<i32, 1>();
    return ~_wgslsmith_div_u32(~61714u, countOneBits(_wgslsmith_add_u32(u_input.c.x, 1u) << (14413u % 32u)));
}

fn func_1(arg_0: vec4<bool>) -> vec3<f32> {
    global0 = array<i32, 1>();
    let var_0 = vec2<bool>(func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-124f, -516f), vec2<f32>(-763f, 717f))))) < 18540u, true);
    var var_1 = ~reverseBits(vec2<i32>(u_input.a.x, u_input.b));
    var var_2 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2064f - 206f))), u_input.c.x, ~vec2<u32>(select(u_input.c.x, u_input.c.x, arg_0.x), func_3()), -1155f, u_input.c | firstLeadingBit(u_input.c ^ vec3<u32>(4294967295u, u_input.c.x, u_input.c.x))));
    var_2 = Struct_2(var_2.a);
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1544f, var_2.a.a, var_2.a.d)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-147f, -1465f, var_2.a.a), vec3<f32>(132f, var_2.a.d, 710f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(186f, var_2.a.d, 1000f) * vec3<f32>(227f, var_2.a.a, var_2.a.d))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1272f, var_2.a.d, 1688f)) - _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(587f, 1000f, var_2.a.d)))) - _wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_2.a.d, 686f, -1922f), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.a.d, var_2.a.a, 1915f) * vec3<f32>(var_2.a.a, var_2.a.a, 772f))))))));
}

fn func_4(arg_0: vec4<f32>, arg_1: vec2<u32>, arg_2: vec3<f32>, arg_3: vec2<bool>) -> Struct_1 {
    var var_0 = firstTrailingBit(u_input.c.zz);
    var var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(453f * arg_0.x) + arg_2.x) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.x, arg_0.x))), _wgslsmith_sub_u32(_wgslsmith_mod_u32(1u, ~0u), ~u_input.c.x), reverseBits(vec2<u32>(34142u, ~1u)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1264f))), u_input.c));
    var_0 = u_input.c.yz << (_wgslsmith_mod_vec2_u32(vec2<u32>(func_3(), ~arg_1.x ^ countOneBits(0u)), var_1.a.c) % vec2<u32>(32u));
    return var_1.a;
}

fn func_5(arg_0: Struct_1, arg_1: vec4<bool>) -> vec3<u32> {
    global0 = array<i32, 1>();
    let var_0 = ~max(_wgslsmith_clamp_vec4_u32(~min(vec4<u32>(u_input.c.x, arg_0.e.x, u_input.c.x, u_input.c.x), vec4<u32>(arg_0.b, 1u, 105100u, arg_0.c.x)), ~(vec4<u32>(arg_0.e.x, u_input.c.x, 1u, 1u) >> (vec4<u32>(u_input.c.x, u_input.c.x, 4294967295u, 30561u) % vec4<u32>(32u))), ~(~vec4<u32>(59470u, 27689u, arg_0.e.x, 741u))), ~(vec4<u32>(arg_0.b, arg_0.c.x, 15110u, arg_0.b) >> (vec4<u32>(arg_0.c.x, 0u, arg_0.e.x, 720u) % vec4<u32>(32u))));
    global0 = array<i32, 1>();
    var var_1 = Struct_2(func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1832f, -1104f, arg_0.d, arg_0.a)))), ~_wgslsmith_mod_vec2_u32(vec2<u32>(1u, 79912u), select(var_0.zy, vec2<u32>(u_input.c.x, 51643u), arg_1.x)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.d + arg_0.d)), -642f, _wgslsmith_f_op_f32(f32(-1f) * -167f)), vec2<bool>(arg_1.x, true)));
    var_1 = Struct_2(func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_1.a.d, var_1.a.d, -166f, var_1.a.a)))) - _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_0.d, 1646f, var_1.a.d, -609f)))))), ~(~arg_0.c) >> (~vec2<u32>(79809u, u_input.c.x) % vec2<u32>(32u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1117f, 312f, var_1.a.a))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.a, -428f, arg_0.d) * vec3<f32>(-432f, -497f, -524f)))), !select(select(vec2<bool>(false, true), arg_1.wy, arg_1.yy), select(arg_1.zw, vec2<bool>(arg_1.x, arg_1.x), arg_1.zy), vec2<bool>(arg_1.x, arg_1.x))));
    return ~select(func_4(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1498f, var_1.a.d, 731f, -426f))))), reverseBits(abs(vec2<u32>(51641u, var_0.x))), _wgslsmith_f_op_vec3_f32(func_1(arg_1)), vec2<bool>(!arg_1.x, arg_1.x)).e, ~(~var_0.yzy), arg_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-633f, 786f, 1367f, -1602f))), ~_wgslsmith_clamp_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(9330u, 9639u), vec2<u32>(u_input.c.x, 0u)), vec2<u32>(0u, u_input.c.x), ~u_input.c.zx), _wgslsmith_f_op_vec3_f32(func_1(vec4<bool>(true, true, false, any(vec4<bool>(false, true, true, true))))), select(vec2<bool>(true, true), select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, true), false), u_input.c.x > u_input.c.x), false)), select(!select(select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, true)), vec4<bool>(true, true, true, false), any(vec2<bool>(false, false))), vec4<bool>(true, true, true, true), true));
    let var_1 = vec2<i32>(firstTrailingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(35324i, u_input.a.x), vec2<i32>(-1i, -1787i) & vec2<i32>(1i, u_input.a.x))), global0[_wgslsmith_index_u32(func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1367f), _wgslsmith_f_op_f32(f32(-1f) * -811f)))), 1u)]);
    var var_2 = Struct_2(func_4(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-308f, 1433f, -633f, 145f))))), _wgslsmith_mod_vec2_u32(func_4(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1000f, -179f, -1488f, -2581f), vec4<f32>(-1160f, -1000f, 1586f, -1417f))), _wgslsmith_sub_vec2_u32(u_input.c.xy, var_0.zy), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1698f, -1647f, 281f)), vec2<bool>(true, true)).e.zz, var_0.xx), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1608f, -356f, -1620f)) + vec3<f32>(-924f, -960f, -1486f)), vec3<f32>(_wgslsmith_f_op_f32(round(-597f)), -1243f, _wgslsmith_f_op_f32(trunc(1339f))))), !select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true))));
    var var_3 = u_input.a ^ abs(firstLeadingBit(~_wgslsmith_sub_vec3_i32(u_input.a, u_input.a)));
    var_3 = u_input.a;
    let var_4 = Struct_2(var_2.a);
    var_3 = ~u_input.a;
    let var_5 = all(!(!select(select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, false), false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))));
    var var_6 = func_4(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.a.a, var_2.a.a, var_2.a.a, 1233f) + vec4<f32>(var_2.a.d, var_4.a.a, var_2.a.d, 401f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(384f, var_2.a.a, 624f, var_2.a.d))))))), func_4(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_4.a.a, var_4.a.d, var_4.a.a, _wgslsmith_f_op_f32(-366f * -1287f)))), vec2<u32>(abs(select(4294967295u, 4294967295u, false)), _wgslsmith_div_u32(~var_0.x, u_input.c.x)), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(select(1357f, 168f, var_5)), -1219f, var_2.a.d))), select(select(select(vec2<bool>(true, true), vec2<bool>(var_5, var_5), var_5), vec2<bool>(false, var_5), vec2<bool>(var_5, true)), select(select(vec2<bool>(var_5, var_5), vec2<bool>(true, false), var_5), vec2<bool>(var_5, var_5), true), !vec2<bool>(var_5, var_5))).e.xy, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1332f, 813f, var_2.a.d)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.a.d, 530f, 1699f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(565f, 970f, var_4.a.d)))))), vec2<bool>(var_5, var_5));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(_wgslsmith_dot_vec3_i32(u_input.a, countOneBits(~vec3<i32>(var_1.x, var_3.x, var_1.x))), ~1i >> (1u % 32u)));
}

