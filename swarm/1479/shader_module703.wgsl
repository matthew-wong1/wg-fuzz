struct Struct_1 {
    a: i32,
    b: bool,
    c: f32,
    d: vec3<i32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec2<bool>,
    d: vec3<f32>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec2<f32>,
    c: u32,
    d: vec3<bool>,
    e: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: vec4<u32>,
    c: u32,
    d: vec2<f32>,
}

struct Struct_5 {
    a: u32,
    b: Struct_3,
    c: Struct_2,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec3<i32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(1327f, Struct_1(-24881i, false, -779f, vec3<i32>(8187i, 1i, i32(-2147483648))), vec2<bool>(false, true), vec3<f32>(388f, 988f, 309f));

var<private> global1: array<vec4<f32>, 21>;

var<private> global2: array<Struct_3, 11>;

var<private> global3: Struct_5;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
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

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool) -> vec3<bool> {
    var var_0 = vec4<bool>(true, all(global3.b.e.c), all(!global3.b.d), !any(global0.c));
    var var_1 = Struct_4(_wgslsmith_div_u32(~abs(77726u), firstTrailingBit(countOneBits(4294967295u)) >> (u_input.c % 32u)), abs(vec4<u32>(~u_input.d, firstLeadingBit(43539u << (global3.a % 32u)), ~(global3.a & global3.a), ~(~global3.a))), 64545u, vec2<f32>(_wgslsmith_f_op_f32(global3.d.c - -112f), global3.c.b.c));
    var var_2 = global3.d.a;
    return !select(select(select(var_0.zyx, vec3<bool>(global0.b.b, false, var_0.x), !var_0.x), var_0.xwz, !vec3<bool>(global0.b.b, true, global0.c.x)), vec3<bool>(global0.c.x | global3.d.b, (global0.d.x == 641f) & any(vec4<bool>(true, global3.c.b.b, var_0.x, false)), var_0.x), !any(!global3.b.d));
}

fn func_4(arg_0: vec3<bool>) -> i32 {
    global3 = Struct_5(_wgslsmith_add_u32(~(~u_input.a) >> (103900u % 32u), abs(_wgslsmith_clamp_u32(~0u, 0u, ~u_input.b.x))), Struct_3(~(-vec2<i32>(-2147483647i, global0.b.a)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, _wgslsmith_f_op_f32(-global0.b.c))), firstLeadingBit(~global3.a), !func_3(true), Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(376f - global0.d.x) * -110f), Struct_1(7408i, !global3.b.e.c.x, _wgslsmith_f_op_f32(global3.c.a + 1695f), global3.d.d), select(!global0.c, arg_0.zy, true), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(global3.b.e.d, global3.b.e.d, false))))), global3.b.e, global0.b);
    global0 = global3.c;
    let var_0 = select(firstTrailingBit(~2147483647i) | 40482i, -22391i, all(!(!select(vec4<bool>(true, global0.b.b, true, global3.b.e.c.x), vec4<bool>(false, true, true, true), false))));
    let var_1 = -vec2<i32>(abs(-_wgslsmith_dot_vec3_i32(global3.c.b.d, vec3<i32>(0i, -17594i, 1i))), ~global0.b.d.x << (12067u % 32u));
    global1 = array<vec4<f32>, 21>();
    return ~global0.b.d.x;
}

fn func_2(arg_0: i32) -> Struct_4 {
    global1 = array<vec4<f32>, 21>();
    global1 = array<vec4<f32>, 21>();
    let var_0 = global1[_wgslsmith_index_u32(~0u & global3.b.c, 21u)];
    var var_1 = -22021i;
    var var_2 = Struct_2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(global0.a, var_0.x)))), Struct_1(func_4(func_3(true)), true, -665f, global0.b.d), !(!(!select(vec2<bool>(true, global0.c.x), vec2<bool>(global0.b.b, global3.d.b), global3.b.e.c))), vec3<f32>(var_0.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global0.d.x - _wgslsmith_f_op_f32(abs(global0.d.x))))), var_0.x));
    return Struct_4(0u, vec4<u32>(_wgslsmith_clamp_u32(~global3.b.c, ~abs(52215u), ~(global3.b.c ^ 9399u)), ~1u, ~(~70695u), ~u_input.d), global3.b.c, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(global3.c.d.yy, vec2<f32>(121f, global3.c.d.x), vec2<bool>(false, global3.d.b)))) * vec2<f32>(-142f, _wgslsmith_f_op_f32(max(var_0.x, -580f)))))));
}

fn func_5(arg_0: vec2<i32>, arg_1: Struct_4) -> vec4<f32> {
    var var_0 = vec2<u32>(~(func_2(global3.d.d.x).b.x ^ countOneBits(arg_1.a)) | abs(func_2(i32(-1i) * -10771i).a), 51071u);
    var var_1 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-320f))))), global3.b.e.b, global3.c.c, vec3<f32>(_wgslsmith_f_op_f32(global3.b.b.x + _wgslsmith_f_op_f32(max(func_2(arg_0.x).d.x, -1340f))), _wgslsmith_f_op_f32(-global0.d.x), arg_1.d.x));
    var_1 = global3.c;
    let var_2 = u_input.d;
    global0 = Struct_2(_wgslsmith_f_op_f32(max(global3.b.b.x, 156f)), Struct_1(-2147483647i, -46133i <= _wgslsmith_clamp_i32(arg_0.x >> (var_0.x % 32u), 0i, 3214i >> (global3.a % 32u)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global3.d.c * 943f), 547f)))), countOneBits(reverseBits(vec3<i32>(var_1.b.a, 17821i, 0i))) ^ _wgslsmith_add_vec3_i32(vec3<i32>(-16994i, -26425i, 49591i), vec3<i32>(global3.d.d.x, var_1.b.a, 1i))), !(!func_3(!var_1.c.x).yy), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(vec3<f32>(var_1.d.x, 672f, arg_1.d.x), _wgslsmith_f_op_vec3_f32(global0.d + var_1.d)))));
    return global1[_wgslsmith_index_u32(~select(countOneBits(u_input.c), var_2, !any(select(vec4<bool>(false, global0.c.x, global3.c.b.b, var_1.c.x), vec4<bool>(true, true, true, false), var_1.b.b))), 21u)];
}

