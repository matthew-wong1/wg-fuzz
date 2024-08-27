struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: f32,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: u32,
    c: vec3<bool>,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_1(arg_0: Struct_1) -> Struct_4 {
    var var_0 = vec4<i32>(-_wgslsmith_sub_i32(52624i & _wgslsmith_add_i32(-2147483647i, u_input.a.x), u_input.a.x), u_input.a.x, u_input.a.x, u_input.a.x);
    return Struct_4(arg_0.a, 0u, vec3<bool>(true, all(vec4<bool>(any(vec2<bool>(false, true)), any(vec3<bool>(false, true, true)), true, u_input.a.x <= var_0.x)), true), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_0.a, -154f, arg_0.a)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-308f, -1450f, arg_0.a), vec3<f32>(1097f, -1473f, arg_0.a)))) - vec3<f32>(arg_0.a, 556f, arg_0.a)))));
}

fn func_3(arg_0: f32) -> f32 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1190f + _wgslsmith_f_op_f32(-arg_0)) + _wgslsmith_f_op_f32(214f + _wgslsmith_f_op_f32(-221f + -1000f))))));
    var var_1 = Struct_2(select(!select(vec2<bool>(false, false), vec2<bool>(true, true), func_1(Struct_1(var_0.a)).c.xz), vec2<bool>(any(vec4<bool>(false, false, true, true)), true), select(func_1(Struct_1(arg_0)).c.zx, select(vec2<bool>(true, true), vec2<bool>(false, true), true), !func_1(Struct_1(var_0.a)).c.yx)), -1217f);
    let var_2 = Struct_3(false, Struct_2(select(func_1(Struct_1(-2318f)).c.yz, var_1.a, vec2<bool>(any(vec3<bool>(var_1.a.x, true, true)), false)), -909f));
    let var_3 = u_input.a.zx;
    var var_4 = Struct_4(arg_0, _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(u_input.b.ww, u_input.b.zx), _wgslsmith_sub_vec2_u32(u_input.b.zw, ~u_input.b.zx)), u_input.b.x), !(!(!select(vec3<bool>(false, false, false), vec3<bool>(true, false, var_2.b.a.x), vec3<bool>(var_1.a.x, false, true)))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, var_1.b, 2079f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1005f, 482f, 1212f)) + func_1(Struct_1(var_1.b)).d), !(!vec3<bool>(var_1.a.x, true, true)))))));
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a * -2221f) * 185f)));
}

fn func_2(arg_0: i32, arg_1: i32, arg_2: Struct_4, arg_3: Struct_4) -> vec3<bool> {
    let var_0 = 19715i;
    let var_1 = arg_3.b;
    var var_2 = select(vec2<i32>(arg_0, arg_1), u_input.a.zy, arg_2.c.xy);
    let var_3 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(663f, arg_2.d.x, _wgslsmith_f_op_f32(abs(arg_3.d.x))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(vec3<f32>(-1406f, arg_3.d.x, 238f), vec3<f32>(1169f, -103f, 781f))))) * _wgslsmith_f_op_vec3_f32(sign(arg_2.d))), vec3<f32>(-1099f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_2.a), arg_3.d.x)) * _wgslsmith_f_op_f32(max(arg_3.a, arg_3.a))), -1000f), arg_3.c));
    let var_4 = u_input.b.xyy;
    return vec3<bool>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(arg_2.a))), -1586f) < var_3.x, arg_3.c.x | !any(vec4<bool>(arg_3.c.x, arg_3.c.x, true, false)), all(select(!(!vec2<bool>(true, arg_3.c.x)), func_1(Struct_1(arg_2.a)).c.yz, vec2<bool>(arg_3.c.x, true))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<bool>(true, true, !all(func_2(1i, u_input.a.x, func_1(Struct_1(309f)), func_1(Struct_1(357f)))), !(!all(select(vec2<bool>(true, true), vec2<bool>(true, true), false))));
    var_0 = vec4<bool>(!var_0.x, true, _wgslsmith_clamp_u32(1u, (u_input.b.x >> (u_input.b.x % 32u)) & _wgslsmith_dot_vec4_u32(vec4<u32>(56801u, 38933u, 1u, u_input.b.x), vec4<u32>(7870u, u_input.b.x, 54324u, 4294967295u)), func_1(Struct_1(392f)).b) >= 1u, u_input.b.x < _wgslsmith_mod_u32(u_input.b.x, u_input.b.x));
    var var_1 = Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-811f, -1716f))) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(-1521f, _wgslsmith_f_op_f32(trunc(-1170f))))))), _wgslsmith_mult_u32(u_input.b.x, 70793u), var_0.zww, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) + vec3<f32>(_wgslsmith_f_op_f32(1048f - -1567f), _wgslsmith_f_op_f32(1248f - -301f), _wgslsmith_f_op_f32(-262f * -1196f)))));
    let var_2 = vec3<i32>(-u_input.a.x, firstTrailingBit(abs(1i)), -9510i);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.x);
}

