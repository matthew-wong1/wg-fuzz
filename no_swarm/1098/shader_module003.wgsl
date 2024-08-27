struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<f32>,
    d: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
}

struct Struct_4 {
    a: vec4<i32>,
}

struct Struct_5 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: i32) -> i32 {
    var var_0 = vec2<u32>(~17654u, ~(~_wgslsmith_sub_u32(u_input.a, 26030u) << (_wgslsmith_clamp_u32(u_input.c.x, u_input.a ^ u_input.c.x, ~u_input.a) % 32u)));
    return _wgslsmith_mult_i32(max(min((i32(-1i) * -3663i) ^ (arg_0 | 0i), i32(-1i) * -12494i), 2147483647i), ~arg_0 & -(arg_0 << (~34413u % 32u)));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_2, arg_2: vec4<f32>) -> u32 {
    var var_0 = arg_0.a;
    let var_1 = abs(~(~(~vec4<u32>(26235u, u_input.c.x, 4294967295u, u_input.c.x)))) | countOneBits(_wgslsmith_add_vec4_u32(~firstTrailingBit(vec4<u32>(62538u, u_input.b.x, 61474u, 18930u)), ~(~vec4<u32>(u_input.c.x, 13292u, 3654u, u_input.c.x))));
    var_0 = vec4<i32>(0i, firstTrailingBit(~(arg_1.a.a.x << (u_input.b.x % 32u))) | arg_0.a.x, _wgslsmith_mult_i32(arg_0.a.x, arg_1.a.a.x), max(_wgslsmith_add_i32(var_0.x, -53588i), 2459i ^ (_wgslsmith_dot_vec3_i32(vec3<i32>(0i, 0i, arg_0.a.x), arg_0.a.wwx) & (var_0.x ^ -1i))));
    let var_2 = arg_0;
    let var_3 = Struct_4(vec4<i32>(1i, _wgslsmith_mod_i32(_wgslsmith_clamp_i32(-var_2.a.x, _wgslsmith_clamp_i32(var_0.x, -20361i, -7889i), arg_1.b.a.x), var_2.a.x), 1i, 404i));
    return _wgslsmith_sub_u32(var_1.x, _wgslsmith_dot_vec4_u32(~firstLeadingBit(firstTrailingBit(var_1)), var_1));
}

fn func_2() -> vec3<i32> {
    var var_0 = Struct_5(1u);
    var_0 = Struct_5(abs(15058u ^ var_0.a));
    var_0 = Struct_5((countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.a, var_0.a, var_0.a, 1u), vec4<u32>(var_0.a, 0u, var_0.a, 4294967295u))) >> (~var_0.a % 32u)) >> (11124u % 32u));
    var_0 = Struct_5(var_0.a);
    var_0 = Struct_5(1u & func_3(Struct_4(-vec4<i32>(-1i, -2147483647i, -1i, 1i)), Struct_2(Struct_1(vec2<i32>(48812i, 24093i)), Struct_1(vec2<i32>(18495i, 1i)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1607f, 470f, 1873f) * vec3<f32>(-480f, -1020f, -504f)), true), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-323f, -314f, 530f, 1540f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-761f, 1374f, -1093f, -1509f) - vec4<f32>(1312f, -823f, -187f, 202f)))));
    return abs(vec3<i32>(1i, 1i, 1i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !vec3<bool>(select(true, true, true != any(vec2<bool>(false, false))), true, abs(abs(u_input.c.x)) == _wgslsmith_mod_u32(13722u, ~u_input.c.x));
    let var_1 = _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, 65334u), u_input.c.zx);
    var var_2 = -1i | ~_wgslsmith_dot_vec3_i32(-vec3<i32>(-1i, 10620i, -16988i), vec3<i32>(1i, 1i, 1i));
    var var_3 = vec3<i32>(_wgslsmith_add_i32(-_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -1i, -1i, 66841i), vec4<i32>(2147483647i, 22023i, 2147483647i, 1i)), 1i) >> (~var_1.x % 32u), func_1(_wgslsmith_add_i32(931i, max(~(-9358i), 13470i))), ~(-1i));
    var_3 = func_2();
    let var_4 = Struct_1(_wgslsmith_mult_vec2_i32(vec2<i32>(var_3.x, _wgslsmith_div_i32(var_3.x ^ 0i, i32(-1i) * -83838i)), var_3.xy));
    let var_5 = !vec4<bool>(var_0.x | true, var_0.x, all(!var_0.yx), any(var_0));
    let var_6 = _wgslsmith_sub_vec4_u32(firstLeadingBit(reverseBits(vec4<u32>(~34466u, u_input.c.x, u_input.b.x, 1u))), firstLeadingBit(vec4<u32>(~(~1u), 22373u, u_input.c.x, 1u)));
    var_3 = _wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(abs(reverseBits(_wgslsmith_mult_vec3_i32(vec3<i32>(-36535i, var_4.a.x, 2147483647i), vec3<i32>(1i, -2111i, var_4.a.x)))), reverseBits(vec3<i32>(-2147483647i, 0i, ~var_3.x))), vec3<i32>(_wgslsmith_add_i32(_wgslsmith_clamp_i32(var_4.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 8243i, 0i, var_4.a.x), vec4<i32>(var_4.a.x, -63439i, var_3.x, 29240i)), max(9507i, 49203i)), var_3.x), _wgslsmith_clamp_i32(~1i, 1i, ~(i32(-1i) * -1i)), 2147483647i));
    let x = u_input.a;
    s_output = StorageBuffer(-(var_4.a.x ^ countOneBits(-42830i)), -vec4<i32>(-12815i, min(0i, var_4.a.x), var_3.x, var_3.x) << (countOneBits(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b.x, 7110u, 68836u, 4294967295u), var_6) & (var_6 | vec4<u32>(var_1.x, 0u, var_6.x, 1u))) % vec4<u32>(32u)));
}

