struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: bool,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec4<bool>,
    c: i32,
    d: i32,
    e: Struct_2,
}

struct Struct_4 {
    a: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> bool {
    let var_0 = u_input.a.x & 4294967295u;
    var var_1 = Struct_4(-662f);
    var var_2 = 1u;
    let var_3 = _wgslsmith_div_i32(_wgslsmith_mod_i32(i32(-1i) * -(~(-25126i)), i32(-1i) * -2147483647i), 22765i);
    let var_4 = var_3;
    return any(select(vec2<bool>(all(select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), true)), false), vec2<bool>((u_input.a.x < var_0) || all(vec3<bool>(false, false, true)), !(var_1.a != var_1.a)), vec2<bool>(all(vec3<bool>(true, true, true)), false)));
}

fn func_2() -> vec4<f32> {
    let var_0 = Struct_3(-1025f, !vec4<bool>(!any(vec3<bool>(true, true, false)), func_3(), true, select(true, false, true)), max(-countOneBits(1i), -2147483647i), _wgslsmith_mod_i32(max(-2147483647i, min(-5051i, -440i)), 49394i), Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(-858f, -195f, 1175f, 878f) + vec4<f32>(-1000f, 600f, -529f, -940f)))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(342f, -107f, 111f, 2305f) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1073f, -372f, 1868f, -1000f), vec4<f32>(-2021f, 592f, 189f, 576f), false)))), any(vec3<bool>(true, true, true)), Struct_1(select(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false)), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false)), any(vec3<bool>(true, true, false)))), Struct_1(vec2<bool>(true, true))));
    let var_1 = var_0.e;
    var var_2 = 1000f;
    var var_3 = var_1.c;
    let var_4 = var_3.a.x;
    return vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.e.a.x))), -857f, var_0.a, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_1.a.x))), _wgslsmith_f_op_f32(round(2450f))))));
}

fn func_1(arg_0: vec3<bool>) -> Struct_4 {
    var var_0 = arg_0.x;
    let var_1 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1258f, 1000f)) * -1134f)), _wgslsmith_f_op_f32(f32(-1f) * -153f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1047f, 555f)) - 1f), -435f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1441f - -677f))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(200f, 1621f, 880f, -904f) - vec4<f32>(-1107f, -2023f, -1116f, 622f)) + _wgslsmith_f_op_vec4_f32(func_2())))));
    let var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(var_1.x - -892f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_1.x)) + _wgslsmith_f_op_f32(select(var_1.x, 308f, arg_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x + 578f) + _wgslsmith_f_op_f32(2345f * var_1.x))) - var_1), any(!(!(!arg_0.yy))), Struct_1(vec2<bool>(firstTrailingBit(u_input.a.x) > u_input.a.x, all(!vec4<bool>(false, arg_0.x, true, arg_0.x)))), Struct_1(select(select(!arg_0.xx, select(vec2<bool>(false, arg_0.x), arg_0.zx, arg_0.yz), true), select(arg_0.xz, vec2<bool>(arg_0.x, false), true), false)));
    var_0 = var_2.d.a.x;
    var_0 = any(select(vec3<bool>(arg_0.x, all(!vec4<bool>(true, arg_0.x, false, var_2.b)), _wgslsmith_div_f32(var_1.x, -782f) > _wgslsmith_f_op_f32(max(-1489f, -746f))), !vec3<bool>(false, u_input.a.x < 0u, var_2.d.a.x), var_2.b));
    return Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_2.a.x * 639f), -215f, false | var_2.c.a.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(true == all(select(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false)), vec3<bool>(true, false, false), all(vec2<bool>(false, true)))));
    var_0 = !(!any(vec4<bool>(true, true, true, false)) || (1i >= (countOneBits(-37368i) >> (u_input.a.x % 32u))));
    let var_1 = 1566f;
    var var_2 = func_1(select(vec3<bool>(true, false, true), select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), true), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), true), vec3<bool>(false, true, true))), any(vec2<bool>(true, true))));
    var_2 = Struct_4(647f);
    let var_3 = _wgslsmith_add_u32(countOneBits(_wgslsmith_clamp_u32(~(u_input.a.x & u_input.a.x), 9227u, u_input.a.x)), ~(~select(1u, u_input.a.x, true)) ^ _wgslsmith_dot_vec4_u32(firstTrailingBit(min(u_input.a, vec4<u32>(36832u, u_input.a.x, 0u, u_input.a.x))), ~vec4<u32>(u_input.a.x, 32538u, u_input.a.x, u_input.a.x)));
    var_0 = all(select(select(vec3<bool>(all(vec2<bool>(true, false)), any(vec3<bool>(false, true, false)), any(vec4<bool>(false, false, true, false))), select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), false), true), select(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(true, false, true))), true), vec3<bool>(true, true, true)));
    let x = u_input.a;
    s_output = StorageBuffer(-abs(1i), -(~(-_wgslsmith_clamp_vec3_i32(vec3<i32>(-2147483647i, -43105i, 1i), vec3<i32>(2147483647i, 0i, 17072i), vec3<i32>(2147483647i, 2147483647i, 0i)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1000f + 648f), _wgslsmith_f_op_f32(max(412f, 2437f)))), _wgslsmith_f_op_f32(f32(-1f) * -956f), -564f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_1)))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(var_1 * 821f), var_2.a, var_1, var_1))));
}

