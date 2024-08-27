struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: f32,
    d: f32,
    e: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: f32,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 3> = array<f32, 3>(818f, 349f, -482f);

var<private> global1: i32 = 65400i;

var<private> global2: Struct_4;

var<private> global3: vec4<bool> = vec4<bool>(false, true, false, false);

var<private> global4: vec3<bool>;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: Struct_3, arg_3: Struct_4) -> f32 {
    global2 = arg_3;
    global3 = !select(select(select(vec4<bool>(false, true, arg_2.e.a.a, true), vec4<bool>(arg_2.a.a, false, false, arg_2.a.a), arg_2.e.a.a), vec4<bool>(global3.x, any(global3.zxy), arg_2.a.a && false, false), !select(vec4<bool>(true, arg_1.a, global3.x, global4.x), vec4<bool>(arg_1.a, false, global4.x, arg_2.e.a.a), true)), !(!(!vec4<bool>(arg_1.a, false, false, true))), arg_1.a);
    let var_0 = arg_3;
    let var_1 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1477f, _wgslsmith_f_op_f32(-1215f * _wgslsmith_f_op_f32(f32(-1f) * -199f))))), 1078f, min(vec4<i32>(global2.c.x | _wgslsmith_add_i32(var_0.c.x, -609i), -(1i >> (u_input.a.x % 32u)), 2147483647i ^ arg_3.c.x, ~(~0i)), global2.c));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_f32(-var_1.b));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.b + var_0.b));
}

fn func_2(arg_0: i32) -> bool {
    var var_0 = global2.c.x;
    let var_1 = Struct_1(!global4.x);
    var var_2 = Struct_4(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.a, -925f) - vec2<f32>(global2.a, global2.b)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-280f, 1165f)))), var_1, Struct_3(Struct_1(global3.x), 1097f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.a)), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.a.x ^ u_input.a.x, 3u)] * global0[_wgslsmith_index_u32(u_input.a.x | u_input.a.x, 3u)]), Struct_2(var_1)), Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -443f)), _wgslsmith_div_f32(-1096f, -1655f), -vec4<i32>(arg_0, global2.c.x, arg_0, arg_0)))), global2.a, -(~select(-global2.c, _wgslsmith_sub_vec4_i32(global2.c, vec4<i32>(53655i, arg_0, global2.c.x, arg_0)), vec4<bool>(global4.x, false, false, global3.x))));
    var_0 = 1i;
    let var_3 = _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(global2.a, _wgslsmith_f_op_f32(global2.a - _wgslsmith_f_op_f32(min(2186f, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.a.x, 3u)] - global0[_wgslsmith_index_u32(u_input.a.x, 3u)]))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec2<f32>(var_2.a, 1250f), var_1, Struct_3(var_1, -232f, var_2.a, global0[_wgslsmith_index_u32(28040u, 3u)], Struct_2(Struct_1(false))), Struct_4(-860f, global0[_wgslsmith_index_u32(u_input.a.x, 3u)], vec4<i32>(arg_0, 27806i, -19224i, arg_0))))), -881f), any(global3.yyx)));
    return all(vec3<bool>(var_1.a, var_1.a, any(select(global3.xzw, !global3.zyy, !vec3<bool>(true, false, var_1.a)))));
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: u32, arg_3: f32) -> vec2<bool> {
    var var_0 = !vec2<bool>(func_2(_wgslsmith_mult_i32(global2.c.x, 0i)), select(false, -global2.c.x > ~arg_0.x, false));
    var var_1 = u_input.a.x;
    global2 = Struct_4(_wgslsmith_f_op_f32(global2.a * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1u, 3u)]))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1898f), arg_3)), arg_0);
    let var_2 = false;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global2.b + global2.a))))));
    return global3.xx;
}

fn func_4(arg_0: vec2<i32>, arg_1: vec2<bool>) -> Struct_1 {
    global0 = array<f32, 3>();
    global1 = _wgslsmith_dot_vec2_i32(max(vec2<i32>(firstTrailingBit(i32(-1i) * -1347i), ~21987i >> ((1u | u_input.a.x) % 32u)), vec2<i32>(arg_0.x, -2147483647i)), vec2<i32>(global2.c.x, ~(i32(-1i) * -31078i)) << (u_input.a % vec2<u32>(32u)));
    let var_0 = Struct_1(true);
    var var_1 = 1u;
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-2259f, global2.b))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1129f, global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(0u, reverseBits(u_input.a.x)), 3u)])) + 2028f));
    return var_0;
}

