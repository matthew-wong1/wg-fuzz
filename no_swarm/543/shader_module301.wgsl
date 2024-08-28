struct Struct_1 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: i32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<f32>(1020f, -3222f, -1000f));

var<private> global1: array<Struct_1, 22> = array<Struct_1, 22>(Struct_1(vec3<f32>(1015f, -597f, 224f)), Struct_1(vec3<f32>(-566f, 1091f, 147f)), Struct_1(vec3<f32>(906f, 1620f, 435f)), Struct_1(vec3<f32>(1677f, -798f, -835f)), Struct_1(vec3<f32>(-330f, -930f, -111f)), Struct_1(vec3<f32>(1178f, 1000f, 681f)), Struct_1(vec3<f32>(1000f, -462f, -2183f)), Struct_1(vec3<f32>(515f, -375f, 1110f)), Struct_1(vec3<f32>(-1201f, 126f, -2790f)), Struct_1(vec3<f32>(-1081f, -1000f, -408f)), Struct_1(vec3<f32>(146f, -784f, 1481f)), Struct_1(vec3<f32>(-703f, -1228f, -1567f)), Struct_1(vec3<f32>(-1532f, 680f, -2967f)), Struct_1(vec3<f32>(-1232f, -488f, -805f)), Struct_1(vec3<f32>(-1438f, 2250f, -259f)), Struct_1(vec3<f32>(-532f, -1000f, -1968f)), Struct_1(vec3<f32>(1026f, 2390f, -423f)), Struct_1(vec3<f32>(543f, -220f, -2808f)), Struct_1(vec3<f32>(1530f, 333f, -1384f)), Struct_1(vec3<f32>(-114f, -189f, 1964f)), Struct_1(vec3<f32>(-1146f, -1000f, 1371f)), Struct_1(vec3<f32>(-192f, -1006f, -1000f)));

var<private> global2: Struct_1;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3() -> vec3<u32> {
    return _wgslsmith_sub_vec3_u32(_wgslsmith_clamp_vec3_u32(abs(vec3<u32>(u_input.d, u_input.a, u_input.b) & vec3<u32>(30203u, u_input.e, u_input.a)), vec3<u32>(u_input.a << (~10619u % 32u), _wgslsmith_div_u32(4294967295u, u_input.d) ^ reverseBits(u_input.b), _wgslsmith_mult_u32(_wgslsmith_mod_u32(1u, u_input.b), 4294967295u)), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.e, u_input.d, 1u), _wgslsmith_mod_vec3_u32(~vec3<u32>(1u, 36006u, u_input.e), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.e, u_input.b, 47616u), vec3<u32>(10858u, 0u, 9857u))))), max(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.b, ~4294967295u, u_input.a), abs(vec3<u32>(u_input.a, 1u, u_input.e)) ^ (vec3<u32>(u_input.a, 1u, 74849u) | vec3<u32>(u_input.e, 9880u, 0u))), ~(~reverseBits(vec3<u32>(u_input.d, u_input.d, 4294967295u)))));
}

fn func_4(arg_0: vec3<u32>, arg_1: vec2<i32>, arg_2: vec4<u32>) -> bool {
    global0 = global1[_wgslsmith_index_u32(arg_0.x, 22u)];
    global1 = array<Struct_1, 22>();
    let var_0 = global2.a.zx;
    var var_1 = global1[_wgslsmith_index_u32(reverseBits(u_input.d), 22u)];
    global0 = global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(arg_2.x, firstTrailingBit((_wgslsmith_mod_u32(u_input.d, arg_2.x) | 4024u) | _wgslsmith_add_u32(~arg_2.x, ~arg_0.x)), min(_wgslsmith_clamp_u32(1u, ~u_input.a, select(4294967295u & u_input.a, 1u, true)), ~arg_2.x)), 22u)];
    return any(!select(select(vec2<bool>(false, true), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false))), select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, false), false), false), !select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true))));
}

