struct Struct_1 {
    a: bool,
    b: vec3<u32>,
    c: bool,
    d: f32,
    e: i32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: vec3<u32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_2,
    c: bool,
    d: vec4<u32>,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: f32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 7> = array<Struct_1, 7>(Struct_1(false, vec3<u32>(21868u, 1u, 80377u), false, 1000f, 1i), Struct_1(true, vec3<u32>(0u, 4294967295u, 30886u), true, 1076f, 33988i), Struct_1(true, vec3<u32>(20327u, 721u, 4294967295u), false, -751f, 1i), Struct_1(false, vec3<u32>(73173u, 1u, 1u), true, 798f, 0i), Struct_1(false, vec3<u32>(1u, 60771u, 18670u), false, -607f, -63246i), Struct_1(true, vec3<u32>(4294967295u, 74978u, 4294967295u), false, 181f, 0i), Struct_1(true, vec3<u32>(0u, 24883u, 1u), true, 1333f, 81797i));

var<private> global1: array<bool, 9>;

var<private> global2: array<Struct_2, 6>;

var<private> global3: array<u32, 23> = array<u32, 23>(9515u, 4294967295u, 861u, 0u, 4294967295u, 54380u, 0u, 4294967295u, 26559u, 0u, 4294967295u, 4294967295u, 1u, 2842u, 5428u, 4294967295u, 5600u, 41614u, 0u, 1094u, 103625u, 4294967295u, 429u);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: i32) -> u32 {
    global3 = array<u32, 23>();
    global0 = array<Struct_1, 7>();
    return firstLeadingBit(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(arg_0.b.b, abs(u_input.b.zzw)), ~_wgslsmith_div_vec3_u32(vec3<u32>(arg_1.b.x, global3[_wgslsmith_index_u32(arg_0.b.b.x, 23u)], u_input.c), vec3<u32>(global3[_wgslsmith_index_u32(arg_0.e.b.x, 23u)], u_input.c, 15402u))), _wgslsmith_dot_vec2_u32(vec2<u32>(0u ^ arg_0.d.b.x, 1u), ~vec2<u32>(26092u, 48629u))));
}

fn func_2() -> Struct_3 {
    var var_0 = Struct_1(all(!select(vec4<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 9u)], global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(51029u, 23u)], 9u)], global1[_wgslsmith_index_u32(0u, 9u)], global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(10377u, 23u)], 23u)], 9u)]), !vec4<bool>(true, true, false, global1[_wgslsmith_index_u32(58524u, 9u)]), select(vec4<bool>(true, false, global1[_wgslsmith_index_u32(107359u, 9u)], global1[_wgslsmith_index_u32(4294967295u, 9u)]), vec4<bool>(true, false, global1[_wgslsmith_index_u32(4294967295u, 9u)], global1[_wgslsmith_index_u32(27253u, 9u)]), vec4<bool>(global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(3904u, 23u)], 9u)], global1[_wgslsmith_index_u32(u_input.b.x, 9u)], global1[_wgslsmith_index_u32(u_input.b.x, 9u)], true)))), u_input.b.wwz, !((~global3[_wgslsmith_index_u32(4294967295u, 23u)] > u_input.b.x) && global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~1u, func_3(Struct_2(vec4<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 9u)], false, global1[_wgslsmith_index_u32(4294967295u, 9u)], global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(15555u, 23u)], 9u)]), global0[_wgslsmith_index_u32(16361u, 7u)], vec3<u32>(u_input.c, 0u, u_input.b.x), global0[_wgslsmith_index_u32(12949u, 7u)], global0[_wgslsmith_index_u32(u_input.c, 7u)]), Struct_1(false, vec3<u32>(0u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.b.x, 23u)], 23u)], 23u)], 23u)], 4592u), false, -1602f, u_input.a.x), 2147483647i), _wgslsmith_mod_u32(global3[_wgslsmith_index_u32(u_input.c, 23u)], 50278u)), 9u)]), -1324f, ~u_input.a.x);
    let var_1 = Struct_2(!(!vec4<bool>(true, true, any(vec2<bool>(true, var_0.a)), all(vec4<bool>(global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(var_0.b.x, 23u)], 9u)], global1[_wgslsmith_index_u32(1215u, 9u)], global1[_wgslsmith_index_u32(0u, 9u)], true)))), global0[_wgslsmith_index_u32(abs(global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(52759u, 12842u), 23u)]), 7u)], abs(vec3<u32>(max(~u_input.c, 7256u), u_input.c, _wgslsmith_clamp_u32(4294967295u, u_input.b.x | 4294967295u, ~u_input.b.x))), Struct_1(all(vec3<bool>(global1[_wgslsmith_index_u32(~11956u, 9u)], true, true)), var_0.b, global1[_wgslsmith_index_u32(~(~var_0.b.x) >> (1u % 32u), 9u)], _wgslsmith_div_f32(-430f, var_0.d), -var_0.e), Struct_1(all(!(!vec2<bool>(global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.b.x, 23u)], 23u)], 9u)], false))), ~(_wgslsmith_div_vec3_u32(vec3<u32>(global3[_wgslsmith_index_u32(var_0.b.x, 23u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(var_0.b.x, 23u)], 23u)], global3[_wgslsmith_index_u32(4294967295u, 23u)]), u_input.b.xxw) ^ var_0.b), (~60993u ^ _wgslsmith_mod_u32(u_input.c, 85847u)) <= _wgslsmith_add_u32(var_0.b.x, 52964u), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.d) * -1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-355f, -428f)) + var_0.d))), ~(-9429i) >> (firstLeadingBit(~48622u) % 32u)));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1975f, _wgslsmith_f_op_f32(var_0.d * var_0.d), _wgslsmith_f_op_f32(select(125f, -370f, global1[_wgslsmith_index_u32(54828u, 9u)]))), vec3<f32>(_wgslsmith_f_op_f32(ceil(var_1.d.d)), var_0.d, -545f))));
    let var_3 = _wgslsmith_div_i32(-2147483647i, var_0.e) << (~abs(_wgslsmith_dot_vec3_u32(~vec3<u32>(34165u, u_input.b.x, 1u), _wgslsmith_sub_vec3_u32(var_1.c, vec3<u32>(26225u, u_input.c, 1u)))) % 32u);
    var var_4 = Struct_2(!(!(!vec4<bool>(global1[_wgslsmith_index_u32(var_1.c.x, 9u)], true, global1[_wgslsmith_index_u32(1u, 9u)], global1[_wgslsmith_index_u32(3992u, 9u)]))), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(max(vec3<u32>(global3[_wgslsmith_index_u32(6005u, 23u)], 15722u, var_0.b.x), vec3<u32>(u_input.b.x, u_input.c, u_input.b.x)) << (u_input.b.wzx % vec3<u32>(32u)), ~(~var_0.b)) ^ u_input.c, 7u)], u_input.b.wzw, global0[_wgslsmith_index_u32(firstLeadingBit(4294967295u), 7u)], Struct_1(true, countOneBits(_wgslsmith_div_vec3_u32(reverseBits(vec3<u32>(global3[_wgslsmith_index_u32(4294967295u, 23u)], 0u, u_input.b.x)), ~vec3<u32>(var_0.b.x, 4294967295u, var_0.b.x))), func_3(Struct_2(var_1.a, Struct_1(var_1.b.c, var_1.e.b, true, var_2.x, -41215i), vec3<u32>(u_input.b.x, var_1.b.b.x, 32466u), var_1.e, global0[_wgslsmith_index_u32(0u, 7u)]), global0[_wgslsmith_index_u32(~var_0.b.x, 7u)], u_input.a.x) > global3[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(~var_1.c.x, 23u)], 23u)], _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(var_2.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.x, 126f))), _wgslsmith_clamp_i32(-30999i, (-34308i | u_input.a.x) ^ _wgslsmith_add_i32(var_3, var_1.e.e), firstLeadingBit(var_3))));
    return Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_2)), var_1, false, u_input.b, _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1599f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -616f)), var_4.b.d, -938f), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(2607f, var_1.b.d, var_2.x, 962f))))))));
}

