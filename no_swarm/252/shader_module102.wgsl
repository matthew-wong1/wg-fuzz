struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: bool,
    d: vec2<i32>,
    e: vec2<i32>,
}

struct Struct_3 {
    a: vec3<i32>,
}

struct Struct_4 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: i32,
    d: vec4<u32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 2>;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1() -> u32 {
    let var_0 = _wgslsmith_sub_u32(~_wgslsmith_dot_vec2_u32(~(~vec2<u32>(1u, 1u)), _wgslsmith_div_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(0u, 70530u), vec2<u32>(1u, 29718u)), ~vec2<u32>(113831u, 56385u))), ~65668u);
    global0 = array<Struct_1, 2>();
    global0 = array<Struct_1, 2>();
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(-2777f - -605f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -346f) * -1142f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1908f - -153f)), false))), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-249f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-977f + -432f) - _wgslsmith_f_op_f32(step(-324f, -268f)))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1869f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1521f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-444f + -2247f))))));
    let var_2 = vec4<u32>(var_0, var_0, 25638u, abs(26699u >> (var_0 % 32u)));
    return 132371u;
}

fn func_3(arg_0: Struct_3) -> u32 {
    let var_0 = vec3<u32>(min(min(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 2575u, 60485u), ~vec3<u32>(3416u, 1u, 14759u)), ~countOneBits(0u)), ~(~(~4294967295u))), ~_wgslsmith_clamp_u32(firstLeadingBit(~0u), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 68960u, 43154u), vec3<u32>(59009u, 1756u, 42550u)) ^ 1u, 7337u), 0u);
    global0 = array<Struct_1, 2>();
    let var_1 = -280f;
    let var_2 = 0i;
    var var_3 = _wgslsmith_f_op_f32(1285f - var_1);
    return 1045u;
}

fn func_2(arg_0: Struct_4) -> u32 {
    global0 = array<Struct_1, 2>();
    let var_0 = _wgslsmith_mod_i32(-((-42528i ^ u_input.a.x) >> (~53101u % 32u)), _wgslsmith_add_i32(firstTrailingBit(u_input.b.x), reverseBits(-1i))) ^ u_input.a.x;
    var var_1 = -803f;
    var_1 = 3175f;
    let var_2 = -434f;
    return func_3(Struct_3(~(-u_input.a.zzz))) | (_wgslsmith_mult_u32(1u, ~(~4294967295u)) | _wgslsmith_add_u32(_wgslsmith_clamp_u32(~32419u, _wgslsmith_mult_u32(0u, 27961u), firstLeadingBit(28439u)), ~18415u));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 2>();
    let var_0 = all(vec3<bool>(!select(any(vec4<bool>(true, true, false, true)), all(vec2<bool>(false, false)), true), all(vec2<bool>(true, false)), any(vec2<bool>(true, all(vec4<bool>(true, false, false, false))))));
    global0 = array<Struct_1, 2>();
    global0 = array<Struct_1, 2>();
    global0 = array<Struct_1, 2>();
    global0 = array<Struct_1, 2>();
    var var_1 = !vec2<bool>(var_0, false);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.xzx, _wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(_wgslsmith_sub_vec4_i32(u_input.a, u_input.b), ~vec4<i32>(u_input.b.x, 0i, u_input.b.x, 628i)) | (u_input.b & firstLeadingBit(vec4<i32>(u_input.a.x, u_input.b.x, u_input.b.x, u_input.b.x))), -_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a.x, 11217i, u_input.b.x, 0i), u_input.a)), -(~select(~u_input.a.x, u_input.b.x, var_0)), ~(~firstLeadingBit(~vec4<u32>(4294967295u, 69974u, 4294967295u, 47587u))), vec4<u32>(_wgslsmith_add_u32(43972u & func_1(), select(~4294967295u, max(47177u, 83984u), false | var_0)), _wgslsmith_dot_vec3_u32(abs(vec3<u32>(1u, 1u, 1u)), vec3<u32>(8838u, func_2(Struct_4(vec2<f32>(520f, -659f))), 58871u)), 20771u, _wgslsmith_sub_u32(firstTrailingBit(~25499u), reverseBits(1u))));
}

