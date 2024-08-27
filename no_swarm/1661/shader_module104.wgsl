struct Struct_1 {
    a: vec4<bool>,
    b: i32,
    c: vec3<f32>,
    d: vec2<u32>,
    e: vec2<f32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
    d: vec4<bool>,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 12> = array<vec3<u32>, 12>(vec3<u32>(4294967295u, 128052u, 1u), vec3<u32>(28628u, 39433u, 1u), vec3<u32>(1u, 75530u, 55298u), vec3<u32>(40437u, 22178u, 0u), vec3<u32>(1u, 0u, 107522u), vec3<u32>(17391u, 0u, 4294967295u), vec3<u32>(53089u, 21618u, 76910u), vec3<u32>(4294967295u, 4294967295u, 35563u), vec3<u32>(14813u, 0u, 0u), vec3<u32>(1u, 1u, 4294967295u), vec3<u32>(52554u, 0u, 4294967295u), vec3<u32>(4294967295u, 4294967295u, 85655u));

var<private> global1: Struct_2 = Struct_2(1u, Struct_1(vec4<bool>(true, false, false, true), 0i, vec3<f32>(1239f, -478f, 1000f), vec2<u32>(23624u, 5859u), vec2<f32>(605f, -1967f)), Struct_1(vec4<bool>(true, false, false, false), 32003i, vec3<f32>(1554f, 2326f, 299f), vec2<u32>(4294967295u, 68469u), vec2<f32>(119f, -565f)), vec4<bool>(true, false, true, false), true);

var<private> global2: Struct_2;

var<private> global3: array<vec2<f32>, 17>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3() -> f32 {
    global0 = array<vec3<u32>, 12>();
    global2 = Struct_2(abs(u_input.a & ~max(37345u, 398u)), global2.b, global1.c, vec4<bool>(global2.b.a.x, all(!select(global2.c.a.wxw, global2.d.zxz, vec3<bool>(global1.e, false, global2.e))), !global2.c.a.x, global2.d.x | false), !((_wgslsmith_dot_vec2_u32(global1.b.d, global1.b.d) & global1.a) <= 1u));
    let var_0 = select(vec3<bool>(true, global1.b.a.x, all(!vec3<bool>(true, global2.b.a.x, global2.c.a.x))), !(!vec3<bool>(false || global2.c.a.x, true, true || global2.b.a.x)), !(!global2.b.a.wyx));
    let var_1 = 0i;
    global3 = array<vec2<f32>, 17>();
    return 1503f;
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: f32) -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(arg_2, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) + arg_2)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-272f - -1442f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1810f)) * _wgslsmith_f_op_f32(-global1.c.c.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2) + -1459f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_0.e.x * global2.b.c.x))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-630f)) + global1.b.c.x))));
    global0 = array<vec3<u32>, 12>();
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-624f, _wgslsmith_f_op_f32(global2.b.c.x * _wgslsmith_f_op_f32(f32(-1f) * -1137f))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2, 504f) + arg_0.e) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, global1.b.e.x)), _wgslsmith_f_op_vec2_f32(-global2.c.c.xx)))) + _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, -1204f))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.wy - global2.b.c.xx), vec2<f32>(-672f, 347f))))));
    var var_2 = Struct_2(~29719u, Struct_1(vec4<bool>(arg_0.a.x, global2.c.a.x, false || select(true, true, true), false), -(~global1.c.b << (global2.b.d.x % 32u)), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_2, arg_2, _wgslsmith_f_op_f32(1000f - var_1.x)))), vec2<u32>(~_wgslsmith_dot_vec3_u32(global0[_wgslsmith_index_u32(global2.c.d.x, 12u)], vec3<u32>(u_input.a, global2.c.d.x, 1u)), ~reverseBits(1u)), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(global3[_wgslsmith_index_u32(u_input.a, 17u)])) + arg_0.e)))), Struct_1(select(global1.b.a, select(select(global1.c.a, global2.c.a, true), arg_0.a, global2.c.a.x), !(!vec4<bool>(arg_0.a.x, true, global1.e, true))), 2394i, _wgslsmith_f_op_vec3_f32(-global2.c.c), firstLeadingBit(~vec2<u32>(7093u, global1.c.d.x) >> (reverseBits(vec2<u32>(1u, arg_0.d.x)) % vec2<u32>(32u))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_1, var_0.x), global2.c.c.yx, global2.b.a.xy)) + _wgslsmith_f_op_vec2_f32(select(var_0.xy, vec2<f32>(-724f, arg_0.e.x), vec2<bool>(true, true)))), global2.b.e))), vec4<bool>(all(select(!vec3<bool>(false, false, global1.d.x), vec3<bool>(arg_0.a.x, global2.e, true), arg_0.a.wzy)), global2.e, all(vec4<bool>(arg_0.a.x, true, true, true)), ((-12291i | global1.b.b) >> (_wgslsmith_mult_u32(1u, 60445u) % 32u)) <= 24053i), true);
    var var_3 = var_2.b;
    return vec4<bool>(true, true, false, select(!arg_0.a.x, all(vec2<bool>(true, arg_0.a.x)) && (any(var_3.a) || true), !(false == any(vec2<bool>(global2.b.a.x, false)))));
}

