struct Struct_1 {
    a: vec2<bool>,
    b: f32,
    c: vec3<f32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: bool,
    b: vec4<bool>,
}

struct Struct_4 {
    a: vec2<bool>,
    b: vec2<i32>,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 8> = array<Struct_4, 8>(Struct_4(vec2<bool>(true, false), vec2<i32>(-1i, 77463i), vec2<i32>(-12177i, -1i)), Struct_4(vec2<bool>(true, true), vec2<i32>(-1i, 0i), vec2<i32>(0i, -9699i)), Struct_4(vec2<bool>(true, true), vec2<i32>(-1i, 2147483647i), vec2<i32>(8616i, -9225i)), Struct_4(vec2<bool>(false, false), vec2<i32>(28243i, i32(-2147483648)), vec2<i32>(0i, 0i)), Struct_4(vec2<bool>(false, false), vec2<i32>(-32550i, 2147483647i), vec2<i32>(2147483647i, 1i)), Struct_4(vec2<bool>(true, false), vec2<i32>(1i, i32(-2147483648)), vec2<i32>(31692i, i32(-2147483648))), Struct_4(vec2<bool>(false, false), vec2<i32>(2147483647i, 51158i), vec2<i32>(-37039i, -72654i)), Struct_4(vec2<bool>(false, false), vec2<i32>(-34054i, 17379i), vec2<i32>(-31948i, 0i)));

var<private> global1: array<vec4<u32>, 30>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> f32 {
    var var_0 = max(~vec3<u32>(1u, u_input.e.x, u_input.e.x & select(u_input.e.x, u_input.e.x, false)), u_input.e.wwz);
    var var_1 = Struct_3(-366f < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-692f)) - -795f) - -416f), select(vec4<bool>(!all(vec4<bool>(false, false, true, false)), !all(vec3<bool>(true, false, false)), false, any(select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), false))), vec4<bool>(_wgslsmith_f_op_f32(592f + 120f) != _wgslsmith_f_op_f32(trunc(2133f)), any(vec3<bool>(false, false, false)), 2931i == u_input.a, select(select(true, false, false), true, all(vec2<bool>(true, false)))), true));
    let var_2 = !(~firstTrailingBit(-u_input.b.x) > 1i);
    var_1 = Struct_3(!(var_1.a & any(!var_1.b.zx)), select(vec4<bool>(any(var_1.b.xy), u_input.d > _wgslsmith_sub_i32(1i, -1i), true, var_2), !select(var_1.b, select(var_1.b, var_1.b, var_1.b), all(var_1.b.zyy)), !select(select(vec4<bool>(true, var_2, var_2, false), vec4<bool>(false, var_1.b.x, true, false), false), var_1.b, var_1.b)));
    global0 = array<Struct_4, 8>();
    return 520f;
}

fn func_4(arg_0: f32) -> vec4<bool> {
    let var_0 = select(vec3<bool>(false, all(vec2<bool>(arg_0 >= -1159f, true)), any(!select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, true)))), select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>((u_input.c | u_input.c) < u_input.b.x, 1i < u_input.b.x, any(vec4<bool>(true, true, true, true)))), all(select(vec2<bool>(-41272i != u_input.b.x, all(vec3<bool>(false, false, false))), select(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true)), vec2<bool>(true, true), true), vec2<bool>(false, all(vec3<bool>(true, true, false))))));
    global1 = array<vec4<u32>, 30>();
    let var_1 = vec2<f32>(arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(arg_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_0))))) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -2226f), arg_0))))));
    var var_2 = Struct_1(var_0.zz, arg_0, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -963f), -895f, arg_0))));
    global0 = array<Struct_4, 8>();
    return select(!select(!vec4<bool>(var_0.x, false, false, true), select(vec4<bool>(var_2.a.x, true, false, var_0.x), select(vec4<bool>(var_0.x, var_0.x, var_2.a.x, false), vec4<bool>(true, true, true, var_0.x), vec4<bool>(true, true, false, false)), !vec4<bool>(false, var_2.a.x, true, false)), !(!vec4<bool>(var_2.a.x, var_0.x, false, var_2.a.x))), !(!select(vec4<bool>(var_0.x, var_2.a.x, true, var_2.a.x), vec4<bool>(true, true, true, var_2.a.x), true)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)))) == var_2.b);
}

