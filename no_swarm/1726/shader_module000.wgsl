struct Struct_1 {
    a: u32,
    b: vec4<bool>,
    c: vec3<u32>,
    d: u32,
    e: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 32> = array<f32, 32>(-1471f, 392f, -1203f, 280f, -1000f, -786f, -1975f, 435f, 943f, -940f, -2209f, 442f, 135f, -2142f, 664f, 902f, 184f, -110f, -555f, -1419f, -1000f, 1686f, 847f, 245f, -439f, -1455f, 615f, 239f, -371f, 625f, -2447f, 103f);

var<private> global1: vec2<bool>;

var<private> global2: array<bool, 13> = array<bool, 13>(false, true, true, true, true, false, false, true, true, true, false, false, false);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<f32>) -> vec4<bool> {
    global1 = arg_0.b.yw;
    let var_0 = Struct_2(arg_0, ~(~u_input.b.x ^ u_input.b.x) != -(~1i));
    let var_1 = var_0;
    global0 = array<f32, 32>();
    global0 = array<f32, 32>();
    return vec4<bool>(global1.x, !all(!vec4<bool>(true, global2[_wgslsmith_index_u32(35000u, 13u)], global2[_wgslsmith_index_u32(arg_0.c.x, 13u)], var_0.b)), global1.x, !(!all(select(var_0.a.b.zy, var_0.a.b.ww, false))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_1) -> bool {
    var var_0 = arg_0;
    let var_1 = arg_0.a;
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(arg_2.e.xwy)));
    global2 = array<bool, 13>();
    var var_3 = select(select(arg_1.b.xwx, !(!var_1.b.yxw), arg_0.a.b.yyz), func_3(arg_1, _wgslsmith_f_op_vec3_f32(vec3<f32>(-636f, arg_0.a.e.x, var_0.a.e.x) * _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(904f, -1082f, arg_2.e.x))))).xxy, false);
    return true;
}

fn func_2() -> Struct_1 {
    global2 = array<bool, 13>();
    let var_0 = -1i;
    let var_1 = !(!select(vec2<bool>(true, true), vec2<bool>(global0[_wgslsmith_index_u32(1u, 32u)] == global0[_wgslsmith_index_u32(32284u, 32u)], true), all(vec4<bool>(global1.x, global2[_wgslsmith_index_u32(1u, 13u)], false, global1.x))));
    var var_2 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(11864u, 32u)], 107f, 204f) - vec3<f32>(-316f, global0[_wgslsmith_index_u32(1u, 32u)], 1000f)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-889f, -540f, global0[_wgslsmith_index_u32(52181u, 32u)]), vec3<f32>(3064f, global0[_wgslsmith_index_u32(3964u, 32u)], global0[_wgslsmith_index_u32(4294967295u, 32u)])))))));
    var var_3 = _wgslsmith_div_vec4_i32(vec4<i32>(~(-71693i), _wgslsmith_add_i32(var_0 ^ -1i, -1i) & 1i, -14115i, -_wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(53371i, u_input.b.x, -30748i, 7884i)), vec4<i32>(-1i, u_input.a.x, 24029i, -2147483647i))), _wgslsmith_mult_vec4_i32(vec4<i32>(12210i, -1i, -51721i, -2147483647i), vec4<i32>(var_0, u_input.b.x | _wgslsmith_div_i32(u_input.a.x, var_0), _wgslsmith_sub_i32(_wgslsmith_mod_i32(u_input.a.x, -15680i), var_0), ~(~var_0))));
    return Struct_1(39783u, vec4<bool>(true, true, select(select(true, true, true), all(vec4<bool>(global2[_wgslsmith_index_u32(100766u, 13u)], true, false, global1.x)), false) && (_wgslsmith_dot_vec3_u32(vec3<u32>(13521u, 3933u, 19282u), vec3<u32>(22147u, 108296u, 0u)) <= 1u), func_4(Struct_2(Struct_1(142113u, vec4<bool>(true, global1.x, false, global1.x), vec3<u32>(5514u, 4294967295u, 4294967295u), 4294967295u, vec4<f32>(-638f, global0[_wgslsmith_index_u32(1u, 32u)], var_2.x, -605f)), any(vec2<bool>(global1.x, var_1.x))), Struct_1(abs(30824u), func_3(Struct_1(9418u, vec4<bool>(true, true, global1.x, global1.x), vec3<u32>(22966u, 1u, 0u), 67959u, vec4<f32>(-766f, 1000f, 1095f, -822f)), vec3<f32>(var_2.x, 1237f, 1606f)), vec3<u32>(1u, 1u, 1u), 1u, vec4<f32>(-1000f, -1000f, 343f, -1358f)), Struct_1(~4294967295u, !vec4<bool>(global2[_wgslsmith_index_u32(27676u, 13u)], global1.x, var_1.x, false), vec3<u32>(5672u, 1u, 54227u), ~3511u, _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global0[_wgslsmith_index_u32(50523u, 32u)], var_2.x, var_2.x, global0[_wgslsmith_index_u32(0u, 32u)])))))), vec3<u32>(1u, 1u, 1u), abs(_wgslsmith_clamp_u32(1u, countOneBits(~0u), abs(1u))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(35703u, 32u)], global0[_wgslsmith_index_u32(1u, 32u)], global0[_wgslsmith_index_u32(69730u, 32u)], global0[_wgslsmith_index_u32(53648u, 32u)]) - vec4<f32>(global0[_wgslsmith_index_u32(4294967295u, 32u)], var_2.x, -924f, 192f)))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(vec4<f32>(-1082f, 347f, global0[_wgslsmith_index_u32(73524u, 32u)], var_2.x), vec4<f32>(global0[_wgslsmith_index_u32(0u, 32u)], -622f, var_2.x, -1331f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, 1650f, -1041f, global0[_wgslsmith_index_u32(1u, 32u)]))))) - _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(4294967295u, 32u)], global0[_wgslsmith_index_u32(142786u, 32u)], -931f, var_2.x) + vec4<f32>(var_2.x, 1284f, -315f, global0[_wgslsmith_index_u32(4294967295u, 32u)])) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, var_2.x, var_2.x, global0[_wgslsmith_index_u32(1u, 32u)])))))));
}

