struct Struct_1 {
    a: u32,
    b: f32,
    c: bool,
    d: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<u32>,
    d: i32,
    e: vec2<bool>,
}

struct Struct_3 {
    a: bool,
    b: vec4<i32>,
    c: u32,
}

struct Struct_4 {
    a: vec4<f32>,
    b: vec4<i32>,
    c: Struct_1,
    d: vec4<i32>,
}

struct Struct_5 {
    a: Struct_3,
    b: vec4<i32>,
    c: vec4<i32>,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec2<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: f32,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: Struct_2 = Struct_2(Struct_1(19907u, 820f, true, vec3<u32>(0u, 39510u, 31187u)), Struct_1(1u, 906f, false, vec3<u32>(4294967295u, 21425u, 34154u)), vec2<u32>(28583u, 65527u), -1i, vec2<bool>(true, false));

var<private> global2: f32 = 1819f;

var<private> global3: array<f32, 15>;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: vec3<f32>) -> vec2<f32> {
    let var_0 = Struct_1(_wgslsmith_div_u32(global0.c.a, 4294967295u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(-2721f)), -456f)))), global0.c.c, vec3<u32>(~1u, 26182u, u_input.b));
    var var_1 = Struct_4(_wgslsmith_f_op_vec4_f32(-global0.a), ~vec4<i32>(global1.d, global1.d, i32(-1i) * -2147483647i, 1i), var_0, _wgslsmith_sub_vec4_i32(~_wgslsmith_sub_vec4_i32(vec4<i32>(28545i, 19655i, u_input.c.x, global0.b.x), -global0.d), global0.b));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(sign(-2702f)), 652f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(-203f, global1.a.b, var_0.c)))), -486f)));
    global1 = Struct_2(Struct_1(countOneBits(_wgslsmith_mult_u32(global0.c.a, 6160u | var_0.d.x)), _wgslsmith_f_op_f32(384f - global3[_wgslsmith_index_u32(max(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.d.x, var_1.c.a, global1.c.x), vec3<u32>(23056u, u_input.d.x, 55u)), 1u), 15u)]), true, _wgslsmith_div_vec3_u32(vec3<u32>(_wgslsmith_clamp_u32(1u, var_1.c.d.x, 1u), abs(u_input.d.x), 0u), ~(vec3<u32>(0u, 25129u, u_input.d.x) << (vec3<u32>(global1.a.a, 1u, 1u) % vec3<u32>(32u))))), Struct_1(~global1.b.d.x & _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.b), vec2<u32>(u_input.b, 4294967295u) ^ global0.c.d.xz), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b - var_0.b))), select(var_0.c, all(!vec3<bool>(true, true, var_1.c.c)), global0.c.c | (-18217i > global1.d)), global1.b.d), vec2<u32>(1u, ~countOneBits(6364u)) & _wgslsmith_mult_vec2_u32(~vec2<u32>(4294967295u, global0.c.d.x), ~u_input.d), -1i, !(!(!vec2<bool>(var_1.c.c, global1.a.c))));
    global0 = Struct_4(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(var_1.a, var_1.a, !vec4<bool>(var_0.c, var_0.c, global0.c.c, true))) * vec4<f32>(-1057f, _wgslsmith_f_op_f32(var_1.c.b * global1.a.b), global0.c.b, 1f)), global0.a)), var_1.b | global0.b, global0.c, firstTrailingBit(global0.d));
    return var_1.a.wz;
}

