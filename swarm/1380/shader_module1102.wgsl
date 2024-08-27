struct Struct_1 {
    a: vec2<u32>,
    b: i32,
    c: vec4<f32>,
    d: bool,
}

struct Struct_2 {
    a: vec2<f32>,
    b: u32,
    c: vec2<bool>,
    d: Struct_1,
    e: vec4<u32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec3<u32>,
    d: vec3<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 22> = array<vec2<u32>, 22>(vec2<u32>(0u, 0u), vec2<u32>(63787u, 67415u), vec2<u32>(1u, 69696u), vec2<u32>(29828u, 4294967295u), vec2<u32>(27180u, 1u), vec2<u32>(88844u, 40735u), vec2<u32>(48039u, 21214u), vec2<u32>(43810u, 4294967295u), vec2<u32>(42845u, 55192u), vec2<u32>(0u, 35956u), vec2<u32>(22115u, 0u), vec2<u32>(1u, 24228u), vec2<u32>(0u, 4453u), vec2<u32>(40395u, 63825u), vec2<u32>(1u, 4294967295u), vec2<u32>(54058u, 1u), vec2<u32>(64266u, 0u), vec2<u32>(34203u, 56537u), vec2<u32>(35103u, 4294967295u), vec2<u32>(4294967295u, 39501u), vec2<u32>(36008u, 4294967295u), vec2<u32>(0u, 27387u));

var<private> global1: array<Struct_3, 18>;

var<private> global2: array<vec2<u32>, 2> = array<vec2<u32>, 2>(vec2<u32>(70614u, 25386u), vec2<u32>(1u, 23096u));

var<private> global3: array<Struct_3, 32>;

var<private> global4: bool = true;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3() -> f32 {
    global4 = false != any(vec2<bool>(true, any(vec2<bool>(true, true))));
    global3 = array<Struct_3, 32>();
    let var_0 = vec2<bool>(any(vec3<bool>(true, true, true)), false);
    global1 = array<Struct_3, 18>();
    let var_1 = 17450u;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(314f, 205f)) + -348f), -140f))));
}

fn func_2(arg_0: u32, arg_1: Struct_2, arg_2: Struct_1) -> u32 {
    var var_0 = countOneBits(u_input.b);
    let var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.c.x) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) - _wgslsmith_f_op_f32(round(345f)))))));
    let var_2 = -(vec4<i32>(-1i, 893i, -2147483647i, _wgslsmith_mod_i32(max(u_input.b.x, arg_1.d.b), select(1i, arg_1.d.b, arg_1.c.x))) ^ u_input.b);
    global2 = array<vec2<u32>, 2>();
    global4 = arg_1.d.d;
    return max(52166u, ~(8841u >> (~arg_1.d.a.x % 32u)));
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_3, arg_2: vec4<u32>, arg_3: vec2<u32>) -> Struct_2 {
    var var_0 = Struct_1(max(u_input.a, vec2<u32>(~1u, min(~36214u, ~15308u))), -3491i, _wgslsmith_div_vec4_f32(arg_1.a.c, arg_1.a.c), any(vec3<bool>(any(!vec2<bool>(arg_1.a.d, arg_1.a.d)), arg_1.a.d, any(vec3<bool>(true, arg_1.a.d, arg_1.a.d)) || any(vec3<bool>(arg_1.a.d, arg_1.a.d, true)))));
    return Struct_2(_wgslsmith_div_vec2_f32(vec2<f32>(297f, _wgslsmith_f_op_f32(exp2(arg_1.a.c.x))), var_0.c.zw), (_wgslsmith_mod_u32(arg_3.x & arg_2.x, 0u) | ~(~832u)) >> (_wgslsmith_add_u32(~arg_2.x | u_input.a.x, ~(~12897u)) % 32u), !vec2<bool>(true, arg_1.a.d), arg_1.a, ~(arg_2 << (select(arg_2, ~vec4<u32>(4294967295u, 37970u, arg_1.a.a.x, var_0.a.x), select(vec4<bool>(var_0.d, arg_1.a.d, var_0.d, var_0.d), vec4<bool>(arg_1.a.d, true, false, true), vec4<bool>(var_0.d, arg_1.a.d, true, arg_1.a.d))) % vec4<u32>(32u))));
}

