struct Struct_1 {
    a: i32,
    b: bool,
    c: i32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec2<bool>,
    c: Struct_1,
    d: Struct_1,
    e: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<f32>,
    c: i32,
    d: Struct_3,
}

struct Struct_5 {
    a: Struct_3,
    b: vec4<f32>,
    c: vec2<bool>,
    d: vec2<i32>,
    e: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: vec4<i32>,
    d: vec4<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(2147483647i, false, -43482i);

var<private> global1: array<vec2<i32>, 19> = array<vec2<i32>, 19>(vec2<i32>(0i, -30939i), vec2<i32>(-31198i, 1i), vec2<i32>(-15806i, -14544i), vec2<i32>(i32(-2147483648), -7377i), vec2<i32>(i32(-2147483648), 1i), vec2<i32>(59737i, 1i), vec2<i32>(-33647i, i32(-2147483648)), vec2<i32>(2147483647i, -53734i), vec2<i32>(19021i, 11365i), vec2<i32>(44703i, 2147483647i), vec2<i32>(34475i, -6593i), vec2<i32>(-39437i, -24037i), vec2<i32>(-1i, 12277i), vec2<i32>(-1i, -44796i), vec2<i32>(0i, -1i), vec2<i32>(53419i, 1i), vec2<i32>(-13209i, -24716i), vec2<i32>(1i, i32(-2147483648)), vec2<i32>(0i, 17173i));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec2<bool>, arg_1: vec3<bool>) -> i32 {
    var var_0 = Struct_5(Struct_3(Struct_1(_wgslsmith_add_i32(_wgslsmith_mult_i32(global0.c, global0.a), global0.a), any(vec4<bool>(arg_0.x, arg_0.x, false, false)) & !global0.b, _wgslsmith_mod_i32(global0.c, global0.a) | firstTrailingBit(0i)), Struct_1(1i, select(1224i, global0.c, false) > 1i, abs(global0.c))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(567f - -1869f), _wgslsmith_f_op_f32(329f * _wgslsmith_f_op_f32(f32(-1f) * -664f)), _wgslsmith_f_op_f32(step(-1449f, _wgslsmith_f_op_f32(-212f - -185f))), 935f))), !arg_0, global1[_wgslsmith_index_u32(u_input.a.x, 19u)], ~u_input.a.x);
    global1 = array<vec2<i32>, 19>();
    let var_1 = ~var_0.a.b.a;
    var var_2 = _wgslsmith_f_op_f32(max(var_0.b.x, var_0.b.x));
    let var_3 = !(!select(!vec4<bool>(var_0.c.x, arg_0.x, arg_0.x, global0.b), select(vec4<bool>(global0.b, arg_0.x, true, true), select(vec4<bool>(arg_1.x, global0.b, global0.b, global0.b), vec4<bool>(true, true, true, true), arg_1.x), !global0.b), !select(vec4<bool>(false, true, false, false), vec4<bool>(arg_0.x, arg_1.x, false, global0.b), vec4<bool>(arg_0.x, false, var_0.a.a.b, arg_0.x))));
    return abs(-629i);
}

fn func_2(arg_0: u32, arg_1: f32, arg_2: Struct_5) -> i32 {
    var var_0 = Struct_1(global0.c, all(!(!select(arg_2.c, vec2<bool>(arg_2.a.b.b, global0.b), vec2<bool>(global0.b, arg_2.a.b.b)))), arg_2.a.b.a);
    let var_1 = true;
    var var_2 = -1271f;
    var var_3 = Struct_2(abs(vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.c, -235i, -1i), -vec3<i32>(16783i, var_0.a, global0.c)), ~_wgslsmith_sub_i32(global0.c, global0.c))), vec2<bool>(true, false), Struct_1(_wgslsmith_sub_i32(-func_3(vec2<bool>(arg_2.c.x, false), vec3<bool>(true, global0.b, global0.b)), 0i), true, select(10692i, -var_0.a, all(select(arg_2.c, arg_2.c, arg_2.c.x)))), Struct_1(select(0i, _wgslsmith_mod_i32(~arg_2.a.b.c, global0.c), all(!vec4<bool>(arg_2.c.x, arg_2.c.x, true, true))), 51792i < -min(arg_2.a.a.a, arg_2.a.a.a), abs(-func_3(arg_2.c, vec3<bool>(var_1, global0.b, false)))), -912f);
    let var_4 = ~arg_0;
    return -2147483647i;
}

