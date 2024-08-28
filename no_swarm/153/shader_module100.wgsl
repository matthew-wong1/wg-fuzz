struct Struct_1 {
    a: vec2<bool>,
    b: f32,
    c: f32,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<i32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: u32;

var<private> global2: array<vec2<i32>, 8> = array<vec2<i32>, 8>(vec2<i32>(31983i, 18666i), vec2<i32>(i32(-2147483648), 0i), vec2<i32>(2147483647i, 0i), vec2<i32>(0i, 0i), vec2<i32>(1i, 1i), vec2<i32>(1i, 0i), vec2<i32>(-1i, 18542i), vec2<i32>(7857i, 1i));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: vec2<f32>) -> vec2<bool> {
    let var_0 = arg_1;
    var var_1 = var_0;
    let var_2 = arg_1.a;
    var var_3 = 38852i;
    let var_4 = vec2<bool>(false && (true || !arg_1.a.a.x), var_2.a.x);
    return !vec2<bool>(any(!(!vec4<bool>(arg_1.a.a.x, true, var_0.a.a.x, false))), !all(select(arg_1.a.a, vec2<bool>(false, true), arg_0.x)));
}

fn func_2() -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -622f));
    let var_1 = Struct_2(Struct_1(select(vec2<bool>(true, true), vec2<bool>(true, true), select(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true)), vec2<bool>(true, true), func_3(vec2<bool>(true, true), Struct_2(Struct_1(vec2<bool>(true, true), var_0, var_0, var_0)), vec2<f32>(1656f, var_0)))), _wgslsmith_f_op_f32(trunc(-1460f)), _wgslsmith_f_op_f32(-var_0), _wgslsmith_div_f32(var_0, var_0)));
    global1 = _wgslsmith_dot_vec2_u32(select(vec2<u32>(~1u, 0u), reverseBits(reverseBits(~vec2<u32>(0u, 0u))), select(vec2<bool>(var_1.a.a.x, !var_1.a.a.x), vec2<bool>(!var_1.a.a.x, !var_1.a.a.x), vec2<bool>(any(vec3<bool>(var_1.a.a.x, var_1.a.a.x, false)), all(vec3<bool>(false, var_1.a.a.x, var_1.a.a.x))))), vec2<u32>(52301u, _wgslsmith_div_u32(50277u, 1u)));
    var var_2 = var_1.a.a.x | false;
    let var_3 = _wgslsmith_div_vec4_i32(u_input.b, u_input.b);
    return var_1;
}

fn func_1(arg_0: bool, arg_1: i32, arg_2: u32, arg_3: Struct_2) -> Struct_2 {
    var var_0 = func_2();
    var_0 = arg_3;
    global0 = arg_3.a.a.x;
    global2 = array<vec2<i32>, 8>();
    var var_1 = vec4<bool>(true, select(-1i, -abs(u_input.b.x), true) > -arg_1, (var_0.a.d != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_0.a.d)) * _wgslsmith_f_op_f32(sign(var_0.a.c)))) & var_0.a.a.x, arg_0);
    return func_2();
}

fn func_4(arg_0: bool, arg_1: Struct_2, arg_2: Struct_2) -> vec2<bool> {
    let var_0 = select(!(!select(!vec3<bool>(arg_0, true, arg_0), !vec3<bool>(arg_1.a.a.x, arg_0, false), !vec3<bool>(arg_2.a.a.x, arg_1.a.a.x, arg_2.a.a.x))), vec3<bool>(arg_2.a.a.x, arg_2.a.a.x, arg_2.a.a.x), select(!(!select(vec3<bool>(false, arg_2.a.a.x, false), vec3<bool>(false, arg_0, false), true)), !(!vec3<bool>(arg_0, arg_2.a.a.x, arg_2.a.a.x)), select(false, arg_2.a.c < _wgslsmith_f_op_f32(-arg_1.a.b), arg_1.a.a.x)));
    var var_1 = -(23864i & u_input.a.x);
    let var_2 = arg_1;
    let var_3 = abs(~vec3<u32>(_wgslsmith_mod_u32(min(28702u, 1u), ~99047u), ~firstTrailingBit(2681u), ~firstLeadingBit(81962u)));
    let var_4 = ~(i32(-1i) * -(~countOneBits(2147483647i)));
    return !func_3(var_0.zz, var_2, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(arg_1.a.d, arg_1.a.b))))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec2<i32>, 8>();
    global1 = 94884u;
    let var_0 = Struct_1(func_4(false, func_1(true, _wgslsmith_dot_vec4_i32(-u_input.b, ~u_input.c), 1u, Struct_2(Struct_1(vec2<bool>(true, false), 451f, -1824f, 1193f))), Struct_2(func_2().a)), 1f, -2065f, _wgslsmith_f_op_f32(576f + -286f));
    global2 = array<vec2<i32>, 8>();
    let var_1 = !vec3<bool>(true, var_0.a.x & func_4(all(vec2<bool>(true, var_0.a.x)), Struct_2(Struct_1(vec2<bool>(var_0.a.x, false), var_0.c, var_0.d, -1554f)), Struct_2(Struct_1(var_0.a, var_0.d, -111f, var_0.d))).x, 748f >= _wgslsmith_f_op_f32(trunc(1464f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b, var_0.c, 1520f, 870f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1286f, 394f, var_0.c, var_0.c))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(734f, 615f, -1667f, 242f))), true)) + _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1284f, var_0.b, -908f, var_0.b)) - _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-2142f, -943f, -158f, var_0.c), vec4<f32>(-1150f, -1339f, var_0.b, var_0.c)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1483f, 1977f, var_0.c, var_0.b))))))), u_input.b & ~(select(vec4<i32>(393i, -1i, u_input.a.x, 19989i), vec4<i32>(-21007i, u_input.a.x, u_input.b.x, 1i), var_0.a.x) | _wgslsmith_div_vec4_i32(u_input.c, u_input.a)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -786f), func_2().a.d)), var_0.c, _wgslsmith_f_op_f32(select(func_2().a.d, _wgslsmith_f_op_f32(var_0.c + 341f), var_1.x)), var_0.b)));
}

