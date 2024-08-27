struct Struct_1 {
    a: bool,
    b: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<bool>,
    c: vec2<f32>,
    d: Struct_1,
    e: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: u32,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<f32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 517f;

var<private> global1: array<i32, 5>;

var<private> global2: array<vec4<u32>, 27> = array<vec4<u32>, 27>(vec4<u32>(4032u, 51761u, 4294967295u, 29582u), vec4<u32>(64540u, 4294967295u, 0u, 4294967295u), vec4<u32>(60150u, 31534u, 86u, 1u), vec4<u32>(4294967295u, 23150u, 31292u, 142u), vec4<u32>(67353u, 0u, 47077u, 120796u), vec4<u32>(4294967295u, 1u, 20397u, 27098u), vec4<u32>(38974u, 0u, 4294967295u, 1u), vec4<u32>(42833u, 83u, 4294967295u, 4294967295u), vec4<u32>(4294967295u, 0u, 1u, 25710u), vec4<u32>(77780u, 2195u, 4294967295u, 1u), vec4<u32>(27127u, 0u, 1u, 57867u), vec4<u32>(0u, 34680u, 1u, 25958u), vec4<u32>(4294967295u, 1u, 0u, 17741u), vec4<u32>(1u, 40885u, 0u, 82338u), vec4<u32>(51187u, 19982u, 40202u, 1u), vec4<u32>(4294967295u, 1u, 1u, 1u), vec4<u32>(0u, 4294967295u, 1u, 41609u), vec4<u32>(0u, 4294967295u, 1u, 12817u), vec4<u32>(1u, 1u, 14128u, 0u), vec4<u32>(1u, 1u, 1343u, 0u), vec4<u32>(1u, 1u, 0u, 48488u), vec4<u32>(26125u, 75905u, 37916u, 4271u), vec4<u32>(0u, 12843u, 74299u, 4294967295u), vec4<u32>(46371u, 0u, 58629u, 19355u), vec4<u32>(45560u, 1u, 38688u, 4294967295u), vec4<u32>(1u, 0u, 0u, 4294967295u), vec4<u32>(14293u, 4294967295u, 0u, 59053u));

var<private> global3: Struct_1 = Struct_1(true, vec3<f32>(-1000f, -822f, 143f));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_2, arg_1: f32) -> vec3<f32> {
    let var_0 = arg_0;
    var var_1 = ~abs(firstLeadingBit(select(61882u, 86442u, !global3.a)));
    let var_2 = firstLeadingBit(~(~(u_input.e >> (u_input.e % 32u))) | u_input.a.x);
    let var_3 = !select(!select(vec2<bool>(global3.a, global3.a), vec2<bool>(true, false), vec2<bool>(true, false)), !select(select(vec2<bool>(true, var_0.a.a), vec2<bool>(true, arg_0.a.a), vec2<bool>(global3.a, var_0.a.a)), select(vec2<bool>(arg_0.a.a, true), vec2<bool>(arg_0.a.a, global3.a), var_0.a.a), true), vec2<bool>(var_0.a.a, !var_0.a.a));
    global2 = array<vec4<u32>, 27>();
    return vec3<f32>(_wgslsmith_f_op_f32(-arg_0.a.b.x), _wgslsmith_f_op_f32(-arg_0.a.b.x), _wgslsmith_f_op_f32(f32(-1f) * -494f));
}

fn func_2(arg_0: i32, arg_1: vec4<f32>, arg_2: f32) -> vec4<bool> {
    let var_0 = vec4<bool>(global3.a, !global3.a, any(vec3<bool>(_wgslsmith_f_op_f32(step(767f, arg_1.x)) != _wgslsmith_f_op_f32(-global3.b.x), global3.a, global3.a | true)), false);
    var var_1 = var_0.x;
    let var_2 = Struct_1(var_0.x, _wgslsmith_f_op_vec3_f32(func_3(Struct_2(Struct_1(any(vec2<bool>(false, global3.a)), vec3<f32>(-180f, -2360f, -150f))), _wgslsmith_f_op_f32(-960f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -800f) - -402f)))));
    let var_3 = Struct_2(Struct_1(false, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_2.b.x, 452f, var_2.b.x), vec3<f32>(global3.b.x, arg_1.x, arg_1.x)) * global3.b))));
    let var_4 = Struct_3(var_3.a, select(select(var_0.wx, vec2<bool>(true, true), !(!vec2<bool>(var_2.a, var_2.a))), !var_0.wx, !vec2<bool>(false & var_0.x, var_0.x)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-690f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.b.x))) - _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(var_2.b.yy * vec2<f32>(arg_2, var_2.b.x))))), var_3.a, _wgslsmith_f_op_f32(round(883f)));
    return !select(select(vec4<bool>(!var_3.a.a, any(vec2<bool>(false, var_3.a.a)), false, var_3.a.a), vec4<bool>(false, false, true, -433f >= var_4.e), global3.a & (0u >= u_input.c)), select(!var_0, !(!vec4<bool>(global3.a, var_2.a, true, true)), (global3.b.x > var_4.c.x) || var_3.a.a), arg_0 > _wgslsmith_sub_i32(arg_0, 0i));
}

