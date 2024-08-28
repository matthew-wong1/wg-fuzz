struct Struct_1 {
    a: i32,
    b: vec3<bool>,
    c: vec4<f32>,
}

struct Struct_2 {
    a: bool,
    b: vec3<f32>,
    c: vec3<u32>,
    d: vec3<i32>,
}

struct Struct_3 {
    a: bool,
    b: u32,
    c: vec2<i32>,
    d: u32,
    e: bool,
}

struct Struct_4 {
    a: i32,
    b: vec3<i32>,
    c: vec2<u32>,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 2>;

var<private> global1: u32;

var<private> global2: vec2<u32>;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<u32>) -> vec2<u32> {
    let var_0 = !select(vec4<bool>(any(select(arg_0.b.zx, arg_0.b.yx, true)), false, any(!arg_0.b), true), vec4<bool>(true, global0[_wgslsmith_index_u32(countOneBits(u_input.c) | (u_input.d >> (36670u % 32u)), 2u)], !any(vec3<bool>(arg_0.b.x, global0[_wgslsmith_index_u32(global2.x, 2u)], global0[_wgslsmith_index_u32(1u, 2u)])), !(arg_0.b.x != global0[_wgslsmith_index_u32(global2.x, 2u)])), false);
    var var_1 = vec2<u32>(~firstLeadingBit(91380u), ~u_input.b.x);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_0.c.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.c.x * 1567f) - -236f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(arg_0.c.x, -970f))))))));
    return ~arg_1;
}

fn func_2(arg_0: bool, arg_1: vec4<bool>) -> i32 {
    let var_0 = vec2<i32>(reverseBits(2095i), -34065i);
    let var_1 = reverseBits(abs(~(firstLeadingBit(vec3<i32>(var_0.x, var_0.x, -23135i)) & _wgslsmith_clamp_vec3_i32(vec3<i32>(0i, var_0.x, 2147483647i), vec3<i32>(2147483647i, var_0.x, 13992i), vec3<i32>(-2147483647i, -69683i, 1i)))));
    global2 = ~firstTrailingBit(min(vec2<u32>(~u_input.d, global2.x), func_3(Struct_1(var_0.x, vec3<bool>(arg_1.x, true, arg_1.x), vec4<f32>(843f, -770f, -686f, -514f)), u_input.b.yx & u_input.b.yz)));
    let var_2 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(712f, -1875f, -1132f), vec3<f32>(-1844f, 1160f, 146f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-154f, 1314f, -1381f) - vec3<f32>(346f, 149f, -626f))))) + _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(-1651f + 759f), -148f, _wgslsmith_f_op_f32(944f - -1000f))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, _wgslsmith_f_op_f32(round(-1009f)), _wgslsmith_f_op_f32(-1025f - 971f)))));
    var var_3 = Struct_1(_wgslsmith_mod_i32(7221i, reverseBits(var_1.x)), vec3<bool>(arg_0, all(vec4<bool>(arg_0, arg_1.x, !global0[_wgslsmith_index_u32(u_input.c, 2u)], false)), 37904u != global2.x), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, _wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(trunc(var_2.x)), _wgslsmith_f_op_f32(floor(1916f))) - _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, 975f, -710f, var_2.x) - vec4<f32>(858f, 561f, var_2.x, var_2.x))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, var_2.x, var_2.x, -958f) + vec4<f32>(var_2.x, var_2.x, var_2.x, -1205f)), _wgslsmith_div_vec4_f32(vec4<f32>(var_2.x, 291f, 765f, -990f), vec4<f32>(1027f, var_2.x, -1909f, var_2.x)), any(arg_1.yxw))) + _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_2.x, -360f, 1461f, 824f), vec4<f32>(var_2.x, 1127f, var_2.x, var_2.x))), vec4<f32>(-1188f, var_2.x, var_2.x, 947f)))), !arg_0)));
    return 55444i;
}

