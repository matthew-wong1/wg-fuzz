struct Struct_1 {
    a: vec3<u32>,
    b: i32,
    c: i32,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 1>;

var<private> global1: array<i32, 4>;

var<private> global2: array<vec4<i32>, 22> = array<vec4<i32>, 22>(vec4<i32>(0i, 2147483647i, 1i, 38609i), vec4<i32>(i32(-2147483648), -25608i, -25258i, 941i), vec4<i32>(1i, 21139i, 2147483647i, 20370i), vec4<i32>(-1i, -38319i, i32(-2147483648), -4781i), vec4<i32>(-1i, 28841i, -3582i, -13298i), vec4<i32>(-1i, i32(-2147483648), 1i, -36457i), vec4<i32>(1i, -30069i, -42380i, -1i), vec4<i32>(-69402i, i32(-2147483648), 1i, i32(-2147483648)), vec4<i32>(1i, 1i, 15760i, -1i), vec4<i32>(1i, 2147483647i, 2147483647i, i32(-2147483648)), vec4<i32>(-12361i, 0i, 11369i, i32(-2147483648)), vec4<i32>(1i, -15426i, -26235i, -20738i), vec4<i32>(2147483647i, 2147483647i, i32(-2147483648), -37845i), vec4<i32>(1i, 8464i, 2147483647i, -1i), vec4<i32>(2147483647i, 1i, 2147483647i, 2147483647i), vec4<i32>(-1i, 2147483647i, -32896i, 1i), vec4<i32>(i32(-2147483648), 23345i, 0i, 10126i), vec4<i32>(-32813i, -1i, -1i, 0i), vec4<i32>(-20294i, -1i, -19851i, 27377i), vec4<i32>(8881i, i32(-2147483648), -1i, 1i), vec4<i32>(-12361i, -1i, 1i, 11035i), vec4<i32>(0i, 2147483647i, i32(-2147483648), -2438i));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    let var_0 = arg_1;
    global0 = array<vec2<u32>, 1>();
    global0 = array<vec2<u32>, 1>();
    var var_1 = arg_1;
    global1 = array<i32, 4>();
    return arg_0;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> f32 {
    var var_0 = arg_0;
    let var_1 = vec4<i32>(abs(75692i) << (~(~_wgslsmith_mult_u32(97939u, var_0.a.x)) % 32u), func_1(arg_1, arg_0).b & -_wgslsmith_mod_i32(2147483647i, var_0.c), 20413i >> (~_wgslsmith_add_u32(u_input.b << (var_0.a.x % 32u), ~var_0.a.x) % 32u), var_0.b);
    let var_2 = select(vec2<bool>(1000f < _wgslsmith_f_op_f32(arg_0.d.x * _wgslsmith_f_op_f32(arg_0.d.x - arg_0.d.x)), false), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(!(arg_1.d.x == -1000f), true)), !(!(_wgslsmith_dot_vec2_i32(var_1.yw, vec2<i32>(global1[_wgslsmith_index_u32(arg_0.a.x, 4u)], 0i)) >= _wgslsmith_dot_vec3_i32(var_1.wzw, var_1.wwx))));
    var_0 = Struct_1(vec3<u32>(33417u, arg_1.a.x, abs(~var_0.a.x)) ^ vec3<u32>(1u << ((13404u << (u_input.b % 32u)) % 32u), ~max(23526u, var_0.a.x), ~_wgslsmith_mult_u32(0u, arg_0.a.x)), var_0.c & _wgslsmith_dot_vec3_i32(-vec3<i32>(1i, arg_1.c, 2147483647i) | -vec3<i32>(-2147483647i, var_1.x, 2147483647i), select(var_1.wxw, vec3<i32>(var_1.x, 2147483647i, var_1.x), select(vec3<bool>(var_2.x, false, var_2.x), vec3<bool>(var_2.x, var_2.x, var_2.x), var_2.x))), _wgslsmith_dot_vec4_i32(max(var_1, var_1), ~reverseBits(~vec4<i32>(var_0.b, -2147483647i, 43413i, 25170i))), var_0.d);
    var var_3 = Struct_1(vec3<u32>(reverseBits(_wgslsmith_sub_u32(func_1(Struct_1(vec3<u32>(u_input.d, 4294967295u, 1u), arg_1.c, -2147483647i, vec2<f32>(arg_0.d.x, arg_0.d.x)), arg_1).a.x, 4294967295u)), firstLeadingBit(1u), u_input.b), _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(max(-vec3<i32>(-2147483647i, 1i, global1[_wgslsmith_index_u32(38693u, 4u)]), select(vec3<i32>(0i, arg_0.c, -11668i), var_1.xxy, vec3<bool>(var_2.x, var_2.x, var_2.x))), reverseBits(firstTrailingBit(vec3<i32>(global1[_wgslsmith_index_u32(u_input.d, 4u)], var_0.b, var_0.c)))), -arg_1.c), max(~1i, -2147483647i), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(var_0.d.x)), _wgslsmith_div_f32(arg_0.d.x, 886f), true)), _wgslsmith_f_op_f32(var_0.d.x - _wgslsmith_f_op_f32(floor(arg_1.d.x)))))));
    return _wgslsmith_div_f32(var_3.d.x, arg_1.d.x);
}

