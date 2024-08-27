struct Struct_1 {
    a: u32,
    b: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: f32,
    b: Struct_1,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<f32>,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: i32;

var<private> global2: array<vec4<u32>, 1>;

var<private> global3: u32 = 1u;

var<private> global4: array<vec2<i32>, 13> = array<vec2<i32>, 13>(vec2<i32>(-15360i, -10791i), vec2<i32>(-25247i, 1i), vec2<i32>(2147483647i, 1416i), vec2<i32>(0i, -35248i), vec2<i32>(-1i, 1i), vec2<i32>(i32(-2147483648), 0i), vec2<i32>(-36366i, 0i), vec2<i32>(-52254i, -55490i), vec2<i32>(-1i, 14755i), vec2<i32>(1i, 1i), vec2<i32>(-10540i, -1i), vec2<i32>(0i, 55869i), vec2<i32>(0i, -64263i));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_1(arg_0: vec3<bool>) -> i32 {
    let var_0 = -_wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(abs(vec4<i32>(-2147483647i, 2147483647i, u_input.b.x, -2147483647i)), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.b.x, 1i, -37450i, -700i), vec4<i32>(1i, -7686i, 2147483647i, u_input.b.x))), firstTrailingBit(vec4<i32>(2921i, -1i, -22033i, u_input.b.x))) | (vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, 11726i, -311i), vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x)) & ~u_input.b.x, countOneBits(-2147483647i), u_input.b.x, u_input.b.x) << (vec4<u32>(_wgslsmith_add_u32(u_input.a, _wgslsmith_sub_u32(u_input.a, u_input.a)), u_input.a, 1u << (~u_input.a % 32u), 1u) % vec4<u32>(32u)));
    let var_1 = vec3<u32>(u_input.a, _wgslsmith_mult_u32(u_input.a, 1u), 4294967295u);
    let var_2 = -501f;
    global0 = select(!select(select(vec4<bool>(false, arg_0.x, false, arg_0.x), select(vec4<bool>(global0.x, false, true, true), vec4<bool>(global0.x, false, true, global0.x), vec4<bool>(false, true, true, global0.x)), arg_0.x), !(!vec4<bool>(arg_0.x, arg_0.x, true, true)), all(!vec4<bool>(true, arg_0.x, global0.x, false))), vec4<bool>(true, !(global0.x & arg_0.x) & true, false, false), select(vec4<bool>(true, true, true, !(true || arg_0.x)), vec4<bool>(arg_0.x, global0.x, true, false), true));
    global2 = array<vec4<u32>, 1>();
    return u_input.b.x;
}

fn func_3() -> bool {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-384f - 1055f)))) - _wgslsmith_f_op_f32(trunc(-186f))), 1199f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-241f - -221f) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(1588f, -1666f) * 212f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(114f, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-391f, -1000f))), global0.x))));
    global3 = ~_wgslsmith_mod_u32(u_input.a, u_input.a);
    let var_1 = Struct_3(Struct_1(abs(u_input.a), abs(max(~vec3<u32>(83913u, u_input.a, u_input.a), _wgslsmith_add_vec3_u32(vec3<u32>(0u, 79782u, 4294967295u), vec3<u32>(u_input.a, 8892u, 0u))))));
    var var_2 = var_1.a;
    let var_3 = 1u;
    return true;
}

