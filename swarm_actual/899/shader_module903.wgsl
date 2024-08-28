struct Struct_1 {
    a: vec4<f32>,
    b: i32,
    c: vec2<bool>,
    d: vec2<f32>,
}

struct Struct_2 {
    a: f32,
    b: vec4<i32>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: Struct_1,
    c: f32,
}

struct Struct_5 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: f32,
    d: vec2<u32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 2>;

var<private> global1: array<vec4<f32>, 1> = array<vec4<f32>, 1>(vec4<f32>(-1391f, 228f, 1404f, -924f));

var<private> global2: i32;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_5) -> vec2<f32> {
    let var_0 = Struct_1(global1[_wgslsmith_index_u32(4294967295u, 1u)], -8431i, !(!select(vec2<bool>(arg_0.b.c.x, false), vec2<bool>(true, true), select(arg_1.a.x, arg_0.b.c.x, arg_1.a.x))), arg_0.b.a.yy);
    var var_1 = Struct_5(!vec2<bool>(any(vec3<bool>(false, true, arg_0.b.c.x)), arg_1.a.x));
    global2 = -1i;
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(1872f, -1338f, var_0.a.x), vec3<f32>(var_0.d.x, 485f, -1265f))))));
    global2 = var_0.b;
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(vec2<f32>(arg_0.c, var_2.x), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.a, var_2.x) * var_2.yy)))))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(exp2(arg_0.b.a.x)), _wgslsmith_f_op_f32(step(449f, var_2.x))), arg_0.b.a.zy)) * _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-var_0.d), _wgslsmith_f_op_vec2_f32(vec2<f32>(1340f, -1583f) - _wgslsmith_f_op_vec2_f32(var_0.a.xx * var_0.a.wx))))));
}

fn func_2(arg_0: vec3<u32>) -> Struct_4 {
    global2 = _wgslsmith_dot_vec2_i32(~(vec2<i32>(_wgslsmith_sub_i32(16889i, u_input.a), -u_input.a) | (firstLeadingBit(vec2<i32>(1i, 1i)) >> (arg_0.yy % vec2<u32>(32u)))), -vec2<i32>(~u_input.a, u_input.a & -1i) >> (vec2<u32>(~u_input.b.x, arg_0.x) % vec2<u32>(32u)));
    global0 = array<Struct_5, 2>();
    global1 = array<vec4<f32>, 1>();
    global0 = array<Struct_5, 2>();
    var var_0 = arg_0.x;
    return Struct_4(1031f, Struct_1(vec4<f32>(_wgslsmith_f_op_f32(740f * _wgslsmith_f_op_f32(-848f - -211f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(913f + 1000f) + _wgslsmith_f_op_f32(round(505f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(576f + 1084f) - -459f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1220f, -1000f) * -709f)), u_input.a, select(vec2<bool>(true, false), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), false))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1262f, 1000f), vec2<f32>(1766f, -1976f), vec2<bool>(false, false)))) * _wgslsmith_f_op_vec2_f32(func_3(Struct_4(199f, Struct_1(vec4<f32>(1154f, 1249f, -1563f, 613f), 0i, vec2<bool>(true, false), vec2<f32>(230f, -717f)), -114f), Struct_5(vec2<bool>(true, true)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1769f, 1000f)) + -1031f))));
}

fn func_4(arg_0: Struct_5, arg_1: Struct_4, arg_2: Struct_5, arg_3: Struct_5) -> i32 {
    global1 = array<vec4<f32>, 1>();
    let var_0 = false;
    let var_1 = abs(~_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, _wgslsmith_div_i32(-34887i, -2147483647i), 1i, u_input.a), vec4<i32>(arg_1.b.b, -6691i, 35829i, arg_1.b.b)));
    global1 = array<vec4<f32>, 1>();
    global0 = array<Struct_5, 2>();
    return _wgslsmith_clamp_i32(max(2147483647i, u_input.a), _wgslsmith_mod_i32(~var_1, arg_1.b.b), var_1) | firstLeadingBit(_wgslsmith_add_i32(u_input.a, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -2147483647i, arg_1.b.b, u_input.a), vec4<i32>(u_input.a, -12437i, var_1, arg_1.b.b))));
}

fn func_5(arg_0: Struct_1, arg_1: bool) -> Struct_2 {
    let var_0 = global0[_wgslsmith_index_u32(u_input.b.x, 2u)];
    let var_1 = arg_0;
    var var_2 = func_2(~reverseBits(u_input.b.wzy)).b;
    global1 = array<vec4<f32>, 1>();
    var var_3 = u_input.b.x;
    return Struct_2(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(arg_0.d.x, arg_0.d.x), _wgslsmith_f_op_f32(f32(-1f) * -809f)), arg_0.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1086f + var_1.d.x)))), -(~_wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, -1i, u_input.a, 0i) & vec4<i32>(arg_0.b, var_1.b, var_2.b, 0i), ~vec4<i32>(u_input.a, 1i, var_1.b, u_input.a))), Struct_1(var_1.a, -42380i, !(!select(arg_0.c, var_0.a, true)), vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(443f - -978f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.d.x, var_2.d.x)))));
}

