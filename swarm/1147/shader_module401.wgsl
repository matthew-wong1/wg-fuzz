struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec3<u32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> vec4<bool> {
    let var_0 = arg_1;
    var var_1 = true;
    let var_2 = var_0;
    let var_3 = Struct_2(var_0, var_0, arg_0, arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(357f, 796f)), _wgslsmith_f_op_f32(round(-1000f))))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, 935f)) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(823f, 740f)))));
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-623f - var_3.e) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1420f))));
    return vec4<bool>(any(vec3<bool>(!any(vec2<bool>(false, true)), true, true)), 139f > _wgslsmith_f_op_f32(abs(var_3.e)), !all(!select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false))), firstTrailingBit(_wgslsmith_clamp_u32(47317u >> (u_input.b % 32u), abs(u_input.b), min(1u, 18161u))) == firstLeadingBit(8009u));
}

fn func_2(arg_0: vec2<bool>, arg_1: vec4<i32>, arg_2: u32, arg_3: i32) -> Struct_1 {
    let var_0 = _wgslsmith_div_i32(~32259i, ~(-2147483647i));
    let var_1 = vec2<bool>(arg_0.x, arg_0.x);
    let var_2 = u_input.c;
    let var_3 = Struct_1(arg_1);
    var var_4 = func_3(Struct_1(vec4<i32>(-1i) * -max(vec4<i32>(-36678i, 1i, var_3.a.x, -2147483647i), vec4<i32>(1i, var_2, -2147483647i, -10218i))), Struct_1(arg_1));
    return var_3;
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_2) -> Struct_1 {
    let var_0 = arg_0.x;
    var var_1 = 0u;
    let var_2 = ~countOneBits(arg_0.xz);
    var_1 = _wgslsmith_mod_u32(1u, var_2.x);
    let var_3 = Struct_1(_wgslsmith_add_vec4_i32(arg_1.c.a, -arg_1.c.a));
    return Struct_1(vec4<i32>(-24049i, -(4360i & u_input.c) | func_2(select(vec2<bool>(true, true), vec2<bool>(true, true), true), firstTrailingBit(vec4<i32>(var_3.a.x, -29626i, arg_1.c.a.x, u_input.a.x)), var_2.x, _wgslsmith_add_i32(-2147483647i, var_3.a.x)).a.x, _wgslsmith_clamp_i32(_wgslsmith_clamp_i32(max(-17221i, u_input.a.x), ~(-2147483647i), 1i), (arg_1.c.a.x | u_input.a.x) ^ _wgslsmith_add_i32(u_input.a.x, -38327i), _wgslsmith_mod_i32(2147483647i, -u_input.a.x)), arg_1.b.a.x));
}

fn func_5(arg_0: Struct_1, arg_1: i32, arg_2: vec3<u32>) -> vec4<i32> {
    var var_0 = func_4(arg_2, Struct_2(Struct_1(vec4<i32>(-1i, _wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(-1i, 53427i, 14850i)), _wgslsmith_dot_vec4_i32(arg_0.a, arg_0.a), _wgslsmith_div_i32(1i, arg_0.a.x))), Struct_1(vec4<i32>(max(arg_0.a.x, arg_1), arg_1 | 2147483647i, 2147483647i, max(arg_1, 2147483647i))), Struct_1(_wgslsmith_add_vec4_i32(vec4<i32>(65601i, -72569i, u_input.d.x, u_input.a.x), -vec4<i32>(u_input.a.x, 2147483647i, arg_1, arg_0.a.x))), arg_0, _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1291f), _wgslsmith_f_op_f32(f32(-1f) * -592f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -620f)))))).a.x;
    var_0 = ~(-1i);
    let var_1 = ~vec4<i32>(abs(_wgslsmith_dot_vec4_i32(arg_0.a ^ vec4<i32>(u_input.d.x, -2147483647i, 69336i, 2147483647i), vec4<i32>(-17706i, 24311i, -1i, 0i))), _wgslsmith_mod_i32(_wgslsmith_mult_i32(2147483647i & u_input.a.x, -20350i), ~(-12273i) | _wgslsmith_mult_i32(arg_1, 2147483647i)), u_input.a.x, u_input.a.x);
    var var_2 = !(!select(select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), true)), vec3<bool>(true, true, true), vec3<bool>(true, true, true)));
    let var_3 = !(u_input.a.x >= var_1.x) || (!all(vec4<bool>(true, true, true, false)) & var_2.x);
    return vec4<i32>(reverseBits(abs(arg_0.a.x)), -2147483647i, ~abs(1i) | _wgslsmith_sub_i32(arg_1, arg_0.a.x ^ _wgslsmith_mult_i32(u_input.d.x, 3647i)), arg_0.a.x);
}

