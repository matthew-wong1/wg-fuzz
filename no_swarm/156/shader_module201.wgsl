struct Struct_1 {
    a: i32,
    b: i32,
    c: vec3<f32>,
    d: vec3<u32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: vec4<u32>,
    d: vec4<i32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<f32>,
    c: f32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 27> = array<vec4<u32>, 27>(vec4<u32>(53607u, 4294967295u, 4971u, 4294967295u), vec4<u32>(4294967295u, 4294967295u, 0u, 36112u), vec4<u32>(4294967295u, 95117u, 21143u, 50674u), vec4<u32>(4294967295u, 1u, 7297u, 1u), vec4<u32>(1u, 19217u, 1u, 4294967295u), vec4<u32>(87618u, 1u, 0u, 31292u), vec4<u32>(1u, 4294967295u, 65883u, 87106u), vec4<u32>(0u, 4294967295u, 30499u, 6650u), vec4<u32>(4294967295u, 0u, 43967u, 4294967295u), vec4<u32>(0u, 96156u, 0u, 0u), vec4<u32>(20208u, 58339u, 73452u, 46536u), vec4<u32>(0u, 4073u, 33486u, 0u), vec4<u32>(31610u, 25316u, 1u, 4580u), vec4<u32>(7502u, 7039u, 1u, 17039u), vec4<u32>(1u, 0u, 16845u, 4294967295u), vec4<u32>(26603u, 4294967295u, 18277u, 97880u), vec4<u32>(0u, 1u, 1u, 1u), vec4<u32>(1u, 1u, 73048u, 0u), vec4<u32>(1u, 0u, 1u, 4294967295u), vec4<u32>(17132u, 31646u, 1u, 20277u), vec4<u32>(4294967295u, 4294967295u, 4294967295u, 20747u), vec4<u32>(1u, 0u, 4294967295u, 81223u), vec4<u32>(4294967295u, 4294967295u, 10965u, 0u), vec4<u32>(24799u, 82363u, 4294967295u, 4294967295u), vec4<u32>(89720u, 0u, 41433u, 21002u), vec4<u32>(4294967295u, 1u, 4294967295u, 0u), vec4<u32>(32581u, 15727u, 5606u, 8838u));

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: vec2<i32>) -> u32 {
    global0 = array<vec4<u32>, 27>();
    let var_0 = _wgslsmith_dot_vec3_i32(~_wgslsmith_mult_vec3_i32(vec3<i32>(countOneBits(arg_2.x), _wgslsmith_clamp_i32(arg_2.x, -2147483647i, 0i), countOneBits(arg_1.b)), vec3<i32>(10955i, firstLeadingBit(u_input.a), arg_1.b >> (0u % 32u))), ((_wgslsmith_div_vec3_i32(vec3<i32>(u_input.a, -75701i, arg_2.x), vec3<i32>(arg_1.a, 0i, arg_2.x)) >> (arg_1.d % vec3<u32>(32u))) << (arg_1.d % vec3<u32>(32u))) & vec3<i32>(_wgslsmith_mult_i32(-2147483647i, -u_input.b), 1i, min(u_input.a, -2147483647i)));
    let var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.c.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(604f - arg_1.c.x))), arg_1.c.x) - _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(539f, arg_1.c.x), _wgslsmith_div_vec2_f32(arg_1.c.zx, arg_1.c.zz)))))));
    var var_2 = arg_1;
    let var_3 = ~(-vec2<i32>(44260i, -10138i));
    return _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(global0[_wgslsmith_index_u32(58767u, 27u)], select(global0[_wgslsmith_index_u32(99588u, 27u)], vec4<u32>(arg_1.d.x, arg_1.d.x, arg_1.d.x, var_2.d.x), vec4<bool>(true, true, false, true))) >> (0u % 32u), _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 4294967295u) >> (reverseBits(vec2<u32>(var_2.d.x, 4294967295u)) % vec2<u32>(32u)), var_2.d.yx)) | max(~31779u, 4294967295u);
}