fn func_2() -> Struct_3 {
    global3 = array<f32, 15>();
    let var_0 = ~vec4<u32>(global0.c.a | global0.c.a, 72364u, 1u, u_input.d.x);
    var var_1 = (max(select(_wgslsmith_div_vec4_u32(vec4<u32>(34703u, 4294967295u, 0u, 4294967295u), var_0), var_0, global0.c.c), var_0) & firstLeadingBit(min(_wgslsmith_sub_vec4_u32(var_0, vec4<u32>(global1.c.x, global0.c.a, 8220u, global1.a.d.x)), vec4<u32>(66197u, u_input.b, u_input.d.x, u_input.d.x)))) ^ ~var_0;
    global2 = global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(global1.c.x, ~global0.c.a), 15u)];
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global0.a.wzy) * vec3<f32>(-539f, 702f, 1000f))))));
    return Struct_3(global0.c.c, global0.b, ~global0.c.d.x);
}

fn func_1(arg_0: Struct_3, arg_1: vec4<bool>, arg_2: bool, arg_3: vec3<bool>) -> Struct_3 {
    let var_0 = func_2();
    let var_1 = var_0.b.ywz;
    let var_2 = Struct_3(~global1.b.a == _wgslsmith_div_u32(global0.c.a, ~global0.c.d.x), vec4<i32>(-1i, abs(0i), i32(-1i) * -25132i, reverseBits(global1.d)), 1u);
    global1 = Struct_2(Struct_1(1u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-228f - _wgslsmith_f_op_f32(round(global0.c.b))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-133f, global1.a.b, true)))), var_0.c < max(_wgslsmith_add_u32(var_0.c, global1.b.a), 1u), vec3<u32>(_wgslsmith_mult_u32(0u, global0.c.d.x), _wgslsmith_dot_vec2_u32(global0.c.d.yy, u_input.d), global1.c.x) >> (max(reverseBits(global0.c.d), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b, 0u, global0.c.a), vec3<u32>(57913u, u_input.d.x, 37430u))) % vec3<u32>(32u))), global0.c, ~reverseBits(_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, 10777u), ~u_input.d)), 1i, !vec2<bool>(arg_3.x, func_2().a));
    global2 = global0.a.x;
    return arg_0;
}

fn func_4(arg_0: u32, arg_1: i32, arg_2: Struct_3, arg_3: bool) -> Struct_2 {
    let var_0 = !select(vec4<bool>(true, all(vec3<bool>(true, true, false)), true, any(select(vec3<bool>(arg_3, global0.c.c, arg_3), vec3<bool>(false, arg_2.a, false), vec3<bool>(false, arg_2.a, true)))), vec4<bool>(!(!global0.c.c), !global1.e.x && true, arg_2.a, true), vec4<bool>(true, false, arg_2.a, (global0.c.c && false) & !global1.e.x));
    let var_1 = Struct_2(global0.c, global0.c, _wgslsmith_clamp_vec2_u32(reverseBits(~u_input.d), global0.c.d.zz, abs(vec2<u32>(124626u, 0u))) ^ ~(~_wgslsmith_add_vec2_u32(global0.c.d.yz, global0.c.d.xy)), _wgslsmith_sub_i32(~(_wgslsmith_mod_i32(arg_2.b.x, arg_2.b.x) >> (~global1.b.a % 32u)), 1i), select(vec2<bool>(true, true), var_0.xw, var_0.zx));
    var var_2 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(global0.a - vec4<f32>(var_1.b.b, global3[_wgslsmith_index_u32(1u, 15u)], 454f, 163f)))), global0.a)))));
    global3 = array<f32, 15>();
    let var_3 = global0.c;
    return Struct_2(var_1.b, global0.c, abs(~vec2<u32>(arg_0, 1u)), (i32(-1i) * -(~2147483647i)) ^ -(_wgslsmith_dot_vec4_i32(arg_2.b, arg_2.b) & arg_1), var_0.zx);
}

fn func_5(arg_0: Struct_4, arg_1: vec4<u32>, arg_2: Struct_2, arg_3: f32) -> u32 {
    global1 = func_4(u_input.d.x, ((arg_0.b.x << (u_input.b % 32u)) >> (global1.c.x % 32u)) | ~((global0.b.x << (global1.a.a % 32u)) ^ arg_2.d), func_2(), false);
    global2 = 1379f;
    global2 = global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(firstTrailingBit(arg_2.a.d.yz), vec2<u32>(1u, ~(~(arg_1.x & arg_1.x)))), 15u)];
    global3 = array<f32, 15>();
    var var_0 = arg_0.c;
    return arg_1.x;
}