fn func_2(arg_0: Struct_1) -> f32 {
    var var_0 = select(vec2<bool>(-778f == _wgslsmith_f_op_f32(func_3(func_1(Struct_1(vec3<u32>(arg_0.a.x, arg_0.a.x, 1u), -174i, arg_0.b, arg_0.d), Struct_1(arg_0.a, -22355i, u_input.c, vec2<f32>(arg_0.d.x, arg_0.d.x))), Struct_1(arg_0.a, global1[_wgslsmith_index_u32(arg_0.a.x, 4u)], arg_0.b, vec2<f32>(-630f, 1024f)))), select(any(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false))), true, _wgslsmith_f_op_f32(max(arg_0.d.x, arg_0.d.x)) <= _wgslsmith_f_op_f32(arg_0.d.x - arg_0.d.x))), select(vec2<bool>(true, true), vec2<bool>(true, any(vec2<bool>(true, false))), !select(vec2<bool>(false, true), vec2<bool>(true, false), true)), !select(vec2<bool>(select(false, false, false), true), vec2<bool>(all(vec2<bool>(false, false)), false), vec2<bool>(true, true)));
    var var_1 = _wgslsmith_f_op_f32(min(-629f, arg_0.d.x));
    var var_2 = arg_0.a.x << (~(_wgslsmith_sub_u32(u_input.d, 9280u) | (~arg_0.a.x << (~0u % 32u))) % 32u);
    var var_3 = !vec4<bool>(true, (~1u << (_wgslsmith_div_u32(u_input.b, arg_0.a.x) % 32u)) < u_input.d, false, false);
    var_3 = select(vec4<bool>(!(any(vec4<bool>(true, var_0.x, true, true)) && !var_0.x), select(false, (false || var_3.x) && !var_3.x, !any(vec3<bool>(true, false, true))), any(!select(var_3.xz, var_3.zw, var_3.zx)), true), select(select(select(select(vec4<bool>(false, var_0.x, var_3.x, true), vec4<bool>(false, var_3.x, var_3.x, false), vec4<bool>(var_0.x, false, var_0.x, var_0.x)), !vec4<bool>(var_3.x, true, var_3.x, false), var_3.x), vec4<bool>(true, any(vec2<bool>(true, true)), all(var_3.xy), true), vec4<bool>(!var_3.x, var_3.x, !var_3.x, all(var_3.wzz))), select(select(!vec4<bool>(true, true, false, var_3.x), select(vec4<bool>(false, var_0.x, var_0.x, false), vec4<bool>(false, true, true, var_3.x), false), true), vec4<bool>(true, true, any(vec4<bool>(false, var_3.x, var_3.x, true)), var_0.x & var_0.x), false), var_0.x), select(!vec4<bool>(true, true, var_0.x, var_3.x), select(!(!vec4<bool>(false, true, var_0.x, var_0.x)), !vec4<bool>(false, var_3.x, false, false), any(vec4<bool>(var_0.x, var_3.x, var_0.x, false))), !(!(!vec4<bool>(var_0.x, var_3.x, var_0.x, false)))));
    return _wgslsmith_f_op_f32(-arg_0.d.x);
}

