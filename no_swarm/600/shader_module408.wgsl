struct Struct_1 {
    a: u32,
    b: u32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec3<f32>,
    d: vec4<bool>,
    e: vec3<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<bool>,
    c: i32,
}

struct Struct_4 {
    a: bool,
    b: Struct_2,
    c: Struct_2,
}

struct Struct_5 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: f32,
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

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool, arg_1: Struct_3) -> u32 {
    var var_0 = _wgslsmith_clamp_vec4_i32(vec4<i32>(-5076i, 15720i, u_input.a.x, _wgslsmith_sub_i32(-1i & u_input.a.x, ~(-1i))), ~u_input.a, ~vec4<i32>(-1349i, u_input.a.x & -23627i, 1i, min(u_input.a.x, u_input.a.x))) & select((-vec4<i32>(u_input.a.x, arg_1.c, u_input.a.x, u_input.a.x) | select(vec4<i32>(21469i, u_input.a.x, -5582i, 2147483647i), u_input.a, true)) << (firstLeadingBit(vec4<u32>(20100u, arg_1.a.b, 9822u, u_input.b.x)) % vec4<u32>(32u)), u_input.a >> (min(countOneBits(vec4<u32>(arg_1.a.b, u_input.b.x, u_input.b.x, 4294967295u)), vec4<u32>(arg_1.a.b, 1u, 1u, 4294967295u) | vec4<u32>(21759u, 0u, 1u, 8110u)) % vec4<u32>(32u)), !select(!vec4<bool>(false, arg_1.b.x, true, arg_1.b.x), !vec4<bool>(false, true, arg_0, false), true));
    var var_1 = abs(vec3<i32>(-firstTrailingBit(var_0.x), _wgslsmith_sub_i32(-arg_1.c, 1i), _wgslsmith_sub_i32(_wgslsmith_clamp_i32(-1i, -1i, arg_1.c), _wgslsmith_sub_i32(arg_1.c, u_input.a.x))) >> (_wgslsmith_add_vec3_u32(u_input.b.ywy, vec3<u32>(select(u_input.b.x, arg_1.a.a, true), ~u_input.b.x, abs(14041u))) % vec3<u32>(32u)));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-386f, _wgslsmith_div_f32(-1484f, -119f), -1000f, _wgslsmith_f_op_f32(f32(-1f) * -694f))))));
    let var_3 = Struct_3(arg_1.a, arg_1.b, _wgslsmith_div_i32(var_0.x, ~_wgslsmith_dot_vec4_i32(u_input.a, u_input.a) & ~(-18539i)));
    var var_4 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(-1573f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -515f), var_2.x)), var_2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + var_2.x) - var_2.x)) + var_2.yzy);
    return arg_1.a.a | firstLeadingBit(abs(u_input.b.x) ^ firstLeadingBit(_wgslsmith_add_u32(u_input.b.x, 4570u)));
}

fn func_2(arg_0: f32, arg_1: u32, arg_2: Struct_5) -> bool {
    let var_0 = vec4<u32>(~4294967295u, _wgslsmith_mult_u32(countOneBits(~_wgslsmith_dot_vec3_u32(u_input.b.yzw, u_input.b.yzz)), ~143311u), _wgslsmith_mod_u32(~func_3(false, arg_2.a) << (_wgslsmith_div_u32(arg_1, max(arg_2.a.a.b, 14778u)) % 32u), select(0u, arg_2.a.a.b | 33424u, all(vec4<bool>(arg_2.a.b.x, arg_2.a.b.x, arg_2.a.b.x, arg_2.a.b.x)))), 18302u);
    return false;
}

fn func_1(arg_0: i32, arg_1: vec3<bool>, arg_2: u32) -> Struct_3 {
    let var_0 = all(select(vec4<bool>(true, false, (u_input.b.x < u_input.b.x) || (0u != arg_2), !func_2(1199f, 24541u, Struct_5(Struct_3(Struct_1(u_input.b.x, arg_2), arg_1.xz, u_input.a.x)))), vec4<bool>(arg_1.x, true, arg_1.x == true, all(!vec4<bool>(true, false, arg_1.x, arg_1.x))), true));
    var var_1 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(802f, -1000f), vec2<f32>(1372f, 150f))))) * vec2<f32>(711f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -2067f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(1167f, 737f)))))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-293f, -451f)))));
    return Struct_3(Struct_1(_wgslsmith_mult_u32(~u_input.b.x, 84859u), ~_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(u_input.b.zzz, vec3<u32>(4294967295u, u_input.b.x, u_input.b.x)), 16233u)), !(!arg_1.xx), u_input.a.x);
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2, arg_2: u32) -> f32 {
    let var_0 = Struct_5(Struct_3(Struct_1(~0u, firstTrailingBit(firstTrailingBit(arg_0.a.a))), select(arg_1.d.wz, vec2<bool>(arg_1.d.x, true), arg_0.b.x || arg_0.b.x), _wgslsmith_add_i32(_wgslsmith_add_i32(1i, _wgslsmith_clamp_i32(u_input.a.x, -15860i, 11131i)), min(_wgslsmith_dot_vec3_i32(u_input.a.yzx, vec3<i32>(-2147483647i, arg_0.c, u_input.a.x)), _wgslsmith_mult_i32(arg_0.c, arg_1.a)))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a;
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(max(-1582f, 1014f)), _wgslsmith_f_op_f32(min(-1102f, -576f)), -330f) - vec3<f32>(-1510f, -227f, _wgslsmith_f_op_f32(max(1000f, -1556f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 1000f, -110f))))) + vec3<f32>(723f, _wgslsmith_f_op_f32(floor(1f)), _wgslsmith_f_op_f32(func_4(func_1(u_input.a.x, vec3<bool>(true, true, true), abs(u_input.b.x)), Struct_2(1i, Struct_1(1u, 1u), vec3<f32>(-247f, 653f, 1329f), vec4<bool>(true, true, true, true), vec3<u32>(18194u, u_input.b.x, u_input.b.x) >> (vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x) % vec3<u32>(32u))), u_input.b.x))));
    let var_2 = 1000f;
    let var_3 = 16691u;
    let var_4 = func_1(-1i, !select(!select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), true), vec3<bool>(true, true, true), func_2(var_1.x, var_3, Struct_5(Struct_3(Struct_1(0u, 0u), vec2<bool>(false, true), 63835i))) && select(true, true, true)), var_3).a.a;
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<i32>(13876i, -38605i, 12524i, _wgslsmith_sub_i32(-1198i, 0i)), _wgslsmith_mult_i32(var_0.x, -_wgslsmith_clamp_i32(-45279i, countOneBits(1i), firstLeadingBit(u_input.a.x))), var_2);
}