fn func_1(arg_0: Struct_3, arg_1: f32, arg_2: bool, arg_3: Struct_4) -> Struct_2 {
    var var_0 = -2147483647i;
    var var_1 = vec4<i32>(~func_2(global0[_wgslsmith_index_u32(0u, 2u)], !(!vec4<bool>(global0[_wgslsmith_index_u32(global2.x, 2u)], false, arg_2, false))), ~(-1i), func_2(true, select(vec4<bool>(arg_0.e, true, false, true), !select(vec4<bool>(true, false, arg_2, true), vec4<bool>(false, false, true, arg_2), arg_0.e), true)), 1i);
    global0 = array<bool, 2>();
    let var_2 = Struct_2(arg_0.a && global0[_wgslsmith_index_u32(arg_0.b, 2u)], _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(-583f, arg_1, arg_1) * vec3<f32>(608f, arg_1, 948f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, arg_1, arg_1)))), vec3<f32>(_wgslsmith_div_f32(arg_1, -3845f), _wgslsmith_f_op_f32(arg_1 - 1437f), _wgslsmith_div_f32(-1345f, 875f))))), ~u_input.b << (~arg_3.d % vec3<u32>(32u)), select(_wgslsmith_div_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(var_1.x, 0i, 1i) | vec3<i32>(-34420i, arg_0.c.x, -25604i), ~vec3<i32>(var_1.x, arg_3.b.x, arg_3.a)), vec3<i32>(abs(arg_0.c.x), arg_0.c.x >> (global2.x % 32u), var_1.x)), _wgslsmith_add_vec3_i32(select(arg_3.b, vec3<i32>(var_1.x, -13344i, -1i), arg_0.c.x >= -49493i), arg_3.b), vec3<bool>(false, arg_0.b >= _wgslsmith_add_u32(0u, u_input.b.x), arg_2)));
    var var_3 = arg_0;
    return var_2;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3, arg_2: Struct_1) -> f32 {
    global1 = countOneBits(1u);
    global0 = array<bool, 2>();
    var var_0 = arg_2.c;
    global0 = array<bool, 2>();
    let var_1 = arg_0;
    return var_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -970f))) - -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1795f)));
    var var_1 = firstTrailingBit(~abs(u_input.b.yy));
    let var_2 = global0[_wgslsmith_index_u32(u_input.b.x, 2u)];
    let var_3 = ~_wgslsmith_sub_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(1i, 1i, 1i), ~select(vec3<i32>(-1i, 8952i, -1i), vec3<i32>(2147483647i, 1i, -6798i), global0[_wgslsmith_index_u32(70637u, 2u)])), vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-10370i, -2147483647i, 2147483647i), min(vec3<i32>(-39757i, 0i, 0i), vec3<i32>(-286i, 2147483647i, 38981i))), _wgslsmith_div_i32(~(-1i), abs(-1i)), ~(~2147483647i)));
    global0 = array<bool, 2>();
    var var_4 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(func_1(Struct_3(true, global2.x, vec2<i32>(-1i, 1i), global2.x, global0[_wgslsmith_index_u32(15361u, 2u)]), -753f, false, Struct_4(-24559i, vec3<i32>(-42115i, var_3.x, 20410i), u_input.b.zx, u_input.b)), Struct_3(global0[_wgslsmith_index_u32(4294967295u, 2u)], 1u, vec2<i32>(-61441i, var_3.x), global2.x, true), Struct_1(var_3.x, vec3<bool>(global0[_wgslsmith_index_u32(var_1.x, 2u)], false, global0[_wgslsmith_index_u32(global2.x, 2u)]), vec4<f32>(-404f, -808f, -1000f, 232f))))), _wgslsmith_f_op_f32(f32(-1f) * -2021f)));
    global1 = ~_wgslsmith_add_u32(select(~_wgslsmith_div_u32(61265u, global2.x), ~reverseBits(var_1.x), _wgslsmith_f_op_f32(1784f - var_4.x) < _wgslsmith_f_op_f32(-var_4.x)), ~(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, global2.x, var_1.x, var_1.x), vec4<u32>(var_1.x, 4294967295u, 0u, 16066u)) ^ u_input.d));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(~min(max(57047u, u_input.d), ~u_input.d)), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_4.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_4.x)) + _wgslsmith_f_op_f32(round(-1207f))), 1f) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_4.x, var_4.x, 566f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(346f, -334f, var_4.x) * vec3<f32>(360f, -1820f, var_4.x))))), _wgslsmith_f_op_f32(min(func_1(Struct_3(true, 4294967295u, vec2<i32>(2147483647i, -4510i), ~global2.x, !global0[_wgslsmith_index_u32(4294967295u, 2u)]), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(var_4.x, -1656f)))), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(~var_1.x, _wgslsmith_mod_u32(4294967295u, 4294967295u)), 2u)], Struct_4(-1i, vec3<i32>(-1i, -61998i, var_3.x) | var_3, u_input.a, ~u_input.b)).b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_4.x - -1428f) + var_4.x)))));
}

