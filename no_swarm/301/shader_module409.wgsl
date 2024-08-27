struct Struct_1 {
    a: i32,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<bool>,
    d: Struct_1,
    e: f32,
}

struct Struct_3 {
    a: u32,
    b: vec2<u32>,
    c: u32,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_3,
    c: i32,
    d: vec2<f32>,
}

struct Struct_5 {
    a: u32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(-1i, false);

var<private> global1: Struct_3;

var<private> global2: bool = true;

var<private> global3: f32 = 389f;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_5, arg_1: f32) -> u32 {
    let var_0 = any(select(select(!vec2<bool>(arg_0.b.b, false), select(vec2<bool>(arg_0.b.b, true), select(vec2<bool>(false, arg_0.b.b), vec2<bool>(false, global0.b), false), !vec2<bool>(global0.b, arg_0.b.b)), !select(vec2<bool>(arg_0.b.b, false), vec2<bool>(true, global0.b), false)), !(!select(vec2<bool>(false, global0.b), vec2<bool>(true, true), true)), !vec2<bool>(global0.b, !global0.b)));
    let var_1 = Struct_2(arg_0.b, arg_0.b, select(vec2<bool>(arg_0.b.b, any(vec3<bool>(true, true, true))), !select(vec2<bool>(false, global0.b), vec2<bool>(var_0, false), !vec2<bool>(global0.b, var_0)), global0.b), arg_0.b, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(246f - arg_1))))));
    global1 = Struct_3(_wgslsmith_clamp_u32(~arg_0.a ^ _wgslsmith_dot_vec4_u32(vec4<u32>(global1.a, 0u, arg_0.a, u_input.c.x), vec4<u32>(64392u, global1.b.x, 64536u, 17631u) | vec4<u32>(4294967295u, u_input.a.x, arg_0.a, 4294967295u)), 26912u, _wgslsmith_mod_u32(u_input.a.x, ~global1.a) >> (~arg_0.a % 32u)), u_input.c, abs(u_input.c.x));
    var var_2 = select(vec3<bool>(var_0, true, !(true != (var_1.a.b | var_0))), !select(vec3<bool>(arg_0.b.b, true, true), !select(vec3<bool>(false, var_0, var_1.d.b), vec3<bool>(false, global0.b, false), var_0), !vec3<bool>(true, var_1.c.x, arg_0.b.b)), arg_0.b.b);
    global0 = Struct_1(1i, global0.b);
    return _wgslsmith_div_u32(~global1.c, ~_wgslsmith_mod_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(global1.b, vec2<u32>(u_input.c.x, global1.c)), _wgslsmith_dot_vec4_u32(vec4<u32>(5869u, u_input.c.x, arg_0.a, 0u), vec4<u32>(arg_0.a, 32674u, 0u, 0u))), arg_0.a));
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: vec3<f32>) -> vec4<bool> {
    let var_0 = Struct_5(~countOneBits(_wgslsmith_dot_vec2_u32(u_input.c, vec2<u32>(1u, 4294967295u))), arg_0);
    var var_1 = _wgslsmith_mult_vec3_i32(~vec3<i32>(_wgslsmith_add_i32(~arg_0.a, _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, -35151i), vec2<i32>(-2121i, 57842i))), 14055i << (_wgslsmith_clamp_u32(1u, 68453u, 0u) % 32u), -6545i), ~(~_wgslsmith_div_vec3_i32(-vec3<i32>(arg_0.a, 0i, -43308i), -vec3<i32>(-1i, -1i, u_input.b))));
    global0 = Struct_1(-_wgslsmith_div_i32(var_1.x, 14968i), arg_0.b);
    let var_2 = Struct_3(global1.c, ~vec2<u32>(0u >> ((4941u << (var_0.a % 32u)) % 32u), 29979u), _wgslsmith_add_u32(u_input.c.x, ~arg_1 << (_wgslsmith_mod_u32(~u_input.a.x, 57421u) % 32u)));
    let var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.x)), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-1725f)), _wgslsmith_f_op_f32(-arg_2.x)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_2.x))), arg_0.b | (u_input.a.x < 25339u))), arg_2.x, _wgslsmith_f_op_f32(min(787f, _wgslsmith_f_op_f32(-arg_2.x)))));
    return !vec4<bool>(_wgslsmith_mod_u32(var_2.a, 6102u << (global1.a % 32u)) > ~(~37041u), arg_0.b, !global0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.x)) > _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_f_op_f32(min(728f, 2534f)))));
}

