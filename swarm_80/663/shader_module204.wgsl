struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: i32,
    d: i32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec4<bool>,
    c: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: u32,
    d: vec3<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 11> = array<Struct_2, 11>(Struct_2(vec4<i32>(18695i, i32(-2147483648), -2804i, 1i), Struct_1(vec3<i32>(-28382i, -12419i, i32(-2147483648)), false, 58843i, -1i)), Struct_2(vec4<i32>(-74000i, 1i, -1i, 0i), Struct_1(vec3<i32>(-59827i, -58649i, 40706i), true, 1i, 13372i)), Struct_2(vec4<i32>(15083i, -360i, -26342i, 1i), Struct_1(vec3<i32>(2147483647i, -9634i, i32(-2147483648)), false, 10587i, -25458i)), Struct_2(vec4<i32>(-15832i, 15668i, -21224i, -1i), Struct_1(vec3<i32>(i32(-2147483648), -4788i, i32(-2147483648)), true, 26907i, 63332i)), Struct_2(vec4<i32>(-1i, 2694i, 48918i, 2147483647i), Struct_1(vec3<i32>(i32(-2147483648), 43092i, 62156i), false, -78225i, 48607i)), Struct_2(vec4<i32>(26728i, 1i, i32(-2147483648), -62101i), Struct_1(vec3<i32>(0i, 2147483647i, -8823i), false, -1i, 22556i)), Struct_2(vec4<i32>(28729i, 1i, -1i, -2077i), Struct_1(vec3<i32>(1i, 2404i, 10440i), true, -1i, 2147483647i)), Struct_2(vec4<i32>(2147483647i, 53394i, 10379i, 2147483647i), Struct_1(vec3<i32>(i32(-2147483648), -9467i, -1i), false, -19879i, 16772i)), Struct_2(vec4<i32>(-1i, 23738i, 1i, 1i), Struct_1(vec3<i32>(37602i, i32(-2147483648), 1i), true, 2147483647i, -16422i)), Struct_2(vec4<i32>(67492i, 2147483647i, 66228i, i32(-2147483648)), Struct_1(vec3<i32>(2147483647i, 764i, -59467i), true, 2147483647i, i32(-2147483648))), Struct_2(vec4<i32>(15578i, 1i, i32(-2147483648), 70681i), Struct_1(vec3<i32>(2147483647i, 48693i, 0i), false, -1i, 0i)));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_1(arg_0: i32, arg_1: vec3<f32>) -> u32 {
    global0 = array<Struct_2, 11>();
    global0 = array<Struct_2, 11>();
    global0 = array<Struct_2, 11>();
    global0 = array<Struct_2, 11>();
    var var_0 = arg_1.xz;
    return _wgslsmith_dot_vec2_u32(vec2<u32>(58567u, ~(~9076u)), abs(u_input.d.zy));
}

fn func_3(arg_0: Struct_2, arg_1: bool, arg_2: Struct_3, arg_3: vec3<i32>) -> vec3<f32> {
    let var_0 = _wgslsmith_dot_vec3_i32(arg_3, firstLeadingBit(arg_0.a.wzw));
    global0 = array<Struct_2, 11>();
    global0 = array<Struct_2, 11>();
    var var_1 = u_input.d.zy;
    var var_2 = global0[_wgslsmith_index_u32(_wgslsmith_add_u32(~var_1.x ^ var_1.x, 12408u), 11u)];
    return _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1035f, -1437f, arg_2.c)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(853f, 151f, -319f))) + _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_2.c, -379f, -583f)))) + _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-496f, 1785f, 1886f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1412f, -857f, arg_2.c))) + vec3<f32>(-1191f, -1000f, _wgslsmith_f_op_f32(-arg_2.c))) - vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_2.c - arg_2.c))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - arg_2.c)), 579f))));
}

fn func_2() -> vec3<f32> {
    return _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(Struct_2(u_input.e, Struct_1(vec3<i32>(u_input.a.x, -1i, -2147483647i), true, u_input.a.x, -1i)), true, Struct_3(u_input.e.xzy, vec4<bool>(false, false, false, true), -323f), ~u_input.b)) * vec3<f32>(1f, 1f, 1f))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(vec3<i32>(1i, 40572i, ~u_input.b.x), all(vec4<bool>(all(vec3<bool>(true, true, true)), false, true, all(vec3<bool>(false, false, true)))), u_input.a.x | reverseBits(_wgslsmith_div_i32(_wgslsmith_add_i32(9584i, 1i), u_input.e.x | 40707i)), -74465i);
    global0 = array<Struct_2, 11>();
    var var_1 = func_1(_wgslsmith_div_i32(1i, -select(-var_0.a.x, 4452i, true)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-523f, -263f, -446f), vec3<f32>(-645f, 1062f, 400f)) + _wgslsmith_f_op_vec3_f32(step(vec3<f32>(739f, 1534f, 573f), vec3<f32>(-315f, -875f, 108f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-520f, -369f, 394f)))), vec3<f32>(3044f, -2176f, 745f), var_0.b)));
    global0 = array<Struct_2, 11>();
    var_1 = ~24603u;
    var var_2 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(func_2()), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(842f, 1169f, _wgslsmith_f_op_f32(step(-620f, _wgslsmith_f_op_f32(f32(-1f) * -1103f)))), vec3<f32>(_wgslsmith_f_op_f32(858f - _wgslsmith_f_op_f32(round(-2065f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_vec3_f32(func_2()).x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-457f, 564f)) * _wgslsmith_f_op_f32(f32(-1f) * -738f)))))));
    let var_3 = _wgslsmith_mod_u32(min(u_input.c, 66775u), abs(1u));
    let var_4 = _wgslsmith_f_op_f32(-var_2.x);
    let var_5 = var_0.b;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.c, var_2.x);
}

