struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: vec2<u32>,
    d: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: array<u32, 19>;

var<private> global2: array<i32, 15> = array<i32, 15>(-1863i, 1i, i32(-2147483648), -1i, -31197i, -5481i, -25776i, -396i, 0i, 0i, -44057i, 2147483647i, -24895i, -1i, 2147483647i);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: f32, arg_1: bool) -> u32 {
    let var_0 = Struct_1(~(countOneBits(_wgslsmith_clamp_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 19u)], 19u)], global1[_wgslsmith_index_u32(u_input.a, 19u)], 21350u, global1[_wgslsmith_index_u32(42085u, 19u)]), vec4<u32>(u_input.a, 1410u, 77875u, 4294967295u), vec4<u32>(36827u, 1u, global1[_wgslsmith_index_u32(u_input.a, 19u)], 14587u))) & vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(20659u, 19u)], 19u)], _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 0u), vec2<u32>(1u, u_input.a)), global1[_wgslsmith_index_u32(u_input.a & 0u, 19u)], _wgslsmith_mod_u32(65419u, u_input.a))), true, abs(~(~vec2<u32>(u_input.a, 37961u))) >> (~(~(~vec2<u32>(global1[_wgslsmith_index_u32(67279u, 19u)], u_input.a))) % vec2<u32>(32u)), _wgslsmith_add_u32(countOneBits(_wgslsmith_dot_vec4_u32(~vec4<u32>(6203u, u_input.a, u_input.a, 30560u), vec4<u32>(u_input.a, 0u, 12681u, 0u))), 4294967295u));
    let var_1 = 1i;
    global1 = array<u32, 19>();
    global2 = array<i32, 15>();
    let var_2 = Struct_1(firstTrailingBit(~_wgslsmith_sub_vec4_u32(countOneBits(var_0.a), select(var_0.a, vec4<u32>(global1[_wgslsmith_index_u32(u_input.a, 19u)], 0u, 2006u, var_0.d), true))), true, ~vec2<u32>(_wgslsmith_mult_u32(~32804u, abs(0u)), ~(19905u << (1u % 32u))), ~1u);
    return var_2.c.x;
}

fn func_2(arg_0: Struct_1, arg_1: f32) -> Struct_1 {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(841f - -1653f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1, arg_1)), 1486f);
    let var_1 = 1130f;
    global1 = array<u32, 19>();
    var var_2 = select(select(vec4<bool>(select(42871i, global2[_wgslsmith_index_u32(u_input.a, 15u)], true) <= abs(global2[_wgslsmith_index_u32(u_input.a, 15u)]), all(vec3<bool>(arg_0.b, true, arg_0.b)), all(select(vec4<bool>(global0.x, false, global0.x, false), vec4<bool>(true, false, false, false), vec4<bool>(arg_0.b, global0.x, global0.x, false))), global0.x), vec4<bool>(arg_0.b, any(vec4<bool>(arg_0.b, false, true, true)) & global0.x, false, !(var_0.x >= arg_1)), global0.x), !select(select(vec4<bool>(arg_0.b, true, false, global0.x), vec4<bool>(global0.x, true, true, arg_0.b), !arg_0.b), !(!vec4<bool>(arg_0.b, global0.x, true, arg_0.b)), (global1[_wgslsmith_index_u32(arg_0.d, 19u)] >= 29525u) && false), true);
    let var_3 = arg_0;
    return Struct_1(arg_0.a | vec4<u32>(arg_0.d, ~func_3(641f, false), global1[_wgslsmith_index_u32(94115u, 19u)], _wgslsmith_dot_vec2_u32(var_3.a.xy ^ vec2<u32>(var_3.d, 1u), vec2<u32>(0u, 1u))), var_2.x, arg_0.a.xy, func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1 - var_0.x) + _wgslsmith_f_op_f32(max(arg_1, arg_1)))), arg_0.b));
}

fn func_1(arg_0: vec3<bool>, arg_1: Struct_1) -> vec3<bool> {
    var var_0 = func_2(arg_1, 206f);
    let var_1 = Struct_1(arg_1.a, var_0.b, vec2<u32>(~func_2(func_2(arg_1, -702f), -693f).a.x, func_2(func_2(arg_1, -718f), 1564f).d), ~u_input.a);
    var var_2 = _wgslsmith_f_op_f32(550f + _wgslsmith_f_op_f32(abs(-205f)));
    var var_3 = func_2(arg_1, _wgslsmith_f_op_f32(-359f * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, -193f) + _wgslsmith_f_op_f32(round(1083f)))))));
    var var_4 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-489f, _wgslsmith_f_op_f32(abs(-1356f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1661f, -1303f)) * _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(886f, 454f), vec2<f32>(590f, -192f)) - vec2<f32>(601f, 395f)), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(722f, -314f)))))))));
    return arg_0;
}

