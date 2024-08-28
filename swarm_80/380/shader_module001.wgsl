struct Struct_1 {
    a: vec4<f32>,
    b: vec3<i32>,
    c: vec2<bool>,
}

struct Struct_2 {
    a: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: u32,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec2<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 11>;

var<private> global1: vec2<f32>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: bool, arg_1: Struct_2, arg_2: Struct_1, arg_3: vec3<u32>) -> vec2<bool> {
    global0 = array<Struct_2, 11>();
    global0 = array<Struct_2, 11>();
    global0 = array<Struct_2, 11>();
    let var_0 = Struct_2(true);
    var var_1 = global1.x;
    return arg_2.c;
}

fn func_3(arg_0: i32, arg_1: Struct_1) -> Struct_2 {
    global1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_1.a.x))), global1.x));
    let var_0 = u_input.b;
    let var_1 = arg_1.c.x;
    let var_2 = -_wgslsmith_div_vec2_i32(~arg_1.b.yx, _wgslsmith_mod_vec2_i32(firstLeadingBit(vec2<i32>(-13885i, var_0.x)), vec2<i32>(1i, _wgslsmith_add_i32(var_0.x, arg_0))));
    global1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1433f, global1.x))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.a.x, arg_1.a.x) - vec2<f32>(global1.x, -1146f)))) + _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_div_f32(798f, -241f), _wgslsmith_f_op_f32(-677f * arg_1.a.x)), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1381f), _wgslsmith_f_op_f32(global1.x * -1014f))))));
    return Struct_2(_wgslsmith_sub_i32(abs(var_2.x), 1i) != (-1i ^ (arg_0 | arg_0)));
}

fn func_4(arg_0: Struct_2, arg_1: bool, arg_2: Struct_1) -> Struct_2 {
    global0 = array<Struct_2, 11>();
    let var_0 = _wgslsmith_f_op_f32(select(146f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)), arg_2.a.x)))), true));
    global1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, 257f));
    global0 = array<Struct_2, 11>();
    let var_1 = arg_2;
    return func_3(var_1.b.x, Struct_1(var_1.a, _wgslsmith_mult_vec3_i32(vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-1815i, 47926i), arg_2.b.zz), 0i, _wgslsmith_dot_vec4_i32(u_input.b, vec4<i32>(u_input.b.x, 43299i, arg_2.b.x, u_input.b.x))), var_1.b), func_2(select(true, true, var_1.c.x), func_3(select(2147483647i, var_1.b.x, arg_0.a), Struct_1(vec4<f32>(var_0, arg_2.a.x, 1850f, var_1.a.x), vec3<i32>(arg_2.b.x, u_input.a.x, 10822i), var_1.c)), Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, -144f, 175f, 1182f) + vec4<f32>(1000f, arg_2.a.x, -1600f, var_0)), vec3<i32>(u_input.b.x, 0i, 24388i), var_1.c), ~vec3<u32>(u_input.e, u_input.d.x, u_input.e))));
}

fn func_5(arg_0: u32, arg_1: Struct_2, arg_2: Struct_1) -> u32 {
    global0 = array<Struct_2, 11>();
    let var_0 = Struct_2(arg_2.b.x >= _wgslsmith_add_i32(~_wgslsmith_mod_i32(-216i, arg_2.b.x), ~0i));
    let var_1 = func_3(_wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(~arg_2.b.x, -2147483647i, countOneBits(u_input.b.x)) >> (abs(~vec3<u32>(arg_0, 0u, 23327u)) % vec3<u32>(32u))), Struct_1(vec4<f32>(global1.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(-844f)))), _wgslsmith_f_op_f32(-arg_2.a.x), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global1.x * -1007f), -169f))), ~arg_2.b, arg_2.c));
    var var_2 = vec3<bool>(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(global1.x, arg_2.a.x)), -1000f) == 2038f, false, true), all(func_2(var_0.a, Struct_2(var_1.a), Struct_1(_wgslsmith_div_vec4_f32(arg_2.a, arg_2.a), vec3<i32>(u_input.b.x, arg_2.b.x, u_input.b.x), func_2(var_1.a, Struct_2(true), Struct_1(vec4<f32>(arg_2.a.x, -196f, global1.x, -884f), vec3<i32>(u_input.b.x, u_input.b.x, 2147483647i), arg_2.c), vec3<u32>(arg_0, 51204u, 69926u))), vec3<u32>(17231u, abs(arg_0), ~38863u))), _wgslsmith_div_i32(-35994i, 51577i) != ~(i32(-1i) * -u_input.b.x));
    var var_3 = arg_2;
    return ~(~(~30901u));
}

