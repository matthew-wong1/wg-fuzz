struct Struct_1 {
    a: i32,
    b: vec2<bool>,
    c: vec2<u32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: bool,
    c: vec2<bool>,
    d: vec2<bool>,
    e: vec2<bool>,
}

struct Struct_4 {
    a: vec3<i32>,
    b: u32,
}

struct Struct_5 {
    a: vec2<f32>,
    b: vec4<bool>,
    c: bool,
    d: Struct_1,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
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

var<private> global0: Struct_3 = Struct_3(false, true, vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false));

var<private> global1: f32;

var<private> global2: array<i32, 17> = array<i32, 17>(-12073i, 10965i, 2147483647i, 1i, 12292i, -25995i, -13673i, 38568i, 1i, 0i, -29964i, 2243i, -1i, 1i, -53696i, 1i, 27400i);

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> bool {
    var var_0 = !select(select(select(select(vec2<bool>(true, true), vec2<bool>(global0.d.x, global0.d.x), false), !global0.e, u_input.b.x >= 1u), vec2<bool>(global0.a, true), global0.d), vec2<bool>(any(select(vec3<bool>(true, true, false), vec3<bool>(global0.a, false, global0.e.x), global0.b)), select(true, global0.d.x, global0.e.x)), select(vec2<bool>(global0.c.x, global0.b), select(vec2<bool>(true, true), vec2<bool>(global0.a, true), vec2<bool>(true, true)), global0.c));
    var var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1000f, 881f), vec2<f32>(407f, -109f), false)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-849f, 574f))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-337f, -374f)) + vec2<f32>(-588f, -1210f))) + vec2<f32>(1f, 1f)), Struct_1(_wgslsmith_mod_i32(1i, -17312i), !vec2<bool>(var_0.x, !var_0.x), _wgslsmith_div_vec2_u32(firstTrailingBit(u_input.b.xz), _wgslsmith_mod_vec2_u32(select(vec2<u32>(16385u, u_input.b.x), u_input.b.xy, global0.c), max(u_input.b.zz, u_input.b.yz)))));
    let var_2 = max(~vec3<i32>(var_1.b.a, global2[_wgslsmith_index_u32(9719u, 17u)], -18580i) ^ -(~vec3<i32>(var_1.b.a, var_1.b.a, -1i)), firstTrailingBit(abs(vec3<i32>(2147483647i, global2[_wgslsmith_index_u32(11993u, 17u)], var_1.b.a)) >> (vec3<u32>(u_input.b.x, 0u, 4294967295u) % vec3<u32>(32u)))) | (vec3<i32>(26919i, ~1i, global2[_wgslsmith_index_u32(2972u, 17u)]) << (vec3<u32>(4294967295u, ~4294967295u, select(0u, _wgslsmith_add_u32(0u, u_input.b.x), !var_1.b.b.x)) % vec3<u32>(32u)));
    var var_3 = any(vec3<bool>(!global0.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1093f * -935f)) > var_1.a.x, global0.a));
    var_0 = select(vec2<bool>(true, true), !var_1.b.b, !(!vec2<bool>(any(vec4<bool>(var_1.b.b.x, var_0.x, global0.e.x, true)), any(var_1.b.b))));
    return var_0.x;
}

fn func_2(arg_0: Struct_1, arg_1: f32) -> Struct_3 {
    return Struct_3(global0.c.x, !select(false, arg_0.b.x, any(vec3<bool>(global0.a, false, global0.a)) || true), vec2<bool>(true, global0.d.x), select(global0.e, select(select(vec2<bool>(arg_0.b.x, true), vec2<bool>(global0.e.x, true), arg_0.b.x), vec2<bool>(true | global0.b, false), !(!global0.c)), func_3()), !vec2<bool>(arg_0.b.x, false));
}

fn func_1(arg_0: vec4<u32>, arg_1: vec3<bool>, arg_2: Struct_2) -> Struct_3 {
    global0 = Struct_3(arg_2.b.b.x, !arg_1.x, arg_1.yx, vec2<bool>(!(arg_2.a.x >= -374f), global0.d.x), !select(vec2<bool>(global0.c.x, arg_0.x == 8720u), !select(global0.c, vec2<bool>(false, global0.d.x), true), vec2<bool>(arg_1.x | arg_2.b.b.x, false)));
    var var_0 = _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(-vec2<i32>(~(-29215i), -2147483647i), ~select(_wgslsmith_mult_vec2_i32(vec2<i32>(arg_2.b.a, -1i), vec2<i32>(49375i, 0i)), -vec2<i32>(37238i, -20452i), !global0.c.x)), i32(-1i) * -2147483647i);
    global1 = -1369f;
    global0 = func_2(Struct_1(~abs(~global2[_wgslsmith_index_u32(arg_0.x, 17u)]), !(!select(vec2<bool>(true, arg_2.b.b.x), vec2<bool>(arg_2.b.b.x, false), global0.e)), ~(arg_2.b.c ^ select(u_input.b.zz, vec2<u32>(u_input.c, 0u), true))), 189f);
    let var_1 = -445f;
    return Struct_3(any(global0.d), global0.c.x, global0.d, global0.e, select(vec2<bool>(arg_1.x, all(!vec4<bool>(arg_2.b.b.x, true, arg_2.b.b.x, true))), global0.c, true));
}

