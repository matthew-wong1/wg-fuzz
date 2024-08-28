struct Struct_1 {
    a: f32,
    b: bool,
    c: vec2<i32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec3<bool>,
    d: i32,
    e: f32,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec4<f32>,
}

struct Struct_4 {
    a: i32,
    b: f32,
    c: Struct_1,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
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

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_4) -> bool {
    var var_0 = arg_1.b;
    var_0 = 876f;
    var var_1 = Struct_2(arg_1.d.a.x, Struct_1(_wgslsmith_f_op_f32(-arg_1.b), arg_0.x, reverseBits(firstLeadingBit(vec2<i32>(u_input.a.x, 1i))) & -max(arg_1.c.c, vec2<i32>(-1i, arg_1.a))), select(!select(!vec3<bool>(arg_1.c.b, arg_1.c.b, arg_1.c.b), !vec3<bool>(arg_0.x, true, false), arg_0.x), vec3<bool>(!(arg_1.d.a.x <= 1u), all(!arg_0.xxx), true), -1000f <= _wgslsmith_f_op_f32(floor(arg_1.c.a))), arg_1.a, arg_1.d.b.x);
    var var_2 = vec2<bool>(!arg_0.x | arg_0.x, false);
    var var_3 = _wgslsmith_div_i32(~_wgslsmith_div_i32(31313i, _wgslsmith_clamp_i32(-2147483647i, firstLeadingBit(var_1.b.c.x), arg_1.a)), 2147483647i);
    return all(arg_0.xxw) & true;
}

fn func_2(arg_0: Struct_3, arg_1: bool, arg_2: Struct_1) -> u32 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1465f))), true, countOneBits(-(~vec2<i32>(-2147483647i, 0i))));
    var var_1 = Struct_3(abs(arg_0.a), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a, var_0.a, arg_2.a, 2484f))) + vec4<f32>(_wgslsmith_f_op_f32(ceil(-135f)), _wgslsmith_f_op_f32(arg_0.b.x - _wgslsmith_f_op_f32(round(var_0.a))), arg_2.a, -181f)));
    var var_2 = arg_2;
    let var_3 = Struct_4(reverseBits(var_0.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_1.b.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(var_0.a, var_0.a)), _wgslsmith_f_op_f32(180f * var_1.b.x)), func_3(vec4<bool>(false, var_2.b, true, true), Struct_4(2147483647i, arg_0.b.x, Struct_1(var_0.a, false, vec2<i32>(-18412i, 0i)), Struct_3(vec2<u32>(arg_0.a.x, var_1.a.x), vec4<f32>(-899f, arg_0.b.x, var_0.a, arg_0.b.x))))))), Struct_1(-1217f, arg_2.b, vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, var_0.c.x, u_input.a.x, var_2.c.x), vec4<i32>(arg_2.c.x, 39191i, u_input.a.x, var_0.c.x)) & abs(u_input.a.x), countOneBits(i32(-1i) * -8939i))), arg_0);
    var_1 = arg_0;
    return arg_0.a.x;
}

fn func_1(arg_0: Struct_1) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.a, arg_0.a) - vec2<f32>(-1088f, 1931f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-171f, arg_0.a))))));
    var var_1 = ~(vec3<u32>(~_wgslsmith_add_u32(4294967295u, 0u), select(~18542u, func_2(Struct_3(vec2<u32>(58333u, 1u), vec4<f32>(2805f, var_0.x, var_0.x, arg_0.a)), false, arg_0), arg_0.b), 4294967295u) | _wgslsmith_div_vec3_u32(~select(vec3<u32>(41350u, 4294967295u, 58479u), vec3<u32>(1u, 4092u, 0u), arg_0.b), vec3<u32>(1u, ~4294967295u, 0u << (0u % 32u))));
    let var_2 = true;
    var_1 = _wgslsmith_add_vec3_u32(max(~select(vec3<u32>(1u, 4294967295u, 57602u), vec3<u32>(var_1.x, var_1.x, 1u), vec3<bool>(arg_0.b, true, arg_0.b)), ~(~vec3<u32>(1u, var_1.x, var_1.x))) >> (~reverseBits(_wgslsmith_mult_vec3_u32(vec3<u32>(var_1.x, 0u, 0u), vec3<u32>(var_1.x, var_1.x, var_1.x))) % vec3<u32>(32u)), ~(vec3<u32>(4294967295u, var_1.x, 25062u) ^ vec3<u32>(var_1.x, 4294967295u, reverseBits(var_1.x))));
    let var_3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1094f))), var_0.x, arg_0.a, _wgslsmith_f_op_f32(-arg_0.a)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, 629f, -413f, var_0.x)))))));
    return Struct_2(~13534u, Struct_1(var_3.x, any(vec4<bool>(arg_0.b, arg_0.b, false, arg_0.b)) | var_2, vec2<i32>(arg_0.c.x, ~firstTrailingBit(-1i))), vec3<bool>(!(!var_2) | !(var_2 && arg_0.b), var_2 | (any(vec3<bool>(false, arg_0.b, var_2)) || false), !select(arg_0.b || var_2, true, var_2)), 58266i, var_3.x);
}

