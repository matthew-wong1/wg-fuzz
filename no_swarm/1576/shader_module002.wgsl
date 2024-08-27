struct Struct_1 {
    a: vec2<bool>,
    b: f32,
}

struct Struct_2 {
    a: f32,
    b: bool,
    c: vec3<f32>,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec4<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 16> = array<Struct_1, 16>(Struct_1(vec2<bool>(true, false), -856f), Struct_1(vec2<bool>(true, false), -762f), Struct_1(vec2<bool>(true, true), -1025f), Struct_1(vec2<bool>(true, false), 501f), Struct_1(vec2<bool>(false, true), -558f), Struct_1(vec2<bool>(false, false), 790f), Struct_1(vec2<bool>(true, false), 1555f), Struct_1(vec2<bool>(true, true), 1201f), Struct_1(vec2<bool>(true, true), -665f), Struct_1(vec2<bool>(false, true), 3170f), Struct_1(vec2<bool>(false, false), -694f), Struct_1(vec2<bool>(false, false), 911f), Struct_1(vec2<bool>(true, true), 1435f), Struct_1(vec2<bool>(false, false), 981f), Struct_1(vec2<bool>(true, true), -371f), Struct_1(vec2<bool>(false, false), 264f));

var<private> global1: array<vec4<u32>, 18> = array<vec4<u32>, 18>(vec4<u32>(36224u, 1u, 52170u, 1u), vec4<u32>(4294967295u, 41879u, 24296u, 6931u), vec4<u32>(4294967295u, 48000u, 0u, 3323u), vec4<u32>(4294967295u, 50014u, 76296u, 51505u), vec4<u32>(0u, 16193u, 1u, 41513u), vec4<u32>(73891u, 12826u, 109609u, 4294967295u), vec4<u32>(1u, 4294967295u, 13652u, 77674u), vec4<u32>(12872u, 19445u, 1u, 4294967295u), vec4<u32>(48344u, 1u, 18248u, 5061u), vec4<u32>(40571u, 44474u, 0u, 1u), vec4<u32>(14573u, 0u, 80026u, 0u), vec4<u32>(25314u, 4294967295u, 24593u, 81339u), vec4<u32>(8777u, 4294967295u, 1u, 591u), vec4<u32>(52955u, 15940u, 1u, 4294967295u), vec4<u32>(1u, 75040u, 1u, 0u), vec4<u32>(0u, 83624u, 0u, 0u), vec4<u32>(8690u, 1u, 1u, 9450u), vec4<u32>(4294967295u, 4294967295u, 7727u, 29241u));

var<private> global2: vec3<u32> = vec3<u32>(53262u, 5857u, 4294967295u);

var<private> global3: array<f32, 18> = array<f32, 18>(632f, 1289f, -141f, 1194f, 621f, -1379f, 465f, -727f, -318f, -137f, 812f, 130f, -621f, 1090f, 1000f, 945f, -1358f, -1252f);

var<private> global4: array<bool, 7> = array<bool, 7>(true, true, true, false, true, false, false);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec3<f32>, arg_1: vec4<i32>, arg_2: Struct_2, arg_3: Struct_1) -> u32 {
    var var_0 = -1000f > _wgslsmith_f_op_f32(arg_3.b * 732f);
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3.b + arg_0.x) * -338f);
    let var_2 = !(min(arg_1.x, -u_input.d) >= (u_input.a | _wgslsmith_sub_i32(-arg_1.x, ~u_input.a)));
    let var_3 = abs(vec4<u32>(reverseBits(~abs(global2.x)), 6111u, min(global2.x, ~(global2.x ^ global2.x)), _wgslsmith_sub_u32(u_input.c, min(1u, ~global2.x))));
    var var_4 = Struct_2(_wgslsmith_div_f32(arg_0.x, -501f), false, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(var_1, arg_3.b), _wgslsmith_f_op_f32(-var_1), arg_0.x) + vec3<f32>(509f, arg_2.a, 2001f)))), vec2<bool>(any(!vec4<bool>(arg_3.a.x, arg_2.b, true, true)), arg_3.a.x));
    return _wgslsmith_clamp_u32(21625u, ~(~1u), ~u_input.c);
}

