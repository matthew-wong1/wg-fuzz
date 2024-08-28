struct Struct_1 {
    a: vec2<bool>,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<u32>,
    c: vec3<i32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<u32>) -> i32 {
    var var_0 = vec4<f32>(-609f, _wgslsmith_f_op_f32(-arg_0.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-126f)) - arg_0.b.x), _wgslsmith_f_op_f32(f32(-1f) * -943f));
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1196f, _wgslsmith_f_op_f32(f32(-1f) * -1207f), _wgslsmith_f_op_f32(floor(-877f)), -364f) - vec4<f32>(790f, _wgslsmith_f_op_f32(step(-157f, arg_0.b.x)), arg_0.b.x, _wgslsmith_f_op_f32(trunc(-874f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -1674f, 213f, -543f))))));
    var var_1 = Struct_1(select(!select(!arg_0.a, !vec2<bool>(arg_0.a.x, false), arg_0.a.x), !vec2<bool>(arg_0.a.x, arg_0.a.x), arg_1.x == ~55143u), vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(arg_0.b.x)))), -640f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.b.x), _wgslsmith_f_op_f32(-106f + _wgslsmith_f_op_f32(floor(-149f))))));
    var_1 = arg_0;
    var_0 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(vec4<f32>(-1441f, 1091f, var_0.x, 235f), vec4<f32>(-788f, 307f, 1299f, 443f)))))))));
    return u_input.a;
}

fn func_2(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: i32) -> bool {
    var var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b.x)) + _wgslsmith_f_op_f32(step(-604f, arg_0.b.x)))));
    var_0 = 886f;
    let var_1 = any(vec3<bool>(func_3(Struct_1(arg_0.a, vec3<f32>(226f, arg_0.b.x, 555f)), arg_1) > _wgslsmith_div_i32(~(-2147483647i), i32(-1i) * -5104i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(505f))) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b.x) * _wgslsmith_div_f32(arg_0.b.x, arg_0.b.x)), all(select(!vec3<bool>(true, false, arg_0.a.x), select(vec3<bool>(arg_0.a.x, false, arg_0.a.x), vec3<bool>(false, false, arg_0.a.x), arg_0.a.x), !vec3<bool>(false, true, arg_0.a.x)))));
    var_0 = _wgslsmith_f_op_f32(-arg_0.b.x);
    var_0 = 317f;
    return true;
}

fn func_1(arg_0: u32) -> vec4<i32> {
    var var_0 = true;
    var_0 = all(vec4<bool>(true, true, false, all(vec3<bool>(true, true, true))));
    var var_1 = Struct_1(vec2<bool>(select(true, true, true) | true, any(vec4<bool>(func_2(Struct_1(vec2<bool>(false, false), vec3<f32>(1000f, 1000f, -510f)), vec2<u32>(arg_0, arg_0), u_input.b.x), false, true, true))), vec3<f32>(-154f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1069f))) + _wgslsmith_f_op_f32(round(-902f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -468f) + -356f)));
    let var_2 = all(vec3<bool>(!any(!vec4<bool>(false, true, var_1.a.x, false)), true, var_1.a.x));
    var var_3 = firstTrailingBit(5736i);
    return vec4<i32>(~u_input.b.x, u_input.b.x, -1i, -33741i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = reverseBits(func_1(4401u));
    var_0 = -func_1(4294967295u);
    var_0 = min(u_input.b, _wgslsmith_mult_vec4_i32(~u_input.b, ~max(_wgslsmith_mult_vec4_i32(u_input.b, u_input.b), vec4<i32>(-7447i, u_input.a, 2147483647i, 2147483647i))));
    let var_1 = var_0.xyx;
    var var_2 = vec3<bool>(true, true, true);
    let var_3 = true;
    var var_4 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(-108f, 661f)))) * 1000f) - 118f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-750f - -628f) - _wgslsmith_f_op_f32(select(190f, -644f, var_2.x))))))), _wgslsmith_f_op_f32(max(1257f, _wgslsmith_f_op_f32(floor(-948f)))));
    var var_5 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_4.x)) * var_4.x)));
    var_5 = var_4.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_4.x, var_4.x, var_4.x) + vec3<f32>(var_4.x, -592f, 770f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_4.x, var_4.x, var_4.x) * vec3<f32>(947f, var_4.x, var_4.x)))))), select(vec4<u32>(~115u, ~37551u, ~61621u, _wgslsmith_clamp_u32(0u, 8988u, 4294967295u)), vec4<u32>(1u, 1u, 1u, 1u), vec4<bool>(true, true, true, true)) & firstLeadingBit(~vec4<u32>(4352u, 0u, 0u, 71490u)), ~_wgslsmith_div_vec3_i32(_wgslsmith_mod_vec3_i32(~var_0.yxw, var_0.zxz), -vec3<i32>(2147483647i, -19251i, 1i) >> (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u))), vec4<i32>(1i, abs(-u_input.b.x) | 0i, select(func_3(Struct_1(vec2<bool>(var_3, var_2.x), vec3<f32>(1130f, -1435f, var_4.x)), ~vec2<u32>(4294967295u, 115960u)), var_1.x, all(select(vec4<bool>(var_2.x, true, var_2.x, var_2.x), vec4<bool>(false, var_3, var_2.x, var_3), vec4<bool>(true, false, true, var_3)))), ~(-48723i)));
}

