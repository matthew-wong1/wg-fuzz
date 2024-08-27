struct Struct_1 {
    a: u32,
    b: bool,
    c: vec2<bool>,
    d: i32,
}

struct Struct_2 {
    a: f32,
    b: f32,
    c: Struct_1,
    d: Struct_1,
    e: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<bool>,
    c: vec2<u32>,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 20> = array<vec2<u32>, 20>(vec2<u32>(4294967295u, 1u), vec2<u32>(19590u, 4294967295u), vec2<u32>(115706u, 22748u), vec2<u32>(4294967295u, 7173u), vec2<u32>(47990u, 0u), vec2<u32>(92907u, 20355u), vec2<u32>(20799u, 4294967295u), vec2<u32>(0u, 4294967295u), vec2<u32>(49771u, 0u), vec2<u32>(7039u, 1u), vec2<u32>(22144u, 0u), vec2<u32>(49958u, 19917u), vec2<u32>(0u, 39814u), vec2<u32>(4294967295u, 36440u), vec2<u32>(39131u, 4294967295u), vec2<u32>(1u, 18256u), vec2<u32>(0u, 0u), vec2<u32>(0u, 39394u), vec2<u32>(4294967295u, 43627u), vec2<u32>(4294967295u, 0u));

var<private> global1: vec4<u32>;

var<private> global2: array<f32, 13>;

var<private> global3: bool;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_2() -> Struct_1 {
    global3 = !(true || all(vec2<bool>(true, true)));
    let var_0 = Struct_4(Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-143f, global2[_wgslsmith_index_u32(global1.x, 13u)])))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(global2[_wgslsmith_index_u32(26391u, 13u)], 1469f), global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(global1.x, 21066u), 13u)]) * _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(~global1.x, 13u)])), Struct_1(_wgslsmith_add_u32(35148u, global1.x), !select(false, false, false), vec2<bool>(true, true), u_input.d), Struct_1(_wgslsmith_add_u32(1u, 1u), true, vec2<bool>(any(vec2<bool>(true, false)), false), _wgslsmith_add_i32(u_input.b, -1i)), ~(~global1.x)), true);
    global3 = false;
    let var_1 = var_0;
    let var_2 = var_0.a.d.c.x;
    return Struct_1(global1.x, !var_2, var_1.a.c.c, var_0.a.c.d);
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: vec2<u32>) -> Struct_2 {
    return Struct_2(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(-539f, global2[_wgslsmith_index_u32(~(~arg_1.a), 13u)])))), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-348f + -1795f) - _wgslsmith_f_op_f32(f32(-1f) * -557f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(global2[_wgslsmith_index_u32(1u, 13u)])), 862f)))), Struct_1(_wgslsmith_div_u32(arg_2.x, ~(~38805u)), arg_1.b, !(!select(arg_1.c, arg_1.c, arg_1.c)), 0i), func_2(), arg_1.a);
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: vec3<u32>) -> bool {
    global1 = abs(_wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(59189u, 0u, 14271u, 23941u), vec4<u32>(global1.x, 1u, global1.x, 56203u)) ^ ~vec4<u32>(22898u, arg_1.d.a, 90470u, 8893u), vec4<u32>(arg_2.x, arg_1.e, arg_1.c.a, 0u) >> (vec4<u32>(arg_2.x, arg_1.c.a, arg_1.c.a, arg_1.c.a) % vec4<u32>(32u))), _wgslsmith_mult_vec4_u32(vec4<u32>(0u, firstTrailingBit(global1.x), ~11042u, arg_1.d.a), firstLeadingBit(abs(vec4<u32>(arg_1.e, 0u, 0u, 41075u))))));
    var var_0 = Struct_1(abs(23904u) ^ ~global1.x, all(arg_1.c.c) | arg_1.c.c.x, !(!vec2<bool>(func_3(vec4<i32>(1i, -15361i, -5153i, arg_1.c.d), Struct_1(arg_2.x, false, vec2<bool>(false, true), u_input.c.x), vec2<u32>(1048u, 1256u)).c.b, any(vec4<bool>(arg_1.c.b, arg_1.c.b, arg_1.c.c.x, arg_1.c.b)))), -arg_1.d.d);
    let var_1 = select(_wgslsmith_mod_vec3_u32(_wgslsmith_div_vec3_u32(arg_2, vec3<u32>(~global1.x, ~var_0.a, var_0.a)), _wgslsmith_div_vec3_u32(abs(global1.www), _wgslsmith_clamp_vec3_u32(vec3<u32>(0u, 43847u, var_0.a) ^ global1.xyz, global1.wwz, vec3<u32>(global1.x, global1.x, global1.x)))), vec3<u32>(_wgslsmith_div_u32(~46984u, abs(abs(var_0.a))), firstLeadingBit(0u), select(global1.x, ~102322u, false) | ~arg_1.e), true);
    var var_2 = _wgslsmith_mod_vec3_u32(global1.xxw, ~global1.yxy);
    global3 = var_0.b;
    return arg_1.c.b;
}

