struct Struct_1 {
    a: bool,
    b: u32,
    c: i32,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec2<u32>,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 5> = array<vec4<i32>, 5>(vec4<i32>(-49859i, 54929i, -60042i, -22941i), vec4<i32>(i32(-2147483648), -763i, -28227i, 1i), vec4<i32>(-12169i, 4061i, -1i, 1i), vec4<i32>(2147483647i, -272i, -4655i, 0i), vec4<i32>(0i, 2147483647i, 1i, 2147483647i));

var<private> global1: Struct_1 = Struct_1(true, 0u, -1i, vec2<i32>(-1i, -50049i));

var<private> global2: Struct_1 = Struct_1(true, 89443u, 37845i, vec2<i32>(-1i, 0i));

var<private> global3: array<Struct_1, 5> = array<Struct_1, 5>(Struct_1(false, 80389u, 2147483647i, vec2<i32>(-41433i, 0i)), Struct_1(true, 0u, -3776i, vec2<i32>(-34385i, 2147483647i)), Struct_1(true, 9982u, i32(-2147483648), vec2<i32>(2421i, -10356i)), Struct_1(true, 0u, i32(-2147483648), vec2<i32>(i32(-2147483648), -14028i)), Struct_1(false, 79427u, 2535i, vec2<i32>(31033i, -5276i)));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3() -> f32 {
    let var_0 = global3[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(firstLeadingBit(_wgslsmith_mod_u32(~global2.b, u_input.e)), ~global2.b, ~abs(~global2.b)), 5u)];
    var var_1 = Struct_1(!(select(var_0.a, global2.a, global1.a) | !global2.a) | (!var_0.a && any(!vec3<bool>(var_0.a, var_0.a, var_0.a))), u_input.e, _wgslsmith_sub_i32(~(-global1.d.x >> (global1.b % 32u)), -2147483647i), vec2<i32>(~_wgslsmith_mult_i32(_wgslsmith_clamp_i32(-27955i, 2147483647i, var_0.d.x), -7287i), var_0.d.x));
    var var_2 = true;
    var var_3 = Struct_1(false, 4294967295u, u_input.d.x, global1.d);
    let var_4 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-694f + -364f), 204f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(abs(-859f)), 1181f) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1251f, -2123f))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(315f, 341f) + vec2<f32>(570f, 768f)))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 214f)))) - _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2601f, 441f))))));
    return -898f;
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: bool) -> u32 {
    return 257u;
}

fn func_5(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: Struct_1) -> f32 {
    let var_0 = Struct_1(!any(vec3<bool>(!arg_2.a, false, true)), func_4(arg_2, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())) + -507f), false), 2147483647i, select(vec2<i32>(-4005i, arg_0.c), (-vec2<i32>(global2.d.x, global2.c) & -global1.d) << (~arg_1 % vec2<u32>(32u)), global2.a));
    var var_1 = _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(731f - -2316f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-383f, 442f)), _wgslsmith_div_f32(-464f, -2285f))), _wgslsmith_f_op_f32(-812f * _wgslsmith_f_op_f32(f32(-1f) * -644f)), -156f), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(-793f * 1846f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(-785f)), _wgslsmith_div_f32(250f, -332f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1219f))), -791f)))));
    global3 = array<Struct_1, 5>();
    global0 = array<vec4<i32>, 5>();
    global0 = array<vec4<i32>, 5>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2022f - var_1.x));
}

fn func_2(arg_0: vec2<f32>, arg_1: Struct_1) -> f32 {
    var var_0 = 21337i;
    var var_1 = ~(arg_1.b & (6545u << (global2.b % 32u)));
    global2 = global3[_wgslsmith_index_u32(global2.b, 5u)];
    var var_2 = arg_0;
    var var_3 = _wgslsmith_f_op_f32(max(arg_0.x, _wgslsmith_f_op_f32(func_5(arg_1, vec2<u32>(1u, ~global2.b) ^ (vec2<u32>(arg_1.b, u_input.e) ^ ~u_input.b.yx), global3[_wgslsmith_index_u32(func_4(arg_1, _wgslsmith_f_op_f32(func_3()), true), 5u)]))));
    return _wgslsmith_div_f32(var_2.x, -489f);
}

