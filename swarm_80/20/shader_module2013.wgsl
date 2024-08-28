struct Struct_1 {
    a: vec2<f32>,
    b: u32,
    c: bool,
    d: vec2<u32>,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: bool,
    d: Struct_1,
    e: vec2<bool>,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: vec3<u32>,
    b: f32,
    c: i32,
    d: u32,
}

struct Struct_5 {
    a: Struct_2,
    b: f32,
    c: vec4<i32>,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: vec4<f32>,
    d: f32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 29>;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_3, arg_1: u32, arg_2: i32, arg_3: Struct_3) -> bool {
    var var_0 = ~(~reverseBits(abs(select(vec2<u32>(1u, u_input.a), vec2<u32>(34031u, arg_1), false))));
    let var_1 = Struct_3(arg_3.a);
    var var_2 = ~0u;
    var var_3 = Struct_4(vec3<u32>(~u_input.b << (var_0.x % 32u), var_0.x, ~(~max(var_0.x, 0u))), -462f, firstLeadingBit(~(-2147483647i)), 40959u);
    var_3 = Struct_4(~vec3<u32>(u_input.a, _wgslsmith_div_u32(37641u, var_0.x), var_3.a.x) ^ vec3<u32>(reverseBits(~var_0.x), ~(0u | var_0.x), _wgslsmith_mod_u32(arg_1, _wgslsmith_sub_u32(arg_1, var_3.d))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(1506f, arg_3.a) + arg_3.a)))), -13014i, _wgslsmith_div_u32(~0u, select(1u, _wgslsmith_add_u32(~45533u, ~var_3.a.x), true)));
    return true;
}

fn func_4(arg_0: i32, arg_1: u32, arg_2: Struct_2) -> vec4<bool> {
    var var_0 = -(~(~(-abs(vec2<i32>(arg_0, -8206i)))));
    var var_1 = Struct_5(arg_2, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(ceil(-2536f)))))))), select(vec4<i32>(i32(-1i) * -1i, var_0.x, firstTrailingBit(arg_0), _wgslsmith_add_i32(~61370i, 17778i)), firstTrailingBit(firstLeadingBit(vec4<i32>(-37230i, arg_0, -259i, 2147483647i))), select(select(select(vec4<bool>(true, arg_2.d.c, false, true), vec4<bool>(arg_2.d.c, arg_2.e.x, arg_2.d.c, true), arg_2.c), !vec4<bool>(arg_2.d.c, arg_2.e.x, arg_2.e.x, arg_2.e.x), arg_2.c && arg_2.c), vec4<bool>(arg_2.e.x, !arg_2.c, arg_2.d.c, true), all(vec3<bool>(true, true, true)))), vec3<i32>(countOneBits(_wgslsmith_clamp_i32(arg_0, var_0.x, var_0.x) | -11001i), arg_0, abs(32123i) << (0u % 32u)));
    global0 = array<f32, 29>();
    global0 = array<f32, 29>();
    return select(select(!vec4<bool>(var_1.a.c, select(false, arg_2.c, var_1.a.e.x), arg_2.d.c & var_1.a.d.c, arg_2.d.b == arg_1), !select(vec4<bool>(false, false, false, false), vec4<bool>(var_1.a.c, true, true, var_1.a.d.c), any(vec3<bool>(false, true, arg_2.d.c))), select(select(!vec4<bool>(var_1.a.c, true, false, var_1.a.c), select(vec4<bool>(true, true, var_1.a.d.c, true), vec4<bool>(arg_2.d.c, true, arg_2.c, var_1.a.e.x), arg_2.c), arg_2.d.c), vec4<bool>(true, true, all(vec3<bool>(true, arg_2.e.x, true)), var_1.a.d.c), false)), vec4<bool>(all(!(!arg_2.e)), _wgslsmith_mod_i32(_wgslsmith_mult_i32(arg_0, var_1.d.x), _wgslsmith_add_i32(1i, var_1.c.x)) != ~(-16879i), any(!select(vec4<bool>(arg_2.c, false, var_1.a.c, false), vec4<bool>(true, arg_2.e.x, arg_2.e.x, arg_2.c), false)), true), select(!select(vec4<bool>(var_1.a.e.x, true, true, false), vec4<bool>(var_1.a.d.c, var_1.a.e.x, true, false), select(vec4<bool>(true, arg_2.e.x, var_1.a.e.x, arg_2.c), vec4<bool>(true, true, arg_2.d.c, true), vec4<bool>(false, true, arg_2.e.x, var_1.a.c))), vec4<bool>(var_1.a.c, select(select(true, arg_2.d.c, false), arg_2.e.x, arg_2.e.x), !(arg_2.d.a.x < -351f), all(vec2<bool>(false, arg_2.d.c))), any(vec4<bool>(arg_2.d.c, 757f != global0[_wgslsmith_index_u32(var_1.a.d.d.x, 29u)], var_0.x <= -1i, var_1.a.c && var_1.a.c))));
}

