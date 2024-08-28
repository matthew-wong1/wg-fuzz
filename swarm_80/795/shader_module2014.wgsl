struct Struct_1 {
    a: vec4<bool>,
    b: bool,
    c: vec3<i32>,
    d: f32,
    e: u32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<bool>,
    c: vec3<u32>,
    d: bool,
}

struct Struct_4 {
    a: f32,
    b: vec2<f32>,
    c: bool,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<f32>,
    c: vec4<i32>,
    d: vec2<f32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 26>;

var<private> global1: vec3<bool> = vec3<bool>(false, false, false);

var<private> global2: vec2<bool> = vec2<bool>(false, true);

var<private> global3: Struct_3;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: vec2<i32>, arg_1: bool, arg_2: Struct_5) -> vec2<f32> {
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(952f, -116f)), 1423f), vec2<f32>(-529f, global3.a.d))));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_5, arg_2: Struct_3) -> vec2<u32> {
    let var_0 = ~max(26071u, global3.a.e);
    global2 = select(vec2<bool>(all(vec3<bool>(true, true, true)), arg_0.c), vec2<bool>(true, select(true, arg_2.c.x == 100093u, all(vec3<bool>(false, false, false))) & global2.x), global3.a.d <= -654f);
    global0 = array<Struct_2, 26>();
    var var_1 = true;
    var_1 = !(!arg_2.a.a.x);
    return _wgslsmith_mod_vec2_u32(vec2<u32>(_wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(arg_2.c.x, arg_1.a.e, arg_1.a.e, arg_2.a.e)), select(vec4<u32>(arg_2.a.e, 4294967295u, arg_1.a.e, arg_1.b.a), vec4<u32>(var_0, 72451u, 4294967295u, 62501u), false)), ~_wgslsmith_mult_u32(4294967295u, arg_2.c.x)), vec2<u32>(arg_2.a.e, ~0u | global3.c.x)) | (vec2<u32>(abs(firstTrailingBit(25699u)), abs(global3.a.e)) & vec2<u32>(arg_2.c.x, 4294967295u));
}

fn func_4(arg_0: vec2<u32>, arg_1: vec3<u32>) -> Struct_1 {
    var var_0 = Struct_3(Struct_1(vec4<bool>(global2.x, !(false & global3.a.b), true || global1.x, select(true, all(global1.yy), global2.x)), true, vec3<i32>(-1i) * -select(global3.a.c, vec3<i32>(15823i, 1i, global3.a.c.x), vec3<bool>(global1.x, true, global2.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.a.d + global3.a.d)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1448f) * _wgslsmith_f_op_f32(max(-406f, global3.a.d)))), 64513u), global1.zx, arg_1, global3.b.x);
    var_0 = Struct_3(Struct_1(select(select(var_0.a.a, select(vec4<bool>(true, false, global2.x, true), global3.a.a, vec4<bool>(global2.x, true, false, var_0.d)), global2.x), !vec4<bool>(global3.d, false, global2.x, true), global1.x), false, ~min(vec3<i32>(global3.a.c.x, u_input.a.x, 2147483647i), vec3<i32>(20933i, global3.a.c.x, 44257i)) & u_input.a.xxy, -1144f, ~1u), select(!global1.xy, select(var_0.a.a.xy, global1.zx, !var_0.b), vec2<bool>(all(select(var_0.a.a.wzw, vec3<bool>(global2.x, true, true), var_0.d)), any(select(vec2<bool>(false, false), global3.a.a.zx, var_0.a.a.zw)))), vec3<u32>(~arg_1.x, ~4294967295u, 0u), true);
    var var_1 = countOneBits(vec3<i32>(0i & (23352i & _wgslsmith_dot_vec4_i32(vec4<i32>(37524i, global3.a.c.x, u_input.b, -2147483647i), vec4<i32>(-13954i, u_input.a.x, u_input.b, var_0.a.c.x))), ~(-40348i), _wgslsmith_dot_vec3_i32(~var_0.a.c, firstTrailingBit(u_input.a.wxz))));
    global3 = Struct_3(Struct_1(global3.a.a, true, vec3<i32>(_wgslsmith_clamp_i32(1i, -2147483647i, abs(1i)), var_1.x, u_input.a.x), global3.a.d, _wgslsmith_mult_u32(arg_1.x, ~var_0.a.e)), !global3.b, global3.c, true && global1.x);
    global1 = var_0.a.a.wwy;
    return Struct_1(select(vec4<bool>(select(all(vec3<bool>(var_0.b.x, var_0.a.b, global3.b.x)), 0i <= var_0.a.c.x, !global2.x), all(global1.xy), any(global3.a.a.wwx), true), select(vec4<bool>(!global2.x, any(global3.a.a), global2.x, global1.x), !(!global3.a.a), global2.x), -5334i != (-2147483647i & u_input.a.x)), var_0.d && all(var_0.a.a), global3.a.c, 1372f, firstLeadingBit(max(85947u, ~global3.c.x)) >> (_wgslsmith_dot_vec4_u32(min(vec4<u32>(4294967295u, 17276u, arg_0.x, 66810u), _wgslsmith_mod_vec4_u32(vec4<u32>(var_0.a.e, 0u, 54671u, global3.c.x), vec4<u32>(arg_1.x, 0u, var_0.c.x, arg_0.x))), vec4<u32>(countOneBits(1u), global3.c.x ^ arg_1.x, 1u, arg_1.x)) % 32u));
}

