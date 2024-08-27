struct Struct_1 {
    a: u32,
    b: vec2<i32>,
}

struct Struct_2 {
    a: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
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

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: i32, arg_1: Struct_2, arg_2: vec3<u32>) -> u32 {
    var var_0 = vec3<bool>(true, false, (arg_1.a | (~u_input.a.x >> (_wgslsmith_mod_u32(u_input.a.x, u_input.a.x) % 32u))) == 74563u);
    var var_1 = false;
    let var_2 = all(vec4<bool>(var_0.x, !var_0.x, any(vec2<bool>(true, true)), any(select(!vec4<bool>(var_0.x, var_0.x, true, false), !vec4<bool>(var_0.x, var_0.x, var_0.x, false), select(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(true, true, true, var_0.x), var_0.x)))));
    var_1 = !((_wgslsmith_f_op_f32(max(-193f, 1f)) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(194f)))) | (0u <= _wgslsmith_sub_u32(arg_2.x, arg_1.a)));
    var var_3 = -(~_wgslsmith_dot_vec3_i32(max(_wgslsmith_div_vec3_i32(vec3<i32>(arg_0, -15878i, arg_0), vec3<i32>(arg_0, arg_0, -13918i)), vec3<i32>(-7283i, arg_0, 0i)), abs(countOneBits(vec3<i32>(-2147483647i, -2147483647i, 1i)))));
    return u_input.a.x & ~(~_wgslsmith_mult_u32(arg_1.a, arg_1.a) ^ 4294967295u);
}

fn func_2(arg_0: Struct_1, arg_1: i32, arg_2: Struct_2, arg_3: vec4<u32>) -> Struct_1 {
    let var_0 = arg_2;
    var var_1 = abs(_wgslsmith_sub_vec3_u32(~_wgslsmith_add_vec3_u32(~vec3<u32>(86716u, 0u, u_input.a.x), ~arg_3.wzy), _wgslsmith_sub_vec3_u32(arg_3.yxy, _wgslsmith_clamp_vec3_u32(_wgslsmith_div_vec3_u32(arg_3.wyx, arg_3.wxw), vec3<u32>(u_input.a.x, u_input.a.x, arg_3.x), max(arg_3.xyy, vec3<u32>(arg_3.x, arg_2.a, 71390u))))));
    var_1 = max(abs(_wgslsmith_sub_vec3_u32(arg_3.zzw, arg_3.yzw >> (~arg_3.yxx % vec3<u32>(32u)))), vec3<u32>(_wgslsmith_mult_u32(24514u, var_1.x), _wgslsmith_div_u32(arg_3.x, _wgslsmith_clamp_u32(abs(1u), ~var_0.a, _wgslsmith_div_u32(61875u, var_1.x))), _wgslsmith_div_u32(3036u, func_3(23253i, var_0, firstTrailingBit(arg_3.zwz)))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-924f, _wgslsmith_f_op_f32(-475f + _wgslsmith_f_op_f32(floor(-147f))))));
    var_1 = firstLeadingBit(arg_3.zxx);
    return arg_0;
}

