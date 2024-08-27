struct Struct_1 {
    a: u32,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: vec3<u32>,
    d: Struct_1,
    e: i32,
}

struct Struct_4 {
    a: i32,
}

struct Struct_5 {
    a: i32,
    b: Struct_3,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: u32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 8>;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_5) -> i32 {
    global0 = array<vec3<bool>, 8>();
    var var_0 = vec2<u32>(arg_1.c.a.a, abs(~arg_1.b.b.a.a ^ countOneBits(~arg_1.b.b.b.a)));
    var var_1 = arg_1.c;
    global0 = array<vec3<bool>, 8>();
    let var_2 = 1164f;
    return ~1i;
}

fn func_2(arg_0: Struct_4, arg_1: vec2<f32>) -> Struct_2 {
    global0 = array<vec3<bool>, 8>();
    var var_0 = select(vec2<bool>(!any(!global0[_wgslsmith_index_u32(u_input.a.x, 8u)]), true), vec2<bool>(true, true), all(vec3<bool>(false, any(vec2<bool>(true, false)), true)) == true);
    var var_1 = Struct_5(_wgslsmith_sub_i32(func_3(abs(vec2<i32>(33159i, arg_0.a)), Struct_5(arg_0.a << (34569u % 32u), Struct_3(arg_0.a, Struct_2(Struct_1(u_input.a.x, var_0.x), Struct_1(u_input.a.x, var_0.x)), vec3<u32>(57609u, u_input.a.x, u_input.a.x), Struct_1(u_input.a.x, var_0.x), arg_0.a), Struct_2(Struct_1(71933u, true), Struct_1(u_input.a.x, false)))), min(_wgslsmith_add_i32(arg_0.a, arg_0.a) >> (u_input.a.x % 32u), _wgslsmith_div_i32(-33710i, 3882i))), Struct_3(arg_0.a, Struct_2(Struct_1(1u, var_0.x), Struct_1(4294967295u, !var_0.x)), vec3<u32>(_wgslsmith_sub_u32(1u, u_input.a.x), u_input.a.x, 4294967295u), Struct_1(4294967295u, any(vec2<bool>(true, true))), min(~arg_0.a, arg_0.a)), Struct_2(Struct_1(~(u_input.a.x & u_input.a.x), false), Struct_1((u_input.a.x ^ 4294967295u) ^ ~u_input.a.x, true)));
    let var_2 = _wgslsmith_clamp_vec2_i32(~abs(~_wgslsmith_sub_vec2_i32(vec2<i32>(2147483647i, var_1.a), vec2<i32>(-1i, -7085i))), vec2<i32>(firstTrailingBit(19271i), var_1.a), vec2<i32>(-1i) * -(~firstTrailingBit(vec2<i32>(var_1.b.a, 27929i))));
    var_0 = !select(vec2<bool>(u_input.a.x == u_input.a.x, !var_0.x), select(vec2<bool>(var_0.x, true), select(vec2<bool>(true, true), !vec2<bool>(var_0.x, var_1.b.b.a.b), u_input.a.x > 30351u), select(select(vec2<bool>(var_1.c.b.b, var_0.x), vec2<bool>(var_1.c.a.b, true), vec2<bool>(false, var_0.x)), !vec2<bool>(var_0.x, var_0.x), vec2<bool>(true, true))), !vec2<bool>(true, any(global0[_wgslsmith_index_u32(u_input.a.x, 8u)])));
    return Struct_2(Struct_1(var_1.c.b.a, true), Struct_1(abs(~0u), any(select(!global0[_wgslsmith_index_u32(0u, 8u)], global0[_wgslsmith_index_u32(51453u, 8u)], select(global0[_wgslsmith_index_u32(0u, 8u)], global0[_wgslsmith_index_u32(0u, 8u)], vec3<bool>(true, true, true))))));
}

