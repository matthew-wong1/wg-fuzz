struct Struct_1 {
    a: vec2<u32>,
    b: vec2<u32>,
    c: bool,
    d: vec2<u32>,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_1, 32>;

var<private> global2: array<vec2<bool>, 22> = array<vec2<bool>, 22>(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true));

var<private> global3: array<f32, 15> = array<f32, 15>(893f, -1320f, 1000f, -1843f, -513f, -195f, -1164f, -1000f, -1580f, 752f, 2550f, 1181f, -1399f, -812f, 3081f);

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec3<f32>) -> vec4<i32> {
    global1 = array<Struct_1, 32>();
    global1 = array<Struct_1, 32>();
    global2 = array<vec2<bool>, 22>();
    var var_0 = Struct_1(firstTrailingBit(vec2<u32>(global0.b.x, _wgslsmith_mod_u32(~u_input.b, ~u_input.b))), firstTrailingBit(max(~vec2<u32>(global0.b.x, 23361u), _wgslsmith_clamp_vec2_u32(reverseBits(vec2<u32>(u_input.b, u_input.b)), global0.d, firstLeadingBit(global0.b)))), true, firstLeadingBit(select(_wgslsmith_sub_vec2_u32(~global0.d, _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.b, u_input.b), global0.a)), global0.a, !(!global2[_wgslsmith_index_u32(82149u, 22u)]))), -vec4<i32>(-global0.e.x, 1i, 1i, firstLeadingBit(2147483647i)));
    global2 = array<vec2<bool>, 22>();
    return select(var_0.e, -_wgslsmith_mult_vec4_i32(vec4<i32>(global0.e.x, -var_0.e.x, ~var_0.e.x, max(u_input.c, u_input.a)), global0.e), !(!select(select(vec4<bool>(var_0.c, false, global0.c, var_0.c), vec4<bool>(false, false, false, global0.c), vec4<bool>(true, var_0.c, false, false)), vec4<bool>(global0.c, true, true, false), vec4<bool>(var_0.c, false, true, global0.c))));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<bool>) -> u32 {
    global2 = array<vec2<bool>, 22>();
    let var_0 = vec2<i32>(arg_0.e.x, ~_wgslsmith_mult_i32(global0.e.x, max(16138i, -1i)) ^ arg_0.e.x);
    let var_1 = vec3<i32>(_wgslsmith_mod_i32(890i, 2147483647i), _wgslsmith_add_i32(arg_0.e.x & select(-u_input.d, _wgslsmith_dot_vec2_i32(var_0, var_0), all(vec4<bool>(arg_0.c, false, arg_1.x, false))), 2147483647i | _wgslsmith_sub_i32(global0.e.x >> (4294967295u % 32u), u_input.a)), -43466i);
    global0 = arg_0;
    var var_2 = ~vec3<u32>(countOneBits(~(~16784u)), 37980u, 0u);
    return firstLeadingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(26503u, ~0u), var_2.yz));
}

