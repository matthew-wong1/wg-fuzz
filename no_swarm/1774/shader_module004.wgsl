struct Struct_1 {
    a: i32,
    b: vec2<bool>,
    c: bool,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
    d: i32,
}

struct Struct_3 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: vec2<f32>,
    d: vec2<i32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: Struct_3) -> vec2<bool> {
    let var_0 = u_input.b ^ global0.x;
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-571f, -242f), vec2<f32>(1354f, -176f))))), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1000f, -1844f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-610f, -1215f))))))));
    let var_2 = Struct_1(2147483647i, arg_0.a.xz, arg_0.a.x);
    var var_3 = vec2<i32>(var_2.a, -29342i);
    var var_4 = arg_0;
    return vec2<bool>(true, true);
}

fn func_2() -> Struct_1 {
    return Struct_1(-2147483647i, vec2<bool>(false, true != (all(vec2<bool>(true, true)) && any(vec2<bool>(true, false)))), false || all(!func_3(Struct_3(vec3<bool>(true, true, false)))));
}

fn func_1(arg_0: f32) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(round(arg_0));
    return Struct_2(-1239f, func_2(), Struct_1(_wgslsmith_clamp_i32(2147483647i, _wgslsmith_dot_vec2_i32(select(vec2<i32>(2147483647i, 31489i), vec2<i32>(9853i, 0i), false), u_input.c.xx), 2147483647i), vec2<bool>(any(vec3<bool>(false, true, true)), false), (_wgslsmith_f_op_f32(f32(-1f) * -1000f) > arg_0) & all(vec3<bool>(true, false, false))), countOneBits(~(-2147483647i)));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3, arg_2: vec2<f32>, arg_3: vec4<bool>) -> StorageBuffer {
    var var_0 = !(!func_3(Struct_3(arg_1.a)).x);
    let var_1 = Struct_3(!arg_3.wyw);
    global0 = _wgslsmith_mult_vec3_u32(~(max(vec3<u32>(u_input.b, u_input.b, u_input.b), vec3<u32>(u_input.b, u_input.b, u_input.b)) >> (reverseBits(vec3<u32>(global0.x, 42021u, 36923u)) % vec3<u32>(32u))) << (vec3<u32>(u_input.b, u_input.b, 4294967295u) % vec3<u32>(32u)), ~(~_wgslsmith_mult_vec3_u32(select(vec3<u32>(global0.x, 4294967295u, u_input.b), vec3<u32>(global0.x, 1u, 0u), arg_3.zzy), vec3<u32>(17593u, 0u, global0.x))));
    let var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(arg_0.a)), arg_0.a) - -1010f)))));
    var_0 = any(vec3<bool>(true, var_1.a.x, !(_wgslsmith_f_op_f32(arg_0.a + 1655f) >= 983f)));
    return StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_2.x, -712f))) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_0.a - arg_2.x)))), -957f, arg_0.a), arg_0.c.a, arg_2, max(abs(~(~vec2<i32>(-2147483647i, arg_0.b.a))), _wgslsmith_clamp_vec2_i32(vec2<i32>(firstTrailingBit(20598i), i32(-1i) * -43995i), u_input.c.yy << (_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.b, 48693u), global0.zx) % vec2<u32>(32u)), vec2<i32>(2147483647i, -u_input.a))), ~vec2<i32>(-_wgslsmith_div_i32(35598i, -22741i), u_input.d));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~countOneBits(countOneBits(vec4<i32>(u_input.c.x, u_input.a, u_input.a, u_input.a) | select(vec4<i32>(u_input.a, 2147483647i, -17924i, -65359i), vec4<i32>(-2147483647i, u_input.a, u_input.d, u_input.c.x), vec4<bool>(true, false, false, true))));
    let var_1 = global0.yz;
    let x = u_input.a;
    s_output = func_4(func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))), Struct_3(!select(select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), true), select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true)), true)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-2139f, 2069f), vec2<f32>(578f, -807f)))) - vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1298f), -119f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(705f, 906f)) * vec2<f32>(_wgslsmith_f_op_f32(floor(-1000f)), _wgslsmith_f_op_f32(sign(736f))))), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, false), false)), vec4<bool>(true, true, true, true)), select(any(select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, true), true)), true, any(vec2<bool>(true, true)))));
}

