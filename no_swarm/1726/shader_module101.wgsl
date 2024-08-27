struct Struct_1 {
    a: vec2<i32>,
    b: bool,
}

struct Struct_2 {
    a: i32,
    b: vec2<bool>,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: vec3<u32>,
}

struct Struct_5 {
    a: f32,
    b: f32,
    c: f32,
    d: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(48496u, vec3<u32>(1u, 67702u, 4294967295u));

var<private> global1: array<vec4<i32>, 27>;

var<private> global2: Struct_5;

var<private> global3: array<bool, 5> = array<bool, 5>(false, true, false, true, false);

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_1, arg_2: Struct_2) -> vec3<bool> {
    let var_0 = arg_0;
    var var_1 = -846f;
    var var_2 = arg_0;
    var var_3 = false;
    let var_4 = Struct_2(max(-abs(arg_0.c.a), 1i | abs(u_input.a.x)) >> (~_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(global0.b.yy, vec2<u32>(26764u, 1011u)), global0.b.zx) % 32u), !select(arg_0.c.b, select(!arg_0.c.b, select(arg_0.c.b, arg_2.b, var_2.c.b), !global3[_wgslsmith_index_u32(40080u, 5u)]), any(vec3<bool>(false, true, var_2.b.b.x)) || (global0.b.x > 4294967295u)));
    return !vec3<bool>(false, !(!arg_1.b != var_0.c.b.x), all(vec2<bool>(false, arg_1.a.x < var_4.a)));
}

fn func_2() -> f32 {
    var var_0 = Struct_4(~_wgslsmith_dot_vec2_u32(~_wgslsmith_add_vec2_u32(vec2<u32>(global0.a, global0.b.x), vec2<u32>(1u, global0.b.x)), _wgslsmith_mod_vec2_u32(vec2<u32>(global0.b.x, global0.a), firstTrailingBit(vec2<u32>(0u, global0.a)))), ~_wgslsmith_div_vec3_u32(~vec3<u32>(global0.b.x, 43508u, 1u), select(_wgslsmith_sub_vec3_u32(vec3<u32>(21603u, 32795u, 4294967295u), vec3<u32>(global0.a, 4294967295u, 0u)), vec3<u32>(global0.b.x, global0.a, 1u) | global0.b, global3[_wgslsmith_index_u32(1u, 5u)])));
    let var_1 = _wgslsmith_dot_vec3_i32(select(~firstLeadingBit(vec3<i32>(0i, -1i, u_input.a.x)), _wgslsmith_mult_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.b, 65346i, u_input.a.x), vec3<i32>(2465i, 0i, -9061i)), vec3<i32>(u_input.b, u_input.a.x, u_input.b)), func_3(Struct_3(global2.c, Struct_2(0i, vec2<bool>(global3[_wgslsmith_index_u32(0u, 5u)], global3[_wgslsmith_index_u32(var_0.b.x, 5u)])), Struct_2(u_input.a.x, vec2<bool>(global3[_wgslsmith_index_u32(var_0.b.x, 5u)], true))), Struct_1(vec2<i32>(-2147483647i, u_input.b), global3[_wgslsmith_index_u32(85083u, 5u)]), Struct_2(2147483647i, vec2<bool>(global3[_wgslsmith_index_u32(global0.a, 5u)], global3[_wgslsmith_index_u32(17799u, 5u)])))), firstLeadingBit(firstTrailingBit(vec3<i32>(u_input.b, 1i, u_input.b) ^ vec3<i32>(u_input.b, u_input.a.x, u_input.a.x)))) << (firstTrailingBit(global0.b.x) % 32u);
    let var_2 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.c, -138f) - vec2<f32>(-1196f, global2.c)), vec2<f32>(432f, -292f), false)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.b, 652f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(global2.c, global2.d) - vec2<f32>(global2.d, -519f))))), false));
    var var_3 = Struct_2(u_input.b, func_3(Struct_3(_wgslsmith_f_op_f32(-764f - _wgslsmith_f_op_f32(188f * 1398f)), Struct_2(1i, !vec2<bool>(global3[_wgslsmith_index_u32(var_0.a, 5u)], false)), Struct_2(-u_input.a.x, !vec2<bool>(global3[_wgslsmith_index_u32(0u, 5u)], global3[_wgslsmith_index_u32(global0.a, 5u)]))), Struct_1(u_input.a, global3[_wgslsmith_index_u32(var_0.a, 5u)]), Struct_2(u_input.b, vec2<bool>(any(vec4<bool>(true, true, false, global3[_wgslsmith_index_u32(global0.b.x, 5u)])), global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(var_0.b.yy, var_0.b.xz), 5u)]))).xx);
    let var_4 = Struct_4(abs(1u), ~var_0.b);
    return -171f;
}

