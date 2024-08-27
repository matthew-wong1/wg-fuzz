struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: i32,
}

struct Struct_4 {
    a: i32,
    b: i32,
    c: bool,
    d: vec4<u32>,
    e: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 6> = array<Struct_2, 6>(Struct_2(Struct_1(255f), vec3<i32>(45624i, 49763i, -10226i), Struct_1(-354f), Struct_1(-831f)), Struct_2(Struct_1(1107f), vec3<i32>(-37982i, 63834i, 2147483647i), Struct_1(-163f), Struct_1(-384f)), Struct_2(Struct_1(-1000f), vec3<i32>(-1i, 1i, 3932i), Struct_1(-450f), Struct_1(-545f)), Struct_2(Struct_1(625f), vec3<i32>(2147483647i, -3276i, 12060i), Struct_1(-1000f), Struct_1(-415f)), Struct_2(Struct_1(599f), vec3<i32>(-1i, 0i, 1i), Struct_1(-332f), Struct_1(-2265f)), Struct_2(Struct_1(393f), vec3<i32>(1i, 13546i, 2147483647i), Struct_1(1780f), Struct_1(-1000f)));

var<private> global1: array<i32, 3> = array<i32, 3>(0i, -32631i, i32(-2147483648));

var<private> global2: array<i32, 29>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_2(arg_0: Struct_3) -> Struct_1 {
    var var_0 = true;
    var var_1 = arg_0;
    let var_2 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2120f * 122f) + _wgslsmith_f_op_f32(trunc(-404f))))), vec3<i32>(i32(-1i) * -select(-1i, -39212i, false), _wgslsmith_div_i32(countOneBits(var_1.b) ^ _wgslsmith_add_i32(var_1.b, 0i), reverseBits(_wgslsmith_clamp_i32(1i, 2147483647i, 39292i))), -(~(-1i))), Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1954f)))), Struct_1(_wgslsmith_f_op_f32(max(-438f, _wgslsmith_f_op_f32(1021f + 323f)))));
    var var_3 = -2147483647i;
    var var_4 = Struct_1(var_2.a.a);
    return Struct_1(var_4.a);
}

fn func_3(arg_0: Struct_2, arg_1: bool, arg_2: Struct_3) -> Struct_3 {
    global1 = array<i32, 3>();
    let var_0 = func_2(Struct_3(arg_2.a, reverseBits(2147483647i)));
    var var_1 = Struct_4(-(~(-_wgslsmith_add_i32(u_input.c.x, u_input.a))), 0i, select(!any(!vec2<bool>(false, arg_1)), arg_2.a, true), ~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.d, u_input.d, 4294967295u, u_input.b.x) ^ ~vec4<u32>(u_input.b.x, u_input.b.x, 1u, 0u), vec4<u32>(_wgslsmith_mod_u32(u_input.b.x, u_input.b.x), countOneBits(0u), 0u, _wgslsmith_add_u32(u_input.d, u_input.b.x))), true);
    let var_2 = Struct_4(~_wgslsmith_div_i32(1i, var_1.a), global2[_wgslsmith_index_u32(min(~(var_1.d.x | _wgslsmith_dot_vec3_u32(var_1.d.www, vec3<u32>(24780u, var_1.d.x, 60949u))), abs(~8209u)), 29u)], true, var_1.d, !(~var_1.d.x < var_1.d.x));
    var var_3 = ~_wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(~var_2.d, var_1.d ^ vec4<u32>(u_input.d, u_input.d, u_input.d, var_1.d.x)) ^ vec4<u32>(40126u & var_2.d.x, ~var_1.d.x, _wgslsmith_add_u32(var_1.d.x, var_2.d.x), _wgslsmith_dot_vec2_u32(var_2.d.xy, vec2<u32>(0u, var_2.d.x))), vec4<u32>(u_input.d, var_2.d.x << (~1u % 32u), _wgslsmith_mod_u32(abs(4294967295u), ~var_2.d.x), 48539u));
    return arg_2;
}

