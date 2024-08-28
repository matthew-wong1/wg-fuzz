struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: i32,
    c: vec3<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: i32,
    d: vec4<u32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: f32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 204f;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec3<f32>, arg_1: vec3<u32>, arg_2: vec4<bool>, arg_3: Struct_3) -> vec3<f32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_0.zz - arg_0.zz)));
    let var_1 = _wgslsmith_f_op_vec2_f32(-arg_0.yz);
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(1008f)), var_0.x);
    var var_3 = Struct_1(vec3<bool>(!arg_2.x, min(_wgslsmith_sub_i32(-65709i, u_input.a), u_input.b ^ -2147483647i) <= arg_3.a.a.x, arg_2.x));
    var_3 = Struct_1(select(!arg_3.b.c, vec3<bool>(select(arg_2.x, false, false), any(var_3.a), var_3.a.x), !arg_3.b.c));
    return _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_0 - arg_0)))))));
}

fn func_2(arg_0: f32, arg_1: Struct_1) -> i32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, arg_0, arg_0)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(vec3<f32>(164f, arg_0, arg_0), vec3<u32>(u_input.c, u_input.c, u_input.c), vec4<bool>(false, arg_1.a.x, arg_1.a.x, arg_1.a.x), Struct_3(Struct_2(vec3<i32>(-67101i, u_input.a, 2147483647i), u_input.b, vec3<bool>(arg_1.a.x, arg_1.a.x, arg_1.a.x)), Struct_2(vec3<i32>(u_input.b, u_input.a, u_input.b), u_input.a, arg_1.a), u_input.a, vec4<u32>(4294967295u, u_input.c, 9785u, 81447u), Struct_1(vec3<bool>(false, true, arg_1.a.x))))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, arg_0, 372f) + vec3<f32>(-680f, -582f, arg_0))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1157f, 1192f, arg_0), vec3<f32>(1755f, -311f, 2773f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(864f, arg_0, arg_0)))))));
    let var_1 = !select(!(!(!arg_1.a)), select(select(arg_1.a, !vec3<bool>(arg_1.a.x, arg_1.a.x, false), !arg_1.a.x), !vec3<bool>(false, true, arg_1.a.x), arg_1.a.x), !select(arg_1.a.x, !arg_1.a.x, false));
    return abs(u_input.a);
}