fn func_5(arg_0: Struct_1) -> Struct_5 {
    global3 = Struct_3(func_4(vec2<u32>(arg_0.e & 47535u, 4294967295u), vec3<u32>(arg_0.e, 4294967295u, 0u)), vec2<bool>(any(select(vec4<bool>(global3.b.x, true, global1.x, global3.b.x), arg_0.a, func_4(vec2<u32>(1u, 0u), global3.c).b)), global2.x), ~abs(global3.c), true);
    global0 = array<Struct_2, 26>();
    global1 = select(global3.a.a.zzy, func_4(global3.c.xx, global3.c).a.wyx, !vec3<bool>(select(-2147483647i, -1i, global2.x) != (global3.a.c.x ^ arg_0.c.x), any(select(arg_0.a.yxz, global3.a.a.xyw, arg_0.a.zwx)), all(func_4(vec2<u32>(24568u, arg_0.e), global3.c).a.wz)));
    var var_0 = vec2<bool>(all(global3.a.a.zww), false);
    global0 = array<Struct_2, 26>();
    return Struct_5(arg_0, Struct_2(countOneBits(~52813u)));
}

fn func_1(arg_0: Struct_4, arg_1: bool) -> Struct_1 {
    global0 = array<Struct_2, 26>();
    let var_0 = func_5(func_4(func_3(Struct_4(arg_0.a, _wgslsmith_f_op_vec2_f32(func_2(global3.a.c.yy, false, Struct_5(Struct_1(global3.a.a, false, global3.a.c, -1000f, global3.c.x), global0[_wgslsmith_index_u32(global3.c.x, 26u)]))), true), Struct_5(Struct_1(vec4<bool>(global2.x, arg_1, false, true), global3.a.a.x, vec3<i32>(u_input.b, global3.a.c.x, global3.a.c.x), -798f, 4294967295u), Struct_2(2381u)), Struct_3(Struct_1(global3.a.a, global3.a.b, vec3<i32>(-2147483647i, 19674i, 1i), global3.a.d, 13052u), !vec2<bool>(global1.x, arg_0.c), abs(vec3<u32>(77344u, 1u, 41701u)), global3.d)), ~vec3<u32>(global3.c.x, _wgslsmith_clamp_u32(global3.a.e, global3.a.e, global3.c.x), 17903u)));
    var var_1 = true;
    let var_2 = Struct_4(-598f, arg_0.b, false);
    var var_3 = global3.a;
    return func_4(_wgslsmith_mod_vec2_u32(countOneBits(abs(vec2<u32>(global3.a.e, var_3.e))), vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, var_0.a.e, var_0.b.a, var_0.a.e), countOneBits(vec4<u32>(4294967295u, var_0.b.a, var_0.a.e, var_3.e))), func_5(global3.a).a.e ^ _wgslsmith_clamp_u32(4294967295u, 4294967295u, var_3.e))), abs(abs(global3.c)));
}