fn func_4(arg_0: Struct_2, arg_1: i32, arg_2: Struct_3) -> vec2<u32> {
    var var_0 = true | arg_0.b.b;
    var var_1 = func_1(func_1(arg_0.b).b);
    let var_2 = -firstLeadingBit(arg_1 ^ ~firstLeadingBit(-2147483647i));
    var var_3 = true;
    return arg_2.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -322f) - _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(354f - 306f), _wgslsmith_f_op_f32(sign(-232f)))))), _wgslsmith_f_op_f32(f32(-1f) * -100f));
    var var_1 = _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-802f * 1668f)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1036f, var_0))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0 + _wgslsmith_f_op_f32(floor(var_0))), var_0), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(var_0, var_0)), 634f)))));
    var_1 = vec4<f32>(-1583f, 365f, var_0, var_0);
    var var_2 = ~(~vec2<u32>(1u, 1u)) & ~_wgslsmith_div_vec2_u32(vec2<u32>(1u, 0u) & select(vec2<u32>(1u, 1u), vec2<u32>(4294967295u, 0u), vec2<bool>(false, false)), select(vec2<u32>(1u, 54883u), ~vec2<u32>(0u, 29359u), vec2<bool>(true, true)));
    var_2 = func_4(func_1(Struct_1(_wgslsmith_f_op_f32(-124f - -1430f), any(vec2<bool>(true, true)), u_input.a)), -1i, Struct_3(vec2<u32>(~1u, ~(~var_2.x)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(func_1(Struct_1(var_0, true, vec2<i32>(u_input.a.x, 19357i))).b.a, _wgslsmith_f_op_f32(1905f * var_1.x), _wgslsmith_f_op_f32(max(-1308f, -168f)), -150f)))));
    var var_3 = vec3<bool>(any(select(select(select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, false), true), vec4<bool>(true, true, true, true), true), vec4<bool>(func_3(vec4<bool>(true, false, false, true), Struct_4(-26750i, var_0, Struct_1(-157f, false, u_input.a), Struct_3(vec2<u32>(var_2.x, var_2.x), vec4<f32>(var_0, 1213f, var_1.x, var_0)))), true, var_2.x == var_2.x, true), vec4<bool>(true, true, true, true))), func_3(select(select(vec4<bool>(false, false, true, true), select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, true), true), vec4<bool>(true, true, true, true)), !select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, true)), vec4<bool>(var_0 == var_1.x, u_input.a.x != 52165i, true, true)), Struct_4(-_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, 2147483647i), u_input.a), -378f, Struct_1(_wgslsmith_div_f32(var_1.x, var_0), true, func_1(Struct_1(569f, true, u_input.a)).b.c), Struct_3(firstLeadingBit(vec2<u32>(var_2.x, var_2.x)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1624f, 765f, var_1.x, -582f)))))), true);
    var_3 = vec3<bool>(all(!vec2<bool>(any(vec2<bool>(false, var_3.x)), false)), var_3.x, reverseBits(~_wgslsmith_clamp_u32(1u, var_2.x, 0u)) < var_2.x);
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(vec4<u32>(1u >> (var_2.x % 32u), var_2.x >> (171u % 32u), 24305u, var_2.x) << (~firstLeadingBit(vec4<u32>(var_2.x, var_2.x, 1u, 4294967295u)) % vec4<u32>(32u))), max(vec2<u32>(~1u, ~select(0u, 0u, true)), ~min(vec2<u32>(var_2.x, var_2.x), vec2<u32>(44058u, var_2.x)) >> (max(~vec2<u32>(1u, var_2.x), vec2<u32>(var_2.x, var_2.x) >> (vec2<u32>(1u, 4294967295u) % vec2<u32>(32u))) % vec2<u32>(32u))));
}