fn func_2(arg_0: bool) -> u32 {
    var var_0 = -u_input.a;
    global4 = array<bool, 7>();
    global2 = ~max(_wgslsmith_mult_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.c, 78770u, 4294967295u), vec3<u32>(8607u, global2.x, 0u)), ~vec3<u32>(4294967295u, 20066u, u_input.c)) | _wgslsmith_clamp_vec3_u32(firstLeadingBit(vec3<u32>(30411u, global2.x, u_input.b)), abs(vec3<u32>(1u, 4294967295u, 56663u)), _wgslsmith_mod_vec3_u32(vec3<u32>(0u, 0u, 21813u), vec3<u32>(4294967295u, global2.x, 8458u))), vec3<u32>(53418u, _wgslsmith_mult_u32(global2.x, func_3(vec3<f32>(global3[_wgslsmith_index_u32(0u, 18u)], global3[_wgslsmith_index_u32(global2.x, 18u)], global3[_wgslsmith_index_u32(4294967295u, 18u)]), vec4<i32>(u_input.d, u_input.d, -2147483647i, -2147483647i), Struct_2(896f, arg_0, vec3<f32>(global3[_wgslsmith_index_u32(1u, 18u)], -1342f, 1907f), vec2<bool>(arg_0, arg_0)), global0[_wgslsmith_index_u32(22127u, 16u)])), ~(~global2.x)));
    var var_1 = ~_wgslsmith_dot_vec4_u32(global1[_wgslsmith_index_u32(71693u, 18u)] << (~vec4<u32>(0u, u_input.c, 13766u, global2.x) % vec4<u32>(32u)), select(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, 37217u), 18u)] >> (global1[_wgslsmith_index_u32(~global2.x, 18u)] % vec4<u32>(32u)), vec4<u32>(min(4294967295u, global2.x), global2.x, _wgslsmith_add_u32(u_input.c, 4294967295u), global2.x), select(!vec4<bool>(true, true, false, global4[_wgslsmith_index_u32(4294967295u, 7u)]), select(vec4<bool>(global4[_wgslsmith_index_u32(global2.x, 7u)], true, global4[_wgslsmith_index_u32(u_input.c, 7u)], arg_0), vec4<bool>(global4[_wgslsmith_index_u32(global2.x, 7u)], false, global4[_wgslsmith_index_u32(u_input.b, 7u)], global4[_wgslsmith_index_u32(u_input.c, 7u)]), false), select(global4[_wgslsmith_index_u32(global2.x, 7u)], false, arg_0))));
    var_1 = ~u_input.b;
    return _wgslsmith_dot_vec3_u32(firstTrailingBit(_wgslsmith_div_vec3_u32(firstLeadingBit(~vec3<u32>(10505u, u_input.c, 0u)), _wgslsmith_clamp_vec3_u32(select(vec3<u32>(u_input.b, global2.x, 0u), vec3<u32>(1u, 1u, u_input.c), false), vec3<u32>(u_input.c, 0u, 0u), ~vec3<u32>(u_input.c, u_input.b, global2.x)))), ~(~(~(~vec3<u32>(u_input.b, 4294967295u, 25271u)))));
}

