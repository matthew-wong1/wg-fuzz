struct Struct_1 {
    a: bool,
    b: vec4<f32>,
    c: vec2<u32>,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 19> = array<u32, 19>(1u, 1u, 1u, 1u, 62583u, 19248u, 4294967295u, 1u, 45998u, 16797u, 48069u, 1u, 0u, 3507u, 1u, 53302u, 46021u, 68198u, 0u);

var<private> global1: array<Struct_1, 19> = array<Struct_1, 19>(Struct_1(false, vec4<f32>(1038f, -104f, -1000f, 928f), vec2<u32>(1u, 63467u), vec4<u32>(22088u, 77096u, 1u, 1u)), Struct_1(true, vec4<f32>(346f, 1000f, 1152f, 1056f), vec2<u32>(2818u, 51446u), vec4<u32>(1u, 95575u, 74192u, 23339u)), Struct_1(false, vec4<f32>(-1680f, 1841f, 1112f, -956f), vec2<u32>(0u, 37285u), vec4<u32>(68518u, 22169u, 1u, 17728u)), Struct_1(false, vec4<f32>(1845f, -1000f, -1635f, 167f), vec2<u32>(0u, 4294967295u), vec4<u32>(65536u, 26208u, 41617u, 4294967295u)), Struct_1(true, vec4<f32>(-373f, -601f, -169f, 444f), vec2<u32>(15818u, 60484u), vec4<u32>(1338u, 4294967295u, 4294967295u, 20869u)), Struct_1(true, vec4<f32>(-605f, 246f, -925f, 1000f), vec2<u32>(189u, 3344u), vec4<u32>(0u, 0u, 0u, 58435u)), Struct_1(false, vec4<f32>(-239f, 2173f, 369f, -1859f), vec2<u32>(11091u, 0u), vec4<u32>(2377u, 0u, 4294967295u, 1u)), Struct_1(false, vec4<f32>(1000f, -742f, -385f, 357f), vec2<u32>(4294967295u, 4294967295u), vec4<u32>(4294967295u, 1u, 43893u, 0u)), Struct_1(false, vec4<f32>(-370f, -542f, 1000f, 1075f), vec2<u32>(4294967295u, 4294967295u), vec4<u32>(0u, 0u, 1u, 4294967295u)), Struct_1(true, vec4<f32>(104f, 127f, -592f, -1654f), vec2<u32>(1u, 52746u), vec4<u32>(83337u, 1u, 73171u, 1u)), Struct_1(true, vec4<f32>(-1986f, -2556f, 559f, -137f), vec2<u32>(38557u, 0u), vec4<u32>(4294967295u, 101271u, 103264u, 0u)), Struct_1(true, vec4<f32>(-1477f, -549f, 1244f, 1011f), vec2<u32>(44199u, 24401u), vec4<u32>(76985u, 4294967295u, 15251u, 35232u)), Struct_1(false, vec4<f32>(-1447f, 186f, 291f, 291f), vec2<u32>(23722u, 0u), vec4<u32>(0u, 75215u, 35226u, 37165u)), Struct_1(false, vec4<f32>(285f, 1911f, 413f, 780f), vec2<u32>(9160u, 18240u), vec4<u32>(57725u, 10215u, 12736u, 4294967295u)), Struct_1(true, vec4<f32>(970f, 1456f, 1288f, -694f), vec2<u32>(4294967295u, 50668u), vec4<u32>(4294967295u, 0u, 54962u, 36576u)), Struct_1(false, vec4<f32>(-1785f, -715f, -830f, -1319f), vec2<u32>(4294967295u, 1u), vec4<u32>(1u, 5727u, 4294967295u, 58350u)), Struct_1(true, vec4<f32>(-681f, -1552f, -333f, 350f), vec2<u32>(18213u, 1u), vec4<u32>(33934u, 53549u, 33155u, 0u)), Struct_1(false, vec4<f32>(544f, -198f, -813f, -411f), vec2<u32>(50227u, 22506u), vec4<u32>(4294967295u, 4294967295u, 0u, 18073u)), Struct_1(false, vec4<f32>(-918f, 139f, 757f, 1335f), vec2<u32>(0u, 39009u), vec4<u32>(18604u, 69364u, 1459u, 0u)));

var<private> global2: Struct_1;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> f32 {
    global0 = array<u32, 19>();
    global0 = array<u32, 19>();
    global1 = array<Struct_1, 19>();
    var var_0 = ~(i32(-1i) * -2147483647i);
    let var_1 = all(select(vec3<bool>(true, true, true), !select(select(vec3<bool>(global2.a, global2.a, true), vec3<bool>(global2.a, true, global2.a), false), vec3<bool>(true, true, false), any(vec2<bool>(true, global2.a))), false));
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(877f, _wgslsmith_f_op_f32(abs(global2.b.x)))));
}

