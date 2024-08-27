struct Struct_1 {
    a: i32,
    b: f32,
    c: vec3<u32>,
    d: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec3<u32>,
}

struct Struct_4 {
    a: u32,
    b: vec4<f32>,
    c: Struct_2,
}

struct Struct_5 {
    a: vec3<i32>,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: Struct_4 = Struct_4(12675u, vec4<f32>(151f, -608f, 991f, -423f), Struct_2(Struct_1(i32(-2147483648), -1608f, vec3<u32>(4857u, 0u, 1u), vec2<i32>(1i, -22740i)), i32(-2147483648), Struct_1(-22709i, 862f, vec3<u32>(4958u, 4294967295u, 29657u), vec2<i32>(-9554i, 19884i))));

var<private> global2: array<f32, 17>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: bool, arg_1: Struct_2, arg_2: Struct_5, arg_3: vec3<i32>) -> i32 {
    let var_0 = true;
    let var_1 = Struct_4(min(~firstTrailingBit(~global1.c.a.c.x), ~abs(1u)), global1.b, Struct_2(Struct_1(~1i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(10424u, 17u)]) + 530f), global1.c.c.c, vec2<i32>(20808i, ~global1.c.a.a)), ~(~(global1.c.c.d.x ^ u_input.b)), Struct_1(-2325i, _wgslsmith_f_op_f32(arg_1.c.b - -1405f), vec3<u32>(~global1.c.a.c.x, ~arg_1.c.c.x, global1.c.c.c.x), countOneBits(-arg_2.a.yz))));
    let var_2 = Struct_3(var_0, vec3<u32>(_wgslsmith_add_u32(arg_1.a.c.x, 1u << (~global1.a % 32u)), var_1.c.a.c.x, ~global1.c.a.c.x));
    return ~(-40893i);
}

fn func_2(arg_0: f32) -> u32 {
    var var_0 = Struct_1(func_3(false, global1.c, Struct_5(vec3<i32>(2147483647i, global1.c.c.a, -1i), u_input.e), u_input.e.wzy), -1101f, ~select(vec3<u32>(0u, 20245u, ~global1.c.a.c.x), vec3<u32>(_wgslsmith_dot_vec2_u32(global1.c.a.c.yx, global1.c.a.c.zz), 11651u, ~0u), all(vec3<bool>(true, true, true))), -abs(reverseBits(vec2<i32>(global1.c.c.d.x, 2147483647i) | vec2<i32>(u_input.b, 0i))));
    global0 = _wgslsmith_f_op_f32(global1.c.c.b + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1599f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0, 113f)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.b.x, 1813f) + 1f) + _wgslsmith_f_op_f32(step(var_0.b, _wgslsmith_div_f32(global1.c.a.b, -321f))))));
    global1 = Struct_4(_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(reverseBits(~vec4<u32>(var_0.c.x, 66015u, var_0.c.x, 16959u)), ~(vec4<u32>(4294967295u, global1.a, global1.c.a.c.x, global1.c.a.c.x) << (vec4<u32>(1u, 82321u, 4294967295u, global1.a) % vec4<u32>(32u)))), global1.a | 1u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(global1.b, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(814f, arg_0, -225f, 1592f), global1.b, vec4<bool>(false, false, false, true))), any(vec2<bool>(true, false)))))), Struct_2(global1.c.c, countOneBits(var_0.d.x), Struct_1(_wgslsmith_mod_i32(-2147483647i, global1.c.b) & _wgslsmith_dot_vec2_i32(vec2<i32>(1i, -28920i), u_input.e.yz), 224f, ~vec3<u32>(var_0.c.x, 49727u, 4294967295u), var_0.d)));
    var var_1 = select(vec2<u32>(~var_0.c.x, _wgslsmith_clamp_u32(10912u, 8489u, ~global1.c.c.c.x)), vec2<u32>(var_0.c.x, 1u), any(vec3<bool>(all(vec4<bool>(false, false, false, false)) || true, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, global1.a, 1379u, 4294967295u), vec4<u32>(3741u, 58234u, 60497u, 1u)) <= max(global1.a, 0u), any(vec2<bool>(true, false)))));
    var var_2 = Struct_2(global1.c.a, u_input.b, Struct_1(_wgslsmith_dot_vec2_i32(-(vec2<i32>(-1i, -2147483647i) & u_input.e.wx), _wgslsmith_clamp_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(-1i, -34400i), u_input.e.zw), _wgslsmith_sub_vec2_i32(var_0.d, global1.c.c.d), _wgslsmith_add_vec2_i32(vec2<i32>(1i, 1i), vec2<i32>(var_0.d.x, u_input.d)))), arg_0, select(~vec3<u32>(1u, 49707u, 26793u), _wgslsmith_mod_vec3_u32(~vec3<u32>(38113u, global1.c.c.c.x, global1.c.c.c.x), ~vec3<u32>(global1.c.a.c.x, 0u, var_0.c.x)), any(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), true))), u_input.e.yz));
    return min(70840u, ~(4294967295u << (~global1.c.a.c.x % 32u)) & var_2.c.c.x);
}