fn func_5(arg_0: u32, arg_1: Struct_1, arg_2: i32) -> vec4<f32> {
    global2 = array<bool, 13>();
    var var_0 = Struct_2(arg_1, true);
    let var_1 = Struct_2(var_0.a, false);
    let var_2 = var_1;
    let var_3 = var_1;
    return var_1.a.e;
}

fn func_6(arg_0: Struct_1) -> Struct_1 {
    global0 = array<f32, 32>();
    let var_0 = u_input.a;
    let var_1 = Struct_2(func_2(), true);
    var var_2 = var_1.a;
    var var_3 = all(func_3(func_2(), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_1.a.e.yzw) - _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-var_1.a.e.wyz))))).xxy);
    return func_2();
}

fn func_7(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    let var_0 = ~(~_wgslsmith_sub_vec4_u32(~vec4<u32>(1u, 76547u, 0u, 1u), vec4<u32>(arg_1.d, _wgslsmith_mult_u32(19445u, 52572u), 43467u | arg_0.c.x, 4294967295u & arg_1.a)));
    let var_1 = func_6(Struct_1(56268u, arg_1.b, func_2().c & vec3<u32>(arg_0.a, ~84576u, arg_1.c.x), var_0.x | arg_1.d, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(exp2(arg_1.e.x)), _wgslsmith_f_op_f32(ceil(arg_1.e.x)), _wgslsmith_f_op_f32(abs(arg_1.e.x)), global0[_wgslsmith_index_u32(arg_1.c.x >> (var_0.x % 32u), 32u)]))));
    global0 = array<f32, 32>();
    let var_2 = Struct_1(4294967295u, !arg_0.b, _wgslsmith_sub_vec3_u32(vec3<u32>(~(65127u ^ arg_1.c.x), ~arg_0.c.x, arg_0.d), countOneBits(vec3<u32>(37559u, 26562u, 38425u)) ^ abs(vec3<u32>(arg_1.a, 24873u, var_1.d))), firstTrailingBit(_wgslsmith_dot_vec2_u32(var_1.c.yx, arg_0.c.yz) << (var_1.c.x % 32u)) ^ _wgslsmith_clamp_u32(var_0.x, firstTrailingBit(var_0.x), ~(~23257u)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(arg_1.c.x, 32u)], -1666f, 1456f, -377f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1737f, arg_1.e.x, arg_1.e.x, 2281f))), vec4<f32>(134f, func_6(Struct_1(arg_0.d, vec4<bool>(arg_1.b.x, false, true, var_1.b.x), var_0.ywy, 54798u, arg_0.e)).e.x, -1000f, var_1.e.x), true)));
    let var_3 = _wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(~_wgslsmith_clamp_vec4_i32(-vec4<i32>(u_input.b.x, u_input.a.x, -48211i, -1i), -vec4<i32>(u_input.a.x, -12194i, -19422i, u_input.b.x), vec4<i32>(u_input.a.x, u_input.b.x, 8587i, u_input.b.x) & vec4<i32>(u_input.b.x, u_input.b.x, -5857i, 1i)), _wgslsmith_mult_vec4_i32(-vec4<i32>(u_input.b.x, u_input.a.x, u_input.b.x, 2147483647i) & min(vec4<i32>(u_input.a.x, -14792i, 5747i, u_input.b.x), vec4<i32>(-1i, u_input.a.x, u_input.b.x, 1831i)), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b.x, -2147483647i, -1i, u_input.a.x), vec4<i32>(0i, u_input.b.x, 21044i, u_input.b.x)))), ~max(firstTrailingBit(vec4<i32>(u_input.a.x, u_input.b.x, -1i, -1i) << (vec4<u32>(0u, 4294967295u, 8297u, var_1.c.x) % vec4<u32>(32u))), max(vec4<i32>(0i, u_input.a.x, -1628i, -10321i), ~vec4<i32>(u_input.a.x, u_input.b.x, u_input.b.x, -2147483647i))));
    return Struct_1(4294967295u, select(func_6(var_2).b, select(vec4<bool>(global1.x, arg_0.b.x, true, true), arg_1.b, var_2.b.x), !(!var_2.b)), vec3<u32>(~arg_1.a, _wgslsmith_mod_u32(arg_1.d, abs(arg_0.c.x)) & arg_0.c.x, 59647u), _wgslsmith_mult_u32(37791u, var_0.x), var_2.e);
}