fn func_2(arg_0: f32, arg_1: bool, arg_2: Struct_1) -> u32 {
    var var_0 = -1552f;
    let var_1 = Struct_1(!(!(!(false || global2.a))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(global2.b, global2.b))))), arg_2.b, arg_1)), abs(u_input.c), firstTrailingBit(_wgslsmith_div_vec4_u32(abs(vec4<u32>(global2.d.x, 32647u, arg_2.d.x, 135024u)), ~vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.c.x, 19u)], 19u)], global0[_wgslsmith_index_u32(0u, 19u)], 42962u, 1u))) >> ((_wgslsmith_mult_vec4_u32(vec4<u32>(1u, global0[_wgslsmith_index_u32(global2.c.x, 19u)], u_input.d, global0[_wgslsmith_index_u32(arg_2.d.x, 19u)]), global2.d) ^ ~(~global2.d)) % vec4<u32>(32u)));
    var var_2 = ~(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(~u_input.d, 150014u), 19u)] | countOneBits(firstTrailingBit(arg_2.c.x)));
    global2 = Struct_1(all(vec4<bool>(false, true, !arg_1 || !global2.a, any(!vec3<bool>(global2.a, arg_2.a, true)))), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(355f, -1519f, arg_0, -303f) + _wgslsmith_f_op_vec4_f32(-arg_2.b)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(var_1.b, var_1.b)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-124f, _wgslsmith_f_op_f32(func_3()), arg_2.b.x, _wgslsmith_div_f32(arg_0, 1138f)))), _wgslsmith_mod_vec2_u32(~((arg_2.c >> (vec2<u32>(var_1.d.x, arg_2.c.x) % vec2<u32>(32u))) >> (vec2<u32>(0u, 27956u) % vec2<u32>(32u))), ~(~(~vec2<u32>(1923u, 1u)))), global2.d);
    var var_3 = var_1.b.xz;
    return global0[_wgslsmith_index_u32(var_1.d.x, 19u)];
}

fn func_4(arg_0: u32, arg_1: vec2<f32>) -> Struct_1 {
    var var_0 = arg_1.x;
    let var_1 = global1[_wgslsmith_index_u32(~_wgslsmith_mod_u32(countOneBits(49387u), 4294967295u), 19u)];
    let var_2 = 1u >> (1u % 32u);
    var var_3 = abs(_wgslsmith_div_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(var_1.d.zy, vec2<u32>(101199u, 46164u)), 1u) ^ 4294967295u, _wgslsmith_mod_u32(1u, ~firstTrailingBit(109819u))));
    let var_4 = true;
    return global1[_wgslsmith_index_u32(52448u, 19u)];
}

fn func_5(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_div_f32(605f, global2.b.x);
    global2 = Struct_1(all(arg_0), global2.b, ~abs(vec2<u32>(_wgslsmith_div_u32(1u, 32919u), 4294967295u)), ~global2.d);
    global0 = array<u32, 19>();
    global1 = array<Struct_1, 19>();
    let var_1 = arg_1;
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.b.x * var_0)) <= _wgslsmith_f_op_f32(arg_1.b.x + var_1.b.x), var_1.b, ~firstTrailingBit(~abs(vec2<u32>(global2.c.x, arg_2.d.x))), vec4<u32>(~arg_1.d.x, _wgslsmith_dot_vec4_u32(func_4(~40840u, vec2<f32>(arg_1.b.x, 858f)).d, func_4(_wgslsmith_clamp_u32(60035u, global2.d.x, u_input.d), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.b.x, 2396f) + arg_1.b.yy)).d), _wgslsmith_mult_u32(~(global2.c.x << (41985u % 32u)), 0u), u_input.d));
}

fn func_1(arg_0: bool) -> vec3<u32> {
    let var_0 = _wgslsmith_div_f32(-1447f, global2.b.x);
    var var_1 = ~global2.d.ww;
    var var_2 = func_5(!select(!select(vec4<bool>(false, global2.a, true, arg_0), vec4<bool>(false, arg_0, false, true), vec4<bool>(false, true, false, true)), !vec4<bool>(false, false, true, arg_0), global2.a), func_4(_wgslsmith_add_u32(38199u, _wgslsmith_sub_u32(var_1.x, 26327u)) & max(u_input.d, func_2(var_0, true, Struct_1(arg_0, global2.b, u_input.c, global2.d))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(vec2<f32>(-235f, global2.b.x), global2.b.yx))) * _wgslsmith_div_vec2_f32(global2.b.zy, _wgslsmith_f_op_vec2_f32(max(global2.b.zx, global2.b.xw))))), global1[_wgslsmith_index_u32(var_1.x, 19u)]);
    var var_3 = !(!(!(!vec2<bool>(true, arg_0))));
    var_1 = ~(~_wgslsmith_add_vec2_u32(u_input.c, select(u_input.c, vec2<u32>(4294967295u, 1u), vec2<bool>(var_2.a, true))) >> (vec2<u32>(41583u, ~(global0[_wgslsmith_index_u32(4294967295u, 19u)] & 73273u)) % vec2<u32>(32u)));
    return vec3<u32>(global2.c.x, 0u, abs(_wgslsmith_div_u32(~(~1969u), 25751u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(false, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-1094f, -107f, global2.b.x, -1565f))))), ~vec2<u32>(~1u, u_input.d), firstTrailingBit(_wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(~global2.d, vec4<u32>(4294967295u, 0u, global0[_wgslsmith_index_u32(40417u, 19u)], global0[_wgslsmith_index_u32(4294967295u, 19u)])), abs(global2.d))));
    var var_1 = global1[_wgslsmith_index_u32(var_0.d.x << (countOneBits(2146u) % 32u), 19u)];
    var var_2 = Struct_1(var_1.a, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(1188f - -581f), -442f, 118f, _wgslsmith_f_op_f32(global2.b.x * 707f)))))), var_1.d.zx << (var_1.c % vec2<u32>(32u)), vec4<u32>(24498u, 56606u, 40480u, 1u));
    global0 = array<u32, 19>();
    let var_3 = firstLeadingBit(func_1((0i != u_input.b) | false));
    global1 = array<Struct_1, 19>();
    let x = u_input.a;
    s_output = StorageBuffer(8633i, 383f, var_1.b);
}