fn func_2(arg_0: vec2<bool>) -> Struct_2 {
    let var_0 = Struct_2(vec3<i32>(max(i32(-1i) * -32960i, -u_input.b) >> (_wgslsmith_div_u32(~14661u, ~14028u) % 32u), u_input.a, u_input.a ^ ~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, -749i, 32159i, 34028i), vec4<i32>(2147483647i, 3288i, 15672i, 17471i))), Struct_1(firstTrailingBit(0i), max(u_input.a, -10622i), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(-241f, 467f, 707f) * vec3<f32>(-205f, 1000f, 1069f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1059f, 1486f, -150f)))), vec3<f32>(256f, 440f, -556f)), reverseBits(abs(vec3<u32>(437u, 1u, 4294967295u)))), ~vec4<u32>(4294967295u, 1u, 8114u, reverseBits(func_3(0u, Struct_1(26340i, -26455i, vec3<f32>(1000f, -163f, -224f), vec3<u32>(39982u, 15891u, 1860u)), vec2<i32>(-2147483647i, u_input.b)))), _wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(u_input.a, u_input.a, 1i, u_input.a)), select(vec4<i32>(-32597i, -1i, u_input.a, 2147483647i), vec4<i32>(-46475i, u_input.a, -1i, u_input.b), vec4<bool>(arg_0.x, arg_0.x, true, arg_0.x))), min(u_input.b, -u_input.a), firstLeadingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, -1i, u_input.a), vec3<i32>(15931i, u_input.a, 30204i))), u_input.a), ~reverseBits(abs(vec4<i32>(u_input.b, -4508i, 0i, 2147483647i)))), Struct_1(_wgslsmith_dot_vec4_i32(select(abs(vec4<i32>(27238i, 0i, u_input.b, u_input.b)), ~vec4<i32>(u_input.b, 26079i, u_input.b, u_input.a), vec4<bool>(true, false, arg_0.x, false)), -countOneBits(vec4<i32>(u_input.a, 0i, 2147483647i, 45969i))), _wgslsmith_dot_vec2_i32(~abs(vec2<i32>(62431i, u_input.b)), vec2<i32>(_wgslsmith_sub_i32(u_input.a, u_input.a), u_input.b)), _wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1938f, 1159f, 640f)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-2296f, -1316f, -1879f), vec3<f32>(-1092f, -1878f, -170f), true)), vec3<bool>(arg_0.x, false, false)))), select(_wgslsmith_add_vec3_u32(vec3<u32>(2206u, 38012u, 72059u), _wgslsmith_mod_vec3_u32(vec3<u32>(1326u, 25045u, 4317u), vec3<u32>(4294967295u, 4294967295u, 4294967295u))), _wgslsmith_clamp_vec3_u32(~vec3<u32>(0u, 1u, 3633u), _wgslsmith_sub_vec3_u32(vec3<u32>(37119u, 110611u, 14290u), vec3<u32>(11183u, 43295u, 1u)), vec3<u32>(1u, 4294967295u, 4294967295u)), false)));
    var var_1 = var_0.b.c;
    let var_2 = var_0.e;
    let var_3 = ~_wgslsmith_sub_i32(max(0i, -2147483647i << (var_0.c.x % 32u)) >> (_wgslsmith_sub_u32(1u, var_0.b.d.x) % 32u), -1554i);
    global0 = array<vec4<u32>, 27>();
    return Struct_2(-reverseBits(firstLeadingBit(_wgslsmith_mod_vec3_i32(var_0.d.yzz, var_0.d.zwz))), Struct_1(~0i, var_3, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) * _wgslsmith_f_op_vec3_f32(trunc(var_2.c)))), var_2.d), _wgslsmith_clamp_vec4_u32(vec4<u32>(~countOneBits(var_2.d.x), 1u, 0u << (0u % 32u), _wgslsmith_add_u32(_wgslsmith_sub_u32(4294967295u, 67401u), var_0.e.d.x)), vec4<u32>(var_2.d.x, _wgslsmith_mult_u32(~1u, 1u), var_0.b.d.x ^ 0u, _wgslsmith_clamp_u32(34307u, _wgslsmith_clamp_u32(var_0.b.d.x, 77231u, 1u), ~var_0.c.x)), max(~vec4<u32>(4294967295u, 54908u, 19237u, 58794u), _wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(var_0.c.x, 29470u, 41911u, var_2.d.x), vec4<u32>(7087u, var_2.d.x, var_0.c.x, var_0.b.d.x)), abs(var_0.c)))), vec4<i32>(reverseBits(~(~var_3)), countOneBits(_wgslsmith_clamp_i32(1i, var_2.b, 1i) >> (select(var_0.c.x, var_0.b.d.x, false) % 32u)), ~var_0.a.x, ~(-29500i)), Struct_1(-var_0.a.x, _wgslsmith_mod_i32(var_3, _wgslsmith_dot_vec2_i32(~vec2<i32>(var_2.b, var_0.d.x), var_0.d.yz)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b.c.x, var_2.c.x, var_2.c.x))), var_0.c.wzz));
}

