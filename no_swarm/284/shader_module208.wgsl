struct Struct_1 {
    a: vec2<i32>,
    b: bool,
    c: bool,
    d: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 24>;

var<private> global1: array<bool, 24> = array<bool, 24>(false, true, true, false, false, true, false, false, false, true, false, false, false, false, false, false, false, true, true, true, true, true, false, true);

var<private> global2: array<vec2<bool>, 14> = array<vec2<bool>, 14>(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true));

var<private> global3: f32;

var<private> global4: Struct_2 = Struct_2(Struct_1(vec2<i32>(-69539i, -35899i), true, false, vec3<f32>(-680f, 479f, 700f)), Struct_1(vec2<i32>(1082i, i32(-2147483648)), true, false, vec3<f32>(-566f, 454f, 252f)), Struct_1(vec2<i32>(2147483647i, -39529i), true, true, vec3<f32>(2184f, -1027f, -1543f)));

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: i32, arg_1: i32, arg_2: Struct_1) -> vec2<i32> {
    let var_0 = Struct_2(Struct_1((firstLeadingBit(global4.c.a) ^ global4.c.a) >> (vec2<u32>(1u, 1u) % vec2<u32>(32u)), -786f < global4.a.d.x, any(!(!vec3<bool>(global4.c.c, global1[_wgslsmith_index_u32(1u, 24u)], true))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.d.x, arg_2.d.x, arg_2.d.x)) + vec3<f32>(arg_2.d.x, 1185f, -458f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global4.a.d) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1229f, 422f, 104f))))), Struct_1(~u_input.a.yz, !arg_2.c, true, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(global4.b.d.x, 420f, -908f), global4.b.d)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1280f, -1721f, 403f))))), Struct_1(vec2<i32>(_wgslsmith_dot_vec3_i32(u_input.a.xxy << (vec3<u32>(19831u, 1u, 5245u) % vec3<u32>(32u)), -u_input.a.wwx), arg_2.a.x), all(vec2<bool>(global1[_wgslsmith_index_u32(1u, 24u)], !global1[_wgslsmith_index_u32(25175u, 24u)])), select(select(arg_2.a.x <= arg_0, true, global4.c.c), false, true), vec3<f32>(817f, _wgslsmith_f_op_f32(-global4.a.d.x), global4.b.d.x)));
    global4 = var_0;
    let var_1 = _wgslsmith_f_op_f32(trunc(-1298f));
    var var_2 = Struct_1(_wgslsmith_div_vec2_i32(vec2<i32>(-1i, ~min(0i, 2028i)), vec2<i32>(var_0.b.a.x, -21409i)), any(vec2<bool>(true, !(!var_0.b.c))), var_0.c.b && false, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-var_0.c.d), _wgslsmith_f_op_vec3_f32(var_0.a.d + arg_2.d), select(vec3<bool>(false, var_0.a.b, arg_2.c), vec3<bool>(false, var_0.a.c, var_0.c.c), vec3<bool>(arg_2.b, false, true)))) * _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1000f, arg_2.d.x, global4.a.d.x), global4.c.d)))))));
    let var_3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(240f, _wgslsmith_div_f32(462f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(var_1, global4.b.d.x))))), -1717f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c.d.x)))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(round(988f)), 195f, -294f, _wgslsmith_f_op_f32(var_2.d.x + 1387f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-660f, 352f, 915f, 120f), vec4<f32>(global4.c.d.x, 189f, var_2.d.x, -896f), true))) - vec4<f32>(409f, _wgslsmith_f_op_f32(max(-739f, var_1)), _wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(f32(-1f) * -173f))), global0[_wgslsmith_index_u32(1u & firstTrailingBit(~4294967295u), 24u)])));
    return abs(-(~arg_2.a));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2) -> f32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_0.d.x + arg_1.c.d.x))), _wgslsmith_f_op_f32(-768f * 195f)), arg_1.a.d.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.d.x) - _wgslsmith_f_op_f32(trunc(global4.b.d.x))))))));
    let var_1 = max(0u, 1u);
    global4 = Struct_2(Struct_1(_wgslsmith_div_vec2_i32(~_wgslsmith_mod_vec2_i32(global4.a.a, arg_1.b.a), -global4.c.a), all(vec2<bool>(true, global4.c.d.x == var_0.x)), all(select(vec3<bool>(true, true, false), select(vec3<bool>(arg_0.b, true, true), vec3<bool>(arg_0.b, global4.a.b, false), vec3<bool>(false, arg_0.b, true)), select(vec3<bool>(global1[_wgslsmith_index_u32(42046u, 24u)], arg_0.b, global1[_wgslsmith_index_u32(var_1, 24u)]), vec3<bool>(arg_1.b.b, true, true), vec3<bool>(global1[_wgslsmith_index_u32(var_1, 24u)], arg_1.b.c, false)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(global4.b.d - vec3<f32>(var_0.x, 913f, -301f)), _wgslsmith_f_op_vec3_f32(var_0 * arg_0.d), false)))), arg_1.c, Struct_1(_wgslsmith_mod_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(30956i, 59081i), vec2<i32>(-2147483647i, arg_0.a.x)), countOneBits(-arg_1.b.a)), true, !all(global0[_wgslsmith_index_u32(max(0u, 24260u), 24u)]), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-112f, global4.c.d.x, arg_1.a.d.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global4.c.d.x, 802f, 1363f) - arg_1.a.d)), global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(1u, firstTrailingBit(4294967295u)), 24u)]))));
    global3 = -447f;
    let var_2 = 1i;
    return -1154f;
}