fn func_4(arg_0: f32, arg_1: Struct_2, arg_2: f32) -> vec2<f32> {
    global0 = Struct_4(_wgslsmith_sub_u32(37250u << (global0.a % 32u), ~global0.b.x), ~firstTrailingBit(global0.b));
    global1 = array<vec4<i32>, 27>();
    global2 = Struct_5(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1698f), 412f), _wgslsmith_f_op_f32(sign(1289f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(-694f)))), arg_0);
    var var_0 = vec3<i32>(abs(~((i32(-1i) * -50480i) << (min(global0.a, global0.b.x) % 32u))), -30230i, countOneBits(1i));
    var var_1 = vec3<u32>(_wgslsmith_mod_u32(1u, reverseBits(17230u)) ^ countOneBits(firstTrailingBit(global0.a)), 1u, ~_wgslsmith_sub_u32(27568u, global0.a)) ^ countOneBits(vec3<u32>(~abs(87517u), _wgslsmith_mod_u32(global0.a, ~global0.b.x), firstTrailingBit(abs(1205u))));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(-arg_2)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2, 815f)))))));
}

fn func_5(arg_0: vec2<f32>, arg_1: vec4<f32>) -> Struct_1 {
    let var_0 = vec4<u32>(global0.b.x, global0.a, select(global0.a, select(~select(global0.b.x, 0u, global3[_wgslsmith_index_u32(55768u, 5u)]), ~global0.a, select(true, !global3[_wgslsmith_index_u32(27194u, 5u)], global3[_wgslsmith_index_u32(24954u, 5u)] != true)), global3[_wgslsmith_index_u32(1u, 5u)]), ~(~1u));
    var var_1 = vec3<bool>(all(vec3<bool>(true, false, true)), global3[_wgslsmith_index_u32(_wgslsmith_div_u32(firstTrailingBit(~_wgslsmith_dot_vec3_u32(var_0.wxy, vec3<u32>(1u, 23620u, 31355u))), global0.a), 5u)], !select(global3[_wgslsmith_index_u32(4294967295u, 5u)], true, true));
    let var_2 = _wgslsmith_f_op_vec3_f32(arg_1.ywz + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-arg_1.wxx))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(arg_1.wwx)) - _wgslsmith_f_op_vec3_f32(-arg_1.yxy))), vec3<f32>(-324f, _wgslsmith_f_op_vec2_f32(func_4(-1397f, Struct_2(-17581i, vec2<bool>(false, true)), _wgslsmith_f_op_f32(min(arg_0.x, 269f)))).x, _wgslsmith_f_op_f32(ceil(-725f))), vec3<bool>(true, any(select(vec3<bool>(global3[_wgslsmith_index_u32(global0.a, 5u)], global3[_wgslsmith_index_u32(var_0.x, 5u)], true), vec3<bool>(var_1.x, var_1.x, false), vec3<bool>(var_1.x, true, global3[_wgslsmith_index_u32(86974u, 5u)]))), 17212u <= _wgslsmith_dot_vec4_u32(var_0, vec4<u32>(4294967295u, 8183u, var_0.x, var_0.x))))));
    let var_3 = true;
    let var_4 = Struct_3(1442f, Struct_2(_wgslsmith_dot_vec2_i32(~_wgslsmith_mod_vec2_i32(u_input.a, vec2<i32>(665i, u_input.a.x)), vec2<i32>(26571i ^ u_input.b, -2147483647i)), vec2<bool>(global3[_wgslsmith_index_u32(23699u, 5u)], !(!global3[_wgslsmith_index_u32(0u, 5u)]))), Struct_2(u_input.a.x, !select(var_1.xz, !var_1.xy, all(var_1.zy))));
    return Struct_1(min(max(_wgslsmith_mod_vec2_i32(u_input.a, u_input.a) ^ u_input.a, vec2<i32>(countOneBits(var_4.b.a), abs(2147483647i))), select(u_input.a, u_input.a << (var_0.zz % vec2<u32>(32u)), !vec2<bool>(global3[_wgslsmith_index_u32(global0.a, 5u)], var_3)) >> (~_wgslsmith_mod_vec2_u32(global0.b.yz, var_0.yw) % vec2<u32>(32u))), !((!global3[_wgslsmith_index_u32(1u, 5u)] | (var_4.b.b.x | var_1.x)) && var_1.x));
}

