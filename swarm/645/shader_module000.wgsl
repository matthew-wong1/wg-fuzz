struct Struct_1 {
    a: u32,
    b: vec2<u32>,
    c: bool,
    d: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3(arg_0: i32, arg_1: f32) -> bool {
    var var_0 = Struct_1(83951u, vec2<u32>(~(~36141u), u_input.b.x) | ~(~_wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, u_input.b.x), vec2<u32>(u_input.b.x, 29743u), u_input.b.wz)), (false || all(vec4<bool>(false, false, true, false))) & all(vec2<bool>(select(false, true, true), true)), ~select(select(_wgslsmith_mod_vec2_i32(vec2<i32>(-24602i, u_input.a), vec2<i32>(-1i, u_input.a)), reverseBits(vec2<i32>(0i, -26069i)), vec2<bool>(true, true)), vec2<i32>(-21388i, -2147483647i), vec2<bool>(true, true)));
    var_0 = Struct_1(8408u, vec2<u32>(abs(~(u_input.b.x & var_0.a)), _wgslsmith_div_u32(_wgslsmith_add_u32(u_input.b.x, var_0.b.x), 1u)), -1853f == arg_1, ~var_0.d);
    var_0 = Struct_1(u_input.b.x, ~_wgslsmith_add_vec2_u32(~abs(vec2<u32>(var_0.b.x, var_0.a)), vec2<u32>(u_input.b.x, var_0.a)), var_0.c, var_0.d);
    var_0 = Struct_1(_wgslsmith_div_u32(27025u, ~max(u_input.b.x, ~var_0.a)), var_0.b, false, ~vec2<i32>(1i, var_0.d.x));
    var_0 = Struct_1(11496u, _wgslsmith_add_vec2_u32(~u_input.b.yz, u_input.b.yx), true, _wgslsmith_mult_vec2_i32(_wgslsmith_div_vec2_i32(var_0.d, _wgslsmith_clamp_vec2_i32(var_0.d, var_0.d, vec2<i32>(0i, u_input.a))), var_0.d) << (select(_wgslsmith_div_vec2_u32(vec2<u32>(var_0.a, var_0.b.x), u_input.b.yw) & ~var_0.b, _wgslsmith_div_vec2_u32(vec2<u32>(1u, 4294967295u), u_input.b.zw), vec2<bool>(var_0.c && var_0.c, var_0.b.x > 4294967295u)) % vec2<u32>(32u)));
    return var_0.c;
}

fn func_2(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: Struct_3) -> vec2<bool> {
    var var_0 = 1684f;
    var var_1 = Struct_3(arg_0.c, !vec4<bool>(!arg_0.c, arg_0.c, !func_3(0i, 1000f), true));
    var_1 = arg_2;
    let var_2 = vec2<u32>(~reverseBits(~arg_0.a), 105823u);
    var var_3 = ~var_2.x << ((~select(countOneBits(37148u), _wgslsmith_dot_vec2_u32(vec2<u32>(9074u, var_2.x), u_input.b.ww), u_input.b.x <= var_2.x) | abs(~(0u | var_2.x))) % 32u);
    return arg_2.b.xx;
}

fn func_1() -> bool {
    var var_0 = Struct_2(Struct_1(~4294967295u, abs(u_input.b.yw), all(select(func_2(Struct_1(u_input.b.x, vec2<u32>(u_input.b.x, u_input.b.x), false, vec2<i32>(u_input.a, -33177i)), vec4<f32>(1000f, -378f, 213f, -665f), Struct_3(false, vec4<bool>(true, true, true, false))), vec2<bool>(true, true), vec2<bool>(false, true))), _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a, u_input.a) << (u_input.b.xw % vec2<u32>(32u)), vec2<i32>(u_input.a, 1406i)) | _wgslsmith_mult_vec2_i32(min(vec2<i32>(u_input.a, u_input.a), vec2<i32>(-1i, -2147483647i)), ~vec2<i32>(-1i, u_input.a))));
    return select(func_3(_wgslsmith_clamp_i32(max(var_0.a.d.x, 1i) & 17886i, -11395i, u_input.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(569f - -406f)))), false, all(vec2<bool>(any(select(vec4<bool>(true, true, var_0.a.c, var_0.a.c), vec4<bool>(true, false, var_0.a.c, true), true)), all(vec3<bool>(true, true, true)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<bool>(select(_wgslsmith_dot_vec3_u32(u_input.b.wzy << (u_input.b.xxx % vec3<u32>(32u)), countOneBits(u_input.b.yzw)) == _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.b.x, 1u, 4294967295u), vec4<u32>(u_input.b.x, u_input.b.x, 1u, 16005u)), u_input.b.x, 1u | u_input.b.x), !all(vec3<bool>(true, true, true)), select(u_input.a, u_input.a, any(vec2<bool>(true, true))) == 3598i), all(select(vec2<bool>(true, true), vec2<bool>(true, true), true)) && true, any(vec2<bool>(true, any(vec3<bool>(false, true, false)))) & (select(false, true, true) != (max(1u, u_input.b.x) < ~1862u)), func_1());
    let var_1 = _wgslsmith_mod_vec3_i32(_wgslsmith_sub_vec3_i32(~(vec3<i32>(1i, -1i, 34664i) >> (vec3<u32>(1u, u_input.b.x, u_input.b.x) % vec3<u32>(32u))), countOneBits(-vec3<i32>(19192i, u_input.a, u_input.a))), vec3<i32>(17858i, ~_wgslsmith_add_i32(u_input.a, u_input.a), 2147483647i)) ^ (~firstTrailingBit(countOneBits(vec3<i32>(-27321i, -15255i, u_input.a))) ^ ~vec3<i32>(53817i, countOneBits(-1i), _wgslsmith_dot_vec2_i32(vec2<i32>(9544i, u_input.a), vec2<i32>(70956i, u_input.a))));
    let var_2 = _wgslsmith_mod_vec4_u32(~_wgslsmith_clamp_vec4_u32(~(~u_input.b), vec4<u32>(1u, 1u, 166716u, 0u), vec4<u32>(4294967295u, u_input.b.x, u_input.b.x, 4294967295u) & u_input.b), ~vec4<u32>(_wgslsmith_sub_u32(u_input.b.x, _wgslsmith_mult_u32(u_input.b.x, 1u)), 1u, 84758u, 4294967295u));
    let var_3 = vec3<u32>(_wgslsmith_add_u32(_wgslsmith_add_u32(~min(26729u, u_input.b.x), _wgslsmith_add_u32(17001u, min(var_2.x, u_input.b.x))), ~u_input.b.x), _wgslsmith_sub_u32(0u, min(~(~u_input.b.x), 0u)), _wgslsmith_mod_u32(3007u, var_2.x));
    var var_4 = !(!(!func_2(Struct_1(11260u, var_2.yy, false, var_1.xx), vec4<f32>(-417f, 596f, 1321f, 968f), Struct_3(var_0.x, vec4<bool>(var_0.x, true, true, var_0.x))).x)) & var_0.x;
    let x = u_input.a;
    s_output = StorageBuffer(13163u);
}