fn func_1(arg_0: f32) -> bool {
    let var_0 = max(0i, ~15983i);
    let var_1 = abs(~var_0 << (_wgslsmith_add_u32(u_input.b.x, 1u) % 32u));
    let var_2 = func_5(Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(553f, 255f, 109f, -539f))))) + _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(global1[_wgslsmith_index_u32(0u, 1u)], vec4<f32>(939f, 194f, arg_0, 1070f), vec4<bool>(true, false, true, false)))))), func_4(global0[_wgslsmith_index_u32(9888u, 2u)], func_2(vec3<u32>(u_input.b.x, 35654u, 1u) >> (u_input.b.wwz % vec3<u32>(32u))), global0[_wgslsmith_index_u32(u_input.b.x, 2u)], global0[_wgslsmith_index_u32(~_wgslsmith_mult_u32(u_input.b.x, 4294967295u), 2u)]), select(vec2<bool>(1u >= u_input.b.x, true), vec2<bool>(true, true), !func_2(vec3<u32>(38501u, u_input.b.x, 4294967295u)).b.c), _wgslsmith_f_op_vec2_f32(sign(func_2(u_input.b.yyz).b.d))), !(false | all(vec2<bool>(true, true))));
    global2 = var_2.c.b;
    var var_3 = _wgslsmith_f_op_vec3_f32(-func_5(func_2(~u_input.b.yyw).b, var_2.c.c.x).c.a.wwx);
    return !select(true, false, var_2.c.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = countOneBits(vec3<i32>(firstLeadingBit(firstTrailingBit(~2147483647i)), u_input.a, -2147483647i));
    var var_1 = !(all(vec4<bool>(all(vec3<bool>(false, true, false)), func_1(-469f), true, all(vec3<bool>(false, true, true)))) & (~u_input.b.x == min(0u, ~u_input.b.x)));
    global1 = array<vec4<f32>, 1>();
    var var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(700f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-790f - -217f) - -1308f), -1258f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(317f, -400f)))) - vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1488f * 254f) - _wgslsmith_f_op_f32(min(-194f, 269f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1083f, -1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1182f, 145f)) - 888f), -660f)), ~func_2(~vec3<u32>(u_input.b.x, 23299u, 22147u)).b.b, vec2<bool>(true, func_2(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x), u_input.b.wzy)).b.c.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(Struct_4(613f, Struct_1(global1[_wgslsmith_index_u32(u_input.b.x, 1u)], u_input.a, vec2<bool>(true, false), vec2<f32>(1332f, -101f)), 1000f), Struct_5(vec2<bool>(true, false)))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-435f, 2126f) - vec2<f32>(-852f, 1157f))) - func_5(Struct_1(global1[_wgslsmith_index_u32(58987u, 1u)], var_0.x, vec2<bool>(false, false), vec2<f32>(142f, 1309f)), func_1(2104f)).c.d)));
    let var_3 = func_5(Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-619f, 222f))), _wgslsmith_f_op_vec2_f32(func_3(func_2(vec3<u32>(11164u, 38213u, 4294967295u)), Struct_5(vec2<bool>(false, false)))).x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1231f, 1000f))), _wgslsmith_f_op_f32(floor(var_2.a.x))), 1i, !vec2<bool>(var_2.c.x, any(vec3<bool>(var_2.c.x, var_2.c.x, var_2.c.x))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(var_2.d.x, -860f), var_2.d.x) - _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_2.d.x, 186f))))), var_2.c.x);
    var var_4 = _wgslsmith_mod_u32(_wgslsmith_sub_u32(~(u_input.b.x << (_wgslsmith_add_u32(u_input.b.x, 4294967295u) % 32u)), _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, u_input.b.x, u_input.b.x, u_input.b.x), u_input.b, u_input.b), u_input.b | vec4<u32>(1u, u_input.b.x, u_input.b.x, u_input.b.x)), vec4<u32>(u_input.b.x, _wgslsmith_add_u32(67839u, u_input.b.x), u_input.b.x, 74941u))), _wgslsmith_sub_u32(~(~abs(u_input.b.x)), u_input.b.x));
    var var_5 = vec2<u32>(u_input.b.x, reverseBits(u_input.b.x));
    var var_6 = -(~(-9429i));
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.b.x, var_3.c.a.wzw, -1606f, vec2<u32>(u_input.b.x, _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(var_5.x, 75561u), vec2<u32>(u_input.b.x, 47751u), vec2<u32>(61126u, var_5.x)), u_input.b.xx)), firstTrailingBit(_wgslsmith_mod_vec4_u32(u_input.b, u_input.b)));
}

