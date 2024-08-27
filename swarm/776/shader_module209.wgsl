struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
    d: f32,
    e: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<u32, 30> = array<u32, 30>(1u, 130841u, 4294967295u, 38650u, 0u, 37816u, 4294967295u, 102513u, 4294967295u, 31929u, 73112u, 14544u, 31074u, 0u, 4294967295u, 40460u, 16820u, 1u, 83681u, 4294967295u, 22766u, 7918u, 25137u, 0u, 21800u, 2403u, 43857u, 62132u, 20980u, 0u);

var<private> global2: array<vec4<u32>, 4> = array<vec4<u32>, 4>(vec4<u32>(4294967295u, 7116u, 1u, 1u), vec4<u32>(34236u, 1u, 0u, 19102u), vec4<u32>(40198u, 85368u, 27868u, 21175u), vec4<u32>(68785u, 1u, 0u, 0u));

var<private> global3: u32 = 0u;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: Struct_2, arg_3: Struct_2) -> u32 {
    global0 = Struct_2(arg_3.c, arg_2.b, global0.a, -366f, 0i ^ u_input.a.x);
    global1 = array<u32, 30>();
    global3 = arg_2.b;
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -828f))))));
    global0 = arg_2;
    return ~1u;
}

fn func_3(arg_0: i32, arg_1: Struct_2, arg_2: Struct_1) -> u32 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-890f, _wgslsmith_f_op_f32(-global0.c.a.x), _wgslsmith_div_f32(arg_2.a.x, 744f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a.a.x, arg_2.a.x, arg_1.d)))));
    let var_1 = _wgslsmith_f_op_vec2_f32(select(arg_1.c.a.zy, _wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_0.a.x, -1432f))), all(select(select(select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true)), vec3<bool>(false, false, false), true), vec3<bool>(true, true, true), vec3<bool>(true, 22265u > global1[_wgslsmith_index_u32(1u, 30u)], false)))));
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(-global0.d), var_0.a.x, var_0.a.x), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-arg_1.c.a)))))));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.a.x * 940f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(var_1.x)), _wgslsmith_f_op_f32(-arg_2.a.x))))));
    var var_4 = vec2<bool>(!(!(u_input.a.x == _wgslsmith_dot_vec2_i32(u_input.a, u_input.a))), !((4294967295u < arg_1.b) & any(vec2<bool>(true, true))) & true);
    return 4294967295u << (global0.b % 32u);
}

