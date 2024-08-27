struct Struct_1 {
    a: u32,
    b: f32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: Struct_3,
    b: u32,
    c: u32,
    d: Struct_1,
    e: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: vec3<f32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 9>;

var<private> global1: vec4<i32>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: bool, arg_1: bool) -> vec3<f32> {
    global0 = array<i32, 9>();
    global1 = abs(vec4<i32>(i32(-1i) * -2147483647i, global0[_wgslsmith_index_u32(~u_input.c ^ ~u_input.b.x, 9u)], ~51592i, global0[_wgslsmith_index_u32(~u_input.c, 9u)])) | vec4<i32>(_wgslsmith_dot_vec2_i32(min(max(global1.ww, global1.xy), global1.wy), firstTrailingBit(vec2<i32>(global1.x, -31380i))), _wgslsmith_sub_i32(_wgslsmith_mult_i32(1i, 19833i), ~global1.x << (42352u % 32u)), 4852i, _wgslsmith_add_i32(~(~global0[_wgslsmith_index_u32(u_input.b.x, 9u)]), global0[_wgslsmith_index_u32(~1u, 9u)]));
    let var_0 = Struct_1(0u, -1342f);
    var var_1 = vec3<bool>(arg_1, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-307f + -195f), -1000f)) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_0.b)) + -1242f), true);
    var var_2 = Struct_4(Struct_3(~firstTrailingBit(1u)), _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(10524u, u_input.a, ~u_input.b.x), _wgslsmith_div_vec3_u32(u_input.b, vec3<u32>(var_0.a, 4294967295u, 55877u)) & ~u_input.b), _wgslsmith_div_u32(_wgslsmith_mod_u32(~1u, var_0.a), 24418u)), 28010u, var_0, Struct_3(4294967295u));
    return _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-263f, _wgslsmith_f_op_f32(max(1046f, -707f)), _wgslsmith_div_f32(-904f, var_2.d.b))))));
}

fn func_2(arg_0: vec4<bool>, arg_1: bool, arg_2: vec2<f32>) -> i32 {
    var var_0 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(step(637f, -1526f)), _wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.x + -178f)))), _wgslsmith_f_op_vec3_f32(func_3(any(select(select(vec2<bool>(arg_1, arg_1), vec2<bool>(arg_0.x, arg_0.x), false), !arg_0.xy, arg_0.x && true)), true)));
    var var_1 = firstLeadingBit(_wgslsmith_add_vec4_u32(abs(vec4<u32>(u_input.b.x, firstLeadingBit(u_input.c), 121706u << (0u % 32u), _wgslsmith_add_u32(u_input.b.x, u_input.b.x))), _wgslsmith_add_vec4_u32(~select(vec4<u32>(u_input.b.x, 4294967295u, 4294967295u, u_input.a), vec4<u32>(u_input.b.x, 4294967295u, u_input.b.x, u_input.b.x), arg_0), ~vec4<u32>(10788u, 1u, 13752u, u_input.b.x))));
    global0 = array<i32, 9>();
    let var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(-1904f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -962f))), _wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_0.x)) + _wgslsmith_f_op_f32(round(-1037f))) - 1137f)) + vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * _wgslsmith_f_op_f32(279f + arg_2.x)) + _wgslsmith_f_op_f32(arg_2.x - _wgslsmith_f_op_f32(904f * 1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -587f)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), -354f)), var_0.x));
    global0 = array<i32, 9>();
    return abs(1i);
}

fn func_1(arg_0: vec2<f32>) -> Struct_3 {
    var var_0 = !all(!select(select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, false), false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, true)));
    var_0 = false;
    var var_1 = select(vec4<bool>((func_2(vec4<bool>(false, false, false, false), true, arg_0) < 43161i) | true, all(vec3<bool>(true, any(vec2<bool>(true, true)), true)), true | !(global1.x >= global0[_wgslsmith_index_u32(u_input.b.x, 9u)]), true), select(select(vec4<bool>(true, all(vec3<bool>(false, true, true)), global1.x < 20872i, global1.x < 0i), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), true), vec4<bool>(true, true, true, true)), vec4<bool>(all(vec2<bool>(false, true)), (u_input.a != 58692u) & true, any(vec4<bool>(true, true, false, false)), global1.x >= global1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -251f)) == _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(-336f)), _wgslsmith_f_op_f32(sign(-1425f))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-269f, 525f)), _wgslsmith_f_op_f32(arg_0.x + 165f))) < arg_0.x);
    var var_2 = vec4<bool>(var_1.x, any(select(!var_1.xyy, !vec3<bool>(false, var_1.x, var_1.x), var_1.wwy)), var_1.x, all(vec2<bool>(var_1.x, !var_1.x)));
    let var_3 = Struct_3(_wgslsmith_mod_u32(1u, 1u));
    return Struct_3(firstLeadingBit(32867u));
}

