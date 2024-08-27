struct Struct_1 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> vec3<bool> {
    var var_0 = vec4<bool>(true, true, true, any(select(vec2<bool>(true, true), vec2<bool>(true, true), true)) || true);
    let var_1 = var_0.ww;
    var_0 = !(!vec4<bool>(false, _wgslsmith_clamp_u32(43957u, u_input.a.x, 30844u) >= _wgslsmith_mod_u32(u_input.b.x, u_input.b.x), var_1.x, (u_input.b.x & u_input.b.x) > _wgslsmith_mod_u32(u_input.b.x, 43006u)));
    var_0 = vec4<bool>(var_1.x, var_1.x, false, !(!var_1.x));
    var var_2 = all(vec3<bool>(all(vec3<bool>(any(vec3<bool>(true, var_0.x, false)), true, !var_1.x)), ~(-23636i << (u_input.b.x % 32u)) < 1i, true));
    return vec3<bool>(var_0.x, true, var_1.x);
}

fn func_2(arg_0: vec2<u32>, arg_1: bool, arg_2: vec2<f32>, arg_3: Struct_1) -> vec3<bool> {
    return select(select(select(!(!vec3<bool>(false, arg_1, true)), func_3(), any(vec4<bool>(true, arg_3.a.x, true, false))), vec3<bool>(!arg_1, any(arg_3.a.zx), true), arg_1), func_3(), !func_3());
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_1(!select(func_2(u_input.a, true, _wgslsmith_f_op_vec2_f32(vec2<f32>(-880f, 774f) - vec2<f32>(530f, 890f)), Struct_1(vec3<bool>(false, false, false))), select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), all(vec4<bool>(false, false, true, false))), func_3()));
    let var_1 = select(u_input.b, abs(vec4<u32>(~_wgslsmith_dot_vec2_u32(u_input.b.zy, u_input.a), ~(u_input.b.x >> (u_input.b.x % 32u)), ~28737u | abs(u_input.a.x), reverseBits(u_input.a.x))), true);
    var var_2 = Struct_1(!(!(!(!var_0.a))));
    var var_3 = Struct_1(vec3<bool>(func_3().x, var_2.a.x, true));
    let var_4 = -939f;
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(768f + -1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1000f)) * _wgslsmith_f_op_f32(step(1791f, 1182f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-357f, -693f, true))))));
    var var_1 = -1i;
    var_0 = vec2<f32>(419f, -112f);
    var var_2 = func_1();
    var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f));
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -878f), _wgslsmith_f_op_f32(var_0.x + 397f)))) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-449f))), -1501f))), var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -921f)), var_0.x);
    let var_4 = _wgslsmith_dot_vec2_i32(~vec2<i32>(select(2497i, -697i, func_1().a.x), -4237i), _wgslsmith_sub_vec2_i32(~vec2<i32>(min(4685i, -56749i), _wgslsmith_add_i32(11506i, -1i)), ~(-firstTrailingBit(vec2<i32>(38441i, -2147483647i)))));
    let x = u_input.a;
    s_output = StorageBuffer(min(var_4, ~(-(~var_4))));
}

