struct Struct_1 {
    a: f32,
    b: f32,
    c: i32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec2<i32>,
    c: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec2<i32>,
    d: vec2<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_1(arg_0: vec2<f32>, arg_1: i32, arg_2: bool) -> vec2<u32> {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -367f)) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_0.x)) - 706f)))), 358f);
    let var_1 = _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.d.x, abs(u_input.c.x), -2147483647i, firstLeadingBit(-31532i)), _wgslsmith_sub_vec4_i32((vec4<i32>(-5861i, u_input.c.x, -42307i, arg_1) | vec4<i32>(u_input.b, u_input.d.x, arg_1, arg_1)) ^ vec4<i32>(0i, arg_1, arg_1, u_input.d.x), vec4<i32>(-30801i, -23238i, arg_1 << (1u % 32u), i32(-1i) * -2147483647i)) >> ((_wgslsmith_mod_vec4_u32(~vec4<u32>(0u, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(4294967295u, u_input.e, u_input.e, 4173u)) | ~vec4<u32>(u_input.a.x, 81550u, 1u, 1u)) % vec4<u32>(32u)), ~reverseBits(_wgslsmith_div_vec4_i32(vec4<i32>(-1i, arg_1, -2147483647i, u_input.c.x) << (vec4<u32>(1u, 1375u, 74689u, 37357u) % vec4<u32>(32u)), vec4<i32>(-8702i, 47079i, -15525i, u_input.d.x))));
    return _wgslsmith_add_vec2_u32(vec2<u32>(~(1u ^ min(u_input.a.x, u_input.e)), 4294967295u), ~u_input.a.zy);
}

fn func_3(arg_0: bool, arg_1: i32, arg_2: u32, arg_3: vec3<f32>) -> vec3<i32> {
    var var_0 = !vec2<bool>(arg_0, arg_0 & arg_0);
    var var_1 = Struct_1(-1941f, 1370f, u_input.b);
    var var_2 = _wgslsmith_mod_vec3_u32(~_wgslsmith_clamp_vec3_u32(_wgslsmith_div_vec3_u32(firstTrailingBit(u_input.a), vec3<u32>(0u, arg_2, 218u)), _wgslsmith_clamp_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(arg_2, 39289u, 1u), u_input.a), vec3<u32>(4294967295u, arg_2, 55649u), select(u_input.a, u_input.a, vec3<bool>(true, var_0.x, false))), ~firstTrailingBit(u_input.a)), min(u_input.a, ~(abs(u_input.a) & vec3<u32>(1u, arg_2, 4294967295u))));
    var_0 = vec2<bool>(true, true);
    var var_3 = abs(select(countOneBits(vec4<u32>(var_2.x, ~var_2.x, 47990u ^ u_input.a.x, 3756u)), ~firstTrailingBit(firstTrailingBit(vec4<u32>(var_2.x, u_input.a.x, arg_2, u_input.a.x))), vec4<bool>(all(!vec4<bool>(var_0.x, false, false, var_0.x)), false, any(!vec4<bool>(true, arg_0, true, arg_0)), !arg_0)));
    return select(countOneBits(countOneBits(vec3<i32>(-var_1.c, _wgslsmith_mult_i32(arg_1, -13301i), -19628i))), vec3<i32>(~(-32512i), ~(~(i32(-1i) * -26678i)), _wgslsmith_mod_i32(select(~var_1.c, -1i, true), firstTrailingBit(-1i))), select(select(vec3<bool>(!var_0.x, all(vec4<bool>(true, arg_0, var_0.x, var_0.x)), true), select(select(vec3<bool>(arg_0, true, true), vec3<bool>(false, true, var_0.x), arg_0), !vec3<bool>(true, arg_0, var_0.x), select(vec3<bool>(false, arg_0, var_0.x), vec3<bool>(var_0.x, true, false), vec3<bool>(false, true, true))), !select(vec3<bool>(arg_0, arg_0, var_0.x), vec3<bool>(arg_0, true, true), false)), vec3<bool>(arg_0, !any(vec4<bool>(var_0.x, false, true, var_0.x)), false), !select(!vec3<bool>(var_0.x, false, var_0.x), !vec3<bool>(var_0.x, arg_0, var_0.x), !vec3<bool>(var_0.x, false, false))));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<i32>) -> vec4<i32> {
    return -vec4<i32>(~(-arg_1.x | _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, arg_1.x), vec2<i32>(arg_0.c, -50430i))), u_input.c.x, _wgslsmith_add_i32(~u_input.c.x, arg_0.c), -min(-arg_0.c, -1i));
}

fn func_2() -> StorageBuffer {
    var var_0 = select(vec4<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(u_input.c, u_input.c) << ((u_input.a.yz << (u_input.a.xy % vec2<u32>(32u))) % vec2<u32>(32u)), u_input.c), -_wgslsmith_add_i32(u_input.c.x, u_input.b), u_input.c.x, _wgslsmith_dot_vec2_i32(vec2<i32>(-2187i, ~(-18768i)), vec2<i32>(20158i >> (u_input.e % 32u), ~u_input.c.x))), -func_4(Struct_1(-308f, _wgslsmith_f_op_f32(trunc(711f)), 32504i), min(func_3(true, 25629i, u_input.a.x, vec3<f32>(-1956f, 698f, 1302f)), firstLeadingBit(vec3<i32>(8788i, -2147483647i, -2147483647i)))), vec4<bool>(true, !all(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), true)), true, true));
    var var_1 = false;
    var_1 = _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, _wgslsmith_dot_vec3_i32(~var_0.yzy, var_0.zxz)), vec2<i32>(countOneBits(firstTrailingBit(u_input.c.x)), func_3(any(vec3<bool>(false, true, false)), 1i, 10682u, _wgslsmith_div_vec3_f32(vec3<f32>(650f, -1724f, 357f), vec3<f32>(-701f, -726f, 463f))).x)) >= max(var_0.x, func_4(Struct_1(-1847f, _wgslsmith_f_op_f32(1467f + 2075f), var_0.x), vec3<i32>(-u_input.d.x, var_0.x, _wgslsmith_add_i32(-1i, var_0.x))).x);
    let var_2 = !select(select(!select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), false), select(select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true), false), select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false)), vec4<bool>(true, false, true, false))), !vec4<bool>(true, true, select(true, false, false), true), vec4<bool>(true, true, true, true));
    let var_3 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1368f, -1249f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(287f, 370f)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1036f, 728f), vec2<f32>(-2375f, 1577f), false)), vec2<f32>(1f, 1f)))), vec2<f32>(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(-735f * -1433f)), -1219f), var_2.yz));
    return StorageBuffer(vec4<i32>(-12046i, ~var_0.x, u_input.c.x, _wgslsmith_mod_i32(-2147483647i, ~_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.x, 24383i), var_0.zy))), min(vec2<i32>(select(1i, 2147483647i, true) | countOneBits(var_0.x), 1i), -var_0.zy));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~_wgslsmith_mult_vec2_u32(_wgslsmith_mult_vec2_u32(func_1(vec2<f32>(-195f, 511f), -2147483647i, true), ~vec2<u32>(u_input.a.x, 1u)), vec2<u32>(u_input.e, 16742u) << (min(vec2<u32>(u_input.e, u_input.a.x), vec2<u32>(35754u, 0u)) % vec2<u32>(32u))));
    let var_1 = true;
    var_0 = ~firstTrailingBit(vec2<u32>(var_0.x, var_0.x));
    let var_2 = reverseBits(~4294967295u);
    var_0 = ~vec2<u32>(~(~1u), 50610u);
    let x = u_input.a;
    s_output = func_2();
}

