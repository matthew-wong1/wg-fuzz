struct Struct_1 {
    a: vec4<i32>,
    b: i32,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: Struct_1,
    d: vec4<u32>,
    e: i32,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec4<f32>,
    c: Struct_1,
}

struct Struct_4 {
    a: vec3<i32>,
    b: Struct_2,
    c: u32,
    d: Struct_2,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: vec3<f32>,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 6>;

var<private> global1: i32;

var<private> global2: vec4<i32> = vec4<i32>(-49341i, -3669i, i32(-2147483648), -38442i);

var<private> global3: array<i32, 31>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> u32 {
    global1 = 31721i;
    global2 = firstLeadingBit(vec4<i32>(_wgslsmith_sub_i32(global3[_wgslsmith_index_u32(~0u, 31u)], _wgslsmith_mult_i32(1i, -4326i)), _wgslsmith_clamp_i32(global3[_wgslsmith_index_u32(~0u, 31u)], -1853i, i32(-1i) * -1036i), abs(-1276i), u_input.a.x) >> (firstLeadingBit(vec4<u32>(1u, 1u, 1u, 1u)) % vec4<u32>(32u)));
    global1 = 1i;
    let var_0 = select(global0[_wgslsmith_index_u32(29022u, 6u)], !vec2<bool>(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, u_input.b.x, -2147483647i), u_input.a.yyy) < u_input.b.x, 0u != _wgslsmith_dot_vec2_u32(vec2<u32>(75320u, 26849u), vec2<u32>(0u, 30285u))), vec2<bool>(select(true, !any(vec2<bool>(false, true)), !all(global0[_wgslsmith_index_u32(1u, 6u)])), !(!all(vec3<bool>(true, false, true)))));
    global0 = array<vec2<bool>, 6>();
    return _wgslsmith_mod_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(7475u, 15954u, 0u, 38255u), abs(vec4<u32>(1u, 10562u, 4294967295u, 44395u))), 0u), ~(~select(4294967295u, 21346u, var_0.x))) >> (min(_wgslsmith_clamp_u32(_wgslsmith_mult_u32(select(16869u, 4294967295u, var_0.x), min(0u, 1u)), ~reverseBits(33438u), 1u), _wgslsmith_div_u32(24725u, 4294967295u)) % 32u);
}

fn func_2(arg_0: u32, arg_1: f32) -> Struct_4 {
    global0 = array<vec2<bool>, 6>();
    global1 = -global3[_wgslsmith_index_u32(arg_0, 31u)];
    var var_0 = Struct_2(arg_0 >> (_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(70189u, arg_0, 24674u), vec3<u32>(arg_0, arg_0, 98934u)), 0u), min(vec2<u32>(45422u, arg_0) << (vec2<u32>(arg_0, arg_0) % vec2<u32>(32u)), min(vec2<u32>(arg_0, 4294967295u), vec2<u32>(arg_0, 86805u)))) % 32u), _wgslsmith_f_op_f32(f32(-1f) * -222f), Struct_1(-u_input.a, _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(-vec4<i32>(global2.x, -8894i, global2.x, u_input.b.x), -vec4<i32>(-1i, u_input.b.x, global2.x, global3[_wgslsmith_index_u32(27972u, 31u)])), abs(~vec4<i32>(u_input.a.x, -29706i, -2147483647i, global3[_wgslsmith_index_u32(arg_0, 31u)])))), select(vec4<u32>(abs(1u), ~arg_0, ~arg_0, _wgslsmith_clamp_u32(firstLeadingBit(arg_0), arg_0 & arg_0, _wgslsmith_mult_u32(arg_0, arg_0))), ~select(vec4<u32>(4294967295u, arg_0, 50747u, 0u), firstLeadingBit(vec4<u32>(arg_0, arg_0, arg_0, 0u)), true), vec4<bool>(all(vec4<bool>(true, true, true, true)), all(select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true))), arg_1 == _wgslsmith_f_op_f32(-arg_1), true)), u_input.a.x);
    var var_1 = ~_wgslsmith_mod_u32(_wgslsmith_mult_u32(arg_0, ~var_0.a), func_3());
    global3 = array<i32, 31>();
    return Struct_4(~global2.xyw, Struct_2(arg_0, _wgslsmith_f_op_f32(f32(-1f) * -991f), Struct_1(vec4<i32>(var_0.c.a.x, 2147483647i, ~global3[_wgslsmith_index_u32(var_0.a, 31u)], _wgslsmith_mod_i32(global2.x, -2147483647i)), abs(global3[_wgslsmith_index_u32(var_0.a, 31u)]) << (countOneBits(43755u) % 32u)), _wgslsmith_mult_vec4_u32(select(select(var_0.d, var_0.d, true), ~vec4<u32>(45083u, 4294967295u, 74579u, 1u), vec4<bool>(true, false, false, false)), vec4<u32>(arg_0, ~arg_0, arg_0, min(0u, var_0.a))), u_input.b.x), arg_0, Struct_2(var_0.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_0.b + var_0.b)))), var_0.c, ~_wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(arg_0, 1u, var_0.d.x, 4294967295u), vec4<u32>(4294967295u, arg_0, arg_0, arg_0)), vec4<u32>(4214u, arg_0, arg_0, 28512u)), min(var_0.e, _wgslsmith_sub_i32(-var_0.c.b, global3[_wgslsmith_index_u32(arg_0, 31u)]))));
}

