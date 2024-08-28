struct Struct_1 {
    a: u32,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    global0 = arg_0;
    let var_0 = arg_0;
    var var_1 = abs(1u);
    global0 = Struct_1(0u, vec2<i32>(var_0.b.x, ~2147483647i));
    return Struct_1(0u, abs(u_input.a));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: Struct_1, arg_3: Struct_1) -> vec4<u32> {
    var var_0 = arg_2.b.x;
    var var_1 = Struct_1(~_wgslsmith_dot_vec3_u32(vec3<u32>(~53830u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, arg_2.a, 1u), vec3<u32>(76105u, 20803u, 0u)), 1u), firstLeadingBit(vec3<u32>(14938u, global0.a, 4294967295u)) >> (firstLeadingBit(vec3<u32>(1u, 4294967295u, arg_3.a)) % vec3<u32>(32u))), vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.b.x, 1i, -10935i, -u_input.a.x), _wgslsmith_add_vec4_i32(vec4<i32>(1i, -14129i, arg_3.b.x, 0i), vec4<i32>(u_input.a.x, arg_3.b.x, u_input.a.x, arg_3.b.x))), firstTrailingBit(max(~(-853i), -u_input.a.x))));
    let var_2 = vec4<i32>(_wgslsmith_sub_i32(~func_2(arg_2).b.x, _wgslsmith_dot_vec2_i32(arg_3.b, _wgslsmith_sub_vec2_i32(arg_3.b, vec2<i32>(24803i, arg_0.b.x))) | (_wgslsmith_mod_i32(10885i, arg_3.b.x) ^ 1i)), -abs(_wgslsmith_mod_i32(global0.b.x, -global0.b.x)), _wgslsmith_mod_i32(_wgslsmith_mod_i32(~(-2147483647i), 2444i) >> (0u % 32u), _wgslsmith_add_i32(-2147483647i, 1i)), arg_0.b.x);
    var var_3 = !(!vec2<bool>(true, any(vec4<bool>(false, true, false, true))));
    var var_4 = !select(select(vec3<bool>(all(vec2<bool>(var_3.x, false)), any(vec3<bool>(true, true, var_3.x)), global0.b.x >= 5919i), !(!vec3<bool>(false, var_3.x, true)), true || (false && var_3.x)), vec3<bool>(true, select(true, all(vec2<bool>(var_3.x, var_3.x)), !var_3.x), any(vec2<bool>(var_3.x, false))), var_3.x & all(select(vec3<bool>(var_3.x, var_3.x, var_3.x), vec3<bool>(true, var_3.x, var_3.x), vec3<bool>(var_3.x, false, var_3.x))));
    return _wgslsmith_sub_vec4_u32(reverseBits(~vec4<u32>(global0.a, 44771u, 754u, 1u)) & _wgslsmith_add_vec4_u32(~vec4<u32>(72350u, 4294967295u, var_1.a, arg_0.a), ~(~vec4<u32>(6152u, arg_3.a, global0.a, 0u))), ~(abs(vec4<u32>(536u, arg_0.a, 4294967295u, arg_3.a)) << (((vec4<u32>(var_1.a, 30395u, 142951u, global0.a) & vec4<u32>(var_1.a, 4294967295u, arg_2.a, 4294967295u)) << (vec4<u32>(arg_0.a, arg_3.a, 4294967295u, 0u) % vec4<u32>(32u))) % vec4<u32>(32u))));
}

