struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec3<bool>,
    c: vec3<i32>,
    d: f32,
}

struct Struct_4 {
    a: vec4<f32>,
    b: Struct_3,
    c: Struct_3,
    d: bool,
    e: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> vec3<f32> {
    global0 = false;
    var var_0 = !(_wgslsmith_dot_vec2_i32(-(~u_input.b), _wgslsmith_div_vec2_i32(abs(vec2<i32>(u_input.a, -24069i)), u_input.b)) != -1i);
    let var_1 = Struct_1(select(~((vec3<i32>(-88262i, -1i, -1i) | vec3<i32>(u_input.b.x, -2147483647i, u_input.b.x)) >> (vec3<u32>(48513u, 1u, 71749u) % vec3<u32>(32u))), vec3<i32>(2147483647i, _wgslsmith_sub_i32(u_input.a, -2147483647i), -7316i), !(!all(vec3<bool>(false, false, true)))));
    global0 = all(vec4<bool>(any(vec2<bool>(true, any(vec3<bool>(true, true, true)))), false, true, any(vec2<bool>(true, true))));
    return _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1f, 1f, 1f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(518f, -374f, -184f) + vec3<f32>(-498f, -161f, -545f)), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(1547f, 319f, -422f))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-162f, 864f, 691f) + vec3<f32>(259f, -367f, -2170f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-2331f, -1000f, 553f))))));
}

fn func_2(arg_0: i32, arg_1: bool) -> vec3<f32> {
    let var_0 = vec3<f32>(1364f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1181f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -581f), _wgslsmith_f_op_f32(round(-2216f)))) + 399f))));
    let var_1 = Struct_1(vec3<i32>(1i, abs(~_wgslsmith_add_i32(u_input.a, arg_0)), (arg_0 << (31654u % 32u)) ^ ~1i));
    let var_2 = Struct_2(abs(-(~(~15592i))));
    global0 = true;
    global0 = var_2.a >= ~arg_0;
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(step(var_0, _wgslsmith_f_op_vec3_f32(func_3()))), var_0)) * _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_0.x, var_0.x, var_0.x), vec3<f32>(-633f, var_0.x, var_0.x)))))))));
}

fn func_1() -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, _wgslsmith_f_op_f32(-2284f + -1417f), 1100f))), _wgslsmith_f_op_vec3_f32(func_2(~(-26334i), firstLeadingBit(_wgslsmith_div_u32(4619u, 1u)) < _wgslsmith_mult_u32(min(49127u, 0u), _wgslsmith_dot_vec3_u32(vec3<u32>(7097u, 83663u, 23022u), vec3<u32>(1u, 4294967295u, 4294967295u)))))));
    var var_1 = all(vec2<bool>(293f == var_0.x, true));
    return !select(vec4<bool>(select(select(false, false, false), true, true), !all(vec3<bool>(false, true, false)), false, false), !vec4<bool>(any(vec2<bool>(false, false)), any(vec3<bool>(false, true, true)), true, any(vec2<bool>(false, true))), vec4<bool>(true, true, true, true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mod_vec4_i32(~(_wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, u_input.a, u_input.b.x, 13490i), vec4<i32>(u_input.b.x, u_input.a, u_input.a, u_input.b.x)), vec4<i32>(u_input.b.x, -2147483647i, -1i, u_input.b.x)) >> (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u))), _wgslsmith_mult_vec4_i32(firstTrailingBit(vec4<i32>(firstTrailingBit(u_input.a), ~u_input.a, u_input.b.x, -3151i)), firstTrailingBit((vec4<i32>(u_input.b.x, 1i, 0i, u_input.a) | vec4<i32>(u_input.b.x, u_input.a, u_input.b.x, 1i)) & (vec4<i32>(u_input.b.x, -46428i, u_input.b.x, u_input.a) & vec4<i32>(u_input.a, 22094i, 2147483647i, u_input.a)))));
    let var_1 = -599f;
    global0 = all(func_1());
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(select(reverseBits(vec2<u32>(4294967295u, 0u)), ~vec2<u32>(0u, 65577u), func_1().zw)), max(_wgslsmith_mod_u32(firstTrailingBit(23312u), 1u), min(abs(0u), firstLeadingBit(~0u))), var_0.wwx);
}