fn func_1(arg_0: i32, arg_1: vec2<bool>, arg_2: u32) -> u32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(func_5(global0.b.d.yx, func_2(~1i))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(min(global0.d.x, _wgslsmith_f_op_f32(f32(-1f) * -330f))), _wgslsmith_f_op_f32(abs(global0.b.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.d.c * 528f)), -350f))));
    global1 = array<vec4<f32>, 21>();
    let var_1 = false;
    global0 = global3.c;
    var var_2 = select(func_3(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global3.b.e.b.c + 2394f), _wgslsmith_f_op_f32(f32(-1f) * -442f))) <= -649f), vec3<bool>(arg_1.x & !any(global3.b.d), _wgslsmith_f_op_f32(trunc(global0.d.x)) != -1000f, all(select(select(vec4<bool>(global3.c.c.x, global0.b.b, global3.b.d.x, arg_1.x), vec4<bool>(false, false, true, global0.c.x), vec4<bool>(global3.c.c.x, arg_1.x, arg_1.x, var_1)), vec4<bool>(global3.c.c.x, true, global0.b.b, global0.b.b), vec4<bool>(var_1, true, false, var_1)))), var_1);
    return 6380u;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = Struct_5(u_input.b.x, global3.b, global3.c, global3.d);
    let var_0 = !(true | global3.c.c.x);
    let var_1 = global1[_wgslsmith_index_u32(~(~45375u), 21u)];
    let var_2 = _wgslsmith_mod_u32(global3.b.c & _wgslsmith_mult_u32(_wgslsmith_clamp_u32(_wgslsmith_mult_u32(14965u, 43827u), u_input.d, _wgslsmith_sub_u32(global3.a, u_input.c)), global3.a), 31048u);
    let var_3 = Struct_4(1u, ~firstLeadingBit(countOneBits(u_input.b)), select(~var_2, func_1(~global0.b.d.x, !global0.c, global3.a), u_input.c < abs(3017u)) & 4294967295u, _wgslsmith_div_vec2_f32(vec2<f32>(global0.d.x, _wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1928f, -995f) + global0.d.yz))));
    global3 = Struct_5(16279u, Struct_3(global0.b.d.yz, global3.c.d.xx, 1u, select(!(!vec3<bool>(global3.c.b.b, global0.c.x, true)), vec3<bool>(true, true, true), false), global3.c), Struct_2(var_3.d.x, global3.c.b, vec2<bool>(true, !(624f == global0.d.x)), _wgslsmith_f_op_vec3_f32(global0.d + _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(global0.d, global3.c.d) - _wgslsmith_div_vec3_f32(vec3<f32>(1117f, -595f, 793f), vec3<f32>(-1184f, -731f, var_3.d.x))))), Struct_1(-reverseBits(-6308i >> (0u % 32u)), !(!func_3(false).x), _wgslsmith_f_op_f32(step(735f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(408f + var_3.d.x), _wgslsmith_f_op_f32(abs(-1096f)), global3.d.b)))), global3.d.d));
    let var_4 = Struct_5(func_1(-min(firstTrailingBit(global0.b.a), global0.b.a | 2147483647i), vec2<bool>(global0.b.b, select(any(global3.b.d), all(vec3<bool>(true, true, true)), var_0 | false)), u_input.b.x), Struct_3(global3.c.b.d.zz, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(global3.b.e.d.yx, var_3.d)) + vec2<f32>(_wgslsmith_f_op_f32(-1000f + -187f), _wgslsmith_f_op_f32(global0.a - -956f))), global3.b.c, func_3(global3.c.c.x), global3.c), global3.b.e, Struct_1(select(-3355i, max(~(-1i), global3.d.d.x), !global0.c.x), !(global3.c.b.b == global0.b.b), 316f, _wgslsmith_add_vec3_i32(vec3<i32>(-9187i, global0.b.a, global0.b.a), global3.c.b.d)));
    var var_5 = vec3<bool>(!global0.c.x, !all(select(vec3<bool>(var_0, false, global3.d.b), select(global3.b.d, vec3<bool>(true, global3.c.c.x, global3.d.b), var_4.b.d), select(false, true, var_0))), var_4.d.b);
    global2 = array<Struct_3, 11>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_u32(~(~(~global3.b.c)), select(1u, min(_wgslsmith_add_u32(68540u, var_3.b.x), _wgslsmith_clamp_u32(1u, var_4.a, var_2)), var_5.x)), var_1.x, ~vec3<i32>(_wgslsmith_dot_vec2_i32(~vec2<i32>(global0.b.d.x, -6933i), var_4.b.a), _wgslsmith_add_i32(2147483647i, -global3.c.b.d.x), _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(var_4.c.b.d, global0.b.d), _wgslsmith_mult_i32(global3.b.e.b.a, 17204i))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1351f, var_1.x))) * _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1230f, var_1.x)))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.d.x, global3.c.d.x) - vec2<f32>(_wgslsmith_f_op_f32(round(-1000f)), _wgslsmith_f_op_f32(sign(global3.c.b.c))))));
}

