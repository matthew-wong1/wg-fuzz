struct Struct_1 {
    a: vec4<i32>,
    b: f32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
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

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec4<u32>, arg_1: vec2<bool>) -> vec4<f32> {
    let var_0 = !(!vec3<bool>(all(vec2<bool>(arg_1.x, false)), global0.a.x != global0.a.x, arg_1.x));
    let var_1 = reverseBits(reverseBits(arg_0));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2390f + 1263f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1114f + _wgslsmith_f_op_f32(round(global0.b))) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global0.b - global0.b)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-980f))))));
    var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(-459f))));
    var_2 = global0.b;
    return _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -448f), 572f, _wgslsmith_f_op_f32(f32(-1f) * -469f), -572f) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.b, -403f, _wgslsmith_f_op_f32(step(global0.b, global0.b)), _wgslsmith_f_op_f32(min(-2395f, -805f))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.b, global0.b, global0.b, global0.b)), vec4<f32>(global0.b, global0.b, global0.b, 1334f)), true | var_0.x)))));
}

fn func_2(arg_0: bool) -> vec4<u32> {
    var var_0 = countOneBits(global0.a.x);
    var_0 = ~global0.a.x;
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global0.b, global0.b, _wgslsmith_f_op_f32(-941f - _wgslsmith_f_op_f32(select(global0.b, global0.b, true))), 1184f), _wgslsmith_f_op_vec4_f32(func_3(~_wgslsmith_div_vec4_u32(vec4<u32>(69259u, 94289u, 68672u, 19726u), vec4<u32>(1u, 19930u, 19414u, 1u)), vec2<bool>(true, true)))));
    var var_2 = vec4<bool>(any(!vec2<bool>(any(vec4<bool>(arg_0, false, true, true)), arg_0 && false)), true, arg_0, arg_0);
    let var_3 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_1.x, -1095f, 1000f), var_1.wxy))) - var_1.xxy)));
    return vec4<u32>(0u, 4294967295u, 4294967295u, ~15747u);
}

fn func_1(arg_0: vec2<u32>, arg_1: vec3<u32>, arg_2: u32, arg_3: u32) -> u32 {
    let var_0 = _wgslsmith_mod_u32((_wgslsmith_div_u32(1u, ~45260u) | _wgslsmith_mod_u32(10348u, arg_1.x & arg_2)) >> (_wgslsmith_clamp_u32(arg_2, 0u >> ((arg_1.x << (arg_3 % 32u)) % 32u), _wgslsmith_dot_vec4_u32(func_2(true), vec4<u32>(arg_2, arg_1.x, 1u, 0u))) % 32u), ~(_wgslsmith_clamp_u32(66855u & arg_2, 1u, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 1u, 40376u, 34624u), vec4<u32>(9508u, 15595u, arg_2, 26044u))) | 87839u));
    global0 = Struct_1(global0.a, 606f);
    var var_1 = global0.b;
    let var_2 = Struct_1(select(~select(abs(vec4<i32>(4986i, global0.a.x, global0.a.x, u_input.a)), vec4<i32>(-14511i, global0.a.x, global0.a.x, u_input.a), select(false, false, false)), vec4<i32>(global0.a.x, _wgslsmith_div_i32(u_input.a, -u_input.a), 1i, u_input.a), vec4<bool>(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_2, 0u, arg_2), vec3<u32>(0u, arg_1.x, arg_3)) >= _wgslsmith_sub_u32(4294967295u, arg_0.x), var_0 < (4294967295u >> (var_0 % 32u)), true, true)), _wgslsmith_f_op_vec4_f32(func_3(vec4<u32>(firstTrailingBit(firstLeadingBit(8048u)), 1u, _wgslsmith_mult_u32(~1u, 0u | arg_2), _wgslsmith_div_u32(~arg_1.x, 39500u)), vec2<bool>(select(true, false, false) && all(vec2<bool>(false, true)), _wgslsmith_add_i32(-17846i, 1i) < u_input.a))).x);
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.b, var_2.b, -926f) * vec3<f32>(var_2.b, var_2.b, 835f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global0.b, 207f, var_2.b))))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1491f, var_2.b, 959f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(global0.b, -325f, var_2.b))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(607f, 1466f, 409f) * vec3<f32>(var_2.b, global0.b, global0.b))))));
    return 4294967295u;
}

fn func_4(arg_0: Struct_2, arg_1: i32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(-global0.b);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b)), -1307f)));
    var var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-609f, arg_0.c.b, _wgslsmith_div_f32(-1651f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global0.b))))));
    let var_3 = Struct_2(arg_0.a, Struct_1(global0.a & vec4<i32>(u_input.a | 2147483647i, ~u_input.a, -1i, -1428i), -1080f), Struct_1(global0.a, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(851f, -855f)), -794f))))));
    global0 = arg_0.c;
    return var_3.b;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_4(Struct_2(countOneBits(~func_1(vec2<u32>(34124u, 1570u), vec3<u32>(12993u, 4294967295u, 4294967295u), 1u, 28155u)), Struct_1(global0.a, -913f), Struct_1(countOneBits(global0.a), 1302f)), global0.a.x);
    let var_0 = Struct_2(~1u, func_4(Struct_2(4294967295u << (func_1(vec2<u32>(4294967295u, 10243u), vec3<u32>(1u, 0u, 1u), 52506u, 64314u) % 32u), Struct_1(vec4<i32>(-2147483647i, 11156i, global0.a.x, u_input.a), global0.b), func_4(Struct_2(17752u, Struct_1(global0.a, global0.b), Struct_1(vec4<i32>(-37308i, global0.a.x, u_input.a, 23846i), global0.b)), _wgslsmith_sub_i32(u_input.a, 2147483647i))), reverseBits(-53523i)), Struct_1(vec4<i32>(reverseBits(-41939i), _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, -9590i), select(vec2<i32>(19397i, u_input.a), global0.a.yw, false)), -global0.a.x, firstTrailingBit(2147483647i)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + -966f)), -227f)));
    global0 = func_4(var_0, i32(-1i) * -var_0.b.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(func_4(Struct_2(var_0.a, Struct_1(vec4<i32>(var_0.b.a.x, global0.a.x, u_input.a, 35196i), 1931f), var_0.c), global0.a.x).b))))));
}