fn func_1(arg_0: u32, arg_1: Struct_2) -> Struct_5 {
    var var_0 = func_5(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(505f, -1699f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_4(636f, Struct_2(arg_1.a, arg_1.b), _wgslsmith_f_op_f32(func_2()))) + _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(global2.d, global2.a), vec2<f32>(global2.b, -271f))), vec2<f32>(674f, global2.d)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-348f, _wgslsmith_f_op_f32(f32(-1f) * -858f), _wgslsmith_f_op_f32(-global2.a), _wgslsmith_f_op_f32(-global2.d))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1648f, global2.b, global2.c, global2.d)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1796f, global2.b, -233f, 1106f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1194f, global2.d, global2.d, global2.c)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.b, 635f, global2.b, 280f))))));
    var_0 = func_5(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -977f), global2.a), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global2.c, -1654f, -1149f, 1019f), vec4<f32>(global2.c, -1282f, global2.a, global2.a))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(184f, 438f, 949f, 207f) * vec4<f32>(-249f, global2.d, global2.d, global2.a)))), vec4<bool>(global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(~arg_0, 18149u), 5u)], 1i <= ~var_0.a.x, var_0.b, select(arg_1.a, -1i, true) != abs(u_input.b)))));
    global2 = Struct_5(global2.a, global2.a, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(global2.d * _wgslsmith_f_op_f32(-global2.a)), 481f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(global2.d, global2.b))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-883f, -1000f, global3[_wgslsmith_index_u32(40927u, 5u)])) * _wgslsmith_f_op_f32(global2.d - 2023f))) * -106f));
    let var_1 = vec3<bool>(true, true, all(select(arg_1.b, vec2<bool>(!global3[_wgslsmith_index_u32(global0.a, 5u)], !arg_1.b.x), true)));
    var_0 = func_5(vec2<f32>(-132f, -2263f), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(141f, global2.b, 1036f, global2.b))))))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-846f, global2.a, _wgslsmith_f_op_f32(-global2.a), _wgslsmith_f_op_f32(-1411f + global2.b))))));
    return Struct_5(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global2.d), -1104f, any(vec4<bool>(var_1.x, var_0.a.x == u_input.b, 1u >= arg_0, false || var_1.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -618f) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-200f - global2.a))))), -1179f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -582f)));
}

