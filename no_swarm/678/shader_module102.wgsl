struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec4<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(-572f);

var<private> global1: array<f32, 21> = array<f32, 21>(-1000f, -360f, -1363f, -1376f, -215f, 1119f, 1642f, 762f, -928f, -340f, -854f, 621f, 161f, 2304f, -327f, -227f, 939f, 1550f, 1453f, -842f, 1000f);

var<private> global2: vec2<u32> = vec2<u32>(19937u, 12284u);

var<private> global3: Struct_1;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: i32, arg_1: Struct_1) -> bool {
    var var_0 = vec3<i32>(_wgslsmith_div_i32(_wgslsmith_mult_i32(_wgslsmith_add_i32(-2147483647i & arg_0, ~arg_0), u_input.c.x), ~arg_0), abs(-_wgslsmith_div_i32(min(-17983i, 64684i), i32(-1i) * -1i)), _wgslsmith_clamp_i32(u_input.c.x, -u_input.a.x, arg_0));
    var var_1 = var_0.zz;
    var var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(global3.a)))), _wgslsmith_f_op_f32(select(global3.a, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(-1000f, 1146f, false)), _wgslsmith_f_op_f32(f32(-1f) * -398f))), true))));
    let var_3 = vec3<bool>(true, true, all(select(vec4<bool>(all(vec4<bool>(true, true, false, false)), true, u_input.b.x < -2147483647i, false), select(vec4<bool>(true, true, false, false), select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, false), false), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true))));
    var var_4 = var_3.x;
    return false | all(select(select(select(var_3, vec3<bool>(var_3.x, var_3.x, var_3.x), var_3.x), var_3, all(var_3.yy)), select(vec3<bool>(true, true, true), var_3, !var_3.x), var_3));
}

fn func_2(arg_0: vec4<i32>, arg_1: u32, arg_2: Struct_1) -> vec4<f32> {
    var var_0 = select(!(!select(vec4<bool>(false, false, true, true), select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false)), vec4<bool>(false, false, false, false))), vec4<bool>(func_3(~arg_0.x, arg_2), all(!select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, true))), !all(select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, true))), true), select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true), false)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), _wgslsmith_div_f32(global0.a, _wgslsmith_div_f32(global0.a, 550f)) <= _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(723f, global1[_wgslsmith_index_u32(u_input.d.x, 21u)], true))))));
    global1 = array<f32, 21>();
    let var_1 = Struct_1(_wgslsmith_f_op_f32(round(global1[_wgslsmith_index_u32(abs(~u_input.d.x), 21u)])));
    let var_2 = var_1.a;
    var var_3 = arg_0.wxw;
    return vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_2, global0.a) * _wgslsmith_f_op_f32(ceil(-1641f)))) + _wgslsmith_f_op_f32(-var_2)), global0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(arg_2.a, 195f))))), 277f);
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: bool) -> Struct_1 {
    global0 = arg_2;
    global3 = arg_2;
    let var_0 = -vec4<i32>(~_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c.x, 71071i), vec2<i32>(-20794i, 15362i)), -firstTrailingBit(-2147483647i), -u_input.b.x, 1677i) & (vec4<i32>(0i, 0i, max(-31917i, max(u_input.c.x, u_input.b.x)), _wgslsmith_dot_vec2_i32(u_input.c.zz, u_input.a.yz)) | vec4<i32>(_wgslsmith_mod_i32(-2147483647i & u_input.b.x, u_input.c.x), u_input.b.x, _wgslsmith_mod_i32(_wgslsmith_add_i32(u_input.c.x, 0i), 1i), u_input.b.x));
    global1 = array<f32, 21>();
    global1 = array<f32, 21>();
    return arg_2;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<i32>) -> vec4<bool> {
    let var_0 = arg_1.a;
    let var_1 = u_input.d.yx;
    let var_2 = arg_0;
    global2 = select(vec2<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(~vec2<u32>(11862u, 0u), vec2<u32>(global2.x, 4294967295u)), var_1), reverseBits(4294967295u)), abs(vec2<u32>(~57844u, 12618u)), -44696i > -_wgslsmith_dot_vec2_i32(select(u_input.b.wy, vec2<i32>(arg_2.x, arg_2.x), false), _wgslsmith_clamp_vec2_i32(u_input.a.wz, arg_2, arg_2)));
    global0 = var_2;
    return !vec4<bool>(0u == _wgslsmith_mod_u32(33420u, _wgslsmith_dot_vec3_u32(u_input.d.xyw, u_input.d.zzx)), true, _wgslsmith_f_op_f32(-var_0) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global3.a, -3053f))), !(global2.x == 1u) && any(select(vec2<bool>(false, true), vec2<bool>(true, true), false)));
}

