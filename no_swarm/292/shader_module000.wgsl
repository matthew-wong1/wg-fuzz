struct Struct_1 {
    a: vec2<i32>,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<i32>,
    c: vec2<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<i32>, arg_3: Struct_1) -> vec4<f32> {
    var var_0 = -(~u_input.a);
    var var_1 = ~(~u_input.b);
    var var_2 = arg_0;
    var var_3 = Struct_1(vec2<i32>(-11100i, reverseBits(2147483647i)), arg_3.b);
    let var_4 = vec3<u32>(4294967295u, 4294967295u, 0u);
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(988f, -1460f, 435f, 1036f) - vec4<f32>(478f, 457f, 1000f, -357f))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(1000f)), _wgslsmith_f_op_f32(round(-1008f)), 989f, 1101f) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-537f, 1188f, 1092f, -678f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1358f, 365f, 672f, -1000f)), vec4<bool>(arg_0.b.x, true, arg_3.b.x, arg_1.b.x))))));
}

fn func_2(arg_0: f32, arg_1: vec4<u32>, arg_2: vec2<bool>, arg_3: vec3<bool>) -> bool {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_0, -335f, arg_0, 1000f))))) - _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(Struct_1(u_input.a.xx, vec2<bool>(arg_3.x, arg_3.x)), Struct_1(vec2<i32>(u_input.a.x, -9371i), vec2<bool>(arg_2.x, arg_2.x)), u_input.a.xxy, Struct_1(vec2<i32>(2147483647i, u_input.a.x), vec2<bool>(arg_3.x, arg_2.x)))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(1129f, arg_0, arg_0, 318f))))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(Struct_1(u_input.a.xx, arg_2), Struct_1(u_input.a.xz, vec2<bool>(true, false)), vec3<i32>(u_input.a.x, -2147483647i, -1i), Struct_1(u_input.a.xy, arg_3.yz))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_0, 179f, arg_0)))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-836f, -2920f, 1000f, -1477f)), vec4<f32>(_wgslsmith_f_op_f32(ceil(arg_0)), _wgslsmith_f_op_f32(arg_0 + arg_0), _wgslsmith_f_op_f32(round(arg_0)), -432f), u_input.a.x <= ~(-12072i)))));
    let var_1 = var_0.x;
    var var_2 = _wgslsmith_dot_vec4_u32(arg_1 ^ ~abs(vec4<u32>(arg_1.x, 636u, 1u, 43036u) << (arg_1 % vec4<u32>(32u))), vec4<u32>(~arg_1.x, ~reverseBits(0u) >> (arg_1.x % 32u), 4294967295u >> (~_wgslsmith_mult_u32(arg_1.x, arg_1.x) % 32u), arg_1.x));
    var var_3 = arg_3.xy;
    let var_4 = 341f;
    return arg_2.x;
}

fn func_1(arg_0: vec4<i32>, arg_1: bool) -> vec4<f32> {
    var var_0 = Struct_1(vec2<i32>(arg_0.x, u_input.c), !(!vec2<bool>(!arg_1, func_2(579f, vec4<u32>(34011u, 0u, 29712u, u_input.b), vec2<bool>(true, arg_1), vec3<bool>(true, true, arg_1)))));
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(104f, _wgslsmith_f_op_f32(f32(-1f) * -865f)) - _wgslsmith_f_op_vec4_f32(func_3(Struct_1(vec2<i32>(0i, -1i) >> (vec2<u32>(u_input.b, u_input.b) % vec2<u32>(32u)), select(vec2<bool>(var_0.b.x, var_0.b.x), vec2<bool>(true, var_0.b.x), false)), Struct_1(vec2<i32>(var_0.a.x, 2147483647i), vec2<bool>(var_0.b.x, false)), vec3<i32>(-var_0.a.x, min(var_0.a.x, -34074i), -2147483647i), Struct_1(~vec2<i32>(arg_0.x, -1i), !vec2<bool>(var_0.b.x, var_0.b.x)))).x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1f, _wgslsmith_div_f32(-1000f, -575f))))));
    let var_2 = var_0.a.x;
    var var_3 = Struct_1(u_input.a.xx, var_0.b);
    var_3 = Struct_1(_wgslsmith_div_vec2_i32(-countOneBits(-var_0.a), vec2<i32>(var_0.a.x, abs(var_3.a.x >> (4294967295u % 32u)))), !var_3.b);
    return vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-151f + -1759f)) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-501f - var_1.x)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(345f, var_1.x, false)), _wgslsmith_f_op_vec4_f32(func_3(Struct_1(vec2<i32>(var_0.a.x, u_input.c), vec2<bool>(false, arg_1)), Struct_1(var_0.a, var_3.b), abs(arg_0.xxy), Struct_1(vec2<i32>(2147483647i, 2209i), vec2<bool>(true, true)))).x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-234f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(1725f, var_1.x)), _wgslsmith_f_op_f32(-var_1.x)))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-667f - -139f) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(var_1.x, 1662f))))), _wgslsmith_f_op_vec4_f32(func_3(Struct_1(-vec2<i32>(15661i, 2147483647i), select(vec2<bool>(true, arg_1), vec2<bool>(var_0.b.x, var_0.b.x), var_3.b.x)), Struct_1(vec2<i32>(0i, u_input.a.x), var_0.b), u_input.a.xzx, Struct_1(-var_0.a, var_0.b))).x, !(!(true & var_3.b.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(vec2<i32>(-1i) * -_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), ~u_input.a.zz), !select(select(select(vec2<bool>(false, true), vec2<bool>(false, true), true), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true), select(select(vec2<bool>(false, false), vec2<bool>(false, true), false), vec2<bool>(true, false), true)));
    let var_1 = var_0;
    var var_2 = abs(_wgslsmith_div_vec3_i32(-u_input.a.xxx, vec3<i32>(_wgslsmith_sub_i32(max(-1i, 30531i), 2147483647i), _wgslsmith_add_i32(var_1.a.x, -11360i), ~(~var_1.a.x))));
    let var_3 = 26265u;
    var var_4 = var_0;
    var var_5 = Struct_1(vec2<i32>(2147483647i, abs(var_0.a.x)), vec2<bool>(true, true));
    var_4 = Struct_1(_wgslsmith_mult_vec2_i32(var_5.a & vec2<i32>(-var_0.a.x, ~var_5.a.x), vec2<i32>(var_0.a.x, countOneBits(u_input.c))), var_1.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-872f, -1719f, -669f, 1966f)))), _wgslsmith_f_op_vec4_f32(func_1(vec4<i32>(-13104i, var_4.a.x, 2147483647i, var_2.x) << (vec4<u32>(38998u, 4294967295u, 1u, var_3) % vec4<u32>(32u)), true)))), select(vec2<i32>(_wgslsmith_dot_vec2_i32(~vec2<i32>(var_0.a.x, -2147483647i), vec2<i32>(var_2.x, 62752i)), firstLeadingBit(_wgslsmith_div_i32(var_5.a.x, -57603i))), var_5.a, var_4.b.x), _wgslsmith_f_op_vec4_f32(func_3(Struct_1(firstLeadingBit(vec2<i32>(75229i, 1i) << (vec2<u32>(u_input.b, u_input.b) % vec2<u32>(32u))), vec2<bool>(var_0.b.x, var_1.b.x || false)), var_1, vec3<i32>(~36968i, ~(-52308i), var_0.a.x), Struct_1(vec2<i32>(-1i) * -var_4.a, var_4.b))).wx, -abs(-(var_5.a.x ^ 41304i)));
}