fn func_2(arg_0: f32, arg_1: vec4<i32>, arg_2: Struct_3) -> Struct_1 {
    let var_0 = Struct_4(Struct_3(Struct_1(~(~0u), ~(~arg_2.a.b))));
    global3 = u_input.a;
    global0 = vec4<bool>(all(vec3<bool>(true, false, global0.x)), !all(vec4<bool>(arg_1.x >= arg_1.x, func_3(), true & global0.x, true)), global0.x, false);
    let var_1 = select(global0.yx, vec2<bool>(!(!(!global0.x)), select(global0.x, ~u_input.a >= var_0.a.a.b.x, global0.x)), any(vec2<bool>(_wgslsmith_f_op_f32(arg_0 + -1075f) > 1000f, select(all(global0.wx), global0.x, global0.x))));
    let var_2 = arg_2;
    return Struct_1(var_0.a.a.a, ~(~(~(var_0.a.a.b | vec3<u32>(var_2.a.b.x, 1u, 2459u)))));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: vec4<bool>) -> Struct_2 {
    var var_0 = !(!select(vec4<bool>(arg_2.x & false, true, -14666i >= u_input.b.x, true), !vec4<bool>(global0.x, false, arg_2.x, arg_1.x), false));
    let var_1 = arg_1.zz;
    let var_2 = arg_0;
    var_0 = vec4<bool>(all(select(arg_2, arg_2, !arg_1)), true, global0.x, true);
    global4 = array<vec2<i32>, 13>();
    return Struct_2(func_2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-766f, -1322f)))), vec4<i32>(countOneBits(u_input.b.x), _wgslsmith_sub_i32(1i, u_input.b.x), _wgslsmith_dot_vec2_i32(~u_input.b, global4[_wgslsmith_index_u32(~u_input.a, 13u)]), i32(-1i) * -55099i), Struct_3(Struct_1(var_2.a ^ u_input.a, ~var_2.b))), u_input.b.x, Struct_1(_wgslsmith_sub_u32(1u, arg_0.b.x), vec3<u32>(_wgslsmith_clamp_u32(0u, 1u, var_2.a) << (_wgslsmith_dot_vec4_u32(global2[_wgslsmith_index_u32(57313u, 1u)], global2[_wgslsmith_index_u32(var_2.b.x, 1u)]) % 32u), ~20813u | (31261u ^ arg_0.b.x), 1u)));
}

fn func_5(arg_0: Struct_2) -> Struct_4 {
    var var_0 = Struct_4(Struct_3(func_2(_wgslsmith_f_op_f32(ceil(1f)), _wgslsmith_clamp_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(arg_0.b, arg_0.b, 31221i, -22027i), vec4<i32>(arg_0.b, arg_0.b, 18039i, arg_0.b)), vec4<i32>(0i, -44185i, arg_0.b, u_input.b.x), -vec4<i32>(u_input.b.x, u_input.b.x, 2147483647i, arg_0.b)), Struct_3(Struct_1(u_input.a, vec3<u32>(arg_0.c.a, 81459u, 72928u))))));
    let var_1 = func_4(func_4(func_2(1077f, reverseBits(select(vec4<i32>(42809i, 15512i, u_input.b.x, 30773i), vec4<i32>(-2147483647i, arg_0.b, u_input.b.x, 2147483647i), vec4<bool>(global0.x, global0.x, global0.x, false))), Struct_3(Struct_1(u_input.a, vec3<u32>(var_0.a.a.b.x, 54526u, 46613u)))), vec4<bool>(!select(true, false, global0.x), true, global0.x, global0.x), !(!select(vec4<bool>(global0.x, false, false, false), vec4<bool>(global0.x, true, false, global0.x), vec4<bool>(false, true, false, true)))).a, vec4<bool>(false, global0.x, true, any(select(global0.wz, !global0.yz, false))), !select(select(!vec4<bool>(false, false, false, global0.x), !vec4<bool>(false, true, global0.x, global0.x), vec4<bool>(global0.x, global0.x, false, false)), vec4<bool>(func_3(), !global0.x, global0.x, false), select(select(vec4<bool>(global0.x, global0.x, true, false), vec4<bool>(true, false, global0.x, true), true), !vec4<bool>(true, false, false, global0.x), vec4<bool>(global0.x, true, global0.x, true))));
    global0 = select(vec4<bool>(global0.x, global0.x, !any(vec3<bool>(global0.x, global0.x, global0.x)), -2094f < _wgslsmith_f_op_f32(select(-995f, -181f, global0.x))), vec4<bool>(false, all(select(global0.yyz, vec3<bool>(true, true, true), select(global0.zyy, global0.xyw, false))), global0.x, global0.x), func_4(func_4(Struct_1(1u, vec3<u32>(u_input.a, var_0.a.a.b.x, 51750u)), vec4<bool>(false, global0.x, true, false), vec4<bool>(false, global0.x, global0.x, global0.x)).c, vec4<bool>(true, all(vec4<bool>(false, global0.x, false, global0.x)), select(global0.x, global0.x, false), global0.x), vec4<bool>(true, false, all(global0.wx), func_3())).a.b.x >= ~_wgslsmith_sub_u32(_wgslsmith_sub_u32(4294967295u, 4294967295u), firstTrailingBit(var_0.a.a.a)));
    let var_2 = var_0.a.a.b;
    var_0 = Struct_4(Struct_3(Struct_1(var_2.x, ~select(vec3<u32>(arg_0.a.b.x, var_0.a.a.a, 0u), vec3<u32>(4294967295u, 4294967295u, 1u), global0.zzz))));
    return Struct_4(var_0.a);
}