fn func_2(arg_0: Struct_2, arg_1: u32, arg_2: f32, arg_3: Struct_1) -> u32 {
    global1 = array<bool, 24>();
    let var_0 = select(_wgslsmith_f_op_f32(f32(-1f) * -919f) < _wgslsmith_f_op_f32(func_4(Struct_1(func_3(arg_0.a.a.x, arg_0.a.a.x, global4.a), any(global0[_wgslsmith_index_u32(arg_1, 24u)]), false, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1156f, arg_3.d.x, global4.b.d.x))), arg_0)), !(true == !(!global4.b.c)), !(!(!(arg_3.d.x == -1824f))));
    let var_1 = Struct_2(arg_0.a, arg_3, Struct_1(min(-arg_3.a, arg_0.c.a), !var_0, (i32(-1i) * -u_input.a.x) < _wgslsmith_dot_vec3_i32(~u_input.a.xzx, max(u_input.a.zzx, u_input.a.xwx)), vec3<f32>(-847f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1464f + arg_3.d.x))), -231f)));
    let var_2 = -_wgslsmith_div_i32(arg_3.a.x, -(-11094i >> (~arg_1 % 32u)));
    let var_3 = arg_1;
    return ~_wgslsmith_div_u32(~(~(~1u)), 1u);
}

fn func_5(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: i32, arg_3: vec2<f32>) -> Struct_1 {
    let var_0 = Struct_1(vec2<i32>(-1i) * -(vec2<i32>(arg_1.a.x, arg_2) << (~vec2<u32>(arg_0.x, arg_0.x) % vec2<u32>(32u))), all(select(select(vec3<bool>(global4.a.c, global4.a.c, arg_1.c), vec3<bool>(global1[_wgslsmith_index_u32(50103u, 24u)], global4.c.b, false), vec3<bool>(true, arg_1.b, false)), vec3<bool>(true, true, true), true)) & (true || global4.c.c), all(select(!vec3<bool>(false, global1[_wgslsmith_index_u32(4294967295u, 24u)], true), !select(vec3<bool>(true, false, arg_1.b), vec3<bool>(false, global1[_wgslsmith_index_u32(arg_0.x, 24u)], true), false), select(vec3<bool>(arg_1.c, global4.c.b, false), vec3<bool>(true, false, false), vec3<bool>(true, arg_1.b, false)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global4.a.d + vec3<f32>(arg_1.d.x, arg_3.x, -120f)) * _wgslsmith_f_op_vec3_f32(ceil(arg_1.d)))))));
    var var_1 = vec4<bool>(false, true, all(select(!(!global0[_wgslsmith_index_u32(arg_0.x, 24u)]), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(23818u, 0u), 24u)], select(global0[_wgslsmith_index_u32(arg_0.x, 24u)], !vec4<bool>(false, global1[_wgslsmith_index_u32(arg_0.x, 24u)], true, true), all(global0[_wgslsmith_index_u32(arg_0.x, 24u)])))), true);
    global1 = array<bool, 24>();
    var var_2 = arg_1.b;
    global0 = array<vec4<bool>, 24>();
    return arg_1;
}

