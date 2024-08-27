struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: u32,
    d: vec3<f32>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_2,
    c: vec2<bool>,
    d: vec3<bool>,
    e: vec4<bool>,
}

struct Struct_4 {
    a: i32,
    b: vec4<i32>,
    c: vec2<u32>,
}

struct Struct_5 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
    d: vec3<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<f32>,
    c: vec4<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 9> = array<vec4<u32>, 9>(vec4<u32>(4294967295u, 7784u, 4294967295u, 30139u), vec4<u32>(3929u, 4294967295u, 51007u, 4294967295u), vec4<u32>(75257u, 0u, 85365u, 25089u), vec4<u32>(4294967295u, 5998u, 35910u, 22816u), vec4<u32>(55171u, 0u, 1u, 23620u), vec4<u32>(4294967295u, 1568u, 46549u, 1u), vec4<u32>(1u, 43011u, 10018u, 19617u), vec4<u32>(3133u, 13883u, 50099u, 1u), vec4<u32>(52170u, 26434u, 0u, 3716u));

var<private> global1: vec2<f32>;

var<private> global2: bool;

var<private> global3: array<f32, 4> = array<f32, 4>(-978f, 766f, -1000f, 435f);

var<private> global4: vec4<bool> = vec4<bool>(true, false, true, false);

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: i32, arg_1: Struct_2) -> vec2<bool> {
    let var_0 = Struct_5(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_1.d.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -251f)), 660f, _wgslsmith_f_op_f32(-arg_1.d.x)))));
    global2 = global4.x;
    global2 = false;
    global2 = true;
    let var_1 = _wgslsmith_mod_u32(38412u, ~abs(_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(u_input.e.yxz, vec3<u32>(4294967295u, 4294967295u, 63837u), vec3<u32>(arg_1.c, 50175u, 1u)), u_input.e.yww)));
    return select(vec2<bool>(all(select(vec2<bool>(true, true), !global4.zz, true)), arg_1.b.a == arg_1.d.x), select(vec2<bool>(true, true), vec2<bool>(!all(global4.xw), false), global4.zy), select(select(!(!vec2<bool>(global4.x, global4.x)), select(vec2<bool>(global4.x, global4.x), select(vec2<bool>(global4.x, global4.x), vec2<bool>(false, false), vec2<bool>(false, false)), global4.ww), all(vec4<bool>(false, true, global4.x, false))), select(select(!global4.wx, !vec2<bool>(global4.x, true), false), vec2<bool>(true, true), !global4.xy), global4.wx));
}

fn func_2(arg_0: i32, arg_1: u32) -> f32 {
    let var_0 = all(select(func_3(u_input.b.x, Struct_2(_wgslsmith_f_op_f32(ceil(-1000f)), Struct_1(223f), 4294967295u, _wgslsmith_f_op_vec3_f32(vec3<f32>(global3[_wgslsmith_index_u32(u_input.c, 4u)], global1.x, -2368f) + vec3<f32>(global1.x, global1.x, global1.x)))), global4.xx, true));
    var var_1 = !select(global4.wyy, !select(global4.yyy, vec3<bool>(true, false, true), var_0 | global4.x), select(!all(vec3<bool>(global4.x, global4.x, var_0)), false, any(select(vec2<bool>(var_0, var_0), global4.ww, vec2<bool>(var_0, var_0)))));
    global1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(850f + 110f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x - 1502f)))), -506f);
    var var_2 = Struct_3(u_input.e.zxz >> (_wgslsmith_add_vec3_u32(vec3<u32>(~arg_1, 19875u, ~1u), countOneBits(vec3<u32>(43951u, arg_1, arg_1))) % vec3<u32>(32u)), Struct_2(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.e.zwz, ~u_input.e.yzz | (u_input.e.yww >> (vec3<u32>(arg_1, 8517u, 1u) % vec3<u32>(32u)))), 4u)], Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(4294967295u, 4u)])))), _wgslsmith_dot_vec4_u32(min(~global0[_wgslsmith_index_u32(4294967295u, 9u)], _wgslsmith_sub_vec4_u32(vec4<u32>(11688u, 1u, u_input.c, 161757u), u_input.e)), vec4<u32>(45437u, 4294967295u, _wgslsmith_add_u32(u_input.c, 1u), 19552u)), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) + _wgslsmith_f_op_f32(106f * 1081f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-632f + global1.x), _wgslsmith_f_op_f32(trunc(global1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -150f)))), select(!select(select(global4.yy, var_1.xy, var_1.x), select(vec2<bool>(var_0, true), vec2<bool>(var_1.x, true), false), var_1.xz), !(!vec2<bool>(var_0, true)), !(!any(var_1.xy))), global4.xxx, vec4<bool>(true, global4.x, all(global4.yyz), -107f >= global3[_wgslsmith_index_u32(reverseBits(arg_1), 4u)]));
    var var_3 = true;
    return -928f;
}

