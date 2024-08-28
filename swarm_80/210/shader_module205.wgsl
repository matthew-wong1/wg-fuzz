struct Struct_1 {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec4<u32>,
    d: i32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_2,
    c: u32,
}

struct Struct_4 {
    a: bool,
    b: Struct_1,
    c: Struct_3,
    d: vec4<bool>,
}

struct Struct_5 {
    a: u32,
    b: vec3<u32>,
    c: f32,
    d: i32,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
    d: vec4<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: vec2<u32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 3> = array<bool, 3>(true, false, false);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_2(arg_0: vec3<i32>, arg_1: vec3<bool>, arg_2: vec2<i32>) -> Struct_1 {
    global0 = array<bool, 3>();
    let var_0 = 5480i;
    var var_1 = u_input.b;
    let var_2 = 1000f >= _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(399f, -695f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(327f, 1311f), _wgslsmith_f_op_f32(min(403f, -1000f)))), -441f)));
    var var_3 = !select(arg_1, arg_1, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(1000f)))) != 751f);
    return Struct_1(~arg_0.yx, max(_wgslsmith_mod_vec4_u32(u_input.d, ~u_input.d), u_input.d), countOneBits(~vec4<u32>(1u, u_input.d.x, u_input.b, u_input.d.x)), var_0);
}

fn func_3(arg_0: bool, arg_1: vec4<u32>, arg_2: u32, arg_3: vec4<u32>) -> Struct_1 {
    let var_0 = select(select(_wgslsmith_sub_vec3_i32(vec3<i32>(-1i, u_input.a, -1i), abs(vec3<i32>(u_input.a, 68727i, u_input.a))) & vec3<i32>(_wgslsmith_mult_i32(30717i, u_input.a), u_input.e.x >> (arg_3.x % 32u), u_input.c.x), firstTrailingBit(reverseBits(vec3<i32>(0i, -11480i, -28205i) ^ vec3<i32>(u_input.a, 56997i, u_input.c.x))), !vec3<bool>(false, true, all(vec2<bool>(arg_0, arg_0)))), vec3<i32>(func_2(vec3<i32>(-23877i, -1i, u_input.e.x), select(vec3<bool>(global0[_wgslsmith_index_u32(1u, 3u)], arg_0, false), vec3<bool>(true, arg_0, global0[_wgslsmith_index_u32(u_input.d.x, 3u)]), vec3<bool>(true, arg_0, global0[_wgslsmith_index_u32(u_input.d.x, 3u)])), vec2<i32>(2147483647i, -14091i)).d, u_input.e.x, abs(u_input.a >> (37441u % 32u))) << (~_wgslsmith_mult_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(arg_2, arg_2, arg_3.x), vec3<u32>(0u, 10562u, 0u)), arg_3.xxx) % vec3<u32>(32u)), select(select(select(!vec3<bool>(arg_0, global0[_wgslsmith_index_u32(0u, 3u)], arg_0), select(vec3<bool>(arg_0, false, true), vec3<bool>(global0[_wgslsmith_index_u32(u_input.d.x, 3u)], global0[_wgslsmith_index_u32(4294967295u, 3u)], true), vec3<bool>(arg_0, global0[_wgslsmith_index_u32(1u, 3u)], true)), vec3<bool>(global0[_wgslsmith_index_u32(arg_3.x, 3u)], false, true)), vec3<bool>(false, true, false), !select(vec3<bool>(false, global0[_wgslsmith_index_u32(u_input.d.x, 3u)], arg_0), vec3<bool>(global0[_wgslsmith_index_u32(arg_1.x, 3u)], global0[_wgslsmith_index_u32(4294967295u, 3u)], global0[_wgslsmith_index_u32(4294967295u, 3u)]), arg_0)), vec3<bool>(u_input.a <= u_input.a, global0[_wgslsmith_index_u32(arg_2, 3u)], !(!arg_0)), select(all(vec4<bool>(arg_0, true, global0[_wgslsmith_index_u32(arg_2, 3u)], false)) && true, !all(vec2<bool>(true, false)), true)));
    return Struct_1(abs(vec2<i32>(2147483647i, firstLeadingBit(_wgslsmith_clamp_i32(-24758i, u_input.e.x, -2147483647i)))), vec4<u32>(firstLeadingBit(51450u), 23690u, 4294967295u, 1u), vec4<u32>(4294967295u, select(~91105u >> (arg_2 % 32u), 1u, all(!vec4<bool>(arg_0, arg_0, true, false))), ~(~arg_2), arg_2), u_input.a);
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_4) -> Struct_5 {
    let var_0 = firstLeadingBit(arg_1.c.b.b.c.xzx);
    var var_1 = vec2<f32>(arg_0.x, _wgslsmith_f_op_f32(min(-311f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_0.x - _wgslsmith_f_op_f32(step(arg_0.x, arg_0.x))))))));
    var var_2 = select(func_2(vec3<i32>(6450i, u_input.c.x, -15656i), select(arg_1.d.zyz, arg_1.d.xwx, true), u_input.c).b, countOneBits(arg_1.c.b.b.b), any(select(!vec4<bool>(false, true, global0[_wgslsmith_index_u32(1u, 3u)], false), vec4<bool>(all(vec3<bool>(false, global0[_wgslsmith_index_u32(28533u, 3u)], false)), all(vec3<bool>(global0[_wgslsmith_index_u32(18617u, 3u)], true, true)), true, arg_1.c.a.x), all(arg_1.d))));
    let var_3 = vec4<bool>(!global0[_wgslsmith_index_u32(abs(27290u) | ~u_input.b, 3u)], false, arg_1.c.a.x, !arg_1.a);
    let var_4 = min(firstTrailingBit(vec4<i32>(min(-28365i, u_input.e.x), u_input.c.x, 1i, 1i)), reverseBits(vec4<i32>(-(~arg_1.c.b.b.a.x), u_input.a, -_wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.c.b.b.d, -14337i, 35599i), vec3<i32>(-2147483647i, 0i, -1i)), select(arg_1.b.a.x, abs(arg_1.b.a.x), !arg_1.d.x))));
    return Struct_5(func_3(arg_1.a, u_input.d, abs(37382u), u_input.d).b.x, func_3(!var_3.x, vec4<u32>(~(~0u), 1u, firstLeadingBit(var_2.x), 0u), ~1u, _wgslsmith_sub_vec4_u32(arg_1.c.b.b.c, _wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(arg_1.b.c, arg_1.c.b.b.c), arg_1.b.c))).b.xwz, var_1.x, 25854i, -(~1741i) >> (var_2.x % 32u));
}

