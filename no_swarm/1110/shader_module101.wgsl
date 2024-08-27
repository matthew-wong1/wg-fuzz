struct Struct_1 {
    a: bool,
    b: i32,
    c: bool,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec4<u32>,
    d: f32,
    e: vec2<f32>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec3<bool>,
    c: u32,
    d: Struct_2,
    e: u32,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec4<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 3>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_1(arg_0: Struct_3, arg_1: bool, arg_2: vec4<u32>) -> vec4<u32> {
    global0 = array<bool, 3>();
    let var_0 = _wgslsmith_div_vec3_u32(vec3<u32>((arg_0.d.c.x << (7182u % 32u)) << (~0u % 32u), u_input.b, countOneBits(arg_0.e)), ~(~(~arg_2.xwx))) >> (vec3<u32>(u_input.b, arg_0.e, arg_0.e) % vec3<u32>(32u));
    global0 = array<bool, 3>();
    global0 = array<bool, 3>();
    global0 = array<bool, 3>();
    return _wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(~vec4<u32>(arg_0.e, 16052u, var_0.x, arg_0.c), ~vec4<u32>(4294967295u, arg_2.x, var_0.x, u_input.b)) & (arg_0.a | vec4<u32>(u_input.b, 21010u, arg_0.e, 1u)), vec4<u32>(arg_2.x, arg_0.a.x, ~arg_2.x | (arg_0.a.x ^ arg_2.x), ~30248u)), ~select(~(~arg_2), arg_2 >> ((arg_0.a | arg_2) % vec4<u32>(32u)), !vec4<bool>(global0[_wgslsmith_index_u32(u_input.b, 3u)], arg_0.b.x, global0[_wgslsmith_index_u32(16036u, 3u)], false)));
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_3, arg_2: bool, arg_3: vec3<u32>) -> vec4<bool> {
    global0 = array<bool, 3>();
    let var_0 = arg_1.d.b.a & global0[_wgslsmith_index_u32(u_input.b, 3u)];
    let var_1 = arg_1;
    var var_2 = Struct_3(vec4<u32>(~24446u, _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(arg_3, vec3<u32>(4294967295u, u_input.b, arg_1.c)), 5699u), ~(arg_1.e ^ 16124u), min(0u, min(arg_3.x, u_input.b))) >> (~(~(vec4<u32>(arg_3.x, arg_3.x, 27643u, var_1.a.x) | vec4<u32>(44509u, var_1.d.c.x, arg_1.e, arg_3.x))) % vec4<u32>(32u)), !select(!select(vec3<bool>(arg_1.b.x, var_0, global0[_wgslsmith_index_u32(arg_3.x, 3u)]), var_1.b, vec3<bool>(var_1.d.b.c, var_0, true)), arg_1.b, var_1.b), u_input.b, var_1.d, 0u);
    global0 = array<bool, 3>();
    return vec4<bool>(any(arg_1.b), true, true, all(!vec2<bool>(all(var_1.b), true)));
}

