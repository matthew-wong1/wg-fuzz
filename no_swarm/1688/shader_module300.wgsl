struct Struct_1 {
    a: vec4<f32>,
    b: vec2<f32>,
    c: bool,
    d: vec4<f32>,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(true, false, true);

var<private> global1: array<i32, 17> = array<i32, 17>(-2859i, -14949i, 5558i, 1i, 18227i, -2267i, -22101i, i32(-2147483648), 2147483647i, 2147483647i, 0i, 0i, -6092i, 1i, i32(-2147483648), 0i, -42269i);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> u32 {
    let var_0 = !any(!select(!vec2<bool>(true, global0.x), vec2<bool>(true, true), global0.x));
    global1 = array<i32, 17>();
    global1 = array<i32, 17>();
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1459f, 1351f, 580f, -512f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1733f, -1172f, -445f, -617f) - _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-556f, 593f, 156f, 1395f), vec4<f32>(1417f, 491f, -1000f, -604f)))), false))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1363f, -1000f) - _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-965f, 1702f)))))))), true, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-522f, _wgslsmith_f_op_f32(f32(-1f) * -923f), _wgslsmith_f_op_f32(f32(-1f) * -2536f), _wgslsmith_f_op_f32(f32(-1f) * -639f)))), vec2<i32>(_wgslsmith_mod_i32(global1[_wgslsmith_index_u32(~28879u >> (~4294967295u % 32u), 17u)], u_input.c.x), ~0i));
    global0 = !(!select(vec3<bool>(true, all(vec3<bool>(var_1.c, false, false)), var_1.c), vec3<bool>(true, true, true), !select(vec3<bool>(true, var_1.c, false), vec3<bool>(false, var_0, true), vec3<bool>(global0.x, var_0, global0.x))));
    return ~reverseBits(~1u);
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_clamp_vec3_i32(~vec3<i32>(~_wgslsmith_dot_vec3_i32(u_input.a, u_input.a), (i32(-1i) * -1i) >> (func_3() % 32u), ~max(global1[_wgslsmith_index_u32(0u, 17u)], global1[_wgslsmith_index_u32(1u, 17u)])), (-vec3<i32>(1i, 11532i, u_input.a.x) & u_input.a) >> (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u)), u_input.a);
    var var_1 = vec2<u32>(~(~func_3()), _wgslsmith_mod_u32(~29035u, 4294967295u));
    var var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1609f, -808f, -344f, 1960f)))) + vec4<f32>(_wgslsmith_f_op_f32(ceil(-1195f)), -2188f, _wgslsmith_f_op_f32(132f * -1232f), 894f)) * vec4<f32>(-502f, -382f, 461f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-2065f, 480f) * -366f))), vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-370f * 1268f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-853f)) + -567f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1000f * -402f))) - 1033f)), !global0.x, _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-300f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(965f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(870f - -275f) + _wgslsmith_f_op_f32(f32(-1f) * -1930f)), _wgslsmith_f_op_f32(floor(-650f))))), var_0.xy);
    var_0 = min(-vec3<i32>(~_wgslsmith_sub_i32(u_input.b, -1i), abs(-1i), max(~global1[_wgslsmith_index_u32(4294967295u, 17u)], _wgslsmith_dot_vec2_i32(vec2<i32>(global1[_wgslsmith_index_u32(var_1.x, 17u)], global1[_wgslsmith_index_u32(1u, 17u)]), vec2<i32>(var_2.e.x, 2147483647i)))), _wgslsmith_mod_vec3_i32(select(_wgslsmith_sub_vec3_i32(_wgslsmith_div_vec3_i32(u_input.a, vec3<i32>(-2147483647i, 0i, u_input.c.x)), vec3<i32>(var_0.x, var_0.x, 0i)), vec3<i32>(-5066i, ~u_input.c.x, reverseBits(u_input.c.x)), false), _wgslsmith_sub_vec3_i32(vec3<i32>(~global1[_wgslsmith_index_u32(4294967295u, 17u)], global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(var_1.x, 79437u), 17u)], var_0.x), ~_wgslsmith_clamp_vec3_i32(vec3<i32>(2147483647i, 1101i, -7642i), u_input.c, vec3<i32>(-2147483647i, u_input.b, var_2.e.x)))));
    var_2 = Struct_1(vec4<f32>(var_2.d.x, 131f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(729f - -1225f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1110f)))), var_2.a.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.b.x, var_2.a.x)), !(!var_2.c), _wgslsmith_div_vec4_f32(var_2.d, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(101f, var_2.d.x, -922f, var_2.b.x)), _wgslsmith_f_op_vec4_f32(-var_2.a))) + vec4<f32>(_wgslsmith_f_op_f32(step(-1092f, var_2.a.x)), 1f, var_2.b.x, 1000f))), countOneBits(_wgslsmith_sub_vec2_i32(vec2<i32>(24045i, var_2.e.x), _wgslsmith_clamp_vec2_i32(var_2.e, vec2<i32>(-2147483647i, -1i), vec2<i32>(-28451i, 1i)))) >> ((vec2<u32>(_wgslsmith_clamp_u32(0u, var_1.x, 0u), var_1.x) >> (reverseBits(vec2<u32>(var_1.x, var_1.x)) % vec2<u32>(32u))) % vec2<u32>(32u)));
    return Struct_1(var_2.a, vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(var_2.d.x)), -153f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(1f, var_2.b.x)))), all(!(!select(vec3<bool>(var_2.c, global0.x, true), vec3<bool>(var_2.c, var_2.c, false), true))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_2.d - _wgslsmith_f_op_vec4_f32(-var_2.d))), _wgslsmith_sub_vec2_i32(reverseBits(var_0.xy), _wgslsmith_add_vec2_i32(var_2.e, u_input.a.xz)));
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_1) -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_1.a.wwz), arg_1.d.xxz) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-199f, _wgslsmith_f_op_f32(arg_1.a.x - 245f), arg_1.b.x), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1991f, arg_1.a.x, arg_1.d.x))))) * _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-arg_1.d.yyx), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.d.x, arg_1.a.x, 815f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_1.d.xzw))))));
    global0 = !vec3<bool>(arg_1.c, true, true);
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(ceil(var_0.x))));
    var var_2 = vec4<bool>(any(!select(vec3<bool>(arg_1.c, arg_1.c, arg_1.c), vec3<bool>(arg_1.c, true, global0.x), global0.x)), all(select(!(!vec4<bool>(false, true, false, global0.x)), !select(vec4<bool>(false, false, true, arg_1.c), vec4<bool>(true, false, arg_1.c, true), vec4<bool>(true, true, arg_1.c, arg_1.c)), global0.x)), arg_1.c, !(!any(vec4<bool>(true, global0.x, false, false))));
    let var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_1.a) - _wgslsmith_f_op_vec4_f32(arg_1.a * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1059f, -827f, arg_1.a.x, var_0.x) + arg_1.a) * arg_1.a))), arg_1.a.ww, arg_1.c, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_1.a * arg_1.d)), arg_1.e);
    return var_2.zwx;
}

