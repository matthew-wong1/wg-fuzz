struct Struct_1 {
    a: bool,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: f32,
    d: vec2<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
}

struct Struct_4 {
    a: u32,
    b: u32,
    c: u32,
    d: u32,
    e: i32,
}

struct Struct_5 {
    a: Struct_1,
    b: vec3<i32>,
    c: i32,
    d: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec4<i32>,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<f32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 31>;

var<private> global1: array<i32, 27> = array<i32, 27>(14169i, i32(-2147483648), 56716i, 2147483647i, -1i, 31742i, 0i, -20548i, -29084i, 25453i, i32(-2147483648), -1i, i32(-2147483648), 44830i, 24402i, 10606i, 1i, 1i, 21863i, -66480i, 6639i, -1i, 5693i, 0i, 15547i, -11155i, -26393i);

var<private> global2: Struct_5 = Struct_5(Struct_1(false, 2147483647i), vec3<i32>(-13827i, 37547i, 1i), -1i, 4294967295u);

var<private> global3: vec3<u32>;

var<private> global4: array<vec3<f32>, 10>;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: f32) -> u32 {
    let var_0 = _wgslsmith_mult_vec2_i32(u_input.c.wy, vec2<i32>(global2.c & 1i, global2.b.x));
    return ~_wgslsmith_add_u32(4294967295u, firstLeadingBit(~32806u));
}

fn func_2() -> Struct_4 {
    let var_0 = Struct_4(countOneBits(u_input.b.x ^ (47853u ^ ~global3.x)), 80552u | ~u_input.d, u_input.e.x, u_input.d, global2.b.x);
    let var_1 = vec2<u32>(func_3(_wgslsmith_f_op_f32(min(-102f, -152f))), var_0.d);
    global0 = array<Struct_3, 31>();
    var var_2 = Struct_5(Struct_1(true, global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d, 4294967295u), vec2<u32>(59459u, var_0.a)), 27u)] << (~(~global2.d) % 32u)), _wgslsmith_mod_vec3_i32(u_input.c.yww ^ _wgslsmith_add_vec3_i32(vec3<i32>(23795i, global2.c, -2147483647i), global2.b), ~(vec3<i32>(u_input.c.x, 7438i, var_0.e) ^ -vec3<i32>(32725i, var_0.e, 2147483647i))), -var_0.e, min(var_1.x, var_1.x));
    var var_3 = _wgslsmith_mod_i32(var_2.b.x, _wgslsmith_dot_vec3_i32(countOneBits(~var_2.b), _wgslsmith_mod_vec3_i32(~global2.b, -var_2.b) ^ -vec3<i32>(2147483647i, -1i, var_2.a.b)));
    return Struct_4(0u, var_1.x, ~_wgslsmith_add_u32(~func_3(1093f), ~var_2.d), min(~firstLeadingBit(~1u), ~32603u), global1[_wgslsmith_index_u32(select(global3.x, _wgslsmith_sub_u32(var_0.b, firstLeadingBit(countOneBits(4294967295u))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(959f)))) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1089f - -140f))), 27u)]);
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_4, arg_2: i32, arg_3: Struct_5) -> Struct_5 {
    let var_0 = -1i;
    var var_1 = u_input.d;
    global2 = arg_3;
    let var_2 = ~1u;
    global3 = u_input.e | _wgslsmith_clamp_vec3_u32(u_input.a.zzw, _wgslsmith_div_vec3_u32(~vec3<u32>(global2.d, 0u, global2.d) >> (vec3<u32>(global3.x, global3.x, 48304u) % vec3<u32>(32u)), _wgslsmith_clamp_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(var_2, global2.d, global2.d), vec3<u32>(global2.d, arg_3.d, global3.x), u_input.e), ~u_input.e, u_input.e)), countOneBits(firstTrailingBit(firstTrailingBit(vec3<u32>(4294967295u, 4294967295u, u_input.d)))));
    return Struct_5(arg_3.a, vec3<i32>(27223i, -_wgslsmith_dot_vec3_i32(vec3<i32>(1i, 16110i, -2147483647i), -vec3<i32>(global1[_wgslsmith_index_u32(55786u, 27u)], arg_2, -23397i)), _wgslsmith_div_i32(i32(-1i) * -global1[_wgslsmith_index_u32(global3.x, 27u)], arg_1.e)), arg_1.e, global3.x);
}

