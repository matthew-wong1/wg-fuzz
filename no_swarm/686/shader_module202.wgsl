struct Struct_1 {
    a: f32,
    b: bool,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
    d: vec3<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 585f;

var<private> global1: f32;

var<private> global2: array<Struct_1, 27> = array<Struct_1, 27>(Struct_1(-1000f, false, -1i), Struct_1(622f, true, -1i), Struct_1(-217f, false, i32(-2147483648)), Struct_1(-1355f, true, 39566i), Struct_1(-1000f, false, 0i), Struct_1(-956f, false, 13660i), Struct_1(593f, false, 1i), Struct_1(-1654f, true, 1i), Struct_1(876f, true, -52958i), Struct_1(1075f, true, 1i), Struct_1(-271f, false, 1i), Struct_1(638f, false, -8457i), Struct_1(-1640f, true, 24797i), Struct_1(1270f, false, 35946i), Struct_1(181f, true, -3642i), Struct_1(1000f, true, 2147483647i), Struct_1(350f, false, 2147483647i), Struct_1(229f, true, -16645i), Struct_1(192f, false, -1i), Struct_1(803f, true, -4887i), Struct_1(-383f, false, 39944i), Struct_1(423f, true, -31248i), Struct_1(-2421f, true, 0i), Struct_1(917f, false, i32(-2147483648)), Struct_1(475f, false, -2085i), Struct_1(283f, false, -14323i), Struct_1(-642f, false, -22966i));

var<private> global3: array<Struct_1, 32>;

var<private> global4: array<vec3<i32>, 1>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec4<u32>) -> vec3<bool> {
    var var_0 = ~reverseBits(arg_0.x);
    global2 = array<Struct_1, 27>();
    var var_1 = false;
    let var_2 = 19509u;
    var var_3 = select(select(select(vec2<bool>(true, u_input.c == 22398u), select(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false)), select(vec2<bool>(true, true), vec2<bool>(true, false), true), true), vec2<bool>(true, true)), vec2<bool>(true, all(vec4<bool>(true, true, true, true)) | any(vec4<bool>(false, true, true, false))), !(_wgslsmith_f_op_f32(round(-1000f)) >= 946f)), select(!select(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false)), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true), select(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), true), vec2<bool>(true, false)), vec2<bool>(select(true, true, true), false), any(vec4<bool>(true, false, true, false)))), false);
    return !(!(!(!(!vec3<bool>(var_3.x, true, var_3.x)))));
}

fn func_4(arg_0: vec4<f32>, arg_1: vec3<bool>) -> f32 {
    global1 = 1312f;
    var var_0 = !arg_1.zx;
    let var_1 = arg_0.x;
    var var_2 = true;
    global3 = array<Struct_1, 32>();
    return var_1;
}

fn func_5(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: Struct_1) -> f32 {
    global4 = array<vec3<i32>, 1>();
    let var_0 = Struct_2(global2[_wgslsmith_index_u32(31831u, 27u)], arg_2);
    var var_1 = all(vec2<bool>(false, !any(select(vec3<bool>(true, arg_2.b, arg_1.b), vec3<bool>(false, true, var_0.b.b), vec3<bool>(false, arg_1.b, arg_2.b)))));
    let var_2 = -2147483647i;
    let var_3 = Struct_2(global2[_wgslsmith_index_u32(arg_0.x, 27u)], arg_2);
    return arg_2.a;
}