fn func_6(arg_0: Struct_5) -> Struct_2 {
    global3 = array<bool, 5>();
    var var_0 = 0i;
    var var_1 = select(vec2<bool>(global3[_wgslsmith_index_u32(global0.a, 5u)], _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.c * arg_0.b), _wgslsmith_f_op_f32(f32(-1f) * -267f)) == global2.a), func_3(Struct_3(-1488f, Struct_2(u_input.b, vec2<bool>(global3[_wgslsmith_index_u32(0u, 5u)], global3[_wgslsmith_index_u32(global0.a, 5u)])), Struct_2(select(u_input.a.x, -12915i, global3[_wgslsmith_index_u32(0u, 5u)]), func_3(Struct_3(-362f, Struct_2(-2147483647i, vec2<bool>(false, global3[_wgslsmith_index_u32(55274u, 5u)])), Struct_2(-51080i, vec2<bool>(global3[_wgslsmith_index_u32(global0.a, 5u)], global3[_wgslsmith_index_u32(23201u, 5u)]))), Struct_1(vec2<i32>(0i, u_input.a.x), global3[_wgslsmith_index_u32(4294967295u, 5u)]), Struct_2(-30628i, vec2<bool>(global3[_wgslsmith_index_u32(42927u, 5u)], false))).xx)), Struct_1(-firstLeadingBit(u_input.a), true), Struct_2(firstTrailingBit(_wgslsmith_add_i32(-1i, u_input.a.x)), !(!vec2<bool>(global3[_wgslsmith_index_u32(1u, 5u)], global3[_wgslsmith_index_u32(global0.a, 5u)])))).zz, true);
    let var_2 = Struct_4(_wgslsmith_mult_u32(~global0.b.x, 21235u), vec3<u32>(max(max(~66013u, global0.a), global0.a), 22391u, global0.a));
    let var_3 = (vec3<i32>(-1i) * -(_wgslsmith_sub_vec3_i32(vec3<i32>(2147483647i, u_input.b, -1i), vec3<i32>(44356i, 2147483647i, -2147483647i)) << (vec3<u32>(global0.a, global0.a, 47957u) % vec3<u32>(32u)))) >> (var_2.b % vec3<u32>(32u));
    return Struct_2(2147483647i, select(vec2<bool>(true, !(!global3[_wgslsmith_index_u32(1u, 5u)])), select(!vec2<bool>(false, var_1.x), select(select(vec2<bool>(false, true), vec2<bool>(false, global3[_wgslsmith_index_u32(19951u, 5u)]), vec2<bool>(true, false)), select(vec2<bool>(false, var_1.x), vec2<bool>(true, false), true), true), global3[_wgslsmith_index_u32(var_2.a, 5u)] && (true | global3[_wgslsmith_index_u32(37557u, 5u)])), !select(vec2<bool>(false, global3[_wgslsmith_index_u32(var_2.a, 5u)]), select(vec2<bool>(global3[_wgslsmith_index_u32(4294967295u, 5u)], var_1.x), vec2<bool>(var_1.x, false), vec2<bool>(true, global3[_wgslsmith_index_u32(4294967295u, 5u)])), func_3(Struct_3(arg_0.a, Struct_2(14263i, vec2<bool>(false, true)), Struct_2(-2147483647i, vec2<bool>(global3[_wgslsmith_index_u32(global0.a, 5u)], var_1.x))), Struct_1(vec2<i32>(-67123i, var_3.x), global3[_wgslsmith_index_u32(var_2.b.x, 5u)]), Struct_2(u_input.b, vec2<bool>(var_1.x, false))).yx)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.d * global2.c));
    let var_1 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-256f)))), func_6(func_1(_wgslsmith_div_u32(_wgslsmith_clamp_u32(4294967295u, 10808u, global0.a), global0.b.x), Struct_2(2147483647i, vec2<bool>(false, global3[_wgslsmith_index_u32(19750u, 5u)])))), func_6(func_1(global0.b.x, func_6(Struct_5(279f, 414f, global2.d, -989f)))));
    global2 = Struct_5(_wgslsmith_f_op_f32(-1643f + _wgslsmith_div_f32(-1142f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(522f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -981f)), var_1.a, 712f);
    var var_2 = !func_3(var_1, Struct_1(vec2<i32>(_wgslsmith_mod_i32(u_input.b, var_1.b.a), _wgslsmith_mult_i32(u_input.b, 0i)), func_5(vec2<f32>(510f, global2.a), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.b, -2802f, var_1.a, 1628f))).b), Struct_2(1i, vec2<bool>(var_1.c.b.x && global3[_wgslsmith_index_u32(69071u, 5u)], global3[_wgslsmith_index_u32(~global0.a, 5u)])));
    let var_3 = Struct_3(411f, Struct_2(~(~u_input.b & var_1.c.a), func_6(func_1(select(global0.b.x, 53067u, true), Struct_2(1i, vec2<bool>(false, true)))).b), func_6(Struct_5(_wgslsmith_f_op_f32(-398f - _wgslsmith_f_op_f32(global2.a + var_1.a)), global2.a, _wgslsmith_f_op_f32(f32(-1f) * -741f), 1664f)));
    var var_4 = select(!var_1.c.b, var_2.zz, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-920f, _wgslsmith_f_op_f32(round(var_3.a)))) * 761f) >= _wgslsmith_div_f32(_wgslsmith_div_f32(func_1(40173u, Struct_2(6617i, var_1.c.b)).d, _wgslsmith_f_op_f32(-1119f - var_1.a)), 1f));
    var var_5 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.a) + 1511f);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -230f), _wgslsmith_f_op_f32(-var_1.a), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -361f)))), global2.a), vec4<u32>(~_wgslsmith_dot_vec3_u32(global0.b, global0.b), global0.b.x | _wgslsmith_dot_vec3_u32(vec3<u32>(global0.a, 4294967295u, global0.b.x), ~vec3<u32>(global0.a, 10833u, global0.b.x)), _wgslsmith_add_u32(~17814u, _wgslsmith_mult_u32(0u, global0.b.x)) ^ global0.a, ~global0.b.x), max(0u, _wgslsmith_dot_vec4_u32(reverseBits(abs(vec4<u32>(global0.a, 48634u, global0.a, 65842u))), vec4<u32>(~1u, global0.a & global0.b.x, ~28734u, global0.b.x))));
}