fn func_4(arg_0: u32, arg_1: u32, arg_2: bool) -> vec4<i32> {
    var var_0 = _wgslsmith_mult_i32(global2[_wgslsmith_index_u32(1u, 15u)], ~0i);
    global1 = array<u32, 19>();
    let var_1 = func_2(Struct_1(select(vec4<u32>(7438u, 32429u, 0u, 1u) << ((vec4<u32>(1u, 12729u, 4294967295u, arg_1) >> (vec4<u32>(19717u, 64200u, arg_1, global1[_wgslsmith_index_u32(u_input.a, 19u)]) % vec4<u32>(32u))) % vec4<u32>(32u)), vec4<u32>(u_input.a, 44568u, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0, 1u, global1[_wgslsmith_index_u32(4294967295u, 19u)], u_input.a), vec4<u32>(28893u, 43976u, 11777u, 139177u)), 0u), arg_2), arg_2, ~_wgslsmith_mod_vec2_u32(~vec2<u32>(0u, u_input.a), firstTrailingBit(vec2<u32>(22292u, 0u))), ~global1[_wgslsmith_index_u32(~61364u, 19u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1f, _wgslsmith_div_f32(-1018f, 1082f), all(global0.xz)))));
    var_0 = -(~abs(_wgslsmith_div_i32(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(0u, global1[_wgslsmith_index_u32(54504u, 19u)]), 15u)], global2[_wgslsmith_index_u32(~71553u, 15u)])));
    var var_2 = func_2(var_1, _wgslsmith_f_op_f32(-361f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-822f - _wgslsmith_div_f32(-960f, 1450f)) - -1677f)));
    return countOneBits(vec4<i32>(1i, -2147483647i, -535i, global2[_wgslsmith_index_u32(~4294967295u, 15u)] | global2[_wgslsmith_index_u32(arg_1, 15u)]) | -countOneBits(-vec4<i32>(global2[_wgslsmith_index_u32(arg_0, 15u)], global2[_wgslsmith_index_u32(u_input.a, 15u)], global2[_wgslsmith_index_u32(arg_0, 15u)], -1i)));
}

fn func_5(arg_0: vec2<bool>, arg_1: vec4<i32>) -> bool {
    var var_0 = arg_0.x;
    global0 = vec3<bool>(!global0.x, any(vec2<bool>(global0.x, arg_0.x)), -countOneBits(arg_1.x) <= min(arg_1.x, 56195i));
    global0 = vec3<bool>(57073u >= _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 24083u), select(vec2<u32>(0u, u_input.a), vec2<u32>(65324u, 0u), vec2<bool>(true, global0.x))), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a, global1[_wgslsmith_index_u32(1u, 19u)], 0u, global1[_wgslsmith_index_u32(155892u, 19u)]), countOneBits(vec4<u32>(0u, global1[_wgslsmith_index_u32(1u, 19u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 19u)], 19u)], u_input.a))), 19u)]), func_2(func_2(func_2(Struct_1(vec4<u32>(4294967295u, 0u, 0u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 19u)], 19u)]), false, vec2<u32>(u_input.a, 18052u), u_input.a), 748f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-110f, -823f)) - _wgslsmith_f_op_f32(1755f - -1109f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -807f))))).b, false);
    var var_1 = -(i32(-1i) * -func_4(4294967295u, ~u_input.a, false).x);
    global1 = array<u32, 19>();
    return !(true || arg_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(func_5(select(global0.xy, !global0.yy, select(select(vec2<bool>(global0.x, false), global0.zx, vec2<bool>(global0.x, false)), vec2<bool>(true, true), !global0.x)), func_4(u_input.a, 4294967295u | (114908u ^ global1[_wgslsmith_index_u32(1256u, 19u)]), any(func_1(vec3<bool>(true, true, global0.x), Struct_1(vec4<u32>(80643u, 8541u, 64866u, 0u), global0.x, vec2<u32>(17684u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(42401u, 19u)], 19u)]), 10714u))))), true);
    var_0 = !global0.zz;
    let var_1 = ~(~vec2<u32>(4294967295u, 71782u) >> (max(~vec2<u32>(4294967295u, global1[_wgslsmith_index_u32(4294967295u, 19u)]), vec2<u32>(global1[_wgslsmith_index_u32(23244u, 19u)], 72551u)) % vec2<u32>(32u))) << (vec2<u32>(34994u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, countOneBits(global1[_wgslsmith_index_u32(9017u, 19u)]), ~global1[_wgslsmith_index_u32(0u, 19u)], ~u_input.a), firstLeadingBit(~vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(69906u, 19u)], 19u)], global1[_wgslsmith_index_u32(u_input.a, 19u)], 1u, 0u)))) % vec2<u32>(32u));
    let var_2 = Struct_1(~(~_wgslsmith_add_vec4_u32(~vec4<u32>(0u, 1u, 35056u, 32371u), vec4<u32>(0u, global1[_wgslsmith_index_u32(71828u, 19u)], 1u, 17767u))), global0.x, ~_wgslsmith_mult_vec2_u32(vec2<u32>(min(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(30356u, 19u)], 19u)], 4294967295u), _wgslsmith_div_u32(var_1.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 19u)], 19u)])), firstTrailingBit(vec2<u32>(58298u, 28876u)) << (~var_1 % vec2<u32>(32u))), 4294967295u);
    let var_3 = 75798u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_i32(global2[_wgslsmith_index_u32(~80983u, 15u)], i32(-1i) * -global2[_wgslsmith_index_u32(u_input.a, 15u)]), ~select(var_2.a, func_2(var_2, _wgslsmith_f_op_f32(1464f - 983f)).a, func_2(var_2, _wgslsmith_f_op_f32(round(300f))).b));
}

