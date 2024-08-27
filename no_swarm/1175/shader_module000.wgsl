struct Struct_1 {
    a: vec2<f32>,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: bool,
    d: Struct_1,
    e: u32,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec3<u32>,
    c: bool,
}

struct Struct_4 {
    a: Struct_2,
    b: f32,
    c: Struct_3,
    d: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<f32>,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 25> = array<f32, 25>(-504f, 529f, 1669f, -436f, 1071f, 1339f, -2129f, -1000f, -480f, -1125f, 393f, 1737f, -244f, -849f, -526f, -384f, 411f, -1050f, 274f, -297f, -1124f, 1016f, 1000f, 369f, 1111f);

var<private> global1: f32;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: u32, arg_1: vec3<bool>) -> vec4<i32> {
    let var_0 = Struct_4(Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1177f, -468f)) * vec2<f32>(global0[_wgslsmith_index_u32(arg_0, 25u)], -1021f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(arg_0, 25u)])))), -vec3<i32>(u_input.a, ~(-49109i), u_input.b.x), arg_1.x, Struct_1(_wgslsmith_div_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(0u, 25u)], global0[_wgslsmith_index_u32(arg_0, 25u)]), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-184f, 610f), vec2<f32>(1530f, -539f), arg_1.yx))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(1u, 25u)], -171f) - 1998f)), reverseBits(~min(51450u, 10211u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1119f), global0[_wgslsmith_index_u32(abs(~16144u), 25u)])) + -1077f), Struct_3(!vec3<bool>(false && arg_1.x, all(arg_1.zy), arg_1.x), ~vec3<u32>(arg_0, arg_0, arg_0), all(select(select(vec4<bool>(arg_1.x, arg_1.x, arg_1.x, arg_1.x), vec4<bool>(false, arg_1.x, false, arg_1.x), vec4<bool>(arg_1.x, arg_1.x, arg_1.x, true)), select(vec4<bool>(true, true, false, arg_1.x), vec4<bool>(arg_1.x, false, arg_1.x, false), vec4<bool>(arg_1.x, arg_1.x, arg_1.x, false)), !arg_1.x))), Struct_3(vec3<bool>(all(vec4<bool>(true, true, arg_1.x, arg_1.x)), true, true), firstTrailingBit(_wgslsmith_mult_vec3_u32(~vec3<u32>(arg_0, 32131u, arg_0), firstTrailingBit(vec3<u32>(arg_0, arg_0, 1u)))), true));
    let var_1 = vec2<u32>(_wgslsmith_mod_u32(~var_0.c.b.x, 43621u), firstLeadingBit(abs(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.c.b.x, arg_0, arg_0, 65894u), vec4<u32>(arg_0, 4294967295u, 61798u, 14885u))) >> (_wgslsmith_mod_u32(arg_0, ~4294967295u) % 32u)));
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-121f, 995f, -1000f, var_0.b)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1196f, var_0.a.d.a.x, -785f, 698f) - vec4<f32>(-1639f, -1642f, -1785f, global0[_wgslsmith_index_u32(4294967295u, 25u)])))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1150f, global0[_wgslsmith_index_u32(arg_0, 25u)], var_0.a.a.b, 229f)), vec4<f32>(var_0.a.d.b, global0[_wgslsmith_index_u32(1u, 25u)], 383f, 971f))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-173f, 369f, 1319f, global0[_wgslsmith_index_u32(arg_0, 25u)]) - vec4<f32>(var_0.a.a.b, var_0.b, -1238f, 1615f)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(global0[_wgslsmith_index_u32(var_0.d.b.x, 25u)], global0[_wgslsmith_index_u32(51205u, 25u)], global0[_wgslsmith_index_u32(var_1.x, 25u)], global0[_wgslsmith_index_u32(var_1.x, 25u)]), vec4<f32>(global0[_wgslsmith_index_u32(var_1.x, 25u)], global0[_wgslsmith_index_u32(arg_0, 25u)], 386f, global0[_wgslsmith_index_u32(var_1.x, 25u)])))), select(vec4<bool>(true, arg_1.x, true, var_0.c.c), vec4<bool>(var_0.a.c, true, arg_1.x, var_0.c.a.x), !vec4<bool>(var_0.a.c, var_0.c.c, false, false))))) - _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(-752f)), _wgslsmith_f_op_f32(round(var_0.a.d.a.x)), var_0.b, global0[_wgslsmith_index_u32(arg_0, 25u)])))));
    return ~((-countOneBits(vec4<i32>(-1i, -45917i, var_0.a.b.x, var_0.a.b.x)) & countOneBits(countOneBits(vec4<i32>(-1i, -1i, u_input.b.x, -52482i)))) << (vec4<u32>(var_0.d.b.x, abs(1726u) | ~arg_0, ~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, arg_0, var_1.x, 7665u), vec4<u32>(1u, arg_0, 1u, 0u)), 35428u) % vec4<u32>(32u)));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_3, arg_2: bool, arg_3: Struct_3) -> vec3<u32> {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(arg_3.b.x, arg_1.b.x, 0u), countOneBits(~arg_1.b)), 25u)] - _wgslsmith_f_op_f32(arg_0.b * -1555f)) * global0[_wgslsmith_index_u32(53391u, 25u)]);
    let var_1 = reverseBits(select(func_3(max(_wgslsmith_clamp_u32(arg_1.b.x, arg_1.b.x, arg_3.b.x), ~arg_3.b.x), arg_1.a), (vec4<i32>(93226i, 1i, -1212i, u_input.a) << (max(vec4<u32>(4294967295u, 1u, arg_3.b.x, arg_3.b.x), vec4<u32>(4605u, arg_3.b.x, 56756u, 0u)) % vec4<u32>(32u))) ^ abs(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, -2147483647i, -40178i), vec4<i32>(-171i, -1i, u_input.b.x, u_input.b.x))), arg_3.a.x));
    global1 = _wgslsmith_div_f32(_wgslsmith_div_f32(-218f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(select(5432u, arg_3.b.x, arg_3.a.x), 25u)])))), global0[_wgslsmith_index_u32(arg_1.b.x, 25u)]);
    global0 = array<f32, 25>();
    let var_2 = arg_3.a.x & (all(!vec4<bool>(arg_1.c, arg_1.c, false, true)) && arg_1.a.x);
    return vec3<u32>(firstTrailingBit(~(~43277u >> (arg_1.b.x % 32u))), min(arg_3.b.x, ~(~max(arg_1.b.x, 60340u))), ~min(~arg_1.b.x, _wgslsmith_mod_u32(_wgslsmith_clamp_u32(1u, arg_3.b.x, arg_3.b.x), arg_1.b.x)));
}

