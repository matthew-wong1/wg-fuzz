struct Struct_1 {
    a: vec3<u32>,
    b: bool,
    c: vec3<bool>,
    d: vec3<bool>,
    e: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec3<bool>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec2<f32>,
}

struct Struct_5 {
    a: vec4<u32>,
    b: Struct_1,
    c: Struct_3,
    d: vec3<i32>,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: i32,
    d: vec3<u32>,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(true, false);

var<private> global1: vec3<f32>;

var<private> global2: u32 = 99472u;

var<private> global3: array<vec3<bool>, 13> = array<vec3<bool>, 13>(vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, false, true));

var<private> global4: vec2<f32> = vec2<f32>(850f, -1022f);

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<f32>, arg_1: vec4<f32>, arg_2: u32) -> u32 {
    var var_0 = 4294967295u;
    let var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global4.x, -1728f) * _wgslsmith_f_op_f32(select(-250f, 1596f, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x + -730f)))))));
    let var_2 = Struct_4(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_0.x))) * -1928f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1225f + 1000f)))));
    global1 = _wgslsmith_f_op_vec3_f32(round(arg_1.xxy));
    global2 = 53161u;
    return u_input.a.x;
}

fn func_4(arg_0: bool, arg_1: Struct_5, arg_2: i32, arg_3: Struct_4) -> vec4<i32> {
    let var_0 = true;
    let var_1 = Struct_3(arg_1.b);
    global1 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, -607f, 282f) - vec3<f32>(global4.x, 1586f, arg_3.a.x)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(863f, -1000f, global4.x)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(1483f, global4.x, 609f) * vec3<f32>(530f, -237f, -1946f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(382f, 320f, global4.x))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_div_f32(-1000f, -486f), 1894f) - _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(-653f, global4.x, -1123f) - vec3<f32>(global4.x, 1024f, global1.x))))))));
    let var_2 = Struct_4(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(round(-274f)), _wgslsmith_f_op_f32(trunc(-1463f))))));
    var var_3 = ~(~(~_wgslsmith_div_vec2_u32(u_input.a.zy, _wgslsmith_div_vec2_u32(var_1.a.a.xx, vec2<u32>(4294967295u, u_input.b.x)))));
    return vec4<i32>(2147483647i, u_input.c, _wgslsmith_sub_i32(-15036i, 0i), arg_2);
}

fn func_2(arg_0: vec2<f32>) -> vec4<u32> {
    var var_0 = func_4(min(7966u, ~u_input.e >> (countOneBits(u_input.d.x) % 32u)) < 4275u, Struct_5(~u_input.b << (~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b.x, u_input.a.x, 53965u, 0u), vec4<u32>(1u, 0u, 0u, 39365u)) % vec4<u32>(32u)), Struct_1(~_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.e, 69054u, u_input.b.x), vec3<u32>(u_input.b.x, 0u, u_input.e), u_input.d), !(true | global0.x), global3[_wgslsmith_index_u32(~u_input.d.x >> (36383u % 32u), 13u)], !global3[_wgslsmith_index_u32(~u_input.d.x, 13u)], global3[_wgslsmith_index_u32(u_input.b.x, 13u)]), Struct_3(Struct_1(u_input.d, true, vec3<bool>(true, false, global0.x), select(global3[_wgslsmith_index_u32(1u, 13u)], vec3<bool>(true, global0.x, false), false), global3[_wgslsmith_index_u32(func_3(vec3<f32>(-1253f, -839f, -2530f), vec4<f32>(global4.x, arg_0.x, 1000f, global4.x), u_input.d.x), 13u)])), abs(-vec3<i32>(2147483647i, u_input.c, -21469i) ^ vec3<i32>(u_input.c, u_input.c, -12484i)), vec4<u32>(u_input.e, 1060u, _wgslsmith_dot_vec2_u32(u_input.b.yw, vec2<u32>(4294967295u, u_input.d.x)), ~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.b.x, u_input.a.x, u_input.b.x), vec4<u32>(0u, 0u, 25189u, u_input.e)))), -39466i, Struct_4(global1.yx));
    var var_1 = Struct_3(Struct_1(vec3<u32>(4294967295u, ~_wgslsmith_mod_u32(0u, 45870u), ~1u), global0.x, vec3<bool>(true, true, true), select(select(vec3<bool>(false, global0.x, true), vec3<bool>(global0.x, true, global0.x), all(vec3<bool>(true, true, true))), !select(global3[_wgslsmith_index_u32(u_input.a.x, 13u)], global3[_wgslsmith_index_u32(0u, 13u)], global0.x), select(!global3[_wgslsmith_index_u32(u_input.d.x, 13u)], global3[_wgslsmith_index_u32(3632u, 13u)], global3[_wgslsmith_index_u32(u_input.d.x, 13u)])), global3[_wgslsmith_index_u32(u_input.a.x, 13u)]));
    var var_2 = -_wgslsmith_clamp_vec4_i32(~vec4<i32>(_wgslsmith_div_i32(u_input.c, 1i), u_input.c, -6189i, -1i), vec4<i32>(_wgslsmith_mult_i32(0i, 53255i), 6834i, -min(u_input.c, 12931i), -countOneBits(39621i)), -(~_wgslsmith_clamp_vec4_i32(vec4<i32>(24471i, 11924i, 49459i, u_input.c), vec4<i32>(-23225i, 0i, 4121i, 0i), vec4<i32>(0i, var_0.x, u_input.c, u_input.c))));
    let var_3 = -_wgslsmith_mod_vec3_i32(reverseBits(max(min(vec3<i32>(39257i, 0i, u_input.c), vec3<i32>(-11183i, -16223i, 13184i)), var_2.xxy)), select(vec3<i32>(-9306i, min(u_input.c, var_0.x), _wgslsmith_dot_vec3_i32(var_2.yyy, var_0.wyw)), var_0.yyw, !(!global0.x)));
    let var_4 = _wgslsmith_mod_vec3_u32(~var_1.a.a, countOneBits(~u_input.d));
    return reverseBits(u_input.b);
}

