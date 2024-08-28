struct Struct_1 {
    a: vec2<u32>,
    b: vec2<f32>,
    c: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: f32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 6> = array<vec3<bool>, 6>(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(false, true, false));

var<private> global1: i32 = -36170i;

var<private> global2: Struct_2 = Struct_2(Struct_1(vec2<u32>(15662u, 68852u), vec2<f32>(893f, 302f), vec2<f32>(429f, -1647f)), Struct_1(vec2<u32>(4294967295u, 27544u), vec2<f32>(-862f, -919f), vec2<f32>(318f, -1098f)), -1258f, Struct_1(vec2<u32>(31777u, 0u), vec2<f32>(490f, -1000f), vec2<f32>(709f, -1325f)));

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: vec4<i32>, arg_1: i32, arg_2: bool) -> vec2<f32> {
    let var_0 = ~select(_wgslsmith_mod_vec3_i32(vec3<i32>(_wgslsmith_div_i32(25091i, -18240i), abs(u_input.b.x), -29469i), -u_input.b.yzz), -select(_wgslsmith_sub_vec3_i32(arg_0.ywy, arg_0.zwy), vec3<i32>(arg_0.x, 3568i, 22640i), arg_1 > arg_0.x), !(!select(true, false, arg_2)));
    let var_1 = !vec4<bool>(any(vec3<bool>(true && arg_2, true, true)), true, false, any(!vec4<bool>(arg_2, false, true, arg_2)) & all(vec3<bool>(false, true, false)));
    let var_2 = -u_input.b.yx;
    let var_3 = _wgslsmith_add_vec3_i32(vec3<i32>(0i, u_input.b.x, var_2.x), arg_0.wyx);
    var var_4 = -(~(firstTrailingBit(~var_3.x) ^ -var_0.x));
    return _wgslsmith_f_op_vec2_f32(max(vec2<f32>(global2.b.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.b.c.x) - 704f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-361f, _wgslsmith_div_f32(global2.b.c.x, global2.c))))));
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_1(vec2<u32>(50831u, ~_wgslsmith_div_u32(global2.d.a.x, u_input.a)), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1620f, -1240f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.c, -2118f)))), _wgslsmith_f_op_vec2_f32(global2.d.b * _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global2.d.b.x, global2.a.b.x))), _wgslsmith_f_op_vec2_f32(func_3(vec4<i32>(0i, u_input.b.x, u_input.b.x, u_input.b.x), -56950i, true))))))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -151f), global2.a.b.x));
    let var_1 = _wgslsmith_f_op_f32(1297f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.c.x), 1014f)))));
    var var_2 = !(!(!(!select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false), true))));
    var_2 = select(!select(!vec4<bool>(true, var_2.x, var_2.x, var_2.x), vec4<bool>(false, all(global0[_wgslsmith_index_u32(35116u, 6u)]), !var_2.x, select(var_2.x, var_2.x, true)), select(!vec4<bool>(var_2.x, var_2.x, false, var_2.x), select(vec4<bool>(var_2.x, false, var_2.x, var_2.x), vec4<bool>(false, var_2.x, true, var_2.x), var_2.x), true)), vec4<bool>(all(vec2<bool>(!var_2.x, var_2.x | false)), true & (var_2.x != (560f != var_1)), false, true), var_2.x);
    global0 = array<vec3<bool>, 6>();
    return Struct_2(Struct_1(~select(~global2.d.a, _wgslsmith_mod_vec2_u32(vec2<u32>(global2.a.a.x, 87916u), global2.a.a), select(vec2<bool>(false, true), var_2.xz, vec2<bool>(var_2.x, var_2.x))), global2.d.c, _wgslsmith_f_op_vec2_f32(select(var_0.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_0.b, vec2<f32>(948f, var_1))), true))), global2.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global2.b.b.x))) + -717f), var_0);
}

fn func_1() -> Struct_2 {
    var var_0 = func_2();
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(-func_2().a.b.x), _wgslsmith_f_op_f32(global2.b.b.x + _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1003f - var_0.a.b.x), _wgslsmith_f_op_f32(global2.d.c.x - global2.a.b.x)) + -1078f)), _wgslsmith_f_op_f32(-global2.a.c.x));
    var_0 = func_2();
    global2 = func_2();
    var var_2 = countOneBits(select(abs(abs(~vec4<u32>(36161u, u_input.a, global2.d.a.x, 1u))), ~select(vec4<u32>(u_input.a, global2.d.a.x, global2.b.a.x, 0u), _wgslsmith_div_vec4_u32(vec4<u32>(var_0.b.a.x, u_input.a, u_input.a, 67689u), vec4<u32>(global2.b.a.x, 51829u, var_0.b.a.x, 26282u)), vec4<bool>(true, true, true, true)), (24801u >= _wgslsmith_mod_u32(u_input.a, global2.a.a.x)) | !(global2.d.a.x != 0u)));
    return Struct_2(func_2().d, global2.b, var_1.x, var_0.b);
}

fn func_4(arg_0: Struct_2, arg_1: bool) -> Struct_2 {
    global0 = array<vec3<bool>, 6>();
    global0 = array<vec3<bool>, 6>();
    let var_0 = ~arg_0.d.a.x;
    global2 = Struct_2(Struct_1(~(~(~global2.d.a)), func_2().d.b, arg_0.b.c), Struct_1(arg_0.b.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(143f, -1467f), arg_0.a.b))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(584f, arg_0.d.c.x), arg_0.a.c, vec2<bool>(false, arg_1))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -893f)))), Struct_1(~min(func_2().b.a, arg_0.b.a), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, arg_0.a.c.x))), arg_0.b.b));
    global1 = 0i;
    return func_1();
}

