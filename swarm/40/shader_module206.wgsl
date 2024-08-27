struct Struct_1 {
    a: u32,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 20> = array<i32, 20>(-16601i, -1i, -15504i, 2147483647i, 21609i, 29501i, i32(-2147483648), -33456i, 64590i, 55217i, 1i, 34230i, 1i, 1i, i32(-2147483648), -1i, 0i, -1i, 0i, -5339i);

var<private> global1: Struct_1;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: u32) -> vec4<i32> {
    return vec4<i32>(-31464i, _wgslsmith_dot_vec3_i32(u_input.b ^ vec3<i32>(-9172i, -1i, 0i), u_input.b) & u_input.b.x, u_input.a, _wgslsmith_dot_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(u_input.c, 20u)], -34705i), vec2<i32>(global0[_wgslsmith_index_u32(1u, 20u)], global0[_wgslsmith_index_u32(arg_2.a, 20u)])) & _wgslsmith_clamp_i32(-2147483647i, _wgslsmith_dot_vec3_i32(u_input.b, vec3<i32>(71738i, u_input.a, 1i)), -3289i)) << (vec4<u32>(~arg_2.a, 68359u, firstTrailingBit((63827u ^ arg_2.a) & 4294967295u), firstLeadingBit(1u)) % vec4<u32>(32u));
}

fn func_2(arg_0: bool, arg_1: Struct_1) -> vec3<f32> {
    global1 = arg_1;
    var var_0 = Struct_1(select(0u, 4294967295u, arg_1.b), !any(vec2<bool>(true, true)));
    let var_1 = func_3(_wgslsmith_sub_vec3_u32(~(vec3<u32>(u_input.c, 54989u, global1.a) & vec3<u32>(var_0.a, arg_1.a, global1.a)) << (~firstLeadingBit(vec3<u32>(arg_1.a, 1u, 1u)) % vec3<u32>(32u)), ~(~(~vec3<u32>(global1.a, 3867u, 0u)))), Struct_1(u_input.c, true), Struct_1(0u, ~(~u_input.c) >= 1u), var_0.a);
    global1 = arg_1;
    global1 = Struct_1(_wgslsmith_mod_u32(var_0.a, abs(4294967295u)), arg_1.b);
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(704f, 1000f, 694f) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(255f, 101f, -1737f), vec3<f32>(801f, 1790f, 662f), false)))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1754f, 1450f, -957f) - vec3<f32>(916f, -1000f, -735f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(2459f, -864f, -1217f) * vec3<f32>(-1260f, 995f, 1313f)))))))) + vec3<f32>(105f, 617f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-375f - 775f), _wgslsmith_f_op_f32(-377f - 1007f))) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1315f * 1739f))))));
}

fn func_1() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-1792f + 636f), _wgslsmith_div_f32(-630f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1543f + 195f))), 105f) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_2(all(vec3<bool>(global1.b, true, false)), Struct_1(0u, global1.b)))));
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, var_0.x, 1317f) + vec3<f32>(-578f, 274f, var_0.x))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_0.x, var_0.x, 134f))))) * vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -270f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.x), 162f, u_input.a >= -665i)))) + vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-470f + -1185f)))), _wgslsmith_f_op_vec3_f32(func_2(_wgslsmith_f_op_f32(var_0.x * 638f) >= _wgslsmith_f_op_f32(-var_0.x), Struct_1(u_input.c, global1.b))).x, var_0.x));
    var var_2 = ~reverseBits(firstTrailingBit(vec4<i32>(1i, global0[_wgslsmith_index_u32(32489u, 20u)], 541i, 13874i) | vec4<i32>(global0[_wgslsmith_index_u32(u_input.c, 20u)], -5739i, u_input.a, u_input.b.x)));
    let var_3 = Struct_1(~1u, any(select(!vec4<bool>(false, true, global1.b, global1.b), select(vec4<bool>(global1.b, true, true, true), vec4<bool>(global1.b, false, global1.b, false), !vec4<bool>(true, global1.b, global1.b, true)), !any(vec2<bool>(global1.b, false)))));
    var var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_1.x, var_0.x, var_1.x, var_0.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, 967f, -584f, -717f) + vec4<f32>(851f, 546f, var_1.x, var_0.x)))) * _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, -1307f, -1316f, -1080f) * vec4<f32>(var_0.x, -727f, 747f, 353f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, -698f, var_0.x, 639f) - vec4<f32>(var_1.x, var_1.x, var_1.x, var_1.x))))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-116f, -706f, var_0.x, var_1.x), vec4<f32>(var_0.x, var_0.x, 1258f, var_0.x))))) - vec4<f32>(var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x - var_0.x) + _wgslsmith_f_op_f32(-var_1.x)), 1151f, var_0.x)));
    return var_3;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = ~_wgslsmith_mult_vec4_u32(~vec4<u32>(~95141u, ~var_0.a, 1u, func_1().a), reverseBits(_wgslsmith_div_vec4_u32(vec4<u32>(0u, 0u, u_input.c, var_0.a), vec4<u32>(global1.a, u_input.c, 1u, var_0.a))) ^ ~(~vec4<u32>(1u, u_input.c, global1.a, global1.a)));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(109f, -1271f, 1642f, 318f), vec4<f32>(-864f, 382f, -1000f, -379f)))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1767f, -138f, 1365f, -525f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-448f, -408f, 444f, -621f)))))));
    var var_3 = select(var_0.a, firstLeadingBit(_wgslsmith_mod_u32(~(u_input.c >> (var_0.a % 32u)), ~10437u)), true);
    var var_4 = max(_wgslsmith_dot_vec4_i32(~vec4<i32>(global0[_wgslsmith_index_u32(abs(1u), 20u)], -u_input.a, u_input.d, 0i), vec4<i32>(global0[_wgslsmith_index_u32(1u, 20u)], u_input.b.x, ~(-27018i), -50251i) >> (select(max(vec4<u32>(94107u, 4294967295u, 1u, 59813u), vec4<u32>(4294967295u, global1.a, global1.a, 4294967295u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(global1.a, var_1.x, 4294967295u, var_0.a), vec4<u32>(1u, 68556u, 44292u, global1.a), vec4<u32>(var_1.x, global1.a, 4294967295u, 11090u)), select(vec4<bool>(true, true, false, true), vec4<bool>(false, var_0.b, true, true), var_0.b)) % vec4<u32>(32u))), -2147483647i);
    var_1 = vec4<u32>(var_1.x, _wgslsmith_sub_u32(select(global1.a, select(var_0.a, var_1.x, true), true) >> (_wgslsmith_clamp_u32(~var_0.a, ~4294967295u, 1u) % 32u), min(u_input.c, ~_wgslsmith_div_u32(global1.a, u_input.c))), select(_wgslsmith_dot_vec4_u32(~_wgslsmith_add_vec4_u32(vec4<u32>(global1.a, 4294967295u, global1.a, var_1.x), vec4<u32>(global1.a, var_0.a, global1.a, 0u)), vec4<u32>(var_1.x, ~var_0.a, u_input.c >> (var_0.a % 32u), firstLeadingBit(u_input.c))), ~1u, all(!(!vec3<bool>(true, true, var_0.b)))), 1u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(var_2.x)), _wgslsmith_f_op_f32(-var_2.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(2604f + var_2.x), _wgslsmith_f_op_f32(-var_2.x)), -1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) + _wgslsmith_f_op_f32(-var_2.x))))), var_1.xw << (_wgslsmith_add_vec2_u32(var_1.wz, var_1.yy) % vec2<u32>(32u)));
}

