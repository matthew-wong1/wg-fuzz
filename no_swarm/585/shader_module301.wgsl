struct Struct_1 {
    a: f32,
    b: vec4<f32>,
    c: vec3<bool>,
    d: bool,
    e: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: u32,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec2<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_1(arg_0: vec4<f32>, arg_1: Struct_2) -> Struct_2 {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(1188f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1043f))), true)), _wgslsmith_f_op_f32(-796f - arg_1.a.a));
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(885f + -243f)) + _wgslsmith_f_op_f32(-var_0)), var_0, _wgslsmith_f_op_f32(ceil(arg_0.x)), var_0));
    let var_2 = _wgslsmith_div_vec3_f32(vec3<f32>(var_1.x, _wgslsmith_f_op_f32(ceil(-2234f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_0.x, -568f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1404f) + 771f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_1.zxx))) * arg_1.a.b.yxx));
    var var_3 = arg_1.a.e;
    var_3 = arg_1.a.e;
    return Struct_2(arg_1.a);
}

fn func_3() -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1027f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2082f * -1093f) + _wgslsmith_div_f32(568f, -441f))))));
    let var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(306f - -1894f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-116f - 258f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(610f)))));
    var_0 = -911f;
    var var_2 = func_1(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1, var_1, var_1, var_1), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_1, -1194f, var_1, -840f), vec4<f32>(var_1, -1116f, -1163f, 1085f))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1, var_1, -100f, var_1), vec4<f32>(-1586f, 597f, var_1, var_1), vec4<bool>(true, false, false, true)))) - _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1333f, var_1, 755f, 113f)), vec4<f32>(-954f, 835f, var_1, var_1)))), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), vec4<bool>(true, var_1 <= var_1, true, false), vec4<bool>(true, true, true, true)))), Struct_2(func_1(_wgslsmith_div_vec4_f32(vec4<f32>(var_1, var_1, var_1, var_1), _wgslsmith_f_op_vec4_f32(-vec4<f32>(484f, 444f, var_1, 356f))), Struct_2(Struct_1(var_1, vec4<f32>(-1151f, var_1, 1180f, var_1), vec3<bool>(true, true, false), false, vec2<u32>(4294967295u, 15320u)))).a));
    var var_3 = !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_2.a.a)))) >= _wgslsmith_f_op_f32(var_2.a.b.x * -138f));
    return var_2.a.c;
}

fn func_2() -> Struct_2 {
    global0 = false | any(select(func_3(), vec3<bool>(false, true, all(vec3<bool>(false, true, false))), _wgslsmith_f_op_f32(round(342f)) <= _wgslsmith_div_f32(390f, 717f)));
    let var_0 = abs(max(_wgslsmith_mod_i32(i32(-1i) * -42391i, ~(u_input.d.x & -26532i)), u_input.d.x));
    var var_1 = u_input.b.wyx;
    var_1 = vec3<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(firstTrailingBit(u_input.b), abs(_wgslsmith_add_vec4_u32(u_input.b, u_input.b))), ~max(vec4<u32>(47983u, u_input.a.x, 18839u, 9810u), ~u_input.b)), u_input.c, u_input.b.x);
    var var_2 = func_1(vec4<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(sign(func_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-823f, 959f, 995f, -1078f)), Struct_2(Struct_1(-457f, vec4<f32>(-1932f, -556f, 622f, 399f), vec3<bool>(true, true, true), false, var_1.yy))).a.b.x)), -1599f, _wgslsmith_f_op_f32(501f + _wgslsmith_f_op_f32(-1f))), Struct_2(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -423f), vec4<f32>(_wgslsmith_div_f32(-439f, -125f), _wgslsmith_f_op_f32(300f + 198f), _wgslsmith_f_op_f32(ceil(-1422f)), 333f), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true)), var_1.x <= ~u_input.e, u_input.a))).a;
    return Struct_2(Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_2.b.x + var_2.b.x))), vec4<f32>(_wgslsmith_f_op_f32(min(var_2.b.x, var_2.a)), 1251f, _wgslsmith_f_op_f32(f32(-1f) * -1317f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.b.x))), vec3<bool>(true, var_2.d, var_0 >= 1i), all(vec3<bool>(true, any(vec4<bool>(true, false, true, var_2.d)), all(vec4<bool>(var_2.d, false, true, var_2.d)))), vec2<u32>(max(1u, ~28207u), min(abs(var_2.e.x), ~u_input.e))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 0u | abs(u_input.b.x);
    var var_1 = func_1(vec4<f32>(1f, 1f, 1f, 1f), Struct_2(Struct_1(_wgslsmith_f_op_f32(trunc(-671f)), vec4<f32>(_wgslsmith_f_op_f32(1428f + -1251f), -310f, -433f, _wgslsmith_f_op_f32(218f * -1772f)), select(select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), false), vec3<bool>(false, true, true), vec3<bool>(false, false, true)), true, vec2<u32>(_wgslsmith_add_u32(u_input.c, u_input.b.x), 1u))));
    var var_2 = func_1(vec4<f32>(-178f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.b.x)) + -2785f), _wgslsmith_f_op_f32(f32(-1f) * -597f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-831f * var_1.a.a) + -1799f)), Struct_2(func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-826f, -257f, 383f, var_1.a.b.x))), Struct_2(Struct_1(var_1.a.a, vec4<f32>(var_1.a.b.x, -171f, 405f, var_1.a.b.x), var_1.a.c, false, vec2<u32>(var_1.a.e.x, 30538u)))).a));
    var_1 = func_1(_wgslsmith_f_op_vec4_f32(-var_2.a.b), func_1(vec4<f32>(var_1.a.b.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_2.a.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.a.b.x, 310f)), 670f), func_1(vec4<f32>(-907f, -250f, _wgslsmith_f_op_f32(round(var_1.a.a)), _wgslsmith_f_op_f32(var_2.a.a - -323f)), func_1(_wgslsmith_f_op_vec4_f32(max(var_2.a.b, var_2.a.b)), Struct_2(var_2.a)))));
    var var_3 = var_1.a.c;
    var_2 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec2_u32(~select(_wgslsmith_div_vec2_u32(var_2.a.e, vec2<u32>(85854u, var_2.a.e.x)), var_1.a.e, !vec2<bool>(false, var_2.a.c.x)), ~max(vec2<u32>(0u, 31117u), var_1.a.e)), _wgslsmith_clamp_u32(1u, _wgslsmith_add_u32(~var_2.a.e.x, u_input.c) & countOneBits(36680u), firstTrailingBit(var_1.a.e.x)), countOneBits(_wgslsmith_mod_vec2_u32(select(u_input.a, var_2.a.e, var_1.a.c.zx), vec2<u32>(u_input.c, 57433u))) >> ((vec2<u32>(firstTrailingBit(4294967295u), _wgslsmith_mod_u32(11578u, 17884u)) << (u_input.b.ww % vec2<u32>(32u))) % vec2<u32>(32u)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.a)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(187f, 442f, var_1.a.c.x)))), -2110f))));
}