fn func_4(arg_0: i32, arg_1: i32, arg_2: bool) -> Struct_1 {
    let var_0 = Struct_2(Struct_1(true, _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1214f, _wgslsmith_f_op_f32(-global3.b.x), -286f)))));
    global2 = array<vec4<u32>, 27>();
    let var_1 = all(select(func_2(_wgslsmith_div_i32(global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(4294967295u, 37488u, 76089u), 5u)], arg_0), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.b.x, 900f, -130f, var_0.a.b.x) - vec4<f32>(-109f, global3.b.x, -1032f, 1000f))), _wgslsmith_f_op_vec3_f32(func_3(Struct_2(Struct_1(false, global3.b)), global3.b.x)).x).wx, vec2<bool>(true, true), vec2<bool>(any(!vec4<bool>(arg_2, true, true, true)), true)));
    var var_2 = ~max(~_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a.x, 0u, 2651u), reverseBits(vec3<u32>(1u, u_input.a.x, 28595u))), ~abs(abs(u_input.e)));
    let var_3 = select(global2[_wgslsmith_index_u32(~(~(u_input.c >> (53509u % 32u))) | 21178u, 27u)], ~(select(vec4<u32>(4294967295u, 4294967295u, u_input.c, 0u), global2[_wgslsmith_index_u32(57115u, 27u)], var_1) >> (select(vec4<u32>(17472u, u_input.c, 0u, u_input.e), global2[_wgslsmith_index_u32(4294967295u, 27u)], vec4<bool>(false, var_0.a.a, false, false)) % vec4<u32>(32u))) << (_wgslsmith_mult_vec4_u32(~vec4<u32>(u_input.e, 1u, 5302u, u_input.a.x) << (vec4<u32>(u_input.c, 1632u, 25793u, 74737u) % vec4<u32>(32u)), global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.c, 39864u & u_input.e, countOneBits(21955u)), 27u)]) % vec4<u32>(32u)), true);
    return var_0.a;
}

fn func_5(arg_0: bool, arg_1: Struct_2, arg_2: i32, arg_3: Struct_1) -> Struct_2 {
    let var_0 = Struct_3(Struct_1(arg_1.a.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global3.b.x, -1226f, -651f), arg_3.b))), !select(select(func_2(-11022i, vec4<f32>(arg_1.a.b.x, global3.b.x, global3.b.x, arg_1.a.b.x), 1106f).wx, select(vec2<bool>(false, arg_0), vec2<bool>(true, global3.a), vec2<bool>(false, arg_1.a.a)), !vec2<bool>(false, arg_3.a)), select(vec2<bool>(false, arg_3.a), !vec2<bool>(false, arg_3.a), !global3.a), true), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-1521f - arg_3.b.x), arg_3.b.x) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global3.b.x, 2203f) * vec2<f32>(508f, -1823f)) * arg_3.b.xx))), arg_3, _wgslsmith_f_op_f32(-global3.b.x));
    let var_1 = ~select(max(~vec3<u32>(0u, 1u, u_input.a.x), vec3<u32>(34101u, u_input.c, u_input.c) & ~vec3<u32>(1u, 0u, 54174u)), ~reverseBits(vec3<u32>(14350u, 0u, u_input.e)) << (~vec3<u32>(1u, 4294967295u, u_input.a.x) % vec3<u32>(32u)), false);
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(ceil(-1000f)), arg_1.a.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(-17560i, -1i, u_input.d.x == global1[_wgslsmith_index_u32(u_input.e, 5u)]).b.x - -457f) + arg_1.a.b.x), global3.b.x);
    var var_3 = ~reverseBits(15941u);
    let var_4 = u_input.b.ww ^ _wgslsmith_mult_vec2_i32(u_input.b.yw, u_input.b.xw);
    return Struct_2(Struct_1(true, _wgslsmith_f_op_vec3_f32(select(arg_1.a.b, var_0.a.b, select(vec3<bool>(arg_1.a.a, false, arg_0), select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), true), func_2(13029i, vec4<f32>(1004f, global3.b.x, var_2.x, arg_3.b.x), var_0.c.x).xzw)))));
}