fn func_1() -> i32 {
    let var_0 = ~abs(_wgslsmith_clamp_u32(~24648u << (~4294967295u % 32u), reverseBits(min(0u, 40337u)), ~_wgslsmith_div_u32(u_input.c, 0u)));
    let var_1 = Struct_1(945f);
    let var_2 = global4.x;
    global1 = vec2<f32>(_wgslsmith_div_f32(global3[_wgslsmith_index_u32(abs(u_input.c) ^ (u_input.e.x << (firstLeadingBit(var_0) % 32u)), 4u)], global3[_wgslsmith_index_u32(~1u, 4u)]), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(_wgslsmith_mult_i32(-2147483647i, u_input.b.x) & -2755i, u_input.c)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -279f) * 217f)));
    global0 = array<vec4<u32>, 9>();
    return ~(-8390i);
}

fn func_4(arg_0: i32, arg_1: vec4<i32>) -> vec3<f32> {
    global0 = array<vec4<u32>, 9>();
    let var_0 = Struct_3(vec3<u32>(1u, max(31852u, _wgslsmith_dot_vec3_u32(~u_input.e.zxx, vec3<u32>(u_input.e.x, 78110u, u_input.e.x) << (u_input.e.wxw % vec3<u32>(32u)))), ~1u), Struct_2(_wgslsmith_f_op_f32(-global1.x), Struct_1(_wgslsmith_f_op_f32(631f * -232f)), u_input.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, global3[_wgslsmith_index_u32(u_input.a, 4u)], global1.x) - _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1123f, -1109f, global3[_wgslsmith_index_u32(10434u, 4u)])))))), vec2<bool>(select(!(!global4.x), global4.x, true | all(global4.yy)), select(!global4.x, global4.x, global4.x)), select(!(!(!global4.wyw)), global4.wxz, true), select(!select(select(vec4<bool>(false, false, true, global4.x), vec4<bool>(false, global4.x, global4.x, false), global4.x), select(vec4<bool>(false, true, true, global4.x), vec4<bool>(false, false, global4.x, global4.x), vec4<bool>(true, false, false, global4.x)), select(vec4<bool>(global4.x, true, true, global4.x), vec4<bool>(false, false, false, true), true)), !(!select(vec4<bool>(global4.x, global4.x, false, global4.x), vec4<bool>(global4.x, global4.x, true, global4.x), global4.x)), false == (true || (true == global4.x))));
    var var_1 = Struct_3(vec3<u32>(1u << (_wgslsmith_dot_vec3_u32(vec3<u32>(81086u, 13681u, var_0.a.x), _wgslsmith_clamp_vec3_u32(vec3<u32>(43959u, u_input.e.x, 0u), var_0.a, u_input.e.zxy)) % 32u), reverseBits(~(var_0.b.c ^ u_input.a)), 27803u), var_0.b, select(vec2<bool>(true, true), func_3(u_input.d.x, var_0.b), (1i == reverseBits(arg_1.x)) && func_3(~(-2147483647i), var_0.b).x), vec3<bool>(!select(all(var_0.e), false != global4.x, all(var_0.e)), true, all(select(vec3<bool>(var_0.c.x, var_0.c.x, true), select(global4.zyw, var_0.d, vec3<bool>(global4.x, true, false)), global4.wxy))), select(var_0.e, var_0.e, ~(var_0.a.x & var_0.b.c) >= max(u_input.a, 1u)));
    let var_2 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_1.b.d.x, -1000f, var_0.b.d.x))), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(1000f, 430f)), global1.x)), -532f, _wgslsmith_f_op_f32(f32(-1f) * -450f))))));
    global4 = !select(vec4<bool>(false, true, var_1.d.x, !select(var_1.e.x, global4.x, false)), vec4<bool>(!all(var_1.d), false && (-37313i <= arg_0), false, _wgslsmith_f_op_f32(ceil(global3[_wgslsmith_index_u32(var_0.b.c, 4u)])) < _wgslsmith_f_op_f32(global1.x + -1000f)), vec4<bool>(true, true, true, true));
    return var_1.b.d;
}