fn func_5(arg_0: f32, arg_1: i32, arg_2: u32, arg_3: Struct_5) -> Struct_5 {
    global0 = array<Struct_3, 31>();
    var var_0 = vec4<i32>(_wgslsmith_sub_i32(0i, _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(u_input.c ^ u_input.c, select(vec4<i32>(u_input.c.x, 1i, 2147483647i, global2.a.b), vec4<i32>(9338i, 2147483647i, -39650i, 40041i), false)), _wgslsmith_mod_i32(-1i, -1i))), firstLeadingBit(_wgslsmith_dot_vec2_i32(u_input.c.yz, _wgslsmith_div_vec2_i32(-global2.b.xy, reverseBits(global2.b.xy)))), _wgslsmith_dot_vec4_i32(~(-vec4<i32>(-2147483647i, global2.c, -2147483647i, 19579i)), vec4<i32>(_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-37415i, arg_1, global2.a.b), vec3<i32>(-1i, 38771i, arg_3.b.x)), -10399i), arg_3.a.b, reverseBits(20587i), abs(0i))), 1i << (firstTrailingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_2, global3.x, 16872u, 4294967295u), min(u_input.a, u_input.a))) % 32u));
    global0 = array<Struct_3, 31>();
    let var_1 = Struct_5(Struct_1(_wgslsmith_div_i32(~u_input.c.x, _wgslsmith_dot_vec3_i32(vec3<i32>(-23384i, global1[_wgslsmith_index_u32(40358u, 27u)], var_0.x), vec3<i32>(2147483647i, global2.a.b, -2147483647i))) <= -(~arg_1), -33563i), firstTrailingBit(var_0.zyy), abs(_wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(u_input.c, vec4<i32>(global1[_wgslsmith_index_u32(20583u, 27u)], u_input.c.x, var_0.x, global2.b.x)), -(~var_0.x), i32(-1i) * -1742i)), countOneBits(min(~1u, ~u_input.b.x)));
    let var_2 = arg_3.a;
    return func_4(vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -561f), _wgslsmith_f_op_f32(-arg_0), func_4(vec4<f32>(1663f, arg_0, -1195f, arg_0), Struct_4(arg_2, 0u, 1u, 25378u, var_2.b), -13504i, Struct_5(Struct_1(var_2.a, 14840i), arg_3.b, var_1.c, 4294967295u)).a.a)))), _wgslsmith_f_op_f32(abs(-1581f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1582f, _wgslsmith_f_op_f32(min(arg_0, arg_0)))) + -854f), _wgslsmith_f_op_f32(floor(206f))), func_2(), 1i, func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(125f, arg_0, arg_0, 310f) - vec4<f32>(arg_0, -1677f, arg_0, arg_0)) + vec4<f32>(852f, 1000f, 1005f, arg_0))), func_2(), 1i, arg_3));
}

fn func_1(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: f32) -> i32 {
    var var_0 = vec2<u32>(global2.d, _wgslsmith_dot_vec4_u32(~vec4<u32>(3808u, global2.d, global3.x, u_input.d) | firstLeadingBit(u_input.a), reverseBits(countOneBits(vec4<u32>(u_input.d, u_input.d, 1u, global2.d)) ^ vec4<u32>(u_input.b.x, 86060u, u_input.e.x, 56918u))));
    global2 = func_5(1310f, -2147483647i, 81281u, func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_0 - arg_0))), func_2(), firstLeadingBit(1i), Struct_5(Struct_1(var_0.x != var_0.x, -43779i), ~(~u_input.c.xzx), global2.a.b, 49208u)));
    var var_1 = !any(vec2<bool>(global2.a.a == true, false));
    var var_2 = _wgslsmith_f_op_vec2_f32(-arg_0.zx);
    var var_3 = ~(-u_input.c.x);
    return ~u_input.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1258f;
    global1 = array<i32, 27>();
    var var_1 = -17693i;
    let var_2 = Struct_1(min(min(17336i, 0i), -1i) >= global1[_wgslsmith_index_u32(25908u, 27u)], -u_input.c.x);
    var var_3 = var_2.a;
    let var_4 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-global4[_wgslsmith_index_u32(37316u, 10u)]), vec3<f32>(-375f, var_0, 1739f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global4[_wgslsmith_index_u32(global2.d, 10u)]))))));
    var_1 = func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(1000f, 913f)), -628f, var_4.x, _wgslsmith_f_op_f32(max(497f, var_4.x))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, -198f, -1000f, 1141f) + vec4<f32>(var_4.x, -497f, -439f, 125f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_4.x, var_4.x, 1768f, -1000f))))), Struct_1(all(!select(vec4<bool>(true, var_2.a, true, false), vec4<bool>(global2.a.a, false, global2.a.a, false), global2.a.a)), _wgslsmith_dot_vec4_i32(vec4<i32>(global2.c, _wgslsmith_dot_vec3_i32(vec3<i32>(-53540i, 54486i, global1[_wgslsmith_index_u32(global2.d, 27u)]), global2.b), _wgslsmith_dot_vec3_i32(vec3<i32>(32761i, u_input.c.x, global1[_wgslsmith_index_u32(u_input.e.x, 27u)]), u_input.c.ywx), -u_input.c.x), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.c.x, var_2.b, 0i, -1i), vec4<i32>(global1[_wgslsmith_index_u32(1u, 27u)], 30856i, -18369i, 1i)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-504f, var_0))));
    var_3 = !(all(select(vec3<bool>(global2.a.a, false, true), vec3<bool>(true, false, var_2.a), false)) != var_2.a);
    var var_5 = Struct_1(var_2.a, ~reverseBits(func_5(var_4.x, global1[_wgslsmith_index_u32(u_input.b.x, 27u)], global2.d, Struct_5(global2.a, vec3<i32>(u_input.c.x, 2147483647i, u_input.c.x), u_input.c.x, 4294967295u)).a.b) | u_input.c.x);
    let x = u_input.a;
    s_output = StorageBuffer(abs(_wgslsmith_clamp_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(global2.d, 27u)], global1[_wgslsmith_index_u32(u_input.e.x, 27u)], var_2.b, var_5.b) & u_input.c, _wgslsmith_clamp_vec4_i32(vec4<i32>(global2.c, 1i, 1i, global1[_wgslsmith_index_u32(1u, 27u)]), vec4<i32>(u_input.c.x, var_5.b, u_input.c.x, 32436i), u_input.c)), u_input.c, vec4<i32>(-1i) * -u_input.c)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_4.x, var_4.x), var_4.xx, !(!vec2<bool>(var_5.a, global2.a.a))))), ~min(_wgslsmith_add_vec4_u32(~vec4<u32>(36649u, global2.d, 108247u, 0u), vec4<u32>(global3.x, 10404u, global3.x, 46125u)), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.e.x, u_input.a.x, 1u, u_input.a.x), vec4<u32>(1u, 0u, global2.d, u_input.a.x))));
}