fn func_2(arg_0: Struct_3) -> u32 {
    global1 = arg_0;
    global2 = all(vec4<bool>(!(select(global0.b, global0.b, global0.b) & !global0.b), any(vec3<bool>(any(vec2<bool>(true, false)), global0.b && true, true)), true, any(select(select(vec4<bool>(true, global0.b, global0.b, false), vec4<bool>(global0.b, true, true, false), global0.b), vec4<bool>(false, false, global0.b, true), vec4<bool>(false, global0.b, global0.b, false)))));
    var var_0 = Struct_3(4294967295u, vec2<u32>(arg_0.c, 1u), 31157u);
    var var_1 = func_4(Struct_1(global0.a, any(!(!vec4<bool>(global0.b, true, global0.b, false)))), _wgslsmith_mult_u32(func_3(Struct_5(8752u, Struct_1(15890i, false)), 1f), max(57771u, 65866u)), vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(2302f)), _wgslsmith_div_f32(-279f, 1086f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-594f))), -1046f));
    var var_2 = arg_0;
    return arg_0.a;
}

fn func_5(arg_0: u32, arg_1: Struct_5, arg_2: Struct_1) -> i32 {
    global1 = Struct_3(42991u, vec2<u32>(~(~40411u), 55556u), 82023u);
    global2 = select(arg_2.b, false, 1f <= _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-859f * -736f))))));
    var var_0 = global0.b;
    var var_1 = Struct_2(arg_2, Struct_1(1i, any(func_4(arg_2, arg_0, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-181f, 2133f, -1846f))))), !func_4(arg_1.b, arg_1.a & arg_0, _wgslsmith_f_op_vec3_f32(-vec3<f32>(984f, 752f, -600f))).xy, arg_2, 695f);
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-418f, var_1.e, var_1.e, var_1.e))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.e, var_1.e, var_1.e, -1000f) + vec4<f32>(537f, -1607f, var_1.e, -1162f)))), func_4(Struct_1(1i, arg_2.b), u_input.a.x & 0u, _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.e, var_1.e, var_1.e))))) + vec4<f32>(392f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.e + var_1.e) - _wgslsmith_f_op_f32(trunc(var_1.e))), _wgslsmith_f_op_f32(1f + -861f), 1295f)));
    return 1i;
}

