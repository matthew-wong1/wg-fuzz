struct Struct_1 {
    a: bool,
    b: f32,
    c: vec2<bool>,
    d: vec3<f32>,
    e: f32,
}

struct Struct_2 {
    a: bool,
    b: u32,
    c: bool,
    d: Struct_1,
    e: vec4<bool>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
    d: vec2<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<f32, 29>;

var<private> global2: bool;

var<private> global3: Struct_2 = Struct_2(false, 2641u, false, Struct_1(false, 1000f, vec2<bool>(false, false), vec3<f32>(1040f, -1704f, 1478f), -855f), vec4<bool>(true, false, false, true));

var<private> global4: array<Struct_4, 2> = array<Struct_4, 2>(Struct_4(Struct_1(false, -526f, vec2<bool>(false, false), vec3<f32>(1000f, 623f, 1315f), -2417f), vec3<u32>(18544u, 20066u, 49037u)), Struct_4(Struct_1(false, -104f, vec2<bool>(false, true), vec3<f32>(-902f, 1328f, -176f), 177f), vec3<u32>(4294967295u, 20102u, 1u)));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: vec2<i32>) -> u32 {
    global3 = Struct_2(arg_1.c.x, 0u | global0.b, global0.a, Struct_1(global0.e.x, -2000f, !vec2<bool>(arg_1.c.x && true, !arg_1.c.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(arg_0.xxw, vec3<f32>(global1[_wgslsmith_index_u32(0u, 29u)], 220f, 542f))) * _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global0.d.d.x, global0.d.b, global1[_wgslsmith_index_u32(u_input.c, 29u)]))))), arg_0.x), global0.e);
    global1 = array<f32, 29>();
    var var_0 = !(!vec3<bool>(global0.a, global3.d.c.x & !global3.e.x, u_input.b <= firstTrailingBit(-2147483647i)));
    let var_1 = ~vec4<i32>(countOneBits(arg_2.x), -1i, max(-21966i, countOneBits(-18147i) << (~global3.b % 32u)), u_input.b);
    var_0 = vec3<bool>(true, global0.c, !(reverseBits(var_1.x) >= ~(~2147483647i)));
    return 41973u << (_wgslsmith_mult_u32(~(~(~0u)), _wgslsmith_sub_u32(~reverseBits(u_input.c), u_input.c & _wgslsmith_dot_vec3_u32(vec3<u32>(global0.b, global3.b, global0.b), vec3<u32>(u_input.c, u_input.c, 100473u)))) % 32u);
}

fn func_4(arg_0: vec4<u32>) -> bool {
    let var_0 = reverseBits(~min(firstTrailingBit(~arg_0.yz), arg_0.wx));
    global3 = Struct_2(true, 37802u, any(vec4<bool>(global3.a, !(51992u <= arg_0.x), 0u <= _wgslsmith_div_u32(arg_0.x, 3048u), _wgslsmith_div_f32(-460f, global0.d.e) >= _wgslsmith_f_op_f32(round(139f)))), global0.d, !(!select(select(global0.e, vec4<bool>(false, false, false, global3.d.a), vec4<bool>(global3.c, global0.d.a, global3.d.c.x, true)), select(vec4<bool>(true, global0.e.x, false, global3.d.a), global0.e, vec4<bool>(false, false, global3.a, global0.d.c.x)), global3.e)));
    global1 = array<f32, 29>();
    var var_1 = select(vec4<bool>(false, (true && global3.e.x) && false, false, true), select(!(!(!global3.e)), select(global3.e, global3.e, all(global3.e)), all(global0.e)), vec4<bool>(any(select(vec2<bool>(false, global0.a), !global3.d.c, vec2<bool>(global3.e.x, global3.e.x))), false, any(vec4<bool>(all(global3.e.yyy), true, true, !global0.d.a)), all(global0.d.c)));
    global4 = array<Struct_4, 2>();
    return true;
}