fn func_6(arg_0: Struct_5, arg_1: Struct_5, arg_2: f32, arg_3: Struct_5) -> Struct_3 {
    let var_0 = u_input.b;
    var var_1 = Struct_4(_wgslsmith_f_op_f32(-arg_0.a.d), vec2<f32>(624f, -1000f), true);
    global3 = Struct_3(Struct_1(!vec4<bool>(var_1.c, true, true && global2.x, arg_3.a.a.x), arg_2 <= arg_0.a.d, arg_1.a.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(204f - -1000f))), arg_0.b.a), vec2<bool>((false & (arg_1.a.e > arg_0.a.e)) || true, arg_0.a.b), vec3<u32>(~arg_3.b.a, _wgslsmith_div_u32(~0u, _wgslsmith_sub_u32(29930u, 0u)), ~_wgslsmith_mod_u32(func_1(Struct_4(372f, var_1.b, global3.b.x), true).e, global3.c.x)), false);
    global0 = array<Struct_2, 26>();
    var var_2 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.a.d - -1156f)))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-var_1.b))), arg_0.a.a.x);
    return Struct_3(Struct_1(func_5(Struct_1(select(arg_1.a.a, global3.a.a, vec4<bool>(global2.x, arg_0.a.a.x, true, global2.x)), false, arg_0.a.c, _wgslsmith_f_op_f32(f32(-1f) * -708f), 4294967295u ^ arg_1.a.e)).a.a, !all(arg_1.a.a.yyx), func_1(Struct_4(_wgslsmith_f_op_f32(-arg_1.a.d), var_2.b, false), all(!arg_1.a.a.yyw)).c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_1.a.d), _wgslsmith_f_op_f32(-arg_1.a.d), arg_3.a.b))), global3.c.x), global1.zy, _wgslsmith_sub_vec3_u32(global3.c & ~(~vec3<u32>(arg_3.b.a, 24253u, 19978u)), vec3<u32>(_wgslsmith_div_u32(0u, 73508u) ^ (global3.a.e ^ arg_3.a.e), ~arg_0.b.a, func_4(global3.c.xz, _wgslsmith_mod_vec3_u32(vec3<u32>(6052u, global3.a.e, arg_3.a.e), vec3<u32>(arg_1.a.e, arg_0.b.a, 86185u))).e)), global3.d);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = Struct_3(global3.a, vec2<bool>(!((global3.a.e >> (53502u % 32u)) >= _wgslsmith_add_u32(global3.c.x, global3.a.e)), false), vec3<u32>(global3.a.e << (global3.c.x % 32u), 13789u, ~(~_wgslsmith_add_u32(global3.c.x, global3.c.x))), true);
    let var_0 = global3.a;
    global0 = array<Struct_2, 26>();
    global3 = func_6(Struct_5(func_1(Struct_4(-1000f, _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(823f, -1068f))), global3.d), global3.b.x), func_5(Struct_1(!vec4<bool>(false, true, true, var_0.a.x), all(global3.b), -global3.a.c, var_0.d, ~1u)).b), Struct_5(Struct_1(func_5(func_5(global3.a).a).a.a, all(func_4(global3.c.xx, global3.c).a), func_4(~global3.c.yy, global3.c).c, -1006f, ~var_0.e), func_5(func_1(Struct_4(-635f, vec2<f32>(var_0.d, 1743f), global1.x), all(global3.a.a.xxz))).b), var_0.d, func_5(func_1(Struct_4(899f, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1169f, 212f)), false), true)));
    global0 = array<Struct_2, 26>();
    let var_1 = global3.a;
    let x = u_input.a;
    s_output = StorageBuffer(global3.c, _wgslsmith_div_vec3_f32(vec3<f32>(672f, -1179f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0.d)) * _wgslsmith_f_op_f32(var_1.d - var_1.d))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_1.d), 1f, 306f) * vec3<f32>(_wgslsmith_f_op_f32(-var_1.d), _wgslsmith_f_op_f32(-var_0.d), _wgslsmith_f_op_f32(var_0.d * -557f)))), u_input.a, _wgslsmith_div_vec2_f32(vec2<f32>(global3.a.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_2(vec2<i32>(1i, var_1.c.x), false, Struct_5(global3.a, Struct_2(var_0.e)))).x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(1576f, 225f), vec2<f32>(1000f, var_0.d))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-871f, global3.a.d), vec2<f32>(-1281f, global3.a.d))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.d, -1143f))))), vec3<u32>(107876u, func_3(Struct_4(global3.a.d, vec2<f32>(1000f, var_0.d), global2.x), Struct_5(global3.a, global0[_wgslsmith_index_u32(40871u, 26u)]), Struct_3(global3.a, var_0.a.ww, vec3<u32>(61056u, global3.c.x, 1u), global2.x)).x << (~func_1(Struct_4(-1252f, vec2<f32>(var_0.d, global3.a.d), false), true).e % 32u), global3.c.x));
}

