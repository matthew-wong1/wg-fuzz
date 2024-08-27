struct Struct_1 {
    a: bool,
    b: bool,
    c: vec4<u32>,
    d: bool,
    e: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_2,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: bool,
}

struct Struct_5 {
    a: bool,
    b: u32,
    c: Struct_3,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<u32>,
    c: vec4<i32>,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 1225f;

var<private> global1: Struct_3;

var<private> global2: array<vec2<f32>, 7> = array<vec2<f32>, 7>(vec2<f32>(1000f, 965f), vec2<f32>(182f, 876f), vec2<f32>(-325f, -195f), vec2<f32>(-773f, 2241f), vec2<f32>(-2361f, -746f), vec2<f32>(611f, -1363f), vec2<f32>(2021f, -329f));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_5, arg_1: Struct_5, arg_2: vec2<u32>, arg_3: vec4<bool>) -> f32 {
    global1 = arg_0.c;
    var var_0 = _wgslsmith_f_op_f32(2263f - _wgslsmith_f_op_f32(floor(-1243f)));
    let var_1 = arg_1.c;
    let var_2 = arg_0.c.b.a;
    var_0 = _wgslsmith_f_op_f32(select(1f, _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(-650f + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-275f + -552f))))), true));
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1124f) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(384f, -459f) + _wgslsmith_f_op_f32(1003f + 408f)))), 530f));
}

fn func_2(arg_0: Struct_5) -> vec3<i32> {
    global0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_5(!arg_0.d.x, ~0u, arg_0.c, select(vec2<bool>(false, global1.b.a.a), vec2<bool>(true, true), global1.a.b)), arg_0, u_input.d, vec4<bool>(true && arg_0.d.x, !global1.a.b, true, !global1.d.a.a)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1725f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(740f, 798f)))) - 1912f)));
    global2 = array<vec2<f32>, 7>();
    var var_0 = select(!vec4<bool>(select(global1.c.a.b, global1.b.a.a | false, true), global1.d.a.b, false, all(vec4<bool>(false, global1.b.a.a, true, true)) | true), !(!(!vec4<bool>(global1.c.a.b, false, false, true))), true);
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(251f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -557f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-544f, -587f)))))));
    return vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, _wgslsmith_div_i32(-17707i, -1i) >> (0u % 32u), arg_0.c.a.e.x, 0i), vec4<i32>(~arg_0.c.c.b, _wgslsmith_div_i32(1i, 7091i), min(u_input.a.x, arg_0.c.c.a.e.x) ^ _wgslsmith_clamp_i32(-1777i, global1.b.a.e.x, -18625i), i32(-1i) * -8755i)), global1.a.e.x, 25118i);
}