fn func_1(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: vec4<f32>) -> Struct_2 {
    global1 = array<u32, 30>();
    global3 = 14626u;
    global2 = array<vec4<u32>, 4>();
    var var_0 = countOneBits(~vec3<u32>(~func_2(vec2<bool>(false, false), Struct_1(arg_1.zyx), Struct_2(arg_0, u_input.b, global0.a, 1000f, 0i), Struct_2(Struct_1(arg_0.a), 100495u, arg_0, arg_0.a.x, 1639i)), ~_wgslsmith_add_u32(global0.b, 4294967295u), func_3(global0.e, Struct_2(Struct_1(arg_1.www), global1[_wgslsmith_index_u32(u_input.b, 30u)], Struct_1(arg_2.yxy), 793f, 33301i), Struct_1(global0.c.a))));
    let var_1 = arg_2.x;
    return Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(vec3<f32>(arg_1.x, 635f, arg_0.a.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a.x, -1001f, arg_2.x)))))), _wgslsmith_sub_u32(_wgslsmith_add_u32(func_2(vec2<bool>(true, true), arg_0, Struct_2(Struct_1(global0.c.a), 0u, Struct_1(global0.c.a), arg_2.x, -11587i), Struct_2(Struct_1(vec3<f32>(-697f, -907f, -340f)), 0u, arg_0, global0.a.a.x, u_input.a.x)) << (_wgslsmith_add_u32(var_0.x, u_input.b) % 32u), global0.b ^ 1u), global0.b), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-global0.d), 177f, arg_2.x)), _wgslsmith_div_f32(239f, var_1), ~70272i);
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: Struct_1, arg_3: Struct_1) -> Struct_2 {
    global2 = array<vec4<u32>, 4>();
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    var var_1 = vec2<bool>(u_input.a.x != (_wgslsmith_mod_i32(~(-1i), ~(-2147483647i)) >> (func_1(arg_2, _wgslsmith_f_op_vec4_f32(min(vec4<f32>(1250f, -696f, arg_1.d, var_0), vec4<f32>(-577f, arg_3.a.x, 1229f, 1900f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-486f, arg_3.a.x, arg_1.c.a.x, -280f))).b % 32u)), false);
    let var_2 = Struct_2(arg_1.a, 1u, Struct_1(arg_1.a.a), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(arg_1.a.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f * -427f) + -1456f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-560f - _wgslsmith_f_op_f32(arg_2.a.x + -794f)))), arg_1.e);
    var var_3 = vec3<bool>(!var_1.x, !(!(_wgslsmith_f_op_f32(select(-2224f, 1000f, var_1.x)) > -817f)), true);
    return func_1(Struct_1(var_2.c.a), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.a.x, arg_2.a.x, -1000f, var_2.a.a.x)) - _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-382f, arg_2.a.x, -1354f, -730f)))))), _wgslsmith_div_vec4_f32(vec4<f32>(global0.d, _wgslsmith_f_op_f32(var_0 + arg_1.a.a.x), _wgslsmith_f_op_f32(-659f + 306f), -160f), vec4<f32>(_wgslsmith_div_f32(var_2.a.a.x, -959f), _wgslsmith_div_f32(arg_1.d, arg_1.a.a.x), _wgslsmith_f_op_f32(round(var_2.a.a.x)), arg_2.a.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.c.a.x, arg_3.a.x, -945f, global0.d) + vec4<f32>(arg_1.d, 991f, 1000f, arg_3.a.x)) + _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_0, arg_3.a.x, 1877f, global0.a.a.x))))) - vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_2.a.x))), arg_3.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_2.d)) * 547f), arg_1.c.a.x)));
}