fn func_6(arg_0: Struct_4, arg_1: f32, arg_2: Struct_4, arg_3: i32) -> StorageBuffer {
    let var_0 = func_4(arg_0.a.a, vec4<bool>(true, true, global0.x, _wgslsmith_add_u32(func_2(-1543f, vec4<i32>(u_input.b.x, u_input.b.x, -6728i, arg_3), arg_2.a).a, arg_2.a.a.a) >= 1u), !select(select(!vec4<bool>(true, global0.x, global0.x, true), select(vec4<bool>(false, global0.x, false, false), vec4<bool>(true, false, false, global0.x), vec4<bool>(false, global0.x, global0.x, global0.x)), select(vec4<bool>(false, true, true, true), vec4<bool>(global0.x, false, true, false), vec4<bool>(false, global0.x, false, true))), vec4<bool>(true, 18789i == u_input.b.x, true, global0.x || global0.x), true));
    let var_1 = vec2<bool>(true, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1, -1000f) * arg_1), -860f)) > -353f);
    let var_2 = Struct_5(404f, Struct_1(_wgslsmith_sub_u32(33811u, arg_0.a.a.b.x), _wgslsmith_add_vec3_u32(_wgslsmith_div_vec3_u32(var_0.a.b, firstLeadingBit(vec3<u32>(arg_2.a.a.b.x, 17163u, u_input.a))), vec3<u32>(arg_2.a.a.b.x, 2671u, arg_2.a.a.a) >> (_wgslsmith_add_vec3_u32(var_0.c.b, var_0.c.b) % vec3<u32>(32u)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, arg_1))))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-535f, 2491f), _wgslsmith_div_vec2_f32(vec2<f32>(1000f, 490f), vec2<f32>(arg_1, 839f))) - _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(-132f, 1617f) - vec2<f32>(arg_1, arg_1)))))));
    global1 = 15197i;
    var var_3 = Struct_3(func_4(Struct_1(var_2.b.b.x << (~u_input.a % 32u), vec3<u32>(~49041u, 38247u, min(u_input.a, 22772u))), !(!select(vec4<bool>(var_1.x, false, false, var_1.x), vec4<bool>(true, true, var_1.x, true), true)), select(vec4<bool>(any(vec3<bool>(global0.x, false, false)), func_3(), any(vec2<bool>(global0.x, false)), !global0.x), select(!vec4<bool>(false, global0.x, true, false), select(vec4<bool>(global0.x, true, var_1.x, true), vec4<bool>(var_1.x, var_1.x, false, global0.x), vec4<bool>(var_1.x, true, var_1.x, true)), vec4<bool>(false, false, global0.x, true)), all(!global0.wyx))).c);
    return StorageBuffer(reverseBits(select(_wgslsmith_sub_vec3_i32(~vec3<i32>(-14642i, u_input.b.x, 5696i), abs(vec3<i32>(var_0.b, 2147483647i, arg_3))), _wgslsmith_add_vec3_i32(vec3<i32>(var_0.b, var_0.b, 2147483647i), vec3<i32>(arg_3, u_input.b.x, 7627i)) << (firstLeadingBit(var_0.a.b) % vec3<u32>(32u)), _wgslsmith_sub_u32(u_input.a, 1u) > var_3.a.a)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-781f + var_2.c.x) - -869f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(var_2.c.x, 1202f, var_1.x)), _wgslsmith_f_op_f32(884f * 559f)), _wgslsmith_f_op_f32(var_2.c.x - 866f), var_2.a))), 1u, func_5(func_4(func_5(func_4(Struct_1(arg_0.a.a.b.x, vec3<u32>(arg_2.a.a.b.x, var_2.b.b.x, arg_0.a.a.a)), vec4<bool>(global0.x, global0.x, true, var_1.x), vec4<bool>(global0.x, var_1.x, true, false))).a.a, vec4<bool>(any(global0.yxz), global0.x, true, var_3.a.b.x > u_input.a), select(!vec4<bool>(true, var_1.x, var_1.x, global0.x), vec4<bool>(var_1.x, global0.x, false, false), var_1.x))).a.a.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-405f, 1f)), Struct_1(~(~(~u_input.a)), vec3<u32>(1u, u_input.a, _wgslsmith_add_u32(13279u, _wgslsmith_mod_u32(72947u, u_input.a)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-835f, -1136f) - _wgslsmith_div_vec2_f32(vec2<f32>(587f, -632f), vec2<f32>(1188f, 346f)))), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -973f), _wgslsmith_f_op_f32(max(1257f, 438f))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(791f, -690f), vec2<f32>(-521f, 1254f))))))));
    global2 = array<vec4<u32>, 1>();
    var var_1 = _wgslsmith_sub_vec2_i32(firstLeadingBit(u_input.b), -(u_input.b | u_input.b));
    global4 = array<vec2<i32>, 13>();
    var var_2 = ~countOneBits(_wgslsmith_sub_u32(36533u, _wgslsmith_sub_u32(~1u, ~u_input.a)));
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -507f), var_0.a, _wgslsmith_f_op_f32(ceil(var_0.a)));
    var_1 = vec2<i32>(~(~2147483647i), _wgslsmith_add_i32(func_1(vec3<bool>(global0.x, true, global0.x)), ~var_1.x));
    let x = u_input.a;
    s_output = func_6(func_5(func_4(func_2(_wgslsmith_f_op_f32(max(-1000f, 669f)), vec4<i32>(2147483647i, u_input.b.x, 2147483647i, 2147483647i), Struct_3(var_0.b)), select(vec4<bool>(global0.x, true, global0.x, false), !vec4<bool>(global0.x, global0.x, false, true), false), select(vec4<bool>(false, global0.x, false, false), vec4<bool>(global0.x, true, true, global0.x), true))), _wgslsmith_f_op_f32(-var_3.x), func_5(func_4(func_4(func_4(Struct_1(u_input.a, vec3<u32>(var_0.b.b.x, 13161u, var_0.b.b.x)), vec4<bool>(false, false, global0.x, true), vec4<bool>(global0.x, global0.x, global0.x, global0.x)).a, vec4<bool>(global0.x, true, false, global0.x), vec4<bool>(global0.x, global0.x, global0.x, global0.x)).c, vec4<bool>(select(global0.x, global0.x, global0.x), true, true, global0.x & global0.x), select(!vec4<bool>(false, false, global0.x, global0.x), vec4<bool>(true, false, false, global0.x), vec4<bool>(true, global0.x, true, global0.x)))), -((~var_1.x | -36258i) ^ ~(~var_1.x)));
}