fn func_1(arg_0: bool) -> Struct_1 {
    var var_0 = vec4<bool>(true, any(!global0[_wgslsmith_index_u32(select(4294967295u, 19224u >> (1u % 32u), select(arg_0, global4.a.c, global4.c.b)), 24u)]), !(!global4.a.b), false);
    global1 = array<bool, 24>();
    let var_1 = 1u;
    let var_2 = vec2<bool>(!all(!(!vec3<bool>(false, true, global4.a.b))), var_0.x);
    var var_3 = vec2<i32>(_wgslsmith_add_i32(45139i, abs(64431i)), -29704i);
    return func_5(~(vec4<u32>(var_1, 1u, 83717u, 1u) ^ max(vec4<u32>(0u, var_1, 1u, var_1), vec4<u32>(4294967295u, var_1, var_1, 4294967295u))) ^ reverseBits(vec4<u32>(func_2(Struct_2(Struct_1(global4.c.a, false, var_0.x, global4.a.d), global4.a, global4.c), 26836u, global4.a.d.x, global4.a), ~var_1, ~6605u, var_1)), global4.c, ~0i, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1160f, global4.a.d.x) - _wgslsmith_f_op_f32(-global4.b.d.x)) - 172f), 218f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(!global4.c.b);
    var var_1 = Struct_1(vec2<i32>(_wgslsmith_div_i32(-1i, 41780i) & global4.c.a.x, ~27407i), !func_1(global1[_wgslsmith_index_u32(~45214u, 24u)]).b, false, func_5(min(~_wgslsmith_div_vec4_u32(vec4<u32>(26445u, 47538u, 25914u, 1u), vec4<u32>(4294967295u, 3967u, 1u, 74332u)), abs(select(vec4<u32>(0u, 1u, 0u, 3253u), vec4<u32>(4294967295u, 9564u, 24826u, 0u), global1[_wgslsmith_index_u32(0u, 24u)]))), Struct_1((var_0.a & global4.c.a) | var_0.a, true, !(!global4.c.b), _wgslsmith_f_op_vec3_f32(step(var_0.d, vec3<f32>(1000f, global4.a.d.x, -1000f)))), select(_wgslsmith_add_i32(1i, global4.b.a.x ^ 0i), _wgslsmith_dot_vec4_i32(~vec4<i32>(global4.a.a.x, global4.b.a.x, u_input.a.x, var_0.a.x), -vec4<i32>(-4133i, u_input.a.x, -28012i, var_0.a.x)), global1[_wgslsmith_index_u32(~_wgslsmith_mod_u32(1u, 1u), 24u)]), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global4.a.d.x, var_0.d.x) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1078f, 439f))))).d);
    global0 = array<vec4<bool>, 24>();
    global3 = 1290f;
    let x = u_input.a;
    s_output = StorageBuffer(~(~abs(select(vec4<u32>(9740u, 1u, 1u, 1u), vec4<u32>(66122u, 48203u, 1u, 47130u), global0[_wgslsmith_index_u32(0u, 24u)]))), -reverseBits(_wgslsmith_clamp_vec4_i32(~vec4<i32>(-34746i, 46168i, global4.c.a.x, var_1.a.x), -u_input.a, _wgslsmith_mult_vec4_i32(u_input.a, vec4<i32>(var_0.a.x, var_0.a.x, u_input.a.x, var_1.a.x)))), _wgslsmith_f_op_f32(f32(-1f) * -1578f));
}

