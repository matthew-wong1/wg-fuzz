struct Struct_1 {
    a: u32,
    b: vec2<f32>,
    c: vec2<bool>,
    d: vec3<bool>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec2<u32>,
    d: vec3<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: f32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: array<vec4<bool>, 1>;

var<private> global2: bool = false;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> vec2<bool> {
    global1 = array<vec4<bool>, 1>();
    let var_0 = _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, u_input.b.x, 1u) & ~max(~vec3<u32>(u_input.a, u_input.b.x, 108597u), ~vec3<u32>(34604u, 16801u, u_input.c.x)), _wgslsmith_add_vec3_u32(_wgslsmith_sub_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, 0u, 4294967295u), vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x)), ~vec3<u32>(0u, 4294967295u, u_input.b.x)) << (vec3<u32>(~18377u, u_input.c.x & 29201u, ~89109u) % vec3<u32>(32u)), select(vec3<u32>(0u, 7117u, 79606u), ~vec3<u32>(u_input.b.x, u_input.a, 40452u), vec3<bool>(true, true, false)) << (vec3<u32>(reverseBits(6124u), u_input.c.x, firstLeadingBit(u_input.b.x)) % vec3<u32>(32u))));
    let var_1 = 1000f;
    var var_2 = Struct_1(firstLeadingBit(u_input.b.x), vec2<f32>(851f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(var_1))))), vec2<bool>(true, false), vec3<bool>(all(select(global1[_wgslsmith_index_u32(select(55413u, var_0.x, true), 1u)], select(global1[_wgslsmith_index_u32(u_input.b.x, 1u)], vec4<bool>(false, true, false, false), global1[_wgslsmith_index_u32(var_0.x, 1u)]), vec4<bool>(true, true, true, true))), firstTrailingBit(firstLeadingBit(60594u)) == _wgslsmith_mult_u32(var_0.x, 1u), true));
    global2 = all(!(!select(vec3<bool>(true, var_2.c.x, false), vec3<bool>(false, false, true), var_2.c.x)));
    return var_2.d.yx;
}

fn func_2(arg_0: vec3<f32>) -> bool {
    global0 = true;
    var var_0 = any(!(!select(vec2<bool>(true, true), func_3(), true)));
    let var_1 = Struct_1(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_div_u32(~u_input.b.x, ~0u), abs(u_input.b.x), 1u, (u_input.c.x | 0u) << (max(31393u, 0u) % 32u)), ~vec4<u32>(94462u, u_input.c.x, min(41276u, u_input.c.x), _wgslsmith_add_u32(u_input.c.x, u_input.b.x))), arg_0.xy, !select(select(vec2<bool>(true, true), func_3(), vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true))), select(vec2<bool>(true, false), vec2<bool>(false, false), true)), select(select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(false, true, true)), !select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), false), true), vec3<bool>(true, true, false), func_3().x));
    global2 = false;
    var var_2 = !any(var_1.d);
    return all(select(vec3<bool>(any(var_1.d), u_input.a == u_input.b.x, true), !(!var_1.d), select(select(vec3<bool>(false, false, false), var_1.d, var_1.c.x), var_1.d, !var_1.d))) || true;
}

fn func_1(arg_0: u32) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -323f);
    global0 = func_2(vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1014f - -597f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(807f, 467f))), true)), _wgslsmith_f_op_f32(ceil(-1120f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1194f, -1168f))))));
    var var_1 = ~(-_wgslsmith_dot_vec3_i32((vec3<i32>(u_input.d.x, 31275i, u_input.e) << (vec3<u32>(39318u, u_input.c.x, 4294967295u) % vec3<u32>(32u))) >> ((vec3<u32>(u_input.c.x, arg_0, u_input.b.x) | vec3<u32>(162786u, 39332u, arg_0)) % vec3<u32>(32u)), -vec3<i32>(2147483647i, 54554i, u_input.e)));
    var var_2 = Struct_2(u_input.a, Struct_1(_wgslsmith_add_u32(~firstTrailingBit(1u), ~(~u_input.c.x)), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-775f, -540f), vec2<f32>(-190f, 178f))) * _wgslsmith_div_vec2_f32(vec2<f32>(1914f, 631f), vec2<f32>(-1923f, -837f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1000f, 180f))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-528f, 389f) - vec2<f32>(-750f, 291f))))), !vec2<bool>(true, all(vec2<bool>(false, true))), !vec3<bool>(all(vec2<bool>(false, true)), true, func_2(vec3<f32>(1000f, -1050f, -1233f)))));
    let var_3 = 2147483647i;
    return Struct_3(Struct_2(arg_0, var_2.b), Struct_1(1u, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1519f, 851f)))), var_2.b.b), select(var_2.b.c, vec2<bool>(!var_2.b.d.x, false), any(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(var_2.b.a, u_input.a), 1u)])), !vec3<bool>(true, select(false, false, var_2.b.c.x), any(global1[_wgslsmith_index_u32(4294967295u, 1u)]))), !var_2.b.c);
}