fn func_6(arg_0: Struct_3, arg_1: vec4<bool>, arg_2: u32, arg_3: Struct_1) -> Struct_3 {
    let var_0 = _wgslsmith_mod_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(select(arg_2, _wgslsmith_div_u32(global0.c.d.x, global1.b.d.x), arg_0.a), 55377u), arg_3.d.yx), _wgslsmith_mult_vec2_u32(global0.c.d.yx, firstLeadingBit(global1.a.d.xx | vec2<u32>(u_input.b, 80869u))) | countOneBits(global1.b.d.zy));
    global3 = array<f32, 15>();
    let var_1 = Struct_1(arg_0.c, global1.a.b, arg_1.x || true, _wgslsmith_add_vec3_u32(global1.a.d, vec3<u32>(max(4294967295u | arg_3.d.x, _wgslsmith_mod_u32(61768u, arg_0.c)), 1u, _wgslsmith_mult_u32(~arg_2, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, arg_2), vec2<u32>(var_0.x, global0.c.a))))));
    global2 = _wgslsmith_f_op_f32(max(1116f, _wgslsmith_f_op_f32(-global0.c.b)));
    let var_2 = Struct_1(3050u, -377f, func_1(func_2(), select(vec4<bool>(true, func_1(arg_0, arg_1, global1.a.c, vec3<bool>(arg_0.a, true, arg_1.x)).a, arg_3.c, var_1.c), select(!arg_1, arg_1, true), true | !global1.b.c), false, !(!select(arg_1.wwx, vec3<bool>(true, true, var_1.c), vec3<bool>(true, true, true)))).a, firstTrailingBit(vec3<u32>(abs(global0.c.d.x), ~_wgslsmith_add_u32(u_input.b, 4294967295u), func_5(Struct_4(global0.a, global0.b, global1.a, vec4<i32>(15737i, -13227i, arg_0.b.x, global0.d.x)), countOneBits(vec4<u32>(arg_0.c, 12714u, 1u, arg_2)), func_4(arg_2, arg_0.b.x, Struct_3(true, vec4<i32>(-1i, 58250i, -84467i, global0.b.x), var_0.x), global1.a.c), _wgslsmith_div_f32(var_1.b, -712f)))));
    return Struct_3(global0.c.c, global0.d, arg_2 | 0u);
}