fn func_1() -> f32 {
    global1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(global1.x * 727f), global1.x))));
    let var_0 = global0[_wgslsmith_index_u32(0u, 11u)];
    var var_1 = -u_input.a.xx;
    let var_2 = func_5(~(firstLeadingBit(u_input.d.x | u_input.e) >> (0u % 32u)), func_4(func_3(_wgslsmith_mod_i32(~u_input.b.x, 40707i), Struct_1(vec4<f32>(-1693f, global1.x, -941f, -956f), -u_input.b.wxw, func_2(var_0.a, global0[_wgslsmith_index_u32(53500u, 11u)], Struct_1(vec4<f32>(global1.x, -192f, global1.x, global1.x), u_input.b.wwz, vec2<bool>(true, var_0.a)), vec3<u32>(0u, u_input.d.x, u_input.e)))), var_0.a, Struct_1(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(-349f, -3201f, global1.x, global1.x) * vec4<f32>(global1.x, -772f, global1.x, 1333f)))), -_wgslsmith_clamp_vec3_i32(u_input.b.yxw, vec3<i32>(u_input.b.x, 25633i, -2147483647i), vec3<i32>(2147483647i, u_input.a.x, -13911i)), vec2<bool>(true, true))), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, global1.x, global1.x, global1.x)), vec4<f32>(1000f, global1.x, 414f, global1.x)))), max(reverseBits(~vec3<i32>(u_input.a.x, -17090i, var_1.x)), u_input.a & -u_input.a), vec2<bool>(true, true)));
    let var_3 = func_3(-5148i, Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(751f, -942f, -346f, global1.x) + _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global1.x, -321f, global1.x, global1.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-888f, global1.x, global1.x, global1.x), vec4<f32>(global1.x, 1385f, 668f, global1.x)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-168f, 1449f, global1.x, -1308f) - vec4<f32>(global1.x, 765f, global1.x, 286f)))), countOneBits(vec3<i32>(2147483647i, var_1.x << (var_2 % 32u), abs(1i))), !(!select(vec2<bool>(false, var_0.a), vec2<bool>(false, var_0.a), var_0.a))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(141f, global1.x))), global1.x)) * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-371f * global1.x), global1.x))))) * -149f);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(func_1()), 1073f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -208f))) - vec2<f32>(_wgslsmith_f_op_f32(max(800f, -873f)), _wgslsmith_f_op_f32(500f - 1000f)))));
    var var_0 = func_4(global0[_wgslsmith_index_u32(select(u_input.c, u_input.d.x, !((0u | u_input.c) <= abs(u_input.e))), 11u)], all(vec2<bool>(all(vec2<bool>(true, true)), false)), Struct_1(vec4<f32>(-1659f, global1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x - 420f) + -1386f), _wgslsmith_f_op_f32(-global1.x)), u_input.b.wxw, vec2<bool>(true, !all(vec4<bool>(true, false, false, true)))));
    global1 = vec2<f32>(-695f, global1.x);
    var var_1 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, global1.x, global1.x))) * vec3<f32>(_wgslsmith_f_op_f32(-global1.x), global1.x, _wgslsmith_f_op_f32(min(global1.x, 590f)))) + _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, global1.x, 789f) - vec3<f32>(global1.x, global1.x, -1544f)), _wgslsmith_div_vec3_f32(vec3<f32>(-527f, global1.x, global1.x), vec3<f32>(329f, global1.x, global1.x)))), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(673f, global1.x, 1000f))))))));
    var var_2 = ~u_input.b;
    var var_3 = var_0.a;
    global1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_1.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_1.x))) + 1172f) - -203f));
    let var_4 = ~(~(-vec2<i32>(~var_2.x, ~(-48769i))));
    var var_5 = var_2.x;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.e, _wgslsmith_sub_vec3_i32(min(u_input.b.yyw, ~vec3<i32>(u_input.b.x, 7407i, 1i)) | select(var_2.xww, ~vec3<i32>(-1i, -1i, u_input.b.x), var_1.x <= global1.x), vec3<i32>(_wgslsmith_add_i32(29845i, var_2.x) & abs(var_2.x), ~u_input.a.x, 30159i)), firstTrailingBit(vec2<u32>(1u, 1u)), ~_wgslsmith_mod_u32(35600u, u_input.d.x));
}