fn func_1(arg_0: Struct_4) -> bool {
    var var_0 = 1455f;
    var var_1 = func_3(Struct_2(func_2(Struct_3(true, global1[_wgslsmith_index_u32(1u, 3u)])), u_input.c.xwx, func_2(Struct_3(true, global1[_wgslsmith_index_u32(arg_0.d.x, 3u)])), Struct_1(967f)), !(!(!arg_0.c == arg_0.e)), Struct_3(arg_0.e, 1i));
    let var_2 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, 381f) - -621f), 491f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -251f) - _wgslsmith_f_op_f32(sign(270f))) * _wgslsmith_f_op_f32(f32(-1f) * -267f)), all(vec4<bool>(true, arg_0.c & false, false, any(vec4<bool>(arg_0.e, var_1.a, var_1.a, false)))))) >= 674f;
    var_1 = Struct_3(false, i32(-1i) * -_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(20515i, var_1.b, var_1.b), vec3<i32>(global2[_wgslsmith_index_u32(8591u, 29u)], global1[_wgslsmith_index_u32(u_input.d, 3u)], arg_0.a)), u_input.c.wxx));
    let var_3 = u_input.a;
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_dot_vec3_i32(u_input.c.zyw, countOneBits(~firstTrailingBit(~u_input.c.xxy)));
    var var_1 = global0[_wgslsmith_index_u32(1u, 6u)];
    var var_2 = Struct_4(~(~(~_wgslsmith_dot_vec2_i32(var_1.b.yy, vec2<i32>(9059i, global1[_wgslsmith_index_u32(47113u, 3u)])))), 1i, !func_1(Struct_4(10013i << (u_input.d % 32u), min(global1[_wgslsmith_index_u32(0u, 3u)], global1[_wgslsmith_index_u32(4294967295u, 3u)]), true, _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.d, u_input.d, u_input.b.x, 44213u), vec4<u32>(u_input.b.x, u_input.b.x, u_input.d, 8963u), vec4<u32>(u_input.d, 4294967295u, u_input.d, u_input.b.x)), true)), vec4<u32>(_wgslsmith_sub_u32(~41886u, ~(~68703u)), u_input.b.x, 36621u, 4294967295u), all(select(vec4<bool>(true, any(vec3<bool>(true, false, false)), true, true), vec4<bool>(func_3(Struct_2(Struct_1(var_1.d.a), vec3<i32>(0i, -1i, -67056i), Struct_1(-176f), var_1.c), true, Struct_3(false, 23117i)).a, false, global1[_wgslsmith_index_u32(u_input.b.x, 3u)] == 5623i, true), !any(vec2<bool>(false, false)))));
    var var_3 = Struct_4(-(~func_3(Struct_2(Struct_1(var_1.d.a), var_1.b, Struct_1(var_1.a.a), Struct_1(1142f)), true, Struct_3(false, 2147483647i)).b), var_2.a, !var_2.e, vec4<u32>(countOneBits(29811u), reverseBits(_wgslsmith_dot_vec3_u32(~var_2.d.yyw, vec3<u32>(u_input.b.x, var_2.d.x, 4230u))), firstTrailingBit(u_input.b.x), _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.d, 0u) | ~u_input.b, vec2<u32>(var_2.d.x, 1u))), all(!(!(!vec2<bool>(var_2.e, var_2.c)))));
    var var_4 = func_2(func_3(Struct_2(func_2(func_3(Struct_2(Struct_1(-324f), u_input.c.zyx, var_1.a, Struct_1(var_1.a.a)), true, Struct_3(var_2.e, -2812i))), firstTrailingBit(-vec3<i32>(var_2.b, global2[_wgslsmith_index_u32(u_input.b.x, 29u)], var_0)), var_1.d, Struct_1(_wgslsmith_f_op_f32(ceil(1042f)))), var_2.c, func_3(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(0u, var_2.d.x) >> (var_3.d.x % 32u), 6u)], var_2.c, Struct_3(true, ~(-1i)))));
    var var_5 = vec4<u32>(~(~4294967295u), _wgslsmith_div_u32(1u, u_input.b.x), var_3.d.x, 1u);
    let x = u_input.a;
    s_output = StorageBuffer(var_2.d);
}