fn func_2(arg_0: Struct_3) -> Struct_2 {
    var var_0 = vec4<bool>(true, all(arg_0.c.c), all(vec3<bool>(select(any(vec3<bool>(false, false, false)), global0.a, arg_0.a.x), false, _wgslsmith_mod_u32(u_input.c, 0u) != global3.b)), true);
    var var_1 = u_input.a.zyz;
    global1 = array<f32, 29>();
    var var_2 = abs(var_1.x);
    var var_3 = !(!func_4(vec4<u32>(func_3(vec4<f32>(1068f, global3.d.e, global1[_wgslsmith_index_u32(global0.b, 29u)], 1086f), Struct_1(false, -2269f, global3.e.yy, global0.d.d, arg_0.b.e), u_input.a.xz), global0.b, ~u_input.c, min(17079u, 753u))));
    return Struct_2(false, ~117947u, func_4(countOneBits(vec4<u32>(u_input.c, global3.b, 13236u, global0.b)) << (vec4<u32>(abs(24957u), firstTrailingBit(global0.b), _wgslsmith_add_u32(global0.b, 20790u), ~u_input.c) % vec4<u32>(32u))), global0.d, vec4<bool>(true, false, !any(!vec2<bool>(true, arg_0.c.a)), true));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_4) -> bool {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1103f * arg_0.d.d.x), 953f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a.e) - -538f)))), _wgslsmith_div_f32(arg_1.a.b, -429f), global3.d.b);
    global3 = func_2(Struct_3(!select(!vec3<bool>(arg_1.a.a, arg_1.a.c.x, arg_0.a), arg_0.e.yww, select(global0.d.c.x, true, false)), Struct_1(global0.e.x & func_2(Struct_3(global0.e.xzx, Struct_1(true, arg_0.d.b, vec2<bool>(false, false), vec3<f32>(234f, global0.d.b, arg_1.a.d.x), global3.d.b), global0.d)).e.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1340f)) * _wgslsmith_f_op_f32(floor(arg_0.d.d.x))), select(arg_0.e.zy, func_2(Struct_3(global3.e.zzx, Struct_1(global0.c, global3.d.e, global0.e.zy, vec3<f32>(arg_0.d.b, -175f, 918f), 480f), Struct_1(arg_1.a.a, 1085f, global3.e.yz, arg_0.d.d, global0.d.b))).d.c, arg_0.e.xw), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(2399f, -1225f, -981f)) + vec3<f32>(global0.d.b, global1[_wgslsmith_index_u32(arg_0.b, 29u)], global0.d.d.x)), _wgslsmith_f_op_f32(-global3.d.d.x)), func_2(Struct_3(vec3<bool>(false, true, true), Struct_1(arg_0.c, arg_0.d.e, vec2<bool>(true, arg_1.a.a), vec3<f32>(389f, global0.d.d.x, global1[_wgslsmith_index_u32(4294967295u, 29u)]), -1724f), func_2(Struct_3(vec3<bool>(false, global3.c, arg_1.a.a), Struct_1(true, -1326f, arg_1.a.c, vec3<f32>(289f, global3.d.e, arg_1.a.b), 878f), Struct_1(arg_1.a.a, global0.d.e, vec2<bool>(arg_1.a.a, false), vec3<f32>(global0.d.e, -894f, global3.d.b), 1000f))).d)).d));
    global2 = select(false, true, true);
    var var_1 = _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(min(arg_0.d.e, global3.d.e)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(846f, 1259f)))), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(global3.b, 29u)] + -230f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(arg_1.b.x, 29u)]), global3.d.b, false)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(728f, global1[_wgslsmith_index_u32(1u, 29u)], 1425f, 1754f))) + vec4<f32>(var_0.x, var_0.x, var_0.x, -765f))), vec4<f32>(-417f, _wgslsmith_f_op_f32(func_2(Struct_3(global3.e.zzy, Struct_1(global0.c, global3.d.d.x, global0.d.c, arg_1.a.d, arg_0.d.e), arg_0.d)).d.b - _wgslsmith_f_op_f32(f32(-1f) * -273f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-1254f)), _wgslsmith_div_f32(1243f, global3.d.d.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-821f)) - _wgslsmith_f_op_f32(max(990f, 958f)))), true))));
    var var_2 = -1004f;
    return false;
}

fn func_1(arg_0: vec4<f32>) -> Struct_1 {
    let var_0 = Struct_1(all(vec3<bool>(!global0.a, global3.c, func_5(func_2(Struct_3(vec3<bool>(global3.c, false, false), Struct_1(global0.d.a, global0.d.b, global3.d.c, global3.d.d, -1509f), global3.d)), Struct_4(global0.d, vec3<u32>(global0.b, global0.b, 39462u))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1044f + _wgslsmith_f_op_f32(1361f - 1000f))))), vec2<bool>(global0.d.a | global3.e.x, any(select(global3.e, vec4<bool>(global3.c, true, global3.c, false), global3.c)) & (_wgslsmith_mod_i32(u_input.d.x, u_input.a.x) != -13070i)), global3.d.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.d.e)) - _wgslsmith_f_op_f32(-349f - global3.d.e)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.d.d.x) + -102f)));
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1418f);
    let var_2 = _wgslsmith_mult_vec2_i32(vec2<i32>(1i | (_wgslsmith_add_i32(u_input.a.x, -1i) ^ 2147483647i), abs(max(~(-2147483647i), ~u_input.b))), abs(u_input.d));
    global2 = var_0.c.x == !(true | !any(global3.d.c));
    var var_3 = true;
    return var_0;
}

fn func_6(arg_0: vec2<f32>, arg_1: Struct_3, arg_2: Struct_1, arg_3: i32) -> Struct_1 {
    let var_0 = _wgslsmith_div_u32(reverseBits(firstLeadingBit(u_input.c)) & global3.b, ~(~(841u | _wgslsmith_mult_u32(global3.b, 100216u))));
    return global0.d;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_2(global3.e.x, ~abs(4294967295u), true, func_6(_wgslsmith_f_op_vec2_f32(-vec2<f32>(327f, _wgslsmith_f_op_f32(-global0.d.e))), Struct_3(select(select(vec3<bool>(true, global0.d.c.x, global3.e.x), vec3<bool>(false, global3.a, false), global0.e.zzy), !global3.e.xxw, !global0.a), func_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.d.b, global3.d.d.x, 104f, global0.d.b))), global3.d), func_1(vec4<f32>(_wgslsmith_f_op_f32(-global3.d.e), _wgslsmith_f_op_f32(-1687f + global1[_wgslsmith_index_u32(7019u, 29u)]), _wgslsmith_f_op_f32(step(global1[_wgslsmith_index_u32(global3.b, 29u)], global0.d.b)), global1[_wgslsmith_index_u32(~1u, 29u)])), -((2147483647i >> (u_input.c % 32u)) >> (~64408u % 32u))), global3.e);
    var var_0 = global0.e.wzx;
    global1 = array<f32, 29>();
    global1 = array<f32, 29>();
    var var_1 = -195f;
    let x = u_input.a;
    s_output = StorageBuffer(-(6394i & _wgslsmith_add_i32(u_input.a.x, u_input.e.x)));
}

