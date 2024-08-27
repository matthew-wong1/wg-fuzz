struct Struct_1 {
    a: i32,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: vec3<u32>,
    d: i32,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 29> = array<vec4<i32>, 29>(vec4<i32>(30143i, -1i, 2147483647i, 2147483647i), vec4<i32>(2147483647i, 8298i, 0i, 48557i), vec4<i32>(i32(-2147483648), 12998i, -1i, -13577i), vec4<i32>(i32(-2147483648), -1i, -50909i, 1952i), vec4<i32>(-25139i, 2147483647i, 2147483647i, -32158i), vec4<i32>(-40149i, -21083i, -16885i, -23967i), vec4<i32>(31424i, -10106i, 7921i, 0i), vec4<i32>(20895i, -37606i, -27843i, 2147483647i), vec4<i32>(0i, i32(-2147483648), -1i, 1i), vec4<i32>(7457i, i32(-2147483648), 0i, -48951i), vec4<i32>(-1i, 0i, i32(-2147483648), -6454i), vec4<i32>(2147483647i, -1i, -17850i, 1i), vec4<i32>(2147483647i, 2147483647i, -31357i, 2147483647i), vec4<i32>(1i, 38037i, -53951i, -25960i), vec4<i32>(5037i, 41718i, -1i, 1i), vec4<i32>(-20894i, 13496i, i32(-2147483648), 1i), vec4<i32>(2147483647i, 23607i, 56282i, 1i), vec4<i32>(-147i, 51254i, -22531i, 3910i), vec4<i32>(2147483647i, 1i, -9206i, 22395i), vec4<i32>(5007i, 0i, 2147483647i, -13795i), vec4<i32>(1301i, 1076i, -94385i, i32(-2147483648)), vec4<i32>(43681i, 2147483647i, 2147483647i, -1i), vec4<i32>(-1i, 4750i, 0i, 1i), vec4<i32>(27167i, -85688i, 10654i, 837i), vec4<i32>(-13366i, 0i, -56136i, -1i), vec4<i32>(2147483647i, -12930i, -1i, 17595i), vec4<i32>(1i, -4434i, 1i, -3591i), vec4<i32>(4338i, -35990i, 20337i, 0i), vec4<i32>(-1i, 15607i, 76172i, 0i));

var<private> global1: Struct_1 = Struct_1(1028i, 4294967295u);

var<private> global2: Struct_1 = Struct_1(-67572i, 1u);

var<private> global3: array<Struct_1, 30> = array<Struct_1, 30>(Struct_1(19665i, 4294967295u), Struct_1(42297i, 0u), Struct_1(i32(-2147483648), 0u), Struct_1(3998i, 91360u), Struct_1(14570i, 25533u), Struct_1(-19717i, 1u), Struct_1(i32(-2147483648), 11243u), Struct_1(-1i, 4294967295u), Struct_1(-14339i, 18350u), Struct_1(-10097i, 17251u), Struct_1(-1i, 16440u), Struct_1(i32(-2147483648), 4294967295u), Struct_1(31622i, 25397u), Struct_1(-8271i, 40589u), Struct_1(-17392i, 4294967295u), Struct_1(i32(-2147483648), 73989u), Struct_1(9512i, 17535u), Struct_1(-9563i, 76592u), Struct_1(65725i, 88708u), Struct_1(-21662i, 42497u), Struct_1(0i, 4294967295u), Struct_1(-1i, 0u), Struct_1(0i, 4294967295u), Struct_1(32178i, 33137u), Struct_1(-1i, 4294967295u), Struct_1(22119i, 4027u), Struct_1(63699i, 24535u), Struct_1(14561i, 27599u), Struct_1(-45377i, 4294967295u), Struct_1(50630i, 4294967295u));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_2, arg_1: i32) -> u32 {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f - -2553f) + 911f), _wgslsmith_f_op_f32(f32(-1f) * -1084f), select(all(vec3<bool>(true, false, arg_0.b.x)), false, select(all(vec4<bool>(true, false, false, true)), true, !arg_0.b.x)))), 794f, _wgslsmith_f_op_f32(2134f - _wgslsmith_f_op_f32(round(333f))));
    let var_1 = any(vec2<bool>(true, !(firstLeadingBit(arg_0.a.b) >= global2.b)));
    let var_2 = _wgslsmith_clamp_i32(2147483647i, _wgslsmith_mod_i32(abs(23837i), _wgslsmith_mod_i32(_wgslsmith_sub_i32(-2147483647i, 1i), 2147483647i)), _wgslsmith_div_i32(_wgslsmith_mult_i32(~(-9059i), ~max(-2147483647i, arg_1)), 1i));
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(218f, var_0.x))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x - var_0.x) - _wgslsmith_f_op_f32(max(var_0.x, var_0.x))))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-1417f, _wgslsmith_f_op_f32(-var_0.x))), 1503f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_0.x)) + var_0.x)));
    var var_4 = any(select(!select(select(vec3<bool>(arg_0.b.x, var_1, false), vec3<bool>(var_1, arg_0.b.x, arg_0.b.x), arg_0.b.x), vec3<bool>(false, arg_0.b.x, arg_0.b.x), !vec3<bool>(true, arg_0.b.x, var_1)), select(select(vec3<bool>(arg_0.b.x, false, true), select(vec3<bool>(var_1, true, true), vec3<bool>(false, var_1, false), arg_0.b.x), any(vec3<bool>(false, false, var_1))), !vec3<bool>(var_1, arg_0.b.x, true), select(vec3<bool>(arg_0.b.x, false, true), vec3<bool>(var_1, arg_0.b.x, false), vec3<bool>(false, false, arg_0.b.x))), true));
    return _wgslsmith_sub_u32(countOneBits(firstTrailingBit(4294967295u)), max(arg_0.a.b, ~(~arg_0.a.b))) >> (global2.b % 32u);
}

