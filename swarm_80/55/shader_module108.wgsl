struct Struct_1 {
    a: f32,
    b: vec4<i32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: Struct_1,
    d: u32,
    e: vec4<f32>,
}

struct Struct_4 {
    a: u32,
    b: vec4<u32>,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 6>;

var<private> global1: i32;

var<private> global2: array<bool, 15>;

var<private> global3: array<vec4<i32>, 14> = array<vec4<i32>, 14>(vec4<i32>(10322i, -47515i, 2147483647i, -1i), vec4<i32>(-6210i, 2147483647i, 0i, 24474i), vec4<i32>(1i, 2147483647i, -3121i, -57494i), vec4<i32>(9387i, i32(-2147483648), -13664i, 1i), vec4<i32>(0i, -32135i, -1i, 2147483647i), vec4<i32>(42097i, 29569i, 2147483647i, -918i), vec4<i32>(0i, -13524i, 45930i, i32(-2147483648)), vec4<i32>(-38018i, 34870i, -70457i, 13529i), vec4<i32>(2147483647i, 29082i, 31030i, 0i), vec4<i32>(0i, 2147483647i, 11571i, 2387i), vec4<i32>(17910i, 1i, i32(-2147483648), i32(-2147483648)), vec4<i32>(27999i, i32(-2147483648), 15999i, 20466i), vec4<i32>(2147483647i, 1i, 1i, -1i), vec4<i32>(-39424i, 0i, 19386i, 3650i));

var<private> global4: bool;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_3) -> u32 {
    global3 = array<vec4<i32>, 14>();
    let var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.c.a - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-739f * arg_0.c.a) * _wgslsmith_div_f32(-169f, arg_0.e.x))) - _wgslsmith_f_op_f32(step(arg_0.c.a, _wgslsmith_f_op_f32(-arg_0.c.a)))), vec4<i32>((reverseBits(0i) << (global0[_wgslsmith_index_u32(0u, 6u)] % 32u)) & _wgslsmith_mult_i32(arg_0.c.b.x, _wgslsmith_mod_i32(arg_0.c.b.x, u_input.b)), ~44988i, u_input.b, _wgslsmith_sub_i32(61240i | _wgslsmith_dot_vec3_i32(arg_0.c.b.yyy, vec3<i32>(-1367i, u_input.b, 0i)), 35736i)));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + -637f)))), var_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f + -697f) + -528f)));
    let var_2 = -1941f;
    var var_3 = Struct_2(countOneBits(u_input.a));
    return global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(select(49491u, _wgslsmith_div_u32(global0[_wgslsmith_index_u32(~arg_0.a.a, 6u)], global0[_wgslsmith_index_u32(52238u, 6u)]), global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(abs(~31610u), 6u)], ~firstTrailingBit(var_3.a)) | select(firstTrailingBit(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 6u)], 6u)]), ~var_3.a, any(select(vec2<bool>(false, arg_0.b), vec2<bool>(global2[_wgslsmith_index_u32(u_input.a, 15u)], global2[_wgslsmith_index_u32(u_input.a, 15u)]), global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 6u)], 15u)]))), 15u)]), 6u)], 6u)];
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_4(_wgslsmith_sub_u32(u_input.a, _wgslsmith_div_u32(~(~global0[_wgslsmith_index_u32(4294967295u, 6u)]), _wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(6460u, 6u)], 1u, 4294967295u))), vec4<u32>(u_input.a ^ abs(47529u), 694u, u_input.a << (18156u % 32u), ~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 1u), vec2<u32>(4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(37363u, 6u)], 6u)]))) & _wgslsmith_sub_vec4_u32(~vec4<u32>(41084u, global0[_wgslsmith_index_u32(u_input.a, 6u)], 49992u, 1u), vec4<u32>(1u, ~1u, func_3(Struct_3(Struct_2(7635u), global2[_wgslsmith_index_u32(65142u, 15u)], Struct_1(227f, vec4<i32>(u_input.b, 31847i, -12292i, u_input.b)), u_input.a, vec4<f32>(548f, -153f, 598f, -1183f))), global0[_wgslsmith_index_u32(0u, 6u)])), global3[_wgslsmith_index_u32(25162u, 14u)]);
    var var_1 = _wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(var_0.c, var_0.c) | (global3[_wgslsmith_index_u32(39295u, 14u)] << (var_0.b % vec4<u32>(32u))), reverseBits(_wgslsmith_clamp_vec4_i32(vec4<i32>(-35453i, u_input.b, u_input.b, var_0.c.x), vec4<i32>(var_0.c.x, 1i, var_0.c.x, -16406i), var_0.c))), -min(_wgslsmith_mod_i32(u_input.b, var_0.c.x), 2147483647i), -14649i, ~u_input.b), ~(-vec4<i32>(-5459i, var_0.c.x, u_input.b, ~var_0.c.x)));
    let var_2 = false;
    let var_3 = _wgslsmith_mod_u32(_wgslsmith_clamp_u32(_wgslsmith_sub_u32(_wgslsmith_mod_u32(~78518u, var_0.b.x), ~var_0.b.x | 73400u), firstLeadingBit(select(_wgslsmith_mod_u32(76884u, var_0.a), select(44611u, var_0.b.x, false), var_2 | true)), ~_wgslsmith_dot_vec4_u32(vec4<u32>(68779u, 4294967295u, global0[_wgslsmith_index_u32(var_0.b.x, 6u)], 14752u), vec4<u32>(global0[_wgslsmith_index_u32(var_0.a, 6u)], var_0.a, var_0.b.x, 92795u))), 23665u);
    let var_4 = var_0;
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-355f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(-319f, -161f, true)))))), ~(vec4<i32>(abs(-39956i), _wgslsmith_mult_i32(-2147483647i, var_1.x), -2147483647i, -var_1.x) << (~vec4<u32>(25627u, 54726u, 31687u, u_input.a) % vec4<u32>(32u))));
}