fn func_2() -> vec4<u32> {
    var var_0 = !func_4(abs(func_3()), vec2<i32>(countOneBits(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 0i, 1i), vec3<i32>(-2147483647i, -1i, -1i))), _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(-35623i, 0i), vec2<i32>(u_input.c, u_input.c)), vec2<i32>(u_input.c, 1i))), reverseBits(~vec4<u32>(14026u, u_input.a, 73737u, u_input.d)));
    var var_1 = firstLeadingBit(abs(u_input.c));
    let var_2 = vec4<bool>(any(vec3<bool>(true, true, true)), true, !func_4(vec3<u32>(u_input.e, _wgslsmith_div_u32(u_input.a, 4294967295u), u_input.e), -vec2<i32>(u_input.c, u_input.c), vec4<u32>(max(u_input.a, u_input.d), 1u, ~4294967295u, 0u)), 31642u >= _wgslsmith_clamp_u32(firstLeadingBit(33203u) ^ u_input.d, _wgslsmith_clamp_u32(_wgslsmith_mod_u32(40130u, 57616u), ~u_input.b, 19118u >> (u_input.b % 32u)), _wgslsmith_mult_u32(~u_input.e, _wgslsmith_mod_u32(u_input.b, u_input.e))));
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.a.x, global0.a.x) - _wgslsmith_f_op_f32(-132f * -751f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(968f)) - _wgslsmith_f_op_f32(2443f - -1016f)), _wgslsmith_f_op_f32(max(1616f, _wgslsmith_f_op_f32(-global0.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1056f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global0.a.x), _wgslsmith_f_op_f32(-566f + 1878f), -1422f, _wgslsmith_f_op_f32(-925f * 1086f)))));
    var var_4 = Struct_1(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(var_3.zwx)) + _wgslsmith_f_op_vec3_f32(min(vec3<f32>(global0.a.x, global0.a.x, 940f), global0.a))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-925f, global2.a.x, global2.a.x))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.x, -808f, global0.a.x) - var_3.zzw))))));
    return vec4<u32>(0u, u_input.b, 65292u, _wgslsmith_clamp_u32(~u_input.b & abs(_wgslsmith_add_u32(0u, 4294967295u)), _wgslsmith_mult_u32(57553u, 1334u), 0u << (abs(~u_input.d) % 32u)));
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: Struct_1, arg_3: i32) -> Struct_1 {
    var var_0 = arg_2;
    let var_1 = ~func_2();
    var_0 = arg_1;
    var var_2 = var_1;
    var var_3 = ~var_2.x;
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = global1[_wgslsmith_index_u32(u_input.a, 22u)];
    let var_0 = global1[_wgslsmith_index_u32(54549u, 22u)];
    global0 = func_1(!vec4<bool>(false, true, all(vec4<bool>(false, true, false, true)) & true, any(vec3<bool>(true, true, false))), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.a.x, global0.a.x, 1809f)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global2.a) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-521f, global2.a.x, global2.a.x) * vec3<f32>(-2360f, 377f, 665f))))), Struct_1(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(global2.a.x, _wgslsmith_f_op_f32(f32(-1f) * -366f), 468f), var_0.a))), ~_wgslsmith_mod_i32(_wgslsmith_sub_i32(u_input.c, ~2147483647i), _wgslsmith_mod_i32(~u_input.c, u_input.c)));
    var var_1 = global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~_wgslsmith_add_u32(0u, u_input.a), _wgslsmith_add_u32(_wgslsmith_clamp_u32(~1u, 0u, _wgslsmith_mod_u32(_wgslsmith_div_u32(34395u, u_input.d), ~u_input.d)), 1u), select(~reverseBits(_wgslsmith_sub_u32(9243u, u_input.b)), 4294967295u, all(vec4<bool>(true, true, func_4(vec3<u32>(4294967295u, 0u, u_input.d), vec2<i32>(u_input.c, -2147483647i), vec4<u32>(u_input.d, 4294967295u, 53367u, u_input.e)), true)))), 22u)];
    var_1 = global1[_wgslsmith_index_u32(u_input.b, 22u)];
    var var_2 = -1726f;
    var_1 = global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(4294967295u, _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(~reverseBits(vec4<u32>(64336u, 52921u, 35269u, 485u)), countOneBits(~vec4<u32>(u_input.b, 4294967295u, u_input.a, u_input.e))), (countOneBits(vec4<u32>(38613u, 4294967295u, 1u, 1u)) >> ((vec4<u32>(u_input.b, 21230u, 55221u, u_input.b) & vec4<u32>(1u, u_input.a, 37484u, u_input.d)) % vec4<u32>(32u))) | _wgslsmith_mod_vec4_u32(vec4<u32>(181416u, 1u, 3096u, 22602u), _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 77730u, u_input.a, u_input.d), vec4<u32>(0u, 1u, u_input.e, 77331u), vec4<u32>(u_input.d, u_input.b, 0u, u_input.d))))), 22u)];
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_add_i32(_wgslsmith_mult_i32(11953i, u_input.c) & u_input.c, -u_input.c), _wgslsmith_f_op_vec3_f32(vec3<f32>(global2.a.x, -1599f, var_1.a.x) + _wgslsmith_f_op_vec3_f32(exp2(global2.a))), -reverseBits(~firstTrailingBit(1i)), abs((~vec4<i32>(u_input.c, u_input.c, 29157i, 6762i) ^ ~vec4<i32>(11992i, -2147483647i, -16993i, 1i)) | (vec4<i32>(-1i) * -vec4<i32>(u_input.c, u_input.c, u_input.c, u_input.c))));
}

