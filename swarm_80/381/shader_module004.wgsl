struct Struct_1 {
    a: u32,
    b: vec4<i32>,
    c: vec2<f32>,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec3<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: i32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1) -> vec3<f32> {
    var var_0 = Struct_2(Struct_1(147497u, select(arg_1.b, min(_wgslsmith_div_vec4_i32(arg_0.a.b, arg_0.b.b), vec4<i32>(0i, arg_1.b.x, u_input.b.x, 0i)), vec4<bool>(all(vec3<bool>(false, arg_1.d, false)), arg_1.d, true, false)), _wgslsmith_f_op_vec2_f32(arg_0.a.c * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(273f, arg_0.a.c.x), arg_1.c)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-651f, 110f) * arg_0.a.c), select(vec2<bool>(true, arg_1.d), vec2<bool>(arg_1.d, false), vec2<bool>(false, arg_1.d))))), all(select(select(vec4<bool>(arg_0.a.d, arg_1.d, false, arg_0.a.d), vec4<bool>(false, arg_0.b.d, false, arg_0.b.d), vec4<bool>(arg_1.d, false, arg_1.d, true)), vec4<bool>(false, false, arg_0.b.d, true), !vec4<bool>(arg_1.d, false, true, arg_1.d)))), arg_1);
    var_0 = arg_0;
    var_0 = arg_0;
    var var_1 = var_0.a.d;
    let var_2 = select(select(vec4<bool>(!(!arg_0.a.d), any(vec4<bool>(true, true, true, true)), all(vec4<bool>(true, arg_1.d, arg_0.b.d, var_0.b.d)) || !arg_1.d, !(arg_1.d | false)), !(!vec4<bool>(true, false, arg_0.b.d, var_0.a.d)), vec4<bool>(false & all(vec2<bool>(false, true)), 1u >= u_input.a, true, arg_1.d)), !vec4<bool>(!select(false, arg_1.d, arg_1.d), var_0.b.d, any(!vec2<bool>(false, var_0.a.d)), false), arg_0.b.d);
    return _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(130f, -501f, _wgslsmith_div_f32(var_0.b.c.x, arg_1.c.x)))))));
}

fn func_2() -> vec2<f32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(322f, -1250f, -113f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(Struct_2(Struct_1(u_input.a, vec4<i32>(u_input.b.x, -2147483647i, u_input.b.x, u_input.d.x), vec2<f32>(-534f, -1000f), false), Struct_1(u_input.a, vec4<i32>(2147483647i, u_input.b.x, 1i, 29668i), vec2<f32>(-1754f, 1269f), false)), Struct_1(1u, vec4<i32>(-2147483647i, u_input.b.x, -1i, 2147483647i), vec2<f32>(1645f, -1642f), false))) + vec3<f32>(1040f, 182f, 862f))))));
    let var_1 = !vec3<bool>(any(vec2<bool>(true, true)), !any(select(vec2<bool>(false, true), vec2<bool>(true, true), false)), any(vec4<bool>(true, true, true, true)) | true);
    var var_2 = !any(!(!(!vec2<bool>(var_1.x, false))));
    let var_3 = _wgslsmith_div_vec3_i32(~(~(~vec3<i32>(2147483647i, u_input.d.x, 28649i)) & vec3<i32>(max(u_input.b.x, -2147483647i), firstLeadingBit(u_input.b.x), abs(u_input.b.x))), max(max(vec3<i32>(u_input.d.x, -u_input.b.x, _wgslsmith_add_i32(u_input.b.x, u_input.d.x)), _wgslsmith_mult_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.b.x, -1003i, 27861i), vec3<i32>(-18572i, u_input.b.x, u_input.d.x), vec3<i32>(u_input.b.x, 1682i, 0i)), ~vec3<i32>(u_input.b.x, -2147483647i, -1i))), ~(-vec3<i32>(u_input.b.x, 1i, -2147483647i)) | (max(vec3<i32>(35443i, 1i, u_input.b.x), vec3<i32>(u_input.d.x, u_input.d.x, u_input.b.x)) ^ ~vec3<i32>(u_input.b.x, u_input.d.x, 24483i))));
    return vec2<f32>(var_0.x, var_0.x);
}

fn func_1() -> vec4<u32> {
    let var_0 = Struct_1(u_input.a, ~(_wgslsmith_mult_vec4_i32(vec4<i32>(42576i, 0i, u_input.b.x, u_input.b.x), vec4<i32>(u_input.d.x, u_input.b.x, 23016i, u_input.d.x)) >> (vec4<u32>(u_input.c.x, 0u, 1u, 1u) % vec4<u32>(32u))) & -vec4<i32>(0i, -2147483647i, u_input.b.x ^ u_input.d.x, select(u_input.b.x, 1i, true)), _wgslsmith_f_op_vec2_f32(func_2()), true);
    let var_1 = -232f;
    var var_2 = _wgslsmith_dot_vec4_u32(~vec4<u32>((u_input.a << (26792u % 32u)) << (_wgslsmith_mod_u32(var_0.a, u_input.a) % 32u), ~max(0u, 1u), max(~var_0.a, countOneBits(4294967295u)), _wgslsmith_sub_u32(_wgslsmith_mod_u32(4294967295u, 1u), 1u & var_0.a)), vec4<u32>(~firstTrailingBit(var_0.a), 4294967295u, ~abs(~u_input.c.x), _wgslsmith_sub_u32(~(~var_0.a), u_input.a)));
    var_2 = ~_wgslsmith_mod_u32(~1u, min(countOneBits(reverseBits(u_input.c.x)), 0u));
    var_2 = 21056u;
    return ~(~vec4<u32>(var_0.a, u_input.c.x, 0u, min(firstTrailingBit(4294967295u), select(1u, 1u, var_0.d))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = countOneBits(min(-1i, i32(-1i) * -2147483647i));
    var var_1 = _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(~func_1(), vec4<u32>(~u_input.c.x, u_input.c.x, u_input.c.x, ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, u_input.a, 1u, 24170u), vec4<u32>(21318u, u_input.a, u_input.c.x, 28969u)))), ~reverseBits(max(vec4<u32>(u_input.c.x, 6097u, u_input.c.x, u_input.c.x), vec4<u32>(1u, 1u, 31170u, u_input.a) | vec4<u32>(3919u, u_input.c.x, 67790u, 4294967295u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -1184f), _wgslsmith_div_vec2_u32(abs(vec2<u32>(u_input.a, ~u_input.a)), u_input.c.xy), var_0, min(firstTrailingBit(-select(vec3<i32>(var_0, 29431i, 82458i), vec3<i32>(var_0, -2147483647i, 0i), vec3<bool>(true, true, true))), _wgslsmith_clamp_vec3_i32(countOneBits(vec3<i32>(33659i, u_input.b.x, -13880i)), _wgslsmith_div_vec3_i32(max(vec3<i32>(u_input.d.x, 1i, u_input.d.x), vec3<i32>(-1i, u_input.b.x, var_0)), _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.d.x, -7161i, 0i), vec3<i32>(var_0, 1i, var_0), vec3<i32>(0i, -1i, 33120i))), select(_wgslsmith_add_vec3_i32(vec3<i32>(4934i, -40074i, var_0), vec3<i32>(var_0, -2147483647i, 2961i)), vec3<i32>(4504i, -1i, -2147483647i) & vec3<i32>(-1i, u_input.d.x, var_0), any(vec4<bool>(false, true, true, false))))));
}

