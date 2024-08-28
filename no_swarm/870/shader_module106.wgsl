struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: u32,
    b: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<vec2<bool>, 6>;

var<private> global2: f32;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: i32, arg_1: f32, arg_2: Struct_1, arg_3: vec3<f32>) -> Struct_1 {
    global0 = Struct_2(~abs(u_input.b.x), -arg_0);
    var var_0 = ~(global0.a & ~(~0u & u_input.b.x));
    global2 = _wgslsmith_f_op_f32(f32(-1f) * -376f);
    let var_1 = _wgslsmith_f_op_f32(select(arg_3.x, arg_3.x, arg_2.a.x));
    return arg_2;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_2, arg_3: i32) -> vec4<i32> {
    let var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -867f)));
    var var_1 = arg_2;
    var var_2 = arg_0;
    var var_3 = u_input.b.x;
    let var_4 = ~max(vec3<i32>(_wgslsmith_div_i32(1i, global0.b) | global0.b, ~global0.b, _wgslsmith_mod_i32(_wgslsmith_clamp_i32(2147483647i, -1i, 2147483647i), 1i)), _wgslsmith_add_vec3_i32(firstTrailingBit(vec3<i32>(-1i, arg_3, -64074i)), firstTrailingBit(-vec3<i32>(-2147483647i, -2147483647i, arg_3))));
    return ~(-_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, 2147483647i, 38046i, arg_2.b) >> (vec4<u32>(arg_2.a, global0.a, 1u, 35242u) % vec4<u32>(32u)), abs(_wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, 0i, -24261i, var_1.b), vec4<i32>(global0.b, var_1.b, arg_2.b, 2147483647i)))));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<bool>, arg_3: vec3<u32>) -> f32 {
    let var_0 = 2147483647i;
    var var_1 = func_3(arg_0, func_2(global0.b, 442f, Struct_1(!vec4<bool>(arg_0.a.x, arg_2.x, true, arg_0.a.x)), vec3<f32>(-1000f, -487f, -700f)), Struct_2(u_input.b.x, ~1i | (0i << (global0.a % 32u))), 0i) >> (vec4<u32>(u_input.b.x >> ((_wgslsmith_div_u32(global0.a, u_input.b.x) << (_wgslsmith_mod_u32(4294967295u, 1u) % 32u)) % 32u), 29990u, global0.a, _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(~u_input.b.yx, arg_3.zy), u_input.b.yx)) % vec4<u32>(32u));
    let var_2 = vec4<f32>(1423f, 1f, -822f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(abs(956f)))));
    var var_3 = arg_3.x <= firstLeadingBit(58657u);
    let var_4 = Struct_2(1u, -firstLeadingBit(var_0));
    return 194f;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -701f)))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_1(Struct_1(vec4<bool>(true, true, true, true)), Struct_1(vec4<bool>(true, true, true, true)), global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(61667u, 28327u), 6u)], u_input.b)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1033f) * -2057f) - _wgslsmith_f_op_f32(-789f + _wgslsmith_f_op_f32(floor(-584f))))));
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-119f)))));
    var var_0 = vec4<i32>(global0.b, max(_wgslsmith_mult_i32(_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(51434i, global0.b), vec2<i32>(global0.b, u_input.a)), u_input.a), global0.b), _wgslsmith_mod_i32(global0.b, 1i)), func_3(Struct_1(select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, true))), func_2(u_input.a, _wgslsmith_f_op_f32(sign(-156f)), func_2(0i, 272f, Struct_1(vec4<bool>(true, true, true, false)), vec3<f32>(-1251f, -561f, 494f)), _wgslsmith_div_vec3_f32(vec3<f32>(-481f, -141f, -995f), vec3<f32>(564f, 1000f, 1114f))), Struct_2(~26u, _wgslsmith_div_i32(-22781i, global0.b)), ~u_input.a).x & u_input.a, abs(reverseBits(-36928i)));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-1164f, 1041f), _wgslsmith_f_op_f32(-1669f - -1229f))), -773f))) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-2437f, 636f)) - _wgslsmith_f_op_f32(select(-1193f, 282f, true))), -256f)) + _wgslsmith_f_op_f32(f32(-1f) * -1202f));
    global0 = Struct_2(~(~global0.a), 1i);
    var var_2 = Struct_2(101472u, _wgslsmith_mult_i32(-1i, func_3(func_2(_wgslsmith_div_i32(2147483647i, 33568i), _wgslsmith_f_op_f32(round(1101f)), func_2(0i, -422f, Struct_1(vec4<bool>(true, false, false, true)), vec3<f32>(1000f, -447f, -847f)), vec3<f32>(1f, 1f, 1f)), Struct_1(func_2(global0.b, -953f, Struct_1(vec4<bool>(false, true, false, true)), vec3<f32>(-1359f, 1833f, 1482f)).a), Struct_2(_wgslsmith_mult_u32(global0.a, 1630u), ~u_input.a), -1409i).x));
    let x = u_input.a;
    s_output = StorageBuffer(select(select(firstTrailingBit(u_input.b), select(vec3<u32>(29752u, 8343u, var_2.a), vec3<u32>(0u, global0.a, var_2.a), true) << (u_input.b % vec3<u32>(32u)), false && any(global1[_wgslsmith_index_u32(0u, 6u)])), ~(~(~vec3<u32>(16013u, 12316u, 4294967295u))), any(vec4<bool>(true, func_2(-49277i, -195f, Struct_1(vec4<bool>(true, true, false, false)), vec3<f32>(-1375f, -1401f, -111f)).a.x, true, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(1009f))))))), var_0.zwx);
}