fn func_2(arg_0: bool, arg_1: bool) -> Struct_1 {
    let var_0 = global1[_wgslsmith_index_u32(~func_4(Struct_1(~select(vec2<u32>(0u, 4294967295u), global0.d, global2[_wgslsmith_index_u32(4294967295u, 22u)]), ~(~vec2<u32>(4294967295u, global0.d.x)), true | all(vec3<bool>(false, arg_0, arg_0)), (vec2<u32>(u_input.b, 4294967295u) >> (vec2<u32>(u_input.b, 14671u) % vec2<u32>(32u))) & _wgslsmith_div_vec2_u32(vec2<u32>(6977u, u_input.b), vec2<u32>(u_input.b, 1u)), func_3(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1213f, -577f, global3[_wgslsmith_index_u32(global0.b.x, 15u)]))))), global2[_wgslsmith_index_u32(_wgslsmith_div_u32(16579u << (_wgslsmith_dot_vec4_u32(vec4<u32>(6806u, 14013u, 0u, 0u), vec4<u32>(1u, u_input.b, global0.d.x, global0.d.x)) % 32u), ~(~global0.b.x)), 22u)]), 32u)];
    let var_1 = var_0.d.x;
    var var_2 = _wgslsmith_div_vec4_u32(max(vec4<u32>(~firstLeadingBit(var_0.d.x), 59387u, 15051u, ~global0.b.x), vec4<u32>(global0.d.x, firstLeadingBit(_wgslsmith_clamp_u32(var_0.d.x, global0.b.x, u_input.b)), _wgslsmith_sub_u32(1u, 0u), global0.b.x)), ~(~vec4<u32>(_wgslsmith_div_u32(1u, u_input.b), var_0.d.x, ~1u, 35924u)));
    var var_3 = _wgslsmith_add_vec2_i32(abs(var_0.e.zx), abs(-var_0.e.wz));
    global1 = array<Struct_1, 32>();
    return Struct_1(vec2<u32>(var_2.x, countOneBits(global0.b.x)) | (vec2<u32>(~var_0.a.x, var_0.d.x << (var_2.x % 32u)) & vec2<u32>(~1u, _wgslsmith_dot_vec2_u32(vec2<u32>(46905u, u_input.b), vec2<u32>(global0.b.x, 4294967295u)))), max(~var_0.a, var_0.d), !var_0.c, global0.b, select(_wgslsmith_add_vec4_i32((var_0.e ^ vec4<i32>(-21070i, 5864i, -4680i, 16862i)) << (~vec4<u32>(var_0.d.x, u_input.b, var_2.x, 1u) % vec4<u32>(32u)), _wgslsmith_div_vec4_i32(var_0.e, vec4<i32>(var_0.e.x, global0.e.x, u_input.c, global0.e.x))), global0.e, !select(select(vec4<bool>(arg_0, false, true, var_0.c), vec4<bool>(false, false, arg_1, true), arg_1), select(vec4<bool>(true, var_0.c, arg_1, arg_0), vec4<bool>(false, false, arg_0, arg_0), vec4<bool>(true, arg_1, true, false)), !vec4<bool>(true, true, false, var_0.c))));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<bool>, arg_3: f32) -> i32 {
    let var_0 = func_2(false, u_input.a <= -54319i);
    let var_1 = func_2(arg_0.c, arg_1.e.x < -2147483647i);
    global1 = array<Struct_1, 32>();
    var var_2 = vec4<i32>(~(-43500i), ~(var_0.e.x >> (select(global0.b.x, arg_0.a.x, var_1.c) % 32u)), 1i, ~1i) >> (firstTrailingBit(vec4<u32>(arg_1.d.x, _wgslsmith_sub_u32(arg_1.a.x & 21641u, _wgslsmith_div_u32(global0.b.x, 4294967295u)), reverseBits(_wgslsmith_mult_u32(arg_0.d.x, 31177u)), u_input.b)) % vec4<u32>(32u));
    var var_3 = firstTrailingBit(countOneBits(~select(abs(vec4<u32>(arg_1.a.x, global0.a.x, 11147u, 14339u)), ~vec4<u32>(var_1.d.x, 13817u, 16134u, 4294967295u), var_2.x > var_1.e.x)));
    return -reverseBits((i32(-1i) * -var_1.e.x) | ~(-2147483647i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_mod_vec2_u32(~global0.a, global0.b), ~select(max(~global0.d, global0.d), ~_wgslsmith_clamp_vec2_u32(global0.b, vec2<u32>(4294967295u, 1u), vec2<u32>(1u, 4294967295u)), true && all(vec3<bool>(true, global0.c, false))), true, (vec2<u32>(0u, reverseBits(u_input.b)) ^ vec2<u32>(u_input.b >> (global0.d.x % 32u), _wgslsmith_mult_u32(4294967295u, 1u))) | global0.a, _wgslsmith_div_vec4_i32(~vec4<i32>(-global0.e.x, _wgslsmith_sub_i32(-16888i, u_input.d), 1i >> (u_input.b % 32u), func_1(Struct_1(vec2<u32>(55102u, global0.b.x), vec2<u32>(global0.a.x, 4294967295u), global0.c, global0.d, global0.e), global1[_wgslsmith_index_u32(global0.a.x, 32u)], vec3<bool>(global0.c, true, false), global3[_wgslsmith_index_u32(u_input.b, 15u)])), reverseBits(_wgslsmith_mult_vec4_i32(global0.e, vec4<i32>(36070i, -6004i, -1i, -38204i)))));
    global3 = array<f32, 15>();
    var var_1 = Struct_1(_wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(global0.a.x, 55293u) ^ max(var_0.d, var_0.a), vec2<u32>(~var_0.b.x, firstTrailingBit(u_input.b))), firstLeadingBit(func_2(false & global0.c, true).b)), _wgslsmith_add_vec2_u32(vec2<u32>(~(~38207u), ~var_0.d.x), _wgslsmith_add_vec2_u32(~vec2<u32>(4294967295u, 50086u), countOneBits(vec2<u32>(u_input.b, u_input.b))) | vec2<u32>(7294u << (var_0.a.x % 32u), abs(24714u))), !(!(var_0.c & true) & global0.c), ~_wgslsmith_sub_vec2_u32(var_0.b, global0.b), select(_wgslsmith_mult_vec4_i32(countOneBits(countOneBits(var_0.e)), var_0.e), var_0.e, vec4<bool>(!(var_0.c != global0.c), all(vec4<bool>(false, var_0.c, true, var_0.c)), any(vec3<bool>(global0.c, false, var_0.c)), global0.c)));
    let var_2 = vec4<f32>(global3[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(~1u, func_4(Struct_1(vec2<u32>(global0.b.x, var_1.b.x), global0.b, var_1.c, var_1.b, var_0.e), global2[_wgslsmith_index_u32(var_1.d.x, 22u)]) ^ 90981u, ~abs(4294967295u)), 15u)], _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(select(44663u, 4294967295u, global0.c), 15u)] * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(1528f, _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(var_1.a.x, 15u)]), true)), _wgslsmith_f_op_f32(-586f * global3[_wgslsmith_index_u32(2067u, 15u)]), var_0.c))), _wgslsmith_f_op_f32(-605f - global3[_wgslsmith_index_u32(firstTrailingBit(0u), 15u)]), global3[_wgslsmith_index_u32(~var_1.d.x, 15u)]);
    var var_3 = !any(!select(vec2<bool>(global0.c, true), select(vec2<bool>(false, true), global2[_wgslsmith_index_u32(0u, 22u)], var_1.c), !global0.c));
    global1 = array<Struct_1, 32>();
    var var_4 = 1i;
    var_1 = global1[_wgslsmith_index_u32(122249u, 32u)];
    var var_5 = abs(abs(select(vec3<u32>(~u_input.b, global0.d.x, 34737u), vec3<u32>(_wgslsmith_clamp_u32(32303u, var_0.d.x, 0u), 16677u, 1u), !select(vec3<bool>(var_0.c, global0.c, var_1.c), vec3<bool>(true, true, true), false))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(840f + _wgslsmith_div_f32(var_2.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_2.x))))), var_2.x);
}

