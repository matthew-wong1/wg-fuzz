struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec2<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec3<f32>,
    d: u32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_1, arg_2: Struct_2, arg_3: Struct_1) -> f32 {
    var var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.c.a, 557f, arg_3.a, arg_3.a)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-176f, 362f, arg_3.a, 1485f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-307f, -690f, -2639f, arg_3.a)), vec4<bool>(true, true, false, true))), vec4<f32>(_wgslsmith_f_op_f32(abs(1160f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(arg_0.c.a)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(arg_1.a, -482f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_3.a)))), -(-2147483647i << (u_input.a.x % 32u)) > _wgslsmith_sub_i32(-2147483647i, arg_0.d))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(541f, arg_1.a, _wgslsmith_f_op_f32(arg_0.a.a * arg_0.c.a), -1473f)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(vec4<f32>(752f, arg_1.a, arg_1.a, -1000f), vec4<f32>(arg_0.c.a, -1545f, arg_0.c.a, -1409f)))))));
    let var_1 = arg_0;
    var_0 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1820f), -119f) - arg_3.a), arg_1.a), arg_0.a.a, var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1236f)));
    var var_2 = ~vec4<u32>(0u, 4294967295u, ~_wgslsmith_add_u32(firstTrailingBit(1060u), arg_2.a.x), arg_2.a.x);
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a.a * arg_1.a))))) - -149f);
    return -320f;
}

fn func_2(arg_0: u32, arg_1: vec4<bool>) -> i32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(Struct_3(Struct_1(465f), false, Struct_1(763f), -30928i), Struct_1(202f), Struct_2(vec4<u32>(u_input.a.x, 4294967295u, 4294967295u, u_input.a.x), vec2<i32>(2147483647i, 2147483647i)), Struct_1(-2099f))), -1787f), 398f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2258f, 1000f)))) + vec3<f32>(1000f, 1780f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1062f)))));
    let var_1 = Struct_2(abs(_wgslsmith_mod_vec4_u32(~_wgslsmith_div_vec4_u32(vec4<u32>(82835u, 11622u, arg_0, 1u), vec4<u32>(u_input.a.x, 48992u, arg_0, 33467u)), ~vec4<u32>(u_input.a.x, 2081u, 22085u, u_input.a.x))), _wgslsmith_mult_vec2_i32(-(~vec2<i32>(1i, 1i)), _wgslsmith_mult_vec2_i32(~firstTrailingBit(vec2<i32>(-4571i, -2147483647i)), min(vec2<i32>(1i, 1i), firstTrailingBit(vec2<i32>(28817i, 19491i))))));
    let var_2 = ~(~(~(~0u >> (1u % 32u))));
    let var_3 = var_1;
    let var_4 = -36469i;
    return -6860i;
}

fn func_1(arg_0: u32) -> StorageBuffer {
    let var_0 = ~(~(~u_input.a)) & vec2<u32>(0u, u_input.a.x);
    var var_1 = ~_wgslsmith_div_vec3_i32(vec3<i32>(1i, 1i, 1i), vec3<i32>(_wgslsmith_clamp_i32(_wgslsmith_add_i32(-1i, 18109i), -31322i, abs(0i)), _wgslsmith_mod_i32(func_2(arg_0, vec4<bool>(false, true, true, true)), 0i), -24489i));
    var_1 = -(vec3<i32>(-1i) * -firstLeadingBit(vec3<i32>(var_1.x, var_1.x, var_1.x) >> (vec3<u32>(u_input.a.x, 0u, arg_0) % vec3<u32>(32u))));
    var var_2 = Struct_1(631f);
    let var_3 = firstTrailingBit(arg_0);
    return StorageBuffer(u_input.a, ~reverseBits(vec4<u32>(~4294967295u, ~var_0.x, _wgslsmith_sub_u32(var_0.x, 4294967295u), ~u_input.a.x)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.a, 104f, -759f)), _wgslsmith_div_vec3_f32(vec3<f32>(-1623f, var_2.a, 1885f), vec3<f32>(1255f, var_2.a, var_2.a)))) * _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.a, var_2.a, 1959f)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_2.a, -1000f, var_2.a), vec3<f32>(var_2.a, var_2.a, var_2.a)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, var_2.a, var_2.a))))), 35687u, vec2<u32>(~1u, (~u_input.a.x & 52776u) << (firstLeadingBit(16822u) % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = reverseBits(-(vec3<i32>(-1i) * -vec3<i32>(1i, 1i, 1i)));
    let x = u_input.a;
    s_output = func_1(~u_input.a.x);
}