fn func_1() -> Struct_1 {
    let var_0 = 1u;
    global0 = !select(!vec3<bool>(true, false, !global0.x), !func_4(_wgslsmith_div_vec4_i32(vec4<i32>(1i, global1[_wgslsmith_index_u32(1u, 17u)], global1[_wgslsmith_index_u32(1u, 17u)], -61085i), vec4<i32>(global1[_wgslsmith_index_u32(var_0, 17u)], global1[_wgslsmith_index_u32(var_0, 17u)], 19638i, 2147483647i)), func_2()), func_4(vec4<i32>(u_input.a.x | u_input.b, _wgslsmith_add_i32(2147483647i, global1[_wgslsmith_index_u32(var_0, 17u)]), global1[_wgslsmith_index_u32(~var_0, 17u)], _wgslsmith_add_i32(u_input.c.x, -6237i)), func_2()));
    var var_1 = Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(546f, -475f, -1144f, -1749f) * _wgslsmith_f_op_vec4_f32(vec4<f32>(1784f, 445f, -661f, 430f) - vec4<f32>(-1580f, 404f, 1000f, 1013f)))), vec4<f32>(1259f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-383f + -337f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(989f, 1424f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -268f) - 690f))), _wgslsmith_div_vec2_f32(vec2<f32>(468f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -403f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-135f, -894f)))))), select(select(false, true, global0.x == (u_input.b <= global1[_wgslsmith_index_u32(var_0, 17u)])), true, any(vec4<bool>(select(global0.x, false, global0.x), false, true, all(vec3<bool>(false, global0.x, false))))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1161f, -533f, -1429f, 639f)))))), ~_wgslsmith_mult_vec2_i32(func_2().e << (vec2<u32>(1u, 0u) % vec2<u32>(32u)), func_2().e));
    let var_2 = ~_wgslsmith_clamp_vec3_u32(vec3<u32>(countOneBits(~2481u), var_0 ^ var_0, 44635u), ~(~_wgslsmith_add_vec3_u32(vec3<u32>(1u, 1u, 4744u), vec3<u32>(0u, 6622u, 0u))), vec3<u32>(var_0, var_0, countOneBits(min(var_0, 52432u))));
    global1 = array<i32, 17>();
    return func_2();
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<f32>, arg_3: bool) -> Struct_1 {
    var var_0 = ~(_wgslsmith_add_u32(20717u, _wgslsmith_mod_u32(1u << (1u % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(63349u, 46969u, 25010u, 1u), vec4<u32>(4294967295u, 0u, 0u, 4294967295u)))) | ~_wgslsmith_div_u32(~96800u, 16081u));
    var var_1 = -(~abs(0i & _wgslsmith_add_i32(-2147483647i, arg_0.e.x)));
    var_1 = _wgslsmith_dot_vec4_i32(firstTrailingBit(~_wgslsmith_div_vec4_i32(select(vec4<i32>(-1i, 24998i, arg_1.e.x, -43536i), vec4<i32>(-4927i, global1[_wgslsmith_index_u32(14729u, 17u)], arg_0.e.x, 2147483647i), true), vec4<i32>(2147483647i, -1i, -46598i, 1i))), vec4<i32>(-1i, abs(global1[_wgslsmith_index_u32(41168u, 17u)]), func_2().e.x, arg_0.e.x));
    global1 = array<i32, 17>();
    var var_2 = _wgslsmith_div_f32(-177f, arg_2.x);
    return arg_1;
}

