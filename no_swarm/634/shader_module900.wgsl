struct Struct_1 {
    a: vec4<u32>,
    b: vec3<i32>,
    c: i32,
}

struct Struct_2 {
    a: bool,
    b: vec2<u32>,
    c: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 32>;

var<private> global1: array<vec2<u32>, 14> = array<vec2<u32>, 14>(vec2<u32>(0u, 0u), vec2<u32>(0u, 0u), vec2<u32>(7502u, 11699u), vec2<u32>(1u, 1u), vec2<u32>(1u, 0u), vec2<u32>(4294967295u, 0u), vec2<u32>(1u, 4294967295u), vec2<u32>(1u, 94921u), vec2<u32>(14053u, 81641u), vec2<u32>(0u, 4294967295u), vec2<u32>(47491u, 49833u), vec2<u32>(4294967295u, 19748u), vec2<u32>(37758u, 0u), vec2<u32>(1u, 4294967295u));

var<private> global2: array<bool, 7>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec4<i32> {
    var var_0 = Struct_2(false, (vec2<u32>(_wgslsmith_mod_u32(55649u, u_input.a.x), _wgslsmith_div_u32(26367u, u_input.a.x)) & u_input.a.xz) ^ global1[_wgslsmith_index_u32(127624u, 14u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -808f) + _wgslsmith_div_f32(-507f, 108f)) - -2287f)));
    let var_1 = Struct_2(false, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(u_input.a, ~vec4<u32>(var_0.b.x, 1u, 46289u, var_0.b.x)) >> (~1875u % 32u), 14u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-197f - _wgslsmith_f_op_f32(var_0.c * _wgslsmith_f_op_f32(374f * var_0.c)))));
    var_0 = Struct_2(var_0.a, vec2<u32>(~61197u, ~abs(0u)) & global1[_wgslsmith_index_u32(~var_0.b.x, 14u)], 1000f);
    global2 = array<bool, 7>();
    var var_2 = Struct_2(true, reverseBits(vec2<u32>(u_input.a.x, 1u >> (var_0.b.x % 32u))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-469f + _wgslsmith_f_op_f32(-851f * 1000f)), _wgslsmith_f_op_f32(abs(var_0.c)))), _wgslsmith_f_op_f32(min(1000f, 596f)))));
    return u_input.b | u_input.b;
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: f32, arg_3: u32) -> i32 {
    var var_0 = Struct_1(min(~(vec4<u32>(0u, arg_3, arg_1.a.x, arg_3) >> (vec4<u32>(31228u, 15067u, 24296u, 6579u) % vec4<u32>(32u))) | select(~vec4<u32>(u_input.a.x, arg_3, arg_1.a.x, arg_1.a.x), u_input.a, true), vec4<u32>(~1u, arg_1.a.x, ~reverseBits(arg_1.a.x), 4294967295u)), _wgslsmith_add_vec3_i32(_wgslsmith_div_vec3_i32(arg_0.wyx, vec3<i32>(2147483647i, global0[_wgslsmith_index_u32(1u, 32u)], arg_1.c) | arg_1.b), vec3<i32>(1i, arg_0.x, 2147483647i) ^ u_input.b.xwy) ^ -vec3<i32>(arg_0.x, 6334i, 1i), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(~4294967295u, min(~1u, ~arg_1.a.x)), 32u)]);
    var_0 = Struct_1(vec4<u32>(4294967295u, max(_wgslsmith_clamp_u32(reverseBits(54673u), ~arg_1.a.x, firstLeadingBit(1u)), ~4294967295u >> (min(arg_1.a.x, arg_1.a.x) % 32u)), min(21663u, var_0.a.x), ~26334u), max(-func_3().zyz, var_0.b), ~(~2147483647i));
    global1 = array<vec2<u32>, 14>();
    var var_1 = ~firstLeadingBit(u_input.a << (arg_1.a % vec4<u32>(32u)));
    global2 = array<bool, 7>();
    return arg_0.x;
}