fn func_1(arg_0: i32, arg_1: Struct_4, arg_2: Struct_2) -> Struct_1 {
    let var_0 = ~_wgslsmith_add_vec3_u32(~((arg_2.c.c & vec3<u32>(arg_1.a, 0u, global1.c.c.c.x)) << (firstLeadingBit(arg_1.c.a.c) % vec3<u32>(32u))), _wgslsmith_div_vec3_u32(arg_1.c.a.c, vec3<u32>(~arg_2.a.c.x, global1.a, arg_2.c.c.x)));
    var var_1 = vec4<u32>(15207u | arg_2.a.c.x, 1u, ~select(max(1u, ~global1.a), _wgslsmith_add_u32(14334u, var_0.x), false), 1u ^ ~max(var_0.x >> (21293u % 32u), ~var_0.x));
    let var_2 = ~65012u >> (global1.c.c.c.x % 32u);
    var var_3 = vec2<u32>(arg_2.c.c.x, _wgslsmith_sub_u32(global1.c.a.c.x, max(_wgslsmith_mult_u32(13930u, 60807u), func_2(-1000f))) ^ arg_1.c.c.c.x);
    var var_4 = -164f;
    return Struct_1(-30889i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(587f)), _wgslsmith_f_op_f32(-arg_1.b.x))))), ~(~(~var_0)) | select(vec3<u32>(abs(34641u), global1.c.a.c.x, 0u), var_0, true), vec2<i32>(8449i, u_input.a));
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: Struct_3) -> vec2<bool> {
    var var_0 = Struct_1(i32(-1i) * -_wgslsmith_dot_vec2_i32(vec2<i32>(-55510i, arg_0), min(vec2<i32>(arg_1.a, u_input.c), vec2<i32>(-56593i, global1.c.c.d.x))), -1572f, arg_1.c, _wgslsmith_div_vec2_i32(u_input.e.yx ^ min(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a, -1i), u_input.e.wz), _wgslsmith_div_vec2_i32(global1.c.a.d, vec2<i32>(arg_0, -38614i))), _wgslsmith_clamp_vec2_i32(~u_input.e.wx & ~arg_1.d, vec2<i32>(firstTrailingBit(arg_0), 11381i), ~vec2<i32>(27188i, 2147483647i))));
    global2 = array<f32, 17>();
    var var_1 = global1.c.b >> (arg_1.c.x % 32u);
    var var_2 = Struct_2(func_1(arg_0, Struct_4(countOneBits(arg_1.c.x), vec4<f32>(_wgslsmith_f_op_f32(global1.c.c.b - 2007f), -1000f, _wgslsmith_f_op_f32(-var_0.b), _wgslsmith_f_op_f32(-var_0.b)), Struct_2(Struct_1(8328i, global1.b.x, arg_2.b, vec2<i32>(u_input.c, global1.c.a.d.x)), ~arg_1.d.x, arg_1)), Struct_2(Struct_1(arg_1.d.x, _wgslsmith_f_op_f32(ceil(var_0.b)), ~global1.c.a.c, u_input.e.wy), arg_0, Struct_1(48078i, _wgslsmith_f_op_f32(var_0.b - var_0.b), var_0.c ^ arg_1.c, vec2<i32>(global1.c.b, var_0.a) << (var_0.c.zx % vec2<u32>(32u))))), arg_0, Struct_1(0i, 1f, select(vec3<u32>(40191u, 124857u, arg_2.b.x), global1.c.c.c, !vec3<bool>(false, false, arg_2.a)) | reverseBits(global1.c.c.c ^ arg_2.b), arg_1.d));
    global1 = Struct_4(~1u, _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(419f * _wgslsmith_f_op_f32(arg_1.b + -1304f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(-443f)))), _wgslsmith_f_op_f32(-215f + 217f), var_2.c.b), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global2[_wgslsmith_index_u32(arg_2.b.x, 17u)], global1.b.x, 858f, var_0.b))))))), global1.c);
    return select(vec2<bool>(!arg_2.a, any(!vec4<bool>(true, arg_2.a, false, false))), vec2<bool>(all(vec2<bool>(true, arg_2.a)), 4294967295u <= func_2(_wgslsmith_f_op_f32(-global1.b.x))), true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(true, !all(func_4(-u_input.b, func_1(0i, Struct_4(1u, global1.b, global1.c), global1.c), Struct_3(false, vec3<u32>(global1.c.c.c.x, global1.a, 0u)))));
    let var_1 = Struct_2(func_1(_wgslsmith_mod_i32(global1.c.b, global1.c.b), Struct_4(global1.c.c.c.x << (global1.a % 32u), global1.b, global1.c), global1.c), func_3(all(select(vec3<bool>(true, false, var_0.x), !vec3<bool>(var_0.x, var_0.x, var_0.x), var_0.x)), Struct_2(global1.c.a, reverseBits(u_input.c) & u_input.b, Struct_1(u_input.d, _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(11151u, 17u)] * -1166f), global1.c.c.c | global1.c.a.c, func_1(2147483647i, Struct_4(53524u, global1.b, Struct_2(global1.c.a, global1.c.b, Struct_1(u_input.e.x, -207f, vec3<u32>(0u, 4294967295u, 0u), vec2<i32>(18562i, 0i)))), Struct_2(Struct_1(u_input.d, 1515f, vec3<u32>(global1.c.a.c.x, global1.c.a.c.x, global1.a), vec2<i32>(0i, -1i)), global1.c.a.d.x, Struct_1(2147483647i, global1.c.a.b, vec3<u32>(45058u, 109665u, global1.c.c.c.x), vec2<i32>(1i, global1.c.b)))).d)), Struct_5(vec3<i32>(_wgslsmith_mult_i32(-27398i, u_input.e.x), global1.c.b, _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, -1187i, -22378i), u_input.e.wwx)), vec4<i32>(u_input.d, _wgslsmith_div_i32(global1.c.b, u_input.d), global1.c.c.a, ~265i)), ~(~vec3<i32>(3920i, 15341i, global1.c.a.d.x))), Struct_1(21374i, _wgslsmith_f_op_f32(-295f - global1.b.x), _wgslsmith_div_vec3_u32(~(vec3<u32>(global1.a, 0u, global1.a) >> (vec3<u32>(global1.c.a.c.x, global1.a, global1.a) % vec3<u32>(32u))), _wgslsmith_sub_vec3_u32(vec3<u32>(1u, global1.c.c.c.x, global1.c.a.c.x), vec3<u32>(48717u, global1.a, global1.a)) ^ global1.c.a.c), global1.c.a.d));
    var var_2 = vec4<i32>(-1i) * -select(countOneBits(vec4<i32>(global1.c.b, u_input.b, global1.c.b, -1i)), vec4<i32>(-2147483647i << (global1.c.c.c.x % 32u), firstTrailingBit(42274i), -u_input.c, var_1.b), true);
    var_0 = vec2<bool>(true, true);
    var_2 = ~vec4<i32>(-(i32(-1i) * -var_2.x), var_1.c.d.x, func_3(false, Struct_2(func_1(global1.c.a.d.x, Struct_4(global1.c.c.c.x, vec4<f32>(-133f, -1437f, -1000f, global2[_wgslsmith_index_u32(var_1.c.c.x, 17u)]), global1.c), Struct_2(global1.c.a, -6240i, var_1.c)), var_2.x, func_1(u_input.a, Struct_4(global1.c.a.c.x, vec4<f32>(-1073f, 726f, global2[_wgslsmith_index_u32(31259u, 17u)], global2[_wgslsmith_index_u32(22444u, 17u)]), Struct_2(Struct_1(-32459i, 117f, vec3<u32>(44390u, 37663u, 4294967295u), vec2<i32>(-20387i, 50839i)), var_2.x, Struct_1(u_input.e.x, -889f, var_1.a.c, vec2<i32>(var_1.a.d.x, 0i)))), var_1)), Struct_5(abs(u_input.e.wxz), u_input.e), abs(vec3<i32>(var_2.x, -86258i, var_1.a.d.x))), var_2.x);
    let x = u_input.a;
    s_output = StorageBuffer(abs(var_2.xx) & u_input.e.xx);
}

