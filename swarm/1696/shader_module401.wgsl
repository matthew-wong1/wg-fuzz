struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: u32,
    c: vec4<f32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: i32, arg_1: Struct_2, arg_2: Struct_2) -> bool {
    var var_0 = ~(-arg_1.d.a.x);
    var_0 = i32(-1i) * -9262i;
    var_0 = firstLeadingBit(-21683i);
    var var_1 = -491f;
    let var_2 = Struct_1(~vec3<i32>(_wgslsmith_dot_vec4_i32(-vec4<i32>(-45907i, arg_0, arg_2.d.a.x, arg_2.d.a.x), vec4<i32>(u_input.a.x, u_input.a.x, -29430i, 0i)), _wgslsmith_dot_vec3_i32(arg_2.d.a, vec3<i32>(1i, 380i, -27181i) ^ vec3<i32>(arg_1.d.a.x, arg_0, 10795i)), 45177i));
    return !(1441f >= arg_2.a.x) && !any(vec3<bool>(true, select(false, true, false), false));
}

fn func_2(arg_0: vec2<bool>, arg_1: vec4<u32>, arg_2: vec3<f32>) -> vec4<f32> {
    let var_0 = true && any(vec4<bool>(!all(vec3<bool>(arg_0.x, arg_0.x, arg_0.x)), arg_0.x, true, func_3(u_input.a.x, Struct_2(vec2<f32>(arg_2.x, -305f), arg_1.x, vec4<f32>(arg_2.x, arg_2.x, arg_2.x, -725f), Struct_1(u_input.a)), Struct_2(vec2<f32>(1000f, 483f), arg_1.x, vec4<f32>(1596f, -1254f, arg_2.x, arg_2.x), Struct_1(u_input.a)))));
    var var_1 = ~arg_1.x;
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_2.x, _wgslsmith_f_op_f32(abs(-338f)), 584f, 500f), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-251f, arg_2.x, -367f, arg_2.x))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.x, -1000f, 2793f, arg_2.x)))), !(!vec4<bool>(arg_0.x, true, var_0, arg_0.x)))), all(vec3<bool>(true, false, false)))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, _wgslsmith_f_op_f32(f32(-1f) * -136f), arg_2.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_2.x, 2732f) - -142f))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_2, arg_3: Struct_1) -> Struct_1 {
    return Struct_1(vec3<i32>(1i, ~firstTrailingBit(2147483647i), arg_2.d.a.x >> (~arg_0.b % 32u)));
}

fn func_1(arg_0: vec2<bool>, arg_1: vec3<bool>, arg_2: bool) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -240f));
    let var_1 = Struct_1(u_input.a | u_input.a);
    var var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1483f, _wgslsmith_f_op_f32(abs(1911f)))))), 1u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-513f, -839f, 1342f, -1344f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1068f, 459f, -620f, -1123f))))), func_4(Struct_2(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-647f, -1387f))), _wgslsmith_div_u32(~0u, 1u), _wgslsmith_f_op_vec4_f32(func_2(arg_0, ~vec4<u32>(4294967295u, 25090u, 125360u, 1u), vec3<f32>(-685f, 1000f, 355f))), Struct_1(select(u_input.a, vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<bool>(false, arg_0.x, false)))), Struct_2(_wgslsmith_f_op_vec4_f32(func_2(select(arg_1.zy, arg_1.zz, vec2<bool>(arg_1.x, true)), ~vec4<u32>(101436u, 9471u, 23670u, 4364u), _wgslsmith_div_vec3_f32(vec3<f32>(129f, 1235f, 1001f), vec3<f32>(-1045f, -2173f, -1000f)))).yy, 0u >> (firstTrailingBit(22186u) % 32u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(672f, 652f, 774f, 230f), vec4<f32>(832f, 372f, 1616f, -447f)))), Struct_1(var_1.a)), Struct_2(vec2<f32>(_wgslsmith_f_op_f32(floor(-2289f)), _wgslsmith_f_op_vec4_f32(func_2(vec2<bool>(true, true), vec4<u32>(41055u, 1u, 0u, 4294967295u), vec3<f32>(-1697f, -2009f, -409f))).x), 5063u, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1008f, -1951f, 235f, -1000f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -116f, -1171f, -1040f))), var_1), Struct_1(vec3<i32>(-1i, countOneBits(var_1.a.x), _wgslsmith_add_i32(0i, var_1.a.x)))));
    return var_2.d;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(~u_input.a);
    var_0 = Struct_1(vec3<i32>(u_input.a.x, _wgslsmith_dot_vec2_i32(vec2<i32>(abs(u_input.a.x), -2147483647i), select(vec2<i32>(var_0.a.x, -2147483647i), select(var_0.a.xx, vec2<i32>(2147483647i, var_0.a.x), vec2<bool>(true, false)), true)), 2147483647i));
    var_0 = Struct_1(u_input.a);
    let var_1 = !select(select(vec4<bool>(false, true, all(vec3<bool>(false, true, true)), true), vec4<bool>(true, true, false, true), 1076f <= _wgslsmith_f_op_f32(ceil(-1000f))), vec4<bool>(true, true, true, true), select(vec4<bool>(select(false, false, false), true, all(vec4<bool>(false, false, true, true)), true), vec4<bool>(22599i > u_input.a.x, true, all(vec4<bool>(true, false, true, false)), true), select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true))));
    var var_2 = false;
    var_0 = func_1(!var_1.xz, var_1.yyz, false);
    var var_3 = select(~firstLeadingBit(~vec4<i32>(var_0.a.x, -1i, -64548i, u_input.a.x)), max(vec4<i32>(min(var_0.a.x, var_0.a.x) & -25573i, u_input.a.x, ~(~var_0.a.x), 1i), ~(-(~vec4<i32>(2147483647i, var_0.a.x, var_0.a.x, u_input.a.x)))), !select(vec4<bool>(var_1.x, any(var_1), true, var_1.x), !vec4<bool>(true, false, false, var_1.x), true));
    var_0 = Struct_1(-func_1(!vec2<bool>(var_1.x, true), select(select(var_1.wyz, var_1.xyz, vec3<bool>(var_1.x, false, true)), select(vec3<bool>(var_1.x, false, true), var_1.ywz, vec3<bool>(var_1.x, var_1.x, var_1.x)), !var_1.x), true).a);
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1333f, 701f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(select(var_4, _wgslsmith_f_op_f32(sign(var_4)), !var_1.x)), 1i, _wgslsmith_dot_vec3_i32(var_3.yyz, vec3<i32>(34837i, _wgslsmith_sub_i32(-52141i, var_3.x), -1i)) & 1i);
}