fn func_1(arg_0: vec3<f32>, arg_1: f32, arg_2: bool) -> Struct_3 {
    let var_0 = ~(~u_input.a.x);
    var var_1 = arg_0;
    var var_2 = func_4(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(538f - var_1.x), _wgslsmith_div_f32(1350f, arg_1)) + vec2<f32>(_wgslsmith_f_op_f32(arg_0.x - arg_1), _wgslsmith_f_op_f32(-180f + arg_0.x))))), global1[_wgslsmith_index_u32(abs(_wgslsmith_mult_u32(~13825u, _wgslsmith_clamp_u32(max(4294967295u, u_input.a.x), _wgslsmith_add_u32(33092u, u_input.a.x), 14038u))), 18u)], vec4<u32>(abs(1u) >> (~var_0 % 32u), func_2(_wgslsmith_clamp_u32(1u, 4294967295u, 89304u), Struct_2(arg_0.xx, 37713u, vec2<bool>(arg_2, arg_2), Struct_1(global2[_wgslsmith_index_u32(u_input.a.x, 2u)], u_input.b.x, vec4<f32>(310f, 1292f, -927f, 637f), false), vec4<u32>(1u, u_input.a.x, 1u, var_0)), Struct_1(vec2<u32>(1u, var_0), u_input.b.x, vec4<f32>(arg_0.x, arg_0.x, arg_0.x, arg_1), arg_2)), ~var_0, max(u_input.a.x | u_input.a.x, _wgslsmith_mult_u32(1u, 1u))) & reverseBits(select(~vec4<u32>(4294967295u, 0u, 1u, 4294967295u), ~vec4<u32>(var_0, 6683u, u_input.a.x, 0u), select(vec4<bool>(false, arg_2, true, arg_2), vec4<bool>(arg_2, false, arg_2, true), vec4<bool>(arg_2, false, true, arg_2)))), vec2<u32>(~(~abs(u_input.a.x)), u_input.a.x));
    let var_3 = ~(~var_0);
    global4 = true == all(!(!select(vec3<bool>(arg_2, false, true), vec3<bool>(var_2.d.d, false, false), vec3<bool>(var_2.c.x, var_2.c.x, var_2.d.d))));
    return global1[_wgslsmith_index_u32(u_input.a.x, 18u)];
}

