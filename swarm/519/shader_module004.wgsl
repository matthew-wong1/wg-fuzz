struct Struct_1 {
    a: f32,
    b: f32,
    c: vec2<u32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec2<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: f32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 25>;

var<private> global1: vec3<f32> = vec3<f32>(1000f, -1000f, 258f);

var<private> global2: array<vec3<i32>, 30> = array<vec3<i32>, 30>(vec3<i32>(-1i, 1i, i32(-2147483648)), vec3<i32>(-45660i, 0i, 1i), vec3<i32>(-60072i, 30482i, i32(-2147483648)), vec3<i32>(1i, 0i, -1i), vec3<i32>(38461i, -35457i, 2239i), vec3<i32>(-16711i, 0i, -9113i), vec3<i32>(0i, 2147483647i, 2147483647i), vec3<i32>(1i, i32(-2147483648), 2147483647i), vec3<i32>(2147483647i, 17215i, -35959i), vec3<i32>(i32(-2147483648), 1i, i32(-2147483648)), vec3<i32>(-1i, 306i, 21995i), vec3<i32>(2147483647i, -39877i, 3915i), vec3<i32>(-36910i, 15508i, 38874i), vec3<i32>(-16944i, 2147483647i, 1i), vec3<i32>(17697i, 20776i, -8374i), vec3<i32>(55183i, 48917i, -1i), vec3<i32>(i32(-2147483648), 1i, 33437i), vec3<i32>(i32(-2147483648), 0i, -7380i), vec3<i32>(-14584i, i32(-2147483648), -52183i), vec3<i32>(1i, 0i, 0i), vec3<i32>(29540i, -1i, -57581i), vec3<i32>(i32(-2147483648), -162i, 2147483647i), vec3<i32>(1i, 0i, 2147483647i), vec3<i32>(6718i, -3947i, 1i), vec3<i32>(i32(-2147483648), 2147483647i, i32(-2147483648)), vec3<i32>(1i, 31577i, -10869i), vec3<i32>(2147483647i, 1i, 0i), vec3<i32>(-28751i, 0i, 0i), vec3<i32>(8586i, 12362i, 53633i), vec3<i32>(26800i, 1i, i32(-2147483648)));

var<private> global3: array<vec3<f32>, 6>;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: bool, arg_1: vec3<i32>, arg_2: vec2<f32>, arg_3: bool) -> vec4<f32> {
    var var_0 = vec4<u32>(14044u, abs(25563u), 1u, firstLeadingBit(1u));
    let var_1 = firstLeadingBit(u_input.a);
    let var_2 = global0[_wgslsmith_index_u32(1u, 25u)];
    let var_3 = 7348i;
    global1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, global1.x, arg_2.x)))))));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_2.x, 561f, var_2.x, var_2.x), vec4<f32>(-480f, 996f, 2122f, arg_2.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, 632f, -1745f, global1.x)))));
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(ceil(global1.x)) != 1768f;
    let var_1 = select(select(vec3<bool>(global1.x != global1.x, !all(vec2<bool>(true, true)), all(vec3<bool>(false, false, false))), !vec3<bool>(true, u_input.a >= u_input.a, any(vec2<bool>(true, true))), select(!select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true)), vec3<bool>(any(vec4<bool>(true, false, false, true)), true, true), all(vec4<bool>(true, true, true, true)))), select(vec3<bool>(true, true && any(vec3<bool>(false, true, true)), true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), !all(vec2<bool>(false, false))), any(select(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false)), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false)), true))), !vec3<bool>(select(true, false, u_input.b.x < u_input.a), all(select(vec2<bool>(false, false), vec2<bool>(false, false), true)), true));
    global2 = array<vec3<i32>, 30>();
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1001f, 196f, 1029f, _wgslsmith_f_op_f32(min(1000f, -186f))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(func_3(true, global2[_wgslsmith_index_u32(1u, 30u)], vec2<f32>(332f, 1000f), var_1.x)))))))) - vec4<f32>(_wgslsmith_f_op_f32(-global1.x), global1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(264f - 1f) * 129f), -1810f));
    var var_3 = -1385f;
    return Struct_1(var_2.x, 1910f, ~vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(59061u, 56409u), vec2<u32>(4294967295u, 44853u)), 8557u) & _wgslsmith_mod_vec2_u32(firstTrailingBit(vec2<u32>(1u, 1u)), vec2<u32>(_wgslsmith_mod_u32(4294967295u, 21291u), abs(53194u))));
}

