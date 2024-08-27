struct Struct_1 {
    a: f32,
    b: u32,
    c: bool,
    d: i32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec4<i32>,
}

struct Struct_3 {
    a: u32,
    b: vec2<u32>,
    c: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 11>;

var<private> global1: Struct_2 = Struct_2(vec4<u32>(12006u, 83080u, 46463u, 4294967295u), vec4<i32>(38056i, -12525i, 10500i, 2147483647i));

var<private> global2: f32 = 1647f;

var<private> global3: vec2<i32>;

var<private> global4: Struct_2 = Struct_2(vec4<u32>(4294967295u, 29654u, 6261u, 1u), vec4<i32>(23237i, 0i, 35852i, i32(-2147483648)));

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: i32) -> vec3<i32> {
    var var_0 = -894f;
    var var_1 = 1u;
    var_1 = global4.a.x;
    let var_2 = Struct_1(global0[_wgslsmith_index_u32(~firstTrailingBit(~57594u), 11u)], 11858u, true, global4.b.x | arg_0);
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.a, _wgslsmith_div_f32(global0[_wgslsmith_index_u32(global4.a.x, 11u)], -179f))));
    return (-abs(vec3<i32>(2147483647i, global3.x, 100521i)) & (global4.b.yzy << (~vec3<u32>(global4.a.x, var_2.b, global4.a.x) % vec3<u32>(32u)))) >> (vec3<u32>(global1.a.x & _wgslsmith_dot_vec2_u32(~vec2<u32>(43384u, 8959u), select(vec2<u32>(global1.a.x, var_2.b), vec2<u32>(4294967295u, global4.a.x), false)), var_2.b, ~(~(~4294967295u))) % vec3<u32>(32u));
}

fn func_2() -> f32 {
    var var_0 = global1.b.yww | func_3(~u_input.b);
    global4 = Struct_2(~vec4<u32>((u_input.a.x >> (global4.a.x % 32u)) & 9750u, global1.a.x, global1.a.x, ~(~global1.a.x)), _wgslsmith_add_vec4_i32(-(vec4<i32>(global1.b.x, u_input.b, var_0.x, var_0.x) & (global1.b >> (vec4<u32>(u_input.c.x, global1.a.x, 4294967295u, 0u) % vec4<u32>(32u)))), ~max(_wgslsmith_add_vec4_i32(global4.b, vec4<i32>(global1.b.x, -1i, global4.b.x, 0i)), select(global4.b, global1.b, false))));
    global2 = global0[_wgslsmith_index_u32(~(min(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 25711u, u_input.a.x, u_input.c.x), u_input.a, vec4<u32>(global1.a.x, 65731u, 4294967295u, global1.a.x)), ~vec4<u32>(0u, global4.a.x, 4294967295u, global1.a.x)), u_input.a.x) & global1.a.x), 11u)];
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-550f)), global0[_wgslsmith_index_u32(4294967295u | ~select(_wgslsmith_dot_vec4_u32(vec4<u32>(global4.a.x, 63696u, 57286u, 42094u), u_input.a), _wgslsmith_dot_vec4_u32(vec4<u32>(global4.a.x, 34227u, u_input.c.x, 8782u), vec4<u32>(4294967295u, 1u, global1.a.x, u_input.a.x)), any(vec3<bool>(true, false, false))), 11u)]);
    let var_2 = Struct_3(~4294967295u, global4.a.yz >> (~vec2<u32>(_wgslsmith_mod_u32(103558u, u_input.a.x), _wgslsmith_div_u32(u_input.a.x, u_input.c.x)) % vec2<u32>(32u)), all(vec4<bool>(true, true, true, true)));
    return _wgslsmith_f_op_f32(-325f - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(global1.a.x ^ _wgslsmith_dot_vec3_u32(global1.a.zwx, global4.a.zwy), 11u)])))));
}