fn func_5(arg_0: Struct_3, arg_1: Struct_3, arg_2: u32) -> i32 {
    var var_0 = abs(-((reverseBits(vec3<i32>(arg_1.a.b, 2147483647i, arg_0.a.b)) & vec3<i32>(u_input.b.x, -1i, -2147483647i)) << (vec3<u32>(_wgslsmith_mult_u32(567u, 41658u), 27604u, reverseBits(58129u)) % vec3<u32>(32u))));
    let var_1 = u_input.b.zzy;
    global2 = array<vec2<u32>, 2>();
    var var_2 = vec3<bool>(arg_0.a.c.x > _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.a.c.x), arg_1.a.c.x) * _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(arg_1.a.c.x, arg_1.a.c.x), -1000f))), true, _wgslsmith_mod_u32(u_input.a.x, 14654u) <= ~arg_2);
    var var_3 = Struct_2(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_1.a.c.zx) - vec2<f32>(-2686f, arg_1.a.c.x)), arg_1.a.c.zw), arg_0.a.c.zz)), _wgslsmith_add_u32(4118u, firstTrailingBit(40956u)) & (4294967295u & ~abs(u_input.a.x)), select(func_4(vec2<f32>(func_4(arg_1.a.c.yw, global1[_wgslsmith_index_u32(arg_2, 18u)], vec4<u32>(arg_2, arg_1.a.a.x, 4294967295u, 39119u), arg_0.a.a).d.c.x, arg_0.a.c.x), global3[_wgslsmith_index_u32(~(u_input.a.x << (arg_0.a.a.x % 32u)), 32u)], _wgslsmith_sub_vec4_u32(vec4<u32>(arg_2, arg_2, 0u, arg_0.a.a.x), vec4<u32>(u_input.a.x, 1u, arg_2, arg_2)), _wgslsmith_mult_vec2_u32(~vec2<u32>(arg_0.a.a.x, 19040u), ~global0[_wgslsmith_index_u32(0u, 22u)])).c, func_4(_wgslsmith_div_vec2_f32(arg_1.a.c.xw, _wgslsmith_div_vec2_f32(arg_1.a.c.yz, arg_1.a.c.xz)), Struct_3(Struct_1(u_input.a, arg_1.a.b, vec4<f32>(-191f, arg_0.a.c.x, arg_0.a.c.x, arg_1.a.c.x), arg_0.a.d)), ~vec4<u32>(arg_1.a.a.x, arg_1.a.a.x, 1299u, 0u), global0[_wgslsmith_index_u32(func_4(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.a.c.x, -566f) + arg_0.a.c.yz), Struct_3(arg_0.a), min(vec4<u32>(0u, u_input.a.x, 69512u, 40231u), vec4<u32>(4294967295u, 4294967295u, arg_2, arg_0.a.a.x)), vec2<u32>(u_input.a.x, 5900u) ^ vec2<u32>(arg_1.a.a.x, 4294967295u)).e.x, 22u)]).c, var_2.yz), arg_1.a, _wgslsmith_add_vec4_u32(vec4<u32>(5136u, countOneBits(944u), u_input.a.x, arg_0.a.a.x), firstLeadingBit(abs(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, 11262u, arg_2, 5900u), vec4<u32>(43824u, arg_0.a.a.x, 0u, 1u))))));
    return _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(func_4(var_3.d.c.zy, Struct_3(Struct_1(vec2<u32>(var_3.e.x, 9439u), var_3.d.b, arg_0.a.c, true)), var_3.e, arg_0.a.a).d.b, -1i, 1i << (arg_0.a.a.x % 32u)), -vec3<i32>(2147483647i, 31755i, -11875i)) ^ _wgslsmith_div_vec3_i32(~(-var_1), _wgslsmith_mult_vec3_i32(vec3<i32>(var_1.x, 22154i, arg_0.a.b), vec3<i32>(-285i, -41350i, -2147483647i)) | var_1), max(min(-u_input.b.wxy, vec3<i32>(var_3.d.b, u_input.b.x, var_0.x) << (vec3<u32>(4294967295u, u_input.a.x, 1u) % vec3<u32>(32u))) ^ (vec3<i32>(0i, var_1.x, -2147483647i) ^ vec3<i32>(48895i, -9636i, 43977i)), _wgslsmith_sub_vec3_i32(_wgslsmith_sub_vec3_i32(u_input.b.zyy, vec3<i32>(1661i, u_input.b.x, -1i)) ^ vec3<i32>(2147483647i, arg_0.a.b, var_1.x), var_1)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(func_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1208f, _wgslsmith_f_op_f32(sign(127f)), _wgslsmith_f_op_f32(176f + -1000f))), 2054f, true), Struct_3(Struct_1(_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, u_input.a.x), _wgslsmith_div_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), global0[_wgslsmith_index_u32(1u, 22u)])), max(~(-1i), u_input.b.x), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_f_op_vec4_f32(vec4<f32>(137f, -1537f, 1563f, -860f) + vec4<f32>(658f, 1146f, -1080f, -107f)))), true)), 1u);
    var_0 = max(-_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(1i, u_input.b.x), vec2<i32>(-1i, u_input.b.x)), vec2<i32>(-2147483647i, -u_input.b.x)), (-_wgslsmith_dot_vec4_i32(vec4<i32>(-39053i, u_input.b.x, -38570i, 0i), u_input.b) >> (1u % 32u)) ^ _wgslsmith_mod_i32(abs(1i), u_input.b.x));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-func_4(vec2<f32>(-472f, -318f), global1[_wgslsmith_index_u32(u_input.a.x, 18u)], vec4<u32>(u_input.a.x, u_input.a.x, 48694u, u_input.a.x), u_input.a).a.x))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1f + func_4(vec2<f32>(-1092f, 1904f), Struct_3(Struct_1(u_input.a, u_input.b.x, vec4<f32>(870f, 563f, 814f, -2192f), true)), vec4<u32>(u_input.a.x, 4294967295u, 59746u, u_input.a.x), global0[_wgslsmith_index_u32(u_input.a.x, 22u)]).d.c.x))))));
    let x = u_input.a;
    s_output = StorageBuffer(func_2(firstLeadingBit(firstLeadingBit(u_input.a.x)), func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(390f, -2312f), vec2<f32>(742f, 1000f))), global1[_wgslsmith_index_u32(9106u, 18u)], ~abs(vec4<u32>(4294967295u, 4294967295u, 4294967295u, u_input.a.x)), ~u_input.a), func_1(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1284f), 1240f, -165f), _wgslsmith_f_op_f32(-375f + _wgslsmith_f_op_f32(-1000f + 571f)), (u_input.b.x == u_input.b.x) | func_4(vec2<f32>(-3057f, -387f), Struct_3(Struct_1(u_input.a, -19765i, vec4<f32>(-212f, 393f, 1740f, 196f), false)), vec4<u32>(19638u, 24726u, 1u, 16137u), u_input.a).c.x).a), min(func_1(vec3<f32>(645f, 284f, 850f), _wgslsmith_f_op_f32(floor(550f)), false).a.b, 19418i >> (min(0u, 4294967295u) % 32u)) ^ _wgslsmith_mod_i32(~(-3516i), -27723i), vec3<u32>(max(1u, u_input.a.x), u_input.a.x, 4294967295u), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(357f + 1000f) + func_4(vec2<f32>(-883f, 1547f), global3[_wgslsmith_index_u32(u_input.a.x, 32u)], vec4<u32>(3566u, u_input.a.x, u_input.a.x, 70998u), global0[_wgslsmith_index_u32(u_input.a.x, 22u)]).a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-954f - -1000f) + _wgslsmith_f_op_f32(f32(-1f) * -1270f)), _wgslsmith_f_op_f32(min(-178f, 453f))) - vec3<f32>(1801f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(1276f)))), -396f)), 312f);
}

