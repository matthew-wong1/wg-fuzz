struct Struct_1 {
    a: f32,
    b: i32,
    c: f32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec3<u32>,
    d: vec3<bool>,
    e: i32,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_1) -> vec4<bool> {
    let var_0 = -1i;
    var var_1 = Struct_3(select(select(arg_0, !arg_0, select(arg_0, vec4<bool>(global0.x, true, true, global0.x), !arg_0)), vec4<bool>(!all(arg_0.xzy), !any(arg_0), all(!global0.xx), arg_0.x), !vec4<bool>(true, arg_0.x, true, !global0.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(arg_1.a - -107f), _wgslsmith_f_op_f32(select(-1000f, -545f, global0.x)), _wgslsmith_f_op_f32(1000f * arg_1.c)))));
    var_1 = Struct_3(select(vec4<bool>(all(var_1.a), false == all(vec3<bool>(arg_0.x, arg_0.x, arg_0.x)), any(!vec3<bool>(arg_0.x, arg_0.x, false)), true), arg_0, !arg_0.x || !all(var_1.a.xw)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_1.b * _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.a, arg_1.c, var_1.b.x)))));
    global0 = select(vec3<bool>(true, true, true), arg_0.yxy, false);
    var var_2 = Struct_2(true, Struct_1(1045f, -var_0 & -2147483647i, 1056f), ~vec3<u32>(u_input.a, ~u_input.c.x, _wgslsmith_div_u32(7771u, u_input.a) << (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, u_input.a, u_input.a, 60527u), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.c.x)) % 32u)), vec3<bool>(!(!(var_1.b.x > arg_1.a)), global0.x, true), var_0);
    return arg_0;
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: Struct_3) -> vec3<bool> {
    var var_0 = Struct_3(!select(vec4<bool>(all(global0.xx), func_3(arg_2.a, arg_0).x, 0u > u_input.a, all(global0.xx)), vec4<bool>(true, true, true, arg_2.a.x), !(!arg_2.a)), arg_2.b);
    var_0 = arg_2;
    global0 = !(!vec3<bool>(!all(var_0.a), arg_2.a.x, false));
    global0 = var_0.a.wxz;
    var var_1 = vec2<u32>(u_input.c.x, ~u_input.a);
    return !arg_2.a.yzw;
}

fn func_2() -> Struct_2 {
    global0 = select(!select(select(vec3<bool>(global0.x, false, global0.x), vec3<bool>(global0.x, true, false), vec3<bool>(false, false, global0.x)), !vec3<bool>(global0.x, false, global0.x), global0.x), func_4(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-207f + -878f) - _wgslsmith_f_op_f32(step(417f, 517f))), u_input.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -714f))), all(select(vec4<bool>(true, global0.x, global0.x, global0.x), func_3(vec4<bool>(global0.x, global0.x, global0.x, true), Struct_1(446f, u_input.b, -725f)), !vec4<bool>(true, global0.x, global0.x, true))), Struct_3(func_3(select(vec4<bool>(global0.x, global0.x, false, global0.x), vec4<bool>(false, true, false, global0.x), vec4<bool>(global0.x, true, global0.x, true)), Struct_1(294f, u_input.b, -2499f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(390f, -576f, -1024f) + vec3<f32>(-517f, 1172f, -1191f))))), all(!vec3<bool>(!global0.x, true, global0.x && true)));
    global0 = !func_4(Struct_1(-567f, u_input.b, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -623f)))), !(!any(vec4<bool>(global0.x, true, global0.x, false))), Struct_3(func_3(select(vec4<bool>(global0.x, true, false, global0.x), vec4<bool>(global0.x, true, false, global0.x), false), Struct_1(652f, u_input.b, -856f)), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(-579f, -2379f, 1927f) * vec3<f32>(685f, 1096f, -1478f))))));
    let var_0 = vec3<bool>(false, !select(false, true, !(!global0.x)), !global0.x);
    global0 = select(var_0, !vec3<bool>(false, true || (u_input.c.x == 4294967295u), any(!vec4<bool>(true, global0.x, global0.x, false))), !all(!global0.yy));
    global0 = !select(vec3<bool>(~0u >= ~u_input.a, true, true), var_0, func_4(Struct_1(-642f, 1i, _wgslsmith_f_op_f32(max(431f, -2232f))), var_0.x, Struct_3(vec4<bool>(true, false, false, global0.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(-448f, 1343f, -1095f) + vec3<f32>(-545f, -1659f, -1137f)))));
    return Struct_2(false, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1956f), _wgslsmith_f_op_f32(select(127f, -309f, var_0.x)), all(vec4<bool>(var_0.x, false, var_0.x, true))))), -6500i, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1154f * -461f), -980f))), ~vec3<u32>(66876u, u_input.a, u_input.c.x), vec3<bool>(select(var_0.x, any(vec3<bool>(true, true, true)), var_0.x), any(var_0.zz), true), _wgslsmith_dot_vec2_i32(~(vec2<i32>(-1i) * -vec2<i32>(u_input.b, 34386i)), -vec2<i32>(u_input.b, u_input.b) ^ ~(-vec2<i32>(u_input.b, 1i))));
}