fn func_1(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: bool) -> Struct_3 {
    var var_0 = arg_2.d;
    global0 = array<Struct_1, 7>();
    var var_1 = _wgslsmith_div_f32(arg_2.d, _wgslsmith_f_op_f32(ceil(1344f)));
    let var_2 = Struct_1(arg_2.a, arg_0, false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.d)), -36618i);
    let var_3 = arg_1.d;
    return func_2();
}

fn func_4(arg_0: Struct_3, arg_1: u32) -> StorageBuffer {
    var var_0 = Struct_2(!arg_0.b.a, func_2().b.b, u_input.b.wzx, Struct_1(arg_0.c, ~vec3<u32>(~u_input.c, arg_0.d.x, func_3(arg_0.b, global0[_wgslsmith_index_u32(0u, 7u)], arg_0.b.d.e)), arg_0.c, _wgslsmith_f_op_f32(arg_0.a.x - arg_0.b.b.d), ~(i32(-1i) * -40420i) >> (arg_1 % 32u)), arg_0.b.e);
    var var_1 = ~1u;
    var var_2 = func_2().b.a;
    var_0 = func_2().b;
    global3 = array<u32, 23>();
    return StorageBuffer(_wgslsmith_mod_vec4_u32(arg_0.d, ~(~_wgslsmith_sub_vec4_u32(vec4<u32>(arg_1, var_0.e.b.x, arg_0.d.x, 12616u), u_input.b))), countOneBits(~_wgslsmith_mod_i32(-24101i, u_input.a.x) & var_0.b.e), -845f, _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(arg_0.e.zzw * arg_0.e.zyz))))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_2, 6>();
    global0 = array<Struct_1, 7>();
    global2 = array<Struct_2, 6>();
    global2 = array<Struct_2, 6>();
    var var_0 = ~u_input.b.wyz;
    let x = u_input.a;
    s_output = func_4(func_1(vec3<u32>(~1u, max(var_0.x ^ 1u, firstLeadingBit(41870u)), u_input.c), global0[_wgslsmith_index_u32(101664u, 7u)], global0[_wgslsmith_index_u32(~(~firstLeadingBit(1u)), 7u)], global1[_wgslsmith_index_u32(~9067u, 9u)]), var_0.x);
}