fn func_1(arg_0: i32) -> Struct_3 {
    global0 = !(!select(vec2<bool>(any(vec4<bool>(global0.x, false, true, true)), !global0.x), vec2<bool>(true, false), select(vec2<bool>(global0.x, global0.x), select(vec2<bool>(false, false), vec2<bool>(false, global0.x), global0.x), !vec2<bool>(global0.x, global0.x))));
    let var_0 = vec4<u32>(u_input.e >> (_wgslsmith_dot_vec4_u32(abs(func_2(global1.zz)), ~(~vec4<u32>(u_input.a.x, u_input.b.x, 0u, 7110u))) % 32u), u_input.d.x, firstLeadingBit(1u) | ~(~u_input.d.x), _wgslsmith_mod_u32(68287u, 44941u << (func_2(_wgslsmith_f_op_vec2_f32(-global1.yy)).x % 32u)));
    global4 = vec2<f32>(_wgslsmith_f_op_f32(sign(130f)), global1.x);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(step(435f, -2371f))));
    var var_2 = !select(!(!select(vec2<bool>(true, global0.x), vec2<bool>(false, true), vec2<bool>(global0.x, true))), select(!vec2<bool>(global0.x, global0.x), vec2<bool>(all(vec4<bool>(global0.x, true, true, global0.x)), !global0.x), global0.x), !select(vec2<bool>(false, true), vec2<bool>(global0.x, true), true));
    return Struct_3(Struct_1(_wgslsmith_mod_vec3_u32(u_input.d, firstLeadingBit(~vec3<u32>(var_0.x, 82853u, 1u))), any(vec3<bool>(true, true, true)), !(!vec3<bool>(false, global0.x, false)), !vec3<bool>(true, any(vec3<bool>(global0.x, true, var_2.x)), false), vec3<bool>(all(!vec4<bool>(global0.x, global0.x, var_2.x, var_2.x)), arg_0 != 2147483647i, (true || var_2.x) & (global4.x > global4.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(~_wgslsmith_add_i32(-5453i, u_input.c));
    global0 = !(!select(select(var_0.a.d.yy, var_0.a.e.xz, true), !select(var_0.a.e.yx, vec2<bool>(true, false), vec2<bool>(false, false)), true));
    let var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global1.x, _wgslsmith_f_op_f32(-553f - -646f))) - 953f) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1143f)))))));
    var var_2 = all(!(!select(!vec4<bool>(false, global0.x, false, true), vec4<bool>(false, global0.x, global0.x, true), !vec4<bool>(global0.x, false, global0.x, var_0.a.d.x))));
    var var_3 = func_1(u_input.c | -select(-6747i, 1i, global0.x)).a.a;
    var var_4 = _wgslsmith_div_vec4_u32(~abs(vec4<u32>(func_2(global1.zx).x, 3174u, _wgslsmith_dot_vec2_u32(u_input.a.xz, var_3.zx), _wgslsmith_sub_u32(56213u, 8924u))), reverseBits(u_input.b));
    var var_5 = all(select(!vec3<bool>(true, var_0.a.e.x, all(global3[_wgslsmith_index_u32(var_0.a.a.x, 13u)])), vec3<bool>(u_input.c < (i32(-1i) * -1i), !all(vec2<bool>(false, global0.x)), select(all(vec4<bool>(true, false, var_0.a.c.x, var_0.a.d.x)), false, true)), vec3<bool>(true, true, true)));
    let var_6 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(338f, global4.x, 1095f, -153f) - vec4<f32>(global1.x, 692f, -729f, -327f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(580f, global4.x, -632f, 1835f), vec4<f32>(-1992f, -966f, var_1, global1.x), var_0.a.e.x)), vec4<bool>(false, global0.x, var_0.a.e.x, global0.x))))));
    global3 = array<vec3<bool>, 13>();
    let x = u_input.a;
    s_output = StorageBuffer(-1i, ~vec3<u32>(~var_3.x, 68087u, u_input.b.x) >> (~(~vec3<u32>(38383u, u_input.e, var_0.a.a.x)) % vec3<u32>(32u)));
}

