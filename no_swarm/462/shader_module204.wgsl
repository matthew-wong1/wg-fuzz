struct Struct_1 {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec3<f32>,
    d: vec2<i32>,
    e: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: f32,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 2> = array<vec2<u32>, 2>(vec2<u32>(67331u, 0u), vec2<u32>(1u, 4294967295u));

var<private> global1: array<bool, 13>;

var<private> global2: array<vec2<i32>, 30>;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_1) -> vec3<f32> {
    let var_0 = global1[_wgslsmith_index_u32(0u, 13u)];
    var var_1 = Struct_1(max(vec3<i32>(~u_input.b.x, ~1i, 2147483647i), firstTrailingBit(arg_1.a)), vec2<i32>(~(-2147483647i), u_input.b.x), arg_1.c, abs((arg_1.d ^ global2[_wgslsmith_index_u32(27547u, 30u)]) >> (abs(global0[_wgslsmith_index_u32(1u, 2u)]) % vec2<u32>(32u))), arg_1.c.x);
    var var_2 = arg_1.c.yx;
    global0 = array<vec2<u32>, 2>();
    var_1 = arg_1;
    return arg_1.c;
}

fn func_4(arg_0: vec3<f32>, arg_1: vec3<i32>, arg_2: Struct_1) -> u32 {
    global1 = array<bool, 13>();
    let var_0 = Struct_1(u_input.a.zzy, abs(vec2<i32>(_wgslsmith_mod_i32(2147483647i, -2147483647i), -1i)), vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.c.x) * _wgslsmith_f_op_f32(trunc(760f))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(796f + arg_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -539f)))), _wgslsmith_sub_vec2_i32(vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(21348i, 1i), u_input.b), -firstTrailingBit(u_input.a.x)), select(_wgslsmith_clamp_vec2_i32(_wgslsmith_clamp_vec2_i32(u_input.a.zx, arg_1.xy, vec2<i32>(arg_1.x, 2147483647i)), arg_1.yx, vec2<i32>(-87429i, u_input.a.x)), global2[_wgslsmith_index_u32(0u, 30u)], !select(vec2<bool>(false, global1[_wgslsmith_index_u32(1u, 13u)]), vec2<bool>(true, false), vec2<bool>(global1[_wgslsmith_index_u32(0u, 13u)], global1[_wgslsmith_index_u32(5794u, 13u)])))), arg_2.c.x);
    let var_1 = arg_2.a.x;
    global0 = array<vec2<u32>, 2>();
    let var_2 = ~vec4<u32>(_wgslsmith_mod_u32(~_wgslsmith_mod_u32(18712u, 1u), ~_wgslsmith_sub_u32(0u, 0u)), 3907u, 1u, 0u);
    return _wgslsmith_mod_u32(var_2.x, var_2.x);
}

fn func_2(arg_0: Struct_1) -> vec2<i32> {
    var var_0 = Struct_1(vec3<i32>(arg_0.b.x, 1i << (func_4(_wgslsmith_f_op_vec3_f32(func_3(vec3<bool>(global1[_wgslsmith_index_u32(15852u, 13u)], true, global1[_wgslsmith_index_u32(0u, 13u)]), Struct_1(arg_0.a, u_input.b, arg_0.c, u_input.a.xy, -1165f))), reverseBits(vec3<i32>(arg_0.b.x, 2147483647i, -1i)), Struct_1(vec3<i32>(arg_0.a.x, -1788i, arg_0.d.x), global2[_wgslsmith_index_u32(0u, 30u)], vec3<f32>(-270f, -183f, arg_0.c.x), vec2<i32>(-1i, arg_0.a.x), arg_0.e)) % 32u), 1i), select(~(vec2<i32>(u_input.b.x, -20853i) | reverseBits(vec2<i32>(u_input.b.x, -1i))), vec2<i32>(abs(~0i), firstTrailingBit(0i)), true), vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(arg_0.e, arg_0.e)))), _wgslsmith_f_op_f32(-arg_0.c.x), arg_0.c.x), arg_0.d >> ((_wgslsmith_sub_vec2_u32(firstTrailingBit(global0[_wgslsmith_index_u32(4294967295u, 2u)]), _wgslsmith_sub_vec2_u32(vec2<u32>(29803u, 29624u), global0[_wgslsmith_index_u32(14542u, 2u)])) << (abs(~global0[_wgslsmith_index_u32(88749u, 2u)]) % vec2<u32>(32u))) % vec2<u32>(32u)), 264f);
    let var_1 = Struct_1(u_input.a.zwy, vec2<i32>(var_0.a.x, u_input.b.x) << (vec2<u32>(1u, 1u) % vec2<u32>(32u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.c - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-256f, 286f, arg_0.e))))), _wgslsmith_sub_vec2_i32(arg_0.d, firstTrailingBit((vec2<i32>(2147483647i, var_0.d.x) << (global0[_wgslsmith_index_u32(4294967295u, 2u)] % vec2<u32>(32u))) | ~vec2<i32>(u_input.a.x, arg_0.b.x))), _wgslsmith_f_op_f32(max(arg_0.e, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(278f, _wgslsmith_f_op_f32(-var_0.e))))));
    global2 = array<vec2<i32>, 30>();
    var var_2 = var_1;
    let var_3 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(step(arg_0.c.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(2380f, -737f))))), _wgslsmith_f_op_f32(min(var_2.e, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_0.e))))), _wgslsmith_f_op_f32(-var_1.c.x)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-var_2.c))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_0.c + vec3<f32>(-2025f, var_2.e, var_2.c.x)))));
    return _wgslsmith_div_vec2_i32(~vec2<i32>(~1i, _wgslsmith_dot_vec3_i32(var_1.a, u_input.a.www)) >> (global0[_wgslsmith_index_u32(1u, 2u)] % vec2<u32>(32u)), var_2.a.xz);
}