fn func_1(arg_0: Struct_5, arg_1: f32) -> f32 {
    var var_0 = -countOneBits(_wgslsmith_mod_i32(27643i, 2147483647i)) == _wgslsmith_clamp_i32(0i, max(1i ^ (2147483647i & global1.d.a.e.x), ~countOneBits(u_input.a.x)), -abs(-u_input.c));
    let var_1 = ~global1.b.a.c;
    var var_2 = global1.d.a;
    var_0 = var_2.a;
    var var_3 = ~func_2(arg_0);
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(480f)), _wgslsmith_f_op_f32(ceil(-1508f)))) - _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(func_1(Struct_5(global1.b.a.b, u_input.d.x, Struct_3(global1.a, Struct_2(Struct_1(true, global1.d.a.b, vec4<u32>(4294967295u, 27800u, 52337u, 1u), global1.c.a.d, vec2<i32>(global1.b.a.e.x, global1.d.b)), -5909i, global1.c.a.c.x), Struct_2(global1.c.a, 0i, global1.b.a.c.x), Struct_2(global1.c.a, u_input.a.x, u_input.b)), vec2<bool>(global1.c.a.b, false)), 616f)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(432f - -1151f)) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -405f), _wgslsmith_f_op_f32(f32(-1f) * -1362f), global1.c.a.d)))), _wgslsmith_f_op_f32(f32(-1f) * -146f));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(-180f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 * -874f))))) + _wgslsmith_f_op_f32(-var_0));
    let var_2 = select(vec4<u32>(_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d.x, u_input.b, 26340u, 75805u), vec4<u32>(1u, 0u, 1797u, u_input.d.x)), 511u), ~reverseBits(26242u), global1.a.c.x, firstTrailingBit(~_wgslsmith_sub_u32(global1.d.a.c.x, global1.d.a.c.x))), ~firstLeadingBit(_wgslsmith_mod_vec4_u32(global1.b.a.c, vec4<u32>(global1.a.c.x, 1u, 14622u, u_input.b) << (vec4<u32>(43556u, u_input.d.x, 25682u, 52407u) % vec4<u32>(32u)))), !select(select(!vec4<bool>(global1.b.a.d, global1.d.a.d, global1.c.a.b, global1.d.a.d), vec4<bool>(global1.a.d, global1.b.a.d, global1.d.a.a, global1.c.a.a), select(vec4<bool>(true, global1.a.a, true, true), vec4<bool>(true, false, global1.c.a.d, true), vec4<bool>(global1.b.a.b, global1.a.a, global1.c.a.a, true))), vec4<bool>(0u >= u_input.b, true, true, !global1.a.a), select(!vec4<bool>(global1.b.a.a, global1.a.b, false, false), vec4<bool>(false, false, global1.b.a.d, global1.b.a.a), global1.b.a.d & false)));
    var var_3 = Struct_4(global1.b, select(-global1.b.a.e.x >= _wgslsmith_div_i32(u_input.e, u_input.a.x), global1.d.a.d && (var_0 <= 455f), any(vec4<bool>(global1.c.a.a, global1.c.a.b, true, true))) & false);
    let var_4 = vec3<u32>(~(~(~(~global1.d.a.c.x))), ~1u, ~var_2.x);
    let var_5 = Struct_1(any(vec3<bool>(true, false, -var_3.a.b > global1.d.a.e.x)), true, vec4<u32>(var_4.x, ~1u, u_input.d.x ^ ~var_3.a.a.c.x, var_4.x), false, -_wgslsmith_sub_vec2_i32(u_input.a ^ u_input.a, ~var_3.a.a.e));
    let var_6 = Struct_4(Struct_2(global1.d.a, -2147483647i, _wgslsmith_dot_vec4_u32(~min(var_2, global1.b.a.c), min(~var_3.a.a.c, ~vec4<u32>(4294967295u, 0u, var_5.c.x, global1.c.c)))), !all(vec4<bool>(all(vec3<bool>(var_3.a.a.b, var_5.d, var_5.d)), var_5.b, true, true)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(var_0, -1222f, _wgslsmith_f_op_f32(var_0 * var_0), -1018f), ~vec4<u32>(_wgslsmith_sub_u32(global1.d.a.c.x, 1u), _wgslsmith_sub_u32(var_6.a.c, 0u), reverseBits(30312u), var_6.a.a.c.x), ~(vec4<i32>(-1i) * -firstTrailingBit(vec4<i32>(var_6.a.b, 73960i, 1i, var_3.a.b))), _wgslsmith_dot_vec4_i32(~(vec4<i32>(var_3.a.a.e.x, var_5.e.x, u_input.c, 9515i) | vec4<i32>(var_5.e.x, -27632i, var_3.a.a.e.x, 0i)), countOneBits(_wgslsmith_div_vec4_i32(vec4<i32>(-1i, u_input.e, -5434i, global1.d.a.e.x), vec4<i32>(var_6.a.b, -67767i, -1i, u_input.a.x)))) ^ 3448i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-830f - _wgslsmith_f_op_f32(var_0 * -1707f)) - -375f)));
}