fn func_2(arg_0: f32, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: bool) -> vec2<i32> {
    let var_0 = vec3<bool>(true, !(!all(global2.d)), !global1.c.a.x);
    var var_1 = Struct_2(global1.a, global1.b, Struct_1(!select(!global1.b.a, !vec4<bool>(true, false, arg_3, true), !vec4<bool>(true, false, false, var_0.x)), -global1.b.b, arg_2.c, global2.c.d, global1.c.e), func_4(global1.c, _wgslsmith_div_f32(arg_2.c.x, _wgslsmith_f_op_f32(func_3())), 383f), arg_2.b > _wgslsmith_mult_i32(-15611i, -1i));
    var var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1961f))))));
    var var_3 = Struct_2(firstTrailingBit(_wgslsmith_add_u32(_wgslsmith_clamp_u32(arg_1.x, firstLeadingBit(arg_1.x), var_1.b.d.x | 5794u), arg_2.d.x)), arg_2, Struct_1(!(!select(arg_2.a, vec4<bool>(true, var_1.c.a.x, arg_3, false), vec4<bool>(arg_3, true, true, var_1.c.a.x))), 1i, vec3<f32>(-304f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_2.e.x - -923f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1764f + 283f))), arg_2.d, vec2<f32>(_wgslsmith_f_op_f32(-601f + -1604f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(var_1.c.e.x, 289f)))))), vec4<bool>(any(vec2<bool>(all(var_1.b.a.zy), all(global2.c.a))), any(!select(global2.c.a.wyw, vec3<bool>(true, global2.b.a.x, var_1.e), var_1.e)), all(select(!vec2<bool>(global1.d.x, global1.e), !vec2<bool>(global2.c.a.x, var_1.e), var_1.c.a.x)), !(!var_1.e)), 148f >= _wgslsmith_f_op_f32(-global2.c.e.x));
    let var_4 = var_1.d.x && var_1.c.a.x;
    return _wgslsmith_clamp_vec2_i32(~_wgslsmith_add_vec2_i32(-vec2<i32>(2147483647i, var_1.b.b), _wgslsmith_mod_vec2_i32(vec2<i32>(1i, arg_2.b) << (var_3.c.d % vec2<u32>(32u)), vec2<i32>(var_3.c.b, global2.b.b))), _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.d, var_1.c.b) ^ max(vec2<i32>(var_1.c.b, -53904i), vec2<i32>(var_3.c.b, -20788i)), _wgslsmith_mult_vec2_i32(-vec2<i32>(-2147483647i, -25331i), -vec2<i32>(arg_2.b, -29809i))) & -select(vec2<i32>(27047i, 2147483647i), vec2<i32>(85183i, -2147483647i), select(false, arg_3, false)), vec2<i32>(-7948i & ~_wgslsmith_dot_vec3_i32(vec3<i32>(global2.c.b, -1i, u_input.b), vec3<i32>(global1.b.b, var_3.b.b, var_3.b.b)), _wgslsmith_div_i32(-2147483647i, var_3.b.b)));
}