fn func_1(arg_0: bool, arg_1: vec4<bool>) -> Struct_1 {
    global1 = array<bool, 13>();
    global2 = array<vec2<i32>, 30>();
    global2 = array<vec2<i32>, 30>();
    var var_0 = ~(_wgslsmith_mult_i32(-1i, -u_input.b.x) >> (~0u % 32u)) | u_input.a.x;
    var_0 = u_input.b.x;
    return Struct_1(vec3<i32>(_wgslsmith_clamp_i32((u_input.a.x >> (7872u % 32u)) << (~11527u % 32u), -14835i, _wgslsmith_mult_i32(~u_input.a.x, _wgslsmith_add_i32(u_input.b.x, u_input.a.x))), 0i, reverseBits(firstTrailingBit(1i) | abs(u_input.a.x))), vec2<i32>(i32(-1i) * -2147483647i, _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(func_2(Struct_1(u_input.a.yww, global2[_wgslsmith_index_u32(0u, 30u)], vec3<f32>(1000f, -1090f, -1758f), u_input.b, 353f)), _wgslsmith_mod_vec2_i32(vec2<i32>(0i, u_input.b.x), vec2<i32>(u_input.b.x, -2147483647i))), -min(u_input.a.x, u_input.b.x))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1597f), 930f, _wgslsmith_f_op_f32(ceil(-116f)))), vec2<i32>(28458i << (~firstTrailingBit(53436u) % 32u), 1i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-340f, 1127f))) * -412f) * 815f));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec2<i32>, 30>();
    let var_0 = func_1(!global1[_wgslsmith_index_u32(39473u, 13u)], vec4<bool>(false, 13157i < _wgslsmith_clamp_i32(u_input.b.x, u_input.a.x, -1i), global1[_wgslsmith_index_u32(1u, 13u)], !any(vec2<bool>(true, global1[_wgslsmith_index_u32(36617u, 13u)]))));
    var var_1 = _wgslsmith_add_u32(~_wgslsmith_mult_u32(_wgslsmith_add_u32(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 60561u), global0[_wgslsmith_index_u32(0u, 2u)])), 7270u), 53634u);
    var var_2 = _wgslsmith_mod_vec3_i32(vec3<i32>(-1i) * -(~vec3<i32>(u_input.a.x, var_0.d.x, -35325i)), vec3<i32>(~var_0.a.x, func_2(func_1(false && global1[_wgslsmith_index_u32(4294967295u, 13u)], vec4<bool>(global1[_wgslsmith_index_u32(15624u, 13u)], true, false, global1[_wgslsmith_index_u32(0u, 13u)]))).x, 1i));
    var var_3 = ~_wgslsmith_mult_vec3_u32(reverseBits(abs(vec3<u32>(2389u, 7532u, 0u))), select(_wgslsmith_add_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(60253u, 690u, 5443u), vec3<u32>(23329u, 1u, 48411u)), vec3<u32>(1u, 1u, 1u)), vec3<u32>(1u, 1u, 1u), !select(vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 13u)], true, global1[_wgslsmith_index_u32(11471u, 13u)]), vec3<bool>(global1[_wgslsmith_index_u32(1u, 13u)], global1[_wgslsmith_index_u32(4294967295u, 13u)], global1[_wgslsmith_index_u32(1u, 13u)]), global1[_wgslsmith_index_u32(1u, 13u)])));
    var var_4 = _wgslsmith_mod_vec3_u32(~min(~vec3<u32>(1u, 26721u, 48421u), vec3<u32>(var_3.x, var_3.x, 1u)), vec3<u32>(var_3.x, 4294967295u, 0u));
    global1 = array<bool, 13>();
    var_2 = vec3<i32>(-firstLeadingBit(var_2.x), 1i, u_input.a.x);
    let var_5 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(var_5.a, _wgslsmith_mult_i32(firstLeadingBit(_wgslsmith_mult_i32(u_input.a.x, -1i)), -1i), _wgslsmith_f_op_f32(round(var_0.e)), _wgslsmith_mult_u32(var_4.x, _wgslsmith_sub_u32(var_3.x, var_4.x) >> (~4294967295u % 32u)) & 16911u, firstTrailingBit(59740i));
}