fn func_4(arg_0: Struct_3, arg_1: vec4<bool>) -> Struct_2 {
    var var_0 = !(!(reverseBits(~u_input.d.x) < select(u_input.e, min(u_input.e, u_input.e), false)));
    global2 = any(!vec4<bool>(!arg_1.x & true, arg_0.b.d.x, !(!arg_1.x), true));
    global0 = !(_wgslsmith_f_op_f32(-297f - 1045f) <= _wgslsmith_f_op_f32(-arg_0.b.b.x));
    return arg_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(reverseBits(vec4<u32>(1u, u_input.b.x ^ u_input.b.x, countOneBits(u_input.c.x), countOneBits(u_input.b.x))) << (~vec4<u32>(0u, _wgslsmith_clamp_u32(u_input.b.x, u_input.a, u_input.a), abs(91473u), 1u) % vec4<u32>(32u)));
    let var_1 = Struct_3(func_4(func_1(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(var_0.xx, u_input.c), vec2<u32>(1u, 17252u))), global1[_wgslsmith_index_u32(1u, 1u)]), func_1(u_input.c.x).b, vec2<bool>(false, true));
    var var_2 = func_4(Struct_3(Struct_2(u_input.a & firstTrailingBit(1u), func_4(Struct_3(Struct_2(4294967295u, var_1.b), Struct_1(u_input.b.x, var_1.b.b, var_1.c, var_1.a.b.d), vec2<bool>(var_1.a.b.c.x, var_1.c.x)), global1[_wgslsmith_index_u32(var_0.x, 1u)]).b), Struct_1(select(_wgslsmith_add_u32(48638u, u_input.b.x), 0u, true), vec2<f32>(1026f, _wgslsmith_div_f32(-366f, 627f)), !select(vec2<bool>(true, var_1.b.c.x), var_1.b.d.zy, true), vec3<bool>(true, true, true)), vec2<bool>(true, true)), !(!vec4<bool>(all(var_1.b.c), true, true, false)));
    var_2 = Struct_2(~u_input.c.x, var_2.b);
    let var_3 = _wgslsmith_mult_i32(u_input.d.x, u_input.d.x);
    let var_4 = _wgslsmith_dot_vec2_u32(vec2<u32>(reverseBits(abs(~1u)), countOneBits(_wgslsmith_mod_u32(_wgslsmith_add_u32(var_0.x, 82001u), 1u))), _wgslsmith_sub_vec2_u32(vec2<u32>(0u, ~var_0.x), abs(~var_0.zw)));
    let var_5 = ~firstLeadingBit(_wgslsmith_mult_vec4_i32(-vec4<i32>(var_3, -2147483647i, var_3, 0i), _wgslsmith_mod_vec4_i32(abs(vec4<i32>(24436i, var_3, -43235i, -2147483647i)), _wgslsmith_clamp_vec4_i32(vec4<i32>(var_3, var_3, u_input.d.x, var_3), vec4<i32>(1i, var_3, var_3, -18512i), vec4<i32>(-30340i, u_input.e, 9613i, var_3)))));
    var var_6 = vec3<u32>(firstLeadingBit(~_wgslsmith_mult_u32(var_2.b.a << (4294967295u % 32u), 40917u)), 45768u, ~abs(_wgslsmith_add_u32(38272u, 23312u)));
    global1 = array<vec4<bool>, 1>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_2.b.b, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_1.b.b.x, var_1.a.b.b.x), vec2<f32>(var_1.b.b.x, var_2.b.b.x))))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(func_1(0u).b.b.x, var_1.a.b.b.x))) * -825f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1591f), -894f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a.b.b.x, 516f, var_1.b.b.x, -187f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-327f, var_1.a.b.b.x, var_1.a.b.b.x, 1005f))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1000f, var_1.b.b.x, var_1.a.b.b.x, 637f))), vec4<f32>(1245f, -457f, var_2.b.b.x, var_1.a.b.b.x))))));
}

