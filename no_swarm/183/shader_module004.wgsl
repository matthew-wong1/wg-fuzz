struct Struct_1 {
    a: vec3<f32>,
    b: bool,
    c: vec3<bool>,
}

struct Struct_2 {
    a: bool,
    b: vec3<bool>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec3<u32>,
}

struct Struct_4 {
    a: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec3<i32>,
    d: u32,
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

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_3) -> f32 {
    var var_0 = vec4<u32>(~(~1711u), ~(~u_input.d), reverseBits(_wgslsmith_div_u32(~arg_1.a.x | arg_1.a.x, 23268u)), ~min(abs(4294967295u), ~arg_1.b.x));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_0.a.x), _wgslsmith_f_op_f32(min(arg_0.a.x, -1000f)))));
}

fn func_2(arg_0: Struct_3) -> Struct_4 {
    let var_0 = select(any(!(!select(vec2<bool>(false, false), vec2<bool>(false, false), true))), !all(vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1674f, _wgslsmith_f_op_f32(2239f - -134f))) + _wgslsmith_f_op_f32(func_3(Struct_1(vec3<f32>(-509f, -1216f, -2091f), true, vec3<bool>(true, false, false)), arg_0))) != _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -535f) * -1891f))));
    var var_1 = true;
    var var_2 = vec2<u32>(u_input.a.x, _wgslsmith_div_u32(select(_wgslsmith_add_u32(~u_input.a.x, ~arg_0.a.x), 0u, true), u_input.a.x));
    var_2 = _wgslsmith_clamp_vec2_u32(vec2<u32>(_wgslsmith_dot_vec2_u32(~min(u_input.a, arg_0.a.xx), countOneBits(u_input.a)), firstLeadingBit(var_2.x)), vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 0u, arg_0.b.x, var_2.x) << (~vec4<u32>(61415u, 4294967295u, var_2.x, 0u) % vec4<u32>(32u)), _wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(var_2.x, 1u, 1u, u_input.a.x), vec4<u32>(var_2.x, 4294967295u, arg_0.a.x, 14038u)), firstTrailingBit(vec4<u32>(arg_0.a.x, var_2.x, 70672u, var_2.x)))), u_input.a.x), u_input.a ^ ((abs(vec2<u32>(arg_0.b.x, 56170u)) >> (~arg_0.a.zy % vec2<u32>(32u))) >> (firstTrailingBit(_wgslsmith_sub_vec2_u32(vec2<u32>(51069u, u_input.a.x), vec2<u32>(10817u, 0u))) % vec2<u32>(32u))));
    var_2 = vec2<u32>(~(~1u) & ~_wgslsmith_add_u32(reverseBits(arg_0.b.x), 0u), ~0u);
    return Struct_4(u_input.b.x);
}

fn func_4(arg_0: u32, arg_1: vec2<f32>, arg_2: Struct_4) -> Struct_4 {
    let var_0 = Struct_2(!all(select(vec3<bool>(true, false, false), select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), true), select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), true))), vec3<bool>(true, any(select(vec2<bool>(false, false), vec2<bool>(false, true), false)) | true, _wgslsmith_div_i32(u_input.b.x >> (u_input.a.x % 32u), firstTrailingBit(24517i)) != 7100i));
    let var_1 = 736f;
    var var_2 = ~abs(vec2<i32>(0i, 1i));
    let var_3 = u_input.b.xz;
    let var_4 = vec3<i32>(~(-_wgslsmith_mult_i32(-53222i, 7630i | u_input.c)), u_input.c, ~var_2.x);
    return Struct_4(-4099i);
}

fn func_1(arg_0: u32, arg_1: vec3<bool>, arg_2: bool) -> u32 {
    let var_0 = func_4(~_wgslsmith_div_u32(~94097u, 4294967295u), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -467f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(223f - 565f) - 523f), -746f))), func_2(Struct_3(countOneBits(vec3<u32>(4294967295u, 1u, 21684u)), ~vec3<u32>(arg_0, u_input.a.x, 40373u))));
    var var_1 = vec4<bool>(-708f == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1303f))) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(-236f)), _wgslsmith_f_op_f32(230f - -1046f)))), arg_2, true, true);
    let var_2 = Struct_3(select(vec3<u32>(0u, 61736u, ~0u) & countOneBits(vec3<u32>(u_input.a.x, u_input.d, 1u)), ~(~(~vec3<u32>(0u, 0u, 0u))), var_1.wwy), select(countOneBits(~(~vec3<u32>(43000u, arg_0, 1u))), _wgslsmith_add_vec3_u32(vec3<u32>(~u_input.d, max(u_input.a.x, 7465u), arg_0), vec3<u32>(~1745u, abs(arg_0), min(u_input.a.x, u_input.d))), arg_1.x));
    var_1 = !(!vec4<bool>(true, firstTrailingBit(13568i) <= u_input.c, !arg_2, any(!var_1.zx)));
    let var_3 = reverseBits(~u_input.c << (min(~(~u_input.d), firstTrailingBit(u_input.d)) % 32u));
    return _wgslsmith_dot_vec3_u32(var_2.a, var_2.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    var var_1 = vec4<u32>(func_1(max(~(~u_input.a.x), firstTrailingBit(~u_input.d)), !(!(!vec3<bool>(false, true, var_0))), var_0), min(4294967295u, 0u), _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(~u_input.d, u_input.a.x), 16314u << (~u_input.d % 32u), u_input.d), _wgslsmith_mult_vec3_u32(~vec3<u32>(u_input.d, 1u, u_input.a.x), _wgslsmith_div_vec3_u32(vec3<u32>(171u, u_input.a.x, 4294967295u), vec3<u32>(u_input.a.x, 31419u, u_input.a.x))) << (select(countOneBits(vec3<u32>(1u, u_input.d, u_input.d)), vec3<u32>(30081u, u_input.a.x, 1u), vec3<bool>(var_0, var_0, var_0)) % vec3<u32>(32u))), _wgslsmith_sub_u32(_wgslsmith_mult_u32(max(64327u, 4294967295u), abs(u_input.d)), u_input.a.x << (~2322u % 32u)) & u_input.d);
    let var_2 = ~(vec4<i32>(u_input.b.x, u_input.b.x, reverseBits(-2147483647i) & ~u_input.b.x, 50849i) << (firstLeadingBit(vec4<u32>(1u, 0u, var_1.x, func_1(var_1.x, vec3<bool>(var_0, true, var_0), false))) % vec4<u32>(32u)));
    let var_3 = Struct_2(true, vec3<bool>(!(true != var_0), var_0, all(!(!vec4<bool>(false, true, var_0, var_0)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(u_input.d, countOneBits(_wgslsmith_mult_u32(1u, var_1.x)) << (~14602u % 32u), max(max(~58110u, 0u), 1u), _wgslsmith_add_u32(4294967295u, ~u_input.a.x)), 4294967295u, u_input.b, u_input.d >> (reverseBits(firstTrailingBit(var_1.x)) % 32u));
}

