struct Struct_1 {
    a: vec2<bool>,
    b: bool,
    c: bool,
}

struct Struct_2 {
    a: u32,
    b: vec4<f32>,
    c: u32,
    d: vec3<f32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec2<f32>,
    c: Struct_2,
}

struct Struct_4 {
    a: vec4<i32>,
    b: u32,
}

struct Struct_5 {
    a: Struct_3,
    b: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: vec2<i32>;

var<private> global2: Struct_4;

var<private> global3: Struct_3 = Struct_3(vec3<f32>(1300f, 865f, 1048f), vec2<f32>(788f, -1030f), Struct_2(57307u, vec4<f32>(1000f, -362f, 1717f, -236f), 1u, vec3<f32>(1629f, -1392f, 155f)));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> bool {
    var var_0 = select(abs(_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 12871u, global3.c.a, 33421u), ~vec4<u32>(106209u, global3.c.a, 26523u, global2.b), ~vec4<u32>(4294967295u, global2.b, 1u, global3.c.c))) | (_wgslsmith_sub_vec4_u32(min(vec4<u32>(1u, 4294967295u, global3.c.a, 119296u), vec4<u32>(global2.b, global3.c.a, global2.b, global2.b)), vec4<u32>(1u, 33828u, global2.b, 320u)) | _wgslsmith_mult_vec4_u32(~vec4<u32>(4294967295u, global2.b, global3.c.a, global3.c.a), _wgslsmith_add_vec4_u32(vec4<u32>(0u, global3.c.a, 4294967295u, 1u), vec4<u32>(global3.c.c, global2.b, 41298u, global2.b)))), ~max((vec4<u32>(global2.b, global3.c.a, global2.b, global2.b) << (vec4<u32>(global3.c.a, global2.b, 100196u, global3.c.c) % vec4<u32>(32u))) & vec4<u32>(4294967295u, 5267u, 3462u, 29988u), abs(_wgslsmith_mod_vec4_u32(vec4<u32>(global2.b, 90346u, 15264u, 0u), vec4<u32>(global3.c.c, global3.c.c, global2.b, 25276u)))), select(false, true, !(41464u != _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, global2.b), vec3<u32>(1u, global2.b, 4294967295u)))));
    global0 = _wgslsmith_f_op_vec4_f32(global3.c.b + vec4<f32>(_wgslsmith_f_op_f32(min(-1021f, 208f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global0.x), global3.b.x, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1067f))), -831f));
    global1 = -vec2<i32>(select(u_input.a, _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, global1.x), vec2<i32>(-2147483647i, global1.x)), _wgslsmith_mod_i32(-2147483647i, 1i) <= _wgslsmith_sub_i32(2147483647i, global2.a.x)), firstLeadingBit(~(-global2.a.x)));
    global2 = Struct_4(max(global2.a, reverseBits(global2.a)), 1u);
    global1 = firstLeadingBit(min(_wgslsmith_sub_vec2_i32(~firstTrailingBit(global2.a.xz), vec2<i32>(-1i, 55431i) ^ ~global2.a.xw), abs(_wgslsmith_sub_vec2_i32(vec2<i32>(-1i, -22955i), global2.a.xw))));
    return !any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, false), select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, false), false), 4294967295u != global3.c.a), all(vec3<bool>(true, true, true))));
}

fn func_2(arg_0: Struct_3, arg_1: vec3<u32>, arg_2: bool, arg_3: i32) -> f32 {
    let var_0 = arg_0;
    var var_1 = var_0.c;
    var var_2 = select(7278i, _wgslsmith_div_i32(firstLeadingBit(global2.a.x), ~2147483647i), false && func_3());
    let var_3 = global2.a.yyz;
    return 537f;
}

fn func_1(arg_0: vec3<f32>, arg_1: vec2<bool>, arg_2: i32, arg_3: f32) -> f32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.c.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.a.x) + _wgslsmith_f_op_f32(func_2(Struct_3(global0.xww, vec2<f32>(364f, 2832f), global3.c), vec3<u32>(1u, 36632u, global2.b) | vec3<u32>(47643u, 11181u, 19044u), true, -arg_2))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global0.x, _wgslsmith_f_op_f32(ceil(438f)), select(true, arg_1.x, false))) - -1000f)));
    var var_1 = -31252i;
    var var_2 = vec4<i32>((u_input.a & 15627i) | _wgslsmith_add_i32(-u_input.a | arg_2, max(-8601i, _wgslsmith_mult_i32(global2.a.x, -12671i))), 0i, ~2147483647i, _wgslsmith_mult_i32(~(-u_input.a), global2.a.x | _wgslsmith_div_i32(560i, reverseBits(global2.a.x))));
    let var_3 = vec4<u32>(select(global3.c.a, global3.c.c, 9623u <= global3.c.c) | abs(48186u), 1846u, ~_wgslsmith_mod_u32(1u, _wgslsmith_mult_u32(_wgslsmith_add_u32(4294967295u, global2.b), ~global2.b)), firstTrailingBit(8599u & ~(global3.c.c ^ global2.b)));
    global3 = Struct_3(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(sign(global0.zyx)))), vec2<f32>(-195f, _wgslsmith_f_op_f32(step(1275f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1590f) - -1325f)))), Struct_2(30256u, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(1089f)), _wgslsmith_f_op_f32(abs(-476f)), _wgslsmith_f_op_f32(f32(-1f) * -1022f), _wgslsmith_f_op_f32(-arg_3))), _wgslsmith_div_u32(global3.c.c, ~20407u | var_3.x), global3.c.b.yzz));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) * global3.b.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global3.c.c;
    var_0 = reverseBits(1u);
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.c.d.x)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global0.x - global0.x), _wgslsmith_f_op_f32(func_1(global0.zyz, vec2<bool>(true, true), 12321i, -665f)))), global3.a.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(-521f, -1257f), _wgslsmith_f_op_f32(-657f - -583f), global3.b.x)), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 20851u), ~vec2<u32>(5573u, global3.c.a)) != 0u)));
    var var_2 = global3.c;
    var_0 = (var_2.c << (var_2.a % 32u)) ^ ~7549u;
    var var_3 = _wgslsmith_sub_vec3_i32(vec3<i32>(32640i, 12007i, abs(_wgslsmith_div_i32(global1.x, u_input.a) >> (_wgslsmith_add_u32(1u, global2.b) % 32u))), global2.a.xxw);
    var_3 = -global2.a.wyy;
    var var_4 = Struct_5(Struct_3(var_2.d, _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(max(var_1.zz, vec2<f32>(-2209f, var_1.x))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global0.x, global3.b.x))) - var_2.b.ww))), Struct_2(4294967295u, _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1101f, global0.x, -1003f, var_2.b.x), vec4<f32>(-1003f, -1000f, var_2.d.x, var_1.x))))), 1u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0.xww)))), countOneBits(-35253i));
    let var_5 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, var_4.a.a.x, -570f));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(select(global3.c.d.x, var_4.a.a.x, all(vec3<bool>(true, true, true)))), 341f, _wgslsmith_f_op_f32(-1871f * _wgslsmith_f_op_f32(func_1(var_5, vec2<bool>(false, false), 68274i, var_2.b.x))), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-var_2.b), _wgslsmith_f_op_vec4_f32(exp2(global3.c.b)), true)))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(global3.c.b, global3.c.b)))))), ~67522u);
}