fn func_4(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: vec4<f32>, arg_3: Struct_1) -> Struct_2 {
    let var_0 = firstTrailingBit(firstLeadingBit(select(~vec4<u32>(35184u, 41692u, 38095u, 6059u), vec4<u32>(global4.a.x, _wgslsmith_mod_u32(global4.a.x, arg_3.b), _wgslsmith_div_u32(34304u, global4.a.x), 4294967295u), select(select(vec4<bool>(true, true, arg_1.x, true), vec4<bool>(arg_3.c, arg_1.x, true, true), vec4<bool>(arg_3.c, arg_1.x, arg_1.x, arg_3.c)), select(vec4<bool>(arg_1.x, true, false, arg_3.c), vec4<bool>(false, arg_3.c, arg_3.c, arg_3.c), vec4<bool>(arg_3.c, true, arg_1.x, true)), any(vec3<bool>(false, false, arg_1.x))))));
    let var_1 = arg_1.x;
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(var_0.x << (0u % 32u), 11u)]) + _wgslsmith_f_op_f32(-arg_2.x))));
    var var_2 = arg_0;
    var var_3 = select(49631u, 4294967295u, true);
    return Struct_2(vec4<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(var_0.x, 26659u), global4.a.xw), ~vec2<u32>(4294967295u, 28014u)), abs(max(global4.a.x, global4.a.x)), ~(~global1.a.x), _wgslsmith_sub_u32(0u, _wgslsmith_mod_u32(global1.a.x, 4294967295u))) >> (global4.a % vec4<u32>(32u)), ~(max(vec4<i32>(42175i, arg_0.b.x, global3.x, -32966i), global1.b) & global4.b) >> (~vec4<u32>(25690u, ~var_0.x, var_0.x, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 33546u, var_2.a.x), vec3<u32>(var_2.a.x, var_0.x, global1.a.x))) % vec4<u32>(32u)));
}

fn func_1() -> Struct_1 {
    global4 = func_4(Struct_2(~_wgslsmith_add_vec4_u32(global4.a, global1.a), countOneBits(global4.b)), !vec2<bool>(all(vec4<bool>(true, true, true, true)), false), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2())), global0[_wgslsmith_index_u32(global1.a.x, 11u)], _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-592f, global0[_wgslsmith_index_u32(u_input.c.x ^ 54122u, 11u)]), _wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(global4.a.x, global4.a.x), 11u)], -221f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.c.x, 11u)] + 383f)) * global0[_wgslsmith_index_u32(~16690u, 11u)])), Struct_1(-184f, 21099u, global1.a.x == ~1u, -u_input.b));
    let var_0 = vec3<i32>(func_4(Struct_2(vec4<u32>(func_4(Struct_2(global4.a, vec4<i32>(52753i, global3.x, u_input.b, -29920i)), vec2<bool>(true, true), vec4<f32>(global0[_wgslsmith_index_u32(30135u, 11u)], 422f, -1561f, -1000f), Struct_1(1863f, global1.a.x, true, 1i)).a.x, 4294967295u, u_input.c.x >> (global4.a.x % 32u), 1u), vec4<i32>(global3.x, global1.b.x, global1.b.x, -1i)), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), true), u_input.c.x >= reverseBits(1u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(269f, 1000f, global0[_wgslsmith_index_u32(60541u, 11u)], -129f))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-512f, global0[_wgslsmith_index_u32(80866u, 11u)], 2258f, global0[_wgslsmith_index_u32(1u, 11u)]), vec4<f32>(global0[_wgslsmith_index_u32(4294967295u, 11u)], 1000f, -504f, global0[_wgslsmith_index_u32(global4.a.x, 11u)]))))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(9252u, 11u)], global0[_wgslsmith_index_u32(global1.a.x, 11u)], global0[_wgslsmith_index_u32(global4.a.x, 11u)], -1416f))), Struct_1(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.a.x, min(global4.a.x, 0u)), 11u)], 1u, all(select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, true), true)), abs(u_input.b))).b.x, -1i, global1.b.x);
    global2 = global0[_wgslsmith_index_u32(1u, 11u)];
    var var_1 = any(select(select(vec3<bool>(true, true, true), vec3<bool>(all(vec2<bool>(false, false)), true, global0[_wgslsmith_index_u32(global4.a.x, 11u)] < global0[_wgslsmith_index_u32(8612u, 11u)]), !any(vec4<bool>(false, false, false, true))), select(vec3<bool>(true, true, true), !select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, false)), select(true, false, true)), !(var_0.x < -58846i) & true));
    var var_2 = vec4<i32>(global3.x, 1i, _wgslsmith_sub_i32(~_wgslsmith_clamp_i32(1i, global4.b.x, _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, u_input.b), vec2<i32>(u_input.b, 3952i))), 1i), -2147483647i);
    return Struct_1(global0[_wgslsmith_index_u32(reverseBits(_wgslsmith_sub_u32(39616u, global1.a.x)), 11u)], 1u, !all(vec3<bool>(true, true, true)), 2147483647i);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<f32>) -> Struct_1 {
    var var_0 = !(!(!(!select(vec4<bool>(true, false, false, arg_1.c), vec4<bool>(arg_1.c, arg_0.c, false, arg_0.c), vec4<bool>(false, true, true, arg_0.c)))));
    global2 = -1261f;
    var var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.x) * arg_0.a), select(1u, _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(1u, global4.a.x), global4.a.xy), vec2<u32>(_wgslsmith_mod_u32(0u, arg_1.b), _wgslsmith_dot_vec3_u32(global4.a.wxz, vec3<u32>(arg_1.b, u_input.c.x, global1.a.x)))), arg_0.c), arg_0.c, abs(func_4(func_4(func_4(Struct_2(vec4<u32>(53709u, 4294967295u, 1367u, arg_0.b), global4.b), var_0.ww, vec4<f32>(arg_0.a, arg_2.x, -697f, -377f), arg_1), vec2<bool>(var_0.x, arg_0.c), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, arg_0.a, arg_0.a, -618f)), arg_1), var_0.wx, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(525f, 809f, -1220f, 1000f) - vec4<f32>(599f, arg_2.x, 1548f, global0[_wgslsmith_index_u32(57600u, 11u)]))), arg_0).b.x));
    let var_2 = arg_1.a;
    let var_3 = (_wgslsmith_dot_vec2_u32(vec2<u32>(~var_1.b, global4.a.x), vec2<u32>(~0u, _wgslsmith_clamp_u32(17010u, u_input.c.x, 55228u))) | ~1u) << (1u % 32u);
    return arg_0;
}

