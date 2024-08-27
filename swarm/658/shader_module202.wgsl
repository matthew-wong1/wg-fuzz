struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec3<u32>, arg_1: f32) -> vec2<u32> {
    return _wgslsmith_sub_vec2_u32(~vec2<u32>(1u, firstTrailingBit(u_input.d << (4294967295u % 32u))), arg_0.zz);
}

fn func_2(arg_0: Struct_1, arg_1: f32, arg_2: u32) -> vec3<bool> {
    var var_0 = Struct_1(arg_0.a);
    let var_1 = func_3(vec3<u32>(~(~arg_2) ^ arg_2, 18672u, _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, u_input.d, arg_2, 105334u), vec4<u32>(u_input.d, u_input.d, arg_2, u_input.d)), reverseBits(~arg_2))), arg_1);
    var var_2 = select(!vec4<bool>(true, true, _wgslsmith_f_op_f32(step(arg_1, arg_1)) > 1392f, any(vec4<bool>(arg_0.a, false, false, var_0.a))), !vec4<bool>(false, any(vec4<bool>(false, false, arg_0.a, arg_0.a)) && var_0.a, true, all(vec4<bool>(true, var_0.a, true, true)) & true), select(select(vec4<bool>(arg_0.a, -2147483647i > u_input.c.x, true, var_0.a), vec4<bool>(true, var_0.a, all(vec4<bool>(false, true, arg_0.a, false)), false & arg_0.a), false), select(vec4<bool>(var_0.a && false, select(var_0.a, true, var_0.a), false, arg_0.a), !select(vec4<bool>(false, true, var_0.a, var_0.a), vec4<bool>(arg_0.a, arg_0.a, false, false), vec4<bool>(true, true, arg_0.a, false)), abs(u_input.d) == _wgslsmith_dot_vec2_u32(vec2<u32>(139156u, var_1.x), var_1)), select(!vec4<bool>(false, var_0.a, false, false), vec4<bool>(var_0.a, !var_0.a, any(vec2<bool>(var_0.a, arg_0.a)), !arg_0.a), select(vec4<bool>(arg_0.a, false, true, false), vec4<bool>(true, arg_0.a, false, true), 80519u >= u_input.d))));
    var var_3 = vec3<u32>(arg_2, 4294967295u, var_1.x);
    var_0 = Struct_1(arg_0.a);
    return !vec3<bool>(!all(vec4<bool>(var_2.x, var_0.a, var_0.a, true)), all(var_2.zx), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1 * arg_1) * _wgslsmith_f_op_f32(-874f - -3013f)) <= _wgslsmith_f_op_f32(arg_1 + _wgslsmith_f_op_f32(-arg_1)));
}