fn func_5(arg_0: vec2<i32>, arg_1: bool, arg_2: vec2<i32>, arg_3: vec4<bool>) -> Struct_1 {
    global2 = Struct_2(global1.c.d.x, Struct_1(!(!select(vec4<bool>(global2.d.x, false, arg_1, true), global2.d, vec4<bool>(false, true, global1.c.a.x, false))), -select(arg_0.x, -1i, global2.b.a.x || global1.b.a.x), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global2.c.c + vec3<f32>(global2.b.e.x, global2.c.e.x, -1088f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global2.b.c)))), ~(~(global2.b.d >> (global1.c.d % vec2<u32>(32u)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(486f, global2.c.c.x) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-440f, global1.b.c.x) - global2.c.c.yz)))), global1.b, !vec4<bool>(false, !(global1.b.b == global1.b.b), false, true), -u_input.d >= -_wgslsmith_add_i32(~(-9902i), arg_2.x));
    var var_0 = global2.c.e.x;
    global1 = Struct_2(max(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global1.b.d.x, u_input.a), global1.b.d), firstLeadingBit(4294967295u)), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, global2.a), reverseBits(global2.c.d))) | ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, global2.c.d.x, 50408u, 62000u), vec4<u32>(u_input.a, 23244u, global2.a, global2.a) ^ vec4<u32>(global1.c.d.x, u_input.a, 4294967295u, 0u)), global2.b, global1.c, !vec4<bool>(global1.b.a.x | true, all(!global1.b.a), !global1.d.x, any(vec2<bool>(true, false))), ~global1.a <= 40428u);
    let var_1 = -countOneBits(-(vec4<i32>(2147483647i, -2147483647i, 34754i, global2.c.b) << (vec4<u32>(global1.a, 4294967295u, 42091u, 34453u) % vec4<u32>(32u))));
    let var_2 = global1.c;
    return Struct_1(!vec4<bool>(!arg_3.x, global2.c.a.x | (global1.e | false), any(!global2.c.a.yyx), all(func_4(Struct_1(arg_3, global2.c.b, vec3<f32>(var_2.e.x, global1.b.e.x, global1.c.e.x), var_2.d, global3[_wgslsmith_index_u32(1u, 17u)]), var_2.e.x, 883f))), ~_wgslsmith_dot_vec2_i32(abs(-vec2<i32>(46732i, 18155i)), vec2<i32>(0i, var_2.b)), var_2.c, _wgslsmith_add_vec2_u32(~(~(global2.b.d >> (vec2<u32>(20655u, 4294967295u) % vec2<u32>(32u)))), _wgslsmith_sub_vec2_u32(~_wgslsmith_div_vec2_u32(vec2<u32>(1u, 20408u), var_2.d), global2.b.d)), global2.b.e);
}