fn func_4(arg_0: vec2<u32>, arg_1: vec3<u32>, arg_2: bool) -> vec4<u32> {
    var var_0 = arg_2;
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(arg_1.x, 25u)], 483f)) + _wgslsmith_f_op_vec2_f32(max(vec2<f32>(global0[_wgslsmith_index_u32(34767u, 25u)], 839f), vec2<f32>(101f, 332f)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(arg_0.x, 25u)], global0[_wgslsmith_index_u32(1u, 25u)]) - vec2<f32>(global0[_wgslsmith_index_u32(0u, 25u)], global0[_wgslsmith_index_u32(1u, 25u)]))))))), _wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(arg_0.x, 25u)])));
    var var_2 = ~(-countOneBits(abs(-1i >> (arg_1.x % 32u))));
    let var_3 = Struct_2(var_1, u_input.b, false, Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1312f, _wgslsmith_f_op_f32(var_1.a.x * 1534f))), 301f), _wgslsmith_add_u32(arg_1.x, 14685u));
    var_0 = all(vec2<bool>(any(vec2<bool>(var_3.c && true, true)), all(select(vec3<bool>(true, true, true), vec3<bool>(true, var_3.c, arg_2), true))));
    return ~abs(~vec4<u32>(~var_3.e, arg_0.x, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.x, 0u), vec2<u32>(var_3.e, 4294967295u)), 19563u));
}

