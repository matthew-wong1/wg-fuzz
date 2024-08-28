struct Struct_1 {
    a: vec3<f32>,
    b: vec2<u32>,
    c: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_1() -> f32 {
    var var_0 = 1u;
    var var_1 = -428f;
    let var_2 = vec2<bool>(true, true);
    var var_3 = 1000f;
    var var_4 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(229f, _wgslsmith_div_f32(-269f, _wgslsmith_f_op_f32(select(-121f, -186f, true)))), -1942f) + _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1700f, -1099f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(287f, 1445f)), !var_2.x)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1000f, -359f))))))));
    return var_4.x;
}

fn func_3(arg_0: Struct_1, arg_1: i32) -> u32 {
    let var_0 = abs(countOneBits((firstLeadingBit(arg_0.b) << (max(vec2<u32>(u_input.a, 39753u), arg_0.b) % vec2<u32>(32u))) << (~abs(arg_0.b) % vec2<u32>(32u))));
    let var_1 = arg_0;
    let var_2 = arg_0;
    var var_3 = ~reverseBits(countOneBits(vec3<i32>(2147483647i, -90249i, arg_1) << ((vec3<u32>(var_1.b.x, 0u, 79124u) ^ vec3<u32>(4294967295u, var_0.x, u_input.a)) % vec3<u32>(32u))));
    var var_4 = Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_2.a) * _wgslsmith_f_op_vec3_f32(round(var_1.a)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(trunc(var_2.a.x)), _wgslsmith_f_op_f32(arg_0.a.x - 668f), var_1.a.x) - _wgslsmith_f_op_vec3_f32(-var_1.a))), var_0, _wgslsmith_f_op_f32(f32(-1f) * -330f));
    return 288u;
}

fn func_2(arg_0: Struct_1) -> f32 {
    let var_0 = arg_0;
    let var_1 = max(_wgslsmith_add_i32(_wgslsmith_add_i32(1i, -10615i), -1i), ~57769i ^ ((1i >> ((u_input.a | u_input.a) % 32u)) & 74164i));
    let var_2 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(arg_0.a, _wgslsmith_f_op_vec3_f32(max(vec3<f32>(597f, 289f, 378f), vec3<f32>(812f, 733f, var_0.c)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(arg_0.a - vec3<f32>(-127f, arg_0.a.x, -552f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.a) + vec3<f32>(var_0.c, arg_0.a.x, arg_0.a.x)))))));
    let var_3 = min(vec3<u32>(func_3(Struct_1(vec3<f32>(-298f, var_2.x, 1183f), vec2<u32>(u_input.a, arg_0.b.x), 195f), var_1) & (var_0.b.x ^ 0u), ~var_0.b.x, ~1u), firstLeadingBit(~abs(_wgslsmith_add_vec3_u32(vec3<u32>(0u, u_input.a, u_input.a), vec3<u32>(1u, var_0.b.x, 4294967295u)))));
    var var_4 = !vec3<bool>(any(select(select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, false), false), vec4<bool>(true, true, true, true), true)), true, !(_wgslsmith_f_op_f32(-arg_0.c) <= _wgslsmith_f_op_f32(-var_0.a.x)));
    return _wgslsmith_f_op_f32(-var_2.x);
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: f32) -> StorageBuffer {
    var var_0 = arg_1;
    return StorageBuffer(~(-42640i), ~_wgslsmith_dot_vec2_u32(~(~vec2<u32>(0u, 0u)), _wgslsmith_mod_vec2_u32(~arg_1.b, ~arg_1.b)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a;
    var var_1 = -745f;
    var_1 = 1414f;
    var_1 = 515f;
    let var_2 = vec2<bool>(true, false);
    var_1 = 472f;
    let x = u_input.a;
    s_output = func_4(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1569f, _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -949f) * _wgslsmith_f_op_f32(func_1())), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(574f - 943f), -222f, all(vec4<bool>(false, true, true, true))))) * vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1465f - 475f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -870f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(Struct_1(vec3<f32>(1287f, 992f, 803f), vec2<u32>(4294967295u, 1u), 1000f))) * 1850f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(3412f)) * _wgslsmith_f_op_f32(select(-408f, -173f, var_2.x))))), Struct_1(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(1031f, 1085f, -1389f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1075f, -1812f, -117f))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1880f, -1599f, 1374f)), vec3<f32>(1233f, -1310f, -433f))))), vec2<u32>(4294967295u, func_3(Struct_1(vec3<f32>(-519f, 218f, 814f), vec2<u32>(64095u, 23224u), -191f), -36273i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1309f, 115f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1())));
}