fn func_1(arg_0: Struct_1) -> vec3<bool> {
    var var_0 = func_2();
    let var_1 = abs(min(var_0.c, ~vec3<u32>(u_input.a, var_0.c.x, 1u)));
    var var_2 = reverseBits(vec3<i32>(var_0.e, var_0.e, _wgslsmith_mult_i32(firstTrailingBit(-33899i | var_0.b.b), 6376i)));
    return select(var_0.d, vec3<bool>(global0.x, true && global0.x, !func_4(var_0.b, true, Struct_3(vec4<bool>(var_0.d.x, var_0.d.x, var_0.d.x, true), vec3<f32>(var_0.b.a, 1155f, 757f))).x), global0.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    var var_1 = any(!select(select(vec3<bool>(false, false, global0.x), !vec3<bool>(global0.x, true, true), global0.x), select(select(vec3<bool>(global0.x, false, global0.x), vec3<bool>(true, global0.x, global0.x), true), func_1(Struct_1(-1066f, -16276i, -334f)), select(false, global0.x, global0.x)), true));
    let var_2 = vec3<i32>(func_2().b.b, -10697i, _wgslsmith_sub_i32(~(9396i | u_input.b), abs(_wgslsmith_mod_i32(2147483647i, -2147483647i))) | _wgslsmith_add_i32(_wgslsmith_mult_i32(u_input.b, -2147483647i) << (~57791u % 32u), ~abs(u_input.b)));
    global0 = !(!vec3<bool>(global0.x, false, true));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(596f)) - 1f)));
    var var_4 = func_2();
    let var_5 = vec2<i32>(firstLeadingBit(-1i), _wgslsmith_dot_vec4_i32(vec4<i32>(55957i >> (min(83173u, 1u) % 32u), _wgslsmith_mult_i32(var_2.x, ~2147483647i), _wgslsmith_div_i32(~1i, var_4.e >> (22040u % 32u)), 2147483647i), vec4<i32>(u_input.b, func_2().b.b, var_4.b.b, i32(-1i) * -1i)));
    var var_6 = Struct_3(vec4<bool>(true, any(func_1(func_2().b)), _wgslsmith_f_op_f32(f32(-1f) * -1057f) <= _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_3), _wgslsmith_f_op_f32(-var_4.b.a))), global0.x && false), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_3, -527f, -888f), vec3<f32>(832f, -451f, 178f))))))));
    var_1 = func_4(Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(397f, var_3)), _wgslsmith_f_op_f32(var_4.b.a + _wgslsmith_f_op_f32(var_3 * var_3))), abs(-44716i >> (0u % 32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(628f)) * _wgslsmith_f_op_f32(trunc(var_3))))), !var_6.a.x, Struct_3(vec4<bool>(false, (var_4.d.x && true) != true, false, all(var_4.d.zy) | any(var_6.a)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_6.b)))).x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_4.b.c, var_3, var_6.b.x, var_4.b.c), vec4<f32>(var_6.b.x, 297f, 1308f, var_6.b.x)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(483f, var_3, var_6.b.x, var_6.b.x) - vec4<f32>(var_4.b.c, 2433f, 291f, 220f))), vec4<f32>(_wgslsmith_f_op_f32(round(var_6.b.x)), var_6.b.x, _wgslsmith_f_op_f32(var_3 * 1000f), var_3)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1000f, -1000f, 678f, -839f), _wgslsmith_f_op_vec4_f32(vec4<f32>(285f, -854f, -1941f, 2199f) + vec4<f32>(2135f, var_4.b.a, var_4.b.a, var_4.b.a))))), var_2.x, _wgslsmith_div_vec3_f32(var_6.b, var_6.b));
}

