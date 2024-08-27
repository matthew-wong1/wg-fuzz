struct Struct_1 {
    a: bool,
    b: u32,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec4<f32>,
    d: i32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: array<Struct_1, 10>;

var<private> global2: array<Struct_1, 6> = array<Struct_1, 6>(Struct_1(false, 5411u, -155f), Struct_1(false, 4294967295u, 2771f), Struct_1(true, 1u, -533f), Struct_1(false, 160792u, 925f), Struct_1(false, 0u, 673f), Struct_1(true, 1u, -1955f));

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: vec4<bool>, arg_1: u32, arg_2: Struct_1, arg_3: Struct_1) -> u32 {
    global1 = array<Struct_1, 10>();
    return abs(3650u);
}

fn func_3(arg_0: vec2<f32>, arg_1: vec2<u32>, arg_2: bool, arg_3: f32) -> bool {
    global2 = array<Struct_1, 6>();
    global1 = array<Struct_1, 10>();
    global1 = array<Struct_1, 10>();
    let var_0 = Struct_1(any(!vec4<bool>(true, arg_2, arg_2, arg_2)) || !(u_input.a < abs(35879i)), reverseBits(func_1(vec4<bool>(!arg_2, true, all(vec4<bool>(false, arg_2, true, false)), true), _wgslsmith_sub_u32(max(u_input.b, 4294967295u), 1u), global2[_wgslsmith_index_u32(1u, 6u)], global1[_wgslsmith_index_u32(arg_1.x, 10u)])), -555f);
    global1 = array<Struct_1, 10>();
    return false || var_0.a;
}

