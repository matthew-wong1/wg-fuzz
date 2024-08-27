struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: vec2<u32>,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec4<i32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 5>;

var<private> global1: vec2<i32>;

var<private> global2: array<vec2<u32>, 28>;

var<private> global3: array<bool, 28> = array<bool, 28>(true, true, false, true, false, true, false, false, true, false, false, false, false, false, true, true, true, false, true, true, false, false, true, true, false, false, true, true);

var<private> global4: i32 = 27805i;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1) -> u32 {
    return 44021u;
}

fn func_2(arg_0: vec2<f32>, arg_1: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -388f), 362f, false));
    global4 = i32(-1i) * -_wgslsmith_sub_i32(u_input.a.x, i32(-1i) * -18019i);
    var var_1 = Struct_1(-arg_1.a, false, global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(4294967295u | (func_3(Struct_1(vec3<i32>(u_input.a.x, -2147483647i, u_input.a.x), true, vec2<u32>(4294967295u, arg_1.c.x), u_input.a), 4294967295u, Struct_1(arg_1.a, false, global2[_wgslsmith_index_u32(1u, 28u)], u_input.a)) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.c.x, 0u, arg_1.c.x), vec3<u32>(arg_1.c.x, 0u, 48767u)) % 32u)), arg_1.c.x, abs(28399u)), 28u)], -(u_input.a & u_input.a));
    var var_2 = Struct_1(_wgslsmith_mod_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(global1.x, -1i, 2147483647i) << (vec3<u32>(arg_1.c.x, 46265u, var_1.c.x) % vec3<u32>(32u)), var_1.a), _wgslsmith_div_vec3_i32(~vec3<i32>(0i, var_1.d.x, 1867i), vec3<i32>(-1i, 0i, 8563i)) & min(vec3<i32>(13384i, 58836i, 16386i), _wgslsmith_clamp_vec3_i32(var_1.a, arg_1.a, vec3<i32>(arg_1.a.x, arg_1.a.x, -2147483647i)))), arg_1.b, firstTrailingBit(vec2<u32>(firstTrailingBit(10267u), var_1.c.x) >> (arg_1.c % vec2<u32>(32u))), ~arg_1.d);
    let var_3 = global3[_wgslsmith_index_u32(1u, 28u)];
    return Struct_1(vec3<i32>(var_2.a.x, -countOneBits(_wgslsmith_sub_i32(1i, global1.x)), firstTrailingBit(0i) >> (firstLeadingBit(37513u) % 32u)), var_1.b, _wgslsmith_clamp_vec2_u32(vec2<u32>(~(~var_2.c.x), ~(var_2.c.x >> (19018u % 32u))), ~(~_wgslsmith_add_vec2_u32(vec2<u32>(1u, 0u), vec2<u32>(arg_1.c.x, 13564u))), ~_wgslsmith_mod_vec2_u32(firstLeadingBit(vec2<u32>(1u, 1u)), _wgslsmith_clamp_vec2_u32(vec2<u32>(var_1.c.x, 41189u), vec2<u32>(1u, 1u), vec2<u32>(1u, arg_1.c.x)))), firstTrailingBit(arg_1.a.yy));
}

