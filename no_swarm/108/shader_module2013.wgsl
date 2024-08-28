struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: u32,
    c: vec3<bool>,
    d: Struct_1,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 10>;

var<private> global1: array<vec4<i32>, 10>;

var<private> global2: array<u32, 5>;

var<private> global3: bool;

var<private> global4: Struct_1;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: u32) -> f32 {
    var var_0 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(select(vec4<u32>(26159u, firstTrailingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(34871u, u_input.a.x, 28335u, arg_1.b), vec4<u32>(arg_2, arg_0.b, arg_2, 0u))), _wgslsmith_div_u32(~1u, firstTrailingBit(37168u)), 30747u), ~firstTrailingBit(firstLeadingBit(vec4<u32>(u_input.a.x, 1u, 1u, u_input.a.x))), vec4<bool>(false, true, !(false != arg_0.e.x), any(vec4<bool>(global4.a.x, arg_0.d.a.x, global4.a.x, global4.a.x)))), vec4<u32>(arg_1.b, 0u, arg_0.b, ~_wgslsmith_dot_vec3_u32(select(vec3<u32>(global2[_wgslsmith_index_u32(12253u, 5u)], 30773u, global2[_wgslsmith_index_u32(0u, 5u)]), vec3<u32>(25227u, arg_1.b, 73615u), arg_1.c.x), _wgslsmith_mult_vec3_u32(vec3<u32>(81650u, global2[_wgslsmith_index_u32(54116u, 5u)], 16163u), vec3<u32>(57198u, arg_1.b, 81516u))))), 10u)];
    var var_1 = arg_2 >> (~12210u % 32u);
    let var_2 = vec3<u32>(~(33775u ^ arg_0.b), arg_2, u_input.a.x);
    global4 = arg_1.d;
    let var_3 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_1.a.x)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(-1317f))))) - 1850f);
}

fn func_2() -> u32 {
    let var_0 = ~firstLeadingBit(15164i);
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-178f * _wgslsmith_f_op_f32(min(-558f, 743f)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_2(vec3<f32>(432f, 1000f, 470f), u_input.a.x, vec3<bool>(global4.a.x, false, true), global0[_wgslsmith_index_u32(35125u, 10u)], vec2<bool>(global4.a.x, false)), Struct_2(vec3<f32>(147f, -858f, -1418f), u_input.a.x, global4.a.zzx, Struct_1(global4.a), global4.a.wx), ~u_input.a.x)) - _wgslsmith_f_op_f32(max(-986f, -938f)))), _wgslsmith_f_op_f32(-400f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1463f))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-525f))) - -1372f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1544f * 325f)))), _wgslsmith_f_op_f32(step(-350f, _wgslsmith_f_op_f32(701f * 226f))) <= 1f)));
    let var_2 = global0[_wgslsmith_index_u32(firstLeadingBit(~1u), 10u)];
    global4 = Struct_1(vec4<bool>(any(global4.a), -2147483647i <= min(u_input.b, var_0), all(global4.a.xxz), !global4.a.x));
    global4 = global0[_wgslsmith_index_u32(_wgslsmith_sub_u32((global2[_wgslsmith_index_u32(reverseBits(global2[_wgslsmith_index_u32(1u, 5u)]), 5u)] | abs(_wgslsmith_mult_u32(u_input.a.x, 86173u))) | 14681u, 1u), 10u)];
    return ~(~(~1u));
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: u32, arg_3: vec2<u32>) -> Struct_2 {
    let var_0 = !vec2<bool>(global4.a.x, !((i32(-1i) * -2147483647i) < u_input.b));
    let var_1 = arg_1;
    var var_2 = !select(vec4<bool>(!(true | var_0.x), var_0.x, !global4.a.x, all(vec4<bool>(var_1.a.x, false, true, false))), global4.a, select(vec4<bool>(false, all(global4.a.ywx), true | var_0.x, false), select(select(arg_1.a, global4.a, arg_1.a.x), !vec4<bool>(false, false, true, var_0.x), var_1.a.x), true));
    let var_3 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(263f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1969f * 1000f) - _wgslsmith_div_f32(-105f, -372f))), _wgslsmith_f_op_f32(ceil(-1098f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(558f))), -1222f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-634f)) + -1208f))));
    var var_4 = Struct_1(select(global4.a, var_1.a, true));
    return Struct_2(vec3<f32>(_wgslsmith_f_op_f32(313f - _wgslsmith_f_op_f32(abs(-670f))), _wgslsmith_f_op_f32(round(1629f)), -546f), _wgslsmith_mod_u32(1u, arg_2), select(var_2.wyw, var_4.a.wwx, _wgslsmith_f_op_f32(-435f * -463f) == var_3.x), Struct_1(!(!select(arg_1.a, var_1.a, false))), var_4.a.zy);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_1) -> Struct_2 {
    var var_0 = true;
    let var_1 = arg_2;
    let var_2 = vec4<bool>(select(_wgslsmith_mod_u32(~global2[_wgslsmith_index_u32(u_input.a.x, 5u)], firstTrailingBit(arg_1.b)) != 1u, true, func_4(~52006u, arg_2, 4294967295u, ~vec2<u32>(1u, arg_1.b)).c.x), true, true, all(arg_1.d.a));
    let var_3 = all(select(select(var_1.a.wz, select(!global4.a.wx, !vec2<bool>(var_2.x, arg_0.a.x), true), u_input.a.x <= max(arg_1.b, 0u)), vec2<bool>(_wgslsmith_f_op_f32(trunc(arg_1.a.x)) > _wgslsmith_f_op_f32(abs(-224f)), _wgslsmith_f_op_f32(f32(-1f) * -1580f) >= _wgslsmith_f_op_f32(select(-526f, -1000f, false))), false));
    var_0 = min(-6925i, u_input.c) < abs(~64785i);
    return arg_1;
}