fn func_1(arg_0: i32) -> u32 {
    global2 = array<vec4<u32>, 27>();
    var var_0 = func_5(false & any(!(!vec2<bool>(global3.a, false))), Struct_2(Struct_1(true, _wgslsmith_f_op_vec3_f32(-global3.b))), u_input.d.x, func_4(28090i, firstLeadingBit(global1[_wgslsmith_index_u32(firstTrailingBit(0u), 5u)] ^ -global1[_wgslsmith_index_u32(4294967295u, 5u)]), !all(func_2(-38700i, vec4<f32>(global3.b.x, global3.b.x, -761f, global3.b.x), global3.b.x))));
    global2 = array<vec4<u32>, 27>();
    global0 = _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(516f, var_0.a.b.x), 710f), _wgslsmith_div_f32(1f, var_0.a.b.x)), -1300f)));
    var var_1 = Struct_3(var_0.a, !select(vec2<bool>(all(vec3<bool>(global3.a, false, true)), false), vec2<bool>(true, true), select(select(vec2<bool>(var_0.a.a, true), vec2<bool>(true, false), vec2<bool>(true, global3.a)), func_2(global1[_wgslsmith_index_u32(0u, 5u)], vec4<f32>(1133f, 131f, global3.b.x, var_0.a.b.x), -1977f).zy, !vec2<bool>(true, var_0.a.a))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-1f), -2162f)), var_0.a, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1604f + var_0.a.b.x))));
    return _wgslsmith_mod_u32(1u, countOneBits(33093u));
}

fn func_6(arg_0: f32, arg_1: u32, arg_2: vec3<u32>) -> bool {
    var var_0 = Struct_3(func_4(-_wgslsmith_dot_vec4_i32(u_input.b, u_input.b), 1i ^ _wgslsmith_mod_i32(5240i, u_input.b.x), select(false, global3.a, false)), !select(vec2<bool>(global3.a, true), !(!vec2<bool>(global3.a, global3.a)), func_2(u_input.b.x >> (arg_1 % 32u), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(404f, arg_0, global3.b.x, global3.b.x))), _wgslsmith_f_op_f32(f32(-1f) * -590f)).wz), vec2<f32>(-393f, -725f), Struct_1(func_5(_wgslsmith_f_op_f32(min(1481f, global3.b.x)) < _wgslsmith_f_op_f32(171f + -1101f), func_5(any(vec2<bool>(false, global3.a)), Struct_2(Struct_1(global3.a, global3.b)), u_input.d.x, Struct_1(true, vec3<f32>(arg_0, global3.b.x, arg_0))), u_input.b.x, Struct_1(true, _wgslsmith_f_op_vec3_f32(-global3.b))).a.a, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(min(global3.b, global3.b)))), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(626f, arg_0, 312f), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(global3.b.x, 889f, arg_0), vec3<f32>(global3.b.x, global3.b.x, global3.b.x))))))), -1285f);
    global0 = global3.b.x;
    global3 = func_5(true, Struct_2(func_4(-reverseBits(0i), -15016i, var_0.d.a && true)), ~global1[_wgslsmith_index_u32(88544u, 5u)], var_0.d).a;
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 0i;
    global3 = Struct_1(func_6(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(2458f))), _wgslsmith_add_u32(u_input.c, func_1(-global1[_wgslsmith_index_u32(u_input.c, 5u)])), countOneBits(vec3<u32>(_wgslsmith_sub_u32(56885u, 38855u), u_input.a.x, u_input.e))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(942f, -339f, global3.b.x)))), _wgslsmith_f_op_vec3_f32(floor(global3.b))))));
    let var_1 = global1[_wgslsmith_index_u32(33126u, 5u)];
    global0 = -433f;
    global3 = func_5(false, Struct_2(func_4(u_input.b.x, firstTrailingBit(u_input.b.x & -10830i), global3.a)), u_input.b.x, Struct_1(global3.a | (global3.a & !global3.a), _wgslsmith_f_op_vec3_f32(vec3<f32>(-2382f, global3.b.x, -1017f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-438f, -384f, global3.b.x))))).a;
    let var_2 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-448f, global3.b.x, _wgslsmith_f_op_f32(f32(-1f) * -625f)))))));
    global2 = array<vec4<u32>, 27>();
    var_0 = 7286i;
    var var_3 = select(!func_2(countOneBits(global1[_wgslsmith_index_u32(~u_input.a.x, 5u)]), vec4<f32>(_wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(global3.b.x - var_2.x), 103f, _wgslsmith_f_op_f32(global3.b.x - var_2.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.b.x - var_2.x))).wwz, !(!(!select(vec3<bool>(global3.a, global3.a, global3.a), vec3<bool>(true, global3.a, global3.a), false))), !(!(!select(vec3<bool>(true, false, global3.a), vec3<bool>(global3.a, global3.a, false), true))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_2.x, -1009f, 150f, global3.b.x), vec4<f32>(1417f, global3.b.x, 404f, global3.b.x)))))), var_2, _wgslsmith_clamp_vec4_i32(u_input.b, _wgslsmith_sub_vec4_i32(u_input.b, vec4<i32>(1i, _wgslsmith_sub_i32(global1[_wgslsmith_index_u32(3687u, 5u)], global1[_wgslsmith_index_u32(u_input.c, 5u)]), 2147483647i | u_input.b.x, global1[_wgslsmith_index_u32(countOneBits(1u), 5u)])), u_input.b));
}

