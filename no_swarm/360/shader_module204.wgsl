struct Struct_1 {
    a: u32,
    b: f32,
    c: bool,
    d: vec4<bool>,
}

struct Struct_2 {
    a: f32,
    b: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: Struct_1,
    c: u32,
    d: bool,
    e: f32,
}

struct Struct_5 {
    a: i32,
    b: Struct_4,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 12> = array<bool, 12>(true, false, true, false, true, true, false, true, true, true, false, true);

var<private> global1: array<vec4<bool>, 21> = array<vec4<bool>, 21>(vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> i32 {
    var var_0 = Struct_3(Struct_2(-410f, _wgslsmith_f_op_f32(434f + 586f)), global0[_wgslsmith_index_u32(1u, 12u)], Struct_1(_wgslsmith_div_u32(~1u, _wgslsmith_dot_vec3_u32(vec3<u32>(69275u, 4294967295u, 4294967295u), ~vec3<u32>(0u, 0u, 0u))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -970f), _wgslsmith_f_op_f32(f32(-1f) * -497f)), any(select(vec3<bool>(false, false, true), select(vec3<bool>(true, global0[_wgslsmith_index_u32(1u, 12u)], false), vec3<bool>(global0[_wgslsmith_index_u32(62863u, 12u)], true, global0[_wgslsmith_index_u32(17933u, 12u)]), true), vec3<bool>(global0[_wgslsmith_index_u32(1u, 12u)], global0[_wgslsmith_index_u32(19296u, 12u)], global0[_wgslsmith_index_u32(0u, 12u)]))), select(vec4<bool>(true, all(vec3<bool>(global0[_wgslsmith_index_u32(1u, 12u)], true, false)), global0[_wgslsmith_index_u32(~88476u, 12u)], global0[_wgslsmith_index_u32(~35613u, 12u)]), !(!global1[_wgslsmith_index_u32(27265u, 21u)]), any(vec4<bool>(false, false, true, global0[_wgslsmith_index_u32(55702u, 12u)])))));
    var var_1 = select(vec4<bool>(true, _wgslsmith_f_op_f32(trunc(870f)) > _wgslsmith_f_op_f32(-var_0.a.a), true, global0[_wgslsmith_index_u32(4294967295u, 12u)]), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>((var_0.c.a ^ 13412u) >> ((4294967295u & var_0.c.a) % 32u), ~(~1u), ~0u), vec3<u32>(~firstLeadingBit(1u), 1u, ~firstLeadingBit(4294967295u))), 21u)], var_0.c.d);
    let var_2 = Struct_3(var_0.a, false, Struct_1(min(select(var_0.c.a, var_0.c.a, var_1.x) << (abs(4294967295u) % 32u), 32893u), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(262f)))), any(select(!vec4<bool>(var_0.c.c, true, true, global0[_wgslsmith_index_u32(0u, 12u)]), select(var_0.c.d, global1[_wgslsmith_index_u32(4294967295u, 21u)], global1[_wgslsmith_index_u32(var_0.c.a, 21u)]), var_0.c.d)), vec4<bool>(var_0.b, true, true, true | var_0.b)));
    var var_3 = i32(-1i) * -(~(~24826i));
    var_0 = Struct_3(var_0.a, !(!(var_1.x | true)), var_0.c);
    return 0i;
}

