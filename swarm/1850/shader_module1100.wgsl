struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: i32,
    b: vec4<f32>,
    c: bool,
}

struct Struct_3 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: array<vec3<f32>, 4>;

var<private> global2: array<Struct_2, 6> = array<Struct_2, 6>(Struct_2(-84938i, vec4<f32>(563f, -439f, 442f, 1888f), false), Struct_2(19646i, vec4<f32>(562f, -955f, -209f, -1219f), true), Struct_2(14591i, vec4<f32>(-936f, 1000f, 1468f, 576f), true), Struct_2(i32(-2147483648), vec4<f32>(-1223f, -1454f, -203f, 175f), true), Struct_2(-4289i, vec4<f32>(-697f, 102f, 303f, 704f), false), Struct_2(5977i, vec4<f32>(1000f, -1374f, 1017f, -642f), true));

var<private> global3: array<u32, 6> = array<u32, 6>(5357u, 4791u, 0u, 19992u, 0u, 69287u);

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: vec2<u32>, arg_1: f32, arg_2: vec4<i32>, arg_3: u32) -> f32 {
    global3 = array<u32, 6>();
    let var_0 = vec2<u32>(0u, _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global0.x, 0u, 30566u) >> (_wgslsmith_mod_vec3_u32(vec3<u32>(17445u, 116909u, arg_0.x), vec3<u32>(global0.x, arg_3, global3[_wgslsmith_index_u32(39674u, 6u)])) % vec3<u32>(32u)), ~abs(vec3<u32>(0u, 1u, 0u))), 18991u));
    global1 = array<vec3<f32>, 4>();
    global2 = array<Struct_2, 6>();
    let var_1 = Struct_3(false);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(-588f * -272f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 + 939f)), false)) - _wgslsmith_f_op_f32(516f * _wgslsmith_f_op_f32(f32(-1f) * -314f)));
}

fn func_2() -> u32 {
    global2 = array<Struct_2, 6>();
    let var_0 = Struct_3(global0.x <= ~(~abs(0u)));
    let var_1 = ~vec3<u32>(~global0.x, 1u, 2221u);
    let var_2 = Struct_3(_wgslsmith_sub_i32(u_input.b, firstTrailingBit(-u_input.b)) > abs(~_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, -42130i, u_input.a), vec3<i32>(-1i, -1i, u_input.b))));
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(402f, 523f)), 398f), _wgslsmith_f_op_f32(f32(-1f) * -667f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -581f))), 1000f) - _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -197f), 196f, _wgslsmith_div_f32(1000f, -811f), _wgslsmith_f_op_f32(func_3(global0.xy, -823f, vec4<i32>(u_input.a, -2147483647i, 17107i, 1i), 4294967295u)))))));
    return ~(~firstTrailingBit(var_1.x));
}

fn func_4(arg_0: f32, arg_1: Struct_2) -> bool {
    let var_0 = select(~_wgslsmith_div_vec3_u32(countOneBits(vec3<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global0.x, 6u)], 6u)], global3[_wgslsmith_index_u32(16983u, 6u)], global3[_wgslsmith_index_u32(global0.x, 6u)])), ~vec3<u32>(global0.x, global0.x, 4294967295u) & max(vec3<u32>(0u, global0.x, global0.x), vec3<u32>(global3[_wgslsmith_index_u32(50389u, 6u)], 81984u, 88464u))), _wgslsmith_mult_vec3_u32(vec3<u32>(~91054u, global3[_wgslsmith_index_u32(abs(global3[_wgslsmith_index_u32(global0.x, 6u)]), 6u)], firstLeadingBit(global0.x)) >> (abs(~vec3<u32>(29961u, 0u, 4294967295u)) % vec3<u32>(32u)), select(~vec3<u32>(global0.x, global3[_wgslsmith_index_u32(32081u, 6u)], 1u), vec3<u32>(4294967295u, 5382u, 5422u), vec3<bool>(true, true, true)) & ~(vec3<u32>(4294967295u, 26468u, 38730u) >> (vec3<u32>(global0.x, global0.x, global3[_wgslsmith_index_u32(4294967295u, 6u)]) % vec3<u32>(32u)))), !(!(!select(vec3<bool>(arg_1.c, arg_1.c, true), vec3<bool>(true, true, arg_1.c), vec3<bool>(arg_1.c, true, arg_1.c)))));
    let var_1 = false;
    return !arg_1.c;
}