fn func_4(arg_0: bool, arg_1: Struct_2, arg_2: Struct_4) -> bool {
    var var_0 = firstTrailingBit(abs(13711u));
    var_0 = 70139u;
    global3 = array<i32, 31>();
    var var_1 = Struct_5(-22411i);
    var var_2 = reverseBits(~firstLeadingBit(max(vec3<u32>(78773u, arg_1.a, 61056u), vec3<u32>(0u, arg_2.c, arg_2.d.a))) << (abs(_wgslsmith_mod_vec3_u32(vec3<u32>(arg_2.b.d.x, arg_1.d.x, arg_2.d.a), vec3<u32>(arg_1.a, arg_1.d.x, 76446u) ^ vec3<u32>(arg_2.c, arg_1.a, 27777u))) % vec3<u32>(32u)));
    return !(_wgslsmith_mod_u32(func_2(~0u, _wgslsmith_f_op_f32(1037f * arg_1.b)).c, arg_1.d.x) != var_2.x);
}

fn func_1(arg_0: Struct_1) -> vec2<u32> {
    var var_0 = ~(~26961u);
    var var_1 = select(!global0[_wgslsmith_index_u32(~1u, 6u)], !select(select(!global0[_wgslsmith_index_u32(769u, 6u)], !global0[_wgslsmith_index_u32(0u, 6u)], global0[_wgslsmith_index_u32(1u, 6u)]), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true)), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(127162u, 0u), 6u)]), vec2<bool>(false, func_4(true, Struct_2(0u, _wgslsmith_f_op_f32(abs(808f)), arg_0, vec4<u32>(1u, 1u, 45322u, 0u), -2147483647i), func_2(~0u, _wgslsmith_f_op_f32(159f * -702f)))));
    let var_2 = Struct_3(vec2<i32>(-1i, arg_0.b) | (vec2<i32>(-33182i, u_input.a.x) << ((firstTrailingBit(vec2<u32>(28960u, 1u)) & vec2<u32>(1u, 1u)) % vec2<u32>(32u))), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1110f, 1386f, 1077f, 359f) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 1977f, -408f, 407f) - vec4<f32>(1370f, -2559f, 459f, 235f))), vec4<f32>(1138f, func_2(0u, 390f).d.b, _wgslsmith_f_op_f32(-1524f * -959f), -235f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(-160f)), -962f, _wgslsmith_f_op_f32(445f - -1427f), _wgslsmith_f_op_f32(-1000f + 928f)))), Struct_1(u_input.a, ~_wgslsmith_add_i32(-2147483647i, global2.x)));
    global2 = reverseBits(vec4<i32>(-1i, 37888i, ~(~(-1i)) << (func_3() % 32u), global3[_wgslsmith_index_u32(1u, 31u)]));
    var_1 = global0[_wgslsmith_index_u32(1u, 6u)];
    return _wgslsmith_div_vec2_u32(firstLeadingBit(~abs(vec2<u32>(15314u, 0u))), max(reverseBits(vec2<u32>(abs(27170u), 6685u)), min(~vec2<u32>(1u, 1u), vec2<u32>(select(126000u, 40883u, false), 1u))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = -max(_wgslsmith_add_i32(-1i, -2147483647i), -1i);
    var var_0 = (global2.wx >> (~_wgslsmith_div_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(50264u, 4294967295u)) % vec2<u32>(32u))) >> (~func_1(Struct_1(vec4<i32>(-1i, 52381i, -1048i, 49065i), min(-17556i, global2.x))) % vec2<u32>(32u));
    let var_1 = min(vec4<u32>(firstLeadingBit(abs(1u)), ~func_2(67877u, -329f).b.a, 1u, ~min(0u, 54543u)) >> (vec4<u32>(select(~8733u, ~38259u, true), _wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, 1u), vec2<u32>(53905u, 0u)), ~abs(0u), ~28523u) % vec4<u32>(32u)), ~firstTrailingBit(vec4<u32>(1468u, ~37441u, firstLeadingBit(20251u), 4294967295u)));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-786f)), _wgslsmith_f_op_f32(f32(-1f) * -225f)))) - 1250f);
    var var_3 = func_2(var_1.x << (0u % 32u), 1f).b;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(var_3.b, var_3.b, var_3.b), u_input.b.x & ((_wgslsmith_dot_vec3_i32(global2.www, var_3.c.a.zyx) << (_wgslsmith_mult_u32(var_3.a, 36302u) % 32u)) << (_wgslsmith_sub_u32(var_1.x | var_3.d.x, ~1u) % 32u)), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(177f, var_3.b, var_3.b))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-123f, var_3.b, var_3.b), vec3<f32>(var_3.b, 544f, 221f))), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_3.b, var_3.b, var_3.b))), select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), false))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(438f, var_3.b, var_3.b) - vec3<f32>(1000f, -367f, 620f)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_3.b, 229f, 553f), vec3<f32>(473f, -1019f, 1609f)))))))), 1u, _wgslsmith_clamp_u32(_wgslsmith_add_u32(~_wgslsmith_dot_vec2_u32(var_3.d.wx, vec2<u32>(var_1.x, var_1.x)), ~var_1.x), firstTrailingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(29594u, 0u), var_1.zw) ^ var_1.x), ~var_1.x));
}