fn func_1(arg_0: f32, arg_1: vec4<i32>) -> u32 {
    var var_0 = -2147483647i;
    var_0 = _wgslsmith_mult_i32(_wgslsmith_mult_i32(~_wgslsmith_add_i32(-global0.b.x, _wgslsmith_add_i32(arg_1.x, 2147483647i)), countOneBits(18268i)), 68453i);
    var var_1 = func_3(func_2(Struct_1(reverseBits(~44593u), vec2<i32>(u_input.a.x, abs(u_input.a.x)))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_0))), arg_0, 1f), Struct_1(~(~global0.a), _wgslsmith_add_vec2_i32(_wgslsmith_mod_vec2_i32(_wgslsmith_mod_vec2_i32(global0.b, vec2<i32>(arg_1.x, u_input.a.x)), -vec2<i32>(-24107i, -1i)), select(_wgslsmith_sub_vec2_i32(u_input.a, global0.b), ~vec2<i32>(31719i, 36125i), true))), func_2(func_2(Struct_1(global0.a >> (0u % 32u), _wgslsmith_clamp_vec2_i32(vec2<i32>(arg_1.x, -1i), vec2<i32>(7827i, -8952i), vec2<i32>(2147483647i, u_input.a.x))))));
    var_1 = _wgslsmith_div_vec4_u32(~reverseBits(_wgslsmith_add_vec4_u32(vec4<u32>(21271u, var_1.x, var_1.x, global0.a), vec4<u32>(88774u, 0u, var_1.x, global0.a))), ~func_3(Struct_1(1u, u_input.a), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_0, arg_0, arg_0), vec3<f32>(arg_0, 1291f, 217f))), func_2(Struct_1(111240u, vec2<i32>(global0.b.x, 4904i))), func_2(Struct_1(0u, vec2<i32>(global0.b.x, u_input.a.x))))) >> (vec4<u32>(var_1.x, ~(~firstTrailingBit(53659u)), var_1.x, max(~(1u >> (global0.a % 32u)), ~func_2(Struct_1(16564u, global0.b)).a)) % vec4<u32>(32u));
    global0 = func_2(Struct_1(~func_3(Struct_1(1u, arg_1.zz), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, 440f, -1123f)), func_2(Struct_1(0u, vec2<i32>(0i, u_input.a.x))), func_2(Struct_1(0u, vec2<i32>(u_input.a.x, arg_1.x)))).x, _wgslsmith_div_vec2_i32(firstTrailingBit(-vec2<i32>(-1i, -2147483647i)), ~vec2<i32>(-35007i, -2147483647i))));
    return 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(func_1(_wgslsmith_f_op_f32(f32(-1f) * -631f), vec4<i32>(u_input.a.x, global0.b.x, u_input.a.x, -_wgslsmith_div_i32(u_input.a.x, global0.b.x))), min(global0.b, vec2<i32>(_wgslsmith_div_i32(0i, u_input.a.x), -2147483647i)));
    var var_1 = -1i;
    let var_2 = func_2(Struct_1(~var_0.a, vec2<i32>(u_input.a.x, -26570i)));
    var_0 = Struct_1(1u, vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, -4474i), var_2.b), var_0.b.x) & ~(-var_0.b));
    var var_3 = Struct_1(var_0.a, ~var_2.b);
    let var_4 = Struct_1(~max(~var_2.a << (var_3.a % 32u), global0.a >> (~37342u % 32u)), var_0.b);
    let x = u_input.a;
    s_output = StorageBuffer(var_4.b.x, ~vec4<i32>(1i, _wgslsmith_clamp_i32(-21219i, _wgslsmith_sub_i32(-2147483647i, -1i), -17510i), _wgslsmith_add_i32(~var_0.b.x, var_3.b.x), abs(~var_3.b.x)), _wgslsmith_sub_u32(countOneBits(var_2.a), firstTrailingBit(func_3(func_2(Struct_1(global0.a, global0.b)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 1121f, -575f) + vec3<f32>(1189f, 727f, 746f)), var_4, var_4).x)), firstTrailingBit(_wgslsmith_mod_i32(~global0.b.x, reverseBits(-917i))) ^ 1i, select(max(-1i, 0i), _wgslsmith_dot_vec2_i32(global0.b, vec2<i32>(~(-60594i), var_2.b.x)), !(~4294967295u < func_2(Struct_1(1u, u_input.a)).a)));
}