fn func_5(arg_0: vec3<f32>, arg_1: vec3<bool>, arg_2: Struct_2, arg_3: i32) -> vec3<bool> {
    let var_0 = arg_3;
    var var_1 = !any(!arg_1.zz);
    global2 = arg_2;
    let var_2 = Struct_1(vec2<u32>(func_2().a.a.x, func_4(Struct_2(Struct_1(vec2<u32>(arg_2.d.a.x, arg_2.a.a.x), arg_0.yx, arg_2.a.b), func_1().d, _wgslsmith_f_op_f32(min(661f, 1163f)), Struct_1(vec2<u32>(u_input.a, 37193u), arg_0.zy, vec2<f32>(arg_0.x, global2.a.c.x))), arg_1.x).d.a.x), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(sign(-263f)), _wgslsmith_f_op_f32(abs(arg_2.c))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.a.c.x, -189f))), true)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(171f, -1068f)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.c, arg_2.b.b.x)) + arg_0.yx))));
    var var_3 = Struct_1(_wgslsmith_mult_vec2_u32(select(global2.d.a, ~(~var_2.a), true), ~_wgslsmith_sub_vec2_u32(select(vec2<u32>(32839u, 9694u), global2.a.a, arg_1.zy), var_2.a)), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.b.x) + 855f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.c) + -1417f)), global2.b.c.x), vec2<f32>(arg_2.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.d.b.x)) + _wgslsmith_f_op_f32(-186f - _wgslsmith_f_op_f32(-var_2.c.x)))));
    return vec3<bool>(all(select(vec4<bool>(true, any(vec4<bool>(arg_1.x, arg_1.x, true, arg_1.x)), arg_1.x, true), vec4<bool>(arg_1.x, false, !arg_1.x, select(arg_1.x, arg_1.x, arg_1.x)), true)), true, false);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(vec3<f32>(-975f, _wgslsmith_f_op_f32(-global2.a.b.x), -188f), global0[_wgslsmith_index_u32(0u, 6u)], func_4(func_1(), select(false, all(select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), false)), select(true, true, any(vec4<bool>(true, false, false, false))))), u_input.b.x);
    global2 = func_4(Struct_2(Struct_1(vec2<u32>(u_input.a, _wgslsmith_div_u32(1u, 35940u)), global2.d.c, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(global2.a.b)), _wgslsmith_f_op_vec2_f32(vec2<f32>(179f, global2.d.b.x) + vec2<f32>(global2.d.c.x, global2.b.b.x)))), Struct_1(select(vec2<u32>(26466u, 1u), global2.d.a, select(var_0.x, true, true)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.a.b.x, global2.d.c.x) - global2.d.b) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(359f, 725f))), _wgslsmith_f_op_vec2_f32(-global2.b.c)), _wgslsmith_div_f32(210f, 1000f), func_1().d), !(true == var_0.x));
    global2 = Struct_2(Struct_1(func_2().d.a, global2.b.c, vec2<f32>(global2.b.c.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2.c, 289f)))), global2.d, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_vec2_f32(func_3(u_input.b << (vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a) % vec4<u32>(32u)), -u_input.b.x, var_0.x)).x - _wgslsmith_f_op_f32(-273f - global2.d.c.x)))), func_4(func_1(), true).a);
    var var_1 = var_0.x;
    var var_2 = _wgslsmith_mod_vec2_u32(_wgslsmith_mult_vec2_u32(global2.d.a, global2.d.a), vec2<u32>(~_wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, 19006u, 55691u, 4294967295u), ~vec4<u32>(global2.a.a.x, 4294967295u, 68972u, 4294967295u)), _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(78505u, 1u, 31362u, 6918u), vec4<u32>(global2.d.a.x, 1u, 1u, u_input.a), vec4<u32>(u_input.a, u_input.a, global2.a.a.x, 1u)) >> (select(vec4<u32>(u_input.a, 4294967295u, 1u, 1u), vec4<u32>(u_input.a, 5997u, 68901u, 82892u), true) % vec4<u32>(32u)), ~reverseBits(vec4<u32>(u_input.a, u_input.a, global2.b.a.x, u_input.a)))));
    global2 = Struct_2(global2.b, Struct_1(global2.b.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global2.b.b) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(406f, 541f)), _wgslsmith_f_op_vec2_f32(max(global2.d.b, vec2<f32>(-232f, 505f))), !var_0.x))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global2.b.c.x, global2.c, var_0.x))), 1448f)), 2583f, Struct_1(vec2<u32>(func_2().a.a.x, select(~var_2.x, ~u_input.a, var_0.x)), global2.d.b, vec2<f32>(1222f, -652f)));
    let var_3 = Struct_2(Struct_1(~vec2<u32>(1u, var_2.x), vec2<f32>(_wgslsmith_f_op_f32(sign(global2.b.b.x)), _wgslsmith_f_op_f32(sign(func_1().d.b.x))), global2.a.c), global2.b, global2.c, global2.d);
    let x = u_input.a;
    s_output = StorageBuffer(var_3.a.a, _wgslsmith_add_u32(~global2.d.a.x, 0u), global2.a.c.x, vec2<i32>(~(~(u_input.b.x << (var_3.d.a.x % 32u))), u_input.b.x));
}

