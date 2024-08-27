struct Struct_1 {
    a: vec2<u32>,
    b: vec4<u32>,
    c: i32,
    d: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: u32,
    d: vec2<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 17>;

var<private> global1: array<vec2<bool>, 10>;

var<private> global2: bool;

var<private> global3: array<vec3<u32>, 7>;

var<private> global4: array<i32, 26>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: vec2<i32>, arg_1: u32, arg_2: Struct_1, arg_3: vec4<f32>) -> vec2<f32> {
    let var_0 = _wgslsmith_clamp_i32(u_input.a.x, _wgslsmith_mult_i32(abs(arg_0.x), global4[_wgslsmith_index_u32(arg_2.b.x << ((~1u ^ countOneBits(u_input.b.x)) % 32u), 26u)]), -27i);
    let var_1 = !vec4<bool>(!arg_2.d, any(select(vec3<bool>(true, false, true), vec3<bool>(arg_2.d, true, arg_2.d), vec3<bool>(arg_2.d, arg_2.d, true))), true, arg_2.d);
    let var_2 = arg_2.a.x;
    let var_3 = ~(~1u);
    let var_4 = 0u;
    return vec2<f32>(-610f, _wgslsmith_f_op_f32(1f - arg_3.x));
}

fn func_2(arg_0: vec4<f32>) -> i32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_0.x - arg_0.x), arg_0.x, true)), arg_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x - 323f))), arg_0.x) - arg_0.wxy);
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(vec2<i32>(u_input.a.x, -9820i) | vec2<i32>(41547i, u_input.a.x), ~max(u_input.b.x, 0u), Struct_1(u_input.b.wy, u_input.b, 1i, any(global0[_wgslsmith_index_u32(u_input.b.x, 17u)])), vec4<f32>(_wgslsmith_f_op_f32(-478f - var_0.x), _wgslsmith_f_op_f32(arg_0.x - arg_0.x), -2341f, _wgslsmith_f_op_f32(-234f - 1712f))))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(vec2<f32>(arg_0.x, arg_0.x), vec2<f32>(arg_0.x, var_0.x)), var_0.yz)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(var_0.xx)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, 587f) * vec2<f32>(var_0.x, var_0.x)))), _wgslsmith_f_op_vec2_f32(var_0.zx - _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-arg_0.ww), var_0.zz)))));
    global3 = array<vec3<u32>, 7>();
    var_1 = _wgslsmith_f_op_vec2_f32(var_0.xy * _wgslsmith_f_op_vec2_f32(-var_0.xx));
    var var_2 = max(0i, abs(-firstTrailingBit(global4[_wgslsmith_index_u32(1u, 26u)]))) << (~14009u % 32u);
    return firstLeadingBit(u_input.a.x | 3216i);
}

fn func_1(arg_0: vec4<f32>, arg_1: Struct_1) -> Struct_1 {
    global2 = any(vec2<bool>(!(!(!arg_1.d)), true));
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x * arg_0.x) - arg_0.x) - 284f)), 511f);
    var var_1 = _wgslsmith_mult_vec3_i32(~vec3<i32>(func_2(_wgslsmith_f_op_vec4_f32(-arg_0)), ~(arg_1.c << (u_input.b.x % 32u)), 0i), -max(select(min(vec3<i32>(global4[_wgslsmith_index_u32(1173u, 26u)], arg_1.c, global4[_wgslsmith_index_u32(35939u, 26u)]), vec3<i32>(2147483647i, arg_1.c, arg_1.c)), countOneBits(vec3<i32>(-11579i, global4[_wgslsmith_index_u32(1u, 26u)], 2147483647i)), !vec3<bool>(true, arg_1.d, arg_1.d)), abs(firstLeadingBit(vec3<i32>(u_input.a.x, 46095i, u_input.a.x)))));
    let var_2 = arg_1;
    var var_3 = _wgslsmith_sub_vec2_u32(vec2<u32>(select(select(1344u, _wgslsmith_div_u32(4294967295u, 1u), true), arg_1.b.x, any(global1[_wgslsmith_index_u32(arg_1.b.x & 15469u, 10u)])), var_2.a.x), ~firstLeadingBit(u_input.b.xy));
    return Struct_1(vec2<u32>(~max(_wgslsmith_add_u32(0u, 47700u), 72846u), ~0u), vec4<u32>(_wgslsmith_sub_u32(28113u, _wgslsmith_add_u32(firstTrailingBit(0u), ~var_3.x)), ~firstTrailingBit(var_3.x), abs(var_3.x), (~arg_1.b.x << (67853u % 32u)) >> (u_input.b.x % 32u)), -22351i, _wgslsmith_f_op_f32(exp2(arg_0.x)) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(1639f)), _wgslsmith_f_op_f32(ceil(arg_0.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-853f, -914f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -484f) * _wgslsmith_f_op_f32(149f + 263f)), _wgslsmith_f_op_f32(f32(-1f) * -269f)))), Struct_1(~u_input.b.wy, ~(~(~u_input.b)), u_input.a.x, true));
    let var_1 = _wgslsmith_div_vec3_i32(_wgslsmith_clamp_vec3_i32(min(~vec3<i32>(var_0.c, var_0.c, -1i), vec3<i32>(var_0.c, reverseBits(var_0.c), countOneBits(u_input.a.x))), vec3<i32>(var_0.c, global4[_wgslsmith_index_u32(_wgslsmith_add_u32(100922u, _wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(var_0.b.x, var_0.a.x, 41338u, u_input.b.x))), 26u)], -1i), firstLeadingBit(~reverseBits(vec3<i32>(13369i, -9944i, var_0.c)))), vec3<i32>(2147483647i, -12114i, func_1(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1000f, -1867f, -1146f, -751f), _wgslsmith_f_op_vec4_f32(vec4<f32>(617f, 1479f, -1216f, -450f) + vec4<f32>(-1587f, -239f, 1526f, 1338f)))), func_1(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-937f, -345f, -1314f, 1836f))), Struct_1(vec2<u32>(var_0.b.x, 0u), u_input.b, u_input.a.x, var_0.d))).c));
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1000f))) + 750f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1120f))));
    global3 = array<vec3<u32>, 7>();
    let var_3 = select(vec4<bool>(var_0.d, true, var_0.d, any(!select(global0[_wgslsmith_index_u32(u_input.b.x, 17u)], vec4<bool>(false, var_0.d, true, var_0.d), true))), vec4<bool>(false, var_0.d, !(~1i < ~var_0.c), var_0.d), true && !var_0.d);
    global2 = all(!vec4<bool>(true, var_3.x, !all(global1[_wgslsmith_index_u32(4294967295u, 10u)]), false));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec3_u32(u_input.b.xxy, vec3<u32>(countOneBits(var_0.a.x), ~70271u, ~0u)), var_2, 1u, vec2<i32>(global4[_wgslsmith_index_u32(u_input.b.x, 26u)], ~min(2147483647i, u_input.a.x)), 8514u);
}