fn func_1(arg_0: vec3<u32>) -> f32 {
    let var_0 = func_5(func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-185f * global2.c.c.x))) * global2.c.c.x), select(~vec4<u32>(0u, global1.c.d.x, global1.a, u_input.a), _wgslsmith_add_vec4_u32(vec4<u32>(arg_0.x, 40608u, 36067u, 0u), vec4<u32>(1u, arg_0.x, 94405u, global2.a)), true) | vec4<u32>(~global2.a, 17880u, global1.b.d.x >> (48417u % 32u), firstTrailingBit(global2.a)), Struct_1(global2.c.a, _wgslsmith_dot_vec2_i32(max(vec2<i32>(46578i, -2147483647i), vec2<i32>(2147483647i, 17688i)), -vec2<i32>(global1.c.b, -49435i)), _wgslsmith_div_vec3_f32(global1.c.c, _wgslsmith_f_op_vec3_f32(min(global1.c.c, global1.b.c))), global2.c.d, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(494f, global1.c.c.x) + global1.c.e))), any(!select(vec3<bool>(global1.e, global2.b.a.x, false), vec3<bool>(false, global2.d.x, true), global2.c.a.wyx))), all(vec4<bool>(all(vec3<bool>(global1.e, global1.b.a.x, global2.e)), true, global2.d.x, any(vec3<bool>(global2.d.x, true, false)))) == all(vec4<bool>(select(global1.d.x, true, false), global1.c.a.x, !global2.d.x, !global1.b.a.x)), _wgslsmith_mod_vec2_i32(vec2<i32>(2147483647i, _wgslsmith_div_i32(_wgslsmith_sub_i32(u_input.b, global2.c.b), countOneBits(-11932i))), abs(_wgslsmith_sub_vec2_i32(func_2(global1.c.e.x, vec4<u32>(u_input.a, 36109u, u_input.a, global1.c.d.x), global2.c, false), vec2<i32>(2147483647i, -59834i)))), vec4<bool>(func_4(Struct_1(select(global1.c.a, vec4<bool>(true, global2.b.a.x, global2.c.a.x, global2.b.a.x), false), u_input.d, global1.c.c, countOneBits(global1.c.d), global2.c.c.zy), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global1.b.e.x, global2.c.e.x)) * _wgslsmith_f_op_f32(f32(-1f) * -193f)), -692f).x, !(!global2.d.x) & global2.e, all(vec3<bool>(false, global1.b.b >= 2147483647i, false)), true));
    global2 = Struct_2(1u, func_5(-vec2<i32>(-35812i, -6685i), !any(select(global1.c.a.wzw, vec3<bool>(global1.c.a.x, var_0.a.x, false), global1.d.wzy)), ~((vec2<i32>(global1.c.b, var_0.b) & vec2<i32>(2147483647i, -1i)) << (_wgslsmith_div_vec2_u32(global1.c.d, vec2<u32>(var_0.d.x, 135243u)) % vec2<u32>(32u))), vec4<bool>(true, true, false, false)), global2.c, select(global2.c.a, var_0.a, vec4<bool>(all(vec3<bool>(false, true, false)), !global1.c.a.x, global1.c.d.x >= 22401u, false)), !(max(~32137u, ~1u) == _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(arg_0, vec3<u32>(arg_0.x, 4294967295u, 1122u)), vec3<u32>(0u, global2.c.d.x, var_0.d.x))));
    var var_1 = global2.b;
    let var_2 = Struct_2(~_wgslsmith_div_u32(0u, min(global1.b.d.x, global1.c.d.x) << (~4294967295u % 32u)), Struct_1(var_1.a, _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(firstTrailingBit(vec3<i32>(35934i, var_0.b, var_0.b)), max(vec3<i32>(11561i, -2147483647i, 77633i), vec3<i32>(0i, 2147483647i, global1.c.b)), vec3<i32>(u_input.b, var_0.b, 2147483647i) ^ vec3<i32>(var_0.b, -2147483647i, -8205i)), abs(reverseBits(vec3<i32>(u_input.b, 0i, global2.c.b)))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.e.x, var_0.c.x, var_0.c.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.c.c.x, global1.b.c.x, global1.b.e.x))), _wgslsmith_f_op_vec3_f32(-var_0.c))), ~vec2<u32>(~0u, 84952u), _wgslsmith_f_op_vec2_f32(vec2<f32>(global2.c.c.x, _wgslsmith_div_f32(global2.b.c.x, global1.b.e.x)) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-810f, global1.b.c.x)), var_1.e, !global1.e)))), var_0, !vec4<bool>(true, false, true, all(var_0.a.xw)), true);
    var var_3 = var_2;
    return -573f;
}