fn func_1(arg_0: vec3<f32>) -> vec2<u32> {
    global2 = array<bool, 13>();
    var var_0 = arg_0.x;
    var var_1 = func_7(func_6(Struct_1(1u, !(!vec4<bool>(false, global1.x, false, false)), vec3<u32>(1u, 1u, 1u), ~_wgslsmith_sub_u32(49165u, 7164u), _wgslsmith_f_op_vec4_f32(func_5(~1u, func_2(), -2147483647i)))), func_6(func_2()));
    var var_2 = var_1.b;
    let var_3 = _wgslsmith_sub_u32(var_1.c.x, reverseBits(var_1.a));
    return _wgslsmith_sub_vec2_u32(var_1.c.xz, abs(~min(vec2<u32>(53564u, 13985u), var_1.c.yy))) & vec2<u32>(_wgslsmith_sub_u32(78199u, _wgslsmith_clamp_u32(94911u, ~1u, 73112u)), 4294967295u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = max(_wgslsmith_mult_vec2_u32(vec2<u32>(min(~1u, _wgslsmith_add_u32(24784u, 0u)), 1u), vec2<u32>(~_wgslsmith_mult_u32(22674u, 0u), _wgslsmith_clamp_u32(0u, 22177u, 4838u))), ~min(vec2<u32>(1u, 1u), vec2<u32>(1u, 1u)) & _wgslsmith_clamp_vec2_u32(~vec2<u32>(1u, 1u), _wgslsmith_sub_vec2_u32(func_1(vec3<f32>(-1192f, -219f, global0[_wgslsmith_index_u32(5246u, 32u)])), ~vec2<u32>(1u, 50383u)), vec2<u32>(~1u, 1u)));
    global2 = array<bool, 13>();
    var var_1 = vec3<bool>(true, global2[_wgslsmith_index_u32(~58896u, 13u)], global2[_wgslsmith_index_u32(firstLeadingBit(59258u), 13u)]);
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1u, 32u)]) - -1404f), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1u, 32u)]), -1341f))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(45864u, 32u)], -1587f, 1079f) - vec3<f32>(-2265f, 1470f, global0[_wgslsmith_index_u32(var_0.x, 32u)]))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(1u, 32u)], -1342f, 242f))) * _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_vec4_f32(func_5(34264u, Struct_1(var_0.x, vec4<bool>(true, false, var_1.x, var_1.x), vec3<u32>(var_0.x, 25463u, var_0.x), 13730u, vec4<f32>(global0[_wgslsmith_index_u32(var_0.x, 32u)], global0[_wgslsmith_index_u32(var_0.x, 32u)], 796f, global0[_wgslsmith_index_u32(89751u, 32u)])), -2147483647i)).x, _wgslsmith_f_op_f32(397f * 1454f), _wgslsmith_f_op_f32(-454f + -779f))))));
    var var_3 = func_7(Struct_1(func_7(func_2(), Struct_1(firstTrailingBit(39944u), vec4<bool>(var_1.x, true, global1.x, true), ~vec3<u32>(var_0.x, var_0.x, var_0.x), var_0.x, _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, var_2.x, global0[_wgslsmith_index_u32(1u, 32u)], -186f)))).a, !func_7(func_6(Struct_1(1u, vec4<bool>(global1.x, global2[_wgslsmith_index_u32(var_0.x, 13u)], true, global1.x), vec3<u32>(0u, var_0.x, 0u), 69490u, vec4<f32>(global0[_wgslsmith_index_u32(var_0.x, 32u)], 1000f, global0[_wgslsmith_index_u32(var_0.x, 32u)], var_2.x))), Struct_1(63764u, vec4<bool>(global1.x, false, global1.x, false), vec3<u32>(9229u, var_0.x, 31247u), 49347u, vec4<f32>(var_2.x, global0[_wgslsmith_index_u32(28757u, 32u)], global0[_wgslsmith_index_u32(var_0.x, 32u)], 1670f))).b, _wgslsmith_clamp_vec3_u32(~(~vec3<u32>(var_0.x, var_0.x, var_0.x)), ~(~vec3<u32>(var_0.x, 1626u, 1u)), _wgslsmith_div_vec3_u32(vec3<u32>(39139u, var_0.x, var_0.x), select(vec3<u32>(var_0.x, 1u, 106245u), vec3<u32>(36362u, var_0.x, 4294967295u), vec3<bool>(var_1.x, false, true)))), abs(1u & _wgslsmith_mod_u32(var_0.x, 88291u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0[_wgslsmith_index_u32(24386u, 32u)], var_2.x, global0[_wgslsmith_index_u32(var_0.x, 32u)], -1020f), vec4<f32>(-326f, 573f, -317f, 897f), vec4<bool>(false, var_1.x, var_1.x, false))), vec4<f32>(global0[_wgslsmith_index_u32(var_0.x, 32u)], 1237f, -1896f, 350f)))), func_7(func_7(func_2(), Struct_1(var_0.x, !vec4<bool>(var_1.x, global1.x, true, false), _wgslsmith_add_vec3_u32(vec3<u32>(var_0.x, var_0.x, var_0.x), vec3<u32>(15552u, var_0.x, 22295u)), var_0.x, _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(628f, -1082f, -240f, global0[_wgslsmith_index_u32(var_0.x, 32u)]))))), Struct_1(var_0.x, vec4<bool>(var_1.x && global2[_wgslsmith_index_u32(61155u, 13u)], all(var_1.yx), true, true), vec3<u32>(func_1(var_2).x, 24196u, _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, 1u, 53358u), vec3<u32>(var_0.x, var_0.x, 0u))), _wgslsmith_div_u32(~var_0.x, func_1(vec3<f32>(global0[_wgslsmith_index_u32(70853u, 32u)], var_2.x, var_2.x)).x), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(487f, global0[_wgslsmith_index_u32(10335u, 32u)], global0[_wgslsmith_index_u32(1u, 32u)], -866f) * vec4<f32>(-314f, 766f, 1454f, global0[_wgslsmith_index_u32(var_0.x, 32u)])), _wgslsmith_div_vec4_f32(vec4<f32>(-595f, -227f, var_2.x, -1000f), vec4<f32>(global0[_wgslsmith_index_u32(1u, 32u)], global0[_wgslsmith_index_u32(83940u, 32u)], global0[_wgslsmith_index_u32(20542u, 32u)], var_2.x)), vec4<bool>(global1.x, true, true, global1.x))))));
    let var_4 = -vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(i32(-1i) * -12136i, ~u_input.b.x), u_input.b), -74621i);
    global0 = array<f32, 32>();
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~1u << (var_3.d % 32u))));
}

