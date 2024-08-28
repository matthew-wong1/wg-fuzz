struct Struct_1 {
    a: vec2<u32>,
    b: f32,
    c: bool,
    d: vec4<u32>,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_1) -> vec4<u32> {
    var var_0 = true && all(!vec3<bool>(false, any(vec3<bool>(arg_0.c, arg_0.c, arg_0.c)), true));
    var_0 = true;
    let var_1 = vec2<bool>(arg_0.c, false);
    var_0 = any(!vec2<bool>(u_input.c.x <= 4294967295u, true)) == true;
    var var_2 = arg_0;
    return _wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(select(~abs(var_2.d), arg_0.d, !select(false, var_1.x, false)), firstLeadingBit(vec4<u32>(firstTrailingBit(arg_0.a.x), var_2.d.x, var_2.d.x, 4294967295u))), _wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(~max(var_2.d, vec4<u32>(0u, 4294967295u, u_input.c.x, 12981u)), var_2.d), arg_0.d));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32) -> vec4<u32> {
    let var_0 = -vec2<i32>(_wgslsmith_mod_i32(1i, -2147483647i), _wgslsmith_mod_i32(_wgslsmith_clamp_i32(29794i, 0i, u_input.a), -34229i)) ^ firstTrailingBit(vec2<i32>(-1i, u_input.b) ^ ~(-vec2<i32>(u_input.a, 0i)));
    var var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-1587f, 1199f))) + -1000f))) < arg_0.e;
    let var_2 = _wgslsmith_mult_u32(~arg_0.a.x, _wgslsmith_clamp_u32(reverseBits(arg_0.d.x), arg_0.d.x >> (0u % 32u), 1u));
    var var_3 = _wgslsmith_sub_u32(_wgslsmith_div_u32(arg_1.a.x, _wgslsmith_mult_u32(countOneBits(0u), arg_1.a.x)), ~u_input.c.x ^ max(101981u, 7829u));
    let var_4 = _wgslsmith_f_op_f32(trunc(arg_0.e));
    return (_wgslsmith_sub_vec4_u32(func_3(Struct_1(vec2<u32>(u_input.c.x, 4294967295u), -1133f, arg_1.c, vec4<u32>(u_input.c.x, 64200u, 1u, arg_1.a.x), arg_0.b)), vec4<u32>(firstLeadingBit(12502u), func_3(Struct_1(arg_0.a, 1486f, false, vec4<u32>(1u, arg_1.d.x, 3743u, 4294967295u), -1143f)).x, u_input.c.x, 32049u)) & ~(_wgslsmith_mod_vec4_u32(vec4<u32>(arg_2, 4294967295u, 7834u, 1u), vec4<u32>(var_2, 41830u, 1u, arg_2)) | _wgslsmith_add_vec4_u32(arg_0.d, vec4<u32>(arg_0.a.x, var_2, 1u, 6964u)))) << (~_wgslsmith_sub_vec4_u32(arg_1.d << (vec4<u32>(1u, 76675u, 1u, u_input.c.x) % vec4<u32>(32u)), ~firstLeadingBit(vec4<u32>(24699u, arg_1.a.x, 8554u, var_2))) % vec4<u32>(32u));
}

fn func_1(arg_0: Struct_1) -> u32 {
    var var_0 = Struct_1((vec2<u32>(_wgslsmith_dot_vec4_u32(arg_0.d, vec4<u32>(1u, u_input.c.x, arg_0.d.x, 50446u)), u_input.c.x) << (~vec2<u32>(29341u, u_input.c.x) % vec2<u32>(32u))) ^ ~firstTrailingBit(~arg_0.a), arg_0.e, false == any(select(!vec4<bool>(false, arg_0.c, false, arg_0.c), select(vec4<bool>(true, true, arg_0.c, false), vec4<bool>(true, false, true, arg_0.c), arg_0.c), !vec4<bool>(arg_0.c, false, arg_0.c, true))), abs(_wgslsmith_clamp_vec4_u32(abs(vec4<u32>(4294967295u, arg_0.a.x, u_input.c.x, arg_0.a.x)), func_2(Struct_1(vec2<u32>(90777u, u_input.c.x), arg_0.b, arg_0.c, vec4<u32>(arg_0.d.x, 14027u, u_input.c.x, u_input.c.x), 245f), Struct_1(u_input.c, 1000f, arg_0.c, arg_0.d, -1875f), u_input.c.x), _wgslsmith_sub_vec4_u32(arg_0.d, arg_0.d))) << (_wgslsmith_add_vec4_u32(arg_0.d, arg_0.d << (arg_0.d % vec4<u32>(32u))) % vec4<u32>(32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.e * _wgslsmith_f_op_f32(-arg_0.e))));
    let var_1 = vec3<bool>(!arg_0.c, true, true);
    let var_2 = Struct_1(vec2<u32>(79238u, ~var_0.d.x), _wgslsmith_f_op_f32(sign(var_0.b)), var_1.x, ~(abs(func_2(Struct_1(arg_0.a, var_0.b, true, vec4<u32>(var_0.d.x, var_0.a.x, 1u, arg_0.a.x), -758f), arg_0, arg_0.d.x)) ^ ~max(arg_0.d, var_0.d)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.e - _wgslsmith_f_op_f32(f32(-1f) * -565f))));
    var var_3 = Struct_1(~var_2.d.xy, _wgslsmith_div_f32(arg_0.e, var_2.b), any(var_1), vec4<u32>(var_0.d.x, abs(4294967295u), countOneBits(abs(max(1u, var_2.a.x))), reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.d.x, 114236u, 4294967295u), _wgslsmith_mod_vec3_u32(vec3<u32>(var_2.a.x, 0u, var_2.a.x), var_2.d.zyy)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.e))));
    var var_4 = !(!vec4<bool>(var_3.c, true, true, false));
    return arg_0.d.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_dot_vec2_i32(-(vec2<i32>(-1i) * -vec2<i32>(2147483647i, u_input.a)) << (_wgslsmith_div_vec2_u32(firstTrailingBit(u_input.c), ~(vec2<u32>(2496u, u_input.c.x) >> (u_input.c % vec2<u32>(32u)))) % vec2<u32>(32u)), _wgslsmith_div_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a, u_input.a), ~firstTrailingBit(vec2<i32>(u_input.b, u_input.b))), _wgslsmith_sub_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(-8979i, 2147483647i), vec2<i32>(u_input.a, u_input.b)) | countOneBits(vec2<i32>(u_input.a, u_input.a)), max(~vec2<i32>(u_input.b, u_input.b), _wgslsmith_mod_vec2_i32(vec2<i32>(-47160i, u_input.a), vec2<i32>(u_input.a, -45655i))))));
    var var_1 = u_input.c.x;
    var_1 = reverseBits(u_input.c.x << (0u % 32u));
    var_1 = 0u;
    let x = u_input.a;
    s_output = StorageBuffer(~(~_wgslsmith_mod_u32(1u, func_1(Struct_1(vec2<u32>(u_input.c.x, 4294967295u), -186f, false, vec4<u32>(u_input.c.x, u_input.c.x, 4294967295u, 47035u), 1232f)))), 25351u, vec2<u32>(_wgslsmith_dot_vec2_u32(~_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.c.x, 1u), u_input.c), (u_input.c << (vec2<u32>(43065u, 1u) % vec2<u32>(32u))) >> (abs(vec2<u32>(u_input.c.x, u_input.c.x)) % vec2<u32>(32u))), u_input.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -379f))), var_0);
}

