struct Struct_1 {
    a: vec4<i32>,
    b: vec2<u32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: f32,
    c: Struct_1,
    d: f32,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec3<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<f32>,
    c: vec3<i32>,
    d: vec3<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 1>;

var<private> global1: array<i32, 26> = array<i32, 26>(i32(-2147483648), 22224i, 1348i, 2147483647i, -65529i, -7184i, -1i, 1i, -3438i, 2147483647i, 1i, i32(-2147483648), 42945i, -3259i, -76411i, 0i, -1i, 3739i, 64221i, -6551i, i32(-2147483648), 6333i, 0i, 21964i, i32(-2147483648), 21007i);

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_1(arg_0: i32, arg_1: vec2<f32>, arg_2: vec3<u32>) -> Struct_1 {
    return Struct_1(firstLeadingBit(vec4<i32>(global0[_wgslsmith_index_u32(u_input.a, 1u)], global1[_wgslsmith_index_u32(19405u, 26u)], _wgslsmith_sub_i32(countOneBits(-2147483647i), max(-1226i, -4225i)), _wgslsmith_add_i32(~(-2147483647i), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(arg_2.x, 0u), 1u)]))), ~vec2<u32>(~(~0u), 92595u));
}

fn func_3(arg_0: vec2<i32>) -> f32 {
    var var_0 = Struct_2(vec3<u32>(u_input.d.x, ~(~(~41297u)), ~_wgslsmith_clamp_u32(4294967295u, u_input.c.x, ~18876u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1487f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(1569f, -271f) - _wgslsmith_f_op_f32(f32(-1f) * -643f)))), func_1(min(arg_0.x, 0i), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(219f, -684f)) - _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-2252f, -761f), vec2<f32>(646f, -1275f)))))), firstTrailingBit(min(u_input.c, vec3<u32>(u_input.a, u_input.d.x, u_input.c.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * _wgslsmith_div_f32(672f, 881f)))), 17492i);
    var var_1 = func_1(-2147483647i, vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-880f - var_0.d))))), _wgslsmith_f_op_f32(1128f - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-765f + -426f))))), ~vec3<u32>(_wgslsmith_add_u32(var_0.c.b.x, _wgslsmith_add_u32(u_input.d.x, 24134u)), var_0.c.b.x << (3821u % 32u), var_0.c.b.x));
    var var_2 = func_1(-28152i, vec2<f32>(_wgslsmith_f_op_f32(max(-969f, _wgslsmith_f_op_f32(-1f))), _wgslsmith_f_op_f32(floor(var_0.b))), var_0.a).a.x;
    let var_3 = arg_0.x;
    let var_4 = Struct_2(vec3<u32>(u_input.a, firstLeadingBit(var_1.b.x), u_input.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.d, 415f) + _wgslsmith_f_op_f32(abs(-280f)))) * var_0.d), var_0.c, _wgslsmith_f_op_f32(f32(-1f) * -479f), 0i);
    return var_4.b;
}