fn func_4(arg_0: Struct_4, arg_1: bool, arg_2: f32) -> vec4<i32> {
    var var_0 = _wgslsmith_div_vec3_u32(_wgslsmith_clamp_vec3_u32((vec3<u32>(u_input.b.x, 5388u, u_input.c) << (vec3<u32>(arg_0.a.a, 0u, arg_0.c) % vec3<u32>(32u))) << (~vec3<u32>(60324u, 18569u, 22290u) % vec3<u32>(32u)), ~(~u_input.b), u_input.b), u_input.b) & u_input.b;
    let var_1 = _wgslsmith_div_i32(global1.x, global1.x);
    var var_2 = arg_0.e.a >> (~(~_wgslsmith_mult_u32(~5006u, _wgslsmith_sub_u32(u_input.c, 15605u))) % 32u);
    var var_3 = !(!select(select(!vec2<bool>(arg_1, arg_1), select(vec2<bool>(arg_1, arg_1), vec2<bool>(arg_1, arg_1), vec2<bool>(false, false)), !vec2<bool>(arg_1, true)), vec2<bool>(arg_1, true), vec2<bool>(true, true)));
    let var_4 = arg_0.a;
    return _wgslsmith_div_vec4_i32(~(((vec4<i32>(var_1, 1i, global0[_wgslsmith_index_u32(var_0.x, 9u)], var_1) << (vec4<u32>(4294967295u, 57746u, 1u, u_input.a) % vec4<u32>(32u))) >> (~vec4<u32>(50645u, var_0.x, 1u, var_0.x) % vec4<u32>(32u))) ^ firstLeadingBit(vec4<i32>(-64396i, global0[_wgslsmith_index_u32(var_4.a, 9u)], var_1, global0[_wgslsmith_index_u32(4294967295u, 9u)]))), ~(~vec4<i32>(global0[_wgslsmith_index_u32(4294967295u, 9u)], global0[_wgslsmith_index_u32(4294967295u, 9u)], -2147483647i, global1.x) & -max(vec4<i32>(0i, 1i, global1.x, -6487i), vec4<i32>(-2147483647i, global1.x, global0[_wgslsmith_index_u32(var_4.a, 9u)], -2147483647i))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-234f * -1000f);
    var var_1 = global0[_wgslsmith_index_u32(69840u, 9u)];
    var var_2 = global1.ww;
    global1 = min(vec4<i32>(-max(var_2.x, global0[_wgslsmith_index_u32(u_input.a, 9u)]), 36187i, 45562i, 1i), func_4(Struct_4(Struct_3(21127u), firstLeadingBit(u_input.c), 5670u << (u_input.c % 32u), Struct_1(u_input.c, 165f), func_1(vec2<f32>(1088f, 1867f))), all(vec2<bool>(true, false)), 1611f) << (vec4<u32>(35386u, u_input.c, _wgslsmith_dot_vec2_u32(u_input.b.zz, vec2<u32>(51565u, 69945u)), _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(u_input.b, vec3<u32>(u_input.c, 1u, 1u), u_input.b), reverseBits(u_input.b))) % vec4<u32>(32u)));
    var_1 = 93911i;
    var var_3 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_vec3_f32(func_3(true, true)).x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1392f - 1000f), _wgslsmith_f_op_f32(f32(-1f) * -723f), false)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-530f, 1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1290f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1271f)) * 174f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1502f * 1105f)))), _wgslsmith_div_f32(_wgslsmith_f_op_vec3_f32(func_3(false, false)).x, -134f));
    var var_4 = -27664i;
    let var_5 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(537f, -279f, -125f, -509f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(781f, -1397f, -2082f, var_3.x) - vec4<f32>(389f, -2191f, 1025f, 107f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(635f, 1108f, var_3.x, var_3.x))))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_5, _wgslsmith_div_u32(~_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(u_input.b.yz, u_input.b.xz), u_input.b.yy), func_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(525f, var_5.x), var_5.wy) * _wgslsmith_f_op_vec2_f32(-var_5.ww))).a), _wgslsmith_f_op_vec3_f32(var_3.wzw - var_3.yww), var_5);
}