fn func_1() -> Struct_2 {
    global2 = vec3<u32>(global2.x, global2.x, func_2(true) << (global2.x % 32u));
    return Struct_2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.c, 45369u), 18u)]))), any(vec3<bool>(any(select(vec4<bool>(global4[_wgslsmith_index_u32(36873u, 7u)], false, false, global4[_wgslsmith_index_u32(4294967295u, 7u)]), vec4<bool>(true, global4[_wgslsmith_index_u32(global2.x, 7u)], global4[_wgslsmith_index_u32(1u, 7u)], false), global4[_wgslsmith_index_u32(u_input.b, 7u)])), global4[_wgslsmith_index_u32(min(~u_input.b, abs(global2.x)), 7u)], false)), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1576f, _wgslsmith_f_op_f32(select(global3[_wgslsmith_index_u32(17682u, 18u)], global3[_wgslsmith_index_u32(42500u, 18u)], false)), _wgslsmith_div_f32(global3[_wgslsmith_index_u32(4294967295u, 18u)], global3[_wgslsmith_index_u32(1u, 18u)])))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(global3[_wgslsmith_index_u32(11136u, 18u)], global3[_wgslsmith_index_u32(u_input.b, 18u)], 365f))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1638f, 243f, global3[_wgslsmith_index_u32(u_input.b, 18u)])))))), vec2<bool>((_wgslsmith_dot_vec4_u32(vec4<u32>(3712u, 64889u, u_input.b, 0u), global1[_wgslsmith_index_u32(u_input.b, 18u)]) < ~10133u) | any(vec3<bool>(false, false, global4[_wgslsmith_index_u32(67926u, 7u)])), !(!(true && global4[_wgslsmith_index_u32(global2.x, 7u)]))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: i32, arg_3: Struct_1) -> bool {
    global2 = countOneBits(~_wgslsmith_clamp_vec3_u32(reverseBits(vec3<u32>(u_input.b, global2.x, global2.x)) & _wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, global2.x, 0u), vec3<u32>(0u, global2.x, 40425u)), ~vec3<u32>(64598u, 12374u, u_input.c), _wgslsmith_clamp_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(65136u, 1u, 0u), vec3<u32>(global2.x, u_input.b, 4294967295u)), ~vec3<u32>(u_input.c, 0u, 6480u), vec3<u32>(global2.x, 30846u, 1510u))));
    global2 = countOneBits((vec3<u32>(2115u, 4651u, global2.x) & ~vec3<u32>(u_input.b, 22432u, u_input.c)) ^ ~abs(vec3<u32>(global2.x, 0u, 91325u))) << (~select(_wgslsmith_add_vec3_u32(firstLeadingBit(vec3<u32>(u_input.c, u_input.c, u_input.c)), vec3<u32>(global2.x, u_input.b, global2.x)), ~vec3<u32>(5979u, global2.x, global2.x) ^ ~vec3<u32>(u_input.b, 52312u, global2.x), !arg_0.b) % vec3<u32>(32u));
    var var_0 = arg_0.d.x;
    let var_1 = !(-1599f <= _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -650f), _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(38485u | global2.x, 18u)]))));
    var var_2 = true;
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(-1103f, any(select(vec2<bool>(select(false, global4[_wgslsmith_index_u32(u_input.b, 7u)], global4[_wgslsmith_index_u32(global2.x, 7u)]), select(false, global4[_wgslsmith_index_u32(global2.x, 7u)], global4[_wgslsmith_index_u32(global2.x, 7u)])), vec2<bool>(global4[_wgslsmith_index_u32(~34865u, 7u)], global4[_wgslsmith_index_u32(global2.x, 7u)]), false)), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global3[_wgslsmith_index_u32(61238u, 18u)], global3[_wgslsmith_index_u32(15630u, 18u)], -356f) * vec3<f32>(-509f, global3[_wgslsmith_index_u32(1u, 18u)], 373f)) + vec3<f32>(874f, -232f, global3[_wgslsmith_index_u32(59053u, 18u)])) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(global3[_wgslsmith_index_u32(4294967295u, 18u)], global3[_wgslsmith_index_u32(global2.x, 18u)], global3[_wgslsmith_index_u32(5390u, 18u)]))))), vec2<bool>(false, func_4(func_1(), global0[_wgslsmith_index_u32(4294967295u, 16u)], _wgslsmith_sub_i32(0i, 52656i), global0[_wgslsmith_index_u32(47196u, 16u)])));
    global1 = array<vec4<u32>, 18>();
    global1 = array<vec4<u32>, 18>();
    var var_1 = vec3<i32>(1i, 2147483647i, -34019i);
    let var_2 = countOneBits(51183u);
    var var_3 = _wgslsmith_f_op_f32(-1294f - var_0.c.x);
    let var_4 = global0[_wgslsmith_index_u32(~_wgslsmith_sub_u32(~_wgslsmith_dot_vec2_u32(global2.yz, abs(global2.yz)), func_2(1u < var_2)), 16u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(i32(-1i) * -1i, -17765i), reverseBits(var_1.xx), ~_wgslsmith_mult_vec2_i32(vec2<i32>(var_1.x, u_input.a), vec2<i32>(-30619i, -30000i))), firstLeadingBit(var_1.yx) >> (vec2<u32>(u_input.b, 936u) % vec2<u32>(32u))), abs(max(_wgslsmith_mod_vec3_u32(vec3<u32>(global2.x, u_input.c, 0u) << (vec3<u32>(4294967295u, 78622u, var_2) % vec3<u32>(32u)), ~vec3<u32>(global2.x, global2.x, 15056u)), _wgslsmith_clamp_vec3_u32(~vec3<u32>(u_input.b, global2.x, var_2), vec3<u32>(0u, u_input.c, 46693u), vec3<u32>(0u, var_2, global2.x)))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1000f))), -524f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-316f, var_4.b, !var_4.a.x))), global3[_wgslsmith_index_u32(0u, 18u)]), 1017f);
}