fn func_6(arg_0: u32, arg_1: u32, arg_2: i32) -> Struct_2 {
    let var_0 = -abs(-vec2<i32>(arg_2, arg_2)) | firstTrailingBit(~_wgslsmith_div_vec2_i32(-vec2<i32>(-17927i, global0.a), vec2<i32>(-24340i, u_input.b) << (global1.b % vec2<u32>(32u))));
    let var_1 = (_wgslsmith_add_vec3_i32(vec3<i32>(-2147483647i, u_input.b, 52977i) | select(vec3<i32>(global0.a, arg_2, global0.a), vec3<i32>(-3131i, 38239i, 0i), global0.b), abs(vec3<i32>(u_input.b, -9076i, var_0.x)) | (vec3<i32>(var_0.x, var_0.x, global0.a) << (u_input.a % vec3<u32>(32u)))) >> (countOneBits(_wgslsmith_mult_vec3_u32(u_input.a, vec3<u32>(arg_0, global1.c, u_input.c.x)) | firstTrailingBit(u_input.a)) % vec3<u32>(32u))) & vec3<i32>(reverseBits(~(~arg_2)), min(_wgslsmith_div_i32(1i, arg_2), _wgslsmith_mult_i32(u_input.b, _wgslsmith_mod_i32(u_input.b, global0.a))), arg_2);
    return Struct_2(Struct_1(58181i, global0.b), Struct_1(min(-1i, firstLeadingBit(-var_0.x)), all(select(vec2<bool>(true, false), select(vec2<bool>(true, global0.b), vec2<bool>(false, true), vec2<bool>(global0.b, false)), vec2<bool>(global0.b, global0.b)))), !select(vec2<bool>(global0.b && true, false), vec2<bool>(global0.b, global0.b), select(func_4(Struct_1(u_input.b, global0.b), arg_0, vec3<f32>(-684f, -369f, 1000f)).zw, vec2<bool>(true, true), false)), Struct_1(_wgslsmith_div_i32(global0.a, -23983i), global0.b | true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(322f * -1591f))));
}

fn func_1() -> Struct_4 {
    var var_0 = func_6(u_input.c.x, 1u, func_5(~func_2(Struct_3(u_input.a.x, global1.b, global1.b.x)), Struct_5(global1.b.x, Struct_1(u_input.b, true)), Struct_1(-50689i, true & !global0.b)));
    global2 = true;
    let var_1 = all(!vec4<bool>(!global0.b, var_0.a.b | all(vec4<bool>(var_0.d.b, var_0.c.x, true, false)), true, false));
    global2 = true;
    global0 = var_0.d;
    return Struct_4(Struct_3(~u_input.a.x, max(~u_input.a.yz, global1.b) << ((~global1.b >> (u_input.a.yy % vec2<u32>(32u))) % vec2<u32>(32u)), ~(~(u_input.c.x << (u_input.a.x % 32u)))), Struct_3(_wgslsmith_dot_vec2_u32(vec2<u32>(~global1.b.x, ~global1.a), reverseBits(~vec2<u32>(1u, u_input.c.x))), vec2<u32>(10947u, 34310u), ~(_wgslsmith_mod_u32(u_input.c.x, 166u) << (33047u % 32u))), var_0.d.a, _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_0.e, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.e * var_0.e) - _wgslsmith_f_op_f32(f32(-1f) * -886f))))));
}

fn func_7(arg_0: Struct_4, arg_1: vec3<f32>, arg_2: bool, arg_3: vec3<bool>) -> u32 {
    var var_0 = Struct_3(_wgslsmith_dot_vec3_u32(u_input.a, ~u_input.a), ~(select(select(vec2<u32>(global1.b.x, arg_0.b.c), vec2<u32>(47130u, 3531u), vec2<bool>(arg_3.x, arg_3.x)), vec2<u32>(arg_0.b.c, 1u), arg_3.x) & vec2<u32>(arg_0.b.c, u_input.a.x)), global1.a);
    let var_1 = func_1();
    let var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_1 * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(arg_1 + vec3<f32>(arg_1.x, 356f, -144f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(624f, 245f, arg_1.x)))) - vec3<f32>(arg_0.d.x, _wgslsmith_f_op_f32(var_1.d.x - var_1.d.x), _wgslsmith_f_op_f32(max(arg_1.x, 2556f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.x, arg_1.x, arg_0.d.x) - vec3<f32>(var_1.d.x, 985f, 512f)))));
    var_0 = func_1().b;
    var var_3 = Struct_2(func_6(1u, 0u, ~_wgslsmith_add_i32(arg_0.c, countOneBits(0i))).b, Struct_1(_wgslsmith_sub_i32(select(u_input.b, 17232i, arg_2), u_input.b) << (1u % 32u), true), select(!select(vec2<bool>(global0.b, true), vec2<bool>(true, false), all(arg_3)), vec2<bool>(true, false), !func_4(Struct_1(-22286i, arg_2), ~var_0.a, _wgslsmith_div_vec3_f32(vec3<f32>(-1048f, var_1.d.x, var_1.d.x), arg_1)).yy), func_6(var_1.b.c, ~abs(var_1.a.a) ^ var_0.a, -arg_0.c).a, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.d.x)))));
    return 0u;
}

