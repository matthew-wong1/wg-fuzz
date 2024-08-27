struct Struct_1 {
    a: bool,
    b: i32,
    c: bool,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_1) -> vec3<bool> {
    global0 = !(!vec3<bool>(false, arg_0.a, arg_0.c));
    let var_0 = Struct_1(arg_0.c, ~u_input.c.x, any(vec2<bool>(any(!vec4<bool>(false, arg_0.c, true, true)), arg_0.a)), !arg_0.d);
    let var_1 = -10358i;
    global0 = vec3<bool>(true, global0.x, false & (~(~0u) < reverseBits(u_input.d)));
    let var_2 = select(select(select(select(vec2<bool>(true, true), select(global0.xz, vec2<bool>(var_0.a, arg_0.c), true), all(vec4<bool>(false, false, true, arg_0.a))), global0.zz, !(!global0.x)), vec2<bool>(all(!vec3<bool>(global0.x, global0.x, var_0.d.x)), true), vec2<bool>(false, arg_0.a)), var_0.d.zz, !vec2<bool>(true, all(!arg_0.d.xz)));
    return arg_0.d;
}

fn func_2() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(121f, -285f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-571f)) * 1059f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(386f)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(1410f, 870f))), -1300f))));
    let var_1 = Struct_1(all(!select(select(vec4<bool>(global0.x, global0.x, global0.x, false), vec4<bool>(global0.x, true, false, false), true), !vec4<bool>(global0.x, false, global0.x, global0.x), !vec4<bool>(false, false, global0.x, global0.x))), u_input.a, true, !(!vec3<bool>(!global0.x, false, global0.x)));
    let var_2 = var_1;
    var var_3 = var_1;
    global0 = func_3(Struct_1(false, 21153i, true, select(vec3<bool>(true, true, true), vec3<bool>(!var_2.d.x, true, true), var_1.d)));
    return var_1;
}

fn func_1() -> Struct_1 {
    var var_0 = func_2();
    let var_1 = ~u_input.b.x;
    var_0 = Struct_1(!func_2().c, reverseBits(var_0.b), true, !vec3<bool>(var_0.c, true, var_0.b < 2147483647i));
    global0 = vec3<bool>(all(vec4<bool>(!(!global0.x), var_0.a, false, global0.x)), false, !(abs(4294967295u) < u_input.d));
    let var_2 = Struct_1(!all(!var_0.d), _wgslsmith_sub_i32(u_input.c.x, _wgslsmith_sub_i32(var_1 | var_0.b, _wgslsmith_mult_i32(var_1, -40730i))) << (118132u % 32u), !((3143u == _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d, u_input.d, 55781u), vec3<u32>(u_input.d, 4294967295u, 4294967295u))) == false), vec3<bool>(true, true, true));
    return Struct_1(_wgslsmith_dot_vec4_i32(u_input.b, u_input.b) != (((-25845i | u_input.b.x) >> (_wgslsmith_dot_vec2_u32(vec2<u32>(56282u, 18151u), vec2<u32>(1u, u_input.d)) % 32u)) | _wgslsmith_mod_i32(_wgslsmith_mod_i32(var_1, 2147483647i), var_0.b >> (u_input.d % 32u))), _wgslsmith_dot_vec3_i32(~max(vec3<i32>(2147483647i, var_0.b, 0i), u_input.c.xwz), u_input.c.wwy >> (_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 61715u, 4294967295u), vec3<u32>(u_input.d, 0u, 183u)) % vec3<u32>(32u))) & firstTrailingBit(var_1), !all(!vec4<bool>(true, var_2.c, var_0.a, false)), func_3(func_2()));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> vec4<f32> {
    global0 = vec3<bool>(!arg_0.c, false, arg_1.c);
    global0 = !func_1().d;
    let var_0 = 0u;
    let var_1 = ~(~(_wgslsmith_div_vec2_u32(vec2<u32>(1u, u_input.d), vec2<u32>(u_input.d, 4294967295u) ^ vec2<u32>(13623u, 85968u)) ^ _wgslsmith_add_vec2_u32(vec2<u32>(var_0, var_0), min(vec2<u32>(var_0, u_input.d), vec2<u32>(0u, u_input.d)))));
    var var_2 = vec4<i32>(arg_1.b, 39658i, 45138i >> (_wgslsmith_mult_u32(var_0, var_1.x) % 32u), -21201i);
    return _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-297f, -1422f, 169f, -524f)) + _wgslsmith_div_vec4_f32(vec4<f32>(139f, -391f, 508f, 1014f), vec4<f32>(-195f, -2847f, 132f, -1387f)))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(677f + -784f) - _wgslsmith_f_op_f32(-1422f - 611f)), 1f, _wgslsmith_f_op_f32(-1f), -1563f), !select(true, arg_1.d.x, arg_2.a) & true)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-2006f * _wgslsmith_f_op_f32(ceil(1426f))), _wgslsmith_f_op_f32(f32(-1f) * -249f), _wgslsmith_f_op_f32(1676f - -753f), _wgslsmith_f_op_f32(f32(-1f) * -377f)))));
}