fn func_1() -> bool {
    var var_0 = firstTrailingBit(_wgslsmith_add_vec2_i32(vec2<i32>(_wgslsmith_sub_i32(_wgslsmith_add_i32(u_input.b, u_input.c), ~u_input.c), ~(-1i)), _wgslsmith_add_vec2_i32(vec2<i32>(-20179i, 36734i), vec2<i32>(max(u_input.b, u_input.d.x), countOneBits(u_input.b)))));
    var var_1 = global4.a.yw;
    var_1 = vec2<bool>(false, !(var_1.x | true));
    var_1 = vec2<bool>(true, all(vec2<bool>(global4.a.x, !(!var_1.x))));
    var var_2 = func_5(Struct_1(!global4.a), func_4(28797u, Struct_1(!vec4<bool>(false, false, var_1.x, var_1.x)), global2[_wgslsmith_index_u32(select(func_2(), 1u, false) ^ firstTrailingBit(firstTrailingBit(global2[_wgslsmith_index_u32(8520u, 5u)])), 5u)], ~(u_input.a >> (u_input.a % vec2<u32>(32u)))), Struct_1(vec4<bool>(true, true, all(global4.a.wx), any(select(vec4<bool>(true, false, var_1.x, var_1.x), vec4<bool>(var_1.x, false, false, var_1.x), global4.a.x)))));
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0[_wgslsmith_index_u32(u_input.a.x, 10u)];
    var var_1 = !vec2<bool>(false, !(var_0.a.x || true) & func_1());
    global4 = global0[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.a.x, ~u_input.a.x), 10u)];
    global4 = func_4(0u, global0[_wgslsmith_index_u32(_wgslsmith_add_u32(global2[_wgslsmith_index_u32(select(global2[_wgslsmith_index_u32(~u_input.a.x, 5u)], global2[_wgslsmith_index_u32(u_input.a.x, 5u)], true), 5u)], u_input.a.x), 10u)], 0u, max(u_input.a, firstTrailingBit(u_input.a))).d;
    var_0 = func_5(Struct_1(vec4<bool>(true, all(global4.a.zw), true, ~1u > func_5(Struct_1(global4.a), Struct_2(vec3<f32>(716f, 196f, -580f), u_input.a.x, vec3<bool>(var_1.x, true, false), global0[_wgslsmith_index_u32(u_input.a.x, 10u)], vec2<bool>(global4.a.x, var_0.a.x)), Struct_1(vec4<bool>(false, var_0.a.x, global4.a.x, false))).b)), Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, 340f, 1000f) - vec3<f32>(-659f, -333f, -858f)))), ~global2[_wgslsmith_index_u32(1u, 5u)], vec3<bool>(select(true, var_1.x, global4.a.x) || select(false, var_1.x, false), !global4.a.x, var_0.a.x), global0[_wgslsmith_index_u32(u_input.a.x, 10u)], global4.a.yy), global0[_wgslsmith_index_u32(u_input.a.x, 10u)]).d;
    global1 = array<vec4<i32>, 10>();
    let var_2 = func_4(62904u, func_4(max(4294967295u, global2[_wgslsmith_index_u32(4294967295u, 5u)] | ~global2[_wgslsmith_index_u32(1u, 5u)]), func_4(firstTrailingBit(u_input.a.x), func_4(0u, Struct_1(vec4<bool>(true, var_1.x, var_0.a.x, false)), _wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(global2[_wgslsmith_index_u32(1u, 5u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 5u)], 5u)])), min(u_input.a, u_input.a)).d, firstLeadingBit(u_input.a.x), vec2<u32>(u_input.a.x, ~0u)).d, func_4(10809u, global0[_wgslsmith_index_u32(func_4(global2[_wgslsmith_index_u32(17006u, 5u)] >> (89433u % 32u), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.a, u_input.a), 10u)], ~59211u, u_input.a).b, 10u)], reverseBits(~19371u), u_input.a).b, u_input.a).d, 1u, ~(~vec2<u32>(global2[_wgslsmith_index_u32(1321u, 5u)], func_5(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 5u)], 10u)], Struct_2(vec3<f32>(1131f, 1497f, 1999f), 0u, vec3<bool>(var_0.a.x, var_1.x, true), Struct_1(vec4<bool>(true, var_1.x, true, true)), vec2<bool>(global4.a.x, var_1.x)), global0[_wgslsmith_index_u32(52545u, 10u)]).b))).d.a;
    let var_3 = func_4(_wgslsmith_sub_u32(~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(~(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a.x, 5u)], 5u)] | 4294967295u), 5u)], 5u)], max(reverseBits(global2[_wgslsmith_index_u32(~u_input.a.x, 5u)]), ~(~global2[_wgslsmith_index_u32(0u, 5u)]))), func_5(Struct_1(vec4<bool>(var_2.x, any(vec4<bool>(true, false, global4.a.x, global4.a.x)), func_4(1u, Struct_1(vec4<bool>(false, false, var_0.a.x, true)), 16294u, vec2<u32>(u_input.a.x, u_input.a.x)).d.a.x, var_1.x || var_0.a.x)), Struct_2(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-795f, 680f, 1567f), _wgslsmith_f_op_vec3_f32(vec3<f32>(1611f, -927f, -1041f) * vec3<f32>(-306f, -1839f, 102f)))), 4294967295u, !select(vec3<bool>(true, global4.a.x, var_2.x), vec3<bool>(false, var_1.x, var_0.a.x), true), func_5(global0[_wgslsmith_index_u32(u_input.a.x, 10u)], func_4(global2[_wgslsmith_index_u32(37084u, 5u)], Struct_1(global4.a), global2[_wgslsmith_index_u32(0u, 5u)], u_input.a), global0[_wgslsmith_index_u32(u_input.a.x, 10u)]).d, func_4(14907u, global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(16204u, 38817u), 10u)], func_4(118520u, global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a.x, 5u)], 10u)], global2[_wgslsmith_index_u32(102664u, 5u)], u_input.a).b, u_input.a).d.a.zy), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(_wgslsmith_sub_vec2_u32(u_input.a, vec2<u32>(0u, 1u)), reverseBits(vec2<u32>(25299u, 1u))), ~vec2<u32>(u_input.a.x, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a.x, 5u)], 5u)]) >> (vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 5u)], 5u)], 5u)], 5u)], u_input.a.x) % vec2<u32>(32u))), 10u)]).d, func_4(26229u, func_4(global2[_wgslsmith_index_u32(u_input.a.x, 5u)], global0[_wgslsmith_index_u32(0u, 10u)], firstLeadingBit(abs(60572u)), reverseBits(vec2<u32>(u_input.a.x, global2[_wgslsmith_index_u32(477u, 5u)]))).d, u_input.a.x, vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(global2[_wgslsmith_index_u32(u_input.a.x, 5u)], 4294967295u, 5844u), vec3<u32>(u_input.a.x, 0u, 42653u)), 48344u)).b, u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.a.x - -313f)), _wgslsmith_f_op_f32(-func_5(Struct_1(vec4<bool>(false, var_2.x, true, true)), Struct_2(vec3<f32>(var_3.a.x, -738f, -1777f), 15229u, vec3<bool>(var_1.x, true, false), global0[_wgslsmith_index_u32(4294967295u, 10u)], var_2.xz), var_3.d).a.x), var_3.a.x))));
}