fn func_6(arg_0: Struct_1) -> Struct_1 {
    global0 = vec3<bool>(func_1().c, func_5(arg_0, Struct_1(arg_0.a, func_2().a.wz, false, vec4<f32>(arg_0.b.x, -568f, 1028f, -521f), -vec2<i32>(global1[_wgslsmith_index_u32(4294967295u, 17u)], 88958i)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(215f, 280f, arg_0.d.x, arg_0.d.x))), true).c || true, arg_0.b.x <= 450f);
    global1 = array<i32, 17>();
    global1 = array<i32, 17>();
    global1 = array<i32, 17>();
    global1 = array<i32, 17>();
    return Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_0.a) * vec4<f32>(236f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a.x + -179f)), _wgslsmith_f_op_f32(exp2(arg_0.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b.x)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.b.x, arg_0.d.x)) + _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1324f, arg_0.d.x)))))) - vec2<f32>(_wgslsmith_f_op_f32(arg_0.b.x * _wgslsmith_f_op_f32(798f * 1369f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_0.d.x + arg_0.d.x))))), arg_0.c, _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_0.d) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a.x, 1060f, 1671f, 1424f)))))), ~_wgslsmith_div_vec2_i32(u_input.c.yx, u_input.c.xz));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(func_5(Struct_1(vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1484f, 1221f))), true, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-948f, -2460f, 1000f, 1000f))), u_input.a.yz), func_1(), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-646f, 805f, 452f, -1000f) * vec4<f32>(-417f, 1738f, 273f, 321f)) - _wgslsmith_div_vec4_f32(vec4<f32>(404f, 152f, 719f, 325f), vec4<f32>(-428f, 183f, 148f, 485f))), vec4<f32>(_wgslsmith_f_op_f32(min(-1667f, 1000f)), _wgslsmith_f_op_f32(f32(-1f) * -661f), _wgslsmith_f_op_f32(floor(-1799f)), 769f))), func_2().c));
    var var_1 = _wgslsmith_f_op_vec2_f32(-func_6(Struct_1(var_0.a, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(var_0.a.xx - vec2<f32>(var_0.a.x, -675f)))), global0.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_0.a - vec4<f32>(435f, -249f, 1414f, var_0.b.x)) - var_0.d), _wgslsmith_mult_vec2_i32(var_0.e, -vec2<i32>(-43560i, global1[_wgslsmith_index_u32(4294967295u, 17u)])))).b);
    let var_2 = ~_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, _wgslsmith_div_u32(23108u, 1u), countOneBits(28545u)), ~vec3<u32>(1u, 50124u, 1u)), func_3());
    global0 = !vec3<bool>(global0.x, global0.x | true, func_4(_wgslsmith_sub_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(var_2, 17u)], 75614i, u_input.c.x, 0i) << (vec4<u32>(0u, 6035u, var_2, 0u) % vec4<u32>(32u)), -vec4<i32>(-2147483647i, u_input.b, -1i, 2147483647i)), func_1()).x);
    global0 = !select(!select(func_4(vec4<i32>(var_0.e.x, 1i, u_input.c.x, u_input.a.x), Struct_1(vec4<f32>(var_0.a.x, 1283f, -568f, -1000f), var_0.b, var_0.c, var_0.a, var_0.e)), func_4(vec4<i32>(u_input.c.x, var_0.e.x, u_input.a.x, 24704i), Struct_1(var_0.a, vec2<f32>(var_1.x, -1486f), global0.x, vec4<f32>(-710f, var_1.x, var_1.x, 841f), vec2<i32>(0i, u_input.c.x))), vec3<bool>(true, false, global0.x)), vec3<bool>(~global1[_wgslsmith_index_u32(var_2, 17u)] < (i32(-1i) * -8014i), true, !func_4(vec4<i32>(global1[_wgslsmith_index_u32(var_2, 17u)], 1i, -13426i, u_input.b), Struct_1(vec4<f32>(-1075f, 476f, var_1.x, var_0.a.x), var_0.d.yz, true, vec4<f32>(-1650f, var_1.x, var_0.b.x, 1000f), vec2<i32>(u_input.c.x, var_0.e.x))).x), false);
    var var_3 = vec2<u32>(_wgslsmith_mod_u32(49572u, 441u), var_2);
    var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.d.x, _wgslsmith_f_op_f32(-160f + var_0.b.x)) - vec2<f32>(_wgslsmith_f_op_f32(exp2(var_0.d.x)), 1291f));
    var var_4 = !var_0.c;
    var_3 = vec2<u32>(~var_2, select(firstLeadingBit(8638u), _wgslsmith_sub_u32(abs(1u), var_3.x), global0.x));
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<i32>(0i, -1i, _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(var_0.e, u_input.a.zx), ~u_input.a.yz)), var_3.x, abs(var_2), 421f);
}