fn func_6(arg_0: Struct_1) -> vec4<i32> {
    var var_0 = func_5(arg_0, func_1(), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(4294967295u, 11u)], global0[_wgslsmith_index_u32(0u, 11u)], -877f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(124f, global0[_wgslsmith_index_u32(global1.a.x, 11u)], -1176f) - vec3<f32>(arg_0.a, global0[_wgslsmith_index_u32(arg_0.b, 11u)], global0[_wgslsmith_index_u32(4294967295u, 11u)]))))));
    var var_1 = Struct_3(4294967295u, ~vec2<u32>(32324u, _wgslsmith_mod_u32(50269u, 1u)), false);
    var var_2 = select(reverseBits(vec2<i32>(u_input.b, global4.b.x)), global1.b.xx, select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(var_1.c, !var_0.c), vec2<bool>(var_0.c != true, var_1.c)), func_1().c));
    var_2 = ~_wgslsmith_div_vec2_i32(vec2<i32>(_wgslsmith_mult_i32(global3.x, arg_0.d), -reverseBits(0i)), _wgslsmith_add_vec2_i32(func_3(-47287i).zz, firstLeadingBit(vec2<i32>(u_input.b, global1.b.x))));
    var var_3 = 1u;
    return max(vec4<i32>(-1i, ~_wgslsmith_dot_vec3_i32(-global4.b.zzy, ~vec3<i32>(global4.b.x, 48536i, global3.x)), -reverseBits(20501i), select(arg_0.d, -func_1().d, var_1.c)), min(~(-global4.b), global4.b));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = Struct_2(global4.a, func_6(func_5(func_1(), func_1(), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(global1.a.x, 11u)], global0[_wgslsmith_index_u32(global1.a.x, 11u)], global0[_wgslsmith_index_u32(u_input.a.x, 11u)]))))));
    global2 = _wgslsmith_f_op_f32(round(434f));
    global3 = -global4.b.xx;
    global1 = Struct_2(reverseBits(global1.a) >> (global1.a % vec4<u32>(32u)), _wgslsmith_mod_vec4_i32(global4.b, global1.b));
    global2 = global0[_wgslsmith_index_u32(7759u, 11u)];
    let x = u_input.a;
    s_output = StorageBuffer(global0[_wgslsmith_index_u32(1u << (reverseBits(func_5(Struct_1(-1456f, u_input.c.x, true, -1i), func_1(), _wgslsmith_f_op_vec3_f32(vec3<f32>(-872f, 229f, global0[_wgslsmith_index_u32(52587u, 11u)]) * vec3<f32>(-422f, global0[_wgslsmith_index_u32(1u, 11u)], global0[_wgslsmith_index_u32(8972u, 11u)]))).b) % 32u), 11u)]);
}

