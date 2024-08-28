struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: bool,
    b: i32,
    c: Struct_1,
    d: Struct_1,
    e: vec4<bool>,
}

struct Struct_3 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: bool, arg_1: Struct_2, arg_2: vec3<bool>, arg_3: vec3<i32>) -> u32 {
    let var_0 = u_input.a;
    let var_1 = reverseBits(max(vec2<u32>(0u, var_0 >> (~14995u % 32u)), countOneBits(_wgslsmith_sub_vec2_u32(vec2<u32>(33012u, var_0), vec2<u32>(u_input.a, 1u) << (vec2<u32>(4294967295u, var_0) % vec2<u32>(32u))))));
    let var_2 = 4294967295u;
    let var_3 = Struct_1(_wgslsmith_f_op_f32(-arg_1.d.a));
    let var_4 = Struct_2(all(select(!(!arg_1.e), !(!vec4<bool>(arg_2.x, false, arg_1.e.x, arg_1.e.x)), !arg_0)), abs(_wgslsmith_clamp_i32(arg_1.b, 49803i, _wgslsmith_sub_i32(_wgslsmith_div_i32(arg_1.b, arg_1.b), ~(-2147483647i)))), var_3, Struct_1(arg_1.c.a), vec4<bool>(350f != _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(2053f, var_3.a)))), arg_0, arg_2.x, any(!vec2<bool>(arg_2.x, true))));
    return 0u;
}

fn func_2(arg_0: Struct_3) -> i32 {
    var var_0 = _wgslsmith_add_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(~_wgslsmith_mult_u32(38776u, u_input.a), func_3(any(vec2<bool>(true, false)), Struct_2(true, arg_0.a, Struct_1(-230f), Struct_1(-394f), vec4<bool>(false, false, true, false)), vec3<bool>(true, false, true), _wgslsmith_div_vec3_i32(vec3<i32>(1491i, arg_0.a, arg_0.a), vec3<i32>(13649i, 1i, 11542i))), 79921u), _wgslsmith_clamp_vec3_u32(~(vec3<u32>(u_input.a, 4294967295u, 0u) & vec3<u32>(6201u, u_input.a, 0u)), vec3<u32>(u_input.a, 57123u, ~u_input.a), vec3<u32>(~4294967295u, 1u, 1u))), _wgslsmith_div_vec3_u32(select(~vec3<u32>(73227u, u_input.a, 4294967295u), vec3<u32>(countOneBits(u_input.a), 47543u ^ u_input.a, _wgslsmith_mod_u32(u_input.a, u_input.a)), true), (select(vec3<u32>(5803u, 4294967295u, 62244u), vec3<u32>(18739u, u_input.a, u_input.a), true) >> (~vec3<u32>(73266u, 1u, 4294967295u) % vec3<u32>(32u))) | (abs(vec3<u32>(41222u, u_input.a, 39722u)) << (abs(vec3<u32>(u_input.a, u_input.a, 35478u)) % vec3<u32>(32u)))));
    var_0 = (_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, var_0.x, abs(var_0.x)), vec3<u32>(30710u, var_0.x | 4294967295u, 58269u << (u_input.a % 32u))) | vec3<u32>(select(_wgslsmith_add_u32(43416u, 28151u), 0u, true), u_input.a, max(_wgslsmith_add_u32(25269u, var_0.x), ~u_input.a))) << ((reverseBits(reverseBits(firstTrailingBit(vec3<u32>(var_0.x, 72265u, var_0.x)))) & ~(~(~vec3<u32>(4294967295u, var_0.x, 0u)))) % vec3<u32>(32u));
    var var_1 = u_input.a;
    let var_2 = _wgslsmith_dot_vec3_i32(vec3<i32>(~max(-arg_0.a, 0i), arg_0.a ^ arg_0.a, arg_0.a), -max(abs(vec3<i32>(-2147483647i, arg_0.a, 2147483647i)), reverseBits(vec3<i32>(arg_0.a, arg_0.a, -17514i))) ^ (vec3<i32>(~3258i, arg_0.a & arg_0.a, arg_0.a) << (reverseBits(vec3<u32>(u_input.a, 21659u, u_input.a)) % vec3<u32>(32u))));
    var var_3 = select(vec2<i32>(1i, _wgslsmith_div_i32(var_2, var_2) | abs(var_2)), firstTrailingBit(vec2<i32>(_wgslsmith_mod_i32(arg_0.a, 23888i), arg_0.a)), true == all(select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), false))) << (vec2<u32>(1u, 39217u) % vec2<u32>(32u));
    return var_3.x;
}

fn func_1(arg_0: bool, arg_1: Struct_3, arg_2: f32, arg_3: vec3<u32>) -> i32 {
    let var_0 = -2147483647i;
    let var_1 = u_input.a;
    var var_2 = arg_1.a;
    var var_3 = var_1 >= ~u_input.a;
    let var_4 = vec3<bool>(true, arg_0, true);
    return _wgslsmith_add_i32(func_2(Struct_3(~abs(1i))), _wgslsmith_sub_i32(_wgslsmith_mod_i32(~(-14816i), abs(min(2147483647i, var_0))), abs(2147483647i << (arg_3.x % 32u))));
}

fn func_4(arg_0: Struct_3, arg_1: vec4<i32>) -> StorageBuffer {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(round(-197f)));
    let var_1 = arg_0;
    var_0 = Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(var_0.a)))));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a - var_0.a) - -321f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1745f))));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a));
    return StorageBuffer(vec3<u32>(~((u_input.a >> (1u % 32u)) ^ reverseBits(u_input.a)), reverseBits(~1u), u_input.a), ~vec4<i32>(arg_1.x, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.x, -20582i, var_1.a, 16834i), vec4<i32>(-3427i, 0i, arg_0.a, -2147483647i)) >> (54025u % 32u), _wgslsmith_sub_i32(arg_0.a | arg_0.a, arg_0.a), -2147483647i ^ (var_1.a >> (u_input.a % 32u))), abs(arg_1.yz));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4(Struct_3(16892i), vec4<i32>(func_1(true, Struct_3(101i), 374f, _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, u_input.a, 78097u), vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(u_input.a, 0u, 1u))) & ~(i32(-1i) * -1i), -8449i, _wgslsmith_dot_vec3_i32(-firstLeadingBit(vec3<i32>(1i, -23627i, -1i)), _wgslsmith_add_vec3_i32(vec3<i32>(1i, 1i, 1i), vec3<i32>(1i, 1i, 1i))), ~1i));
}

