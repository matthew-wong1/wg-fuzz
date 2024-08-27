struct Struct_1 {
    a: bool,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> vec3<u32> {
    let var_0 = Struct_1(arg_1.a, !vec3<bool>(arg_1.b.x, !global0.a, !(!arg_1.a)));
    let var_1 = arg_0;
    var var_2 = select(u_input.b | _wgslsmith_dot_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(u_input.d.x, -49015i, u_input.b, u_input.b), ~vec4<i32>(u_input.d.x, u_input.b, 34933i, u_input.d.x)), ~(~0i), false);
    global0 = Struct_1(all(select(select(vec4<bool>(true, var_1.a, true, true), select(vec4<bool>(var_1.a, false, true, var_1.a), vec4<bool>(false, arg_0.a, true, global0.b.x), vec4<bool>(false, var_0.b.x, false, global0.b.x)), select(vec4<bool>(false, var_0.b.x, var_0.b.x, global0.b.x), vec4<bool>(false, true, var_1.b.x, var_1.a), vec4<bool>(true, true, global0.b.x, true))), !vec4<bool>(true, false, var_0.b.x, global0.a), !(!vec4<bool>(global0.b.x, arg_0.a, var_0.a, arg_1.b.x)))), vec3<bool>(!all(vec4<bool>(var_1.a, true, true, true)), !((40485i == u_input.b) | true), (_wgslsmith_f_op_f32(trunc(434f)) > _wgslsmith_f_op_f32(-1822f + 710f)) & false));
    var var_3 = vec4<u32>(~u_input.c, reverseBits(~_wgslsmith_div_u32(u_input.a.x, ~0u)), firstTrailingBit(~u_input.a.x) | _wgslsmith_mod_u32(firstLeadingBit(u_input.a.x), _wgslsmith_sub_u32(1u, ~u_input.a.x)), _wgslsmith_mod_u32(firstTrailingBit(0u), ~31140u));
    return vec3<u32>(43458u, 35025u, ~firstTrailingBit(var_3.x));
}

fn func_4(arg_0: vec3<u32>, arg_1: vec4<u32>) -> vec2<i32> {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), -673f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-592f * 130f)) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1140f, 105f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(576f, -360f) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-2197f + -345f), -1523f)))));
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_f32(-var_0.x));
    let var_2 = Struct_1(false, select(!global0.b, vec3<bool>(any(global0.b), var_0.x < var_0.x, firstTrailingBit(53871i) < firstLeadingBit(u_input.d.x)), !(!global0.b)));
    let var_3 = arg_1.wzx;
    var var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1009f, -423f, 432f, 1057f) * vec4<f32>(var_0.x, var_0.x, 1613f, -1000f)))))));
    return -u_input.d.yz;
}

fn func_2(arg_0: u32, arg_1: vec4<u32>) -> u32 {
    let var_0 = u_input.d.xx;
    var var_1 = func_4(func_3(Struct_1(global0.a, global0.b), Struct_1(false, select(global0.b, !vec3<bool>(false, global0.b.x, true), select(vec3<bool>(global0.b.x, global0.b.x, global0.a), global0.b, global0.b.x)))), _wgslsmith_sub_vec4_u32(~vec4<u32>(86029u, ~u_input.c, 102408u, ~arg_1.x), arg_1));
    global0 = Struct_1(max(reverseBits(firstTrailingBit(1u)), ~(~arg_1.x)) <= (_wgslsmith_clamp_u32(1u, ~48613u, 38957u) >> (max(~u_input.c, u_input.a.x >> (arg_1.x % 32u)) % 32u)), global0.b);
    var var_2 = Struct_1(true, global0.b);
    let var_3 = global0.a;
    return 23788u;
}

fn func_1() -> Struct_1 {
    var var_0 = _wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(abs(vec4<u32>(~u_input.a.x, func_2(u_input.a.x, vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, 18573u)), ~u_input.c, u_input.a.x)), _wgslsmith_sub_vec4_u32(reverseBits(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c, 27766u, 1u, u_input.c), vec4<u32>(19114u, u_input.c, 2911u, 51005u))), ~(vec4<u32>(u_input.c, 119253u, 14149u, u_input.c) ^ vec4<u32>(u_input.a.x, 21081u, u_input.a.x, 123023u)))), vec4<u32>(1u, u_input.a.x, abs(~u_input.c), 86537u));
    let var_1 = _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(abs(vec4<i32>(_wgslsmith_dot_vec3_i32(u_input.d, vec3<i32>(u_input.b, u_input.b, -1i)), ~(-10026i), u_input.d.x, u_input.b)), reverseBits(vec4<i32>(u_input.b, u_input.b, -1i, u_input.d.x) ^ abs(vec4<i32>(2147483647i, u_input.b, 14284i, 61193i)))), -(vec4<i32>(1i, select(u_input.d.x, u_input.b, global0.b.x), select(-6541i, u_input.d.x, false), _wgslsmith_dot_vec2_i32(u_input.d.yz, u_input.d.zz)) & ((vec4<i32>(u_input.d.x, 2147483647i, u_input.d.x, -20419i) >> (vec4<u32>(46938u, var_0.x, var_0.x, var_0.x) % vec4<u32>(32u))) | select(vec4<i32>(u_input.b, u_input.b, 1i, u_input.b), vec4<i32>(8491i, u_input.b, u_input.d.x, 20126i), vec4<bool>(true, false, global0.b.x, global0.b.x)))));
    return Struct_1(false, !global0.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -116f) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(-710f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(1107f, 1362f, global0.a))))))));
    let var_2 = Struct_1(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(_wgslsmith_add_vec2_u32(u_input.a, u_input.a), vec2<u32>(u_input.c, u_input.a.x)), ~u_input.a) >= _wgslsmith_div_u32(abs(~u_input.a.x), 0u), func_1().b);
    let var_3 = reverseBits(~_wgslsmith_sub_vec2_u32(u_input.a, firstLeadingBit(_wgslsmith_add_vec2_u32(u_input.a, vec2<u32>(0u, u_input.c)))));
    global0 = func_1();
    var var_4 = func_1();
    let var_5 = var_2;
    var_0 = var_5;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d.yz);
}