fn func_2(arg_0: Struct_2, arg_1: u32, arg_2: Struct_3) -> i32 {
    let var_0 = arg_2.b;
    global3 = array<Struct_1, 30>();
    var var_1 = arg_2;
    var var_2 = Struct_3(arg_2.b.a, arg_2.b, arg_2.c, 1i, Struct_1(60734i, func_3(arg_2.b, ~global2.a)));
    let var_3 = arg_2.b;
    return arg_0.a.a;
}

fn func_1(arg_0: vec4<bool>) -> bool {
    var var_0 = _wgslsmith_clamp_vec2_i32(firstTrailingBit(_wgslsmith_div_vec2_i32(reverseBits(u_input.d.yz), -u_input.d.xx)), vec2<i32>(_wgslsmith_mult_i32(max(global1.a, global2.a), _wgslsmith_add_i32(28604i, 72078i)), _wgslsmith_sub_i32(func_2(Struct_2(global3[_wgslsmith_index_u32(u_input.c, 30u)], vec2<bool>(false, true)), 22900u, Struct_3(global3[_wgslsmith_index_u32(global2.b, 30u)], Struct_2(global3[_wgslsmith_index_u32(18144u, 30u)], vec2<bool>(true, arg_0.x)), vec3<u32>(global1.b, global2.b, global2.b), global1.a, Struct_1(u_input.d.x, global1.b))), u_input.b)), _wgslsmith_mod_vec2_i32(u_input.d.yw, ~(-vec2<i32>(global1.a, -1i)))) ^ vec2<i32>(-1i, ~1153i);
    return arg_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(vec3<bool>(false, func_1(vec4<bool>(any(vec3<bool>(false, true, false)), any(vec3<bool>(false, false, false)), false, any(vec3<bool>(true, true, false)))), false), vec3<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-125f))) != _wgslsmith_f_op_f32(-205f * _wgslsmith_f_op_f32(round(304f))), all(vec4<bool>(true, true, true, true)), false), select(true, select(true, true, true), true));
    global1 = global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(53293u, _wgslsmith_mult_u32(_wgslsmith_sub_u32(firstTrailingBit(4294967295u), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.a, global2.b), vec3<u32>(4294967295u, 25988u, u_input.c))) >> (min(firstTrailingBit(global1.b), firstLeadingBit(global1.b)) % 32u), ~global2.b), ~min(reverseBits(global2.b), _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 236u), vec2<u32>(global1.b, 1u)), u_input.a))), 30u)];
    let var_1 = vec4<bool>(var_0.x, true, true, !(!(!var_0.x)));
    global2 = Struct_1(max(18219i, 2147483647i), u_input.a);
    let var_2 = _wgslsmith_mod_vec2_u32(~_wgslsmith_mod_vec2_u32(~(~vec2<u32>(4294967295u, 4294967295u)), ~(~vec2<u32>(u_input.c, global1.b))), ~(~firstTrailingBit(firstTrailingBit(vec2<u32>(0u, 4294967295u)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -297f)))), ~(~vec3<u32>(33982u, countOneBits(1u), func_3(Struct_2(global3[_wgslsmith_index_u32(4294967295u, 30u)], vec2<bool>(var_1.x, false)), 55513i))), _wgslsmith_clamp_vec4_u32(~(~firstLeadingBit(vec4<u32>(u_input.c, global2.b, 4294967295u, u_input.c))), firstLeadingBit(firstLeadingBit(~vec4<u32>(60742u, global2.b, global1.b, 27759u))), vec4<u32>(_wgslsmith_mult_u32(u_input.c, 0u), 88344u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, global2.b, 4294967295u, 86499u), vec4<u32>(4294967295u, var_2.x, 66854u, 60002u)), var_2.x) & _wgslsmith_add_vec4_u32(firstTrailingBit(vec4<u32>(1u, 4294967295u, 4294967295u, 9521u)), ~vec4<u32>(var_2.x, 3924u, 17828u, u_input.a))));
}

