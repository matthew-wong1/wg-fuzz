struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: i32,
    b: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<f32>,
    c: u32,
    d: vec4<i32>,
    e: vec3<u32>,
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

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2(arg_0: Struct_2, arg_1: vec4<u32>) -> vec4<bool> {
    var var_0 = ~vec2<u32>(arg_0.b, 1u);
    var var_1 = vec2<f32>(1f, -1510f);
    var var_2 = vec2<bool>(true, true);
    var_0 = vec2<u32>(var_0.x, arg_0.b & 4294967295u);
    let var_3 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(2084f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(1251f)), _wgslsmith_f_op_f32(2126f * var_1.x))), _wgslsmith_f_op_f32(sign(var_1.x)))))));
    return vec4<bool>(all(!(!(!vec4<bool>(var_2.x, false, var_2.x, var_2.x)))), !var_2.x, var_2.x, any(!select(!vec2<bool>(false, var_2.x), !vec2<bool>(true, var_2.x), select(vec2<bool>(true, var_2.x), vec2<bool>(var_2.x, true), false))));
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: vec4<bool>, arg_3: vec3<f32>) -> Struct_1 {
    let var_0 = 1u;
    var var_1 = 861f;
    var var_2 = Struct_2((min(1i, arg_1.a) & 1i) & arg_1.a, _wgslsmith_clamp_u32(u_input.b, u_input.c, 1u));
    let var_3 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_3.x * _wgslsmith_f_op_f32(f32(-1f) * -698f)), -1000f));
    let var_4 = ~select(abs(vec4<u32>(var_2.b, 52037u, 1u, var_2.b) | vec4<u32>(6827u, 1u, 1u, 57706u)), _wgslsmith_mod_vec4_u32(vec4<u32>(36794u, var_2.b, var_2.b, u_input.b), vec4<u32>(var_2.b, 32643u, 4294967295u, 1u)) << ((vec4<u32>(1u, var_2.b, u_input.b, 73069u) | vec4<u32>(var_0, 4294967295u, 0u, 1u)) % vec4<u32>(32u)), !(!vec4<bool>(arg_2.x, arg_2.x, true, false))) >> (reverseBits(~vec4<u32>(1u, u_input.c, ~65921u, abs(116603u))) % vec4<u32>(32u));
    return arg_1;
}

fn func_4(arg_0: Struct_1, arg_1: vec2<bool>) -> vec2<u32> {
    var var_0 = Struct_2(_wgslsmith_div_i32(_wgslsmith_mod_i32(_wgslsmith_add_i32(0i, 23922i | arg_0.a), i32(-1i) * -73563i), ~min(arg_0.a, ~(-3917i))), _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b, 57371u, u_input.c, u_input.b), max(vec4<u32>(1u, 0u, u_input.c, 0u), vec4<u32>(u_input.b, 31182u, 21740u, u_input.c))), firstLeadingBit(~vec4<u32>(u_input.c, 1u, 5654u, 0u)), _wgslsmith_mod_vec4_u32(vec4<u32>(0u, u_input.b, u_input.b, 1u) ^ vec4<u32>(75536u, u_input.b, 26042u, 40148u), vec4<u32>(u_input.c, 4294967295u, 75549u, u_input.c))), firstLeadingBit(vec4<u32>(u_input.c, u_input.b, 4294967295u, u_input.c) << ((vec4<u32>(4294967295u, u_input.c, u_input.b, u_input.b) ^ vec4<u32>(u_input.c, u_input.c, u_input.b, 9485u)) % vec4<u32>(32u)))));
    var var_1 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-446f * 290f)), _wgslsmith_f_op_f32(-1f), -509f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1282f, 1371f)), _wgslsmith_f_op_f32(floor(1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(220f + -996f)))));
    var_1 = _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-363f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(613f + -1443f)))), var_1.x)));
    var var_2 = var_1.zy;
    let var_3 = 1410u;
    return vec2<u32>(~4294967295u, select(~(~(u_input.c << (var_0.b % 32u))), var_3, true));
}

fn func_1(arg_0: f32, arg_1: Struct_1) -> f32 {
    var var_0 = _wgslsmith_mult_vec2_u32(reverseBits(~(~(~vec2<u32>(14074u, 4294967295u)))), ~func_4(func_3(~36599i, arg_1, func_2(Struct_2(arg_1.a, 4294967295u), vec4<u32>(u_input.c, 0u, u_input.b, 0u)), vec3<f32>(arg_0, 1704f, 1569f)), vec2<bool>(false, true)));
    var var_1 = 24712u;
    let var_2 = !(!all(vec3<bool>(true, true, true)));
    var_1 = firstTrailingBit(~1u) | ((abs(firstTrailingBit(var_0.x)) & var_0.x) & u_input.b);
    let var_3 = 507f;
    return 2373f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -1362f;
    var var_1 = u_input.a.x;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(1f, Struct_1(u_input.a.x))) + 733f)));
    let var_3 = Struct_1(min(_wgslsmith_sub_i32(~(~u_input.a.x), _wgslsmith_add_i32(min(-29018i, u_input.d), u_input.a.x)), 0i));
    var var_4 = 12172i;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(41564i << (~countOneBits(u_input.c) % 32u), var_3.a, -2147483647i, 2147483647i), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2)), var_0, _wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_f32(-var_0), func_3(-1i, var_3, vec4<bool>(true, false, true, true), vec3<f32>(var_0, var_0, var_0)))), 1f), ~u_input.c, vec4<i32>(-1i, -countOneBits(-76658i), ~(u_input.a.x | _wgslsmith_mult_i32(u_input.a.x, u_input.d)), reverseBits(-_wgslsmith_add_i32(u_input.a.x, var_3.a))), abs(vec3<u32>(_wgslsmith_add_u32(u_input.b, 0u), u_input.b, u_input.c)) >> (~(~firstLeadingBit(vec3<u32>(16932u, 4294967295u, 0u))) % vec3<u32>(32u)));
}