fn func_1(arg_0: bool, arg_1: vec3<u32>, arg_2: vec4<bool>, arg_3: vec3<f32>) -> bool {
    let var_0 = Struct_1(arg_2.ywz);
    let var_1 = vec3<i32>(u_input.b, u_input.a, abs(_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, u_input.b, u_input.a, u_input.a), vec4<i32>(1i, u_input.b, 65124i, u_input.b)), u_input.a ^ 2147483647i)) | ~func_2(-941f, Struct_1(var_0.a)));
    var var_2 = 1010f;
    var var_3 = Struct_1(!select(var_0.a, vec3<bool>(true, arg_2.x, any(var_0.a)), !arg_2.xwy));
    var var_4 = vec2<bool>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_3.x * 2133f))) != -598f, var_0.a.x);
    return !arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(select(!select(vec3<bool>(false, true, true), select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true)), all(vec2<bool>(false, false))), select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), all(vec3<bool>(false, false, true))), vec3<bool>(true, true, true), !func_1(false, vec3<u32>(0u, u_input.c, u_input.c), vec4<bool>(true, true, false, false), vec3<f32>(520f, 1826f, -372f))), select(vec3<bool>(any(vec3<bool>(true, true, true)), true, all(vec4<bool>(false, true, true, true))), vec3<bool>(true, true, true), !select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), false))));
    var_0 = Struct_1(!var_0.a);
    global0 = -1000f;
    var var_1 = select(select(!select(!vec4<bool>(true, var_0.a.x, true, true), !vec4<bool>(var_0.a.x, false, false, var_0.a.x), var_0.a.x), select(select(!vec4<bool>(false, true, var_0.a.x, var_0.a.x), !vec4<bool>(true, var_0.a.x, var_0.a.x, false), !vec4<bool>(false, false, false, var_0.a.x)), select(select(vec4<bool>(var_0.a.x, false, true, var_0.a.x), vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, var_0.a.x)), vec4<bool>(var_0.a.x, true, true, var_0.a.x), vec4<bool>(var_0.a.x, true, var_0.a.x, var_0.a.x)), !var_0.a.x), vec4<bool>(true, var_0.a.x, true, any(var_0.a.yx))), select(select(vec4<bool>(2147483647i < u_input.b, 2147483647i <= u_input.b, var_0.a.x, true), select(select(vec4<bool>(var_0.a.x, var_0.a.x, false, true), vec4<bool>(var_0.a.x, false, true, false), vec4<bool>(var_0.a.x, false, false, var_0.a.x)), select(vec4<bool>(var_0.a.x, var_0.a.x, var_0.a.x, var_0.a.x), vec4<bool>(var_0.a.x, true, var_0.a.x, var_0.a.x), var_0.a.x), !var_0.a.x), !vec4<bool>(true, var_0.a.x, true, false)), select(vec4<bool>(!var_0.a.x, any(vec4<bool>(var_0.a.x, var_0.a.x, false, false)), any(var_0.a.yz), !var_0.a.x), vec4<bool>(all(var_0.a), true, all(vec3<bool>(var_0.a.x, var_0.a.x, var_0.a.x)), var_0.a.x), select(!vec4<bool>(var_0.a.x, var_0.a.x, true, var_0.a.x), select(vec4<bool>(false, false, var_0.a.x, var_0.a.x), vec4<bool>(true, false, var_0.a.x, true), vec4<bool>(var_0.a.x, var_0.a.x, true, var_0.a.x)), select(vec4<bool>(var_0.a.x, var_0.a.x, false, false), vec4<bool>(var_0.a.x, var_0.a.x, true, false), var_0.a.x))), vec4<bool>(var_0.a.x, func_1(u_input.c < u_input.c, firstTrailingBit(vec3<u32>(u_input.c, 0u, u_input.c)), vec4<bool>(false, var_0.a.x, var_0.a.x, false), _wgslsmith_f_op_vec3_f32(vec3<f32>(-566f, 209f, -444f) + vec3<f32>(-601f, -1386f, -1124f))), true && any(vec4<bool>(var_0.a.x, var_0.a.x, true, false)), all(vec4<bool>(var_0.a.x, var_0.a.x, true, true)) || true)), !vec4<bool>(any(var_0.a.zy), all(select(var_0.a.yz, vec2<bool>(var_0.a.x, false), var_0.a.zz)), true, true));
    var_1 = select(!select(select(vec4<bool>(var_1.x, var_0.a.x, true, true), select(vec4<bool>(var_1.x, true, var_0.a.x, false), vec4<bool>(var_1.x, false, false, true), true), var_0.a.x), select(vec4<bool>(true, true, var_1.x, true), vec4<bool>(var_0.a.x, false, false, false), select(vec4<bool>(var_1.x, var_1.x, true, var_0.a.x), vec4<bool>(false, var_0.a.x, var_1.x, var_1.x), var_0.a.x)), !select(vec4<bool>(var_0.a.x, false, false, false), vec4<bool>(false, var_0.a.x, var_0.a.x, var_0.a.x), var_1.x)), select(select(!(!vec4<bool>(true, var_1.x, false, var_0.a.x)), !select(vec4<bool>(false, var_1.x, false, var_1.x), vec4<bool>(var_0.a.x, true, false, false), vec4<bool>(var_1.x, false, false, var_1.x)), ~u_input.a < 1i), select(select(!vec4<bool>(false, true, var_0.a.x, var_1.x), !vec4<bool>(var_0.a.x, true, var_0.a.x, true), !var_1.x), vec4<bool>(true, false & var_0.a.x, var_0.a.x, func_1(var_1.x, vec3<u32>(1u, u_input.c, 5254u), vec4<bool>(true, true, true, true), vec3<f32>(1267f, -1000f, -476f))), vec4<bool>(true, true, var_0.a.x, true)), false), false);
    var var_2 = var_0.a.x;
    var var_3 = var_0.a.zy;
    var var_4 = Struct_1(select(!var_0.a, vec3<bool>(false, select(true, false, u_input.a != u_input.a), !var_3.x), vec3<bool>(var_0.a.x, var_1.x, !var_0.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, 85127u), vec2<u32>(u_input.c, 15530u) & select(vec2<u32>(5453u, 4294967295u), vec2<u32>(4294967295u, 76563u), false)), ~4294967295u), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_div_f32(-1051f, _wgslsmith_f_op_f32(ceil(1000f))), _wgslsmith_f_op_f32(-459f * 464f)), vec3<f32>(_wgslsmith_f_op_f32(-227f - _wgslsmith_f_op_f32(abs(-2050f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-447f)) - _wgslsmith_f_op_f32(sign(-800f))), _wgslsmith_f_op_f32(-1048f - 922f)))), _wgslsmith_f_op_f32(min(-635f, -1290f)), _wgslsmith_div_vec3_u32(countOneBits(reverseBits(vec3<u32>(u_input.c, 9699u, 94542u))) << (_wgslsmith_div_vec3_u32(vec3<u32>(7174u, u_input.c, 11502u), vec3<u32>(78356u, u_input.c, 4294967295u) >> (vec3<u32>(1u, 24287u, u_input.c) % vec3<u32>(32u))) % vec3<u32>(32u)), ~vec3<u32>(~u_input.c, u_input.c, u_input.c)));
}

