struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: f32, arg_1: vec4<f32>) -> i32 {
    global0 = Struct_2(-(~select(global0.a, vec2<i32>(u_input.a, 36077i), true)), arg_1.x);
    global0 = Struct_2(global0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-149f, -456f, true))) * -1690f)));
    global0 = Struct_2(vec2<i32>(abs(max(u_input.a, u_input.a)), -1i | (u_input.a << (3624u % 32u))), global0.b);
    global0 = Struct_2(reverseBits(-(_wgslsmith_mult_vec2_i32(vec2<i32>(-2147483647i, 0i), vec2<i32>(global0.a.x, -41189i)) ^ vec2<i32>(global0.a.x, global0.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -637f))) + -441f));
    return u_input.a;
}

fn func_3(arg_0: Struct_2, arg_1: vec3<i32>) -> vec3<i32> {
    var var_0 = Struct_1(vec3<i32>(u_input.a, select(firstLeadingBit(1i), _wgslsmith_mult_i32(arg_1.x, 1i), true), global0.a.x));
    let var_1 = firstTrailingBit(u_input.a);
    var var_2 = _wgslsmith_clamp_vec3_i32(~arg_1 | var_0.a, min(vec3<i32>(var_0.a.x, _wgslsmith_mod_i32(-1i, global0.a.x), -2147483647i), firstLeadingBit(var_0.a)) << (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u)), (vec3<i32>(firstLeadingBit(arg_1.x), firstTrailingBit(19611i), u_input.a) ^ vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(var_1, 2147483647i, global0.a.x), arg_1), i32(-1i) * -1i, arg_1.x)) >> (_wgslsmith_mult_vec3_u32(firstTrailingBit(firstLeadingBit(vec3<u32>(0u, 1u, 1u))), ~vec3<u32>(16456u, 6421u, 1u)) % vec3<u32>(32u)));
    let var_3 = Struct_1(vec3<i32>(_wgslsmith_add_i32(firstTrailingBit(_wgslsmith_dot_vec3_i32(arg_1, var_0.a)), -15481i), 11881i, _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(_wgslsmith_mod_vec3_i32(arg_1, var_0.a), arg_1), ~(~var_0.a))));
    var_2 = var_3.a;
    return vec3<i32>(firstTrailingBit(-var_1), reverseBits(_wgslsmith_mod_i32(-2147483647i, reverseBits(-24763i))), ~(~(-abs(global0.a.x))));
}

fn func_1(arg_0: f32, arg_1: vec2<u32>) -> i32 {
    global0 = Struct_2(vec2<i32>(u_input.a, func_2(352f, vec4<f32>(_wgslsmith_f_op_f32(ceil(788f)), -327f, global0.b, 1000f))), arg_0);
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-arg_0), 622f, _wgslsmith_f_op_f32(global0.b * -364f)))) * vec3<f32>(-133f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 + global0.b) * arg_0)), arg_0));
    let var_1 = ~abs(select(vec3<u32>(_wgslsmith_div_u32(5964u, 34307u), max(arg_1.x, 103623u), _wgslsmith_add_u32(arg_1.x, arg_1.x)), max(_wgslsmith_mod_vec3_u32(vec3<u32>(arg_1.x, arg_1.x, 1u), vec3<u32>(arg_1.x, 46149u, arg_1.x)), vec3<u32>(4294967295u, 0u, 4294967295u)), true));
    let var_2 = Struct_1(_wgslsmith_mod_vec3_i32(_wgslsmith_sub_vec3_i32(firstTrailingBit(-vec3<i32>(1i, global0.a.x, -1i)), vec3<i32>(~global0.a.x, 0i, 1i)), _wgslsmith_mod_vec3_i32(~func_3(Struct_2(vec2<i32>(global0.a.x, 0i), -562f), vec3<i32>(u_input.a, u_input.a, 0i)), vec3<i32>(~global0.a.x, -43664i, global0.a.x))));
    let var_3 = any(vec3<bool>(all(vec2<bool>(false, true)), 263f > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b)), false));
    return u_input.a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_2(~firstLeadingBit(vec2<i32>(firstTrailingBit(global0.a.x), firstLeadingBit(1i))), 825f);
    let var_0 = Struct_2(vec2<i32>(firstLeadingBit(select(global0.a.x >> (49127u % 32u), -26753i, all(vec4<bool>(true, false, true, false)))), _wgslsmith_mod_i32(_wgslsmith_clamp_i32(func_1(-1189f, vec2<u32>(1u, 4294967295u)), 1i, global0.a.x ^ 23463i), _wgslsmith_dot_vec2_i32(abs(global0.a), ~vec2<i32>(38932i, 0i)))), _wgslsmith_f_op_f32(-global0.b));
    var var_1 = Struct_1(select((vec3<i32>(var_0.a.x, global0.a.x, global0.a.x) | abs(vec3<i32>(var_0.a.x, 2147483647i, -35818i))) >> (abs(reverseBits(vec3<u32>(34748u, 96942u, 0u))) % vec3<u32>(32u)), vec3<i32>(var_0.a.x, global0.a.x, func_2(var_0.b, vec4<f32>(2291f, 975f, var_0.b, 280f)) << (~1u % 32u)), true));
    var_1 = Struct_1(abs(vec3<i32>(0i & ~u_input.a, 16536i, countOneBits(var_0.a.x))));
    var var_2 = -1i;
    var_1 = Struct_1(reverseBits(var_1.a));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.b, -503f, var_0.b)), _wgslsmith_div_vec3_f32(vec3<f32>(global0.b, 1074f, 969f), vec3<f32>(970f, 236f, global0.b)))))));
}