fn func_2(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: vec2<u32>) -> f32 {
    var var_0 = arg_2.x;
    var var_1 = arg_0.a;
    let var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_3(firstTrailingBit(select(vec2<i32>(-2147483647i, arg_0.a.x), var_1.xx << (arg_2 % vec2<u32>(32u)), vec2<bool>(true, true)))))));
    var var_3 = min(max(~firstLeadingBit(_wgslsmith_mod_vec3_u32(vec3<u32>(0u, arg_0.b.x, 59453u), vec3<u32>(arg_2.x, 69987u, u_input.a))), abs(abs(u_input.c))), ~(~_wgslsmith_sub_vec3_u32(~vec3<u32>(4294967295u, arg_0.b.x, 1u), firstTrailingBit(u_input.b))));
    let var_4 = vec4<bool>(firstLeadingBit(1i) > global1[_wgslsmith_index_u32(firstLeadingBit(~arg_0.b.x), 26u)], any(vec3<bool>(true, 1u >= func_1(var_1.x, arg_1.yx, vec3<u32>(u_input.d.x, 0u, 1u)).b.x, true)), true, false);
    return _wgslsmith_f_op_f32(round(-156f));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<i32, 26>();
    let var_0 = _wgslsmith_mult_u32(~(~1u), ~_wgslsmith_mult_u32(u_input.a, ~(~0u)));
    let var_1 = Struct_2(u_input.b, _wgslsmith_f_op_f32(func_2(func_1(2147483647i, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-693f, -473f), vec2<f32>(-349f, 757f))))), _wgslsmith_sub_vec3_u32(u_input.b, u_input.b)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2208f, -1081f, -1138f, 1727f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1023f, 387f, 356f, -196f)))), ~_wgslsmith_mod_vec2_u32(u_input.d, vec2<u32>(var_0, 24150u) | u_input.b.xy))), Struct_1(~vec4<i32>(-57144i, 0i << (var_0 % 32u), 17407i, global1[_wgslsmith_index_u32(~4294967295u, 26u)]), ~u_input.d), -130f, _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(func_1(-46056i, vec2<f32>(1118f, 301f), vec3<u32>(u_input.a, 37639u, u_input.a)).a.wy, select(vec2<i32>(global1[_wgslsmith_index_u32(var_0, 26u)], global1[_wgslsmith_index_u32(28957u, 26u)]), vec2<i32>(-47829i, global1[_wgslsmith_index_u32(124u, 26u)]), vec2<bool>(true, false))), select(vec2<i32>(global1[_wgslsmith_index_u32(var_0, 26u)], -21797i), ~vec2<i32>(-2346i, 1282i), all(vec2<bool>(false, true)))), global0[_wgslsmith_index_u32(countOneBits(~_wgslsmith_add_u32(45004u, 40362u)), 1u)]));
    var var_2 = !all(select(vec2<bool>(false, false), select(vec2<bool>(true, true), vec2<bool>(true, true), true), !any(vec3<bool>(true, false, false))));
    var var_3 = vec4<bool>(~global0[_wgslsmith_index_u32(u_input.c.x, 1u)] < ~min(_wgslsmith_sub_i32(global0[_wgslsmith_index_u32(var_0, 1u)], -20175i), abs(72104i)), all(vec4<bool>(u_input.a >= 1u, false, true, true)), true & (_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1104f, var_1.d) - _wgslsmith_f_op_f32(abs(var_1.d))) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-673f - var_1.b))), !(all(vec2<bool>(false, true)) || true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec3_i32(firstTrailingBit(_wgslsmith_add_vec3_i32(var_1.c.a.zzz, vec3<i32>(var_1.c.a.x, var_1.e, global1[_wgslsmith_index_u32(0u, 26u)])) << (_wgslsmith_div_vec3_u32(var_1.a, u_input.b) % vec3<u32>(32u))), select(~abs(var_1.c.a.wyz), ~vec3<i32>(37149i, 0i, global1[_wgslsmith_index_u32(32838u, 26u)]), vec3<bool>(true, true, true)), var_1.c.a.xzx), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1416f, _wgslsmith_f_op_f32(round(1761f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-674f * -526f) - _wgslsmith_f_op_f32(var_1.b * 782f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1257f) * var_1.d)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(203f - 943f), _wgslsmith_f_op_f32(-758f * 337f), _wgslsmith_f_op_f32(min(-444f, -120f)), _wgslsmith_f_op_f32(step(-499f, var_1.b))) + _wgslsmith_div_vec4_f32(vec4<f32>(-410f, var_1.d, var_1.b, 1929f), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_1.b, var_1.d, 199f, var_1.b))))), var_3.x == true)), _wgslsmith_clamp_vec3_i32(-_wgslsmith_div_vec3_i32(vec3<i32>(global1[_wgslsmith_index_u32(var_1.c.b.x, 26u)], -7377i, var_1.e), var_1.c.a.xxx), ~var_1.c.a.wzy, vec3<i32>(-1i, -2147483647i, var_1.c.a.x) & var_1.c.a.wyx) & select(~vec3<i32>(2147483647i, var_1.c.a.x, global1[_wgslsmith_index_u32(var_1.c.b.x, 26u)]), ~var_1.c.a.yyx, any(!var_3.yyz)), vec3<i32>(_wgslsmith_mod_i32(abs(_wgslsmith_dot_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(var_0, 1u)], global0[_wgslsmith_index_u32(var_1.a.x, 1u)]), vec2<i32>(-1966i, -2147483647i))), _wgslsmith_dot_vec2_i32(var_1.c.a.wx, var_1.c.a.yw ^ vec2<i32>(global0[_wgslsmith_index_u32(0u, 1u)], global0[_wgslsmith_index_u32(u_input.d.x, 1u)]))), min(global1[_wgslsmith_index_u32(97824u, 26u)] >> (1u % 32u), -95164i), 1i << (countOneBits(0u) % 32u)), ~0u);
}

