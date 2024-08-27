struct Struct_1 {
    a: f32,
    b: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: u32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: f32,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_1) -> f32 {
    let var_0 = select(!(!select(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false)), vec2<bool>(true, true), all(vec2<bool>(false, true)))), !select(vec2<bool>(all(vec3<bool>(false, false, false)), any(vec3<bool>(false, true, false))), select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), false), false), vec2<bool>(true, true)), any(!select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false), true)) != true);
    var var_1 = ~vec4<u32>(3156u, _wgslsmith_mult_u32(select(firstLeadingBit(76101u), ~15252u, true), 1u), 1u, _wgslsmith_dot_vec2_u32((u_input.b.yy << (u_input.b.xz % vec2<u32>(32u))) ^ u_input.a, firstTrailingBit(~vec2<u32>(u_input.c, u_input.b.x))));
    let var_2 = var_0.x;
    var var_3 = ~(~1u);
    let var_4 = 2147483647i;
    return 1000f;
}

fn func_2(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: Struct_1) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(1050f, _wgslsmith_f_op_f32(f32(-1f) * -1717f)) - -863f);
    var var_1 = ~arg_2.b;
    var_1 = -1i;
    var var_2 = arg_2;
    var_1 = -_wgslsmith_dot_vec2_i32(vec2<i32>(39824i, 0i), firstLeadingBit(_wgslsmith_mod_vec2_i32(~u_input.d.zy, -u_input.d.xy)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_3(arg_2)))));
}

fn func_1(arg_0: vec3<u32>, arg_1: u32, arg_2: i32) -> bool {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2069f) + 422f))), -1084f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(vec3<f32>(-2292f, _wgslsmith_f_op_f32(-1000f * -2073f), _wgslsmith_div_f32(470f, 431f)), Struct_1(-523f, -arg_2), Struct_1(_wgslsmith_f_op_f32(abs(808f)), u_input.d.x))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1455f, -1233f)) * 1f)))));
    var_0 = vec3<f32>(var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))) - _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(var_0.x, 2018f)), _wgslsmith_f_op_f32(func_3(Struct_1(var_0.x, arg_2)))))) - _wgslsmith_div_f32(var_0.x, _wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(func_2(vec3<f32>(var_0.x, 1000f, var_0.x), Struct_1(var_0.x, 57234i), Struct_1(var_0.x, -2147483647i)))))));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), var_0.x), var_0.x)), u_input.d.x);
    var var_2 = Struct_1(248f, u_input.d.x);
    var_1 = Struct_1(var_2.a, 2147483647i);
    return !all(select(select(select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, false), true), select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, true), true), vec4<bool>(false, true, true, false)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = countOneBits(-vec2<i32>(-u_input.d.x, -_wgslsmith_dot_vec4_i32(vec4<i32>(1i, -1i, u_input.d.x, -10527i), vec4<i32>(0i, 1i, 1i, u_input.d.x))));
    var var_1 = all(vec4<bool>(true && any(vec2<bool>(false, true)), false, true, func_1(vec3<u32>(u_input.a.x, u_input.a.x, ~u_input.b.x), reverseBits(1u), u_input.d.x)));
    var_1 = !all(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), false));
    let var_2 = Struct_1(1309f, var_0.x);
    var_1 = false;
    var var_3 = 4294967295u;
    var_1 = !select(any(vec4<bool>(true, true, true, false)), true, all(select(vec2<bool>(false, true), vec2<bool>(false, false), select(vec2<bool>(false, true), vec2<bool>(true, true), true))));
    let var_4 = min(u_input.b, _wgslsmith_sub_vec3_u32(countOneBits(vec3<u32>(u_input.a.x, 40299u, 4294967295u)) & (u_input.b ^ ~vec3<u32>(u_input.a.x, 61053u, u_input.a.x)), ~(~u_input.b)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, vec3<u32>(~_wgslsmith_div_u32(~0u, reverseBits(37110u)), 1u, var_4.x), _wgslsmith_f_op_f32(1431f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1686f)) - -1022f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.a), _wgslsmith_f_op_f32(var_2.a * 643f)))), -_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(-u_input.d.wy, _wgslsmith_sub_vec2_i32(vec2<i32>(41006i, var_0.x), var_0)), var_0));
}