fn func_4(arg_0: vec3<u32>, arg_1: bool, arg_2: Struct_1) -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(global1.xz)) + vec2<f32>(func_2().a, global1.x));
    var var_1 = Struct_3(func_2(), 15346u, global2[_wgslsmith_index_u32(max(max(~0u, select(arg_0.x, ~7536u, true)), arg_2.c.x), 30u)]);
    let var_2 = vec3<bool>(arg_1, arg_1, true);
    let var_3 = select(vec3<u32>(_wgslsmith_sub_u32(81375u, arg_0.x), firstTrailingBit(countOneBits(var_1.b) & func_2().c.x), ~42491u), vec3<u32>(countOneBits(58085u), _wgslsmith_sub_u32(~4294967295u | var_1.a.c.x, arg_2.c.x), abs(min(~var_1.b, ~var_1.b))), select(any(!var_2), !arg_1 && false, !any(vec4<bool>(arg_1, arg_1, var_2.x, false))) == (4294967295u <= arg_2.c.x));
    var var_4 = vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)))))), var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1186f)) - _wgslsmith_f_op_f32(trunc(func_2().a))));
    return vec2<bool>(var_2.x, select(any(!vec3<bool>(true, false, var_2.x)), false, var_2.x) | !var_2.x);
}

fn func_1(arg_0: vec2<f32>) -> Struct_3 {
    let var_0 = abs(~vec3<u32>(1u, 1u, 1u));
    global3 = array<vec3<f32>, 6>();
    global1 = _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x - -945f)), _wgslsmith_f_op_f32(897f + _wgslsmith_f_op_f32(global1.x * -1000f)))), _wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(round(arg_0.x)))));
    global2 = array<vec3<i32>, 30>();
    var var_1 = Struct_2(min(-u_input.b, u_input.b), select(!func_4(reverseBits(var_0), true, func_2()), vec2<bool>(true, true), all(!select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, false), false))));
    return Struct_3(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -748f) - 174f), _wgslsmith_div_f32(arg_0.x, -1000f), vec2<u32>(72024u >> (_wgslsmith_dot_vec2_u32(var_0.zy, var_0.xy) % 32u), var_0.x)), var_0.x << (var_0.x % 32u), _wgslsmith_add_vec3_i32(global2[_wgslsmith_index_u32(36019u, 30u)] >> ((var_0 >> (var_0 % vec3<u32>(32u))) % vec3<u32>(32u)), global2[_wgslsmith_index_u32(var_0.x, 30u)]));
}

fn func_5(arg_0: Struct_3) -> vec3<u32> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.b));
    let var_1 = arg_0.a.c;
    var var_2 = vec4<u32>(101183u, ~var_1.x, 20206u, var_1.x);
    let var_3 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-621f * 487f))) * _wgslsmith_div_f32(_wgslsmith_div_f32(392f, 732f), func_2().b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(trunc(-1563f))) + _wgslsmith_f_op_f32(-func_2().a))), global1.x, ~(vec2<u32>(4294967295u, 0u) << (var_1 % vec2<u32>(32u))) ^ vec2<u32>(1u, reverseBits(~var_2.x)));
    let var_4 = _wgslsmith_add_u32(arg_0.b, _wgslsmith_dot_vec4_u32(vec4<u32>(max(25331u, 1u), 1u, _wgslsmith_add_u32(min(arg_0.b, var_3.c.x), abs(0u)), 1u), ~vec4<u32>(12826u, _wgslsmith_dot_vec3_u32(vec3<u32>(var_1.x, 105946u, var_3.c.x), vec3<u32>(var_2.x, var_1.x, 0u)), firstLeadingBit(var_2.x), 1u)));
    return vec3<u32>(min(((1u >> (arg_0.a.c.x % 32u)) ^ 73821u) << (var_4 % 32u), ~30793u), var_3.c.x, ~var_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<f32>, 25>();
    let var_0 = select(vec3<bool>(true, _wgslsmith_f_op_f32(-global1.x) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global1.x))), (any(vec4<bool>(true, true, true, false)) || false) || true), vec3<bool>(true, true, true), vec3<bool>(!(true | all(vec3<bool>(true, false, false))), any(vec2<bool>(true, true)), true));
    global2 = array<vec3<i32>, 30>();
    var var_1 = firstLeadingBit(_wgslsmith_div_vec3_u32(min(~(~vec3<u32>(4294967295u, 25509u, 22244u)), func_5(func_1(global1.yz))), ~min(func_5(Struct_3(Struct_1(global1.x, global1.x, vec2<u32>(78373u, 0u)), 4294967295u, global2[_wgslsmith_index_u32(17028u, 30u)])), ~vec3<u32>(48448u, 74954u, 0u))));
    let var_2 = u_input.a;
    let var_3 = 98633i;
    let x = u_input.a;
    s_output = StorageBuffer(~(-min(var_2, var_2) | ~(-21495i)), (_wgslsmith_add_i32(var_3 << (var_1.x % 32u), u_input.a | var_3) ^ u_input.b.x) ^ u_input.a, i32(-1i) * -2147483647i, _wgslsmith_f_op_f32(-global1.x), ~(~(vec3<u32>(var_1.x, var_1.x, 70386u) | (vec3<u32>(var_1.x, 51461u, 12368u) ^ vec3<u32>(23792u, 45020u, var_1.x)))));
}