fn func_6(arg_0: vec4<i32>, arg_1: f32, arg_2: Struct_2, arg_3: f32) -> f32 {
    let var_0 = _wgslsmith_div_vec2_i32(~(arg_0.ww << (vec2<u32>(arg_2.a, arg_2.a) % vec2<u32>(32u))), arg_0.xx);
    var var_1 = func_5(~(_wgslsmith_add_vec2_i32(var_0, var_0 | var_0) & -arg_0.zx), ~(44421u | _wgslsmith_mod_u32(u_input.a, global1.b.d.x)) != ~_wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, global1.a, global2.c.d.x, 0u), countOneBits(vec4<u32>(7724u, arg_2.c.d.x, 99662u, arg_2.c.d.x))), func_2(-2679f, vec4<u32>(countOneBits(0u), u_input.a, global2.a, ~u_input.a) & vec4<u32>(_wgslsmith_dot_vec3_u32(global0[_wgslsmith_index_u32(arg_2.c.d.x, 12u)], vec3<u32>(global1.a, arg_2.c.d.x, global2.c.d.x)), _wgslsmith_div_u32(1u, global2.b.d.x), ~global2.b.d.x, global2.a & arg_2.a), global2.c, false), vec4<bool>(!(!global1.b.a.x) & true, -1524f == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.c.e.x * -1906f) + arg_3), all(global1.d.zw), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(arg_2.b.e.x, global1.c.e.x, global2.b.a.x)), _wgslsmith_f_op_f32(-arg_1))) != arg_1));
    var var_2 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_2.b.c) - vec3<f32>(_wgslsmith_f_op_f32(420f * arg_1), global1.b.c.x, _wgslsmith_f_op_f32(f32(-1f) * -776f))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(334f, -1000f, arg_3) - vec3<f32>(635f, global2.b.e.x, var_1.c.x)))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_3, -1000f, var_1.c.x)))))));
    let var_3 = min(_wgslsmith_clamp_vec3_i32(-_wgslsmith_div_vec3_i32(vec3<i32>(arg_2.b.b, var_1.b, 0i), select(arg_0.xyw, arg_0.wyx, vec3<bool>(arg_2.e, global1.d.x, true))), vec3<i32>(func_5(select(vec2<i32>(global2.c.b, u_input.c), vec2<i32>(var_0.x, global1.c.b), true), global2.b.a.x, _wgslsmith_mod_vec2_i32(arg_0.yw, vec2<i32>(21392i, global1.b.b)), !arg_2.d).b, var_1.b, 1i), vec3<i32>(_wgslsmith_mod_i32(_wgslsmith_clamp_i32(2302i, arg_0.x, 2147483647i), -var_0.x), _wgslsmith_div_i32(_wgslsmith_add_i32(-52647i, global1.b.b), global1.c.b), var_1.b)), vec3<i32>(abs(_wgslsmith_mult_i32(global1.b.b, var_1.b)), ~(~14553i), _wgslsmith_div_i32(i32(-1i) * -1i, global2.b.b)) | select(arg_0.yyw, arg_0.yzz, vec3<bool>(true, true, true)));
    let var_4 = arg_2.c;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(global2.c.e.x * global2.c.e.x), _wgslsmith_f_op_f32(func_6(vec4<i32>(-38500i, 57986i, 19784i, -1i), _wgslsmith_f_op_f32(func_1(global0[_wgslsmith_index_u32(global2.c.d.x, 12u)])), Struct_2(25742u, global2.b, global1.b, global1.d, true), _wgslsmith_f_op_f32(459f + global2.b.c.x))), 1012f, global2.b.c.x))));
    let var_1 = global2.c.c;
    global1 = Struct_2(~u_input.a, func_5(_wgslsmith_div_vec2_i32(~(vec2<i32>(global2.b.b, global1.b.b) & vec2<i32>(-10758i, global1.c.b)), _wgslsmith_sub_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(22181i, global1.c.b), vec2<i32>(global1.c.b, global2.b.b)), max(vec2<i32>(u_input.d, 8292i), vec2<i32>(u_input.d, 28653i)))), any(select(vec4<bool>(global2.e, false, true, global1.b.a.x), global2.d, global2.c.a.x)), ~vec2<i32>(~(-2147483647i), global2.c.b), !vec4<bool>(any(vec2<bool>(true, true)), !global2.c.a.x, !global1.b.a.x, global1.e & global2.d.x)), global2.c, !global1.d, all(vec3<bool>(true, true, true)));
    let var_2 = global1.c.b << (u_input.a % 32u);
    global3 = array<vec2<f32>, 17>();
    global3 = array<vec2<f32>, 17>();
    let x = u_input.a;
    s_output = StorageBuffer(-(-(~vec4<i32>(2147483647i, var_2, global2.c.b, -6406i)) & select(~vec4<i32>(-22044i, 49522i, global1.c.b, 1i), vec4<i32>(0i, global1.b.b, global1.b.b, -36332i), !global2.e)));
}