fn func_4(arg_0: Struct_1) -> vec3<i32> {
    let var_0 = Struct_1(all(!select(!vec2<bool>(false, arg_0.a), !vec2<bool>(true, arg_0.a), select(vec2<bool>(arg_0.a, true), vec2<bool>(arg_0.a, false), vec2<bool>(arg_0.a, arg_0.a)))), abs(countOneBits(~u_input.b >> ((u_input.b ^ u_input.b) % 32u))), arg_0.c);
    global1 = array<Struct_1, 10>();
    let var_1 = vec3<u32>(~(~(arg_0.b >> (reverseBits(arg_0.b) % 32u))), 4294967295u, ~func_1(!vec4<bool>(arg_0.a, arg_0.a, true, var_0.a), 1u, Struct_1(var_0.a != false, arg_0.b, _wgslsmith_f_op_f32(409f * 2055f)), Struct_1(false, 23890u, _wgslsmith_div_f32(global0.x, 319f))));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_0.c), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_div_f32(var_0.c, arg_0.c))), -1054f) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-937f, var_0.c, arg_0.c)))));
    let var_3 = any(!(!select(vec2<bool>(arg_0.a, var_0.a), !vec2<bool>(false, arg_0.a), !var_0.a)));
    return -vec3<i32>(max(_wgslsmith_mult_i32(countOneBits(-10344i), u_input.a << (var_0.b % 32u)), u_input.a), 1i, firstTrailingBit(-41418i));
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    let var_0 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(~u_input.b, _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(1u, 20279u, 63367u), arg_0.b, min(u_input.b, 14427u))), firstLeadingBit(select(~vec2<u32>(arg_0.b, arg_0.b), _wgslsmith_div_vec2_u32(vec2<u32>(52258u, 28694u), vec2<u32>(45773u, arg_0.b)), all(vec4<bool>(arg_0.a, true, false, true))))), reverseBits(_wgslsmith_mult_vec2_u32(countOneBits(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.b, arg_0.b), vec2<u32>(32049u, u_input.b), vec2<u32>(24390u, 0u))), ~vec2<u32>(11212u, 1u)))), 6u)];
    var var_1 = true;
    var var_2 = _wgslsmith_mult_vec3_i32(_wgslsmith_mod_vec3_i32((vec3<i32>(u_input.a, u_input.a, u_input.c) | ~vec3<i32>(-4050i, -1i, u_input.a)) | firstTrailingBit(_wgslsmith_add_vec3_i32(vec3<i32>(0i, 34840i, u_input.a), vec3<i32>(63392i, u_input.a, -2680i))), func_4(Struct_1(func_3(vec2<f32>(-108f, 1875f), vec2<u32>(84776u, 4294967295u), true, 621f), reverseBits(0u), arg_0.c))), _wgslsmith_add_vec3_i32((_wgslsmith_mult_vec3_i32(vec3<i32>(-15798i, -4745i, u_input.a), vec3<i32>(u_input.a, 23058i, -70198i)) & ~vec3<i32>(u_input.c, u_input.a, u_input.a)) ^ _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a, u_input.c, 42002i) | vec3<i32>(2147483647i, 36441i, u_input.c), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.a, u_input.a, 18233i), vec3<i32>(11831i, -2229i, u_input.c))), ~_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a, u_input.a, 7927i), vec3<i32>(1i, u_input.c, u_input.c), vec3<i32>(u_input.a, u_input.c, u_input.c)) & ~abs(vec3<i32>(26641i, u_input.a, 2147483647i))));
    var var_3 = 18152i;
    var var_4 = reverseBits(_wgslsmith_add_u32(select(var_0.b, var_0.b, var_0.a), _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(1u, u_input.b), vec2<u32>(arg_0.b, 4294967295u)), vec2<u32>(u_input.b, arg_0.b))) | (~func_1(vec4<bool>(var_0.a, true, arg_0.a, arg_0.a), var_0.b, Struct_1(true, arg_0.b, arg_0.c), Struct_1(true, 1u, arg_0.c)) & 4294967295u));
    return arg_0;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32, arg_3: Struct_1) -> Struct_1 {
    global2 = array<Struct_1, 6>();
    let var_0 = arg_0;
    global0 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.c, global0.x)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.c, -128f)))))));
    let var_1 = 73028u;
    var var_2 = Struct_1(all(select(vec4<bool>(var_0.b >= u_input.b, arg_3.a, all(vec3<bool>(false, arg_0.a, true)), -11640i == u_input.a), vec4<bool>(u_input.a > -69046i, false, !arg_1.a, true), false)), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 93507u, ~1u), max(_wgslsmith_clamp_vec3_u32(min(vec3<u32>(arg_0.b, var_1, 1u), vec3<u32>(0u, arg_1.b, arg_3.b)), firstTrailingBit(vec3<u32>(arg_0.b, 0u, 4294967295u)), vec3<u32>(18457u, 0u, 0u) | vec3<u32>(var_1, 6141u, var_0.b)), ~vec3<u32>(var_0.b, var_1, arg_0.b))), _wgslsmith_f_op_f32(var_0.c - arg_3.c));
    return func_2(func_2(func_2(Struct_1(all(vec2<bool>(var_0.a, var_2.a)), _wgslsmith_div_u32(1u, 1u), -1421f))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 10>();
    global1 = array<Struct_1, 10>();
    var var_0 = Struct_1((u_input.b << (u_input.b % 32u)) > 21002u, ~u_input.b, _wgslsmith_f_op_f32(-global0.x));
    var_0 = func_5(Struct_1(true, ~1u, -622f), func_2(Struct_1(!(!var_0.a), reverseBits(func_1(vec4<bool>(var_0.a, var_0.a, var_0.a, var_0.a), var_0.b, Struct_1(false, 44816u, 1173f), global2[_wgslsmith_index_u32(u_input.b, 6u)])), 824f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global0.x + 1f))), Struct_1(func_2(global1[_wgslsmith_index_u32(1u, 10u)]).a, 4294967295u, _wgslsmith_f_op_f32(-413f * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(423f - -290f), _wgslsmith_f_op_f32(-var_0.c))))));
    var_0 = Struct_1(var_0.a, countOneBits(var_0.b), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(549f, func_5(global1[_wgslsmith_index_u32(5979u, 10u)], func_2(global2[_wgslsmith_index_u32(u_input.b, 6u)]), -1048f, func_5(global1[_wgslsmith_index_u32(var_0.b, 10u)], Struct_1(true, var_0.b, var_0.c), var_0.c, global2[_wgslsmith_index_u32(1u, 6u)])).c)), _wgslsmith_f_op_f32(global0.x * 322f))));
    var var_1 = vec3<u32>(u_input.b, 0u, u_input.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) - var_0.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_0.c + var_0.c))) - _wgslsmith_f_op_f32(abs(1190f)))), _wgslsmith_div_u32(~(1u & var_0.b), (var_0.b << (42940u % 32u)) | _wgslsmith_clamp_u32(0u, var_1.x, var_0.b)) | 10299u, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0.c, -880f, -301f, global0.x), vec4<f32>(-435f, global0.x, -524f, 241f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-473f, global0.x, global0.x, global0.x) - vec4<f32>(var_0.c, -149f, global0.x, var_0.c))), !(!var_0.a))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1132f, -1722f, var_0.c, 1477f))))), ~(u_input.c << (_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.x, u_input.b, 0u, var_0.b) & vec4<u32>(65458u, 1u, 1u, u_input.b), ~vec4<u32>(4294967295u, var_1.x, 1u, var_0.b)) % 32u)), vec4<i32>(-((u_input.a | u_input.a) >> (23376u % 32u)), -80520i, -65795i, -(-51477i & u_input.c) ^ ~u_input.a));
}

