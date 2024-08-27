struct Struct_1 {
    a: u32,
    b: f32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: f32,
    e: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: i32) -> vec4<u32> {
    var var_0 = !(!vec4<bool>(arg_0.e, any(!vec3<bool>(arg_0.e, false, arg_0.e)), arg_0.a, _wgslsmith_f_op_f32(-arg_1.b) < arg_0.d));
    let var_1 = -931f;
    let var_2 = arg_0;
    let var_3 = !select(!vec2<bool>(all(vec4<bool>(var_2.a, false, false, var_2.a)), var_0.x & false), select(var_0.xw, select(!var_0.yw, vec2<bool>(var_2.a, var_0.x), var_2.a), !select(vec2<bool>(false, true), var_0.zy, arg_0.e)), var_0.yy);
    let var_4 = var_2.b;
    return vec4<u32>(reverseBits(countOneBits(var_2.b.a) & 4294967295u), select(~_wgslsmith_clamp_u32(16183u, 23794u, 4294967295u), select(u_input.b << (arg_0.b.a % 32u), ~62031u, var_3.x), true) << (reverseBits(1902u) % 32u), ~var_4.a, max(_wgslsmith_clamp_u32(var_2.b.a, 1u, abs(u_input.b)) << (min(countOneBits(arg_1.a), 1u) % 32u), ~(~var_2.c.a)));
}

fn func_2(arg_0: vec2<i32>, arg_1: u32, arg_2: f32) -> Struct_1 {
    var var_0 = _wgslsmith_div_vec4_u32(vec4<u32>(u_input.b, u_input.b, 90584u, 41971u), ~func_3(Struct_2(false, Struct_1(0u, arg_2), Struct_1(1u, -1000f), 601f, all(vec3<bool>(false, true, true))), Struct_1(26383u, _wgslsmith_f_op_f32(-arg_2)), 1i));
    let var_1 = Struct_1(0u, arg_2);
    let var_2 = min(reverseBits(vec4<u32>(var_1.a & 16278u, 16907u, ~arg_1, reverseBits(var_1.a)) << (~(~vec4<u32>(28003u, u_input.b, 67661u, var_1.a)) % vec4<u32>(32u))), vec4<u32>(1u, ~min(25106u, var_1.a), var_0.x, 1u));
    let var_3 = Struct_2(!(any(vec4<bool>(false, true, true, false)) | all(select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, true), true))), Struct_1(var_1.a, var_1.b), var_1, _wgslsmith_f_op_f32(round(-238f)), true);
    var_0 = vec4<u32>(~(~(37415u | _wgslsmith_dot_vec2_u32(var_0.yy, vec2<u32>(arg_1, arg_1)))), 1u, 7609u, 87701u);
    return Struct_1(_wgslsmith_dot_vec3_u32(var_0.wwx, ~(~(~vec3<u32>(arg_1, var_3.b.a, 88862u)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -302f))))));
}

fn func_1(arg_0: u32) -> bool {
    let var_0 = func_2(vec2<i32>(-(i32(-1i) * -8950i), 73369i) ^ vec2<i32>(abs(0i), _wgslsmith_mult_i32(u_input.a, ~(-2289i))), (~arg_0 & ((4294967295u >> (1u % 32u)) & select(arg_0, arg_0, true))) & ~(~u_input.b | min(68287u, arg_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1582f))));
    var var_1 = var_0;
    var var_2 = Struct_2(any(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false)), vec4<bool>(true, false, true, u_input.b <= var_1.a), !select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), true))), func_2(-vec2<i32>(u_input.c ^ u_input.a, -u_input.d), ~abs(var_0.a), 1127f), var_0, _wgslsmith_f_op_f32(f32(-1f) * -836f), select(true, true | ((-6430i ^ u_input.c) < (i32(-1i) * -1i)), false));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.d));
    let var_4 = vec4<u32>((func_3(Struct_2(false, var_2.c, Struct_1(var_0.a, var_0.b), -3205f, var_2.a), Struct_1(var_1.a, -1000f), u_input.d).x ^ ~abs(20845u)) << (12654u % 32u), _wgslsmith_div_u32(~u_input.b, 52313u), _wgslsmith_dot_vec4_u32(vec4<u32>(~1u, ~var_2.b.a, u_input.b, min(var_1.a, 87226u)) >> (~vec4<u32>(0u, 1u, 42381u, 20203u) % vec4<u32>(32u)), ~(~vec4<u32>(96255u, 23303u, u_input.b, var_0.a))), ~max(select(_wgslsmith_div_u32(arg_0, 0u), _wgslsmith_clamp_u32(var_1.a, var_1.a, u_input.b), true & var_2.e), 0u));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(select(select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false), false), select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, false)), true), vec4<bool>(true, true, true, func_1(0u))), vec4<bool>(true, true, true, true), u_input.b > ~1u), vec4<bool>(_wgslsmith_f_op_f32(ceil(133f)) < -614f, !(u_input.b != u_input.b), true, any(vec2<bool>(true, true))), select(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, true))), select(vec4<bool>(all(vec2<bool>(false, false)), u_input.a > -2147483647i, true, all(vec3<bool>(true, false, true))), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, true)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), true)));
    let var_1 = var_0.x;
    var_0 = vec4<bool>(!(!var_0.x), var_0.x, true, !(-1000f <= _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(1112f))))));
    let var_2 = func_2(-(_wgslsmith_div_vec2_i32(countOneBits(vec2<i32>(1i, -20843i)), ~vec2<i32>(0i, -2147483647i)) & ~vec2<i32>(u_input.c, u_input.d)), u_input.b, _wgslsmith_f_op_f32(func_2(_wgslsmith_add_vec2_i32(-vec2<i32>(-16063i, u_input.a), select(vec2<i32>(u_input.a, -21597i), vec2<i32>(9679i, u_input.a), vec2<bool>(var_0.x, false))), firstLeadingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 4294967295u), vec2<u32>(u_input.b, u_input.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(312f + -1000f))).b + _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(490f + 1756f), _wgslsmith_f_op_f32(f32(-1f) * -681f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(257f))), !any(var_0.xxx)))));
    let var_3 = var_0.yzx;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1654f)), 214f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(714f - var_2.b)) * 1543f), 976f));
}

