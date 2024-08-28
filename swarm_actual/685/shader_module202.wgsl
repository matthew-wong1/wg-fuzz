struct Struct_1 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(1u, 0u, 4294967295u);

var<private> global1: u32 = 4294967295u;

var<private> global2: vec3<bool> = vec3<bool>(true, false, false);

var<private> global3: array<bool, 21>;

var<private> global4: array<f32, 21> = array<f32, 21>(1636f, -1064f, -1335f, 685f, 571f, 843f, 231f, -1000f, -491f, -915f, -1106f, -1568f, -1944f, -875f, -884f, -1190f, -234f, -2003f, -1779f, 215f, -177f);

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: Struct_1) -> i32 {
    global3 = array<bool, 21>();
    var var_0 = _wgslsmith_add_i32(arg_1.a.x ^ u_input.a.x, 43598i);
    let var_1 = _wgslsmith_add_vec3_i32(vec3<i32>(u_input.a.x, _wgslsmith_dot_vec4_i32(arg_1.a, arg_1.a) >> (~global0.x % 32u), -min(0i, arg_2.a.x)), vec3<i32>(_wgslsmith_sub_i32(i32(-1i) * -74343i, arg_1.a.x), ~(arg_1.a.x | u_input.b.x), ~abs(arg_2.a.x))) | ~vec3<i32>(_wgslsmith_dot_vec4_i32(arg_2.a, ~arg_1.a), 48777i & (arg_2.a.x & arg_2.a.x), -_wgslsmith_mod_i32(arg_1.a.x, u_input.a.x));
    global3 = array<bool, 21>();
    global1 = u_input.c;
    return arg_1.a.x;
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_1) -> f32 {
    global4 = array<f32, 21>();
    global1 = _wgslsmith_dot_vec2_u32(abs(global0.xx), global0.yy);
    let var_0 = false;
    global2 = select(select(!select(vec3<bool>(true, false, true), vec3<bool>(global2.x, true, global3[_wgslsmith_index_u32(global0.x, 21u)]), vec3<bool>(var_0, true, global2.x)), select(vec3<bool>(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global0.x, u_input.c), vec2<u32>(u_input.c, 11410u)), 21u)], true, var_0), vec3<bool>(true, var_0, !var_0), true), !(!(!vec3<bool>(global2.x, true, var_0)))), vec3<bool>(global2.x, true, true | (_wgslsmith_f_op_f32(346f - -1426f) > _wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(u_input.c, 21u)] + -3014f))), global3[_wgslsmith_index_u32(1u, 21u)]);
    var var_1 = -func_1(!vec4<bool>(true, true, var_0, -1551i < u_input.b.x), Struct_1(arg_0), Struct_1(arg_1.a));
    return _wgslsmith_f_op_f32(sign(global4[_wgslsmith_index_u32(20316u, 21u)]));
}

