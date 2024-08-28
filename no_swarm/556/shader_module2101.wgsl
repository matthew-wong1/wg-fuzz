struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec4<i32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec2<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(14661i, -39329i, 4357i, -47986i);

var<private> global1: array<vec2<i32>, 23> = array<vec2<i32>, 23>(vec2<i32>(2920i, 24344i), vec2<i32>(44488i, i32(-2147483648)), vec2<i32>(19344i, -1i), vec2<i32>(-1i, 1i), vec2<i32>(-13588i, 0i), vec2<i32>(-28750i, -24808i), vec2<i32>(1i, -51837i), vec2<i32>(0i, i32(-2147483648)), vec2<i32>(2147483647i, 71647i), vec2<i32>(-2944i, 2147483647i), vec2<i32>(38918i, -39524i), vec2<i32>(1i, -59320i), vec2<i32>(-33841i, 0i), vec2<i32>(27889i, 1i), vec2<i32>(-51840i, 2147483647i), vec2<i32>(1i, 50092i), vec2<i32>(-1i, -50120i), vec2<i32>(-11497i, 21498i), vec2<i32>(0i, 2147483647i), vec2<i32>(-1i, i32(-2147483648)), vec2<i32>(38114i, 1i), vec2<i32>(i32(-2147483648), -1i), vec2<i32>(16509i, -1i));

var<private> global2: array<vec2<i32>, 19> = array<vec2<i32>, 19>(vec2<i32>(0i, -1i), vec2<i32>(-15909i, 38584i), vec2<i32>(-45834i, 1i), vec2<i32>(-1i, -41272i), vec2<i32>(i32(-2147483648), -3790i), vec2<i32>(2147483647i, 0i), vec2<i32>(1i, 2147483647i), vec2<i32>(-52263i, -1i), vec2<i32>(-15350i, 0i), vec2<i32>(i32(-2147483648), -38542i), vec2<i32>(-1i, -29282i), vec2<i32>(0i, 0i), vec2<i32>(2147483647i, 1i), vec2<i32>(-1i, 73825i), vec2<i32>(4630i, -558i), vec2<i32>(i32(-2147483648), -1i), vec2<i32>(30980i, i32(-2147483648)), vec2<i32>(3528i, i32(-2147483648)), vec2<i32>(-1i, i32(-2147483648)));

var<private> global3: array<vec2<i32>, 6>;

var<private> global4: vec2<f32> = vec2<f32>(-337f, 239f);

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_2, arg_1: i32) -> vec3<f32> {
    global4 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(arg_0.a + vec2<f32>(-240f, 1182f)), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-arg_0.a), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.a.x, arg_0.a.x) + arg_0.a)))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(427f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + 1015f)))));
    let var_0 = !(!vec3<bool>(false, 14131i == select(u_input.a.x, 15823i, true), false));
    let var_1 = 1u;
    var var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-180f, arg_0.a.x)));
    var_2 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -357f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a.x) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_0.a.x))))));
    return vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a.x + global4.x) + arg_0.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-572f * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1491f, -738f)))), _wgslsmith_f_op_f32(sign(-578f)));
}

fn func_2(arg_0: i32) -> vec2<u32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(Struct_2(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(global4.x, -827f) + vec2<f32>(global4.x, 1172f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(global4.x, -1036f) - vec2<f32>(513f, global4.x)), vec2<bool>(true, true)))), 0i)) + _wgslsmith_f_op_vec3_f32(func_3(Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(151f, global4.x))))), 10500i)));
    global1 = array<vec2<i32>, 23>();
    global3 = array<vec2<i32>, 6>();
    var var_1 = Struct_1(select(vec3<bool>(false, select(var_0.x > global4.x, global0.x > u_input.a.x, any(vec3<bool>(false, true, true))), !(u_input.b != u_input.d)), vec3<bool>(true, true, true), !select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), all(vec2<bool>(false, false)))));
    var var_2 = select(var_1.a.xz, select(var_1.a.zx, var_1.a.yy, vec2<bool>(false, true)), vec2<bool>(!var_1.a.x, true));
    return ~(~(~(vec2<u32>(u_input.e, u_input.d) << (~vec2<u32>(4294967295u, u_input.e) % vec2<u32>(32u)))));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: vec2<u32>) -> Struct_2 {
    let var_0 = u_input.c.xz;
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global4.x, global4.x))), var_0.x)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(305f, global4.x, global4.x) + vec3<f32>(-410f, global4.x, 769f))))));
    let var_2 = false;
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-932f)) + var_1.x);
    let var_4 = vec2<bool>(var_2, any(vec4<bool>(var_2, all(!vec2<bool>(false, var_2)), true, true)));
    return Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, -1000f) - vec2<f32>(276f, -675f)))) + vec2<f32>(var_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global4.x) - global4.x))));
}

fn func_1(arg_0: Struct_1) -> vec2<f32> {
    global2 = array<vec2<i32>, 19>();
    var var_0 = func_4(Struct_1(select(arg_0.a, arg_0.a, any(arg_0.a.zz))), _wgslsmith_add_vec2_u32((~vec2<u32>(u_input.e, u_input.e) & func_2(-6222i)) >> (~(~vec2<u32>(5255u, u_input.d)) % vec2<u32>(32u)), _wgslsmith_add_vec2_u32(~select(vec2<u32>(u_input.b, 81554u), vec2<u32>(u_input.d, 1u), arg_0.a.x), ~vec2<u32>(0u, 1u))), ~(vec2<u32>(0u, u_input.b) >> (max(firstTrailingBit(vec2<u32>(0u, 0u)), max(vec2<u32>(u_input.d, 4294967295u), vec2<u32>(u_input.b, 23769u))) % vec2<u32>(32u))));
    let var_1 = Struct_1(vec3<bool>(all(!(!vec4<bool>(arg_0.a.x, arg_0.a.x, false, true))), any(select(vec4<bool>(arg_0.a.x, true, true, arg_0.a.x), vec4<bool>(arg_0.a.x, arg_0.a.x, false, true), vec4<bool>(arg_0.a.x, arg_0.a.x, arg_0.a.x, arg_0.a.x))) || (arg_0.a.x | !arg_0.a.x), false));
    global1 = array<vec2<i32>, 23>();
    let var_2 = abs(u_input.a.x);
    return var_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(select(!vec3<bool>(all(vec2<bool>(true, true)), true, u_input.b != u_input.b), select(select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), true)), vec3<bool>(true, false, false), false), vec3<bool>(true, true, true)));
    global1 = array<vec2<i32>, 23>();
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(global4.x + global4.x), _wgslsmith_f_op_f32(global4.x * global4.x)) - _wgslsmith_div_vec2_f32(vec2<f32>(global4.x, global4.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(676f, global4.x)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(func_1(Struct_1(vec3<bool>(var_0.a.x, false, true)))))) * vec2<f32>(global4.x, _wgslsmith_f_op_f32(ceil(global4.x))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1154f, 687f)) - vec2<f32>(-856f, -1028f)) + _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-710f, -1710f), vec2<f32>(global4.x, global4.x))))))));
    global0 = abs(u_input.c);
    var_0 = Struct_1(var_0.a);
    global4 = _wgslsmith_f_op_vec2_f32(max(var_1, var_1));
    global0 = u_input.a & -u_input.c;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4.x - 264f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global4.x)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x))))), var_1.x, vec2<u32>(1u, ~(~u_input.e)), abs(reverseBits(u_input.d)));
}

