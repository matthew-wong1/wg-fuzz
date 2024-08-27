struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec4<f32>,
    d: vec4<u32>,
}

struct Struct_3 {
    a: bool,
    b: vec2<f32>,
    c: Struct_2,
    d: Struct_2,
}

struct Struct_4 {
    a: vec2<u32>,
    b: u32,
    c: vec3<bool>,
}

struct Struct_5 {
    a: vec3<u32>,
    b: Struct_1,
    c: vec4<i32>,
    d: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec3<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 26> = array<vec2<i32>, 26>(vec2<i32>(-34002i, -32750i), vec2<i32>(0i, 15347i), vec2<i32>(2147483647i, 6757i), vec2<i32>(1i, 24961i), vec2<i32>(-19393i, i32(-2147483648)), vec2<i32>(2147483647i, -27736i), vec2<i32>(1i, 23331i), vec2<i32>(2147483647i, -19437i), vec2<i32>(-3230i, 1i), vec2<i32>(-60523i, 1i), vec2<i32>(-1i, -1i), vec2<i32>(-1i, -59438i), vec2<i32>(1i, 1i), vec2<i32>(726i, 2147483647i), vec2<i32>(2147483647i, i32(-2147483648)), vec2<i32>(36052i, 2147483647i), vec2<i32>(-1i, -45444i), vec2<i32>(1i, -1i), vec2<i32>(1i, -18743i), vec2<i32>(-6345i, i32(-2147483648)), vec2<i32>(i32(-2147483648), 2147483647i), vec2<i32>(i32(-2147483648), -49802i), vec2<i32>(i32(-2147483648), 27862i), vec2<i32>(i32(-2147483648), 1i), vec2<i32>(-17773i, -1i), vec2<i32>(0i, -17075i));

var<private> global1: Struct_1 = Struct_1(false);

var<private> global2: array<f32, 7> = array<f32, 7>(-1000f, -922f, -355f, 1163f, 491f, 2073f, -1000f);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_3, arg_2: i32) -> bool {
    let var_0 = vec3<u32>(arg_1.c.d.x ^ ~(u_input.d.x ^ 75773u), abs(15703u), _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(min(u_input.d, vec4<u32>(u_input.d.x, u_input.d.x, 4294967295u, 28350u)), u_input.d & vec4<u32>(u_input.d.x, 0u, u_input.d.x, 4294967295u)) & max(_wgslsmith_add_vec4_u32(vec4<u32>(arg_1.d.a, 57390u, arg_1.c.d.x, 15355u), vec4<u32>(12229u, 79146u, 8152u, u_input.d.x)), vec4<u32>(1u, 4294967295u, 30754u, 1u)), ~vec4<u32>(arg_1.c.a, arg_1.c.d.x, 1u, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.d.d.x, 4294967295u, 4294967295u), arg_1.d.d.xwz))));
    var var_1 = abs(-(u_input.c << (~vec3<u32>(1u, 4294967295u, 4294967295u) % vec3<u32>(32u)))) & (_wgslsmith_mod_vec3_i32(select(~u_input.b.xxx, u_input.c, vec3<bool>(global1.a, false, true)), _wgslsmith_mod_vec3_i32(-vec3<i32>(u_input.b.x, -10609i, -10173i), ~vec3<i32>(1i, -1i, 1i))) >> (vec3<u32>(_wgslsmith_dot_vec2_u32(u_input.a ^ var_0.yz, vec2<u32>(85438u, arg_1.d.a)), _wgslsmith_mod_u32(1u, ~27995u), 72701u) % vec3<u32>(32u)));
    let var_2 = ~arg_1.d.d;
    global2 = array<f32, 7>();
    var var_3 = countOneBits(arg_2);
    return false;
}