fn func_2() -> Struct_1 {
    global0 = array<bool, 3>();
    global0 = array<bool, 3>();
    var var_0 = !(!select(vec4<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 3u)], false, any(vec4<bool>(false, true, global0[_wgslsmith_index_u32(u_input.b, 3u)], global0[_wgslsmith_index_u32(4294967295u, 3u)]))), func_3(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(360f, -1000f))), Struct_3(vec4<u32>(u_input.b, u_input.b, 1u, u_input.b), vec3<bool>(false, true, global0[_wgslsmith_index_u32(u_input.b, 3u)]), u_input.b, Struct_2(-334f, Struct_1(global0[_wgslsmith_index_u32(100907u, 3u)], -5838i, global0[_wgslsmith_index_u32(u_input.b, 3u)]), vec4<u32>(u_input.b, 2786u, u_input.b, 74410u), -1000f, vec2<f32>(-172f, -1044f)), u_input.b), any(vec2<bool>(global0[_wgslsmith_index_u32(u_input.b, 3u)], true)), ~vec3<u32>(70814u, u_input.b, u_input.b)), func_3(vec2<f32>(-1555f, -117f), Struct_3(vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b), vec3<bool>(false, global0[_wgslsmith_index_u32(77563u, 3u)], global0[_wgslsmith_index_u32(u_input.b, 3u)]), u_input.b, Struct_2(955f, Struct_1(true, u_input.a.x, true), vec4<u32>(24934u, u_input.b, 19897u, u_input.b), -1622f, vec2<f32>(-1575f, -936f)), 7015u), true, vec3<u32>(u_input.b, u_input.b, u_input.b))));
    var_0 = select(!vec4<bool>(true, select(-48557i >= u_input.c.x, !var_0.x, true), !var_0.x, select(var_0.x, true, !var_0.x)), !(!(!(!vec4<bool>(true, true, global0[_wgslsmith_index_u32(u_input.b, 3u)], var_0.x)))), all(func_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1171f, -2464f) + vec2<f32>(-1000f, 1454f)), Struct_3(vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b), vec3<bool>(false, var_0.x, false), u_input.b, Struct_2(596f, Struct_1(global0[_wgslsmith_index_u32(0u, 3u)], 10733i, var_0.x), vec4<u32>(u_input.b, u_input.b, 14551u, 80182u), -777f, vec2<f32>(-862f, 697f)), 86242u), var_0.x, firstTrailingBit(vec3<u32>(u_input.b, u_input.b, u_input.b)))) && all(vec3<bool>(false, var_0.x, global0[_wgslsmith_index_u32(1u, 3u)] || var_0.x)));
    let var_1 = Struct_1(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_mult_u32(u_input.b, reverseBits(u_input.b)), min(18950u, u_input.b) & 4294967295u) ^ u_input.b, 3u)], -33149i, var_0.x);
    return Struct_1(max(_wgslsmith_add_u32(_wgslsmith_mod_u32(57641u, u_input.b), u_input.b ^ 80727u), ~u_input.b) > ~_wgslsmith_mult_u32(u_input.b, ~u_input.b), _wgslsmith_mod_i32(abs(14202i), var_1.b), func_3(vec2<f32>(-1049f, _wgslsmith_f_op_f32(-994f - 260f)), Struct_3(reverseBits(vec4<u32>(u_input.b, 1u, 66499u, 0u)), vec3<bool>(var_1.c, true, global0[_wgslsmith_index_u32(u_input.b, 3u)]), _wgslsmith_mult_u32(u_input.b, 0u), Struct_2(-680f, Struct_1(false, -31780i, true), vec4<u32>(1u, 0u, u_input.b, 8166u), 560f, vec2<f32>(-769f, -1510f)), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.b), vec2<u32>(u_input.b, u_input.b))), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 3294u), vec2<u32>(4294967295u, u_input.b) >> (vec2<u32>(u_input.b, 50912u) % vec2<u32>(32u))), 3u)], vec3<u32>(1u, ~40553u, _wgslsmith_mod_u32(7527u, 10692u))).x && var_1.c);
}

fn func_4(arg_0: f32, arg_1: vec4<u32>, arg_2: Struct_3) -> Struct_1 {
    let var_0 = func_2();
    var var_1 = arg_2.d.c.x;
    let var_2 = _wgslsmith_dot_vec2_i32(-u_input.a & -_wgslsmith_mod_vec2_i32(~vec2<i32>(var_0.b, arg_2.d.b.b), ~vec2<i32>(arg_2.d.b.b, 0i)), u_input.d);
    var var_3 = Struct_1(true, var_0.b >> (41216u % 32u), global0[_wgslsmith_index_u32(u_input.b, 3u)]);
    var_3 = arg_2.d.b;
    return func_2();
}