fn func_4(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: vec4<bool>) -> bool {
    let var_0 = min(abs(abs(vec4<u32>(_wgslsmith_mod_u32(1u, u_input.a.x), ~arg_0.a.a, _wgslsmith_add_u32(arg_0.a.a, 2045u), _wgslsmith_dot_vec3_u32(vec3<u32>(36071u, 21963u, arg_0.a.a), vec3<u32>(arg_0.a.a, 63060u, 51635u))))), abs(vec4<u32>(_wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(0u, 60602u)), arg_0.a.a | 53261u, countOneBits(arg_0.b.a), ~arg_0.b.a) | vec4<u32>(u_input.a.x, 20307u, abs(u_input.a.x), ~u_input.a.x)));
    var var_1 = ~(var_0.yxz ^ ~vec3<u32>(arg_0.b.a, _wgslsmith_add_u32(1u, u_input.a.x), abs(arg_0.b.a)));
    global0 = array<vec3<bool>, 8>();
    var var_2 = arg_0.a.b;
    var_2 = any(vec4<bool>(true, arg_1.x, func_3(vec2<i32>(-1i, 13298i), Struct_5(43631i, Struct_3(35116i, Struct_2(arg_0.b, arg_0.b), var_0.wwx, arg_0.b, 0i), arg_0)) >= 0i, true));
    return false;
}

fn func_1(arg_0: bool) -> Struct_2 {
    var var_0 = 1000f;
    let var_1 = Struct_4(_wgslsmith_sub_i32(_wgslsmith_div_i32(~1i, 2465i) >> (~(~u_input.a.x) % 32u), -_wgslsmith_sub_i32(1i, -28482i)));
    var var_2 = func_4(func_2(Struct_4(_wgslsmith_mod_i32(_wgslsmith_sub_i32(var_1.a, 2147483647i), -var_1.a)), vec2<f32>(282f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -605f) + _wgslsmith_f_op_f32(-432f * -693f)))), vec4<bool>(true, arg_0, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1437f * 1677f))) > _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(-226f)))), false), vec4<bool>(!arg_0, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(1481f, -771f)))) == _wgslsmith_f_op_f32(-2089f * _wgslsmith_f_op_f32(max(-1857f, 1000f))), (i32(-1i) * -var_1.a) > -10268i, true));
    var_2 = true;
    let var_3 = any(vec3<bool>(!arg_0, !arg_0, true));
    return Struct_2(func_2(Struct_4(-30121i), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-502f, 227f), vec2<f32>(-334f, 1000f))))))).b, Struct_1(_wgslsmith_clamp_u32(u_input.a.x, ~u_input.a.x, ~6763u), true));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec4<f32>) -> Struct_3 {
    var var_0 = reverseBits(~u_input.a.x);
    let var_1 = Struct_5(_wgslsmith_sub_i32(2147483647i, select(-482i, 25402i, arg_0.b.b || true)), Struct_3(firstLeadingBit(select(-4379i, -2147483647i, false) ^ -2147483647i), Struct_2(func_1(arg_1.b | arg_0.b.b).b, arg_0.b), firstLeadingBit(_wgslsmith_add_vec3_u32(vec3<u32>(1u, 0u, 1u), vec3<u32>(65490u, u_input.a.x, 0u)) | firstTrailingBit(vec3<u32>(1u, arg_1.a, u_input.a.x))), arg_1, 1i), arg_0);
    return var_1.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(func_1(!(!all(vec4<bool>(true, true, true, true)))), Struct_1(u_input.a.x, false), vec4<f32>(_wgslsmith_f_op_f32(trunc(-876f)), _wgslsmith_f_op_f32(abs(-811f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(-410f)))), -1501f, true)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - -334f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(330f - 323f) * _wgslsmith_f_op_f32(min(-323f, -1160f)))))));
    global0 = array<vec3<bool>, 8>();
    let x = u_input.a;
    s_output = StorageBuffer(~42834u >> (~var_0.b.a.a % 32u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1174f - -715f)))))), 1u, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(151f, -512f)), vec2<f32>(-645f, -269f), vec2<bool>(true, true))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(277f, 1016f), vec2<f32>(-1055f, 653f), true)) * vec2<f32>(-944f, -2168f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(881f, -1253f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(2132f, 2204f) * vec2<f32>(-737f, 691f)))))));
}