fn func_2(arg_0: f32, arg_1: bool) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1328f * 1588f) * _wgslsmith_div_f32(468f, global4[_wgslsmith_index_u32(global0.x, 21u)])), _wgslsmith_f_op_f32(func_3(_wgslsmith_sub_vec4_i32(vec4<i32>(-11162i, u_input.a.x, u_input.a.x, u_input.a.x), vec4<i32>(u_input.b.x, u_input.a.x, u_input.a.x, 34194i)), Struct_1(vec4<i32>(-12844i, u_input.b.x, u_input.a.x, 30853i)))), arg_0, _wgslsmith_div_f32(1582f, arg_0)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_0, arg_0, -885f, 473f), vec4<f32>(-1099f, global4[_wgslsmith_index_u32(global0.x, 21u)], arg_0, 952f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global4[_wgslsmith_index_u32(global0.x, 21u)], global4[_wgslsmith_index_u32(u_input.c, 21u)], global4[_wgslsmith_index_u32(5999u, 21u)], -1000f))) * _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1000f, -267f, 1451f, 470f), vec4<f32>(global4[_wgslsmith_index_u32(43349u, 21u)], arg_0, global4[_wgslsmith_index_u32(u_input.d.x, 21u)], arg_0), false)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global4[_wgslsmith_index_u32(48317u, 21u)], global4[_wgslsmith_index_u32(1u, 21u)], 684f, arg_0), vec4<f32>(-1634f, 273f, global4[_wgslsmith_index_u32(134458u, 21u)], arg_0), global3[_wgslsmith_index_u32(global0.x, 21u)])))))));
    let var_1 = ~32632u < ~reverseBits(~u_input.d.x);
    global2 = select(!vec3<bool>(all(vec4<bool>(global3[_wgslsmith_index_u32(4294967295u, 21u)], true, global3[_wgslsmith_index_u32(64826u, 21u)], true)) & true, true, any(vec3<bool>(arg_1, false, arg_1)) && true), select(vec3<bool>(true & !global2.x, 1i != (29068i >> (u_input.d.x % 32u)), any(select(global2.zz, vec2<bool>(global3[_wgslsmith_index_u32(global0.x, 21u)], global2.x), vec2<bool>(false, global3[_wgslsmith_index_u32(global0.x, 21u)])))), vec3<bool>(any(select(vec3<bool>(false, false, var_1), vec3<bool>(false, var_1, global3[_wgslsmith_index_u32(global0.x, 21u)]), arg_1)), true, false), vec3<bool>(true, any(!vec3<bool>(true, arg_1, global2.x)), select(true, true, arg_1))), global2.x);
    global1 = u_input.c;
    global1 = 4294967295u;
    return Struct_1(vec4<i32>(u_input.b.x, 57484i, _wgslsmith_dot_vec4_i32((vec4<i32>(2147483647i, u_input.b.x, 1i, -2147483647i) << (u_input.d % vec4<u32>(32u))) & _wgslsmith_mult_vec4_i32(vec4<i32>(0i, -9418i, u_input.a.x, -2147483647i), vec4<i32>(-13609i, -11492i, 14895i, 17182i)), abs(~vec4<i32>(-1i, -1i, u_input.b.x, u_input.a.x))), 2147483647i ^ (_wgslsmith_mult_i32(-2147483647i, u_input.a.x) << (firstLeadingBit(global0.x) % 32u))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<i32>) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(538f - _wgslsmith_f_op_f32(func_3(arg_2 ^ arg_2, Struct_1(vec4<i32>(-12245i, -85188i, -37380i, arg_2.x)))))))));
    var_0 = 1213f;
    let var_1 = !select(vec2<bool>(false | global2.x, global2.x), vec2<bool>(true && global3[_wgslsmith_index_u32(3043u, 21u)], _wgslsmith_f_op_f32(exp2(global4[_wgslsmith_index_u32(global0.x, 21u)])) > _wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(u_input.d.x, 21u)])), vec2<bool>(any(vec2<bool>(true, global2.x)), true));
    global3 = array<bool, 21>();
    global3 = array<bool, 21>();
    return _wgslsmith_dot_vec3_i32(-vec3<i32>(arg_1.a.x, arg_0.a.x, _wgslsmith_div_i32(8240i & arg_0.a.x, arg_0.a.x)), min(arg_0.a.yzz, arg_1.a.wxz));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<f32, 21>();
    global0 = countOneBits(vec3<u32>(firstLeadingBit(680u), u_input.d.x, ~global0.x & select(4294967295u, ~36554u, global2.x)));
    let var_0 = Struct_1(vec4<i32>(func_1(vec4<bool>(false, true, false, global3[_wgslsmith_index_u32(12003u, 21u)]), Struct_1(vec4<i32>(u_input.b.x, -22790i, u_input.b.x, u_input.a.x)), Struct_1(vec4<i32>(u_input.b.x, -39721i, 26030i, u_input.b.x))) & u_input.a.x, _wgslsmith_div_i32(_wgslsmith_add_i32(u_input.a.x, u_input.a.x), u_input.b.x), func_4(func_2(global4[_wgslsmith_index_u32(u_input.d.x, 21u)], false), func_2(global4[_wgslsmith_index_u32(56385u, 21u)], false), _wgslsmith_add_vec4_i32(vec4<i32>(62099i, u_input.b.x, -102591i, u_input.b.x), vec4<i32>(517i, u_input.b.x, u_input.b.x, u_input.a.x))), func_4(Struct_1(vec4<i32>(u_input.b.x, 0i, u_input.b.x, u_input.b.x)), func_2(global4[_wgslsmith_index_u32(4294967295u, 21u)], global3[_wgslsmith_index_u32(4294967295u, 21u)]), vec4<i32>(u_input.b.x, -77223i, u_input.a.x, u_input.b.x))) & max(firstLeadingBit(vec4<i32>(u_input.b.x, u_input.a.x, u_input.a.x, 28415i)), abs(firstTrailingBit(vec4<i32>(u_input.a.x, u_input.a.x, 15559i, -14561i)))));
    let var_1 = -vec3<i32>(countOneBits(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, 1i, u_input.b.x, var_0.a.x), var_0.a)), 1i, func_2(780f, !global2.x).a.x) >> (_wgslsmith_mult_vec3_u32(u_input.d.xxx, countOneBits(select(min(u_input.d.xxw, vec3<u32>(1u, 4294967295u, u_input.d.x)), vec3<u32>(global0.x, 20611u, 28868u), false || global2.x))) % vec3<u32>(32u));
    let var_2 = Struct_1(select(select(vec4<i32>(abs(u_input.a.x), var_1.x >> (u_input.c % 32u), -u_input.b.x, 1i), reverseBits(var_0.a), true), var_0.a, global4[_wgslsmith_index_u32(global0.x, 21u)] > -1712f));
    var var_3 = Struct_1(-vec4<i32>((var_2.a.x ^ var_2.a.x) << (global0.x % 32u), var_1.x, _wgslsmith_mod_i32(var_1.x, firstLeadingBit(u_input.a.x)), u_input.a.x));
    var var_4 = func_1(vec4<bool>(global0.x < _wgslsmith_dot_vec3_u32(u_input.d.xww, u_input.d.wzx), select(true, any(select(vec2<bool>(false, true), global2.yz, vec2<bool>(global3[_wgslsmith_index_u32(8332u, 21u)], global2.x))), global3[_wgslsmith_index_u32(~u_input.c, 21u)]), any(!select(vec3<bool>(false, true, false), vec3<bool>(global3[_wgslsmith_index_u32(37526u, 21u)], false, global2.x), vec3<bool>(true, global2.x, true))), ~(~global0.x) != u_input.c), Struct_1(-vec4<i32>(~(-70767i), var_3.a.x << (u_input.c % 32u), max(-1i, -11649i), _wgslsmith_mult_i32(var_2.a.x, -11971i))), Struct_1(vec4<i32>(var_0.a.x, max(-976i, ~var_0.a.x), -10100i, -21938i)));
    let var_5 = Struct_1(~var_2.a);
    let x = u_input.a;
    s_output = StorageBuffer(-(~vec3<i32>(-var_1.x, countOneBits(2147483647i), ~var_5.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -2013f), _wgslsmith_f_op_f32(-138f + global4[_wgslsmith_index_u32(8708u, 21u)])))));
}