fn func_4(arg_0: vec2<i32>, arg_1: vec2<u32>, arg_2: Struct_1, arg_3: Struct_2) -> vec2<bool> {
    var var_0 = select(vec3<bool>(!all(vec2<bool>(true, true)), _wgslsmith_f_op_f32(-198f - _wgslsmith_f_op_f32(max(-297f, arg_2.c.x))) <= _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_2.c.x), -355f)), true), select(select(vec3<bool>(arg_3.b.c.x < arg_3.e.c.x, any(vec4<bool>(false, true, true, true)), true), select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), arg_3.e.c.x < 272f), vec3<bool>(true, true, true)), select(!select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(false, true, false)), select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), false)), true), select(select(select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(false, true, true)), vec3<bool>(true, true, true), any(vec2<bool>(true, false))), vec3<bool>(true, true, true), select(select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, true, false)), vec3<bool>(true, true, true), vec3<bool>(false, true, true)))), true);
    let var_1 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(-307f * -972f), _wgslsmith_f_op_f32(trunc(-1066f)), _wgslsmith_f_op_f32(arg_2.c.x + 1163f), arg_2.c.x))))));
    let var_2 = vec2<bool>(true, false);
    var var_3 = arg_3.d.x;
    global0 = array<vec4<u32>, 27>();
    return vec2<bool>(true, var_0.x);
}