fn func_2(arg_0: vec3<i32>) -> u32 {
    global0 = array<Struct_4, 8>();
    var var_0 = ~_wgslsmith_dot_vec3_u32(vec3<u32>(50276u, u_input.e.x, 1u), firstTrailingBit(vec3<u32>(~1u, _wgslsmith_dot_vec3_u32(u_input.e.xyw, u_input.e.zyw), 0u)));
    var_0 = 1u;
    let var_1 = Struct_3(true, select(func_4(_wgslsmith_f_op_f32(func_3())), vec4<bool>(true, true, true, true), vec4<bool>((-7903i >> (1u % 32u)) <= ~u_input.c, false, any(vec3<bool>(true, true, true)) != true, true)));
    var var_2 = Struct_4(var_1.b.ww, -abs(~arg_0.zy), vec2<i32>(arg_0.x, -1i));
    return _wgslsmith_div_u32(u_input.e.x, (u_input.e.x & ~18604u) & _wgslsmith_mult_u32(u_input.e.x, _wgslsmith_sub_u32(u_input.e.x, 61508u))) >> (0u % 32u);
}

fn func_1(arg_0: vec2<bool>) -> Struct_2 {
    global1 = array<vec4<u32>, 30>();
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-378f, -171f)))))));
    var var_1 = func_2(firstTrailingBit(-(abs(vec3<i32>(u_input.d, -1233i, -2147483647i)) & _wgslsmith_div_vec3_i32(vec3<i32>(u_input.b.x, 2147483647i, u_input.c), vec3<i32>(1i, 2129i, u_input.a)))));
    var_1 = u_input.e.x;
    let var_2 = !(!(!arg_0.x));
    return Struct_2(any(!select(select(vec3<bool>(false, true, true), vec3<bool>(true, arg_0.x, true), vec3<bool>(var_2, false, false)), select(vec3<bool>(var_2, false, var_2), vec3<bool>(var_2, true, var_2), true), true)));
}

fn func_5(arg_0: i32, arg_1: Struct_2, arg_2: Struct_2, arg_3: vec2<u32>) -> f32 {
    global1 = array<vec4<u32>, 30>();
    global0 = array<Struct_4, 8>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1103f, _wgslsmith_f_op_f32(func_3())))) + _wgslsmith_f_op_f32(floor(-896f))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<u32>, 30>();
    global1 = array<vec4<u32>, 30>();
    global1 = array<vec4<u32>, 30>();
    var var_0 = _wgslsmith_f_op_f32(func_5(-9235i, func_1(vec2<bool>(select(false, true, any(vec3<bool>(true, true, false))), false)), func_1(vec2<bool>(true, false)), _wgslsmith_clamp_vec2_u32(countOneBits(vec2<u32>(firstLeadingBit(69658u), ~u_input.e.x)), _wgslsmith_mult_vec2_u32(vec2<u32>(_wgslsmith_div_u32(81822u, u_input.e.x), ~11482u), ~vec2<u32>(1u, 0u)), ~vec2<u32>(27514u, 30450u) << (~u_input.e.zw % vec2<u32>(32u)))));
    var var_1 = select(!vec3<bool>(false, true, !(-6106i <= u_input.b.x)), vec3<bool>(!func_4(994f).x, true, true), true);
    var var_2 = Struct_3(!any(select(vec2<bool>(true, var_1.x), vec2<bool>(var_1.x, var_1.x), var_1.yy)), vec4<bool>(any(var_1.zx), true, true, all(!select(vec3<bool>(false, true, var_1.x), vec3<bool>(var_1.x, var_1.x, false), var_1.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1080f)) * _wgslsmith_f_op_f32(-725f + 1700f)), _wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-2153f + -674f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(674f, -1040f))))) - _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1238f), _wgslsmith_f_op_f32(f32(-1f) * -1534f), _wgslsmith_f_op_f32(1000f - -1131f), -1271f), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1024f, -629f, -170f, 265f) * vec4<f32>(1806f, -584f, 824f, 2397f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-292f, 1576f, -1557f, -231f)))))));
}