fn func_6(arg_0: vec2<f32>, arg_1: f32, arg_2: Struct_1, arg_3: vec3<i32>) -> Struct_1 {
    global3 = array<Struct_1, 5>();
    global1 = Struct_1(!select(true, _wgslsmith_f_op_f32(exp2(arg_0.x)) >= _wgslsmith_f_op_f32(1306f - arg_0.x), any(vec2<bool>(global1.a, false))), arg_2.b, _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(select(_wgslsmith_add_vec2_i32(vec2<i32>(-21606i, u_input.a), vec2<i32>(-2147483647i, arg_3.x)), arg_2.d, !vec2<bool>(false, global2.a)), global1.d, vec2<i32>(global2.d.x << (arg_2.b % 32u), max(43490i, 15239i))), firstTrailingBit(global1.d)), ~vec2<i32>(global1.d.x, ~2147483647i) >> (_wgslsmith_div_vec2_u32(~(vec2<u32>(arg_2.b, global2.b) >> (vec2<u32>(arg_2.b, global2.b) % vec2<u32>(32u))), vec2<u32>(22427u, global1.b) & _wgslsmith_div_vec2_u32(u_input.c, vec2<u32>(global1.b, 59347u))) % vec2<u32>(32u)));
    let var_0 = arg_2;
    let var_1 = var_0;
    var var_2 = var_1;
    return global3[_wgslsmith_index_u32(min(_wgslsmith_dot_vec4_u32(~u_input.b, vec4<u32>(abs(_wgslsmith_clamp_u32(1u, global2.b, var_0.b)), _wgslsmith_sub_u32(~arg_2.b, ~u_input.b.x), global1.b & 5321u, _wgslsmith_div_u32(~var_2.b, firstTrailingBit(u_input.c.x)))), 20902u), 5u)];
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    let var_0 = func_6(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(_wgslsmith_div_vec2_f32(vec2<f32>(-2007f, 1986f), vec2<f32>(571f, 2138f)), Struct_1(false, u_input.c.x, 0i, arg_0.d))), _wgslsmith_div_f32(-621f, 1160f)), 778f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-211f, _wgslsmith_f_op_f32(min(1195f, -180f))))) - -708f), Struct_1(global2.b < 4294967295u, 4294967295u, i32(-1i) * -_wgslsmith_div_i32(u_input.d.x, 0i), vec2<i32>(-(arg_0.c ^ 40146i), -6079i)), -firstTrailingBit(min(~u_input.d, u_input.d)));
    var var_1 = _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-165f))), -905f)));
    let var_2 = vec4<bool>(!(!global1.a), false, arg_0.a | false, false);
    let var_3 = var_0;
    global2 = func_6(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, -1149f) - vec2<f32>(1341f, var_1.x)))) - _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, var_1.x) + vec2<f32>(var_1.x, var_1.x))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(431f, 357f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, var_1.x))))), -824f, func_6(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, -1000f) + vec2<f32>(-1132f, var_1.x))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_1.x + var_1.x))), -747f)), var_0, u_input.d), -_wgslsmith_clamp_vec3_i32(reverseBits(vec3<i32>(-2147483647i, var_3.c, -1i)), u_input.d, ~u_input.d));
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<i32>, 5>();
    global2 = func_1(Struct_1(any(vec3<bool>(true && global1.a, any(vec2<bool>(false, true)), true)), _wgslsmith_mod_u32(~(global1.b & 32062u), abs(abs(global2.b))), global1.d.x & reverseBits(7105i), ~(~(-global2.d))));
    let var_0 = Struct_1(global1.a, _wgslsmith_mult_u32(u_input.c.x, ~(global1.b | u_input.b.x)) >> (0u % 32u), global1.c, ~global2.d >> ((select(~vec2<u32>(0u, u_input.c.x), _wgslsmith_sub_vec2_u32(u_input.c, u_input.b.zx), select(vec2<bool>(global1.a, global2.a), vec2<bool>(false, global2.a), vec2<bool>(true, global1.a))) & vec2<u32>(_wgslsmith_div_u32(u_input.e, u_input.c.x), 4294967295u)) % vec2<u32>(32u)));
    var var_1 = func_6(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-825f, _wgslsmith_f_op_f32(-1926f * 1000f)), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(938f, -1359f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-307f, -1556f) + vec2<f32>(638f, -625f))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -123f)) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1309f + 155f), 1f)))), Struct_1(func_6(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-887f, -1097f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -175f)), func_6(vec2<f32>(-402f, -2064f), _wgslsmith_f_op_f32(f32(-1f) * -172f), var_0, -u_input.d), -vec3<i32>(0i, var_0.d.x, 30364i)).a, 1440u, -max(~global1.d.x, 1i), vec2<i32>(var_0.c, ~firstLeadingBit(global2.d.x))), vec3<i32>(select(0i | u_input.d.x, i32(-1i) * -global1.c, !(!global1.a)), firstLeadingBit(~(-2147483647i)), ~7981i));
    var var_2 = 1u;
    let var_3 = global3[_wgslsmith_index_u32(42926u, 5u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-217f, -441f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(857f, -235f)), select(vec2<bool>(var_0.a, var_1.a), vec2<bool>(var_3.a, true), vec2<bool>(true, true)))), global3[_wgslsmith_index_u32(var_0.b, 5u)]))), 29761u);
}