fn func_2(arg_0: u32, arg_1: vec3<i32>, arg_2: vec3<bool>) -> Struct_4 {
    let var_0 = -_wgslsmith_sub_vec3_i32(vec3<i32>(-3003i, _wgslsmith_dot_vec4_i32(u_input.b, vec4<i32>(-33433i, 1528i, u_input.a.x, arg_1.x)), func_3()), u_input.a.zzw) & vec3<i32>(_wgslsmith_sub_i32(~(~38025i), -(~u_input.a.x)), 2752i, u_input.a.x);
    let var_1 = vec2<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-514f, 984f) - _wgslsmith_f_op_f32(round(764f)))) == 1000f, true);
    global1 = array<vec4<bool>, 21>();
    var var_2 = Struct_1(arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1590f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-828f * -1038f)))))), all(select(select(vec3<bool>(arg_2.x, var_1.x, arg_2.x), vec3<bool>(false, true, false), 1u >= arg_0), vec3<bool>(false, arg_2.x, false), arg_2.x)), select(select(!vec4<bool>(global0[_wgslsmith_index_u32(arg_0, 12u)], var_1.x, global0[_wgslsmith_index_u32(arg_0, 12u)], arg_2.x), global1[_wgslsmith_index_u32(0u, 21u)], select(!vec4<bool>(global0[_wgslsmith_index_u32(51200u, 12u)], arg_2.x, false, arg_2.x), global1[_wgslsmith_index_u32(~arg_0, 21u)], select(false, var_1.x, var_1.x))), !vec4<bool>(any(var_1), true, arg_2.x == false, select(false, true, true)), all(!select(global1[_wgslsmith_index_u32(56326u, 21u)], global1[_wgslsmith_index_u32(35305u, 21u)], vec4<bool>(false, var_1.x, true, false)))));
    var var_3 = vec2<u32>(~countOneBits(15258u), _wgslsmith_add_u32(_wgslsmith_mult_u32(arg_0, var_2.a), 4294967295u));
    return Struct_4(~firstTrailingBit(arg_1.x), Struct_1(var_2.a, _wgslsmith_f_op_f32(-var_2.b), true, select(vec4<bool>(any(global1[_wgslsmith_index_u32(0u, 21u)]), var_1.x, arg_2.x & true, false), var_2.d, var_1.x)), 0u, false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_2.b))));
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_5) -> bool {
    var var_0 = -firstTrailingBit(-_wgslsmith_add_i32(14430i, -1i));
    let var_1 = Struct_1(arg_1.b.b.a, arg_1.b.e, false, func_2(firstTrailingBit(760u), u_input.a.xww, func_2(~(arg_1.b.b.a >> (arg_1.b.c % 32u)), vec3<i32>(abs(0i), -arg_0.x, 3329i), !select(vec3<bool>(true, global0[_wgslsmith_index_u32(arg_1.b.b.a, 12u)], arg_1.b.d), arg_1.b.b.d.ywx, false)).b.d.wyz).b.d);
    global1 = array<vec4<bool>, 21>();
    var_0 = abs(_wgslsmith_mult_i32(~(~_wgslsmith_mod_i32(arg_0.x, arg_0.x)), ~(-17726i)));
    var var_2 = arg_1.b.b.d.wy;
    return global0[_wgslsmith_index_u32(countOneBits(_wgslsmith_dot_vec4_u32(select(select(abs(vec4<u32>(arg_1.b.b.a, arg_1.b.c, 81311u, arg_1.b.b.a)), ~vec4<u32>(var_1.a, arg_1.b.c, 11155u, 1u), arg_1.b.d), ~vec4<u32>(43584u, arg_1.b.b.a, arg_1.b.b.a, var_1.a), var_2.x), reverseBits(_wgslsmith_mod_vec4_u32(vec4<u32>(11294u, 29972u, arg_1.b.c, arg_1.b.c) << (vec4<u32>(28415u, var_1.a, 1u, 77547u) % vec4<u32>(32u)), abs(vec4<u32>(4294967295u, var_1.a, var_1.a, 38313u)))))), 12u)];
}