fn func_5(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: i32) -> vec3<bool> {
    global0 = !func_2().d;
    var var_0 = u_input.d;
    var var_1 = reverseBits(u_input.d);
    var_1 = _wgslsmith_mult_u32(50696u, _wgslsmith_mod_u32(u_input.d, max(7026u, u_input.d)));
    var_1 = ~11064u;
    return !arg_0.d;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    let var_1 = (vec4<u32>(u_input.d, countOneBits(~u_input.d), 1u, u_input.d) >> (vec4<u32>(0u, u_input.d, u_input.d, 39761u) % vec4<u32>(32u))) >> (vec4<u32>(abs(u_input.d), 68525u, 1u | u_input.d, min((16867u ^ u_input.d) << (firstLeadingBit(98916u) % 32u), firstTrailingBit(firstTrailingBit(u_input.d)))) % vec4<u32>(32u));
    global0 = !(!(!(!vec3<bool>(global0.x, global0.x, global0.x))));
    global0 = vec3<bool>(false, !(!all(select(vec3<bool>(false, var_0, var_0), vec3<bool>(true, true, global0.x), vec3<bool>(global0.x, var_0, global0.x)))), var_0 & true);
    let var_2 = var_1;
    global0 = select(select(!(!select(vec3<bool>(true, false, false), vec3<bool>(true, global0.x, false), vec3<bool>(false, var_0, true))), vec3<bool>(var_0, true, var_0), !var_0), !(!(!select(vec3<bool>(false, var_0, var_0), vec3<bool>(true, global0.x, var_0), var_0))), func_5(Struct_1(select(global0.x, any(vec3<bool>(false, true, false)), var_0), i32(-1i) * -39417i, false, select(!vec3<bool>(var_0, global0.x, true), select(vec3<bool>(false, true, false), vec3<bool>(true, false, global0.x), vec3<bool>(global0.x, global0.x, global0.x)), var_0)), _wgslsmith_f_op_vec4_f32(func_4(func_1(), Struct_1(true, u_input.b.x | -3353i, 2147483647i >= u_input.c.x, vec3<bool>(true, true, global0.x)), Struct_1(true, 38277i >> (var_2.x % 32u), all(vec4<bool>(false, var_0, false, global0.x)), func_3(Struct_1(true, u_input.b.x, true, vec3<bool>(true, var_0, false)))))), _wgslsmith_dot_vec2_i32(-u_input.c.wy, u_input.c.ww)));
    global0 = func_3(func_2());
    global0 = func_1().d;
    let x = u_input.a;
    s_output = StorageBuffer(~var_2.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(1f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-1000f, 844f)), -1599f))));
}