fn func_5(arg_0: u32, arg_1: Struct_1) -> Struct_2 {
    let var_0 = arg_1;
    global0 = array<bool, 3>();
    var var_1 = true | (any(vec2<bool>(any(vec3<bool>(false, false, true)), global0[_wgslsmith_index_u32(arg_0, 3u)])) || any(!(!vec2<bool>(false, global0[_wgslsmith_index_u32(49571u, 3u)]))));
    var_1 = true;
    var_1 = global0[_wgslsmith_index_u32(41469u, 3u)];
    return Struct_2(_wgslsmith_div_f32(-907f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-492f, 810f, arg_1.c)) * _wgslsmith_div_f32(1000f, -563f))))), func_4(1768f, vec4<u32>(_wgslsmith_mult_u32(1u, arg_0 ^ 4294967295u), _wgslsmith_mod_u32(~28979u, ~109416u), u_input.b, 17526u << (~u_input.b % 32u)), Struct_3(~(vec4<u32>(0u, 0u, 4294967295u, 1u) ^ vec4<u32>(arg_0, arg_0, 33446u, u_input.b)), func_3(vec2<f32>(-852f, -346f), Struct_3(vec4<u32>(1u, 4294967295u, u_input.b, arg_0), vec3<bool>(false, arg_1.a, true), u_input.b, Struct_2(-806f, var_0, vec4<u32>(u_input.b, u_input.b, 1u, 4294967295u), -1771f, vec2<f32>(-2340f, 299f)), u_input.b), arg_1.b == u_input.c.x, _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b, 0u, u_input.b), vec3<u32>(u_input.b, arg_0, 4294967295u))).xww, func_1(Struct_3(vec4<u32>(arg_0, 4294967295u, arg_0, 4294967295u), vec3<bool>(var_0.a, global0[_wgslsmith_index_u32(42545u, 3u)], arg_1.c), u_input.b, Struct_2(-1000f, Struct_1(arg_1.a, u_input.c.x, global0[_wgslsmith_index_u32(1u, 3u)]), vec4<u32>(u_input.b, 5988u, 42570u, 17732u), 1134f, vec2<f32>(-444f, 706f)), 31540u), func_4(-308f, vec4<u32>(4294967295u, u_input.b, u_input.b, arg_0), Struct_3(vec4<u32>(33586u, 1u, 1u, arg_0), vec3<bool>(true, false, global0[_wgslsmith_index_u32(4294967295u, 3u)]), arg_0, Struct_2(-488f, arg_1, vec4<u32>(11102u, 4294967295u, 10040u, 4294967295u), -1140f, vec2<f32>(151f, 1295f)), 4294967295u)).a, func_1(Struct_3(vec4<u32>(1u, 56542u, arg_0, arg_0), vec3<bool>(arg_1.c, arg_1.a, arg_1.a), u_input.b, Struct_2(408f, Struct_1(true, u_input.a.x, global0[_wgslsmith_index_u32(4294967295u, 3u)]), vec4<u32>(75963u, 4294967295u, u_input.b, arg_0), 412f, vec2<f32>(709f, 1199f)), 4294967295u), arg_1.c, vec4<u32>(arg_0, u_input.b, u_input.b, 1u))).x, Struct_2(-2373f, func_4(-717f, vec4<u32>(1u, 4294967295u, u_input.b, 49532u), Struct_3(vec4<u32>(arg_0, u_input.b, u_input.b, 15323u), vec3<bool>(true, arg_1.a, true), u_input.b, Struct_2(1297f, Struct_1(true, var_0.b, global0[_wgslsmith_index_u32(220u, 3u)]), vec4<u32>(arg_0, 4294967295u, arg_0, arg_0), -446f, vec2<f32>(-1000f, -753f)), arg_0)), vec4<u32>(arg_0, u_input.b, u_input.b, arg_0), _wgslsmith_f_op_f32(f32(-1f) * -823f), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-722f, -1394f), vec2<f32>(1000f, 628f)))), ~firstTrailingBit(72655u))), ~_wgslsmith_add_vec4_u32(~vec4<u32>(0u, 0u, 29030u, 1u) & firstLeadingBit(vec4<u32>(45820u, u_input.b, 784u, u_input.b)), select(vec4<u32>(4294967295u, 91948u, 4294967295u, 79368u), vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b), true) ^ _wgslsmith_div_vec4_u32(vec4<u32>(0u, 1u, 95541u, u_input.b), vec4<u32>(u_input.b, 3961u, 1u, arg_0))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(214f)))) - -1000f), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1000f))), _wgslsmith_f_op_f32(floor(-696f))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(firstTrailingBit(countOneBits(1u)), func_4(-1521f, abs(select(vec4<u32>(u_input.b, u_input.b, 13360u, u_input.b), func_1(Struct_3(vec4<u32>(14338u, u_input.b, 4294967295u, u_input.b), vec3<bool>(true, true, global0[_wgslsmith_index_u32(u_input.b, 3u)]), 1u, Struct_2(-456f, Struct_1(true, 0i, global0[_wgslsmith_index_u32(u_input.b, 3u)]), vec4<u32>(82615u, 22880u, 0u, u_input.b), -265f, vec2<f32>(250f, -1531f)), u_input.b), global0[_wgslsmith_index_u32(u_input.b, 3u)], vec4<u32>(u_input.b, 4294967295u, u_input.b, 1u)), true)), Struct_3(abs(vec4<u32>(u_input.b, 0u, u_input.b, u_input.b) & vec4<u32>(28265u, u_input.b, 18348u, 4294967295u)), !select(vec3<bool>(false, false, false), vec3<bool>(global0[_wgslsmith_index_u32(u_input.b, 3u)], global0[_wgslsmith_index_u32(u_input.b, 3u)], global0[_wgslsmith_index_u32(4294967295u, 3u)]), global0[_wgslsmith_index_u32(u_input.b, 3u)]), u_input.b, Struct_2(-1209f, func_2(), ~vec4<u32>(1u, u_input.b, u_input.b, 4294967295u), _wgslsmith_f_op_f32(-830f * 1475f), _wgslsmith_f_op_vec2_f32(vec2<f32>(-246f, -1000f) * vec2<f32>(249f, 129f))), u_input.b)));
    var var_1 = u_input.c;
    var var_2 = var_0;
    var var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-183f * var_2.d), _wgslsmith_f_op_f32(-var_0.e.x), func_5(u_input.b, var_0.b).e.x) * vec3<f32>(_wgslsmith_f_op_f32(-var_2.d), _wgslsmith_f_op_f32(round(-1000f)), _wgslsmith_f_op_f32(select(-1184f, -226f, var_2.b.a)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1979f, var_2.a, var_2.e.x)))) - _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(1000f, 281f, var_0.d), vec3<f32>(1366f, 179f, 3211f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(175f, 523f, -1102f) - vec3<f32>(var_0.e.x, var_0.e.x, var_2.a))))))));
    var_2 = func_5(abs(func_1(Struct_3(vec4<u32>(var_0.c.x, u_input.b, 38033u, u_input.b), vec3<bool>(var_2.b.c, true, true), u_input.b, var_0, var_2.c.x), var_2.b.a, vec4<u32>(85934u, var_0.c.x, 58896u, var_2.c.x) >> (var_2.c % vec4<u32>(32u))).x) >> (_wgslsmith_dot_vec3_u32(min(~vec3<u32>(54866u, var_2.c.x, 37611u), var_0.c.xww ^ vec3<u32>(var_0.c.x, var_2.c.x, 58348u)), var_0.c.wzy) % 32u), func_5(u_input.b << (1u % 32u), Struct_1(!var_2.b.c, 2147483647i, 11814i < -var_1.x)).b);
    var var_4 = u_input.c;
    let var_5 = !func_3(var_2.e, Struct_3(firstTrailingBit(vec4<u32>(var_0.c.x, var_2.c.x, u_input.b, var_2.c.x)), !(!vec3<bool>(var_2.b.c, true, var_0.b.a)), 1u >> (_wgslsmith_mod_u32(4294967295u, u_input.b) % 32u), Struct_2(_wgslsmith_f_op_f32(-309f - var_0.d), Struct_1(true, var_0.b.b, false), var_2.c, _wgslsmith_f_op_f32(var_0.a * var_0.a), vec2<f32>(var_3.x, -1533f)), ~countOneBits(var_2.c.x)), _wgslsmith_sub_u32(u_input.b, u_input.b) < 78010u, ~(~_wgslsmith_mult_vec3_u32(var_0.c.yxy, vec3<u32>(var_0.c.x, 2641u, var_2.c.x)))).xxz;
    var_4 = ~(~_wgslsmith_sub_vec4_i32(-vec4<i32>(var_4.x, 16038i, -2147483647i, u_input.d.x), u_input.c) >> (max(var_2.c ^ ~vec4<u32>(u_input.b, 4463u, 0u, var_2.c.x), var_0.c) % vec4<u32>(32u)));
    let var_6 = var_5.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec4_i32(select(~vec4<i32>(-2147483647i, -14426i, var_4.x, var_2.b.b), -u_input.c, select(vec4<bool>(true, global0[_wgslsmith_index_u32(var_0.c.x, 3u)], false, true), func_3(var_2.e, Struct_3(vec4<u32>(6178u, var_2.c.x, 43855u, var_0.c.x), var_5, u_input.b, var_0, 0u), var_2.b.a, var_2.c.xyw), !global0[_wgslsmith_index_u32(var_2.c.x, 3u)])), u_input.c), func_5(u_input.b, Struct_1(!var_0.b.a, 1i, var_0.b.c)).c.x, abs(42373i));
}

