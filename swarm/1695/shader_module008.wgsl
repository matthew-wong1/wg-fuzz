struct Struct_1 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: vec2<u32>,
    d: vec3<i32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<u32>(21871u, 4294967295u));

var<private> global1: array<vec4<i32>, 24>;

var<private> global2: array<f32, 12> = array<f32, 12>(-1000f, -228f, 210f, -431f, 1323f, -1000f, -1746f, 768f, 1688f, 1017f, -743f, -1785f);

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: i32) -> vec4<i32> {
    var var_0 = all(vec4<bool>(false, true, !all(vec3<bool>(true, true, true)), all(vec4<bool>(any(vec3<bool>(true, false, true)), all(vec4<bool>(false, true, false, true)), select(true, false, true), all(vec3<bool>(false, true, true))))));
    let var_1 = Struct_1(select(vec2<u32>(10874u, ~abs(1u)), vec2<u32>(24071u, global0.a.x), false));
    let var_2 = _wgslsmith_div_u32(~0u, abs(var_1.a.x));
    global0 = var_1;
    global0 = Struct_1(~global0.a);
    return -_wgslsmith_div_vec4_i32(reverseBits(vec4<i32>(-41623i, -2147483647i, _wgslsmith_mod_i32(u_input.b.x, u_input.b.x), u_input.b.x)), global1[_wgslsmith_index_u32(abs(select(27885u, 0u, true)), 24u)]);
}

fn func_2() -> Struct_1 {
    let var_0 = !(!select(false, true, !(-1i == u_input.b.x)));
    var var_1 = !(!(!vec3<bool>(var_0, !var_0, !var_0)));
    var var_2 = !vec3<bool>(~(-39400i) > _wgslsmith_dot_vec4_i32(global1[_wgslsmith_index_u32(max(1u, global0.a.x), 24u)], func_3(62655i)), any(!select(var_1.yz, vec2<bool>(false, true), var_0)), true);
    let var_3 = select(false, select(!var_0, true, !any(var_2.xy)), !all(select(vec3<bool>(true, false, var_2.x), vec3<bool>(false, false, false), false))) & false;
    var var_4 = Struct_1(~(~(~global0.a >> (_wgslsmith_mod_vec2_u32(u_input.a, vec2<u32>(33075u, global0.a.x)) % vec2<u32>(32u)))));
    return Struct_1(var_4.a);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: u32) -> Struct_1 {
    var var_0 = Struct_1(min(firstLeadingBit(~u_input.a) & (vec2<u32>(arg_1.a.x, 4294967295u) >> (~u_input.a % vec2<u32>(32u))), _wgslsmith_mod_vec2_u32(func_2().a, arg_2.a) >> (min(_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(4294967295u, global0.a.x)), ~vec2<u32>(arg_2.a.x, 2198u)) % vec2<u32>(32u))));
    var var_1 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2[_wgslsmith_index_u32(~arg_3, 12u)], -1000f, global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(select(arg_0.a, arg_1.a, vec2<bool>(true, false)), arg_2.a), 12u)])), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(var_0.a.x, 12u)]))), 1164f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1975f))), vec3<f32>(-1206f, global2[_wgslsmith_index_u32(func_2().a.x, 12u)], global2[_wgslsmith_index_u32(select(arg_1.a.x, 4294967295u, true), 12u)]))));
    return Struct_1(~vec2<u32>(arg_0.a.x, arg_2.a.x));
}

fn func_5(arg_0: Struct_1, arg_1: u32) -> Struct_1 {
    var var_0 = arg_0;
    global2 = array<f32, 12>();
    var var_1 = 52838i ^ u_input.b.x;
    var var_2 = u_input.b.x;
    var var_3 = arg_0;
    return arg_0;
}

fn func_6(arg_0: Struct_1, arg_1: f32, arg_2: vec2<bool>) -> Struct_1 {
    let var_0 = -2147483647i;
    global0 = arg_0;
    let var_1 = arg_1;
    var var_2 = Struct_1(~firstTrailingBit(vec2<u32>(~5953u, func_2().a.x)));
    let var_3 = Struct_1(u_input.a);
    return Struct_1(_wgslsmith_add_vec2_u32(func_4(arg_0, func_2(), func_4(var_3, Struct_1(global0.a), func_2(), 1u), var_3.a.x).a, min(~vec2<u32>(var_2.a.x, var_2.a.x), var_3.a)));
}

fn func_1() -> Struct_1 {
    var var_0 = ~((18030u & _wgslsmith_div_u32(_wgslsmith_sub_u32(global0.a.x, u_input.a.x), 5439u)) ^ 1u);
    var_0 = _wgslsmith_sub_u32(0u, u_input.a.x) & 74713u;
    global2 = array<f32, 12>();
    var var_1 = false;
    global2 = array<f32, 12>();
    return func_6(func_5(func_4(func_2(), func_2(), func_2(), func_2().a.x), select(~global0.a.x ^ abs(global0.a.x), 31943u, true)), -1731f, !select(!select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true)), vec2<bool>(true, true), any(select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), true))));
}