fn func_1(arg_0: f32, arg_1: Struct_4) -> f32 {
    global1 = vec4<u32>(_wgslsmith_mod_u32(abs(firstLeadingBit(arg_1.a.c.a)), global1.x) | ~countOneBits(min(33084u, arg_1.a.d.a)), 24453u, ~global1.x, abs(1u));
    let var_0 = vec2<i32>(arg_1.a.d.d, firstTrailingBit(_wgslsmith_sub_i32(-5079i, _wgslsmith_mod_i32(u_input.b, arg_1.a.d.d))) << (global1.x % 32u));
    global3 = any(!vec4<bool>(arg_1.b, any(vec2<bool>(arg_1.a.d.c.x, true)), arg_1.a.c.b, true));
    global3 = true || func_4(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-602f, arg_1.a.b))))), func_3(min(reverseBits(vec4<i32>(-2147483647i, 4467i, 0i, u_input.a)), _wgslsmith_div_vec4_i32(vec4<i32>(-18980i, -44604i, var_0.x, -2147483647i), vec4<i32>(u_input.b, 11676i, 1i, u_input.b))), func_2(), global0[_wgslsmith_index_u32(arg_1.a.e, 20u)]), ~vec3<u32>(firstLeadingBit(arg_1.a.c.a), 25190u, func_2().a));
    var var_1 = ~(~(~_wgslsmith_div_vec4_u32(vec4<u32>(arg_1.a.c.a, 8736u, arg_1.a.d.a, global1.x), vec4<u32>(1u, 34943u, arg_1.a.e, 4294967295u) >> (vec4<u32>(arg_1.a.e, 0u, 0u, arg_1.a.c.a) % vec4<u32>(32u)))));
    return -1000f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(1413f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(6381u, 13u)] + 2091f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(global2[_wgslsmith_index_u32(global1.x, 13u)], Struct_4(Struct_2(global2[_wgslsmith_index_u32(11086u, 13u)], global2[_wgslsmith_index_u32(global1.x, 13u)], Struct_1(global1.x, false, vec2<bool>(true, false), u_input.b), Struct_1(global1.x, true, vec2<bool>(false, true), -15772i), global1.x), true))) - _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(global1.x, 13u)]))), -503f, func_4(vec2<f32>(344f, _wgslsmith_f_op_f32(-335f - -850f)), func_3(~vec4<i32>(-23300i, u_input.b, 2147483647i, u_input.b), func_2(), global1.zz), vec3<u32>(global1.x, 0u, global1.x) & vec3<u32>(global1.x, 4294967295u, global1.x)))), Struct_1(~1u | _wgslsmith_div_u32(~global1.x, 35256u), false, select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true)), _wgslsmith_mult_i32(u_input.c.x, i32(-1i) * -36644i) & (_wgslsmith_add_i32(11151i, 0i) & (-2147483647i | u_input.c.x))), Struct_1(_wgslsmith_dot_vec3_u32(vec3<u32>(firstLeadingBit(13491u), _wgslsmith_clamp_u32(global1.x, global1.x, 4294967295u), ~global1.x), global1.wwx), countOneBits(-26876i) <= u_input.b, func_3(countOneBits(vec4<i32>(-1i, 20589i, u_input.a, u_input.a)), Struct_1(global1.x, true, vec2<bool>(true, true), -58854i), vec2<u32>(global1.x, min(103754u, global1.x))).d.c, 1i), reverseBits(global1.x | ~global1.x) << (_wgslsmith_dot_vec4_u32(vec4<u32>(func_3(vec4<i32>(-2147483647i, 26519i, u_input.b, u_input.b), Struct_1(39657u, false, vec2<bool>(false, false), -2510i), vec2<u32>(global1.x, global1.x)).d.a, select(global1.x, global1.x, true), global1.x, global1.x), vec4<u32>(44473u, global1.x, ~global1.x, _wgslsmith_dot_vec2_u32(global1.zw, vec2<u32>(4294967295u, 0u)))) % 32u));
    var var_1 = _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(489f)))), 139f, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(global1.x, 13u)] - 322f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(38117u, global1.x, 0u, global1.x), vec4<u32>(1u, 1u, var_0.e, var_0.e)), 13u)]) * global2[_wgslsmith_index_u32(select(max(var_0.e, 1u), 4294967295u, true & var_0.c.c.x), 13u)]), _wgslsmith_f_op_f32(sign(var_0.b))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(380f, 233f, global2[_wgslsmith_index_u32(46176u, 13u)], var_0.a) + vec4<f32>(-581f, 1000f, var_0.a, var_0.a))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1434f, global2[_wgslsmith_index_u32(var_0.e, 13u)], global2[_wgslsmith_index_u32(var_0.c.a, 13u)], global2[_wgslsmith_index_u32(4294967295u, 13u)]) + vec4<f32>(-1413f, 233f, global2[_wgslsmith_index_u32(global1.x, 13u)], var_0.a))))))));
    global3 = true;
    let var_2 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1016f, global2[_wgslsmith_index_u32(global1.x, 13u)])))) - _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-853f, -1324f), _wgslsmith_f_op_vec2_f32(vec2<f32>(943f, var_0.a) - var_1.ww)))) * _wgslsmith_div_vec2_f32(vec2<f32>(1000f, 662f), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(var_1.zz + vec2<f32>(global2[_wgslsmith_index_u32(4294967295u, 13u)], var_0.b)), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global2[_wgslsmith_index_u32(2785u, 13u)], global2[_wgslsmith_index_u32(9037u, 13u)]))), all(vec4<bool>(var_0.c.c.x, true, var_0.d.c.x, false))))))));
    var var_3 = vec3<i32>(_wgslsmith_dot_vec2_i32(~(abs(vec2<i32>(16717i, var_0.c.d)) >> (vec2<u32>(0u, 30052u) % vec2<u32>(32u))), vec2<i32>(var_0.d.d, 0i)), -firstLeadingBit(max(var_0.d.d >> (var_0.c.a % 32u), ~u_input.a)), ~(-2147483647i));
    let var_4 = func_3(_wgslsmith_sub_vec4_i32(vec4<i32>(var_0.d.d, ~2147483647i, i32(-1i) * -58358i, 54685i), vec4<i32>(0i, u_input.c.x, 1i, var_0.d.d) & (vec4<i32>(-40686i, u_input.d, var_3.x, var_3.x) & vec4<i32>(u_input.c.x, var_3.x, u_input.d, var_0.d.d))) << (~vec4<u32>(var_0.c.a, func_2().a, 0u, ~23003u) % vec4<u32>(32u)), Struct_1(~0u, false, !vec2<bool>(true, 8173u > var_0.d.a), var_0.c.d), vec2<u32>(firstLeadingBit(global1.x), global1.x));
    let x = u_input.a;
    s_output = StorageBuffer(128646u);
}