fn func_1(arg_0: u32) -> Struct_3 {
    global0 = Struct_1((69116i & global0.c) & 1i, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(464f + 1015f) + -872f))) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1017f), _wgslsmith_f_op_f32(min(605f, -1152f)), !global0.b))), 0i);
    var var_0 = min(_wgslsmith_add_vec3_i32(-vec3<i32>(func_2(u_input.a.x, -1695f, Struct_5(Struct_3(Struct_1(global0.c, false, 2147483647i), Struct_1(2147483647i, global0.b, global0.a)), vec4<f32>(957f, -1702f, -1051f, -1861f), vec2<bool>(true, global0.b), vec2<i32>(-2147483647i, -2147483647i), 4294967295u)), 18582i | global0.c, -global0.a), vec3<i32>(-1i, _wgslsmith_mod_i32(min(global0.a, -2147483647i), 1i), ~(-1i))), select(reverseBits(_wgslsmith_clamp_vec3_i32(vec3<i32>(global0.a, global0.a, 0i), vec3<i32>(global0.c, 252i, -27057i), vec3<i32>(global0.a, -32371i, global0.a) ^ vec3<i32>(global0.c, -1i, global0.a))), vec3<i32>(global0.c, 30064i, _wgslsmith_mod_i32(~(-52877i), global0.c)), any(vec4<bool>(true, !global0.b, global0.b, global0.a == global0.c))));
    var_0 = select(abs(min(vec3<i32>(func_3(vec2<bool>(true, global0.b), vec3<bool>(true, true, true)), i32(-1i) * -1i, i32(-1i) * -25570i), -vec3<i32>(-1i, -2147483647i, global0.c))), ~vec3<i32>(global0.a ^ abs(global0.a), -min(var_0.x, -22542i), ~max(2147483647i, -2147483647i)), global0.b);
    var_0 = -vec3<i32>(_wgslsmith_mult_i32(-(~var_0.x), ~var_0.x), var_0.x, 0i);
    global1 = array<vec2<i32>, 19>();
    return Struct_3(Struct_1(global0.a, (any(vec4<bool>(global0.b, global0.b, true, false)) & true) | !global0.b, var_0.x), Struct_1(23405i, !(countOneBits(1u) > u_input.a.x), _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(firstLeadingBit(vec2<i32>(var_0.x, var_0.x)), countOneBits(global1[_wgslsmith_index_u32(4294967295u, 19u)])), vec2<i32>(abs(2147483647i), 1i))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(1u);
    let var_1 = Struct_4(func_1(_wgslsmith_add_u32(4294967295u, _wgslsmith_mod_u32(0u, 1u) >> (~u_input.a.x % 32u))).b, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -704f), _wgslsmith_div_f32(-1776f, -106f), 455f, _wgslsmith_f_op_f32(1246f * -353f))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-286f, 384f, -1547f, -1590f), vec4<f32>(411f, -304f, -542f, -163f)))))))), _wgslsmith_clamp_i32(_wgslsmith_clamp_i32(-2147483647i, ~(-6257i), 23393i), _wgslsmith_sub_i32(-_wgslsmith_div_i32(var_0.a.a, -41388i), _wgslsmith_sub_i32(min(global0.c, var_0.b.c), _wgslsmith_sub_i32(var_0.b.a, var_0.b.c))), 0i), Struct_3(Struct_1(global0.c, var_0.a.a == _wgslsmith_mult_i32(2147483647i, global0.c), ~2147483647i), Struct_1(-(~(-1i)), global0.b, global0.a)));
    var_0 = var_1.d;
    var_0 = Struct_3(var_1.a, var_0.b);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(0u << (1u % 32u), 20294u) & u_input.a, _wgslsmith_f_op_f32(var_1.b.x + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -942f)))), ~(~vec4<i32>(var_1.c, var_1.d.a.a, _wgslsmith_dot_vec2_i32(global1[_wgslsmith_index_u32(u_input.a.x, 19u)], global1[_wgslsmith_index_u32(46709u, 19u)]), ~(-25719i))), _wgslsmith_mult_vec4_u32(vec4<u32>(57594u, 1u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 1u, 76501u, u_input.a.x) >> (vec4<u32>(0u, u_input.a.x, 10618u, 7832u) % vec4<u32>(32u)), vec4<u32>(23981u, 43236u, u_input.a.x, 1u)), 17844u), firstLeadingBit(vec4<u32>(u_input.a.x, 4294967295u, 0u, 0u) & _wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, u_input.a.x, 4294967295u, u_input.a.x), vec4<u32>(15343u, 0u, u_input.a.x, u_input.a.x), vec4<u32>(36020u, 1u, 0u, u_input.a.x)))), var_1.b.x);
}