fn func_1() -> u32 {
    var var_0 = u_input.d;
    var var_1 = !select(!select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), true)), vec3<bool>(true, false, any(vec4<bool>(true, false, false, false))), !select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, true)), func_2(Struct_1(true), 727f, u_input.d), vec3<bool>(true, true, true)));
    let var_2 = 163370u;
    var var_3 = _wgslsmith_div_vec3_i32(abs((vec3<i32>(u_input.e, u_input.a, 1i) >> (vec3<u32>(4294967295u, u_input.d, u_input.d) % vec3<u32>(32u))) >> (vec3<u32>(var_2, 35905u, 4294967295u) % vec3<u32>(32u))), -(reverseBits(vec3<i32>(16754i, -24865i, u_input.b)) >> (~vec3<u32>(20529u, u_input.d, 30489u) % vec3<u32>(32u)))) | ~_wgslsmith_div_vec3_i32(vec3<i32>(1i, 41292i, u_input.e | u_input.c.x), select(_wgslsmith_mod_vec3_i32(vec3<i32>(-2147483647i, 1i, u_input.b), vec3<i32>(2147483647i, u_input.b, -35203i)), abs(vec3<i32>(u_input.c.x, u_input.a, -10905i)), !vec3<bool>(true, var_1.x, var_1.x)));
    var var_4 = !(!select(!select(vec3<bool>(true, true, var_1.x), vec3<bool>(true, true, false), vec3<bool>(false, false, var_1.x)), func_2(Struct_1(var_1.x), -265f, var_2 | 4294967295u), vec3<bool>(false, true, all(vec4<bool>(var_1.x, var_1.x, true, true)))));
    return min(firstLeadingBit(~1u), _wgslsmith_clamp_u32(u_input.d, 0u << (~(~var_2) % 32u), u_input.d));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~((vec3<u32>(u_input.d, u_input.d, 4294967295u) & _wgslsmith_mod_vec3_u32(vec3<u32>(37416u, 1u, u_input.d), vec3<u32>(0u, 4294967295u, 0u))) << (_wgslsmith_add_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.d, u_input.d, 4294967295u), vec3<u32>(u_input.d, u_input.d, u_input.d)), vec3<u32>(u_input.d, u_input.d, 18055u) >> (vec3<u32>(46830u, u_input.d, 23098u) % vec3<u32>(32u))) % vec3<u32>(32u))) ^ vec3<u32>(~_wgslsmith_add_u32(max(u_input.d, u_input.d), u_input.d), u_input.d, ~u_input.d);
    var var_1 = func_1();
    var_1 = firstLeadingBit(1u);
    var var_2 = vec3<bool>(true, !(!(true || any(vec4<bool>(false, false, false, false)))), (_wgslsmith_add_i32(0i, ~45651i) | _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(17039i, -2147483647i, u_input.c.x, 0i), vec4<i32>(u_input.e, u_input.e, -9887i, 0i)), -u_input.e)) > ~(_wgslsmith_add_i32(-1i, u_input.a) >> (var_0.x % 32u)));
    var var_3 = firstLeadingBit(abs(var_0.zz | vec2<u32>(~u_input.d, _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, var_0.x, 29650u, var_0.x), vec4<u32>(175u, u_input.d, var_0.x, 27930u)))));
    var_1 = reverseBits(min(~u_input.d << (93885u % 32u), abs(min(4294967295u << (u_input.d % 32u), 1u))));
    let var_4 = Struct_1(var_2.x);
    var var_5 = min(vec4<u32>(4294967295u, _wgslsmith_mult_u32(_wgslsmith_div_u32(reverseBits(var_3.x), ~1u), ~abs(var_3.x)), ~reverseBits(var_3.x), u_input.d), _wgslsmith_mod_vec4_u32((_wgslsmith_add_vec4_u32(vec4<u32>(var_3.x, u_input.d, u_input.d, 75452u), vec4<u32>(var_0.x, 90753u, var_3.x, 27961u)) ^ min(vec4<u32>(40547u, 18068u, var_3.x, var_0.x), vec4<u32>(u_input.d, u_input.d, u_input.d, 20001u))) | select(max(vec4<u32>(var_0.x, u_input.d, 0u, var_0.x), vec4<u32>(var_3.x, 0u, var_3.x, var_3.x)), select(vec4<u32>(u_input.d, var_0.x, 11115u, 48004u), vec4<u32>(26441u, 94648u, 17797u, var_0.x), vec4<bool>(true, var_4.a, true, var_4.a)), var_2.x), abs(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.d, var_3.x, 0u, var_3.x), vec4<u32>(var_0.x, u_input.d, u_input.d, var_0.x)) >> (~vec4<u32>(var_3.x, 16737u, var_3.x, 84019u) % vec4<u32>(32u)))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c, abs(var_3.x), vec4<u32>(func_3(vec3<u32>(var_5.x | u_input.d, 17135u, 1u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1074f))).x, reverseBits(102381u), _wgslsmith_dot_vec2_u32(~(~var_5.zw), ~var_0.xy), var_5.x));
}