fn func_1(arg_0: vec2<i32>, arg_1: bool) -> u32 {
    global0 = array<bool, 3>();
    global0 = array<bool, 3>();
    global0 = array<bool, 3>();
    let var_0 = func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(vec2<f32>(-348f, 303f), vec2<f32>(-594f, -678f)), vec2<f32>(-159f, 108f)))))), Struct_4(true, func_2(~vec3<i32>(arg_0.x, -1i, 2147483647i), !(!vec3<bool>(false, arg_1, true)), u_input.c), Struct_3(!(!vec2<bool>(arg_1, global0[_wgslsmith_index_u32(u_input.b, 3u)])), Struct_2(21359u, func_3(global0[_wgslsmith_index_u32(22197u, 3u)], vec4<u32>(u_input.d.x, 0u, 4294967295u, 24191u), 82798u, u_input.d)), u_input.d.x), vec4<bool>(false, false, !(global0[_wgslsmith_index_u32(0u, 3u)] | arg_1), true && global0[_wgslsmith_index_u32(24644u, 3u)])));
    global0 = array<bool, 3>();
    return u_input.b;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 3>();
    let var_0 = (_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(-vec2<i32>(-24472i, 1i), vec2<i32>(23416i, u_input.c.x)), _wgslsmith_sub_i32(u_input.c.x, u_input.e.x)) << (~func_1(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.c.x, -17909i), u_input.e), true) % 32u)) | _wgslsmith_add_i32(u_input.a, u_input.e.x | (i32(-1i) * -u_input.e.x));
    var var_1 = 2147483647i;
    let var_2 = ~select(~vec4<i32>(var_0, var_0, u_input.a, 42161i) ^ -(vec4<i32>(-41959i, -1i, var_0, u_input.a) << (u_input.d % vec4<u32>(32u))), -_wgslsmith_mod_vec4_i32(reverseBits(vec4<i32>(89789i, var_0, var_0, 8699i)), vec4<i32>(var_0, u_input.e.x, -32774i, var_0)), all(select(vec2<bool>(true, true), !vec2<bool>(true, global0[_wgslsmith_index_u32(u_input.d.x, 3u)]), select(vec2<bool>(global0[_wgslsmith_index_u32(u_input.d.x, 3u)], global0[_wgslsmith_index_u32(1u, 3u)]), vec2<bool>(true, true), true))));
    global0 = array<bool, 3>();
    var var_3 = Struct_2(_wgslsmith_clamp_u32(~(~4294967295u), _wgslsmith_clamp_u32(~1u, u_input.b, u_input.b) >> (1u % 32u), _wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(u_input.d.x, 4294967295u, u_input.b, u_input.d.x)), ~u_input.d)), Struct_1(func_3(true, abs(abs(u_input.d)), _wgslsmith_sub_u32(u_input.d.x, ~u_input.d.x), _wgslsmith_mod_vec4_u32(vec4<u32>(1u, u_input.b, 6510u, u_input.d.x), vec4<u32>(11676u, u_input.b, 4294967295u, 0u)) & (vec4<u32>(u_input.b, u_input.d.x, u_input.d.x, u_input.d.x) ^ vec4<u32>(26037u, u_input.d.x, 69883u, 68422u))).a, min(vec4<u32>(0u ^ u_input.d.x, 1u, abs(u_input.d.x), u_input.d.x), u_input.d), ~(~select(u_input.d, vec4<u32>(u_input.b, u_input.d.x, 56297u, 0u), vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.d.x, 3u)], global0[_wgslsmith_index_u32(11437u, 3u)], global0[_wgslsmith_index_u32(u_input.b, 3u)]))), _wgslsmith_dot_vec2_i32(var_2.zx, vec2<i32>(func_4(vec2<f32>(241f, 1576f), Struct_4(false, Struct_1(u_input.e, vec4<u32>(1u, 0u, u_input.b, u_input.b), u_input.d, 19750i), Struct_3(vec2<bool>(global0[_wgslsmith_index_u32(u_input.b, 3u)], false), Struct_2(0u, Struct_1(vec2<i32>(1i, var_0), vec4<u32>(u_input.b, 0u, u_input.d.x, u_input.d.x), vec4<u32>(u_input.d.x, 1u, u_input.d.x, 4294967295u), 9239i)), 768u), vec4<bool>(global0[_wgslsmith_index_u32(1905u, 3u)], global0[_wgslsmith_index_u32(22873u, 3u)], global0[_wgslsmith_index_u32(49861u, 3u)], true))).e, _wgslsmith_mult_i32(-28965i, u_input.c.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-782f, _wgslsmith_f_op_f32(floor(825f)), _wgslsmith_div_f32(-1130f, 215f), -792f))))), -14445i, vec2<u32>(24045u, ~25973u), abs(countOneBits(u_input.d.wz)));
}

