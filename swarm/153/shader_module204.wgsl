struct Struct_1 {
    a: f32,
    b: vec4<bool>,
    c: bool,
    d: f32,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> vec4<bool> {
    let var_0 = Struct_1(1987f, arg_1.b, true, -1471f, _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(arg_1.e, vec3<f32>(-1070f, -1879f, 412f))))), vec3<f32>(1228f, _wgslsmith_f_op_f32(f32(-1f) * -2147f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_0.d, 1000f)))))));
    var var_1 = select(!(!(!vec4<bool>(arg_1.b.x, arg_2.b.x, arg_2.b.x, false))), !arg_0.b, select(!var_0.b, vec4<bool>(-920f < arg_2.e.x, 1i < (32243i >> (u_input.a % 32u)), var_0.b.x, arg_0.c), false));
    return vec4<bool>(true, any(arg_1.b.wyy), true || arg_2.b.x, true);
}

fn func_2(arg_0: vec3<i32>) -> f32 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -522f), _wgslsmith_f_op_f32(trunc(-958f)))))), select(select(select(func_3(Struct_1(-1812f, vec4<bool>(false, true, true, true), true, 1080f, vec3<f32>(1323f, 578f, 606f)), Struct_1(-303f, vec4<bool>(true, false, false, false), true, -412f, vec3<f32>(-1840f, -1159f, -167f)), Struct_1(-509f, vec4<bool>(false, true, false, true), true, 305f, vec3<f32>(180f, 1221f, 1629f))), vec4<bool>(true, false, false, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true))), !select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, true), true), func_3(Struct_1(-678f, vec4<bool>(false, true, true, false), false, -1000f, vec3<f32>(913f, -310f, 925f)), Struct_1(1141f, vec4<bool>(true, false, false, false), true, 1013f, vec3<f32>(2622f, -424f, 954f)), Struct_1(1000f, vec4<bool>(true, false, false, true), true, 197f, vec3<f32>(1147f, 1193f, 586f)))), !func_3(Struct_1(-1245f, vec4<bool>(true, true, false, true), true, 884f, vec3<f32>(260f, -622f, -1633f)), Struct_1(-1361f, vec4<bool>(false, false, true, false), false, -1376f, vec3<f32>(291f, -1725f, -2178f)), Struct_1(569f, vec4<bool>(true, true, false, false), false, -1000f, vec3<f32>(-382f, 347f, 1135f))), vec4<bool>(true, true, true, true)), false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(-1478f, -338f, true)), _wgslsmith_f_op_f32(387f + 1273f))) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(1649f)), _wgslsmith_f_op_f32(sign(-698f))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -267f) - -1381f))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-971f - 170f), _wgslsmith_div_f32(-189f, -165f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(449f)))), _wgslsmith_f_op_f32(-331f - -1287f), _wgslsmith_f_op_f32(f32(-1f) * -806f)));
    let var_1 = _wgslsmith_div_vec3_f32(var_0.e, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(var_0.e)) + _wgslsmith_f_op_vec3_f32(-var_0.e)))))));
    let var_2 = Struct_1(1459f, var_0.b, true, _wgslsmith_f_op_f32(exp2(var_0.a)), var_1);
    var var_3 = Struct_1(_wgslsmith_f_op_f32(select(-197f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), var_2.b.x)), vec4<bool>(true, false, var_0.b.x, all(!select(var_0.b.wx, vec2<bool>(false, false), false))), !var_0.b.x, _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.e) * vec3<f32>(var_0.e.x, var_0.e.x, 686f)) * vec3<f32>(var_1.x, _wgslsmith_f_op_f32(195f + var_0.d), -1319f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(var_2.e + var_0.e)))))));
    var var_4 = _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-962f, _wgslsmith_div_f32(_wgslsmith_div_f32(var_1.x, var_0.d), _wgslsmith_f_op_f32(trunc(var_3.a))), -1737f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-163f, -801f, var_2.d) - _wgslsmith_f_op_vec3_f32(-var_3.e)))), vec3<f32>(var_1.x, -569f, _wgslsmith_f_op_f32(var_2.d * -2382f)));
    return _wgslsmith_f_op_f32(exp2(var_2.d));
}

fn func_1() -> Struct_1 {
    return Struct_1(_wgslsmith_f_op_f32(round(1238f)), vec4<bool>(true, _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(311f, 538f)), _wgslsmith_div_f32(-1439f, -1000f)) > _wgslsmith_f_op_f32(func_2(reverseBits(vec3<i32>(0i, 14166i, 22936i)))), true, true), any(!vec3<bool>(true, true, any(vec3<bool>(false, true, true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-820f, _wgslsmith_f_op_f32(sign(939f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1020f)) - -329f)) + -1000f), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(round(1192f)), _wgslsmith_f_op_f32(747f - -531f), _wgslsmith_f_op_f32(sign(331f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-253f, 1463f, -361f))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = vec4<f32>(var_0.d, 1104f, -827f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1044f + -789f), var_0.a)) * -374f));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(var_1.x + var_0.d), vec4<bool>(!(_wgslsmith_mult_u32(75107u, u_input.a) == max(u_input.b, u_input.a)), !var_0.b.x, var_0.b.x, var_0.c), var_0.c, -370f, var_1.xyy);
    let var_3 = var_2;
    var var_4 = _wgslsmith_mod_vec2_i32(vec2<i32>(i32(-1i) * -2147483647i, -45971i), vec2<i32>(i32(-1i) * -1i, ~1i));
    var var_5 = vec3<f32>(545f, -249f, _wgslsmith_f_op_f32(-var_3.a));
    var var_6 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(var_4.x, countOneBits(u_input.a), ~(~((vec3<u32>(u_input.a, 1u, 4294967295u) << (vec3<u32>(u_input.a, u_input.a, u_input.a) % vec3<u32>(32u))) & ~vec3<u32>(0u, u_input.b, 1u))), countOneBits(1u));
}

