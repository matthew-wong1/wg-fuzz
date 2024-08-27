struct Struct_1 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: u32,
    d: vec4<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<u32>,
    c: vec4<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 27> = array<vec2<bool>, 27>(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: bool, arg_1: u32) -> u32 {
    let var_0 = u_input.a.x;
    return 24878u;
}

fn func_2() -> f32 {
    global0 = array<vec2<bool>, 27>();
    let var_0 = _wgslsmith_f_op_f32(-969f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1254f))));
    var var_1 = Struct_1(~(~vec3<u32>(firstTrailingBit(1u), func_3(true, 1645u), u_input.d.x)));
    let var_2 = Struct_1(max(~_wgslsmith_mult_vec3_u32(reverseBits(vec3<u32>(0u, u_input.b.x, 4294967295u)), ~vec3<u32>(9082u, u_input.d.x, 0u)), var_1.a));
    var var_3 = true;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0)) - _wgslsmith_f_op_f32(floor(1098f)));
}

fn func_1(arg_0: f32, arg_1: vec4<bool>, arg_2: Struct_1) -> bool {
    var var_0 = vec3<bool>(_wgslsmith_f_op_f32(-arg_0) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(f32(-1f) * -1202f))) + arg_0), false, any(arg_1.yw));
    var_0 = select(!arg_1.zzy, vec3<bool>(any(vec2<bool>(var_0.x, var_0.x || arg_1.x)), true, u_input.a.x <= u_input.a.x), !(!(arg_0 >= -163f)));
    var var_1 = _wgslsmith_f_op_f32(max(307f, 1000f));
    var var_2 = select(arg_1.xzz, select(vec3<bool>(any(select(arg_1, arg_1, true)), ~u_input.a.x < _wgslsmith_mult_i32(21602i, u_input.a.x), true), !select(arg_1.xyx, arg_1.xzx, var_0.x), !arg_1.xxw), firstTrailingBit(select(u_input.a.x & u_input.e.x, u_input.e.x, false)) < _wgslsmith_sub_i32(-2803i, -11658i));
    var_2 = select(arg_1.yzx, !(!(!(!arg_1.xxw))), select(arg_1.wyz, !(!select(arg_1.wxw, vec3<bool>(true, true, false), true)), arg_1.xwy));
    return !(!arg_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), -2147483647i <= u_input.e.x)));
    let var_1 = u_input.a;
    global0 = array<vec2<bool>, 27>();
    let var_2 = -754f;
    var var_3 = ~select(min(vec2<i32>(-1i, _wgslsmith_mult_i32(var_1.x, var_1.x)), firstTrailingBit(vec2<i32>(u_input.e.x, u_input.a.x) | vec2<i32>(1i, 2147483647i))), vec2<i32>(-1i) * -select(var_1, vec2<i32>(2147483647i, var_1.x), true), select(var_0.x, !var_0.x, select(false, func_1(var_2, vec4<bool>(var_0.x, true, var_0.x, true), Struct_1(u_input.b.zzw)), any(var_0))));
    var_3 = vec2<i32>(-1i, _wgslsmith_div_i32(~(~max(u_input.e.x, u_input.e.x)), -var_3.x));
    var_3 = u_input.e;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-862f, var_2, -921f, var_2)))), _wgslsmith_mod_vec3_u32(vec3<u32>(reverseBits(_wgslsmith_clamp_u32(13234u, 4294967295u, u_input.c)), ~u_input.b.x, min(1u, u_input.b.x)), abs(reverseBits(firstLeadingBit(vec3<u32>(u_input.b.x, 48657u, u_input.d.x))))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1469f, -1059f, -408f, -1127f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(396f, 2006f, -619f, -883f))) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(978f, 1000f, -567f, 161f), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_2, -1236f, var_2, var_2))), var_0.x))))), 4294967295u);
}

