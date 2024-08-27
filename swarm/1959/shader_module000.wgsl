struct Struct_1 {
    a: bool,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec2<i32>,
    d: vec2<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: Struct_1;

var<private> global2: u32 = 5180u;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: bool, arg_1: i32) -> vec2<u32> {
    var var_0 = Struct_1(all(select(vec4<bool>(arg_0, arg_0, global1.a, true), !vec4<bool>(arg_0, false, global1.a, false), all(vec4<bool>(global1.a, false, false, arg_0)))) || arg_0, abs(-reverseBits(firstTrailingBit(vec2<i32>(-20420i, 1i)))));
    global1 = Struct_1(true, var_0.b);
    var var_1 = max(-reverseBits(abs(vec4<i32>(arg_1, -1i, arg_1, -2147483647i)) >> (_wgslsmith_clamp_vec4_u32(u_input.b, u_input.b, u_input.b) % vec4<u32>(32u))), vec4<i32>(_wgslsmith_add_i32(-(~(-6585i)), _wgslsmith_sub_i32(22363i, ~global1.b.x)), 0i << (_wgslsmith_mult_u32(u_input.b.x, 1u) % 32u), reverseBits(global1.b.x), -2147483647i));
    var_1 = vec4<i32>(_wgslsmith_sub_i32(_wgslsmith_clamp_i32(_wgslsmith_clamp_i32(abs(global1.b.x), i32(-1i) * -14497i, -1i), max(u_input.c.x, _wgslsmith_dot_vec2_i32(var_0.b, global1.b)), global1.b.x), var_0.b.x), -_wgslsmith_dot_vec2_i32(~(~vec2<i32>(var_1.x, 1i)), ~select(vec2<i32>(var_1.x, -710i), u_input.c, true)), countOneBits(-34172i), max(reverseBits(48666i), _wgslsmith_dot_vec3_i32(vec3<i32>(arg_1, var_0.b.x, ~(-71291i)), vec3<i32>(arg_1, _wgslsmith_mult_i32(1i, arg_1), arg_1))));
    let var_2 = select(select(!(!vec4<bool>(arg_0, false, false, false)), !select(!vec4<bool>(global1.a, arg_0, var_0.a, true), !vec4<bool>(false, global1.a, true, false), vec4<bool>(false, var_0.a, false, true)), true), vec4<bool>(false, true, any(select(!vec3<bool>(arg_0, true, true), vec3<bool>(arg_0, true, true), all(vec3<bool>(false, var_0.a, false)))), !(!var_0.a)), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.b.x) | vec2<u32>(64004u, 4294967295u), ~min(vec2<u32>(7940u, 14561u), u_input.b.zx)) <= _wgslsmith_mod_u32(~37676u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, 5986u, 9598u), u_input.b & vec4<u32>(46572u, u_input.b.x, u_input.b.x, u_input.b.x))));
    return firstLeadingBit(abs(vec2<u32>(u_input.b.x, u_input.b.x)));
}

fn func_2(arg_0: i32) -> vec4<f32> {
    var var_0 = ~reverseBits(u_input.b.xy);
    var_0 = max(func_3(true, -(~countOneBits(arg_0))), vec2<u32>(_wgslsmith_sub_u32(~select(4294967295u, u_input.b.x, global1.a), 4294967295u), _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(u_input.b, firstLeadingBit(vec4<u32>(40711u, 42175u, var_0.x, 31164u))), _wgslsmith_dot_vec4_u32(~u_input.b, _wgslsmith_div_vec4_u32(u_input.b, vec4<u32>(0u, var_0.x, var_0.x, u_input.b.x))))));
    var_0 = ~_wgslsmith_div_vec2_u32(vec2<u32>(69878u, 0u), select(u_input.b.wx, ~reverseBits(u_input.b.yy), true));
    var var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_div_f32(479f, global0.x) - global0.x), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(1083f, global0.x)))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global0.x))), global0.x))))));
    var var_2 = vec4<bool>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -566f)), global0.x) == _wgslsmith_f_op_f32(-global0.x), !all(!(!vec2<bool>(global1.a, global1.a))), !(global1.a | !global1.a) && true, -_wgslsmith_sub_i32(u_input.c.x, max(arg_0, 1i)) != -32312i);
    return _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global0.x, 733f, global0.x, global0.x))), vec4<f32>(global0.x, global0.x, global0.x, -1000f)))))))));
}

fn func_1() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global0.x, global0.x, 1869f, global0.x), _wgslsmith_div_vec4_f32(vec4<f32>(global0.x, global0.x, global0.x, global0.x), vec4<f32>(global0.x, global0.x, 386f, global0.x))) + _wgslsmith_f_op_vec4_f32(func_2(i32(-1i) * -11725i)))));
    global0 = vec2<f32>(-2004f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1292f, -104f)), global1.a)))));
    var_0 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(-var_0.x), -1378f, _wgslsmith_f_op_f32(select(-1326f, -1795f, global1.a))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(842f, 1105f, -645f, var_0.x) - vec4<f32>(global0.x, -108f, global0.x, 563f))))))));
    var var_1 = Struct_1(global1.a, _wgslsmith_mod_vec2_i32(u_input.c << (~(u_input.b.xw ^ u_input.b.wy) % vec2<u32>(32u)), abs(firstTrailingBit(-vec2<i32>(1i, 6899i)))));
    var var_2 = global1.a;
    return Struct_1(!all(vec4<bool>(true, global1.a, false, all(vec4<bool>(global1.a, global1.a, var_1.a, var_1.a)))), _wgslsmith_sub_vec2_i32(vec2<i32>(var_1.b.x, ~var_1.b.x & 1i), u_input.c));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    global0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -980f) - _wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(global0.x)))))), _wgslsmith_f_op_f32(trunc(1005f)));
    global2 = _wgslsmith_dot_vec3_u32(~max(_wgslsmith_mult_vec3_u32(u_input.b.xxw, vec3<u32>(u_input.b.x, 4294967295u, u_input.b.x) | vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x)), select(u_input.b.zwx << (u_input.b.xwz % vec3<u32>(32u)), vec3<u32>(18356u, 7793u, u_input.b.x), !vec3<bool>(var_0.a, global1.a, var_0.a))), ~firstTrailingBit(vec3<u32>(6352u, u_input.b.x, u_input.b.x)));
    var var_1 = func_1();
    var var_2 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.x | 1u, _wgslsmith_sub_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(-2147483647i, var_0.b.x, var_1.b.x, u_input.a), -vec4<i32>(var_0.b.x, global1.b.x, -31718i, var_2.b.x) | ~vec4<i32>(-11830i, u_input.a, var_2.b.x, -21097i)) << ((u_input.b << (~vec4<u32>(u_input.b.x, 1u, 0u, u_input.b.x) % vec4<u32>(32u))) % vec4<u32>(32u)), var_1.b, _wgslsmith_div_vec2_u32(u_input.b.wz, func_3(true, _wgslsmith_div_i32(var_1.b.x, global1.b.x))) ^ ~vec2<u32>(u_input.b.x, 4294967295u | u_input.b.x), global0.x);
}