fn func_1(arg_0: f32, arg_1: i32, arg_2: Struct_4, arg_3: u32) -> Struct_3 {
    let var_0 = Struct_1(~(~(~arg_2.b.a)) | _wgslsmith_dot_vec4_u32(~vec4<u32>(arg_3, 61648u, 84535u, 1u) & (vec4<u32>(4294967295u, arg_2.b.a, arg_3, arg_3) << (vec4<u32>(4294967295u, 37421u, arg_2.c, 4294967295u) % vec4<u32>(32u))), select(abs(vec4<u32>(arg_3, arg_3, 0u, 4294967295u)), select(vec4<u32>(arg_2.c, 5501u, arg_2.c, arg_2.b.a), vec4<u32>(21829u, arg_3, arg_2.c, 1u), vec4<bool>(true, true, true, false)), all(arg_2.b.d.zw))), arg_2.b.b, func_4(-min(u_input.b.xx, vec2<i32>(arg_2.a, arg_2.a)), Struct_5(16011i, func_2(arg_2.b.a, vec3<i32>(arg_1, 2147483647i, 1i), arg_2.b.d.yyz), Struct_2(arg_2.b.b, 1238f))) | (func_4(vec2<i32>(12465i, u_input.b.x), Struct_5(arg_2.a, arg_2, Struct_2(252f, -1403f))) || true), select(!(!select(vec4<bool>(global0[_wgslsmith_index_u32(arg_2.c, 12u)], false, arg_2.d, false), arg_2.b.d, true)), vec4<bool>(arg_0 >= _wgslsmith_div_f32(660f, arg_2.e), func_4(u_input.a.yz, Struct_5(1i, arg_2, Struct_2(-111f, arg_0))), false, true), vec4<bool>(true, true, !any(arg_2.b.d), true)));
    global1 = array<vec4<bool>, 21>();
    let var_1 = _wgslsmith_clamp_vec3_i32(vec3<i32>(abs(func_2(~arg_2.c, vec3<i32>(1i, arg_1, arg_2.a), !vec3<bool>(global0[_wgslsmith_index_u32(arg_2.c, 12u)], true, true)).a), _wgslsmith_add_i32(1i, arg_1), ~_wgslsmith_dot_vec3_i32(~vec3<i32>(arg_1, u_input.b.x, u_input.a.x), reverseBits(vec3<i32>(10446i, arg_1, arg_1)))), u_input.b.wwx, vec3<i32>(-2147483647i, _wgslsmith_add_i32(firstTrailingBit(_wgslsmith_dot_vec4_i32(u_input.b, vec4<i32>(0i, -17306i, 9976i, arg_2.a))), -reverseBits(u_input.b.x)), ~22872i));
    global0 = array<bool, 12>();
    let var_2 = arg_2.c;
    return Struct_3(Struct_2(_wgslsmith_f_op_f32(-arg_2.e), _wgslsmith_f_op_f32(-672f - func_2(arg_3, vec3<i32>(arg_2.a, 0i, var_1.x), arg_2.b.d.wwz).e)), ((-1869f >= _wgslsmith_f_op_f32(-var_0.b)) != true) & false, func_2(40390u, firstLeadingBit(var_1) | u_input.b.xyz, vec3<bool>(true, false, true)).b);
}

