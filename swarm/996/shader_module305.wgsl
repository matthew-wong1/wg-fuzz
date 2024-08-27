struct Struct_1 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_2(arg_0: u32, arg_1: vec2<u32>, arg_2: Struct_1, arg_3: vec3<u32>) -> Struct_1 {
    let var_0 = arg_2;
    return arg_2;
}

fn func_3(arg_0: vec3<f32>, arg_1: vec4<f32>, arg_2: Struct_1, arg_3: vec4<i32>) -> i32 {
    let var_0 = true && any(!select(select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(false, false, false)), vec3<bool>(true, true, true), vec3<bool>(true, true, true)));
    var var_1 = vec4<bool>(false, true, all(vec3<bool>((0u | u_input.b.x) != u_input.b.x, !(arg_0.x >= arg_0.x), any(vec4<bool>(true, true, false, false)))), false);
    let var_2 = Struct_1(arg_2.a);
    let var_3 = arg_2;
    var_1 = !vec4<bool>(-16597i > arg_2.a.x, var_3.a.x != var_3.a.x, false, !(!var_0) && any(select(vec4<bool>(false, false, var_0, var_0), vec4<bool>(true, var_0, var_1.x, true), vec4<bool>(false, true, false, var_0))));
    return -86212i;
}

fn func_1() -> u32 {
    let var_0 = Struct_1(vec4<i32>(i32(-1i) * -729i, u_input.c.x, -func_3(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-424f, 769f, 227f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1136f, 353f, -363f, -1691f)), func_2(24456u, vec2<u32>(u_input.a, u_input.a), Struct_1(vec4<i32>(1i, u_input.c.x, 19987i, 0i)), vec3<u32>(u_input.a, 0u, u_input.b.x)), abs(u_input.c)), 1i));
    let var_1 = func_2(1u, vec2<u32>(u_input.a & reverseBits(0u), ~(~_wgslsmith_dot_vec2_u32(u_input.b, vec2<u32>(u_input.b.x, 0u)))), Struct_1(var_0.a), max(abs(~firstLeadingBit(vec3<u32>(72858u, u_input.a, u_input.a))), ~_wgslsmith_div_vec3_u32(~vec3<u32>(28550u, u_input.b.x, u_input.b.x), vec3<u32>(u_input.a, u_input.a, 1u))));
    let var_2 = !any(select(vec4<bool>(true, true, true, any(vec2<bool>(true, true))), select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), false), select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, false), true), vec4<bool>(true, true, true, false)), true));
    var var_3 = vec2<u32>(~u_input.a, ~(~_wgslsmith_sub_u32(~u_input.a, firstTrailingBit(98328u))));
    var var_4 = (vec2<i32>(func_2(_wgslsmith_div_u32(u_input.a, u_input.a), u_input.b, var_1, vec3<u32>(4294967295u, var_3.x, var_3.x)).a.x, firstTrailingBit(var_1.a.x) >> (u_input.b.x % 32u)) >> (_wgslsmith_clamp_vec2_u32(vec2<u32>(_wgslsmith_mod_u32(1u, u_input.a), 26219u), ~_wgslsmith_div_vec2_u32(u_input.b, vec2<u32>(var_3.x, 11433u)), u_input.b << (_wgslsmith_add_vec2_u32(vec2<u32>(var_3.x, u_input.b.x), u_input.b) % vec2<u32>(32u))) % vec2<u32>(32u))) | vec2<i32>(1i, var_0.a.x);
    return 34776u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = max(min(~u_input.a, func_1()) & max(~1u, u_input.a), 12437u);
    var var_1 = select(select(vec2<bool>(all(vec4<bool>(true, true, true, false)), true), vec2<bool>(true, true), any(vec3<bool>(true, true, any(vec2<bool>(false, true))))), vec2<bool>(-u_input.c.x < -28426i, true), !(!all(vec3<bool>(true, true, true))));
    var var_2 = func_2(_wgslsmith_dot_vec2_u32(u_input.b, vec2<u32>(1u, var_0)), _wgslsmith_mod_vec2_u32(select(_wgslsmith_div_vec2_u32(max(vec2<u32>(4294967295u, u_input.b.x), vec2<u32>(u_input.b.x, var_0)), u_input.b), _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, 66105u) << (vec2<u32>(36009u, 6028u) % vec2<u32>(32u))), var_1.x), _wgslsmith_mult_vec2_u32(u_input.b, vec2<u32>(~57940u, 14091u))), func_2(1u, ~(~u_input.b), func_2(var_0, vec2<u32>(select(u_input.b.x, 0u, true), u_input.b.x), func_2(abs(var_0), _wgslsmith_add_vec2_u32(u_input.b, vec2<u32>(1u, 1u)), func_2(var_0, vec2<u32>(4294967295u, var_0), Struct_1(u_input.c), vec3<u32>(33624u, u_input.b.x, u_input.b.x)), _wgslsmith_clamp_vec3_u32(vec3<u32>(5035u, var_0, var_0), vec3<u32>(var_0, var_0, 1u), vec3<u32>(var_0, 1u, 4294967295u))), ~_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b.x, 52453u, var_0), vec3<u32>(var_0, 13547u, u_input.a))), vec3<u32>(1u, var_0, max(reverseBits(var_0), _wgslsmith_mod_u32(u_input.a, var_0)))), vec3<u32>(7354u, ~1u, ~var_0 & 4294967295u));
    var_2 = func_2(~_wgslsmith_mult_u32(~4294967295u, var_0), ~vec2<u32>(~30142u, _wgslsmith_mod_u32(10515u, u_input.b.x)) | ~countOneBits(vec2<u32>(4294967295u, 47880u)), Struct_1(abs(reverseBits(select(var_2.a, vec4<i32>(var_2.a.x, var_2.a.x, u_input.c.x, 73269i), true)))), ~_wgslsmith_clamp_vec3_u32(_wgslsmith_sub_vec3_u32(select(vec3<u32>(var_0, 0u, var_0), vec3<u32>(0u, 116620u, 45392u), true), ~vec3<u32>(31817u, 0u, u_input.a)), reverseBits(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b.x, 36651u, 28093u), vec3<u32>(u_input.a, 4294967295u, var_0))), ~vec3<u32>(u_input.a, 1u, 14635u)));
    let var_3 = func_2(0u, vec2<u32>(u_input.b.x, select(u_input.b.x, _wgslsmith_mult_u32(u_input.a, 30520u), true)), Struct_1(vec4<i32>(func_2(0u, vec2<u32>(66635u, var_0), Struct_1(u_input.c), vec3<u32>(var_0, u_input.a, u_input.b.x)).a.x, var_2.a.x, u_input.c.x, var_2.a.x) | (_wgslsmith_clamp_vec4_i32(u_input.c, u_input.c, u_input.c) >> (~vec4<u32>(52661u, u_input.a, 1u, var_0) % vec4<u32>(32u)))), ~_wgslsmith_sub_vec3_u32(~vec3<u32>(1u, 0u, u_input.a), ~min(vec3<u32>(u_input.a, var_0, 1u), vec3<u32>(39972u, var_0, 7484u))));
    let var_4 = var_3;
    var_2 = Struct_1(vec4<i32>(~u_input.c.x, var_4.a.x, _wgslsmith_mod_i32(u_input.c.x, ~(~(-2147483647i))), -96559i));
    var_1 = !(!vec2<bool>(true, var_1.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(-(~var_3.a.x), 1i), ~1u, -1628f);
}

