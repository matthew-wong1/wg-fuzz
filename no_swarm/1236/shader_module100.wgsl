struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: Struct_1,
    d: i32,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_2) -> bool {
    var var_0 = ~(~_wgslsmith_div_u32(4294967295u, 1u));
    var_0 = arg_1.c.a.x;
    var var_1 = -413f;
    var var_2 = arg_1.e;
    var_0 = var_2.a.x;
    return any(select(vec3<bool>(true, true, any(select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(true, true, false)))), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), true));
}

fn func_2(arg_0: Struct_1) -> f32 {
    let var_0 = select(vec3<bool>(false, !(true & all(vec2<bool>(false, true))), true), !vec3<bool>(all(vec3<bool>(true, false, false)), false | all(vec4<bool>(true, true, false, false)), func_3(abs(vec3<i32>(u_input.b.x, 2147483647i, 1267i)), Struct_2(arg_0, vec2<u32>(24301u, 18584u), arg_0, 0i, arg_0))), false);
    var var_1 = arg_0;
    var var_2 = max(u_input.b, u_input.c.yy);
    var_2 = u_input.b;
    let var_3 = Struct_1(vec3<u32>(~(68606u & reverseBits(var_1.a.x)), ~1u, ~1u));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-445f + -875f)), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(649f, 408f))))) - -1625f);
}

fn func_1(arg_0: Struct_2, arg_1: Struct_1) -> bool {
    var var_0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1115f, -1874f), vec2<f32>(-1620f, -1238f))) * _wgslsmith_div_vec2_f32(vec2<f32>(-1000f, -658f), vec2<f32>(1136f, -366f))) - vec2<f32>(-833f, _wgslsmith_f_op_f32(floor(-2655f)))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(1207f, -1548f))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1279f + -567f), 1057f))), -1765f), false));
    var_0 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(vec2<f32>(744f, var_0.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-319f, 1593f))), _wgslsmith_div_vec2_f32(vec2<f32>(-1284f, var_0.x), _wgslsmith_f_op_vec2_f32(vec2<f32>(-791f, 824f) - vec2<f32>(-1004f, -506f))))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, var_0.x)) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1000f, var_0.x), vec2<f32>(-512f, var_0.x), false))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, 650f))))))));
    var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-2112f)) * var_0.x))), -1433f));
    var_0 = vec2<f32>(_wgslsmith_f_op_f32(-1642f * var_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(var_0.x, var_0.x), _wgslsmith_div_f32(-221f, var_0.x)) - var_0.x) * _wgslsmith_f_op_f32(func_2(arg_0.c))));
    var_0 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1956f, var_0.x)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, var_0.x) * vec2<f32>(var_0.x, 587f)) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.x, -425f), vec2<f32>(462f, 462f), true))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-708f, -268f) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, -1000f) + vec2<f32>(var_0.x, 592f)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1825f, var_0.x))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, var_0.x) + vec2<f32>(var_0.x, var_0.x))))));
    return select(true, true, !(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-618f - var_0.x), _wgslsmith_f_op_f32(279f - var_0.x))) > _wgslsmith_f_op_f32(trunc(-745f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true == any(!vec2<bool>(false, func_1(Struct_2(Struct_1(vec3<u32>(4294967295u, 27070u, 11612u)), vec2<u32>(33094u, 27435u), Struct_1(vec3<u32>(53888u, 21119u, 0u)), -1i, Struct_1(vec3<u32>(1u, 1u, 0u))), Struct_1(vec3<u32>(1u, 4294967295u, 38169u)))));
    var_0 = true;
    var var_1 = _wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 25686u), vec2<u32>(4294967295u, 1u)) & ~58684u, 1u, ~31147u, ~4294967295u), ~min(vec4<u32>(1u, 1u, 1u, 1u), ~vec4<u32>(0u, 0u, 1u, 44890u))) & abs(abs(~_wgslsmith_mod_vec4_u32(vec4<u32>(0u, 51685u, 0u, 0u), vec4<u32>(61112u, 65840u, 15661u, 4294967295u))));
    let var_2 = Struct_1(vec3<u32>(_wgslsmith_mod_u32(var_1.x, 95645u), var_1.x, _wgslsmith_mod_u32(var_1.x, ~_wgslsmith_mult_u32(var_1.x, 42361u))));
    let var_3 = var_1.wyy;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec2_i32(u_input.c.yy, ~u_input.c.zx >> (var_3.xx % vec2<u32>(32u)), ~max(u_input.b, u_input.c.zx)), var_2.a.x);
}