fn func_1(arg_0: f32, arg_1: vec3<f32>) -> vec4<bool> {
    let var_0 = _wgslsmith_div_vec4_u32(func_4(vec2<u32>(0u, min(42292u, 53438u)), _wgslsmith_clamp_vec3_u32(~vec3<u32>(38953u, 1u, 0u), func_2(Struct_1(arg_1.xz, arg_0), Struct_3(vec3<bool>(true, false, true), vec3<u32>(34771u, 1u, 20700u), true), false, Struct_3(vec3<bool>(true, false, false), vec3<u32>(4294967295u, 34503u, 34798u), false)), abs(vec3<u32>(1u, 1u, 4294967295u))), true), vec4<u32>(1u, 1u, 1u, 1u)) & vec4<u32>(4294967295u, 23187u, 42229u, firstTrailingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(1u, 4294967295u))));
    global1 = arg_0;
    var var_1 = Struct_1(arg_1.yz, 842f);
    global1 = 228f;
    var_1 = Struct_1(var_1.a, _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) - _wgslsmith_f_op_f32(f32(-1f) * -710f)), var_1.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0[_wgslsmith_index_u32(5542u, 25u)], -1595f))))));
    return select(!select(vec4<bool>(var_0.x != var_0.x, true, true, select(false, false, false)), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false), true), u_input.b.x >= u_input.a), !select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, true))), select(!vec4<bool>(false, global0[_wgslsmith_index_u32(var_0.x, 25u)] < 460f, true, select(true, false, false)), vec4<bool>(false, false, select(true, all(vec4<bool>(false, true, false, true)), any(vec3<bool>(true, true, false))), true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, true), false), all(vec4<bool>(false, false, false, false))), var_1.b >= global0[_wgslsmith_index_u32(61395u, 25u)])), select(select(false, true, var_1.b > 2103f) || any(vec4<bool>(false, true, true, true)), true, all(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), any(vec3<bool>(true, false, false))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(global0[_wgslsmith_index_u32(1u, 25u)], _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-1667f, -687f, 1000f), vec3<f32>(global0[_wgslsmith_index_u32(9366u, 25u)], global0[_wgslsmith_index_u32(3811u, 25u)], -881f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(1u, 25u)], global0[_wgslsmith_index_u32(126932u, 25u)], -1544f))) + vec3<f32>(-259f, global0[_wgslsmith_index_u32(~4294967295u, 25u)], _wgslsmith_f_op_f32(sign(1000f)))))));
    var_0 = select(!select(!(!vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x)), !(!vec4<bool>(true, false, var_0.x, var_0.x)), !(!vec4<bool>(var_0.x, true, false, var_0.x))), !(!(!vec4<bool>(false, var_0.x, var_0.x, var_0.x))), select(select(!select(vec4<bool>(true, false, var_0.x, var_0.x), vec4<bool>(true, var_0.x, var_0.x, false), var_0.x), vec4<bool>(!var_0.x, false, var_0.x, all(var_0.xx)), !select(vec4<bool>(true, var_0.x, var_0.x, var_0.x), vec4<bool>(true, var_0.x, var_0.x, var_0.x), var_0.x)), vec4<bool>(true, var_0.x, false, true), var_0.x));
    var var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0[_wgslsmith_index_u32(0u, 25u)], 1611f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4639u, 25u)]))), false)), -1588f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(306f + 1540f)) - _wgslsmith_f_op_f32(select(-1327f, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 1u, 1u, 33967u), vec4<u32>(17139u, 1u, 1u, 58234u)), 25u)], true))))));
    let var_2 = Struct_4(Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(668f, 417f)) * _wgslsmith_f_op_vec2_f32(min(vec2<f32>(374f, 343f), vec2<f32>(global0[_wgslsmith_index_u32(5319u, 25u)], global0[_wgslsmith_index_u32(5558u, 25u)])))), _wgslsmith_f_op_f32(f32(-1f) * -214f)), max(u_input.b, vec3<i32>(i32(-1i) * -29524i, 2147483647i, ~u_input.a)), false, Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(7692u, 25u)], global0[_wgslsmith_index_u32(4294967295u, 25u)]))), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, 15606u), 25u)])), 26652u), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-1f))))), Struct_3(!var_0.zxy, vec3<u32>(1u, 1u, 1u), ~firstTrailingBit(1u) <= _wgslsmith_dot_vec4_u32(~vec4<u32>(4053u, 94065u, 0u, 1u), ~vec4<u32>(4294967295u, 0u, 4294967295u, 56754u))), Struct_3(!(!(!var_0.yzy)), ~(abs(vec3<u32>(0u, 14276u, 22474u)) >> (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u))), !var_0.x));
    let var_3 = ~firstLeadingBit((-vec4<i32>(-24976i, -1i, var_2.a.b.x, 1i) >> (abs(vec4<u32>(var_2.d.b.x, 4294967295u, var_2.d.b.x, 0u)) % vec4<u32>(32u))) >> (~min(vec4<u32>(10510u, 4294967295u, 4175u, var_2.c.b.x), vec4<u32>(32783u, 4294967295u, 1u, 80795u)) % vec4<u32>(32u)));
    var var_4 = _wgslsmith_f_op_f32(trunc(var_2.a.d.b));
    var var_5 = var_0.x;
    let x = u_input.a;
    s_output = StorageBuffer(var_3.yy, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(252f, global0[_wgslsmith_index_u32(var_2.d.b.x, 25u)], var_2.a.d.a.x) + vec3<f32>(-1508f, 439f, var_2.a.a.b)))))), -1000f, _wgslsmith_mult_i32(var_2.a.b.x, ~(-min(2147483647i, 0i))));
}