fn func_5(arg_0: bool, arg_1: Struct_2) -> StorageBuffer {
    var var_0 = Struct_3(u_input.e.yxx, arg_1, global4.yw, global4.zzz, select(select(!select(vec4<bool>(true, arg_0, true, true), vec4<bool>(false, false, true, global4.x), true), !vec4<bool>(global4.x, false, true, false), !vec4<bool>(true, arg_0, false, arg_0)), vec4<bool>(select(!arg_0, arg_0, !global4.x), true, !global4.x, arg_0), select(select(vec4<bool>(false, false, global4.x, arg_0), vec4<bool>(arg_0, global4.x, false, global4.x), select(vec4<bool>(true, false, arg_0, arg_0), vec4<bool>(global4.x, true, arg_0, global4.x), arg_0)), vec4<bool>(true, false, arg_1.c <= 709u, !arg_0), !(!vec4<bool>(true, arg_0, true, false)))));
    var var_1 = Struct_5(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-395f, var_0.b.b.a)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.x, -165f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.b.a))), -2562f), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, -251f, var_0.b.b.a, var_0.b.d.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_1.d.x, var_0.b.b.a, -1199f, global1.x), vec4<f32>(arg_1.d.x, global3[_wgslsmith_index_u32(arg_1.c, 4u)], 149f, arg_1.a))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.b.a, global1.x, global1.x, -625f) + vec4<f32>(arg_1.b.a, global3[_wgslsmith_index_u32(93732u, 4u)], global3[_wgslsmith_index_u32(var_0.b.c, 4u)], 444f)))))));
    let var_2 = -(min(u_input.b, ~(~u_input.b)) & (-u_input.b ^ vec4<i32>(_wgslsmith_div_i32(u_input.d.x, -30141i), reverseBits(-1i), u_input.d.x & 2147483647i, _wgslsmith_sub_i32(0i, -2147483647i))));
    let var_3 = Struct_2(var_1.a.x, Struct_1(_wgslsmith_div_f32(global3[_wgslsmith_index_u32(arg_1.c, 4u)], -1000f)), firstTrailingBit(~(~(~var_0.a.x))), arg_1.d);
    var var_4 = Struct_3(abs(var_0.a), arg_1, global4.yx, select(global4.wzx, vec3<bool>(true, true, true), !global4.wwy), var_0.e);
    return StorageBuffer(vec3<i32>(min(u_input.d.x | max(27649i, -38837i), abs(~1245i)), _wgslsmith_dot_vec3_i32(vec3<i32>(var_2.x, -2147483647i, var_2.x) & u_input.b.wzw, var_2.zzy ^ _wgslsmith_div_vec3_i32(vec3<i32>(var_2.x, 2147483647i, 22778i), vec3<i32>(-3776i, u_input.b.x, var_2.x))), var_2.x), vec4<f32>(224f, _wgslsmith_f_op_f32(trunc(global3[_wgslsmith_index_u32(var_0.a.x, 4u)])), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(236f * -410f), _wgslsmith_f_op_f32(-377f - global1.x)) - _wgslsmith_f_op_f32(var_1.a.x + _wgslsmith_div_f32(2113f, arg_1.b.a))), -383f), vec4<i32>(_wgslsmith_dot_vec4_i32(~(-vec4<i32>(21622i, 0i, var_2.x, var_2.x)), select(firstLeadingBit(u_input.b), firstLeadingBit(vec4<i32>(1i, 0i, 6281i, 1i)), var_4.e)), i32(-1i) * -2147483647i, -47571i, var_2.x), -(0i << (~var_3.c % 32u)) ^ var_2.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~vec2<i32>(select(u_input.d.x, u_input.d.x, true), u_input.b.x);
    let var_1 = Struct_1(310f);
    let x = u_input.a;
    s_output = func_5(true, Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-289f, _wgslsmith_f_op_f32(step(-242f, global1.x)))), _wgslsmith_f_op_f32(sign(-1000f))), var_1, _wgslsmith_add_u32(~(u_input.e.x ^ u_input.a), _wgslsmith_add_u32(44541u, abs(u_input.e.x))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_4(func_1(), u_input.b)), vec3<f32>(var_1.a, var_1.a, _wgslsmith_f_op_f32(round(global1.x))))));
}