fn func_2(arg_0: vec2<i32>) -> Struct_5 {
    let var_0 = Struct_3(all(vec4<bool>(func_3(Struct_1(true), Struct_3(global1.a, vec2<f32>(global2[_wgslsmith_index_u32(u_input.a.x, 7u)], global2[_wgslsmith_index_u32(u_input.a.x, 7u)]), Struct_2(u_input.d.x, Struct_1(global1.a), vec4<f32>(301f, global2[_wgslsmith_index_u32(u_input.a.x, 7u)], global2[_wgslsmith_index_u32(4547u, 7u)], global2[_wgslsmith_index_u32(u_input.a.x, 7u)]), vec4<u32>(u_input.d.x, u_input.a.x, u_input.d.x, 22504u)), Struct_2(4294967295u, Struct_1(false), vec4<f32>(1409f, -637f, global2[_wgslsmith_index_u32(66641u, 7u)], global2[_wgslsmith_index_u32(43957u, 7u)]), u_input.d)), min(arg_0.x, u_input.c.x)), false, global1.a, 6803u == firstTrailingBit(u_input.d.x))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global2[_wgslsmith_index_u32(u_input.d.x, 7u)], global2[_wgslsmith_index_u32(u_input.d.x, 7u)]), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(global2[_wgslsmith_index_u32(u_input.a.x, 7u)], global2[_wgslsmith_index_u32(u_input.d.x, 7u)]), vec2<f32>(435f, global2[_wgslsmith_index_u32(u_input.a.x, 7u)]))), vec2<bool>(global1.a, true))))))), Struct_2(abs(~u_input.a.x), Struct_1(global1.a), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(0u, 7u)], global2[_wgslsmith_index_u32(u_input.a.x, 7u)], 819f, 145f) * vec4<f32>(-457f, -1435f, 1814f, global2[_wgslsmith_index_u32(4294967295u, 7u)])) - vec4<f32>(1000f, -931f, global2[_wgslsmith_index_u32(u_input.d.x, 7u)], -1820f))), ~vec4<u32>(21667u, ~u_input.d.x, u_input.d.x ^ 1u, _wgslsmith_mod_u32(0u, u_input.d.x))), Struct_2(0u ^ u_input.d.x, Struct_1(global1.a), vec4<f32>(global2[_wgslsmith_index_u32(~(u_input.d.x >> (8480u % 32u)), 7u)], _wgslsmith_f_op_f32(exp2(global2[_wgslsmith_index_u32(4294967295u, 7u)])), -962f, global2[_wgslsmith_index_u32(~u_input.d.x | (u_input.d.x << (u_input.d.x % 32u)), 7u)]), reverseBits(~_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 30252u, u_input.a.x, u_input.a.x), vec4<u32>(u_input.d.x, u_input.d.x, u_input.a.x, u_input.d.x), u_input.d))));
    global0 = array<vec2<i32>, 26>();
    let var_1 = Struct_1(false);
    let var_2 = _wgslsmith_f_op_f32(min(-729f, 428f));
    var var_3 = Struct_5(_wgslsmith_add_vec3_u32(_wgslsmith_div_vec3_u32(firstTrailingBit(firstLeadingBit(vec3<u32>(var_0.d.d.x, u_input.a.x, 4294967295u))), ~(~u_input.d.xyx)), _wgslsmith_mult_vec3_u32((u_input.d.yyz | vec3<u32>(u_input.d.x, var_0.c.a, u_input.d.x)) << (~vec3<u32>(u_input.d.x, u_input.d.x, 0u) % vec3<u32>(32u)), vec3<u32>(u_input.d.x, ~u_input.d.x, _wgslsmith_dot_vec3_u32(u_input.d.ywz, var_0.d.d.wxz)))), Struct_1(var_2 < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2490f + var_2) + var_0.b.x)), reverseBits(reverseBits(select(-vec4<i32>(-2147483647i, u_input.c.x, u_input.c.x, 0i), vec4<i32>(u_input.b.x, 2147483647i, u_input.b.x, arg_0.x) | vec4<i32>(7114i, 5159i, arg_0.x, 0i), var_1.a))), -859f);
    return Struct_5(~(~_wgslsmith_add_vec3_u32(vec3<u32>(23150u, var_3.a.x, u_input.a.x) >> (vec3<u32>(35180u, 4294967295u, 1u) % vec3<u32>(32u)), abs(vec3<u32>(var_3.a.x, var_0.c.a, 1u)))), var_3.b, select(var_3.c, _wgslsmith_add_vec4_i32(var_3.c, ~(-u_input.b)), true), global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(var_3.a.x, ~u_input.d.x), 7u)]);
}

fn func_1(arg_0: Struct_1, arg_1: vec2<f32>) -> i32 {
    global0 = array<vec2<i32>, 26>();
    var var_0 = func_2(global0[_wgslsmith_index_u32(1u, 26u)]);
    global0 = array<vec2<i32>, 26>();
    var_0 = Struct_5(~select(~_wgslsmith_sub_vec3_u32(var_0.a, u_input.d.wxw), vec3<u32>(_wgslsmith_dot_vec3_u32(u_input.d.zzz, vec3<u32>(var_0.a.x, 33230u, 4294967295u)), 1u, 14707u), vec3<bool>(true, true != arg_0.a, global1.a)), Struct_1(global1.a), var_0.c, func_2(_wgslsmith_add_vec2_i32(-vec2<i32>(-1i, var_0.c.x), var_0.c.ww)).d);
    global0 = array<vec2<i32>, 26>();
    return -var_0.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~countOneBits(~(~(0i >> (u_input.d.x % 32u))));
    let var_1 = _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(1u, 7u)] - _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(max(~u_input.a.x, ~_wgslsmith_dot_vec4_u32(vec4<u32>(22048u, u_input.a.x, 1u, 4294967295u), u_input.d)), 7u)] * global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, reverseBits(45840u) >> ((456u | u_input.d.x) % 32u)), 7u)]));
    var var_2 = select(vec4<i32>(~abs(_wgslsmith_div_i32(2147483647i, 27484i)), ~(-1i), -15379i, -42757i), vec4<i32>(select(~(-40i), u_input.b.x >> (u_input.a.x % 32u), false), -2147483647i, func_1(Struct_1(global1.a), vec2<f32>(global2[_wgslsmith_index_u32(u_input.a.x, 7u)], 294f)), 1i) & -u_input.b, any(!(!(!vec3<bool>(true, global1.a, global1.a)))));
    var var_3 = Struct_5(abs(u_input.d.yzz), func_2(~min(global0[_wgslsmith_index_u32(4294967295u, 26u)] ^ u_input.b.zx, var_2.zx)).b, _wgslsmith_clamp_vec4_i32(~u_input.b, u_input.b, _wgslsmith_mult_vec4_i32(~u_input.b, vec4<i32>(-1i) * -u_input.b)), global2[_wgslsmith_index_u32(4294967295u, 7u)]);
    let var_4 = ~(-var_3.c.wx);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_u32(vec4<u32>(max(u_input.a.x, ~var_3.a.x), firstTrailingBit(var_3.a.x << (var_3.a.x % 32u)), func_2(_wgslsmith_div_vec2_i32(global0[_wgslsmith_index_u32(var_3.a.x, 26u)], var_3.c.xw)).a.x, var_3.a.x), ~firstLeadingBit(u_input.d) >> (vec4<u32>(countOneBits(var_3.a.x), min(4294967295u, u_input.d.x), ~4294967295u, u_input.d.x) % vec4<u32>(32u))), ~(~(~(vec3<u32>(37505u, 1u, 1u) ^ vec3<u32>(var_3.a.x, 36012u, 8523u)))));
}