fn func_4(arg_0: Struct_1) -> f32 {
    global1 = max(vec2<i32>(-28153i, countOneBits(reverseBits(-30868i) ^ arg_0.d.x)), -(u_input.a & vec2<i32>(i32(-1i) * -1i, arg_0.a.x)));
    var var_0 = _wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(_wgslsmith_clamp_vec4_u32(abs(vec4<u32>(41942u, arg_0.c.x, 5805u, 12300u)), ~vec4<u32>(14594u, 44006u, 1u, 649u), vec4<u32>(0u, arg_0.c.x, 0u, 1u)), vec4<u32>(_wgslsmith_mod_u32(1u, arg_0.c.x), 15043u, arg_0.c.x, arg_0.c.x)) | _wgslsmith_sub_vec4_u32(vec4<u32>(~1u, ~arg_0.c.x, ~arg_0.c.x, arg_0.c.x), min(firstTrailingBit(vec4<u32>(arg_0.c.x, 48235u, 4294967295u, arg_0.c.x)), vec4<u32>(17160u, 0u, 4294967295u, 29108u) << (vec4<u32>(arg_0.c.x, arg_0.c.x, 4294967295u, 26965u) % vec4<u32>(32u)))), vec4<u32>(~(~arg_0.c.x) | countOneBits(arg_0.c.x), 1u, arg_0.c.x, arg_0.c.x));
    global1 = _wgslsmith_div_vec2_i32(func_2(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1000f)) * -2022f), -901f), arg_0).a.yx, abs(abs(-select(vec2<i32>(u_input.a.x, arg_0.a.x), arg_0.a.zy, arg_0.b))));
    var var_1 = 1u;
    let var_2 = func_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-789f, 345f)) + vec2<f32>(-670f, 1107f)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-455f, -582f) - vec2<f32>(-494f, -846f))))), func_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(515f, 306f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(1369f, -1437f))) - _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(1081f, 1000f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(1504f, -1000f) + vec2<f32>(2273f, -2324f))))), Struct_1(vec3<i32>(-1i) * -arg_0.a, false, vec2<u32>(~105588u, ~arg_0.c.x), _wgslsmith_mod_vec2_i32(arg_0.a.yy, vec2<i32>(u_input.a.x, u_input.a.x)))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1929f - -1332f) + -2147f) + _wgslsmith_f_op_f32(floor(878f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1000f - 1325f), -1739f)) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(516f, -324f) - _wgslsmith_f_op_f32(f32(-1f) * -1894f)))));
}

