struct Struct_1 {
    a: u32,
    b: vec2<u32>,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: f32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
}

struct Struct_4 {
    a: Struct_1,
    b: f32,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: i32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_4, arg_1: bool, arg_2: u32, arg_3: vec4<f32>) -> bool {
    var var_0 = -479f;
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_0.b))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-800f)) * _wgslsmith_f_op_f32(-arg_3.x)))));
    let var_1 = arg_3.yy;
    return arg_1;
}

fn func_2(arg_0: u32, arg_1: vec2<u32>, arg_2: Struct_1, arg_3: Struct_3) -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_dot_vec4_u32(select(vec4<u32>(arg_1.x, _wgslsmith_add_u32(arg_2.a, arg_1.x), arg_1.x, _wgslsmith_mult_u32(u_input.b.x, 28389u)), vec4<u32>(max(arg_0, 0u), abs(arg_2.a), _wgslsmith_div_u32(1u, 14069u), arg_0), true), vec4<u32>(u_input.b.x, _wgslsmith_div_u32(~17763u, u_input.b.x), firstLeadingBit(~22592u), firstTrailingBit(~21625u))), arg_1, _wgslsmith_mod_u32(u_input.b.x, ~0u));
    var var_1 = arg_3;
    var_1 = Struct_3(!vec3<bool>(true, _wgslsmith_add_i32(u_input.e, 1i) >= _wgslsmith_mod_i32(-58571i, -1i), false));
    var_1 = Struct_3(vec3<bool>(!arg_3.a.x, func_3(Struct_4(Struct_1(5177u, u_input.b.yz, u_input.b.x), _wgslsmith_f_op_f32(ceil(-571f)), vec2<i32>(-50351i, -2147483647i)), arg_3.a.x, 1u, vec4<f32>(161f, 1416f, _wgslsmith_f_op_f32(444f + -672f), 1411f)), all(var_1.a)));
    let var_2 = ~(~4294967295u);
    return var_0;
}

fn func_1(arg_0: u32) -> i32 {
    let var_0 = Struct_2(func_2(4294967295u, u_input.b.yy, Struct_1(4294967295u, ~(~u_input.b.zz), _wgslsmith_add_u32(50502u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, 1u), u_input.b.xz))), Struct_3(vec3<bool>(true, true, true))), 35287u, -1108f, Struct_1(~8327u, vec2<u32>(_wgslsmith_sub_u32(~75975u, arg_0), _wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(3977u, 0u, 35056u, u_input.b.x)), vec4<u32>(61147u, 0u, 0u, 4294967295u))), arg_0), func_2(countOneBits(min(1u, 1u)) << (1u % 32u), abs(_wgslsmith_add_vec2_u32(select(u_input.b.xy, u_input.b.xy, vec2<bool>(false, false)), u_input.b.yy | vec2<u32>(4294967295u, 76893u))), Struct_1(1970u, u_input.b.yy, _wgslsmith_sub_u32(u_input.b.x, 78192u) | 4294967295u), Struct_3(vec3<bool>(false, false, true))));
    let var_1 = -32908i;
    let var_2 = vec2<bool>(select(false, false, _wgslsmith_sub_i32(2147483647i, ~(-18008i)) < (u_input.a.x ^ -1i)), all(select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true)), all(vec4<bool>(true, true, true, false)))) & all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)));
    var var_3 = var_0;
    var var_4 = abs(max(var_0.b, 8494u | var_3.b));
    return 1i >> ((1u << (1u % 32u)) % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~vec4<i32>(~u_input.d | u_input.a.x, 26170i, min(1i, u_input.d << (4294967295u % 32u)), 1i));
    let var_1 = _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(-587f - 975f));
    let var_2 = _wgslsmith_sub_i32(select(0i, i32(-1i) * -_wgslsmith_add_i32(-18716i, u_input.c), true), u_input.c);
    let var_3 = 2147483647i;
    let var_4 = _wgslsmith_mod_i32(~func_1(u_input.b.x), 1i);
    var var_5 = select(vec2<bool>(false, select(any(vec2<bool>(false, true)), true, true) == (_wgslsmith_clamp_u32(u_input.b.x, 4294967295u, 19605u) >= countOneBits(u_input.b.x))), vec2<bool>(all(vec2<bool>(true, true)) && (all(vec4<bool>(true, false, false, true)) | false), countOneBits(abs(var_2)) < (var_4 << (min(1u, u_input.b.x) % 32u))), false);
    var var_6 = vec4<u32>(u_input.b.x, u_input.b.x, func_2(u_input.b.x, abs(vec2<u32>(4294967295u, u_input.b.x)) << (u_input.b.xy % vec2<u32>(32u)), Struct_1(_wgslsmith_add_u32(1u, u_input.b.x) & min(49859u, u_input.b.x), u_input.b.zx, _wgslsmith_mod_u32(u_input.b.x, ~1u)), Struct_3(select(select(vec3<bool>(false, false, var_5.x), vec3<bool>(var_5.x, var_5.x, false), vec3<bool>(var_5.x, true, true)), vec3<bool>(true, true, var_5.x), false))).a, ~(~max(u_input.b.x, u_input.b.x)));
    let var_7 = Struct_3(select(select(vec3<bool>(false, true, false), !select(vec3<bool>(false, var_5.x, var_5.x), vec3<bool>(var_5.x, false, var_5.x), vec3<bool>(var_5.x, true, true)), vec3<bool>(false & var_5.x, all(vec4<bool>(false, var_5.x, false, var_5.x)), true)), !(!(!vec3<bool>(var_5.x, true, var_5.x))), !(!(!vec3<bool>(true, true, var_5.x)))));
    var var_8 = _wgslsmith_mult_i32(~_wgslsmith_mult_i32(var_4, 0i) | ~firstTrailingBit(var_3), reverseBits(_wgslsmith_mult_i32(1i, var_2))) | var_2;
    let x = u_input.a;
    s_output = StorageBuffer(var_1);
}

