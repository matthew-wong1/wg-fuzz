struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec4<f32>,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<u32>,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(322f, -2581f, -280f, 199f);

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: vec4<i32>) -> u32 {
    var var_0 = vec4<u32>(countOneBits(_wgslsmith_dot_vec4_u32(select(vec4<u32>(24711u, 12380u, 6354u, u_input.a), _wgslsmith_mod_vec4_u32(vec4<u32>(10340u, 20631u, u_input.d.x, u_input.e), vec4<u32>(u_input.a, u_input.d.x, 2575u, 28505u)), false), reverseBits(vec4<u32>(4294967295u, u_input.a, u_input.c.x, u_input.c.x) | vec4<u32>(0u, 12355u, 49202u, 0u)))), reverseBits(1u), ~10020u, ~126040u);
    var var_1 = Struct_2(vec2<u32>(~3840u, ~4294967295u), Struct_1(arg_0.yx));
    var var_2 = _wgslsmith_div_u32(select(min(~(~7846u), u_input.d.x), ~var_0.x, var_1.b.a.x < firstTrailingBit(37922i)), u_input.a);
    let var_3 = _wgslsmith_f_op_f32(global0.x - -288f);
    var_0 = vec4<u32>(~(~(~var_1.a.x)), 0u >> (_wgslsmith_dot_vec4_u32(countOneBits(reverseBits(vec4<u32>(69391u, var_1.a.x, u_input.a, 4294967295u))), _wgslsmith_div_vec4_u32(vec4<u32>(var_0.x, 4294967295u, 1u, 4294967295u) & vec4<u32>(var_1.a.x, var_0.x, 4294967295u, 0u), abs(vec4<u32>(var_0.x, 1u, var_0.x, var_0.x)))) % 32u), 1u, 1u);
    return _wgslsmith_add_u32(abs(23071u), 67976u);
}

fn func_3(arg_0: vec4<f32>, arg_1: u32) -> vec2<i32> {
    global0 = _wgslsmith_f_op_vec4_f32(round(arg_0));
    let var_0 = ~u_input.c.x ^ ~4294967295u;
    let var_1 = Struct_2(~(reverseBits(reverseBits(vec2<u32>(4294967295u, 1u))) | u_input.c.xy), Struct_1(firstLeadingBit(vec2<i32>(~u_input.b, ~1i))));
    var var_2 = reverseBits(firstTrailingBit(4294967295u));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x));
    return -countOneBits(select(min(vec2<i32>(0i, -29250i), var_1.b.a), ~vec2<i32>(u_input.b, var_1.b.a.x), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false))) >> (vec2<u32>(~47506u, ~1u) % vec2<u32>(32u)));
}

fn func_1(arg_0: vec3<u32>, arg_1: Struct_3, arg_2: bool, arg_3: Struct_3) -> vec2<i32> {
    global0 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.b.x, global0.x, _wgslsmith_f_op_f32(162f * -648f), _wgslsmith_f_op_f32(f32(-1f) * -1754f)) + vec4<f32>(_wgslsmith_f_op_f32(min(arg_1.b.x, 1025f)), _wgslsmith_f_op_f32(min(arg_3.a, -163f)), _wgslsmith_f_op_f32(-global0.x), -1184f)))));
    let var_0 = select(!select(vec4<bool>(arg_2, true, arg_2 || false, true), select(!vec4<bool>(arg_2, arg_2, arg_2, false), vec4<bool>(arg_2, arg_2, arg_2, arg_2), vec4<bool>(false, arg_2, false, false)), !vec4<bool>(false, true, arg_2, arg_2)), vec4<bool>(false, true, abs(abs(1u)) >= ~arg_1.c, true), vec4<bool>(!any(!vec3<bool>(true, arg_2, false)), arg_2, arg_2, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.b.x)) >= _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_1.a)))));
    let var_1 = var_0.xxx;
    let var_2 = arg_1;
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-arg_3.a), _wgslsmith_f_op_f32(-arg_3.a), _wgslsmith_f_op_f32(exp2(global0.x)), _wgslsmith_f_op_f32(min(460f, var_2.a))), _wgslsmith_f_op_vec4_f32(-arg_3.b)) + vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(global0.x, arg_1.a)))), _wgslsmith_f_op_f32(exp2(global0.x)), _wgslsmith_f_op_f32(-499f * _wgslsmith_f_op_f32(-738f * arg_1.a)), _wgslsmith_f_op_f32(f32(-1f) * -624f))));
    return func_3(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(arg_1.b * var_2.b), _wgslsmith_div_vec4_f32(vec4<f32>(718f, arg_3.a, arg_3.b.x, 1288f), arg_1.b))) - _wgslsmith_f_op_vec4_f32(abs(arg_3.b))), arg_1.b), ~abs(~func_2(vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_i32(firstTrailingBit(func_1(~u_input.c, Struct_3(global0.x, vec4<f32>(-168f, 1000f, 1610f, 1000f), u_input.d.x), false, Struct_3(global0.x, vec4<f32>(global0.x, -789f, global0.x, -1000f), 0u))), -_wgslsmith_sub_vec2_i32(abs(vec2<i32>(u_input.b, u_input.b)), max(vec2<i32>(3129i, u_input.b), vec2<i32>(u_input.b, 21420i)))), firstTrailingBit(select(vec4<u32>(19519u, u_input.c.x, u_input.e, u_input.c.x) << (vec4<u32>(4294967295u, u_input.d.x, u_input.d.x, u_input.c.x) % vec4<u32>(32u)), vec4<u32>(u_input.d.x, u_input.a, 4294967295u, 1u), select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, true), false))) << (_wgslsmith_div_vec4_u32(~_wgslsmith_mod_vec4_u32(vec4<u32>(16515u, u_input.e, u_input.a, u_input.a), vec4<u32>(82057u, 0u, 1u, 0u)), vec4<u32>(1u, u_input.a, 1u, 0u) << ((vec4<u32>(u_input.a, 66427u, u_input.e, 4294967295u) | vec4<u32>(u_input.c.x, 759u, u_input.a, 54307u)) % vec4<u32>(32u))) % vec4<u32>(32u)), 305f, firstTrailingBit(_wgslsmith_clamp_u32(_wgslsmith_add_u32(u_input.e, 0u), _wgslsmith_mult_u32(1u, 8446u), 15576u)));
}