fn func_1() -> u32 {
    let var_0 = global0[_wgslsmith_index_u32(abs(31761u & _wgslsmith_mod_u32(u_input.a, 73926u)) ^ reverseBits(_wgslsmith_mod_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(u_input.a, 6u)], 0u), vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(27976u, 6u)], 6u)], 1328u)), 40157u)), 6u)];
    let var_1 = func_2();
    let var_2 = ~_wgslsmith_add_vec4_i32(var_1.b, _wgslsmith_sub_vec4_i32(-var_1.b, global3[_wgslsmith_index_u32(u_input.a, 14u)]));
    let var_3 = Struct_3(Struct_2(57276u), all(select(select(!vec3<bool>(true, true, global2[_wgslsmith_index_u32(4294967295u, 15u)]), select(vec3<bool>(false, true, global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 6u)], 15u)]), vec3<bool>(global2[_wgslsmith_index_u32(4294967295u, 15u)], false, false), vec3<bool>(false, global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4040u, 6u)], 15u)], true)), true), !select(vec3<bool>(true, global2[_wgslsmith_index_u32(u_input.a, 15u)], global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 6u)], 15u)]), vec3<bool>(false, true, global2[_wgslsmith_index_u32(1u, 15u)]), true), global2[_wgslsmith_index_u32(func_3(Struct_3(Struct_2(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(5661u, 6u)], 6u)], 6u)]), global2[_wgslsmith_index_u32(u_input.a, 15u)], var_1, u_input.a, vec4<f32>(-289f, -1284f, var_1.a, -1000f))), 15u)])), func_2(), u_input.a, _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a + -426f)), var_1.a, 1264f))));
    let var_4 = var_3;
    return 12431u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<i32>(_wgslsmith_sub_i32(_wgslsmith_add_i32(u_input.b, -u_input.b), i32(-1i) * -52448i), ~abs(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, 2147483647i, -3812i), vec3<i32>(-1i, u_input.b, -1i)) >> (_wgslsmith_sub_u32(u_input.a, 85048u) % 32u)), 45909i, i32(-1i) * -u_input.b);
    global2 = array<bool, 15>();
    var var_1 = _wgslsmith_f_op_f32(step(-1608f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(2563f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(159f * -450f)))))));
    var var_2 = select(select(vec4<bool>(true, !global2[_wgslsmith_index_u32(~33992u, 15u)], !select(false, global2[_wgslsmith_index_u32(40448u, 15u)], false), (global2[_wgslsmith_index_u32(u_input.a, 15u)] & false) & all(vec2<bool>(true, global2[_wgslsmith_index_u32(1u, 15u)]))), select(vec4<bool>(global2[_wgslsmith_index_u32(firstLeadingBit(16244u), 15u)], u_input.a < 16446u, global2[_wgslsmith_index_u32(u_input.a, 15u)], global2[_wgslsmith_index_u32(0u, 15u)]), select(vec4<bool>(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 6u)], 6u)], 15u)], true, false, global2[_wgslsmith_index_u32(0u, 15u)]), vec4<bool>(true, true, true, false), !global2[_wgslsmith_index_u32(u_input.a, 15u)]), select(vec4<bool>(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 6u)], 15u)], false, true, global2[_wgslsmith_index_u32(1u, 15u)]), !vec4<bool>(false, global2[_wgslsmith_index_u32(13722u, 15u)], global2[_wgslsmith_index_u32(46318u, 15u)], false), vec4<bool>(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 6u)], 15u)], true, false, global2[_wgslsmith_index_u32(0u, 15u)]))), true), !vec4<bool>(!global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(8478u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 6u)], 6u)], u_input.a, 4294967295u), vec4<u32>(global0[_wgslsmith_index_u32(11321u, 6u)], 62223u, 4294967295u, u_input.a)), 15u)], global2[_wgslsmith_index_u32(~1u, 15u)], global2[_wgslsmith_index_u32(~1u, 15u)], max(u_input.b, var_0.x) != abs(u_input.b)), !global2[_wgslsmith_index_u32(func_1(), 15u)]);
    let var_3 = Struct_3(Struct_2(~(0u & u_input.a)), !all(!vec3<bool>(false, false, global2[_wgslsmith_index_u32(4294967295u, 15u)])), Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-631f * _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(f32(-1f) * -975f)), -select(vec4<i32>(0i, -2147483647i, -24296i, u_input.b), vec4<i32>(u_input.b, 16783i, u_input.b, 6879i), global2[_wgslsmith_index_u32(u_input.a, 15u)]) ^ -(~vec4<i32>(1i, 0i, var_0.x, var_0.x))), ~_wgslsmith_mult_u32(4294967295u, global0[_wgslsmith_index_u32(func_1(), 6u)]), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-929f, -751f, 1000f, -125f)))));
    let var_4 = Struct_4(firstLeadingBit(26547u), firstLeadingBit(vec4<u32>(4294967295u, abs(u_input.a & 1u), func_1(), _wgslsmith_add_u32(firstTrailingBit(4294967295u), u_input.a << (u_input.a % 32u)))), global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.a, ~u_input.a), 14u)]);
    let var_5 = var_3.c.b.zwy;
    let x = u_input.a;
    s_output = StorageBuffer(min(var_4.b.zwz, vec3<u32>(~_wgslsmith_sub_u32(4294967295u, u_input.a), 7052u, 4294967295u)));
}