fn func_2() -> vec4<bool> {
    var var_0 = ~(~_wgslsmith_dot_vec3_i32(~countOneBits(vec3<i32>(-6374i, 0i, -28422i)), max(vec3<i32>(31656i, 27054i, 9087i), _wgslsmith_div_vec3_i32(vec3<i32>(-2147483647i, -8417i, -2147483647i), vec3<i32>(2147483647i, -2147483647i, -7802i)))));
    var var_1 = Struct_4(vec3<u32>(~42174u, u_input.a, u_input.a), 1f, reverseBits(14556i), 1u);
    return func_4(-70521i, u_input.a, Struct_2(_wgslsmith_mult_u32(~u_input.b ^ _wgslsmith_div_u32(11156u, u_input.a), u_input.b), 1000f, !(func_3(Struct_3(-731f), 34730u, 0i, Struct_3(global0[_wgslsmith_index_u32(4294967295u, 29u)])) & true), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-827f, -884f) * vec2<f32>(var_1.b, var_1.b))), u_input.b, any(select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), true)), _wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(var_1.a.x, var_1.a.x), var_1.a.zz), ~var_1.a.zz)), vec2<bool>(true, true)));
}

fn func_5(arg_0: vec4<f32>, arg_1: i32, arg_2: vec4<bool>) -> Struct_5 {
    global0 = array<f32, 29>();
    global0 = array<f32, 29>();
    var var_0 = ~max(_wgslsmith_mod_vec3_i32(-vec3<i32>(arg_1, arg_1, 1i) << (vec3<u32>(1u, 56052u, 1u) % vec3<u32>(32u)), -vec3<i32>(arg_1, arg_1, 1i)), (~vec3<i32>(18208i, 59041i, 2147483647i) << (countOneBits(vec3<u32>(u_input.a, u_input.a, u_input.b)) % vec3<u32>(32u))) ^ ~abs(vec3<i32>(0i, -8863i, 33261i)));
    var var_1 = u_input.a;
    let var_2 = func_2();
    return Struct_5(Struct_2(4294967295u | (abs(u_input.b) & ~u_input.b), 680f, all(arg_2.xxy), Struct_1(_wgslsmith_f_op_vec2_f32(-arg_0.xx), u_input.a, true, vec2<u32>(~24467u, ~u_input.a)), !var_2.wy), 473f, countOneBits(vec4<i32>(~max(var_0.x, -1i), -arg_1, arg_1, _wgslsmith_dot_vec3_i32(~vec3<i32>(-52600i, var_0.x, arg_1), -vec3<i32>(var_0.x, arg_1, arg_1)))), reverseBits(abs(abs(vec3<i32>(var_0.x, arg_1, -21081i)) | vec3<i32>(19212i, -35225i, var_0.x))));
}

