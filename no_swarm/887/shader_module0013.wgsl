struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec3<f32>,
    d: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<u32>,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec3<bool>, arg_1: i32, arg_2: Struct_1) -> bool {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(1541f, 799f, -761f), vec3<f32>(1000f, -523f, -1877f))))));
    let var_1 = -1i;
    let var_2 = arg_2.a;
    var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1686f, -547f, _wgslsmith_f_op_f32(ceil(var_0.x)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_0.x, -263f, -2252f), vec3<f32>(930f, var_0.x, var_0.x))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, var_0.x))))), arg_2.a));
    var_0 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.x, _wgslsmith_f_op_f32(var_0.x - -1406f), -1114f), vec3<f32>(_wgslsmith_f_op_f32(sign(var_0.x)), 691f, -2191f), true)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, 389f, 858f) * vec3<f32>(1000f, 236f, 167f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, -290f, 2089f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-602f, -2723f, var_0.x))))))));
    return ~arg_1 >= var_1;
}

fn func_2(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: vec2<f32>, arg_3: f32) -> bool {
    var var_0 = !(!select(vec2<bool>(arg_0.a, func_3(vec3<bool>(arg_0.a, arg_0.a, true), 25127i, arg_0)), !vec2<bool>(arg_0.a, true), select(!vec2<bool>(arg_0.a, false), select(vec2<bool>(true, true), vec2<bool>(arg_0.a, arg_0.a), vec2<bool>(false, arg_0.a)), !arg_0.a)));
    var var_1 = vec2<bool>(func_3(select(select(vec3<bool>(true, arg_0.a, arg_0.a), select(vec3<bool>(arg_0.a, arg_0.a, arg_0.a), vec3<bool>(false, arg_0.a, arg_0.a), vec3<bool>(true, var_0.x, true)), vec3<bool>(var_0.x, true, true)), select(vec3<bool>(false, arg_0.a, false), vec3<bool>(true, var_0.x, arg_0.a), arg_0.a), !(arg_3 < 671f)), 44938i, arg_0), any(vec3<bool>(true, !any(vec2<bool>(false, var_0.x)), false)));
    let var_2 = 286f;
    var var_3 = select(select(!vec2<bool>(var_0.x, !var_0.x), vec2<bool>(false, true), !(!vec2<bool>(var_1.x, var_1.x))), select(vec2<bool>(var_0.x, select(any(vec3<bool>(var_1.x, true, true)), true & var_1.x, var_1.x)), select(select(vec2<bool>(true, true), !vec2<bool>(false, var_1.x), select(vec2<bool>(false, true), vec2<bool>(true, false), arg_0.a)), vec2<bool>(any(vec4<bool>(arg_0.a, var_0.x, true, true)), select(var_1.x, var_0.x, var_1.x)), 2147483647i != u_input.b.x), (u_input.b.x == 1i) || !(arg_0.a || true)), func_3(vec3<bool>(true & arg_0.a, var_0.x, (0i > u_input.b.x) && any(vec3<bool>(var_0.x, false, true))), _wgslsmith_add_i32(firstLeadingBit(select(1i, u_input.b.x, false)), u_input.b.x), Struct_1(u_input.b.x == 1i)));
    var var_4 = !(!vec2<bool>(true, var_1.x));
    return true;
}

fn func_1(arg_0: vec2<f32>) -> f32 {
    var var_0 = !select(vec3<bool>(false, true, true), select(vec3<bool>(false, false, func_2(Struct_1(false), vec4<f32>(arg_0.x, arg_0.x, 724f, -3131f), arg_0, 500f)), vec3<bool>(true, true, true), all(vec3<bool>(true, true, false))), !vec3<bool>(70614u <= u_input.a.x, u_input.b.x != u_input.b.x, true));
    let var_1 = Struct_2(Struct_1(var_0.x || any(!vec3<bool>(true, var_0.x, var_0.x))), 2147483647i, _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -114f), _wgslsmith_f_op_f32(f32(-1f) * -1296f))), arg_0.x, -474f), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(arg_0.x * 1175f), _wgslsmith_f_op_f32(arg_0.x + -785f), _wgslsmith_f_op_f32(max(arg_0.x, arg_0.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(arg_0.x, arg_0.x, arg_0.x), vec3<f32>(-189f, 583f, 878f))))), min(_wgslsmith_mult_u32(u_input.c.x, u_input.a.x), countOneBits(u_input.c.x)));
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1567f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_0.x * -1000f), arg_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -493f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.c.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(vec2<f32>(_wgslsmith_f_op_f32(max(-1554f, _wgslsmith_f_op_f32(f32(-1f) * -1000f))), 1341f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(762f))))));
    let var_1 = vec3<i32>(_wgslsmith_mult_i32(u_input.b.x, 10245i), u_input.b.x, ~(~(max(7178i, -21605i) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(29923u, u_input.c.x, 53462u), vec3<u32>(4294967295u, 0u, 32474u)) % 32u))));
    var var_2 = vec2<bool>(true, true);
    let var_3 = false;
    var var_4 = true;
    let var_5 = i32(-1i) * -2147483647i;
    let var_6 = Struct_2(Struct_1(any(vec4<bool>(var_2.x || var_3, false && var_3, false, true))), var_5, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(vec2<f32>(-934f, 577f))))), _wgslsmith_f_op_f32(ceil(1692f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2079f)), _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(round(var_0))))), ~min(~1u, min(24689u << (u_input.c.x % 32u), abs(1u))));
    var_4 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_6.c.xx - var_6.c.xy)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(var_6.c.xy, vec2<f32>(-397f, var_6.c.x), var_6.a.a)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, -1165f) - vec2<f32>(var_6.c.x, 955f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-var_6.c.xy), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_6.c.x, -305f))), true))))), vec4<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(0u, 21910u, u_input.c.x), countOneBits(vec3<u32>(u_input.c.x, var_6.d, var_6.d))), vec3<u32>(~4294967295u, ~4294967295u, ~u_input.a.x)), 1u << (var_6.d % 32u), _wgslsmith_clamp_u32(42071u, u_input.a.x, 8466u), _wgslsmith_div_u32(var_6.d, var_6.d)), 73171i << (_wgslsmith_dot_vec3_u32(u_input.c.zxw, u_input.c.zzz) % 32u), -649f);
}

