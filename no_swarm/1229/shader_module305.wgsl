struct Struct_1 {
    a: vec2<f32>,
    b: u32,
    c: vec2<u32>,
    d: vec4<i32>,
}

struct Struct_2 {
    a: f32,
    b: vec3<u32>,
}

struct Struct_3 {
    a: f32,
    b: vec2<bool>,
    c: bool,
    d: f32,
    e: vec3<bool>,
}

struct Struct_4 {
    a: i32,
}

struct Struct_5 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec3<i32>,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 1u;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> i32 {
    let var_0 = Struct_3(-1267f, !select(vec2<bool>(true, all(vec3<bool>(true, false, false))), vec2<bool>(true, true), any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false)))), select(true, false, true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-737f)) + _wgslsmith_f_op_f32(404f - 185f))) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(-1917f, _wgslsmith_f_op_f32(f32(-1f) * -1075f))), _wgslsmith_f_op_f32(-1262f - _wgslsmith_f_op_f32(trunc(493f)))))), vec3<bool>(true || any(select(vec2<bool>(true, false), vec2<bool>(false, false), false)), true, all(vec2<bool>(true, select(false, false, true)))));
    global0 = 66172u;
    global0 = 4294967295u;
    var var_1 = vec2<bool>(select(!var_0.b.x, !(!any(vec2<bool>(true, var_0.e.x))), var_0.b.x), false);
    let var_2 = Struct_5(var_0);
    return _wgslsmith_dot_vec4_i32(select(-(~max(vec4<i32>(2147483647i, 2147483647i, -13056i, -44200i), vec4<i32>(-4014i, 5191i, 19836i, -8703i))), ~reverseBits(select(vec4<i32>(-31575i, -1i, -18519i, 1i), vec4<i32>(11727i, -2147483647i, 0i, -1i), vec4<bool>(true, false, false, var_1.x))), vec4<bool>(true, true, true, true)), vec4<i32>(1i, min(2614i, -(i32(-1i) * -1i)), countOneBits(~(-38930i)), _wgslsmith_sub_i32(_wgslsmith_mult_i32(~(-16875i), 1i), _wgslsmith_mod_i32(-1i, _wgslsmith_mod_i32(1i, 1046i)))));
}

fn func_2(arg_0: Struct_2) -> i32 {
    var var_0 = _wgslsmith_add_i32(1i, _wgslsmith_dot_vec4_i32(~vec4<i32>(_wgslsmith_sub_i32(2147483647i, 25779i), 1i, 1i, 1i), vec4<i32>(1i >> ((u_input.a.x | 1665u) % 32u), 44219i, i32(-1i) * -2147483647i, select(func_3(), ~(-1i), true))));
    var var_1 = reverseBits(~(~(reverseBits(vec3<u32>(53303u, arg_0.b.x, arg_0.b.x)) >> (arg_0.b % vec3<u32>(32u)))));
    var_1 = reverseBits(vec3<u32>(firstLeadingBit(~u_input.a.x), firstTrailingBit(firstTrailingBit(u_input.a.x)), 40653u)) ^ arg_0.b;
    global0 = ~22472u;
    var_0 = min(-40184i, max(_wgslsmith_add_i32(~(~(-18400i)), i32(-1i) * -7538i), 1i));
    return -1i;
}

fn func_1(arg_0: u32, arg_1: f32) -> u32 {
    var var_0 = _wgslsmith_dot_vec4_i32(-(vec4<i32>(-1i) * -vec4<i32>(42440i, -56610i, 38947i, -1i)), ~firstTrailingBit(_wgslsmith_mult_vec4_i32(abs(vec4<i32>(-1i, -24539i, -37578i, 2018i)), -vec4<i32>(1i, -1533i, 23383i, -1i))));
    var_0 = firstLeadingBit(~_wgslsmith_add_i32(func_2(Struct_2(-1300f, u_input.a.zxy)), min(countOneBits(25267i), i32(-1i) * -2147483647i)));
    var var_1 = Struct_5(Struct_3(-681f, select(select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, true), true), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false))), select(vec2<bool>(true, true), vec2<bool>(true, true), true), !select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true))), true, 309f, vec3<bool>(all(vec4<bool>(true, true, true, true)), true, true)));
    let var_2 = vec4<i32>(14680i, 2147483647i, reverseBits(-1i), func_2(Struct_2(-669f, ~u_input.a.wyx)) << (_wgslsmith_div_u32(firstTrailingBit(u_input.a.x), ~0u) % 32u));
    let var_3 = Struct_2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-193f * 1000f))), abs(~abs(~vec3<u32>(1u, 4294967295u, 129305u))));
    return countOneBits(var_3.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = u_input.a.x;
    let var_0 = true;
    let var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-219f * -1426f)))))));
    let var_2 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_1)))))), u_input.a.wyw);
    global0 = select(~var_2.b.x, ~func_1(4294967295u, var_1), select(!(!var_0), any(!vec4<bool>(var_0, var_0, false, var_0)), true) == all(!(!vec2<bool>(var_0, false))));
    var var_3 = select(vec2<bool>(true, true), vec2<bool>(any(select(select(vec2<bool>(true, var_0), vec2<bool>(var_0, var_0), vec2<bool>(true, true)), !vec2<bool>(true, var_0), !vec2<bool>(var_0, var_0))), any(select(vec2<bool>(true, false), select(vec2<bool>(false, true), vec2<bool>(var_0, true), false), any(vec2<bool>(false, true))))), false);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.wyz, abs(abs(~32259i)) ^ (_wgslsmith_dot_vec3_i32(vec3<i32>(-52233i, -2147483647i, -2147483647i) >> (var_2.b % vec3<u32>(32u)), vec3<i32>(42456i, -10384i, -23079i)) << (_wgslsmith_dot_vec3_u32(vec3<u32>(var_2.b.x, 4294967295u, 0u), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a.x, 0u, var_2.b.x), vec3<u32>(1u, 0u, 5124u), var_2.b)) % 32u)), firstLeadingBit(vec3<i32>(-1i) * -vec3<i32>(61196i, -5015i, -2147483647i)), var_1, _wgslsmith_f_op_f32(-var_2.a));
}