fn func_1(arg_0: vec2<i32>) -> vec3<i32> {
    global0 = array<vec4<u32>, 27>();
    global0 = array<vec4<u32>, 27>();
    let var_0 = select(select(vec2<bool>(true, all(vec4<bool>(true, true, true, true))), vec2<bool>(!select(false, false, true), true), any(select(select(vec2<bool>(true, false), vec2<bool>(true, false), false), vec2<bool>(true, true), vec2<bool>(true, true)))), !(!func_4(abs(vec2<i32>(-2147483647i, u_input.a)), vec2<u32>(1u, 1u), Struct_1(arg_0.x, u_input.a, vec3<f32>(739f, 1055f, 828f), vec3<u32>(143240u, 0u, 1u)), func_2(vec2<bool>(true, false)))), true);
    var var_1 = firstTrailingBit(_wgslsmith_sub_vec4_u32(firstTrailingBit(vec4<u32>(1u, ~4294967295u, ~33270u, 1u)), global0[_wgslsmith_index_u32(~1u, 27u)]));
    var var_2 = func_2(!select(func_4(select(arg_0, arg_0, vec2<bool>(var_0.x, true)), _wgslsmith_div_vec2_u32(vec2<u32>(var_1.x, var_1.x), vec2<u32>(7149u, var_1.x)), Struct_1(u_input.a, arg_0.x, vec3<f32>(-1530f, -546f, -1172f), vec3<u32>(var_1.x, var_1.x, 4294967295u)), Struct_2(vec3<i32>(2147483647i, arg_0.x, arg_0.x), Struct_1(0i, 44670i, vec3<f32>(1553f, 1065f, -601f), vec3<u32>(1u, 4294967295u, 0u)), global0[_wgslsmith_index_u32(var_1.x, 27u)], vec4<i32>(u_input.a, 1i, arg_0.x, arg_0.x), Struct_1(arg_0.x, arg_0.x, vec3<f32>(1376f, 1333f, -633f), vec3<u32>(13589u, 110122u, 4294967295u)))), vec2<bool>(true, true), true)).b;
    return vec3<i32>(~_wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(arg_0.x, arg_0.x, 2147483647i)), abs(vec3<i32>(var_2.b, 0i, 85638i)) << (select(vec3<u32>(0u, var_2.d.x, 1u), var_1.zzz, var_0.x) % vec3<u32>(32u))), _wgslsmith_clamp_i32(0i, -1i, max(min(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, -21478i, u_input.a, -66180i), vec4<i32>(26393i, arg_0.x, var_2.b, -2147483647i)), u_input.b), 789i ^ var_2.a)), u_input.a);
}

fn func_5(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: vec3<f32>, arg_3: Struct_2) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(select(1000f, arg_2.x, arg_1.x));
    let var_1 = arg_2.zy;
    let var_2 = _wgslsmith_clamp_u32(~arg_0.e.d.x, abs(0u) >> (0u % 32u), arg_3.e.d.x);
    var_0 = 1022f;
    let var_3 = arg_0.b;
    return func_2(select(arg_1, !vec2<bool>(select(false, arg_1.x, arg_1.x), u_input.b <= u_input.b), arg_1.x));
}