fn func_5(arg_0: Struct_1, arg_1: i32) -> Struct_4 {
    var var_0 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(vec4<f32>(global2.b, -1000f, global2.b, global2.a), vec4<f32>(global2.a, global0[_wgslsmith_index_u32(0u, 3u)], -695f, global2.b)))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(4294967295u, 3u)], global2.b, global2.a, global2.a))))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 3u)], -1216f, global2.b, -432f)))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-276f, global2.a, global0[_wgslsmith_index_u32(4462u, 3u)], global0[_wgslsmith_index_u32(u_input.a.x, 3u)]))))))));
    global0 = array<f32, 3>();
    global1 = ~select(-global2.c.x, arg_1, arg_0.a);
    global2 = Struct_4(-895f, _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_mult_vec4_i32(select(vec4<i32>(_wgslsmith_mod_i32(-49883i, arg_1), global2.c.x << (u_input.a.x % 32u), ~arg_1, global2.c.x), (vec4<i32>(1i, global2.c.x, 15291i, global2.c.x) ^ vec4<i32>(2147483647i, 2147483647i, 0i, -1i)) ^ (global2.c << (vec4<u32>(u_input.a.x, 4294967295u, 1u, 4294967295u) % vec4<u32>(32u))), global3.x), ~vec4<i32>(_wgslsmith_mult_i32(global2.c.x, -2147483647i), arg_1, ~global2.c.x, -38756i)));
    global4 = select(vec3<bool>(arg_0.a, func_4(-(~vec2<i32>(arg_1, 1i)), global4.yx).a, global4.x), !vec3<bool>(false, false, any(select(global3.www, global3.wxz, arg_0.a))), true);
    return Struct_4(_wgslsmith_div_f32(-455f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a.x, 3u)]))), 797f)), _wgslsmith_f_op_f32(f32(-1f) * -829f), _wgslsmith_div_vec4_i32(reverseBits(global2.c), ~_wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, arg_1, arg_1, global2.c.x), select(vec4<i32>(-21601i, arg_1, 0i, global2.c.x), vec4<i32>(-2147483647i, arg_1, 43236i, -32985i), vec4<bool>(global4.x, global3.x, arg_0.a, arg_0.a)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(func_4(vec2<i32>(global2.c.x, 2147483647i), select(!vec2<bool>(global4.x, global4.x), vec2<bool>(global4.x, all(global4.zy)), select(func_1(global2.c, Struct_2(Struct_1(global3.x)), u_input.a.x, -2010f), global4.zx, global4.yy))), _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(global2.c.wx, global2.c.yy), vec2<i32>(reverseBits(_wgslsmith_dot_vec4_i32(global2.c, vec4<i32>(global2.c.x, 1i, -36455i, 0i))), 13329i)));
    global4 = select(select(global3.xzx, vec3<bool>(true, false, !(!global4.x)), select(select(select(vec3<bool>(global3.x, false, global4.x), global3.yzw, false), select(vec3<bool>(global3.x, false, true), vec3<bool>(true, true, global4.x), vec3<bool>(false, true, global4.x)), global3.x), global3.xyy, vec3<bool>(false, u_input.a.x != 8622u, all(global3.yyz)))), global3.zzx, !global3.ywx);
    var var_1 = Struct_4(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.a) * 619f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(-647f)))) + _wgslsmith_f_op_f32(func_3(vec2<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 3u)], 916f), Struct_1(global4.x), Struct_3(Struct_1(global4.x), global2.b, 720f, -1000f, Struct_2(Struct_1(global4.x))), func_5(Struct_1(true), 2147483647i))))), -_wgslsmith_add_vec4_i32(var_0.c, abs(global2.c)));
    let var_2 = true;
    var var_3 = func_5(func_4(~func_5(func_4(vec2<i32>(-10618i, 0i), global3.zw), ~global2.c.x).c.zw, select(vec2<bool>(true, false), !global4.xz, all(vec4<bool>(true, true, global4.x, false)))), -50620i);
    let var_4 = Struct_3(Struct_1(false), _wgslsmith_f_op_f32(-2284f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(30934u, 3u)], global0[_wgslsmith_index_u32(24796u, 3u)], false)), _wgslsmith_f_op_f32(sign(var_3.a)), global4.x && true)))), _wgslsmith_div_f32(257f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(-544f, var_0.b)))) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(158f)))))), _wgslsmith_f_op_f32(var_0.a + _wgslsmith_f_op_f32(-457f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b)))), Struct_2(Struct_1(!global4.x)));
    var_3 = func_5(func_4(firstLeadingBit(vec2<i32>(global2.c.x, _wgslsmith_dot_vec2_i32(var_0.c.yx, vec2<i32>(global2.c.x, -14611i)))), vec2<bool>(false | global3.x, select(var_2, var_0.b > -1000f, func_1(var_3.c, var_4.e, 25217u, var_1.b).x))), -(~_wgslsmith_mult_i32(var_1.c.x, 1i)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_3.b, global0[_wgslsmith_index_u32(1u, 3u)]) - _wgslsmith_f_op_vec2_f32(max(vec2<f32>(1196f, 917f), vec2<f32>(-1207f, -1000f)))) * _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-667f, 939f), _wgslsmith_div_vec2_f32(vec2<f32>(var_4.b, var_4.b), vec2<f32>(-434f, global0[_wgslsmith_index_u32(u_input.a.x, 3u)]))))), _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(var_0.b, -451f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.a, var_3.a))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(441f, global0[_wgslsmith_index_u32(u_input.a.x, 3u)]), vec2<f32>(-864f, var_4.d))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 3u)], -515f)))))), firstTrailingBit(vec3<u32>(countOneBits(3356u), 1u, 4294967295u)));
}

