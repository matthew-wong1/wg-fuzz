struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
    d: vec3<i32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<bool>) -> vec2<i32> {
    var var_0 = vec4<bool>(false, arg_2.x, true, true);
    let var_1 = !vec4<bool>(true, all(!var_0.zxw) | true, true, 69050u > arg_0.a);
    var var_2 = ~vec4<i32>(6138i, u_input.c, -u_input.a, u_input.c);
    var var_3 = select(select(select(select(!var_1, var_1, var_1), vec4<bool>(true, all(vec3<bool>(var_1.x, true, true)), var_1.x, 9151i <= var_2.x), var_0.x || all(vec2<bool>(false, var_1.x))), select(var_1, !vec4<bool>(var_0.x, false, arg_2.x, arg_2.x), vec4<bool>(true, false, all(arg_2), !var_1.x)), true), var_1, !var_1);
    var var_4 = var_2.xxy;
    return var_2.zx;
}

fn func_2() -> vec4<bool> {
    var var_0 = select(vec4<i32>(_wgslsmith_sub_i32(33309i, _wgslsmith_div_i32(_wgslsmith_sub_i32(u_input.c, u_input.a), 6906i)), _wgslsmith_dot_vec2_i32(func_3(Struct_1(u_input.d.x), Struct_1(u_input.d.x), vec3<bool>(true, true, true)), firstLeadingBit(abs(vec2<i32>(-28636i, u_input.c)))), ~(-4627i), u_input.a), abs(~vec4<i32>(-1i, -23790i, -1i, 36626i)), false);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1728f, -666f)));
    let var_2 = vec2<i32>(7210i, reverseBits(abs(0i)));
    let var_3 = Struct_1(abs((firstTrailingBit(0u) | (u_input.d.x & 0u)) | ~firstLeadingBit(u_input.d.x)));
    let var_4 = _wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(~(u_input.b.x >> (61148u % 32u)), 0u, _wgslsmith_clamp_u32(reverseBits(1u), 1u, select(42588u, 11743u, true)), ~(~var_3.a)), ~(~vec4<u32>(8743u, u_input.b.x, 1u, 0u))), abs(_wgslsmith_mult_vec4_u32(vec4<u32>(~4294967295u, 1u, firstTrailingBit(4294967295u), _wgslsmith_div_u32(87001u, u_input.b.x)), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b.x, var_3.a, var_3.a, 22096u), abs(vec4<u32>(u_input.b.x, 4294967295u, u_input.d.x, 30761u)), firstTrailingBit(vec4<u32>(0u, u_input.d.x, u_input.b.x, 36500u))))));
    return vec4<bool>(any(select(select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, false, true)), true), vec3<bool>(true, true, true), true)), true, select(true, any(select(select(vec2<bool>(true, true), vec2<bool>(true, false), true), vec2<bool>(true, true), vec2<bool>(false, false))), true), true);
}

fn func_1(arg_0: f32) -> Struct_1 {
    let var_0 = select(vec4<bool>(false, all(!select(vec2<bool>(false, true), vec2<bool>(true, true), true)), (reverseBits(-38428i) >= reverseBits(u_input.a)) | true, true), func_2(), false);
    var var_1 = Struct_1(u_input.d.x);
    let var_2 = Struct_1(~9795u);
    let var_3 = any(vec3<bool>(all(func_2().zwx), all(func_2().wx), select(var_0.x, true, false) || func_2().x));
    var_1 = var_2;
    return var_2;
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: bool) -> vec4<u32> {
    let var_0 = func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(809f, -1866f)))))));
    var var_1 = arg_1;
    return vec4<u32>(min(_wgslsmith_add_u32(select(abs(arg_0), ~arg_0, 0u > var_0.a), 23797u), 1u), countOneBits(reverseBits(~(13780u << (0u % 32u)))), arg_0, abs(~(~max(4294967295u, 13861u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(~66004u >> ((~u_input.d.x | 30250u) % 32u), func_1(_wgslsmith_div_f32(231f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(-812f, 980f)))))), all(!vec3<bool>(1u < u_input.b.x, true, true)));
    var var_1 = Struct_1(_wgslsmith_dot_vec3_u32(~_wgslsmith_clamp_vec3_u32(func_4(1u, Struct_1(5497u), false).xyx, u_input.d | vec3<u32>(u_input.b.x, var_0.x, u_input.d.x), ~var_0.zxw), ~(~var_0.yyz)));
    let var_2 = u_input.a;
    let var_3 = abs((min(vec3<i32>(2147483647i, -36222i, var_2), vec3<i32>(-1i, u_input.c, 3304i)) >> (var_0.wxz % vec3<u32>(32u))) & ~_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a, u_input.c, var_2), vec3<i32>(u_input.c, 1i, -22646i))) ^ vec3<i32>(firstLeadingBit(16867i), ~(~u_input.a), -select(~1i, u_input.c, select(true, true, true)));
    let var_4 = func_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(-679f, -1223f)), 601f, true)))))));
    var_1 = Struct_1(abs(21027u));
    var_1 = var_4;
    var var_5 = Struct_1(abs(4294967295u));
    var_1 = Struct_1(var_5.a);
    let x = u_input.a;
    s_output = StorageBuffer(-10347i, ~1u, vec2<i32>(1i, func_3(var_4, var_4, vec3<bool>(true, false, false)).x >> (_wgslsmith_mod_u32(var_4.a, u_input.d.x) % 32u)) << (~var_0.xy % vec2<u32>(32u)), _wgslsmith_clamp_vec3_i32(abs(vec3<i32>(41266i, -1i, var_3.x)), ~var_3 << (vec3<u32>(var_5.a, u_input.d.x, 0u) % vec3<u32>(32u)), var_3) & min(~reverseBits(vec3<i32>(2147483647i, 13974i, var_2)), var_3), ~(~vec4<u32>(54666u, _wgslsmith_clamp_u32(var_1.a, var_5.a, 10737u), 9289u, 1u)));
}