fn func_2() -> vec4<i32> {
    var var_0 = Struct_1(vec4<u32>(21722u, 1u, ~23330u, 0u), vec3<i32>(countOneBits(firstLeadingBit(2147483647i) & (13604i ^ global0[_wgslsmith_index_u32(4294967295u, 32u)])), reverseBits(~reverseBits(global0[_wgslsmith_index_u32(1u, 32u)])), func_4(func_3(), Struct_1(~u_input.a, u_input.b.xyy << (vec3<u32>(1u, u_input.a.x, u_input.a.x) % vec3<u32>(32u)), abs(2147483647i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1307f)) - _wgslsmith_f_op_f32(-1127f - -862f)), u_input.a.x)), global0[_wgslsmith_index_u32(~u_input.a.x, 32u)]);
    let var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(891f, -1408f) + _wgslsmith_f_op_f32(max(678f, 1648f)))) - -227f), -425f));
    var var_2 = var_1;
    let var_3 = Struct_2(global2[_wgslsmith_index_u32(var_0.a.x, 7u)], abs(vec2<u32>(_wgslsmith_mod_u32(1u, var_0.a.x), 0u >> (0u % 32u))) ^ ~global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(var_0.a.x, 99117u, 4294967295u, var_0.a.x)), vec4<u32>(1u, var_0.a.x, u_input.a.x, u_input.a.x)), 14u)], _wgslsmith_f_op_f32(ceil(-732f)));
    global0 = array<i32, 32>();
    return select(func_3(), _wgslsmith_clamp_vec4_i32((select(vec4<i32>(var_0.c, 38607i, 10900i, var_0.b.x), vec4<i32>(1i, var_0.b.x, global0[_wgslsmith_index_u32(146506u, 32u)], global0[_wgslsmith_index_u32(var_3.b.x, 32u)]), vec4<bool>(global2[_wgslsmith_index_u32(70794u, 7u)], true, global2[_wgslsmith_index_u32(u_input.a.x, 7u)], true)) ^ vec4<i32>(2147483647i, u_input.b.x, -2147483647i, u_input.b.x)) ^ u_input.b, vec4<i32>(1i, _wgslsmith_div_i32(1i, select(u_input.b.x, -9069i, var_3.a)), firstLeadingBit(i32(-1i) * -6324i), var_0.c), u_input.b), vec4<bool>(true, true, true, true));
}

fn func_1(arg_0: Struct_2, arg_1: f32) -> Struct_1 {
    let var_0 = -func_2();
    var var_1 = -_wgslsmith_mult_i32(global0[_wgslsmith_index_u32(u_input.a.x, 32u)] & var_0.x, (i32(-1i) * -6819i) << (0u % 32u));
    global0 = array<i32, 32>();
    global1 = array<vec2<u32>, 14>();
    var var_2 = vec2<u32>(~arg_0.b.x, 0u);
    return Struct_1(u_input.a, abs(abs(func_3().xxx)), -global0[_wgslsmith_index_u32(1u, 32u)]);
}