fn func_5(arg_0: vec3<i32>, arg_1: Struct_4, arg_2: Struct_3) -> Struct_5 {
    global0 = array<bool, 12>();
    var var_0 = -1170f;
    var_0 = arg_2.c.b;
    let var_1 = func_2(countOneBits(~abs(~arg_1.b.a)), abs(countOneBits(~arg_0 >> (_wgslsmith_mod_vec3_u32(vec3<u32>(20291u, 0u, 19780u), vec3<u32>(arg_1.c, 4294967295u, arg_1.c)) % vec3<u32>(32u)))), select(arg_2.c.d.xwz, select(select(arg_1.b.d.zyw, vec3<bool>(false, arg_2.b, global0[_wgslsmith_index_u32(1u, 12u)]), arg_2.c.d.xwx), arg_1.b.d.ywx, arg_1.b.d.wzz), arg_1.d));
    var var_2 = _wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_2.c.b, -135f, var_1.b.b), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.b.b, arg_1.b.b, var_1.e) + _wgslsmith_div_vec3_f32(vec3<f32>(var_1.b.b, arg_1.b.b, 744f), vec3<f32>(arg_1.b.b, var_1.b.b, 1459f))), vec3<f32>(var_1.b.b, arg_1.b.b, _wgslsmith_f_op_f32(min(843f, 720f)))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(round(arg_1.e)), _wgslsmith_div_f32(arg_1.b.b, -595f), arg_2.a.a) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-704f, -505f, 2042f) + vec3<f32>(-500f, -167f, 110f)))))));
    return Struct_5(arg_1.a, func_2(func_2(arg_1.c, arg_0, vec3<bool>(global0[_wgslsmith_index_u32(1383u, 12u)], any(arg_1.b.d.yxz), true)).c, select(vec3<i32>(var_1.a, u_input.b.x, 683i), _wgslsmith_mod_vec3_i32(vec3<i32>(-1i, -5276i, 22299i), ~u_input.a.ywz), !(!vec3<bool>(arg_1.b.d.x, var_1.d, arg_1.d))), !vec3<bool>(true, true, !arg_2.c.d.x)), arg_2.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(vec3<i32>(u_input.a.x, u_input.a.x, countOneBits(1i)) & _wgslsmith_add_vec3_i32(vec3<i32>(min(u_input.b.x, u_input.b.x), -1i, 11670i), vec3<i32>(u_input.b.x, 10071i, u_input.a.x) << (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u))), Struct_4(u_input.b.x, Struct_1(~firstLeadingBit(0u), -801f, false, vec4<bool>(any(vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 12u)], global0[_wgslsmith_index_u32(1u, 12u)], true)), all(vec3<bool>(false, global0[_wgslsmith_index_u32(7091u, 12u)], global0[_wgslsmith_index_u32(0u, 12u)])), global0[_wgslsmith_index_u32(~23103u, 12u)], 16568i >= u_input.a.x)), 1u, true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1437f + _wgslsmith_f_op_f32(trunc(285f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * 143f)))), func_1(-1560f, -u_input.a.x, Struct_4(u_input.a.x, Struct_1(~31102u, _wgslsmith_f_op_f32(f32(-1f) * -177f), global0[_wgslsmith_index_u32(~0u, 12u)], global1[_wgslsmith_index_u32(~5614u, 21u)]), 17422u, !(!global0[_wgslsmith_index_u32(4617u, 12u)]), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-139f, -267f)) - -1000f)), firstLeadingBit(1u)));
    var var_1 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_0.c.b)) - var_0.b.e), var_0.c.a);
    var var_2 = firstTrailingBit(u_input.b.wyy);
    let var_3 = _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(var_0.b.b.a, _wgslsmith_clamp_u32(var_0.b.c, 1u, ~10121u), var_0.b.c), 1u, 1u, 0u), abs(vec4<u32>(47908u, var_0.b.c >> (var_0.b.c % 32u), ~var_0.b.c, 4294967295u) | ~_wgslsmith_mult_vec4_u32(vec4<u32>(var_0.b.b.a, var_0.b.c, 81121u, var_0.b.b.a), vec4<u32>(1u, var_0.b.c, 4294967295u, 1u))));
    var var_4 = min(countOneBits(firstLeadingBit(_wgslsmith_div_vec4_u32(vec4<u32>(18070u, 36u, var_3, 91079u), abs(vec4<u32>(38718u, 53633u, 0u, 1u))))), ~(vec4<u32>(var_0.b.c, var_3, 11086u, var_0.b.c) >> (_wgslsmith_clamp_vec4_u32(vec4<u32>(117577u, 0u, var_0.b.c, 30584u), vec4<u32>(8747u, var_0.b.b.a, var_0.b.c, 13424u), vec4<u32>(var_0.b.c, 52404u, 1u, 57967u)) % vec4<u32>(32u))) & firstTrailingBit(vec4<u32>(var_0.b.c, ~10397u, var_0.b.b.a, 13051u)));
    var var_5 = func_1(-216f, var_2.x, Struct_4(~_wgslsmith_dot_vec2_i32(vec2<i32>(var_2.x, -35321i), u_input.b.wz), Struct_1(var_3, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c.b) - -1869f), var_0.b.b.c, vec4<bool>(any(vec2<bool>(var_0.b.b.c, global0[_wgslsmith_index_u32(var_4.x, 12u)])), global0[_wgslsmith_index_u32(func_1(350f, 2147483647i, var_0.b, 1914u).c.a, 12u)], var_0.c.b > -961f, false)), var_3, var_0.b.b.c, _wgslsmith_div_f32(var_0.b.b.b, var_1.b)), var_3).a;
    let var_6 = -var_0.b.a;
    var var_7 = func_5(vec3<i32>(var_6, i32(-1i) * -abs(var_6), func_2(1u, vec3<i32>(-1i) * -u_input.a.zwx, var_0.b.b.d.wxx).a), func_2(firstTrailingBit(_wgslsmith_div_u32(var_0.b.b.a, 1u)), ~(~(~vec3<i32>(var_2.x, 1i, var_6))), vec3<bool>(any(select(vec2<bool>(var_0.b.d, true), var_0.b.b.d.wz, var_0.b.b.d.zx)), false, true)), Struct_3(Struct_2(_wgslsmith_f_op_f32(-var_1.b), -435f), !global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~115835u, _wgslsmith_mult_u32(5453u, var_0.b.c), 4294967295u), 12u)], var_0.b.b));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(_wgslsmith_sub_i32(-6555i, min(-u_input.b.x, u_input.b.x))), 0u);
}