fn func_2(arg_0: bool) -> vec4<f32> {
    let var_0 = select(u_input.e, abs(vec4<u32>(~select(0u, 754u, arg_0), _wgslsmith_mod_u32(0u, ~38564u), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, u_input.e.x, 14996u), vec3<u32>(4294967295u, 9495u, 23893u)), 35832u)), !(!(!select(vec4<bool>(arg_0, arg_0, arg_0, arg_0), vec4<bool>(true, arg_0, arg_0, false), false))));
    global0 = _wgslsmith_f_op_f32(func_5(u_input.e.xyz & ~countOneBits(u_input.e.xzz), Struct_1(_wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-303f, 220f, 1234f, -615f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(866f, 124f, -632f, 257f))), func_3(abs(u_input.e)))), _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 2597f, 157f, -676f)), !vec3<bool>(arg_0, arg_0, arg_0))) > -994f, u_input.b.x), global2[_wgslsmith_index_u32(~43492u, 27u)]));
    var var_1 = select(vec3<bool>(!arg_0, true, all(select(vec4<bool>(arg_0, true, arg_0, arg_0), select(vec4<bool>(true, arg_0, true, arg_0), vec4<bool>(false, true, false, arg_0), vec4<bool>(arg_0, false, arg_0, arg_0)), !vec4<bool>(true, true, arg_0, false)))), vec3<bool>(arg_0, true, arg_0), ((_wgslsmith_sub_u32(0u, u_input.a) | u_input.a) >= u_input.c) || !any(vec3<bool>(arg_0, arg_0, false)));
    var var_2 = 0i;
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(253f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_5(var_0.zwz, Struct_1(1521f, var_1.x, u_input.b.x), global3[_wgslsmith_index_u32(1u, 32u)])), -557f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -650f))), false)));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-2702f, 554f, 1042f, 1844f) * vec4<f32>(-3369f, -1024f, -682f, 988f)), vec4<f32>(-1391f, -313f, 456f, 1140f), vec4<bool>(arg_0, var_1.x, var_1.x, false))))) * vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -688f)), _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(func_4(vec4<f32>(-1048f, 849f, 963f, -531f), vec3<bool>(true, false, arg_0)))), _wgslsmith_f_op_f32(f32(-1f) * -1692f), -493f)));
}

fn func_1() -> f32 {
    let var_0 = vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d.x, 44028i, u_input.d.x), firstLeadingBit(firstTrailingBit(global4[_wgslsmith_index_u32(~46396u, 1u)]))), _wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(~25134i, _wgslsmith_sub_i32(u_input.d.x, -1i), ~u_input.b.x, u_input.b.x >> (u_input.a % 32u))), -(~vec4<i32>(-4713i, 1i, u_input.b.x, u_input.d.x)) << (reverseBits(vec4<u32>(u_input.a, 0u, 4294967295u, 28812u)) % vec4<u32>(32u))), 2147483647i);
    global0 = -1387f;
    let var_1 = u_input.b.yx;
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_2(!any(vec3<bool>(true, true, true)))) + _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-432f, 419f, -1029f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-435f, -453f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-1322f * -394f), -2164f, _wgslsmith_div_f32(-246f, 319f), _wgslsmith_f_op_f32(f32(-1f) * -1197f))))));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f * -1182f), _wgslsmith_f_op_f32(ceil(3070f)))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) - var_2.x), var_2.x)));
    return var_2.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_1()), 148f)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f * -934f), _wgslsmith_f_op_f32(func_1()))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(542f + 148f) * 1839f)))));
    let var_1 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) - _wgslsmith_f_op_f32(-var_0)), -1256f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(615f + 379f)), 514f))), true, ~u_input.b.x);
    global1 = -283f;
    let var_2 = func_3(u_input.e);
    let var_3 = Struct_2(Struct_1(_wgslsmith_div_f32(572f, var_1.a), select(var_2.x, var_1.b && (12276i >= var_1.c), true || var_2.x), -_wgslsmith_mod_i32(u_input.b.x, select(1i, var_1.c, var_2.x))), Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1262f + var_1.a), var_1.a)), true, 1i));
    let var_4 = Struct_1(var_0, all(!(!vec3<bool>(var_2.x, var_2.x, false))) || false, min(u_input.b.x, _wgslsmith_add_i32(var_1.c, _wgslsmith_dot_vec3_i32(global4[_wgslsmith_index_u32(u_input.c, 1u)] >> (u_input.e.zyz % vec3<u32>(32u)), vec3<i32>(u_input.b.x, 0i, -3190i)))));
    var var_5 = -83803i;
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1271f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_4.a * var_3.a.a))))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_3.b.a)) - _wgslsmith_f_op_f32(select(-1895f, 123f, any(vec4<bool>(false, true, var_3.b.b, var_3.b.b)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_1.a), 54944i, u_input.c);
}