fn func_5(arg_0: Struct_2, arg_1: vec2<i32>, arg_2: Struct_1) -> Struct_1 {
    global2 = array<bool, 7>();
    var var_0 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(959f, arg_0.c, 861f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.c, arg_0.c, 710f))))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1416f, arg_0.c, arg_0.c)) * vec3<f32>(arg_0.c, -807f, -853f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.c, arg_0.c, -1546f)), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_0.c, arg_0.c, 696f), vec3<f32>(arg_0.c, -1309f, -2532f)))))))));
    global1 = array<vec2<u32>, 14>();
    let var_1 = Struct_2(all(select(select(vec2<bool>(global2[_wgslsmith_index_u32(0u, 7u)], global2[_wgslsmith_index_u32(42619u, 7u)]), select(vec2<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 7u)], global2[_wgslsmith_index_u32(46109u, 7u)]), vec2<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 7u)], true), arg_0.a), true), vec2<bool>(arg_1.x <= u_input.b.x, arg_0.a), false)), vec2<u32>(~(~_wgslsmith_mod_u32(u_input.a.x, 17898u)), _wgslsmith_sub_u32(~arg_0.b.x, arg_0.b.x ^ 91068u)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1880f))))), arg_0.c));
    let var_2 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1215f + _wgslsmith_f_op_f32(-arg_0.c)), var_1.c));
    return Struct_1(u_input.a, firstTrailingBit(u_input.b.xxy), i32(-1i) * -_wgslsmith_clamp_i32(~arg_2.c, ~5994i, func_1(var_1, -387f).b.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1026f, -1117f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + 2618f) - _wgslsmith_f_op_f32(f32(-1f) * -303f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -688f), _wgslsmith_f_op_f32(ceil(-2192f))))))), 1000f, -1104f);
    let var_1 = vec2<i32>(-1i) * -(u_input.b.xy ^ ~(vec2<i32>(u_input.b.x, global0[_wgslsmith_index_u32(u_input.a.x, 32u)]) ^ vec2<i32>(-1i, global0[_wgslsmith_index_u32(53613u, 32u)])));
    var var_2 = global0[_wgslsmith_index_u32(u_input.a.x, 32u)];
    var var_3 = func_5(Struct_2(true, global1[_wgslsmith_index_u32(31082u, 14u)] << (u_input.a.yz % vec2<u32>(32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(109f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1159f) - _wgslsmith_f_op_f32(var_0.x * -230f)))), select(_wgslsmith_add_vec2_i32(var_1, vec2<i32>(-1i, abs(-2147483647i))), var_1, all(!(!vec4<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 7u)], global2[_wgslsmith_index_u32(4294967295u, 7u)], false, false)))), func_1(Struct_2(~u_input.a.x >= select(u_input.a.x, u_input.a.x, true), vec2<u32>(~u_input.a.x, u_input.a.x), 194f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_0.x)) * _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-1014f, var_0.x))))));
    var_2 = 13232i;
    var var_4 = Struct_2(all(select(vec4<bool>(global0[_wgslsmith_index_u32(var_3.a.x, 32u)] != 35992i, all(vec2<bool>(false, true)), !global2[_wgslsmith_index_u32(u_input.a.x, 7u)], global2[_wgslsmith_index_u32(1u, 7u)]), select(select(vec4<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 7u)], global2[_wgslsmith_index_u32(5867u, 7u)], false, false), vec4<bool>(true, false, global2[_wgslsmith_index_u32(0u, 7u)], global2[_wgslsmith_index_u32(u_input.a.x, 7u)]), vec4<bool>(global2[_wgslsmith_index_u32(7369u, 7u)], global2[_wgslsmith_index_u32(var_3.a.x, 7u)], global2[_wgslsmith_index_u32(488u, 7u)], global2[_wgslsmith_index_u32(u_input.a.x, 7u)])), vec4<bool>(global2[_wgslsmith_index_u32(69364u, 7u)], true, true, global2[_wgslsmith_index_u32(var_3.a.x, 7u)]), global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.a.x, 4294967295u), 7u)]), true)), var_3.a.xz, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(870f - var_0.x), _wgslsmith_f_op_f32(floor(-1119f)))) * var_0.x));
    let var_5 = u_input.b.xy;
    let var_6 = ~_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(70610u, 32u)], var_1.x), vec2<i32>(-28976i, -8982i) ^ vec2<i32>(global0[_wgslsmith_index_u32(0u, 32u)], -2147483647i)), vec2<i32>(min(0i, 0i), -1i)), var_1.x);
    let x = u_input.a;
    s_output = StorageBuffer(select(vec3<u32>(var_4.b.x, 26124u, 4294967295u) >> (max(var_3.a.wzz, func_1(Struct_2(var_4.a, vec2<u32>(var_3.a.x, var_3.a.x), -550f), var_4.c).a.xyx) % vec3<u32>(32u)), firstLeadingBit(~vec3<u32>(var_4.b.x, u_input.a.x, var_4.b.x)) >> (var_3.a.yzz % vec3<u32>(32u)), !(!vec3<bool>(false, var_4.a, global2[_wgslsmith_index_u32(u_input.a.x, 7u)]))), _wgslsmith_f_op_f32(-1111f * var_0.x), vec4<u32>(~var_3.a.x, u_input.a.x, reverseBits(var_3.a.x << (var_3.a.x % 32u)), 0u));
}

