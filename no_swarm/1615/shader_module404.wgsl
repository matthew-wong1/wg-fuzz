struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: f32,
    b: vec3<f32>,
    c: i32,
    d: Struct_1,
    e: bool,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: bool;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_2(arg_0: vec2<u32>, arg_1: vec2<f32>, arg_2: Struct_2) -> Struct_3 {
    var var_0 = u_input.c.x ^ u_input.c.x;
    global1 = !arg_2.e;
    global0 = u_input.c.x != max(112932u, ~abs(30013u) << (u_input.c.x % 32u));
    var var_1 = _wgslsmith_f_op_f32(arg_2.a + _wgslsmith_f_op_f32(sign(arg_1.x)));
    let var_2 = arg_0.x;
    return Struct_3(arg_2);
}

fn func_1(arg_0: vec4<u32>, arg_1: vec2<i32>, arg_2: Struct_2) -> i32 {
    global0 = true;
    var var_0 = func_2(vec2<u32>(_wgslsmith_sub_u32(29914u, countOneBits(reverseBits(arg_0.x))), ~max(~13670u, u_input.c.x >> (4294967295u % 32u))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-arg_2.d.a), arg_2.b.x) * _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1000f, 944f), _wgslsmith_div_vec2_f32(arg_2.b.yy, arg_2.b.yz)))) - vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.b.x)), 1150f)), arg_2);
    var var_1 = func_2(reverseBits(u_input.c), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(step(-1000f, 1000f)), -1227f), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.a.b.x, -968f))), _wgslsmith_f_op_f32(var_0.a.d.a + _wgslsmith_f_op_f32(-1000f - var_0.a.b.x))))), Struct_2(-803f, _wgslsmith_f_op_vec3_f32(vec3<f32>(427f, _wgslsmith_f_op_f32(arg_2.b.x - 1592f), arg_2.b.x) + arg_2.b), -1i, func_2(~(u_input.c >> (arg_0.yx % vec2<u32>(32u))), vec2<f32>(arg_2.b.x, _wgslsmith_f_op_f32(select(var_0.a.a, var_0.a.b.x, false))), func_2(u_input.c >> (u_input.c % vec2<u32>(32u)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.a, -349f)), var_0.a).a).a.d, !all(select(vec4<bool>(var_0.a.e, var_0.a.e, true, false), vec4<bool>(false, var_0.a.e, var_0.a.e, var_0.a.e), false)))).a.d;
    var_1 = Struct_1(var_0.a.a);
    let var_2 = !vec4<bool>(false, arg_2.e, var_0.a.e, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(192f, var_0.a.b.x)) <= _wgslsmith_f_op_f32(-var_0.a.d.a));
    return 0i << (_wgslsmith_dot_vec3_u32(arg_0.wyy, arg_0.xyw) % 32u);
}

fn func_3(arg_0: u32, arg_1: f32) -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_1, -642f)))))));
    global0 = true | func_2(vec2<u32>(~firstTrailingBit(0u), ~(~64015u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, -2024f)), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_0, -471f))), true))), Struct_2(arg_1, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, var_0, var_0) - vec3<f32>(arg_1, arg_1, arg_1)))), 65863i, func_2(_wgslsmith_mult_vec2_u32(u_input.c, u_input.c), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1, 1000f) * vec2<f32>(var_0, 604f)), func_2(u_input.c, vec2<f32>(var_0, 1103f), Struct_2(832f, vec3<f32>(var_0, -260f, 910f), u_input.a.x, Struct_1(arg_1), false)).a).a.d, func_2(~u_input.c, _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(arg_1, 1000f))), func_2(u_input.c, vec2<f32>(arg_1, var_0), Struct_2(var_0, vec3<f32>(var_0, arg_1, var_0), u_input.b, Struct_1(1248f), false)).a).a.e)).a.e;
    let var_1 = func_2(u_input.c, _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(-arg_1), 1f))))), Struct_2(_wgslsmith_f_op_f32(-1058f - -1059f), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0, arg_1, arg_1), vec3<f32>(-1772f, var_0, arg_1), false))))), u_input.a.x, func_2(select(_wgslsmith_sub_vec2_u32(vec2<u32>(arg_0, 4294967295u), u_input.c), select(vec2<u32>(u_input.c.x, arg_0), u_input.c, false), false), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_0, arg_1), vec2<f32>(-1263f, arg_1))))), Struct_2(_wgslsmith_f_op_f32(332f * var_0), func_2(u_input.c, vec2<f32>(-436f, -1145f), Struct_2(var_0, vec3<f32>(arg_1, var_0, var_0), u_input.a.x, Struct_1(var_0), true)).a.b, ~(-34140i), Struct_1(arg_1), true)).a.d, !(var_0 >= var_0) || func_2(u_input.c & vec2<u32>(u_input.c.x, 56770u), vec2<f32>(1253f, -1564f), Struct_2(1020f, vec3<f32>(1233f, var_0, arg_1), u_input.b, Struct_1(1000f), true)).a.e));
    let var_2 = 497f;
    return !vec4<bool>(!any(!vec2<bool>(var_1.a.e, var_1.a.e)), all(vec4<bool>(any(vec4<bool>(false, true, var_1.a.e, var_1.a.e)), var_1.a.e, var_1.a.e, var_1.a.e)), false, any(!(!vec4<bool>(false, true, false, var_1.a.e))));
}

