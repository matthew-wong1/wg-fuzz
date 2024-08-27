struct Struct_1 {
    a: u32,
    b: vec3<bool>,
    c: vec3<u32>,
    d: vec4<bool>,
    e: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: vec2<i32>,
    d: vec2<f32>,
    e: f32,
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

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: vec4<f32>) -> vec3<u32> {
    var var_0 = _wgslsmith_clamp_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(arg_0.a, u_input.a.x, u_input.d.x >> (0u % 32u)), u_input.d), ~u_input.d, max(reverseBits(~u_input.d), ~(u_input.d & vec3<u32>(80602u, 24393u, 1u)) << (vec3<u32>(u_input.d.x, 1u, ~u_input.d.x) % vec3<u32>(32u))));
    var var_1 = Struct_1(firstLeadingBit(~(firstTrailingBit(u_input.d.x) << (firstLeadingBit(4294967295u) % 32u))), arg_0.d.xxx, ~vec3<u32>(~arg_0.c.x, ~u_input.d.x, ~55551u), !(!(!select(arg_0.d, vec4<bool>(arg_0.b.x, true, arg_0.d.x, false), arg_0.d.x))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2153f) - arg_1.x), _wgslsmith_f_op_f32(select(-324f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(-1749f, 223f)))), arg_0.d.x)))));
    return ~firstLeadingBit(u_input.d);
}

