struct Struct_1 {
    a: vec2<bool>,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec2<f32>,
    d: vec4<u32>,
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

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_1() -> vec2<u32> {
    let var_0 = Struct_1(select(select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), true)), !vec2<bool>(true, select(false, false, true)), vec2<bool>(1i <= u_input.a, false)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -334f) * -689f));
    let var_1 = u_input.a;
    var var_2 = ~(~firstTrailingBit(vec2<i32>(-var_1, u_input.a)));
    var var_3 = ~(firstTrailingBit(vec2<u32>(_wgslsmith_sub_u32(u_input.c, 36035u), 24403u)) ^ vec2<u32>(_wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(0u, u_input.c, u_input.b)), vec3<u32>(4294967295u, u_input.c, u_input.c)), _wgslsmith_div_u32(~u_input.b, min(u_input.c, 1u))));
    var_2 = -(~(~reverseBits(vec2<i32>(-80470i, var_2.x))));
    return abs(firstLeadingBit(vec2<u32>(~max(u_input.c, 132361u), ~_wgslsmith_sub_u32(u_input.b, 4294967295u))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<bool>) -> vec2<f32> {
    let var_0 = firstLeadingBit(u_input.a);
    var var_1 = ~u_input.a;
    let var_2 = select(arg_2, !(!(!select(vec4<bool>(false, arg_1.a.x, false, arg_2.x), vec4<bool>(true, arg_1.a.x, arg_1.a.x, true), false))), select(select(!(!arg_2), arg_2, _wgslsmith_f_op_f32(arg_0.b - arg_1.b) == _wgslsmith_div_f32(arg_0.b, arg_0.b)), !arg_2, !arg_2));
    var var_3 = arg_1;
    var_3 = Struct_1(!vec2<bool>((arg_0.a.x || true) != all(vec3<bool>(arg_2.x, arg_1.a.x, false)), true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.b)));
    return vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1302f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -780f) * 1212f));
}

fn func_2(arg_0: vec2<i32>, arg_1: vec2<u32>, arg_2: vec3<u32>) -> vec2<f32> {
    return _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1406f, _wgslsmith_f_op_f32(select(-350f, 153f, !(arg_0.x <= u_input.a)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -183f), _wgslsmith_div_f32(1368f, 660f)) * _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(func_3(Struct_1(vec2<bool>(true, true), 390f), Struct_1(vec2<bool>(true, false), -1122f), vec4<bool>(true, false, true, true))), _wgslsmith_div_vec2_f32(vec2<f32>(101f, 660f), vec2<f32>(128f, -191f))))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(vec2<f32>(795f, -1837f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1976f, 304f))))), true)), select(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), true), vec2<bool>(true, true)), select(vec2<bool>(true, all(vec2<bool>(false, true))), select(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<bool>(false, false), true), true), vec2<bool>(true, true | (arg_2.x == arg_2.x)))));
}

fn func_4(arg_0: vec2<f32>, arg_1: vec2<i32>, arg_2: Struct_1) -> vec2<u32> {
    var var_0 = ~(u_input.b ^ ~(25011u ^ _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, u_input.c), vec3<u32>(4294967295u, 16678u, 0u))));
    var_0 = 1u;
    return ~(firstLeadingBit(vec2<u32>(0u, _wgslsmith_dot_vec2_u32(vec2<u32>(26298u, 19950u), vec2<u32>(u_input.b, 1u)))) << (_wgslsmith_clamp_vec2_u32(max(~vec2<u32>(u_input.b, 53437u), vec2<u32>(32955u, u_input.b)), vec2<u32>(~0u, u_input.c), ~(~vec2<u32>(u_input.b, u_input.b))) % vec2<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -(vec2<i32>(u_input.a, ~10734i) ^ (-vec2<i32>(u_input.a, -2147483647i) ^ -vec2<i32>(u_input.a, -39642i))) << ((_wgslsmith_div_vec2_u32(select(vec2<u32>(44392u, u_input.c) >> (vec2<u32>(u_input.c, u_input.c) % vec2<u32>(32u)), ~vec2<u32>(118733u, 4294967295u), vec2<bool>(true, true)), func_1() | ~vec2<u32>(u_input.c, 1u)) << (~func_4(_wgslsmith_f_op_vec2_f32(func_2(vec2<i32>(u_input.a, u_input.a), vec2<u32>(u_input.b, 0u), vec3<u32>(u_input.b, 0u, u_input.c))), select(vec2<i32>(u_input.a, 35889i), vec2<i32>(u_input.a, -49011i), vec2<bool>(true, false)), Struct_1(vec2<bool>(false, true), -674f)) % vec2<u32>(32u))) % vec2<u32>(32u));
    var var_1 = Struct_1(!(!select(vec2<bool>(false, false), vec2<bool>(true, false), select(vec2<bool>(false, false), vec2<bool>(true, false), true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -583f)))));
    var_1 = Struct_1(var_1.a, 728f);
    var var_2 = true;
    let var_3 = Struct_1(!var_1.a, _wgslsmith_f_op_f32(2898f + _wgslsmith_f_op_f32(ceil(-204f))));
    let var_4 = vec3<u32>(0u, countOneBits(~u_input.b), 4294967295u);
    let var_5 = select(!(!(!select(vec3<bool>(true, var_1.a.x, var_1.a.x), vec3<bool>(true, true, true), var_3.a.x))), select(vec3<bool>(false, all(vec4<bool>(false, true, false, true)), true), vec3<bool>(false, any(select(var_1.a, var_3.a, var_1.a)), false), all(select(vec3<bool>(var_1.a.x, true, true), select(vec3<bool>(var_1.a.x, var_1.a.x, false), vec3<bool>(true, var_3.a.x, false), vec3<bool>(false, var_3.a.x, false)), select(vec3<bool>(var_1.a.x, true, true), vec3<bool>(true, var_1.a.x, var_3.a.x), true)))), _wgslsmith_sub_i32(0i, -countOneBits(1i)) > -u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, var_4.x, _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.b) - _wgslsmith_f_op_f32(f32(-1f) * -1269f)))), ~vec4<u32>(var_4.x, 0u, 4294967295u, select(var_4.x, ~78402u, var_5.x)));
}