fn func_1() -> vec2<u32> {
    let var_0 = select(vec4<bool>(true, any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), all(vec2<bool>(true, true)))), true, true), select(vec4<bool>(true, false, true, any(vec2<bool>(true, true)) | false), func_5(func_4(_wgslsmith_f_op_vec4_f32(func_2(vec4<i32>(0i, u_input.b.x, u_input.a.x, u_input.a.x), 45150u, Struct_1(1400f))), Struct_1(global0.a), Struct_1(-597f), true), Struct_1(_wgslsmith_f_op_f32(2247f - 1588f)), firstTrailingBit(vec2<i32>(-2147483647i, u_input.b.x))), !(_wgslsmith_f_op_f32(global3.a * 199f) == _wgslsmith_f_op_f32(abs(198f)))), true);
    var var_1 = firstTrailingBit(_wgslsmith_div_vec2_i32(vec2<i32>(_wgslsmith_sub_i32(abs(13271i), ~1i), select(reverseBits(u_input.b.x), firstLeadingBit(31597i), any(vec2<bool>(var_0.x, false)))), abs(u_input.b.xz)));
    var var_2 = 0u;
    let var_3 = _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a) * _wgslsmith_f_op_f32(f32(-1f) * -1061f)));
    let var_4 = ~vec3<u32>(_wgslsmith_add_u32(0u, global2.x), ~(~(0u >> (global2.x % 32u))), u_input.d.x);
    return u_input.d.zw;
}

fn func_6(arg_0: vec2<u32>) -> Struct_1 {
    global2 = max(vec2<u32>(_wgslsmith_dot_vec2_u32(arg_0, u_input.d.xw) & firstTrailingBit(u_input.d.x), global2.x) << (arg_0 % vec2<u32>(32u)), arg_0);
    let var_0 = func_4(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1[_wgslsmith_index_u32(global2.x, 21u)], 764f, _wgslsmith_f_op_f32(ceil(-724f)), -1104f), vec4<f32>(global1[_wgslsmith_index_u32(u_input.d.x, 21u)], global0.a, _wgslsmith_f_op_vec4_f32(func_2(vec4<i32>(7622i, u_input.c.x, u_input.a.x, u_input.c.x), arg_0.x, Struct_1(global1[_wgslsmith_index_u32(0u, 21u)]))).x, _wgslsmith_div_f32(func_4(vec4<f32>(148f, global0.a, global1[_wgslsmith_index_u32(global2.x, 21u)], global3.a), Struct_1(global0.a), Struct_1(global0.a), false).a, 1771f)), func_5(func_4(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global0.a, -1139f, 308f, -389f))), func_4(vec4<f32>(global1[_wgslsmith_index_u32(u_input.d.x, 21u)], 317f, -1000f, -288f), Struct_1(-585f), Struct_1(575f), true), Struct_1(global3.a), true), func_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(u_input.d.x, 21u)], -460f, global1[_wgslsmith_index_u32(3055u, 21u)], global3.a)), Struct_1(global0.a), func_4(vec4<f32>(-334f, -1488f, 1314f, global3.a), Struct_1(global1[_wgslsmith_index_u32(global2.x, 21u)]), Struct_1(171f), false), true), abs(abs(vec2<i32>(u_input.a.x, u_input.b.x)))))), Struct_1(_wgslsmith_div_f32(1959f, 247f)), Struct_1(-1987f), !(!all(vec2<bool>(true, true))));
    let var_1 = var_0;
    var var_2 = u_input.d;
    let var_3 = u_input.b.x;
    return func_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(155f))), 635f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(global3.a, global1[_wgslsmith_index_u32(23269u, 21u)]) - _wgslsmith_f_op_f32(-var_0.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global0.a))))), Struct_1(func_4(vec4<f32>(_wgslsmith_f_op_f32(select(global0.a, 1682f, true)), _wgslsmith_f_op_f32(abs(global3.a)), -461f, _wgslsmith_f_op_f32(global0.a + global0.a)), var_0, Struct_1(626f), !func_5(var_0, Struct_1(var_1.a), u_input.b.wx).x).a), Struct_1(_wgslsmith_f_op_f32(-var_0.a)), all(vec4<bool>(true, true, !(23735u < var_2.x), ~u_input.d.x > ~global2.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(func_1());
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(315f + 1000f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a)))));
    var var_2 = abs(~0i);
    let var_3 = u_input.d.x;
    var var_4 = countOneBits(-1i);
    let var_5 = firstLeadingBit(~(-u_input.b.xxz) ^ ~(~(-u_input.b.yzx)));
    var var_6 = ~(~(vec2<i32>(i32(-1i) * -20492i, firstTrailingBit(u_input.c.x)) & vec2<i32>(-1i, _wgslsmith_mult_i32(40857i, 33059i))));
    var var_7 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.d.x, 21u)])));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(global2.x, global2.x | min(_wgslsmith_mod_u32(var_3, var_3), 4294967295u), _wgslsmith_mult_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 52195u), u_input.d.yy), ~1u), ~49263u), var_5.zy);
}

