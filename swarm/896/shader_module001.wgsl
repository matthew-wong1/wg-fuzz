struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec4<u32>,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: bool, arg_1: vec4<bool>, arg_2: i32) -> vec3<f32> {
    var var_0 = u_input.c.yzx;
    let var_1 = Struct_1(0i);
    var var_2 = Struct_1(-1i);
    var var_3 = var_1;
    let var_4 = select(u_input.b.x, 1u, true);
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-465f, -1838f, -924f), vec3<f32>(-566f, -109f, 124f))))), vec3<f32>(1327f, _wgslsmith_f_op_f32(max(1904f, 1529f)), _wgslsmith_f_op_f32(f32(-1f) * -304f))))));
}

fn func_4(arg_0: vec2<u32>, arg_1: vec3<f32>) -> vec4<i32> {
    let var_0 = u_input.b;
    var var_1 = _wgslsmith_sub_u32(~select(arg_0.x, u_input.b.x, any(vec3<bool>(true, true, true))), 25469u);
    var_1 = 4294967295u;
    var_1 = var_0.x;
    var var_2 = Struct_1(u_input.e.x);
    return ~abs(min(_wgslsmith_mod_vec4_i32(vec4<i32>(var_2.a, 3956i, 24929i, var_2.a), _wgslsmith_mod_vec4_i32(vec4<i32>(19397i, -36696i, -1i, -34331i), vec4<i32>(u_input.d, 35841i, -33001i, -52419i))), vec4<i32>(~(-47700i), _wgslsmith_add_i32(-50795i, 1i), 13411i ^ var_2.a, var_2.a | u_input.d)));
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    var var_0 = !(true | (0u < ~(31347u | u_input.a)));
    var var_1 = -func_4(~vec2<u32>(_wgslsmith_mult_u32(38657u, u_input.b.x), ~u_input.c.x), _wgslsmith_f_op_vec3_f32(func_3(true, vec4<bool>(0u > u_input.b.x, true, any(vec3<bool>(true, false, false)), true), -arg_0.a)));
    var var_2 = arg_0;
    var_0 = true;
    var var_3 = vec2<bool>(true, (u_input.e.x << (0u % 32u)) <= var_1.x);
    return Struct_1(var_1.x);
}

fn func_1(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: f32, arg_3: Struct_1) -> f32 {
    var var_0 = ~(~max(u_input.b.x, 26768u));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, arg_2, arg_2, 731f)), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1427f), arg_2, arg_2, -2245f), vec4<bool>(-203f <= arg_2, any(vec4<bool>(false, true, false, false)), arg_2 != 1000f, all(vec2<bool>(false, true))))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, arg_2, _wgslsmith_f_op_f32(1690f - arg_2), _wgslsmith_f_op_f32(864f * arg_2)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, -191f, arg_2, -932f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, arg_2, -290f, -242f))))));
    var var_2 = func_2(arg_0);
    var var_3 = abs(26549u);
    var_3 = arg_1.x;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_2))) * -1225f);
}

fn func_5(arg_0: f32, arg_1: Struct_1, arg_2: i32, arg_3: Struct_1) -> Struct_1 {
    var var_0 = Struct_1(firstTrailingBit(-arg_1.a));
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-388f, 571f, arg_0) * vec3<f32>(1211f, arg_0, -1000f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-730f, arg_0, arg_0) * vec3<f32>(-1357f, arg_0, arg_0))) + _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(161f, arg_0, arg_0)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_0, 987f, arg_0), vec3<f32>(330f, arg_0, arg_0), vec3<bool>(false, false, true))), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1257f, -966f, -500f))), true))))) + _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1798f, arg_0, 727f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, arg_0, arg_0)))))));
    let var_2 = arg_3;
    var var_3 = !vec4<bool>(true, false, !any(vec2<bool>(false, false)) && true, any(vec3<bool>(true, true, true)));
    var var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(arg_0, 904f), var_1.zy))))));
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1501f, 510f, 1833f, -1848f), vec4<f32>(1155f, -1103f, -564f, -2406f)))), vec4<f32>(1f, 1f, 1f, 1f)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-902f, -333f, -638f, 605f))))));
    var var_1 = !(!(!vec2<bool>(true, 2147483647i < u_input.d)));
    var var_2 = func_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_1(u_input.e.x), u_input.c.xw, var_0.x, Struct_1(-13740i)))) * var_0.x), Struct_1(-1i), ~1i, func_2(Struct_1(26292i)));
    var_1 = !(!select(vec2<bool>(true, true), !select(vec2<bool>(var_1.x, true), vec2<bool>(true, false), vec2<bool>(false, false)), select(!vec2<bool>(true, var_1.x), select(vec2<bool>(var_1.x, false), vec2<bool>(var_1.x, false), var_1.x), !vec2<bool>(true, var_1.x))));
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(2427f * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-971f + -896f), -666f, u_input.b.x >= u_input.c.x)))), var_0.x, var_0.x);
    let var_4 = _wgslsmith_div_f32(-1511f, var_0.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_u32(~abs(~vec3<u32>(2145u, u_input.c.x, 0u)), ~_wgslsmith_sub_vec3_u32(vec3<u32>(0u, u_input.b.x, u_input.c.x), u_input.b)), ~min(1u, 1u), var_0.wy);
}

