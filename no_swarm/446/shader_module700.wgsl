struct Struct_1 {
    a: bool,
    b: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: vec2<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(1i, 70783i, -21378i, 2147483647i);

var<private> global1: u32;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: bool) -> u32 {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1313f), _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(ceil(-579f))), arg_0)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(1595f)), _wgslsmith_f_op_f32(-199f + -1025f), any(vec4<bool>(arg_0, arg_0, arg_0, arg_0)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(827f, 326f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(886f, 1000f)) + -1048f)))), -191f);
    let var_1 = true;
    return firstLeadingBit(u_input.c.x);
}

fn func_2(arg_0: i32) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(max(-1159f, 1019f));
    var var_1 = _wgslsmith_f_op_f32(round(-163f));
    var var_2 = vec2<u32>(~u_input.c.x, _wgslsmith_div_u32(75443u, func_3(false)));
    let var_3 = 58764u;
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1289f - 379f)) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(1334f)), _wgslsmith_f_op_f32(step(1000f, 212f)))))) * _wgslsmith_f_op_f32(floor(-124f)));
    return (i32(-1i) * -2307i) ^ -_wgslsmith_add_i32(-(u_input.b.x & 0i), _wgslsmith_div_i32(-16066i, u_input.b.x));
}

fn func_1(arg_0: f32, arg_1: u32, arg_2: vec3<f32>, arg_3: Struct_1) -> bool {
    var var_0 = u_input.c.x >= reverseBits(_wgslsmith_mult_u32(~4294967295u, 40390u) >> ((_wgslsmith_dot_vec2_u32(vec2<u32>(arg_3.b, 0u), vec2<u32>(69439u, 12532u)) >> (1u % 32u)) % 32u));
    var var_1 = ~func_2(global0.x);
    var var_2 = arg_2;
    var_0 = any(vec3<bool>(!(198f > _wgslsmith_f_op_f32(-var_2.x)), any(vec3<bool>(arg_1 == 0u, arg_3.a, true)), arg_3.a));
    var var_3 = arg_3;
    return !((!var_3.a && arg_3.a) && arg_3.a);
}

fn func_4(arg_0: Struct_1, arg_1: vec4<f32>) -> f32 {
    let var_0 = !any(select(!vec2<bool>(arg_0.a, false), vec2<bool>(false, arg_0.a), select(vec2<bool>(arg_0.a, arg_0.a), vec2<bool>(true, false), false))) && !all(vec4<bool>(arg_0.a || arg_0.a, !arg_0.a, true, !arg_0.a));
    global0 = (vec4<i32>(-1i) * -vec4<i32>(-26701i, ~26243i, ~global0.x, u_input.b.x ^ 18513i)) >> (~(~_wgslsmith_mod_vec4_u32(firstTrailingBit(u_input.c), vec4<u32>(1u, arg_0.b, arg_0.b, arg_0.b))) % vec4<u32>(32u));
    let var_1 = reverseBits(~u_input.c);
    var var_2 = Struct_1(any(vec4<bool>(arg_0.a, arg_1.x >= _wgslsmith_f_op_f32(step(1000f, arg_1.x)), false, true)), var_1.x);
    var var_3 = arg_0;
    return -1615f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(func_4(Struct_1(all(vec4<bool>(func_1(710f, 98170u, vec3<f32>(-3443f, 836f, -392f), Struct_1(false, 4752u)), true, true, false)), func_3(global0.x <= 1i)), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(138f, 333f, -960f, -390f)), vec4<f32>(_wgslsmith_f_op_f32(1805f * 500f), _wgslsmith_f_op_f32(f32(-1f) * -501f), _wgslsmith_f_op_f32(step(560f, -1050f)), -1000f))))));
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(462f + _wgslsmith_f_op_f32(-538f * _wgslsmith_f_op_f32(-var_0))) * -1314f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0))))));
    var var_2 = ~select(~vec4<i32>(-2147483647i, -15436i, global0.x, 1i) | min(-vec4<i32>(u_input.a.x, global0.x, global0.x, -27083i), min(vec4<i32>(0i, 21746i, global0.x, -2147483647i), vec4<i32>(2147483647i, -1i, -7870i, global0.x))), ~max(select(vec4<i32>(0i, 21962i, 34107i, 18476i), vec4<i32>(0i, -1i, 40168i, 2147483647i), vec4<bool>(false, false, true, true)), abs(vec4<i32>(32821i, 2147483647i, u_input.a.x, global0.x))), !(_wgslsmith_f_op_f32(step(var_0, var_0)) <= _wgslsmith_f_op_f32(exp2(var_0))));
    let var_3 = Struct_1(u_input.c.x < _wgslsmith_clamp_u32(u_input.c.x, _wgslsmith_mod_u32(u_input.c.x | 11143u, u_input.c.x), firstTrailingBit(~u_input.c.x)), ~(~(~1u)));
    global0 = reverseBits(vec4<i32>(-1i) * -(vec4<i32>(global0.x, u_input.a.x, global0.x, 1i) >> (vec4<u32>(var_3.b, u_input.c.x, 4294967295u, u_input.c.x) % vec4<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, 931f, 1394f, var_1))))) + _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0, var_0, 450f, var_1)))))), var_3.b & var_3.b, ~_wgslsmith_div_vec2_u32(~abs(u_input.c.ww), vec2<u32>(u_input.c.x, _wgslsmith_mult_u32(u_input.c.x, 19094u))), i32(-1i) * -2147483647i);
}