fn func_6(arg_0: vec2<u32>, arg_1: Struct_2) -> Struct_1 {
    let var_0 = any(vec3<bool>(!all(vec3<bool>(true, true, true)), !all(vec3<bool>(false, true, false)) || (1544u == _wgslsmith_dot_vec4_u32(global0[_wgslsmith_index_u32(1u, 27u)], arg_1.c)), !all(select(vec2<bool>(true, true), vec2<bool>(false, false), true))));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(arg_1.b.c.x, _wgslsmith_f_op_f32(sign(arg_1.e.c.x)), 484f), vec3<f32>(_wgslsmith_f_op_f32(-347f - -1349f), _wgslsmith_f_op_f32(f32(-1f) * -1000f), 781f)) + arg_1.e.c));
    global0 = array<vec4<u32>, 27>();
    var var_2 = -arg_1.e.b == _wgslsmith_add_i32(0i, arg_1.b.a ^ arg_1.b.b);
    var_2 = _wgslsmith_div_f32(arg_1.e.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-636f * var_1.x) * arg_1.e.c.x))) <= arg_1.b.c.x;
    return func_5(func_2(select(select(select(vec2<bool>(false, false), vec2<bool>(var_0, false), vec2<bool>(var_0, var_0)), vec2<bool>(var_0, var_0), var_0 | var_0), vec2<bool>(15609u > arg_1.e.d.x, u_input.b != -14886i), select(!vec2<bool>(var_0, false), !vec2<bool>(var_0, false), true))), vec2<bool>(select(2147483647i, 1i, all(vec2<bool>(var_0, var_0))) < ~(~41158i), var_0), func_2(vec2<bool>(select(var_0 | var_0, true, !var_0), all(vec3<bool>(false, var_0, var_0)))).b.c, func_5(Struct_2(arg_1.d.yxw & vec3<i32>(arg_1.b.a, -1i, u_input.a), arg_1.b, _wgslsmith_mult_vec4_u32(~global0[_wgslsmith_index_u32(arg_1.c.x, 27u)], abs(vec4<u32>(arg_1.b.d.x, arg_0.x, arg_1.b.d.x, arg_0.x))), firstLeadingBit(vec4<i32>(arg_1.d.x, u_input.a, 0i, 2147483647i)), arg_1.b), select(func_4(_wgslsmith_div_vec2_i32(arg_1.a.yx, vec2<i32>(arg_1.e.a, 35641i)), arg_1.c.yz >> (arg_1.c.wx % vec2<u32>(32u)), Struct_1(17158i, arg_1.d.x, vec3<f32>(var_1.x, arg_1.e.c.x, arg_1.b.c.x), vec3<u32>(arg_0.x, 1u, 0u)), Struct_2(vec3<i32>(-2147483647i, 1i, 28568i), Struct_1(7930i, 1i, arg_1.b.c, vec3<u32>(5900u, arg_0.x, arg_1.b.d.x)), global0[_wgslsmith_index_u32(108824u, 27u)], arg_1.d, arg_1.b)), !func_4(vec2<i32>(u_input.b, u_input.a), arg_1.b.d.zx, Struct_1(u_input.b, -2689i, arg_1.e.c, vec3<u32>(0u, arg_0.x, 4294967295u)), arg_1), arg_1.b.c.x < arg_1.b.c.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(func_5(Struct_2(vec3<i32>(-4655i, -2147483647i, 1i), Struct_1(31049i, arg_1.e.a, var_1, arg_1.c.xzz), arg_1.c, arg_1.d, arg_1.e), vec2<bool>(var_0, true), vec3<f32>(161f, arg_1.b.c.x, var_1.x), arg_1).b.c)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_1))), arg_1)).b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(firstLeadingBit(~(~vec2<u32>(1u, 1u))), func_5(Struct_2(func_1(vec2<i32>(48696i, u_input.b)), Struct_1(1i, ~47988i, _wgslsmith_f_op_vec3_f32(vec3<f32>(682f, -208f, -1000f) - vec3<f32>(-682f, -161f, 615f)), abs(vec3<u32>(5989u, 4294967295u, 1303u))), ~reverseBits(global0[_wgslsmith_index_u32(1u, 27u)]), -_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b, 2147483647i, -2147483647i, 11130i), vec4<i32>(15373i, u_input.a, 18959i, u_input.b)), Struct_1(u_input.a, 1i, vec3<f32>(762f, 202f, 232f), vec3<u32>(4294967295u, 32476u, 32692u))), vec2<bool>(true, true), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -639f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(698f + -967f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(-529f, -1000f))))), func_2(vec2<bool>(true, true))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0.c.x)) + _wgslsmith_f_op_f32(320f - var_0.c.x)) + _wgslsmith_f_op_f32(f32(-1f) * -1307f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_0.c.x)) - 380f)))) * _wgslsmith_f_op_f32(-var_0.c.x));
    let var_2 = !all(vec2<bool>(true, true));
    let var_3 = func_5(func_5(Struct_2(-_wgslsmith_add_vec3_i32(vec3<i32>(u_input.b, var_0.b, -2147483647i), vec3<i32>(var_0.a, u_input.b, var_0.b)), Struct_1(~var_0.a, func_5(Struct_2(vec3<i32>(var_0.b, u_input.b, 0i), var_0, vec4<u32>(var_0.d.x, var_0.d.x, 1u, 4294967295u), vec4<i32>(var_0.b, -1i, 6742i, var_0.a), var_0), vec2<bool>(false, var_2), var_0.c, Struct_2(vec3<i32>(-32174i, -44383i, -688i), Struct_1(var_0.a, var_0.a, var_0.c, var_0.d), global0[_wgslsmith_index_u32(var_0.d.x, 27u)], vec4<i32>(u_input.a, -13049i, u_input.b, var_0.a), Struct_1(var_0.a, 1i, var_0.c, var_0.d))).a.x, _wgslsmith_f_op_vec3_f32(-vec3<f32>(734f, 868f, -700f)), vec3<u32>(0u, var_0.d.x, 0u)), global0[_wgslsmith_index_u32(1u, 27u)], -_wgslsmith_sub_vec4_i32(vec4<i32>(31953i, 36113i, u_input.b, 0i), vec4<i32>(u_input.a, u_input.a, 33118i, u_input.b)), var_0), !select(func_4(vec2<i32>(var_0.b, -6053i), vec2<u32>(var_0.d.x, var_0.d.x), Struct_1(var_0.a, var_0.b, var_0.c, vec3<u32>(var_0.d.x, var_0.d.x, 4294967295u)), Struct_2(vec3<i32>(u_input.b, u_input.b, 0i), var_0, vec4<u32>(var_0.d.x, 0u, 1u, var_0.d.x), vec4<i32>(u_input.a, u_input.a, 2147483647i, u_input.a), Struct_1(var_0.a, -5420i, vec3<f32>(1000f, var_0.c.x, var_0.c.x), vec3<u32>(var_0.d.x, var_0.d.x, 2678u)))), func_4(vec2<i32>(-40281i, 0i), var_0.d.yx, Struct_1(-1i, var_0.b, var_0.c, vec3<u32>(var_0.d.x, 0u, var_0.d.x)), Struct_2(vec3<i32>(var_0.a, u_input.b, -1i), var_0, global0[_wgslsmith_index_u32(var_0.d.x, 27u)], vec4<i32>(2147483647i, var_0.a, 5340i, u_input.b), var_0)), var_2), vec3<f32>(-1311f, 1000f, _wgslsmith_f_op_f32(exp2(var_0.c.x))), Struct_2(vec3<i32>(func_5(Struct_2(vec3<i32>(var_0.a, u_input.a, var_0.b), var_0, global0[_wgslsmith_index_u32(var_0.d.x, 27u)], vec4<i32>(-2147483647i, var_0.a, u_input.a, var_0.a), var_0), vec2<bool>(var_2, true), vec3<f32>(-584f, var_0.c.x, var_0.c.x), Struct_2(vec3<i32>(u_input.b, -2147483647i, 1i), Struct_1(-12616i, u_input.a, vec3<f32>(var_0.c.x, -648f, 428f), var_0.d), vec4<u32>(1u, 4294967295u, var_0.d.x, 1u), vec4<i32>(59358i, 4261i, var_0.a, var_0.b), Struct_1(55866i, 24941i, var_0.c, var_0.d))).a.x, _wgslsmith_dot_vec2_i32(vec2<i32>(1i, var_0.b), vec2<i32>(var_0.a, -1i)), i32(-1i) * -27299i), func_5(func_5(Struct_2(vec3<i32>(var_0.a, 0i, var_0.b), var_0, vec4<u32>(var_0.d.x, var_0.d.x, 30990u, 0u), vec4<i32>(var_0.a, 1i, u_input.a, var_0.b), var_0), vec2<bool>(var_2, var_2), vec3<f32>(-1266f, -2200f, var_0.c.x), Struct_2(vec3<i32>(-5861i, -4873i, 39821i), Struct_1(-1i, 2147483647i, vec3<f32>(206f, var_0.c.x, var_0.c.x), vec3<u32>(14914u, var_0.d.x, var_0.d.x)), vec4<u32>(var_0.d.x, var_0.d.x, var_0.d.x, 9915u), vec4<i32>(u_input.a, var_0.b, var_0.b, u_input.a), Struct_1(-6918i, -30763i, var_0.c, vec3<u32>(var_0.d.x, 42861u, 3841u)))), func_4(vec2<i32>(var_0.a, 34839i), var_0.d.zy, Struct_1(var_0.a, -7559i, var_0.c, var_0.d), Struct_2(vec3<i32>(-30962i, u_input.b, var_0.a), Struct_1(var_0.b, 1i, vec3<f32>(var_0.c.x, 480f, 907f), var_0.d), vec4<u32>(var_0.d.x, var_0.d.x, 9024u, var_0.d.x), vec4<i32>(10811i, -52587i, var_0.a, -68479i), Struct_1(u_input.a, u_input.b, vec3<f32>(1604f, var_0.c.x, var_0.c.x), var_0.d))), _wgslsmith_f_op_vec3_f32(-var_0.c), func_5(Struct_2(vec3<i32>(var_0.a, var_0.a, u_input.a), Struct_1(-2147483647i, 1i, vec3<f32>(-391f, 790f, var_0.c.x), vec3<u32>(1u, var_0.d.x, var_0.d.x)), vec4<u32>(0u, 0u, var_0.d.x, 1u), vec4<i32>(u_input.b, 41208i, 91334i, -3772i), Struct_1(2147483647i, var_0.b, vec3<f32>(1132f, 577f, -615f), var_0.d)), vec2<bool>(true, true), var_0.c, Struct_2(vec3<i32>(u_input.a, u_input.a, u_input.b), Struct_1(var_0.b, var_0.a, var_0.c, var_0.d), global0[_wgslsmith_index_u32(var_0.d.x, 27u)], vec4<i32>(var_0.b, 44869i, u_input.a, u_input.a), Struct_1(0i, -2147483647i, vec3<f32>(var_0.c.x, var_0.c.x, -981f), vec3<u32>(11563u, var_0.d.x, 10954u))))).e, _wgslsmith_div_vec4_u32(vec4<u32>(var_0.d.x, var_0.d.x, 0u, var_0.d.x), func_2(vec2<bool>(false, var_2)).c), ~(vec4<i32>(u_input.a, -47949i, u_input.b, var_0.b) | vec4<i32>(var_0.b, 2147483647i, 17431i, u_input.a)), func_5(func_2(vec2<bool>(var_2, var_2)), vec2<bool>(false, var_2), vec3<f32>(1000f, var_0.c.x, var_0.c.x), Struct_2(vec3<i32>(-37224i, -78153i, 2147483647i), var_0, global0[_wgslsmith_index_u32(58459u, 27u)], vec4<i32>(var_0.b, var_0.b, 1i, -4649i), Struct_1(var_0.a, -2147483647i, var_0.c, vec3<u32>(var_0.d.x, var_0.d.x, 28455u)))).b)), vec2<bool>(!(true || (-1822f <= var_0.c.x)), var_2), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-764f + 836f)), func_6(~vec2<u32>(0u, var_0.d.x), func_5(Struct_2(vec3<i32>(1i, -16722i, 0i), Struct_1(-19823i, -2147483647i, var_0.c, vec3<u32>(29909u, 67143u, 0u)), vec4<u32>(var_0.d.x, var_0.d.x, 4294967295u, 65120u), vec4<i32>(-2147483647i, -15148i, u_input.b, u_input.a), var_0), vec2<bool>(var_2, true), var_0.c, Struct_2(vec3<i32>(2147483647i, 39742i, 0i), var_0, global0[_wgslsmith_index_u32(11763u, 27u)], vec4<i32>(-1i, var_0.a, -1i, u_input.b), var_0))).c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c.x))), _wgslsmith_f_op_vec3_f32(var_0.c + vec3<f32>(-2136f, _wgslsmith_f_op_f32(select(2435f, var_0.c.x, var_2)), _wgslsmith_f_op_f32(f32(-1f) * -816f))))), func_2(select(vec2<bool>(true, any(vec3<bool>(false, false, true))), select(vec2<bool>(true, true), func_4(vec2<i32>(-2147483647i, -51547i), vec2<u32>(0u, var_0.d.x), Struct_1(u_input.b, -2147483647i, var_0.c, var_0.d), Struct_2(vec3<i32>(var_0.b, 0i, -2147483647i), var_0, vec4<u32>(29900u, var_0.d.x, var_0.d.x, 35105u), vec4<i32>(u_input.a, 763i, var_0.b, var_0.b), var_0)), vec2<bool>(false, var_2)), vec2<bool>(var_2 & var_2, true))));
    let var_4 = true;
    var var_5 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-func_2(select(vec2<bool>(var_2, false), vec2<bool>(var_2, var_4), vec2<bool>(false, true))).e.c.x))));
    let var_6 = select(!select(select(select(vec4<bool>(true, var_2, false, true), vec4<bool>(false, var_2, var_2, false), false), !vec4<bool>(true, true, false, var_4), var_4), vec4<bool>(any(vec4<bool>(var_4, var_4, var_4, true)), !var_2, all(vec2<bool>(var_2, var_4)), all(vec2<bool>(true, var_4))), false), select(vec4<bool>(true || all(vec2<bool>(var_2, var_4)), any(vec3<bool>(var_4, true, false)), false, any(vec2<bool>(true, true))), vec4<bool>(false, true, select(true, true | var_2, true), (var_2 | false) && (-2147483647i > var_3.d.x)), var_4 && false), var_4 & (!var_2 & (any(vec4<bool>(false, false, var_2, true)) == false)));
    var_5 = _wgslsmith_f_op_f32(-var_3.b.c.x);
    let var_7 = abs(func_5(func_5(var_3, !func_4(vec2<i32>(-37764i, -29974i), var_0.d.xy, var_0, var_3), _wgslsmith_div_vec3_f32(var_3.b.c, _wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_3.e.c.x, var_0.c.x, var_3.b.c.x), var_3.b.c))), var_3), select(func_4(var_3.d.zz << (var_3.c.ww % vec2<u32>(32u)), var_0.d.xy, func_5(Struct_2(vec3<i32>(var_3.b.b, var_0.b, 1i), var_0, vec4<u32>(16098u, 1u, var_0.d.x, var_0.d.x), var_3.d, Struct_1(-24721i, 2147483647i, vec3<f32>(-723f, var_3.e.c.x, var_0.c.x), vec3<u32>(var_3.c.x, var_0.d.x, var_3.c.x))), vec2<bool>(var_6.x, var_6.x), vec3<f32>(var_3.b.c.x, 1394f, var_3.e.c.x), var_3).b, func_5(Struct_2(var_3.d.ywx, Struct_1(u_input.b, u_input.a, vec3<f32>(-162f, -1000f, var_0.c.x), vec3<u32>(var_3.c.x, var_3.c.x, 4294967295u)), vec4<u32>(0u, var_3.c.x, 96893u, var_3.b.d.x), vec4<i32>(u_input.b, var_3.d.x, 2147483647i, u_input.b), var_3.b), vec2<bool>(true, true), vec3<f32>(-394f, var_0.c.x, 606f), var_3)), var_6.xz, select(select(vec2<bool>(var_6.x, var_2), vec2<bool>(var_6.x, false), var_6.ww), var_6.wz, !vec2<bool>(var_6.x, var_6.x))), var_0.c, var_3).c);
    let x = u_input.a;
    s_output = StorageBuffer(~(-func_2(vec2<bool>(true, true)).d), _wgslsmith_f_op_vec2_f32(select(var_3.b.c.yy, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_3.b.c.yx) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-660f, -216f))), var_4)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -887f), var_0.c.x)), -_wgslsmith_mod_vec4_i32(var_3.d, ~select(vec4<i32>(-1i, 13592i, var_0.a, var_0.b), vec4<i32>(u_input.b, var_3.d.x, 15726i, 2147483647i), false)));
}