fn func_1() -> u32 {
    let var_0 = ~(~(_wgslsmith_dot_vec4_u32(min(vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, 1u), vec4<u32>(u_input.a.x, 1u, 39682u, u_input.a.x)), ~vec4<u32>(u_input.a.x, 1u, 4886u, 1u)) << (4294967295u % 32u)));
    var var_1 = Struct_2(~34956u);
    var var_2 = func_2(Struct_1(10259u, vec2<i32>(-1i) * -_wgslsmith_mod_vec2_i32(vec2<i32>(-1i, 7163i), vec2<i32>(-2147483647i, 1i))), _wgslsmith_dot_vec4_i32(vec4<i32>(-(i32(-1i) * -2147483647i), -1i, reverseBits(-1i) >> (countOneBits(var_1.a) % 32u), _wgslsmith_clamp_i32(40168i, countOneBits(1i), 1i)), vec4<i32>(~(i32(-1i) * -2147483647i), ~(-2147483647i), -1i, countOneBits(362i))), Struct_2(~4294967295u), vec4<u32>(var_0, min(_wgslsmith_mult_u32(13347u & u_input.a.x, 4294967295u), _wgslsmith_add_u32(u_input.a.x, ~4294967295u)), ~0u, abs(var_0)));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-463f)) * -1000f) - 1f) - 1f);
    var_1 = Struct_2(abs(~_wgslsmith_div_u32(~6010u, 0u >> (u_input.a.x % 32u))));
    return _wgslsmith_dot_vec2_u32(u_input.a, firstLeadingBit(~(~(u_input.a | vec2<u32>(var_2.a, var_1.a)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 724f;
    let var_1 = _wgslsmith_sub_vec4_u32(((vec4<u32>(u_input.a.x, 1u, u_input.a.x, 1u) >> (min(vec4<u32>(1u, u_input.a.x, u_input.a.x, 54896u), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)) % vec4<u32>(32u))) | _wgslsmith_div_vec4_u32(countOneBits(vec4<u32>(u_input.a.x, u_input.a.x, 13232u, 75235u)), vec4<u32>(u_input.a.x, 0u, u_input.a.x, u_input.a.x) & vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x))) >> ((~(~vec4<u32>(u_input.a.x, 4294967295u, 1u, 0u)) >> (_wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(10846u, 32321u, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)), select(vec4<u32>(0u, 95357u, 29513u, 29674u), vec4<u32>(u_input.a.x, 0u, 12235u, u_input.a.x), true)) % vec4<u32>(32u))) % vec4<u32>(32u)), vec4<u32>(max(_wgslsmith_dot_vec3_u32(vec3<u32>(57627u, u_input.a.x, 30116u), vec3<u32>(1u, u_input.a.x, u_input.a.x)), u_input.a.x), min(~u_input.a.x & 52300u, u_input.a.x), u_input.a.x, 1u & abs(~u_input.a.x)));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(var_0)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(126f, -579f))) + var_0);
    var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_0 + 1748f), var_0))));
    var var_3 = reverseBits(1i ^ _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 56332i), vec2<i32>(0i, 45053i)), ~36687i)) << (min(0u, _wgslsmith_clamp_u32(func_1(), 15249u, u_input.a.x)) % 32u);
    var_3 = i32(-1i) * -select(1i, min(abs(5546i), 1i), select(true, false, false) && all(vec2<bool>(true, false)));
    var_3 = firstTrailingBit(-select(0i, -7900i, select(any(vec3<bool>(true, true, true)), all(vec2<bool>(true, false)), true)));
    let var_4 = func_2(Struct_1(var_1.x, vec2<i32>(1i, 1i)), 53746i, Struct_2(func_2(Struct_1(101124u, vec2<i32>(2147483647i, -2147483647i)), 1i, Struct_2(abs(u_input.a.x)), ~var_1 >> (~var_1 % vec4<u32>(32u))).a), (var_1 | _wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(var_1, var_1), ~vec4<u32>(78971u, u_input.a.x, 76255u, 4294967295u))) ^ vec4<u32>(25972u, 35662u, ~u_input.a.x, ~(~4294967295u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec4_u32(var_1, select(vec4<u32>(countOneBits(var_4.a), _wgslsmith_dot_vec3_u32(vec3<u32>(62041u, u_input.a.x, u_input.a.x), vec3<u32>(19520u, 25801u, 23205u)), u_input.a.x, abs(u_input.a.x)), vec4<u32>(func_2(var_4, var_4.b.x, Struct_2(1u), var_1).a, ~4294967295u, 0u, var_1.x), true), ~vec4<u32>(var_4.a, 0u, 4294967295u, 41572u) ^ var_1), ~vec3<u32>(u_input.a.x, min(0u & u_input.a.x, ~u_input.a.x), select(4294967295u, select(4294967295u, var_4.a, false), any(vec3<bool>(false, false, false)))));
}