fn func_1() -> vec4<u32> {
    var var_0 = select(!global3[_wgslsmith_index_u32(~(0u >> (0u % 32u)), 28u)] == (_wgslsmith_add_i32(~(-2147483647i), global1.x & -1i) != u_input.a.x), global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(~2458u, 1u), 28u)], true);
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_4(func_2(vec2<f32>(-424f, 1503f), Struct_1(vec3<i32>(global1.x, 13643i, u_input.a.x), true, vec2<u32>(1u, 0u), u_input.a)))))) * 326f), _wgslsmith_f_op_f32(f32(-1f) * -531f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-526f + -1653f)));
    let var_2 = select(!vec3<bool>(false, func_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(-179f, var_1.x) + vec2<f32>(var_1.x, -635f)), Struct_1(vec3<i32>(global1.x, global1.x, 31726i), true, vec2<u32>(4294967295u, 1u), vec2<i32>(global1.x, u_input.a.x))).b, global3[_wgslsmith_index_u32(firstLeadingBit(0u << (1u % 32u)), 28u)]), select(!(!(!vec3<bool>(global3[_wgslsmith_index_u32(76122u, 28u)], global3[_wgslsmith_index_u32(0u, 28u)], global3[_wgslsmith_index_u32(1585u, 28u)]))), !(!select(vec3<bool>(global3[_wgslsmith_index_u32(32949u, 28u)], global3[_wgslsmith_index_u32(1u, 28u)], global3[_wgslsmith_index_u32(10287u, 28u)]), vec3<bool>(false, false, global3[_wgslsmith_index_u32(1u, 28u)]), global3[_wgslsmith_index_u32(4294967295u, 28u)])), true), !vec3<bool>(all(select(vec3<bool>(global3[_wgslsmith_index_u32(44993u, 28u)], false, false), vec3<bool>(global3[_wgslsmith_index_u32(59301u, 28u)], true, global3[_wgslsmith_index_u32(0u, 28u)]), vec3<bool>(false, false, false))), any(!vec2<bool>(global3[_wgslsmith_index_u32(4294967295u, 28u)], true)), !any(vec4<bool>(global3[_wgslsmith_index_u32(18857u, 28u)], true, global3[_wgslsmith_index_u32(4294967295u, 28u)], global3[_wgslsmith_index_u32(97019u, 28u)]))));
    global1 = -abs(u_input.a);
    let var_3 = var_2.xz;
    return vec4<u32>(~1u, 1u, _wgslsmith_dot_vec2_u32(global2[_wgslsmith_index_u32(~4294967295u, 28u)], countOneBits(~abs(global2[_wgslsmith_index_u32(0u, 28u)]))), ~func_3(func_2(var_1.xx, Struct_1(vec3<i32>(-16241i, -10457i, u_input.a.x), false, global2[_wgslsmith_index_u32(1u, 28u)], vec2<i32>(12047i, -2147483647i))), 1u, func_2(var_1.zx, func_2(var_1.yz, Struct_1(vec3<i32>(2147483647i, u_input.a.x, global1.x), var_2.x, global2[_wgslsmith_index_u32(0u, 28u)], vec2<i32>(0i, global1.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = u_input.a.x;
    let var_0 = ~global1.x;
    var var_1 = abs(func_1());
    var var_2 = Struct_1(vec3<i32>(12661i, -16989i, _wgslsmith_dot_vec3_i32(vec3<i32>(-var_0, _wgslsmith_div_i32(var_0, var_0), global1.x), firstTrailingBit(-vec3<i32>(1i, u_input.a.x, u_input.a.x)))), true, vec2<u32>(_wgslsmith_mult_u32(~51240u, func_1().x), 38554u), ((_wgslsmith_add_vec2_i32(u_input.a, u_input.a) ^ _wgslsmith_div_vec2_i32(u_input.a, vec2<i32>(-1i, global1.x))) | vec2<i32>(~0i, max(0i, global1.x))) | u_input.a);
    let var_3 = vec4<i32>(-reverseBits(var_0), 1i, 2147483647i, -1i);
    var var_4 = global2[_wgslsmith_index_u32(~(var_1.x | ~11906u), 28u)] ^ var_2.c;
    let var_5 = _wgslsmith_div_f32(531f, -822f);
    var var_6 = Struct_1(~vec3<i32>(1i, _wgslsmith_sub_i32(i32(-1i) * -1i, 0i << (var_2.c.x % 32u)), min(1i, abs(var_2.a.x))), all(!(!vec3<bool>(global3[_wgslsmith_index_u32(86161u, 28u)], var_2.b, false))), vec2<u32>(var_4.x & ~1u, var_4.x), ~(~_wgslsmith_mod_vec2_i32(vec2<i32>(var_0, 1i) | vec2<i32>(-5327i, var_0), vec2<i32>(var_0, -52778i) ^ vec2<i32>(18266i, var_2.a.x))));
    var var_7 = var_2.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec4_u32(~abs(~vec4<u32>(var_4.x, var_4.x, 40044u, var_1.x)), vec4<u32>(~(~var_4.x), firstTrailingBit(min(2932u, 0u)), ~0u, min(var_4.x, _wgslsmith_mod_u32(var_2.c.x, 1u))), _wgslsmith_add_vec4_u32(countOneBits(_wgslsmith_mod_vec4_u32(vec4<u32>(1u, var_1.x, var_6.c.x, var_2.c.x), vec4<u32>(var_2.c.x, 1u, 1u, 1u))), firstLeadingBit(vec4<u32>(44168u, 3312u, 0u, 4294967295u) >> (vec4<u32>(var_1.x, var_1.x, var_2.c.x, var_6.c.x) % vec4<u32>(32u))))), vec4<i32>(var_2.d.x & countOneBits(func_2(vec2<f32>(var_5, 1709f), Struct_1(var_2.a, true, vec2<u32>(4294967295u, var_4.x), vec2<i32>(global1.x, 8406i))).a.x), ~abs(1i >> (var_4.x % 32u)), -211i, 5634i), reverseBits(firstTrailingBit(-(vec4<i32>(1i, u_input.a.x, var_2.d.x, global1.x) ^ vec4<i32>(-35489i, -74488i, 0i, -2147483647i)))), _wgslsmith_add_vec4_u32(select(~vec4<u32>(var_1.x, 110825u, var_6.c.x, 22582u), _wgslsmith_div_vec4_u32(firstLeadingBit(vec4<u32>(23570u, 0u, 25613u, 0u)), ~vec4<u32>(0u, 0u, 4294967295u, var_2.c.x)), _wgslsmith_mult_u32(var_6.c.x, 65489u) != 541u), vec4<u32>(45798u, ~_wgslsmith_add_u32(var_2.c.x, 0u), _wgslsmith_div_u32(var_4.x, var_4.x) ^ firstLeadingBit(4294967295u), 36561u)));
}