fn func_4(arg_0: Struct_1, arg_1: bool) -> Struct_1 {
    global2 = array<vec4<i32>, 22>();
    let var_0 = (~firstLeadingBit(vec3<i32>(1i, 1i, arg_0.b)) ^ select(vec3<i32>(abs(arg_0.c), global1[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, 0u), 4u)], 2147483647i), ~(-vec3<i32>(u_input.c, -50536i, global1[_wgslsmith_index_u32(4294967295u, 4u)])), (arg_0.a.x >> (4294967295u % 32u)) >= abs(4294967295u))) ^ _wgslsmith_div_vec3_i32(select(vec3<i32>(u_input.a, _wgslsmith_dot_vec4_i32(vec4<i32>(12984i, -1i, u_input.a, u_input.a), global2[_wgslsmith_index_u32(59187u, 22u)]), u_input.a), vec3<i32>(u_input.c, 2147483647i, -2147483647i) >> (~vec3<u32>(7694u, 13109u, 1u) % vec3<u32>(32u)), true), -_wgslsmith_mod_vec3_i32(vec3<i32>(2147483647i, -45826i, arg_0.b) & vec3<i32>(u_input.c, u_input.c, 50957i), vec3<i32>(-52601i, global1[_wgslsmith_index_u32(arg_0.a.x, 4u)], -5221i)));
    var var_1 = func_1(func_1(Struct_1(vec3<u32>(4294967295u ^ u_input.d, min(arg_0.a.x, arg_0.a.x), arg_0.a.x), ~_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.x, arg_0.c, u_input.c), var_0), _wgslsmith_dot_vec2_i32(var_0.zx, vec2<i32>(var_0.x, arg_0.b)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-750f, arg_0.d.x) * vec2<f32>(1118f, arg_0.d.x))), func_1(func_1(Struct_1(vec3<u32>(1u, arg_0.a.x, 4294967295u), -1i, -2147483647i, arg_0.d), arg_0), Struct_1(~vec3<u32>(780u, arg_0.a.x, u_input.d), arg_0.b, -1i, vec2<f32>(939f, arg_0.d.x)))), func_1(Struct_1(vec3<u32>(arg_0.a.x, arg_0.a.x, u_input.d ^ u_input.d), ~(var_0.x ^ -8656i), ~var_0.x, vec2<f32>(137f, -1427f)), func_1(func_1(func_1(Struct_1(vec3<u32>(1u, u_input.d, arg_0.a.x), 14650i, var_0.x, arg_0.d), Struct_1(vec3<u32>(arg_0.a.x, arg_0.a.x, arg_0.a.x), 63672i, 21043i, arg_0.d)), func_1(Struct_1(arg_0.a, global1[_wgslsmith_index_u32(30880u, 4u)], 2147483647i, vec2<f32>(349f, -417f)), arg_0)), func_1(Struct_1(arg_0.a, -1i, global1[_wgslsmith_index_u32(0u, 4u)], vec2<f32>(arg_0.d.x, arg_0.d.x)), func_1(Struct_1(arg_0.a, 2147483647i, u_input.a, arg_0.d), arg_0)))));
    var var_2 = 2147483647i;
    global0 = array<vec2<u32>, 1>();
    return Struct_1(var_1.a, i32(-1i) * -var_0.x, ~_wgslsmith_add_i32(abs(-2147483647i), _wgslsmith_mod_i32(-3155i, global1[_wgslsmith_index_u32(22146u, 4u)] ^ u_input.a)), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1026f + 411f) + _wgslsmith_f_op_f32(-arg_0.d.x)) + 661f), arg_0.d.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -895f));
    var var_1 = ~countOneBits(1u);
    let var_2 = func_4(Struct_1(abs(vec3<u32>(~28879u, u_input.b, 0u)), 1i, -(~(u_input.a << (0u % 32u))), vec2<f32>(-2738f, _wgslsmith_f_op_f32(func_2(func_1(Struct_1(vec3<u32>(77419u, u_input.d, u_input.b), 0i, global1[_wgslsmith_index_u32(70405u, 4u)], vec2<f32>(-713f, -358f)), Struct_1(vec3<u32>(1u, 0u, u_input.b), 59174i, 0i, vec2<f32>(-681f, -1761f))))))), true);
    global1 = array<i32, 4>();
    var var_3 = _wgslsmith_f_op_f32(f32(-1f) * -1260f);
    global2 = array<vec4<i32>, 22>();
    let x = u_input.a;
    s_output = StorageBuffer(-339f, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1000f, -446f, 1007f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-700f, var_2.d.x, -324f)), true)) * _wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(vec3<f32>(var_2.d.x, -521f, var_2.d.x), vec3<f32>(var_2.d.x, var_2.d.x, -410f)), vec3<f32>(-686f, var_2.d.x, -475f)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(301f, var_2.d.x, var_2.d.x)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.d.x, var_2.d.x, 108f) + vec3<f32>(-1000f, 815f, 990f))) * vec3<f32>(_wgslsmith_f_op_f32(-var_2.d.x), _wgslsmith_f_op_f32(904f - var_2.d.x), _wgslsmith_f_op_f32(max(1037f, -1196f))))), firstLeadingBit(abs(~var_2.a & ~vec3<u32>(18907u, var_2.a.x, var_2.a.x))));
}