fn func_1(arg_0: f32, arg_1: Struct_2, arg_2: u32) -> vec2<bool> {
    var var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(arg_2, 6u)], 6u)], 4u)], _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(arg_0, arg_1.b.x, arg_1.b.x), vec3<f32>(1453f, arg_0, arg_1.b.x)) * _wgslsmith_div_vec3_f32(global1[_wgslsmith_index_u32(1u, 4u)], vec3<f32>(-984f, 432f, -351f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(arg_1.b.zww)) + _wgslsmith_f_op_vec3_f32(exp2(global1[_wgslsmith_index_u32(1u, 4u)]))))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-arg_1.b.ywz))) - _wgslsmith_f_op_vec3_f32(step(global1[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(54459u, 6u)], 4u)], arg_1.b.zzy))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(816f, arg_0, 293f), arg_1.b.zww, !vec3<bool>(arg_1.c, true, arg_1.c))))));
    var var_1 = _wgslsmith_f_op_f32(arg_0 + -271f);
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_1.b.zw) - vec2<f32>(_wgslsmith_f_op_f32(abs(1000f)), -1000f));
    var var_3 = Struct_3(func_4(arg_0, global2[_wgslsmith_index_u32(~func_2(), 6u)]));
    let var_4 = vec4<bool>(arg_1.c, var_3.a, true, _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(select(vec4<i32>(-26033i, u_input.a, -10950i, 20552i), vec4<i32>(16960i, arg_1.a, 74590i, arg_1.a), false), vec4<i32>(u_input.a, arg_1.a, u_input.b, -2147483647i)), -2849i) >= ~u_input.b);
    return vec2<bool>(_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(abs(vec2<u32>(global3[_wgslsmith_index_u32(17185u, 6u)], global0.x)), global0.xy), global0.yx) >= _wgslsmith_mult_u32(_wgslsmith_sub_u32(4294967295u, ~4294967295u), global3[_wgslsmith_index_u32(global0.x, 6u)] ^ 1u), arg_1.c);
}

fn func_5(arg_0: bool, arg_1: vec2<bool>) -> Struct_2 {
    let var_0 = 68289u;
    global1 = array<vec3<f32>, 4>();
    let var_1 = global2[_wgslsmith_index_u32(~var_0, 6u)];
    let var_2 = firstLeadingBit(_wgslsmith_mult_i32(_wgslsmith_sub_i32(~u_input.b, _wgslsmith_dot_vec3_i32(vec3<i32>(20555i, -16906i, 0i), vec3<i32>(u_input.b, 73013i, 1i)) ^ -26511i), -var_1.a));
    global3 = array<u32, 6>();
    return global2[_wgslsmith_index_u32(1u, 6u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -countOneBits(vec4<i32>(_wgslsmith_add_i32(u_input.a, -34405i), -_wgslsmith_mult_i32(-2147483647i, -1i), -40905i, u_input.a));
    var var_1 = var_0.x;
    let var_2 = func_5(any(select(!select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true)), vec2<bool>(true, true), select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(false, false)))), select(select(func_1(_wgslsmith_f_op_f32(min(772f, -879f)), Struct_2(1i, vec4<f32>(-189f, -903f, 1000f, 1180f), true), global0.x), vec2<bool>(true, true), vec2<bool>(true, any(vec2<bool>(false, true)))), vec2<bool>(!func_1(-1304f, Struct_2(-2147483647i, vec4<f32>(1447f, 352f, 371f, 342f), true), global0.x).x, !func_4(-1000f, Struct_2(-59i, vec4<f32>(102f, -207f, -1328f, -852f), false))), !vec2<bool>(true, all(vec4<bool>(true, true, true, true)))));
    var_0 = reverseBits(_wgslsmith_clamp_vec4_i32(vec4<i32>(abs(1i), u_input.a, ~10304i, _wgslsmith_div_i32(-2147483647i, firstLeadingBit(9696i))), _wgslsmith_add_vec4_i32(-firstTrailingBit(vec4<i32>(2147483647i, var_0.x, 13237i, u_input.a)), abs(abs(vec4<i32>(-29488i, u_input.b, u_input.a, 43453i)))), vec4<i32>(u_input.b, ~(-2147483647i), func_5(true, !vec2<bool>(var_2.c, var_2.c)).a, var_0.x)));
    let var_3 = func_5(var_0.x > abs(-1i), select(func_1(_wgslsmith_f_op_f32(func_3(global0.yx | global0.yy, -365f, -vec4<i32>(u_input.b, var_0.x, 2147483647i, 2147483647i), global0.x)), global2[_wgslsmith_index_u32(global0.x, 6u)], firstTrailingBit(1u << (global3[_wgslsmith_index_u32(global0.x, 6u)] % 32u))), !(!select(vec2<bool>(true, var_2.c), vec2<bool>(var_2.c, false), true)), var_2.c));
    var var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(min(var_3.b.zzx, var_2.b.yyy)))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-629f, -424f, 1412f))))));
    let var_5 = 1u;
    let var_6 = Struct_3(any(vec4<bool>(true, !var_2.c, !var_2.c, all(!vec4<bool>(var_3.c, var_3.c, var_2.c, false)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_u32(global3[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(select(vec4<u32>(global0.x, 59838u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 6u)], 6u)], global3[_wgslsmith_index_u32(var_5, 6u)]), vec4<u32>(55341u, 57002u, 1u, 14380u), vec4<bool>(true, var_3.c, false, false)), _wgslsmith_mult_vec4_u32(vec4<u32>(var_5, var_5, 25885u, 0u), vec4<u32>(var_5, global0.x, global0.x, 1u))), 18095u | var_5), 6u)], _wgslsmith_mod_u32(~(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 6u)], 6u)] ^ 41333u), firstTrailingBit(firstTrailingBit(47755u)))), ~global0.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(global0.yz, var_3.b.x, vec4<i32>(1i, var_2.a, var_0.x, 12493i), 4294967295u)))), 897f)));
}