fn func_4(arg_0: Struct_3, arg_1: f32, arg_2: vec4<bool>, arg_3: u32) -> f32 {
    global0 = arg_2.x || true;
    let var_0 = _wgslsmith_div_vec2_f32(arg_0.a.b.yz, _wgslsmith_div_vec2_f32(arg_0.a.b.zy, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1080f, arg_1)) * vec2<f32>(arg_1, _wgslsmith_f_op_f32(f32(-1f) * -1738f)))));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -361f));
    var var_2 = func_2(u_input.c, vec2<f32>(_wgslsmith_f_op_f32(-arg_0.a.b.x), _wgslsmith_f_op_f32(f32(-1f) * -240f)), func_2(u_input.c, var_0, func_2(u_input.c, vec2<f32>(-298f, _wgslsmith_f_op_f32(-var_1.a)), Struct_2(_wgslsmith_f_op_f32(arg_1 + 1951f), _wgslsmith_f_op_vec3_f32(vec3<f32>(2428f, arg_1, -2092f) * arg_0.a.b), 1i, arg_0.a.d, arg_2.x)).a).a).a;
    global1 = false;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1 + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(600f, 145f)))))) + 1400f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1589f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -258f)))));
    var_0 = _wgslsmith_f_op_f32(func_4(Struct_3(Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -1138f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1882f, -547f, 1081f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(560f, -263f, 184f) + vec3<f32>(385f, -1279f, -394f))), func_1(vec4<u32>(1u, u_input.c.x, u_input.c.x, 48143u), _wgslsmith_add_vec2_i32(vec2<i32>(u_input.b, u_input.b), vec2<i32>(-1i, 1i)), Struct_2(-1189f, vec3<f32>(-1718f, 450f, 1468f), u_input.b, Struct_1(-1000f), false)), Struct_1(-3375f), true)), -275f, !select(select(vec4<bool>(true, false, true, false), func_3(4294967295u, -374f), true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), func_2(vec2<u32>(u_input.c.x, u_input.c.x), vec2<f32>(-348f, 1113f), Struct_2(-1281f, vec3<f32>(-429f, 2103f, 2379f), -2147483647i, Struct_1(-754f), false)).a.e), true), ~34613u));
    global1 = !(!(-select(28659i, u_input.b, true) != -70473i));
    let var_1 = vec4<u32>(~select(u_input.c.x, _wgslsmith_div_u32(0u, u_input.c.x) ^ _wgslsmith_sub_u32(u_input.c.x, 0u), all(func_3(u_input.c.x, -1000f).wyx)), _wgslsmith_div_u32(u_input.c.x, _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x), vec3<u32>(u_input.c.x, u_input.c.x, 4294967295u)), 1u)), 0u, 1u);
    global0 = !all(vec2<bool>(false, true));
    var var_2 = vec3<i32>(u_input.a.x, _wgslsmith_add_i32(-1i, 2147483647i), -1i);
    var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -189f)));
    let x = u_input.a;
    s_output = StorageBuffer(~reverseBits(_wgslsmith_sub_vec2_u32(u_input.c >> (vec2<u32>(var_1.x, var_1.x) % vec2<u32>(32u)), vec2<u32>(60187u, var_1.x))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-513f - -502f))), _wgslsmith_f_op_f32(818f * _wgslsmith_f_op_f32(f32(-1f) * -558f)), func_2(var_1.zz, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-714f, -520f))), func_2(~u_input.c, _wgslsmith_div_vec2_f32(vec2<f32>(1125f, 2196f), vec2<f32>(270f, 132f)), func_2(u_input.c, vec2<f32>(-246f, 1075f), Struct_2(-438f, vec3<f32>(-1376f, 940f, -271f), 7281i, Struct_1(-759f), true)).a).a).a.a));
}

