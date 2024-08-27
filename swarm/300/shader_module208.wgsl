struct Struct_1 {
    a: vec4<bool>,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec2<bool>,
    d: vec2<i32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: Struct_1,
    c: Struct_3,
}

struct Struct_5 {
    a: bool,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: Struct_5, arg_1: Struct_5, arg_2: vec4<i32>) -> vec3<u32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1219f * 781f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(-208f))))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-814f)) - _wgslsmith_f_op_f32(f32(-1f) * -1910f)), 2211f))));
    let var_1 = arg_2.x;
    let var_2 = _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(221f, 932f))))), var_0.x, _wgslsmith_f_op_f32(-303f + var_0.x), 507f)));
    var var_3 = _wgslsmith_mod_u32(u_input.a.x, ~u_input.a.x);
    return reverseBits(~abs(reverseBits(u_input.a.yyz)));
}

fn func_2() -> u32 {
    let var_0 = !(!select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false)), vec3<bool>(true, true, true), true));
    let var_1 = Struct_1(vec4<bool>(any(vec4<bool>(var_0.x, var_0.x, false, !var_0.x)), var_0.x, (-609f <= _wgslsmith_f_op_f32(round(-384f))) && var_0.x, false), firstLeadingBit(_wgslsmith_dot_vec3_u32(func_3(Struct_5(var_0.x, vec3<bool>(var_0.x, true, true)), Struct_5(false, var_0), vec4<i32>(-8219i, u_input.b.x, 1i, -1i)), vec3<u32>(_wgslsmith_dot_vec2_u32(u_input.a.zz, vec2<u32>(4294967295u, u_input.a.x)), ~0u, ~0u))));
    let var_2 = 0u;
    let var_3 = Struct_4(~firstLeadingBit(-u_input.b.x), var_1, Struct_3(Struct_2(Struct_1(!vec4<bool>(true, var_1.a.x, false, false), ~u_input.a.x), ~_wgslsmith_dot_vec3_u32(u_input.a.wyw, u_input.a.zxw), vec2<bool>(true, true), ~(vec2<i32>(u_input.b.x, 8301i) << (u_input.a.xw % vec2<u32>(32u))))));
    let var_4 = var_3.b.a.x & false;
    return 96528u;
}

fn func_1(arg_0: bool) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1682f + -444f)));
    let var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(153f)))))), -1036f));
    var_0 = 1000f;
    let var_2 = ~(~(48218u << (func_2() % 32u)));
    var_0 = 700f;
    return Struct_1(vec4<bool>(all(!select(vec2<bool>(false, arg_0), vec2<bool>(false, true), arg_0)), arg_0, true, false), _wgslsmith_mod_u32(9297u, 1u));
}

fn func_4(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: bool) -> i32 {
    var var_0 = Struct_3(Struct_2(Struct_1(vec4<bool>(arg_2, !arg_2, arg_0.c.x, any(arg_0.c)), select(arg_0.b | u_input.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(85288u, 4294967295u, u_input.a.x), vec3<u32>(99293u, arg_0.a.b, 4294967295u)), u_input.a.x != u_input.a.x)), func_3(Struct_5(arg_0.c.x, arg_0.a.a.xww), Struct_5(arg_2, arg_0.a.a.zyx), vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, -1i), u_input.b.yz), -2147483647i, ~arg_1.x, -arg_1.x)).x, !(!vec2<bool>(arg_2, true)), arg_0.d >> (vec2<u32>(arg_0.a.b, _wgslsmith_add_u32(1u, arg_0.a.b)) % vec2<u32>(32u))));
    var_0 = Struct_3(Struct_2(Struct_1(func_1(false).a, abs(~arg_0.a.b)), 1u, vec2<bool>(select(33842u, 4294967295u, arg_0.c.x) != ~u_input.a.x, !all(vec2<bool>(false, var_0.a.c.x))), ((var_0.a.d >> (u_input.a.zy % vec2<u32>(32u))) & vec2<i32>(-20846i, var_0.a.d.x)) | select(var_0.a.d | arg_0.d, arg_0.d ^ vec2<i32>(-1i, var_0.a.d.x), arg_2)));
    var var_1 = _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1000f))) + _wgslsmith_f_op_f32(f32(-1f) * -822f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(505f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(185f, -871f)))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-539f * 725f)))))));
    var var_2 = true;
    let var_3 = _wgslsmith_add_vec2_u32(vec2<u32>(~(arg_0.a.b | ~4294967295u), u_input.a.x), ~(~vec2<u32>(_wgslsmith_add_u32(arg_0.b, var_0.a.b), 0u)));
    return firstLeadingBit(u_input.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 0i;
    var var_1 = vec2<i32>(-1i) * -min(vec2<i32>(-3572i, -25962i), max(vec2<i32>(-12365i, var_0) & u_input.b.zy, u_input.b.yx));
    let var_2 = _wgslsmith_add_i32(1i << (0u % 32u), func_4(Struct_2(func_1(true), u_input.a.x, vec2<bool>(true, true), ~u_input.b.zy), _wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.b.x, var_1.x, u_input.b.x, u_input.b.x), vec4<i32>(-2147483647i, -41524i, var_0, 34320i)) >> (max(u_input.a, u_input.a) % vec4<u32>(32u)), vec4<i32>(var_0, var_0, 32530i, 25252i) ^ (vec4<i32>(32221i, -2147483647i, u_input.b.x, var_0) ^ vec4<i32>(var_1.x, var_0, u_input.b.x, var_1.x))), true));
    let var_3 = vec3<u32>(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(~(~u_input.a), (u_input.a >> (vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 2524u) % vec4<u32>(32u))) | u_input.a), u_input.a.x), ~_wgslsmith_div_u32(firstTrailingBit(u_input.a.x), _wgslsmith_div_u32(1u, 1u)), ~_wgslsmith_mod_u32(~0u, u_input.a.x));
    var var_4 = _wgslsmith_f_op_f32(step(-842f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-455f))) * 2415f)));
    let var_5 = false;
    var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-452f)) - 1010f) * _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -580f)))));
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.b);
}