fn func_5(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: vec3<bool>) -> vec2<bool> {
    var var_0 = any(arg_0);
    global0 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(max(arg_1.c.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(arg_1.c.a, vec3<f32>(1068f, -361f, arg_1.c.a.x), false)) - _wgslsmith_div_vec3_f32(global0.c.a, arg_1.c.a))))), ~global1[_wgslsmith_index_u32((~global1[_wgslsmith_index_u32(arg_1.b, 30u)] >> (global1[_wgslsmith_index_u32(global0.b, 30u)] % 32u)) >> (~0u % 32u), 30u)], Struct_1(_wgslsmith_div_vec3_f32(arg_1.a.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_1.a.a.x, -1000f, global0.d), vec3<f32>(160f, -376f, global0.a.a.x)))))), arg_1.d, arg_1.e);
    let var_1 = arg_1;
    var var_2 = arg_1.c;
    global1 = array<u32, 30>();
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(select(select(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false)), select(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true)), select(vec2<bool>(true, false), vec2<bool>(false, true), false), vec2<bool>(true, true)), vec2<bool>(all(vec3<bool>(false, false, false)), false)), vec2<bool>(true, true), true), func_4(_wgslsmith_mod_vec4_u32(global2[_wgslsmith_index_u32(global0.b << (1u % 32u), 4u)], abs(abs(global2[_wgslsmith_index_u32(u_input.b, 4u)]))), func_1(global0.a, _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.c.a.x, global0.a.a.x, global0.a.a.x, -807f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(475f, global0.a.a.x, global0.d, global0.a.a.x)))), Struct_1(global0.a.a), global0.c), vec3<bool>(global0.c.a.x <= 151f, all(vec3<bool>(true, all(vec2<bool>(true, true)), true)), _wgslsmith_sub_u32(min(global0.b, global0.b), global0.b) >= (func_2(vec2<bool>(true, true), global0.a, Struct_2(global0.c, u_input.b, global0.c, global0.a.a.x, 7554i), Struct_2(Struct_1(vec3<f32>(1132f, global0.d, global0.d)), 1u, global0.a, 1080f, 2147483647i)) & ~global0.b)));
    var var_1 = func_1(global0.c, _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-595f, -638f))), _wgslsmith_f_op_f32(f32(-1f) * -305f), _wgslsmith_div_f32(-302f, _wgslsmith_f_op_f32(-global0.c.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.c.a.x + global0.a.a.x) * _wgslsmith_f_op_f32(abs(global0.a.a.x)))))), vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global0.c.a.x), -537f, true || (false & var_0.x))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-225f, -792f) * _wgslsmith_f_op_f32(-global0.d)), _wgslsmith_f_op_f32(-global0.d), _wgslsmith_f_op_f32(f32(-1f) * -1325f))).a;
    var var_2 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a.a.x) - global0.a.a.x) - global0.d), func_1(Struct_1(_wgslsmith_div_vec3_f32(vec3<f32>(global0.a.a.x, var_1.a.x, global0.c.a.x), global0.c.a)), vec4<f32>(_wgslsmith_f_op_f32(var_1.a.x + global0.d), _wgslsmith_f_op_f32(global0.c.a.x + -799f), _wgslsmith_f_op_f32(-614f * var_1.a.x), -586f), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(400f, 543f, 1520f, var_1.a.x) * vec4<f32>(778f, 584f, global0.a.a.x, var_1.a.x))))).d, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-520f - 1086f))))));
    var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(571f, -518f, _wgslsmith_f_op_f32(abs(global0.d))))));
    var var_3 = func_1(global0.c, _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(386f, global0.a.a.x, var_2.a.x, var_2.a.x), vec4<f32>(-326f, -728f, 1086f, 1000f))) * vec4<f32>(global0.c.a.x, -974f, 312f, 2055f)), vec4<f32>(var_1.a.x, -1160f, var_1.a.x, _wgslsmith_div_f32(global0.d, var_1.a.x))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-996f, var_2.a.x, 1055f, -925f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.a.x, -1720f, -1531f, -229f) - vec4<f32>(var_2.a.x, global0.c.a.x, -2315f, var_1.a.x)) * vec4<f32>(var_1.a.x, 1003f, -1892f, 1757f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(418f, -319f, 2079f, var_2.a.x), vec4<f32>(global0.a.a.x, 1420f, 788f, -459f)) - vec4<f32>(func_4(vec4<u32>(global0.b, 0u, global0.b, 23524u), Struct_2(Struct_1(global0.c.a), global0.b, Struct_1(var_1.a), var_2.a.x, global0.e), Struct_1(vec3<f32>(-470f, 1459f, -2318f)), Struct_1(vec3<f32>(-329f, -173f, global0.a.a.x))).a.a.x, var_2.a.x, _wgslsmith_f_op_f32(exp2(var_2.a.x)), _wgslsmith_f_op_f32(var_2.a.x * 481f))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(-166f, 409f), -1056f, _wgslsmith_f_op_f32(global0.d - -606f), _wgslsmith_f_op_f32(round(-1397f))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(525f, -440f, -267f, 466f), vec4<f32>(global0.d, -416f, -805f, -498f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.a.x, -369f, var_2.a.x, -1971f) + vec4<f32>(var_1.a.x, 837f, global0.c.a.x, var_1.a.x)), var_0.x)))));
    var var_4 = _wgslsmith_div_f32(2233f, -1061f);
    var var_5 = u_input.a;
    var_5 = -(_wgslsmith_sub_vec2_i32(~abs(u_input.a), vec2<i32>(0i, -2147483647i)) & min(u_input.a, ~u_input.a));
    let x = u_input.a;
    s_output = StorageBuffer(38685u);
}

