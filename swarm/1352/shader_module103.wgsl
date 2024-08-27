struct Struct_1 {
    a: u32,
    b: f32,
    c: vec3<f32>,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: i32,
    c: vec2<u32>,
    d: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: vec3<bool>,
    c: vec2<bool>,
    d: Struct_2,
    e: Struct_1,
}

struct Struct_5 {
    a: f32,
    b: Struct_4,
    c: i32,
    d: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 26>;

var<private> global1: array<bool, 12> = array<bool, 12>(true, true, false, true, false, true, true, false, true, false, true, true);

var<private> global2: vec3<bool> = vec3<bool>(false, false, false);

var<private> global3: array<vec2<bool>, 5> = array<vec2<bool>, 5>(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: bool, arg_1: bool, arg_2: vec4<bool>, arg_3: Struct_3) -> f32 {
    let var_0 = abs(firstTrailingBit(u_input.b));
    var var_1 = true;
    var_1 = all(!select(select(!vec3<bool>(true, arg_0, arg_2.x), select(arg_2.wzw, vec3<bool>(true, true, false), arg_2.x), !arg_0), vec3<bool>(!arg_1, true, !arg_0), !global2.x));
    return _wgslsmith_f_op_f32(arg_3.d.c.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-755f))))) - -1349f));
}

fn func_4(arg_0: vec2<i32>, arg_1: vec4<i32>, arg_2: Struct_1) -> u32 {
    global2 = vec3<bool>(global2.x, global1[_wgslsmith_index_u32(arg_2.a, 12u)] || true, false);
    var var_0 = Struct_3(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(348f, -1764f)), _wgslsmith_div_f32(-327f, arg_2.b))), 1275f), -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a.x, 26u)])))), -499f), arg_0.x, u_input.a.zy, Struct_1(arg_2.a >> (reverseBits(~u_input.a.x) % 32u), 1887f, _wgslsmith_f_op_vec3_f32(sign(arg_2.c))));
    global0 = array<f32, 26>();
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2.c.x), _wgslsmith_f_op_f32(var_0.a.x * -1260f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(!global2.x, false, !vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 12u)], false, global1[_wgslsmith_index_u32(u_input.a.x, 12u)], global1[_wgslsmith_index_u32(103212u, 12u)]), Struct_3(vec4<f32>(-1275f, global0[_wgslsmith_index_u32(arg_2.a, 26u)], global0[_wgslsmith_index_u32(4294967295u, 26u)], var_0.a.x), 14633i, vec2<u32>(arg_2.a, var_0.d.a), var_0.d))) - _wgslsmith_f_op_f32(func_3(!global1[_wgslsmith_index_u32(4294967295u, 12u)], false, vec4<bool>(global2.x, false, global2.x, global1[_wgslsmith_index_u32(0u, 12u)]), Struct_3(var_0.a, arg_0.x, var_0.c, arg_2))))));
    global3 = array<vec2<bool>, 5>();
    return 4294967295u;
}

fn func_2() -> u32 {
    let var_0 = Struct_1(select(_wgslsmith_sub_u32(~1u, u_input.a.x), ~24746u ^ _wgslsmith_div_u32(u_input.a.x, 4294967295u), all(select(global2.zy, global2.zy, global1[_wgslsmith_index_u32(4294967295u, 12u)]))) >> (func_4(firstTrailingBit(vec2<i32>(7956i, -1i)) | _wgslsmith_sub_vec2_i32(vec2<i32>(1i, 10935i), vec2<i32>(-28619i, u_input.b)), vec4<i32>(-2147483647i, min(27421i, 2147483647i), 1i, _wgslsmith_sub_i32(-37438i, -1i)), Struct_1(_wgslsmith_div_u32(0u, 46586u), _wgslsmith_f_op_f32(func_3(global1[_wgslsmith_index_u32(u_input.a.x, 12u)], global2.x, vec4<bool>(global1[_wgslsmith_index_u32(1u, 12u)], true, global1[_wgslsmith_index_u32(73591u, 12u)], global2.x), Struct_3(vec4<f32>(-966f, -1803f, global0[_wgslsmith_index_u32(u_input.a.x, 26u)], global0[_wgslsmith_index_u32(u_input.a.x, 26u)]), u_input.b, vec2<u32>(u_input.a.x, u_input.a.x), Struct_1(u_input.a.x, -1628f, vec3<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 26u)], global0[_wgslsmith_index_u32(76404u, 26u)], global0[_wgslsmith_index_u32(u_input.a.x, 26u)]))))), vec3<f32>(global0[_wgslsmith_index_u32(130045u, 26u)], -943f, -375f))) % 32u), -675f, vec3<f32>(_wgslsmith_f_op_f32(563f * global0[_wgslsmith_index_u32(~(~15232u), 26u)]), -207f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-272f, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(6132u, 26u)] - 336f)))));
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.c.x), var_0.b);
    global1 = array<bool, 12>();
    global0 = array<f32, 26>();
    let var_2 = _wgslsmith_div_u32(_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(~var_0.a, 4294967295u, _wgslsmith_mult_u32(u_input.a.x, 4294967295u), _wgslsmith_mod_u32(u_input.a.x, 1u)), _wgslsmith_mod_vec4_u32(firstLeadingBit(vec4<u32>(30393u, var_0.a, var_0.a, 4294967295u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.a, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(var_0.a, u_input.a.x, 4294967295u, 4294967295u), vec4<u32>(var_0.a, var_0.a, u_input.a.x, 51556u)))), u_input.a.x, _wgslsmith_div_u32(~abs(1u), 4294967295u << (select(32971u, u_input.a.x, global1[_wgslsmith_index_u32(u_input.a.x, 12u)]) % 32u))), var_0.a);
    return var_0.a;
}