fn func_1(arg_0: vec2<bool>) -> vec4<f32> {
    var var_0 = Struct_1(~(_wgslsmith_div_vec4_i32(max(vec4<i32>(u_input.c, -1i, -1i, u_input.c), vec4<i32>(u_input.c, u_input.d.x, u_input.c, u_input.c)), -vec4<i32>(-488i, 35958i, u_input.c, u_input.a.x)) >> (vec4<u32>(_wgslsmith_add_u32(u_input.b, 38645u), ~86657u, 41992u, _wgslsmith_sub_u32(4294967295u, 0u)) % vec4<u32>(32u))));
    var_0 = Struct_1(func_5(func_4(~reverseBits(vec3<u32>(45119u, u_input.b, u_input.b)), Struct_2(Struct_1(vec4<i32>(-1i, var_0.a.x, var_0.a.x, -38722i)), func_2(arg_0, var_0.a, 26225u, 0i), func_2(vec2<bool>(true, arg_0.x), vec4<i32>(2147483647i, -36665i, -5608i, 0i), 11849u, u_input.c), Struct_1(vec4<i32>(1i, var_0.a.x, u_input.d.x, var_0.a.x)), _wgslsmith_f_op_f32(-620f * -182f))), 13910i, ~vec3<u32>(0u, u_input.b, u_input.b) ^ (_wgslsmith_div_vec3_u32(vec3<u32>(12644u, 46519u, 1u), vec3<u32>(u_input.b, u_input.b, u_input.b)) ^ ~vec3<u32>(1217u, u_input.b, u_input.b))));
    var_0 = Struct_1(var_0.a);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1795f, 121f)));
    var_0 = Struct_1(var_0.a << (vec4<u32>(12393u, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.b), vec2<u32>(7931u, u_input.b)) & u_input.b, 1u, abs(abs(0u))) % vec4<u32>(32u)));
    return _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(545f * _wgslsmith_f_op_f32(min(722f, 1338f))), _wgslsmith_f_op_f32(floor(-742f)), -307f, 970f), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1257f, -1014f, 918f, -1104f))))))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(abs(-vec4<i32>(u_input.a.x, u_input.a.x, 0i, 2354i) | vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 0i, u_input.a.x, u_input.a.x), vec4<i32>(u_input.c, 0i, u_input.c, -18745i)), _wgslsmith_mult_i32(u_input.c, 1216i), u_input.d.x, u_input.d.x | -2147483647i)));
    var_0 = Struct_1(firstLeadingBit(var_0.a));
    var_0 = Struct_1(var_0.a);
    let var_1 = u_input.b;
    let var_2 = _wgslsmith_f_op_vec4_f32(func_1(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), select(select(vec2<bool>(true, false), vec2<bool>(true, false), false), vec2<bool>(true, true), vec2<bool>(false, false))), any(vec4<bool>(false, true, true, true)))));
    let var_3 = ~(~u_input.c);
    let x = u_input.a;
    s_output = StorageBuffer(abs(~max(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b, 16582u, var_1), vec3<u32>(var_1, 14124u, u_input.b)), vec3<u32>(u_input.b, 4294967295u, 4294967295u))), var_1, _wgslsmith_add_vec3_u32(reverseBits(~vec3<u32>(29977u, 35737u, u_input.b)) ^ ~countOneBits(vec3<u32>(3073u, var_1, 4294967295u)), ~select(~vec3<u32>(var_1, 0u, 0u), vec3<u32>(var_1, var_1, 1u), true)), vec3<f32>(-1174f, _wgslsmith_f_op_f32(round(var_2.x)), 179f));
}