fn func_8(arg_0: vec2<f32>, arg_1: Struct_5) -> bool {
    var var_0 = !any(vec4<bool>(select(true, true, true), -381f >= arg_0.x, global0.b | all(vec4<bool>(true, false, arg_1.b.b, global0.b)), true));
    var var_1 = -5696i;
    global3 = _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(func_6(select(34940u, 4294967295u, true), 33172u, ~global0.a).e, 859f)), -840f)));
    global2 = func_4(arg_1.b, ~_wgslsmith_clamp_u32(~(~u_input.c.x), ~(~64661u), _wgslsmith_div_u32(max(u_input.a.x, global1.b.x), arg_1.a)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, arg_0.x, 1892f))).x;
    var_0 = !arg_1.b.b;
    return global0.b;
}

fn func_9(arg_0: f32, arg_1: bool, arg_2: i32, arg_3: vec3<bool>) -> Struct_3 {
    global0 = Struct_1(_wgslsmith_div_i32(global0.a, select(44787i, 41531i, arg_1)), all(func_6(~func_3(Struct_5(4294967295u, Struct_1(41915i, arg_3.x)), arg_0), u_input.a.x, u_input.b).c));
    global3 = arg_0;
    var var_0 = ~(~global1.a);
    var var_1 = arg_0;
    let var_2 = Struct_2(Struct_1(_wgslsmith_add_i32(-1i, u_input.b ^ abs(global0.a)), true), Struct_1(global0.a, global0.b), vec2<bool>(false, arg_3.x), Struct_1(_wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(5230i, -24707i, u_input.b), select(vec3<i32>(arg_2, 2147483647i, arg_2), vec3<i32>(-2147483647i, global0.a, global0.a), arg_3)), -u_input.b), global0.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(-arg_0)) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(func_6(u_input.c.x, 69653u, 0i).e)), arg_0))));
    return func_1().a;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_9(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * -306f))), func_8(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, 879f) - vec2<f32>(411f, 1908f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(1243f, -1925f)))), Struct_5(func_7(func_1(), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1874f, -1000f, 445f)), true, func_4(Struct_1(u_input.b, true), 30849u, vec3<f32>(1075f, -1053f, 1495f)).zzy), Struct_1(countOneBits(global0.a), false))), global0.a, vec3<bool>(true, true, true));
    var var_0 = ~(u_input.b & _wgslsmith_clamp_i32(min(2147483647i, 37652i) | ~global0.a, -15378i, 2147483647i));
    var var_1 = false;
    global0 = Struct_1(firstTrailingBit(~6602i), global0.b);
    var var_2 = ~global0.a;
    let var_3 = Struct_3(global1.c, func_1().b.b, _wgslsmith_clamp_u32(func_7(Struct_4(Struct_3(u_input.a.x, global1.b, 26438u), Struct_3(0u, u_input.c, 1u), 2147483647i >> (global1.c % 32u), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1303f, 381f))), vec3<f32>(_wgslsmith_f_op_f32(-1000f - -287f), 1510f, _wgslsmith_f_op_f32(f32(-1f) * -271f)), func_4(func_6(16793u, 4294967295u, 1i).a, ~global1.b.x, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(902f, -2269f, 101f), vec3<f32>(-1000f, -1011f, 136f), false))).x, vec3<bool>(global0.b, true, !global0.b)), 4294967295u, ~_wgslsmith_mod_u32(u_input.a.x, global1.b.x)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(firstLeadingBit(53309i), u_input.b));
}