fn func_7(arg_0: Struct_3, arg_1: bool) -> vec4<i32> {
    let var_0 = func_6(func_1(func_2(), !(!(!vec4<bool>(global0.c.c, arg_1, true, true))), false, vec3<bool>(551f > global0.a.x, func_6(func_2(), !vec4<bool>(arg_0.a, false, arg_1, arg_1), u_input.d.x, global1.a).a, any(vec3<bool>(true, true, true)))), !select(!(!vec4<bool>(true, arg_0.a, true, arg_0.a)), !select(vec4<bool>(false, global0.c.c, arg_1, false), vec4<bool>(global1.e.x, global1.a.c, global1.a.c, arg_1), global1.e.x), select(select(vec4<bool>(global0.c.c, false, global1.b.c, global0.c.c), vec4<bool>(global1.e.x, true, false, global1.a.c), vec4<bool>(global1.a.c, false, false, global0.c.c)), vec4<bool>(true, arg_1, true, false), true)), _wgslsmith_div_u32(global1.a.a, func_2().c), global1.b);
    let var_1 = Struct_5(var_0, arg_0.b, ~(-global0.d), vec4<bool>(func_4(arg_0.c, _wgslsmith_div_i32(countOneBits(arg_0.b.x), _wgslsmith_dot_vec4_i32(vec4<i32>(-10587i, global1.d, var_0.b.x, global0.d.x), vec4<i32>(global1.d, var_0.b.x, -1i, -18520i))), arg_0, true).b.c, all(!vec4<bool>(false, true, arg_1, var_0.a)), arg_1, global1.a.c));
    let var_2 = Struct_2(Struct_1(~min(4294967295u, arg_0.c ^ arg_0.c), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1985f, -668f) * global0.c.b), 56953i <= arg_0.b.x, _wgslsmith_mult_vec3_u32(global0.c.d, _wgslsmith_mult_vec3_u32(vec3<u32>(86568u, 13981u, u_input.b), vec3<u32>(1u, u_input.b, arg_0.c)))), global0.c, global1.c, var_1.a.b.x, vec2<bool>(!func_4(70099u, 40103i, Struct_3(arg_0.a, var_0.b, 1u), true).e.x, arg_0.a));
    let var_3 = ~firstTrailingBit(select(0u, select(~var_1.a.c, var_1.a.c, global3[_wgslsmith_index_u32(1u, 15u)] > -964f), true));
    var var_4 = global1.b.c;
    return func_2().b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_7(func_6(Struct_3(u_input.a.x < (-2147483647i | u_input.c.x), reverseBits(vec4<i32>(global1.d, global1.d, global1.d, global1.d) << (vec4<u32>(global1.a.a, global1.b.d.x, global1.c.x, 4294967295u) % vec4<u32>(32u))), 1u & select(24441u, 18449u, false)), !vec4<bool>(!global1.e.x, true, !global0.c.c, false), func_5(Struct_4(global0.a, ~vec4<i32>(global0.d.x, 0i, -48049i, u_input.a.x), global0.c, _wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, 2147483647i, 2050i, global1.d), global0.d, vec4<i32>(30115i, global0.b.x, 2147483647i, u_input.a.x))), vec4<u32>(_wgslsmith_clamp_u32(global1.c.x, global0.c.d.x, 4294967295u), _wgslsmith_add_u32(global1.a.d.x, global1.c.x), 22916u, ~1u), func_4(select(59808u, 4294967295u, true), global0.d.x, func_1(Struct_3(false, vec4<i32>(-1i, global1.d, global0.d.x, -27362i), global1.c.x), vec4<bool>(true, global1.b.c, true, true), global0.c.c, vec3<bool>(true, true, global0.c.c)), any(vec4<bool>(false, false, global1.e.x, global1.a.c))), 2000f), global0.c), global0.c.c);
    var var_1 = ~(~7744i);
    global2 = _wgslsmith_f_op_f32(select(1948f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_vec2_f32(func_3(vec3<f32>(_wgslsmith_f_op_f32(global0.c.b * 500f), _wgslsmith_f_op_f32(-359f + global0.a.x), global3[_wgslsmith_index_u32(~global1.a.a, 15u)]))).x)), func_6(func_6(func_2(), vec4<bool>(true, global1.a.c, !global1.b.c, select(false, false, global1.e.x)), firstTrailingBit(~0u), Struct_1(_wgslsmith_dot_vec4_u32(vec4<u32>(global0.c.d.x, 1u, 15308u, global0.c.a), vec4<u32>(4294967295u, global1.a.a, global0.c.a, global1.a.d.x)), _wgslsmith_f_op_f32(floor(global3[_wgslsmith_index_u32(1u, 15u)])), false, vec3<u32>(1u, global1.a.a, 1580u))), !vec4<bool>(true, true, global0.c.c, global0.c.c | false), 0u, func_4(~20513u, _wgslsmith_mult_i32(global0.d.x, ~2147483647i), Struct_3(true, -global0.d, 4294967295u), true).b).a));
    let x = u_input.a;
    s_output = StorageBuffer(global0.c.a, 1i, global1.a.b, global3[_wgslsmith_index_u32(global0.c.d.x, 15u)], ~40205u);
}