fn func_7(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    global2 = array<f32, 12>();
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2[_wgslsmith_index_u32(1u, 12u)], -163f, global2[_wgslsmith_index_u32(global0.a.x, 12u)])) * vec3<f32>(_wgslsmith_f_op_f32(max(-970f, global2[_wgslsmith_index_u32(1u, 12u)])), global2[_wgslsmith_index_u32(~arg_0.a.x, 12u)], _wgslsmith_div_f32(global2[_wgslsmith_index_u32(1u, 12u)], global2[_wgslsmith_index_u32(global0.a.x, 12u)])))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2[_wgslsmith_index_u32(arg_2.a.x, 12u)], 1323f, global2[_wgslsmith_index_u32(arg_0.a.x, 12u)])), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2[_wgslsmith_index_u32(4294967295u, 12u)], global2[_wgslsmith_index_u32(1u, 12u)], -482f)))) + _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(420f, global2[_wgslsmith_index_u32(0u, 12u)], global2[_wgslsmith_index_u32(arg_0.a.x, 12u)]) - vec3<f32>(global2[_wgslsmith_index_u32(4294967295u, 12u)], -1591f, global2[_wgslsmith_index_u32(global0.a.x, 12u)])))))));
    var var_1 = func_5(func_5(arg_0, arg_2.a.x), _wgslsmith_dot_vec3_u32(~_wgslsmith_clamp_vec3_u32(firstLeadingBit(vec3<u32>(54486u, u_input.a.x, 81679u)), firstLeadingBit(vec3<u32>(0u, 1u, 0u)), vec3<u32>(4294967295u, arg_1.a.x, global0.a.x) & vec3<u32>(arg_0.a.x, 0u, arg_0.a.x)), select(vec3<u32>(max(83349u, arg_2.a.x), _wgslsmith_div_u32(arg_0.a.x, global0.a.x), arg_0.a.x), _wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, arg_1.a.x, arg_1.a.x), vec3<u32>(0u, arg_0.a.x, arg_2.a.x) >> (vec3<u32>(arg_2.a.x, 4294967295u, u_input.a.x) % vec3<u32>(32u))), select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, true))))));
    var var_2 = (_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-1051f, -152f)), global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(4294967295u, 23779u, arg_0.a.x), 12u)])) == _wgslsmith_div_f32(_wgslsmith_div_f32(var_0.x, var_0.x), global2[_wgslsmith_index_u32(~global0.a.x, 12u)])) | true;
    global0 = Struct_1(u_input.a);
    return func_4(arg_0, arg_2, Struct_1(~vec2<u32>(func_2().a.x, ~820u)), 66973u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_7(func_1(), func_5(Struct_1(abs(vec2<u32>(u_input.a.x, global0.a.x))), _wgslsmith_add_u32(~28978u >> (func_6(Struct_1(global0.a), global2[_wgslsmith_index_u32(u_input.a.x, 12u)], vec2<bool>(false, false)).a.x % 32u), u_input.a.x)), Struct_1(abs(~global0.a) << (global0.a % vec2<u32>(32u))));
    var var_0 = vec2<i32>(abs(-(u_input.b.x | u_input.b.x)), _wgslsmith_add_i32(abs(abs(u_input.b.x)), _wgslsmith_sub_i32(-33387i, -100460i)));
    var var_1 = reverseBits(func_2().a) << (~func_4(func_5(func_4(Struct_1(vec2<u32>(global0.a.x, global0.a.x)), Struct_1(global0.a), Struct_1(vec2<u32>(global0.a.x, u_input.a.x)), 49130u), ~global0.a.x), func_4(func_2(), Struct_1(global0.a), func_2(), 1u), Struct_1(vec2<u32>(37824u, u_input.a.x)), 27227u).a % vec2<u32>(32u));
    var var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(min(vec3<u32>(1u, var_1.x, 4294967295u), vec3<u32>(global0.a.x, var_1.x, var_1.x)), _wgslsmith_sub_vec3_u32(vec3<u32>(var_1.x, global0.a.x, 1u), vec3<u32>(var_1.x, 4294967295u, global0.a.x))), 12u)]), global2[_wgslsmith_index_u32(func_2().a.x, 12u)], _wgslsmith_f_op_f32(f32(-1f) * -258f)));
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1798f * -993f) * global2[_wgslsmith_index_u32(global0.a.x, 12u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1576f)), global2[_wgslsmith_index_u32(u_input.a.x, 12u)]))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_3.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(ceil(global2[_wgslsmith_index_u32(73353u, 12u)])), var_2.x, _wgslsmith_f_op_f32(f32(-1f) * -254f), _wgslsmith_f_op_f32(min(global2[_wgslsmith_index_u32(var_1.x, 12u)], 156f))))) * _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-345f, 1392f, -1000f, -306f))))), reverseBits(vec2<u32>(global0.a.x, ~u_input.a.x)) | min(global0.a, firstLeadingBit(~vec2<u32>(global0.a.x, 4294967295u))), ~u_input.b, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.x, var_2.x, -1770f, -239f)) - _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global2[_wgslsmith_index_u32(30222u, 12u)], -553f, var_3.x, var_2.x)))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(global0.a.x, 12u)], global2[_wgslsmith_index_u32(106191u, 12u)], -1244f, -441f) - vec4<f32>(global2[_wgslsmith_index_u32(global0.a.x, 12u)], var_3.x, global2[_wgslsmith_index_u32(var_1.x, 12u)], 1986f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.x, 463f, var_3.x, 680f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1391f, 760f, 433f, -673f) + vec4<f32>(global2[_wgslsmith_index_u32(u_input.a.x, 12u)], var_3.x, var_3.x, -307f))))));
}