fn func_4(arg_0: Struct_3) -> Struct_2 {
    let var_0 = (select(~(~vec2<i32>(global2[_wgslsmith_index_u32(1u, 17u)], 1i)), vec2<i32>(global2[_wgslsmith_index_u32(1u, 17u)], 2147483647i), vec2<bool>(!arg_0.b, all(vec3<bool>(true, global0.b, false)))) ^ (vec2<i32>(-1i) * -_wgslsmith_div_vec2_i32(vec2<i32>(17138i, -1i), vec2<i32>(global2[_wgslsmith_index_u32(u_input.c, 17u)], global2[_wgslsmith_index_u32(u_input.c, 17u)])))) & vec2<i32>(1i, -9959i);
    global0 = Struct_3(all(vec3<bool>(_wgslsmith_mult_u32(0u, u_input.d) > 0u, false, true)), true, arg_0.d, vec2<bool>(global0.b, global0.e.x), global0.e);
    var var_1 = ~reverseBits(~firstLeadingBit(vec2<i32>(var_0.x, -2147483647i)) << (_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.c, 86425u), u_input.b.zz) % vec2<u32>(32u)));
    var var_2 = Struct_1(_wgslsmith_dot_vec4_i32(-vec4<i32>(-2337i, -2147483647i, max(0i, 2147483647i), _wgslsmith_mod_i32(var_0.x, var_1.x)), countOneBits(~firstTrailingBit(vec4<i32>(var_0.x, global2[_wgslsmith_index_u32(u_input.b.x, 17u)], -1i, var_1.x)))), global0.e, vec2<u32>(~u_input.a, u_input.d));
    var var_3 = select(-(vec3<i32>(1i, _wgslsmith_mod_i32(var_1.x, -2267i), -var_1.x) | -_wgslsmith_div_vec3_i32(vec3<i32>(2147483647i, 13972i, 1i), vec3<i32>(var_0.x, var_2.a, var_0.x))), vec3<i32>(var_2.a, ~0i, var_2.a), global0.c.x);
    return Struct_2(vec2<f32>(_wgslsmith_f_op_f32(143f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-306f)) * 1329f)), 399f), Struct_1(reverseBits(var_2.a), vec2<bool>(arg_0.b, global0.e.x), var_2.c));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<u32>(u_input.c, u_input.c, _wgslsmith_clamp_u32(74465u, ~0u, ~select(u_input.c, 16563u, true))) ^ _wgslsmith_mod_vec3_u32(vec3<u32>(50902u, ~4294967295u, u_input.a), ~_wgslsmith_add_vec3_u32(u_input.b, vec3<u32>(u_input.c, 1u, u_input.a)));
    var var_1 = vec3<bool>(false | !global0.a, false, _wgslsmith_clamp_u32(11767u ^ firstTrailingBit(0u), ~1u, 0u | var_0.x) >= 61947u);
    let var_2 = countOneBits(global2[_wgslsmith_index_u32(countOneBits(abs(~65911u)) ^ _wgslsmith_add_u32(_wgslsmith_mult_u32(u_input.c, u_input.d) & abs(u_input.b.x), abs(1u)), 17u)]);
    var var_3 = func_4(func_1(firstTrailingBit(vec4<u32>(u_input.b.x, _wgslsmith_dot_vec2_u32(var_0.xz, u_input.b.zy), _wgslsmith_clamp_u32(20841u, 1u, 4294967295u), max(u_input.d, u_input.d))), vec3<bool>(var_1.x, true, any(!global0.e)), Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-291f, -633f)))), Struct_1(-global2[_wgslsmith_index_u32(var_0.x, 17u)], vec2<bool>(var_1.x, false), countOneBits(vec2<u32>(32212u, u_input.c))))));
    global1 = var_3.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(var_0.x ^ ~var_3.b.c.x, u_input.a, var_0.x, 4294967295u & var_0.x) | abs(abs(vec4<u32>(0u, u_input.c, 19155u, var_0.x) | vec4<u32>(var_3.b.c.x, u_input.d, var_0.x, u_input.d))));
}

