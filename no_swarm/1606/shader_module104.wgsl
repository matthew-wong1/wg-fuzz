struct Struct_1 {
    a: vec2<i32>,
    b: vec2<f32>,
    c: f32,
    d: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: vec4<u32>) -> f32 {
    var var_0 = Struct_1(~(~(-vec2<i32>(1i, 1i))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-663f, -1000f) * vec2<f32>(-808f, 1018f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 538f))))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -881f)) * _wgslsmith_f_op_f32(min(880f, _wgslsmith_f_op_f32(step(-251f, _wgslsmith_f_op_f32(step(256f, -1279f))))))), _wgslsmith_f_op_f32(abs(-849f)));
    var_0 = Struct_1(var_0.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.b) + vec2<f32>(var_0.b.x, _wgslsmith_f_op_f32(var_0.d * _wgslsmith_div_f32(-1111f, var_0.b.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c - var_0.d)))), var_0.d);
    var_0 = Struct_1(vec2<i32>(_wgslsmith_mult_i32(0i, abs(var_0.a.x)), ~reverseBits(~2693i)), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.c, var_0.b.x) * var_0.b)))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(2269f - _wgslsmith_f_op_f32(-var_0.b.x)), _wgslsmith_f_op_f32(f32(-1f) * -640f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.d * -177f), var_0.c))) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d)), var_0.b.x, false))));
    let var_1 = Struct_1(-_wgslsmith_div_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(var_0.a.x, var_0.a.x), var_0.a, var_0.a), min(vec2<i32>(var_0.a.x, var_0.a.x), vec2<i32>(var_0.a.x, 0i))) & -((vec2<i32>(2147483647i, var_0.a.x) & var_0.a) ^ var_0.a), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_0.b, var_0.b)), -1350f, _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(var_0.c, var_0.c))), var_0.d), _wgslsmith_div_f32(2023f, _wgslsmith_f_op_f32(-605f - 1000f)))));
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b.x, 1164f, var_0.b.x, var_0.c)))))) * _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -417f))), var_1.d, 2087f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.d) + -410f)))));
    return -1000f;
}

fn func_4(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: vec4<f32>) -> f32 {
    var var_0 = vec4<bool>(all(select(vec4<bool>(false, false, true, true), !select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, false)), arg_0.d >= _wgslsmith_f_op_f32(f32(-1f) * -2078f))), all(!select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(true, true, false)), vec3<bool>(true, true, true))), !(!all(select(vec2<bool>(false, false), vec2<bool>(true, true), false))), !select(true, all(vec3<bool>(false, false, true)), arg_0.a.x <= arg_0.a.x) & any(vec4<bool>(true, true, true, true)));
    let var_1 = arg_2.x;
    return -1088f;
}

fn func_2(arg_0: Struct_1) -> vec3<f32> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1547f)) != _wgslsmith_f_op_f32(func_4(arg_0, _wgslsmith_add_vec2_i32(vec2<i32>(0i, abs(-13180i)), ~reverseBits(arg_0.a)), _wgslsmith_div_vec4_f32(vec4<f32>(-1369f, arg_0.c, _wgslsmith_f_op_f32(-arg_0.c), _wgslsmith_f_op_f32(f32(-1f) * -107f)), vec4<f32>(_wgslsmith_f_op_f32(func_3(vec4<u32>(4294967295u, 25434u, u_input.a.x, u_input.a.x))), _wgslsmith_f_op_f32(f32(-1f) * -1110f), 529f, _wgslsmith_div_f32(arg_0.b.x, 213f)))));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(arg_0.b.x - arg_0.d), arg_0.b.x, _wgslsmith_f_op_f32(-1182f - -816f)), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -783f), _wgslsmith_f_op_f32(func_3(u_input.a)), -609f)))));
}

fn func_1(arg_0: u32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-739f, -2058f, -236f), vec3<f32>(-490f, -1501f, -994f)) + vec3<f32>(1f, 1f, 1f)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-639f, -285f, 1837f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(370f, 589f, 1000f)), _wgslsmith_f_op_vec3_f32(func_2(Struct_1(vec2<i32>(2147483647i, 1i), vec2<f32>(-955f, -2491f), 251f, 835f)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2622f, 1329f, 539f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 1587f, 1183f) * vec3<f32>(1000f, 374f, 834f)))))));
    let var_1 = !all(select(!select(vec2<bool>(false, false), vec2<bool>(true, true), true), select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true))), true));
    let var_2 = Struct_1(~vec2<i32>(-1i, 2147483647i), var_0.yy, -612f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.x, 399f)) * _wgslsmith_f_op_f32(f32(-1f) * -516f)), 280f, !var_1)));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_vec3_f32(func_2(Struct_1(var_2.a, vec2<f32>(var_2.b.x, 880f), var_2.b.x, -1284f))).x, _wgslsmith_div_f32(201f, -1000f)))) + 2387f) - var_2.c);
    var var_4 = !select(!select(select(vec3<bool>(true, true, false), vec3<bool>(var_1, var_1, var_1), vec3<bool>(false, false, var_1)), !vec3<bool>(false, var_1, var_1), select(vec3<bool>(var_1, var_1, var_1), vec3<bool>(true, var_1, var_1), var_1)), select(vec3<bool>(true, true, true), vec3<bool>(any(vec2<bool>(false, false)), var_1, any(vec2<bool>(var_1, var_1))), all(!vec3<bool>(var_1, var_1, var_1))), !(!var_1));
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~62067u);
    var var_1 = _wgslsmith_sub_vec2_i32(_wgslsmith_add_vec2_i32(_wgslsmith_add_vec2_i32(~(~vec2<i32>(-37325i, -4276i)), vec2<i32>(-2147483647i, -1i << (u_input.a.x % 32u))), countOneBits(_wgslsmith_sub_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(-7749i, -20740i), vec2<i32>(2147483647i, 68169i)), vec2<i32>(-37594i, 25622i) >> (vec2<u32>(u_input.a.x, 16133u) % vec2<u32>(32u))))), vec2<i32>(~1i << (u_input.a.x % 32u), i32(-1i) * -12753i));
    var var_2 = Struct_1(min(-vec2<i32>(var_1.x, -1121i), _wgslsmith_add_vec2_i32(-vec2<i32>(22291i, -41223i), abs(_wgslsmith_sub_vec2_i32(vec2<i32>(1i, 1i), vec2<i32>(-24053i, var_1.x))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-317f, -216f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-135f, 828f)))) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(2316f, -283f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-824f, 284f)), all(vec2<bool>(true, false))))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2133f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2131f - -161f)))), 544f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1000f, -104f, true))));
    var var_3 = var_2.a;
    var_3 = var_2.a << (abs(vec2<u32>(4294967295u, countOneBits(u_input.a.x | u_input.a.x))) % vec2<u32>(32u));
    var var_4 = var_1.x;
    var var_5 = 1u;
    var var_6 = func_1(u_input.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x << (u_input.a.x % 32u), u_input.a.x, var_2.a.x, ~max(-vec3<i32>(1i, var_1.x, var_1.x) | -vec3<i32>(var_1.x, 1i, var_6.a.x), ~vec3<i32>(var_6.a.x, -1i, 1i)));
}