fn func_1(arg_0: bool, arg_1: f32, arg_2: bool) -> i32 {
    global1 = array<bool, 12>();
    var var_0 = _wgslsmith_sub_vec4_u32(firstLeadingBit(vec4<u32>(u_input.a.x, u_input.a.x, _wgslsmith_mult_u32(~u_input.a.x, ~u_input.a.x), func_2())), ~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, reverseBits(u_input.a.x), abs(u_input.a.x)), max(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 31851u), vec4<u32>(4294967295u, 0u, u_input.a.x, u_input.a.x)), ~vec4<u32>(0u, 0u, 15467u, u_input.a.x))));
    var var_1 = Struct_1(_wgslsmith_div_u32(firstTrailingBit(reverseBits(~0u)), countOneBits(~var_0.x)), -684f, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, global0[_wgslsmith_index_u32(1u, 26u)], 550f) - vec3<f32>(-256f, 1021f, arg_1))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_1, arg_1, -1355f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1414f, 878f, 307f)))))));
    var var_2 = _wgslsmith_div_vec3_u32(vec3<u32>(abs(~abs(var_0.x)), _wgslsmith_sub_u32(1u, reverseBits(var_0.x)) ^ ~37025u, 1u), u_input.a);
    var var_3 = arg_2;
    return ~_wgslsmith_add_i32(u_input.b, -34288i);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = !(!vec3<bool>(!(0u == u_input.a.x), select(global2.x, global2.x, true) & true, global2.x));
    var var_0 = Struct_4(-func_1(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1477f + global0[_wgslsmith_index_u32(u_input.a.x, 26u)])), ~u_input.b >= _wgslsmith_add_i32(u_input.b, 1i)), vec3<bool>(-u_input.b >= (select(u_input.b, u_input.b, true) >> (~40002u % 32u)), any(select(select(vec4<bool>(global2.x, global1[_wgslsmith_index_u32(u_input.a.x, 12u)], true, true), vec4<bool>(true, global2.x, global1[_wgslsmith_index_u32(4294967295u, 12u)], global2.x), false), vec4<bool>(global2.x, global2.x, true, true), global2.x)), 4294967295u > (1u << ((36178u & u_input.a.x) % 32u))), vec2<bool>(!global1[_wgslsmith_index_u32(u_input.a.x, 12u)] != global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.a.x, 101393u), _wgslsmith_mod_vec2_u32(vec2<u32>(51832u, 34312u), u_input.a.zz)), 12u)], true), Struct_2(~u_input.a.yx), Struct_1(0u, -1647f, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 26u)], global0[_wgslsmith_index_u32(0u, 26u)], global0[_wgslsmith_index_u32(4294967295u, 26u)]) * vec3<f32>(413f, 2802f, -2015f)), vec3<f32>(global0[_wgslsmith_index_u32(26962u, 26u)], global0[_wgslsmith_index_u32(15142u, 26u)], global0[_wgslsmith_index_u32(2628u, 26u)]), true))))));
    let var_1 = vec2<bool>(var_0.b.x, (true == !(false & global1[_wgslsmith_index_u32(790u, 12u)])) == any(select(select(vec3<bool>(global2.x, true, false), var_0.b, false), select(vec3<bool>(true, false, false), vec3<bool>(global2.x, false, false), global2.x), select(vec3<bool>(global1[_wgslsmith_index_u32(var_0.e.a, 12u)], true, true), var_0.b, var_0.b))));
    let var_2 = abs(_wgslsmith_clamp_vec2_i32(vec2<i32>(0i, _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.a, var_0.a, -1i, 1i), ~vec4<i32>(u_input.b, -1i, u_input.b, var_0.a))), countOneBits(_wgslsmith_mod_vec2_i32(vec2<i32>(0i, var_0.a), ~vec2<i32>(-2147483647i, u_input.b))), vec2<i32>(_wgslsmith_mod_i32(firstTrailingBit(var_0.a), u_input.b), func_1(global2.x, -152f, global2.x) & -18896i)));
    let var_3 = var_0.d;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -657f) * _wgslsmith_f_op_f32(-var_0.e.b)));
}