fn func_1(arg_0: bool, arg_1: vec3<f32>) -> vec2<u32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a, 29u)]), 1493f))))));
    var var_1 = func_5(vec4<f32>(global0[_wgslsmith_index_u32(u_input.b | u_input.b, 29u)], _wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x))), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~4294967295u, 29u)]), 210f), 2147483647i, !select(vec4<bool>(!arg_0, arg_0, arg_0, arg_0), vec4<bool>(false, arg_0, !arg_0, true), !func_2()));
    let var_2 = func_5(vec4<f32>(-833f, arg_1.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.b, 29u)] + global0[_wgslsmith_index_u32(u_input.a, 29u)]), _wgslsmith_f_op_f32(var_1.a.d.a.x + global0[_wgslsmith_index_u32(54983u << (var_1.a.a % 32u), 29u)])), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(867f - var_1.b) - _wgslsmith_div_f32(global0[_wgslsmith_index_u32(u_input.b, 29u)], global0[_wgslsmith_index_u32(var_1.a.a, 29u)])), var_1.a.b))), var_1.d.x, !vec4<bool>(!(var_1.a.d.c | true), var_1.c.x > countOneBits(var_1.c.x), func_5(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_1.x, var_1.a.d.a.x, arg_1.x, global0[_wgslsmith_index_u32(0u, 29u)]))), -43166i, !vec4<bool>(var_1.a.c, var_1.a.d.c, false, var_1.a.d.c)).a.c, any(vec3<bool>(arg_0, var_1.a.e.x, var_1.a.e.x)))).a.d;
    let var_3 = vec4<bool>(true, false && var_2.c, !var_1.a.d.c, func_4(_wgslsmith_dot_vec2_i32(vec2<i32>(-20332i, 1i), var_1.d.yx), abs(_wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, var_1.a.a), var_1.a.d.d & vec2<u32>(var_2.b, u_input.a))), var_1.a).x);
    var var_4 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_1.a.b)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(399f, _wgslsmith_f_op_f32(round(var_1.a.d.a.x)))) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -221f))))));
    return vec2<u32>(~_wgslsmith_mod_u32(var_1.a.d.b, 22754u), _wgslsmith_add_u32(max(16044u ^ var_2.d.x, ~var_1.a.d.b), var_1.a.d.d.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(global0[_wgslsmith_index_u32(u_input.b, 29u)], _wgslsmith_f_op_f32(f32(-1f) * -281f)))))), _wgslsmith_div_u32(u_input.a, ~1u), (abs(select(28224i, 2147483647i, false)) & max(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, -45357i), vec2<i32>(-19632i, -1i)), 0i)) <= -6813i, _wgslsmith_mult_vec2_u32(func_1(true, _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -270f, 270f))), vec2<u32>(18757u, u_input.a)) | reverseBits(firstTrailingBit(abs(vec2<u32>(u_input.a, 36686u)))));
    var var_1 = Struct_3(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(var_0.d.x << (~var_0.b % 32u), max(u_input.b, var_0.d.x)), 29u)]));
    let var_2 = _wgslsmith_div_f32(global0[_wgslsmith_index_u32(~u_input.b | _wgslsmith_mult_u32(_wgslsmith_mod_u32(var_0.b, var_0.d.x) ^ ~var_0.b, u_input.a), 29u)], var_1.a);
    var_1 = Struct_3(-1145f);
    let var_3 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-345f, -566f))) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2, -1000f)), _wgslsmith_f_op_vec2_f32(var_0.a + var_0.a), true))))), vec2<f32>(var_2, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-904f, var_2))))), vec2<bool>(!(true != (u_input.a <= u_input.a)), 22417u == select(u_input.b, _wgslsmith_sub_u32(0u, var_0.b), all(vec4<bool>(false, var_0.c, var_0.c, false))))));
    let var_4 = firstLeadingBit(vec3<u32>(~39315u, ~28999u, 0u));
    global0 = array<f32, 29>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(func_5(vec4<f32>(var_1.a, var_2, var_1.a, 1000f), -8976i, vec4<bool>(var_0.c, var_0.c, true, true)).b, -1000f, _wgslsmith_f_op_f32(abs(var_2)), -1206f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2, global0[_wgslsmith_index_u32(0u, 29u)], -2602f, -675f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(exp2(var_3.x)), 316f, _wgslsmith_f_op_f32(-var_1.a), global0[_wgslsmith_index_u32(abs(var_0.b), 29u)]))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(var_1.a, 613f), -290f, all(vec4<bool>(var_0.c, var_0.c, true, var_0.c)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(531f, global0[_wgslsmith_index_u32(0u, 29u)])) * _wgslsmith_div_f32(950f, 833f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(82928u, 29u)], 317f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_0.a.x, var_0.a.x, global0[_wgslsmith_index_u32(var_4.x, 29u)], -241f))))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_3.x - 110f))), var_0.a);
}