fn func_2(arg_0: vec2<bool>, arg_1: vec3<u32>, arg_2: i32, arg_3: f32) -> bool {
    var var_0 = Struct_1(~_wgslsmith_dot_vec3_u32(~(u_input.d >> (arg_1 % vec3<u32>(32u))), func_3(Struct_1(arg_1.x, vec3<bool>(false, arg_0.x, arg_0.x), vec3<u32>(4294967295u, 54165u, arg_1.x), vec4<bool>(true, arg_0.x, true, arg_0.x), arg_3), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3, 1883f, arg_3, arg_3)), vec4<f32>(421f, -1987f, -974f, arg_3))), vec3<bool>((all(vec4<bool>(false, arg_0.x, false, arg_0.x)) | arg_0.x) == arg_0.x, any(arg_0), any(vec4<bool>(!arg_0.x, !arg_0.x, false, true))), arg_1, !vec4<bool>(false || (arg_2 <= -1i), arg_0.x, arg_0.x, any(!arg_0)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1245f - 585f))))), arg_3));
    var_0 = Struct_1(arg_1.x, select(var_0.d.zxz, !var_0.b, var_0.d.xzx), arg_1, vec4<bool>(var_0.b.x, all(!select(var_0.b.yx, vec2<bool>(var_0.b.x, true), vec2<bool>(false, var_0.b.x))), true, any(select(select(var_0.d, vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), true), var_0.d, false))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-186f - 2467f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_0.e)) + var_0.e)));
    var var_1 = Struct_1(_wgslsmith_sub_u32(var_0.a, ~_wgslsmith_div_u32(79975u, arg_1.x)), select(var_0.b, !select(!var_0.d.zwx, !vec3<bool>(var_0.d.x, var_0.d.x, false), select(vec3<bool>(false, true, arg_0.x), vec3<bool>(var_0.d.x, false, false), arg_0.x)), var_0.b), ~_wgslsmith_clamp_vec3_u32(u_input.d, arg_1, _wgslsmith_clamp_vec3_u32(var_0.c, abs(vec3<u32>(1u, 66111u, arg_1.x)), ~vec3<u32>(7844u, 72751u, u_input.d.x))), !(!var_0.d), _wgslsmith_f_op_f32(var_0.e * _wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    let var_2 = 4294967295u;
    let var_3 = !vec4<bool>(any(!select(vec2<bool>(var_1.d.x, arg_0.x), vec2<bool>(var_1.d.x, true), vec2<bool>(var_0.b.x, false))), false, any(select(select(var_1.b.yx, vec2<bool>(var_0.d.x, false), vec2<bool>(var_1.b.x, var_1.d.x)), var_0.b.xy, var_0.b.yz)), true);
    return !(!all(vec2<bool>(!var_3.x, any(vec4<bool>(false, var_0.b.x, var_3.x, false)))));
}

fn func_1(arg_0: bool, arg_1: f32, arg_2: vec3<i32>) -> vec4<bool> {
    let var_0 = vec3<bool>(true, func_2(!vec2<bool>(true, arg_0), _wgslsmith_mod_vec3_u32(~u_input.d, vec3<u32>(36139u, u_input.a.x, u_input.d.x)), ~(~u_input.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_1, arg_1)))) || (u_input.d.x >= ~u_input.a.x), true);
    let var_1 = min(_wgslsmith_add_vec3_u32(u_input.d, u_input.d), firstTrailingBit(vec3<u32>(~(13148u ^ u_input.d.x), _wgslsmith_div_u32(_wgslsmith_mult_u32(u_input.c, u_input.d.x), max(20973u, 4294967295u)), _wgslsmith_mult_u32(4294967295u, ~u_input.d.x))));
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(518f)) + _wgslsmith_f_op_f32(arg_1 * 209f)), 132f);
    var var_3 = vec3<u32>(_wgslsmith_clamp_u32(firstTrailingBit(reverseBits(12045u)), 1u, 4294967295u), _wgslsmith_div_u32(~_wgslsmith_dot_vec2_u32(u_input.a, ~vec2<u32>(var_1.x, u_input.c)), (u_input.c << ((var_1.x << (u_input.a.x % 32u)) % 32u)) | ~var_1.x), u_input.d.x);
    var_3 = ~var_1;
    return select(select(!(!(!vec4<bool>(var_0.x, true, arg_0, false))), vec4<bool>(false, all(!vec2<bool>(var_0.x, false)), var_0.x, arg_0), false), vec4<bool>(true, !all(select(vec4<bool>(true, arg_0, var_0.x, true), vec4<bool>(var_0.x, false, true, var_0.x), true)), true, !arg_0), select(vec4<bool>(!(arg_1 == 968f), select(true, true, true), false, !var_0.x), vec4<bool>(_wgslsmith_f_op_f32(sign(arg_1)) > arg_1, arg_0, func_2(var_0.xz, ~vec3<u32>(0u, var_1.x, 4294967295u), -39312i, _wgslsmith_f_op_f32(abs(-652f))), true), !vec4<bool>(false, func_2(vec2<bool>(var_0.x, true), vec3<u32>(var_3.x, 1u, var_3.x), u_input.b.x, -886f), true, true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<bool>(!(!any(vec3<bool>(false, true, true))) & (u_input.d.x == u_input.c), false, all(func_1(true, -1488f, _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x), vec3<i32>(1i, 10563i, u_input.b.x)) | reverseBits(vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x)))), any(vec2<bool>(true, false)));
    var var_1 = Struct_1(~_wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(44455u, 104730u, 35520u)), vec3<u32>(4294967295u, 4294967295u, u_input.d.x) | u_input.d) & reverseBits(u_input.d.x), !vec3<bool>(false, false, !var_0.x && var_0.x), u_input.d, select(vec4<bool>(func_2(!var_0.xx, vec3<u32>(u_input.c, u_input.c, u_input.d.x), abs(u_input.b.x), -269f), !(var_0.x != var_0.x), var_0.x, any(var_0.xz)), select(select(func_1(true, 1120f, vec3<i32>(1i, 1i, 44278i)), !vec4<bool>(true, false, var_0.x, false), !vec4<bool>(true, var_0.x, var_0.x, false)), vec4<bool>(var_0.x, true, true, any(vec3<bool>(false, false, false))), var_0), true), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-405f, -831f) + _wgslsmith_f_op_f32(495f + -397f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -228f) * -1502f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, 145f) - _wgslsmith_f_op_f32(-178f - 447f))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.e) + _wgslsmith_f_op_f32(-var_1.e)), var_1.e))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1645f - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(var_1.e, var_1.e)), _wgslsmith_f_op_f32(-var_1.e)))))), ~(~vec2<i32>(_wgslsmith_mult_i32(34021i, u_input.b.x), _wgslsmith_clamp_i32(u_input.b.x, -19746i, u_input.b.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(843f, var_1.e))), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(513f, -1724f), vec2<f32>(var_1.e, -732f))), func_1(false, var_1.e, vec3<i32>(u_input.b.x, u_input.b.x, 20432i)).xz))))), var_1.e);
}

