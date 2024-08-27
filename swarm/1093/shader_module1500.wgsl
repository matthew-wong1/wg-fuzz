struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
}

struct Struct_4 {
    a: u32,
    b: vec3<bool>,
    c: Struct_2,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: i32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(71072u);

var<private> global1: Struct_1;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: bool, arg_1: bool) -> i32 {
    var var_0 = arg_1;
    var var_1 = ~2147483647i;
    var_0 = arg_1;
    global1 = Struct_1(select(firstLeadingBit(global1.a), global1.a, arg_1));
    global0 = Struct_1(max(1u, 0u ^ ~u_input.a) >> (~47887u % 32u));
    return -_wgslsmith_clamp_i32(~abs(-1i), 9376i, -_wgslsmith_add_i32(i32(-1i) * -2147483647i, -2147483647i));
}

fn func_2() -> vec2<u32> {
    var var_0 = _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(~u_input.b, -((vec3<i32>(-20126i, 1i, u_input.b.x) ^ u_input.b) ^ -vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x))), -_wgslsmith_add_i32(i32(-1i) * -6292i, func_3(true, any(vec2<bool>(true, true)))));
    let var_1 = Struct_3(Struct_1(global1.a), any(!select(vec2<bool>(false, false), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), true))));
    let var_2 = vec3<u32>(~(~1u) | _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(~vec3<u32>(u_input.a, global0.a, 88311u), firstTrailingBit(vec3<u32>(1u, 1u, global1.a))), vec3<u32>(39908u >> (u_input.a % 32u), countOneBits(94512u), _wgslsmith_dot_vec3_u32(vec3<u32>(76114u, var_1.a.a, global1.a), vec3<u32>(37050u, global0.a, var_1.a.a)))), 19626u, _wgslsmith_dot_vec4_u32(~(~vec4<u32>(17791u, u_input.a, 0u, 28668u)), vec4<u32>(_wgslsmith_clamp_u32(abs(global1.a), max(11542u, global1.a), global1.a), _wgslsmith_div_u32(~var_1.a.a, global1.a), ~global0.a << (min(u_input.a, 1u) % 32u), _wgslsmith_sub_u32(global0.a ^ global0.a, 47658u))));
    let var_3 = Struct_3(var_1.a, false);
    var var_4 = var_3;
    return _wgslsmith_div_vec2_u32(countOneBits(vec2<u32>(select(global1.a, ~3500u, var_3.b), _wgslsmith_sub_u32(var_3.a.a, _wgslsmith_mult_u32(31484u, var_2.x)))), vec2<u32>(var_4.a.a, firstLeadingBit(~(var_2.x | 0u))));
}

fn func_1() -> Struct_1 {
    var var_0 = ~(~(~(~vec2<u32>(global0.a, 0u) & func_2())));
    var var_1 = Struct_3(Struct_1(~var_0.x), !any(select(select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, true), true), vec4<bool>(false, true, false, false), true)));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(498f, -993f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + 1375f) - 978f), -1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(676f, -401f)) + _wgslsmith_f_op_f32(f32(-1f) * -1023f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1080f, -773f, 1630f, 1000f)))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-158f, -1000f, 516f, -1377f)))));
    let var_3 = vec3<u32>(abs(firstTrailingBit(~var_0.x) ^ ~var_0.x), ~global0.a, ~23207u);
    let var_4 = Struct_4(global0.a, !select(!select(vec3<bool>(var_1.b, true, var_1.b), vec3<bool>(var_1.b, false, true), var_1.b), vec3<bool>(var_1.b, -1000f < var_2.x, var_1.b), vec3<bool>(any(vec3<bool>(var_1.b, true, false)), false, true)), Struct_2(vec4<bool>(~40230u <= ~var_1.a.a, false, !var_1.b | any(vec3<bool>(true, true, true)), var_1.b)), select(vec4<i32>(-2147483647i, u_input.b.x, reverseBits(u_input.b.x), -17356i), ~(-_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.b.x, 0i, u_input.b.x, -31671i), vec4<i32>(u_input.b.x, 55418i, -5947i, u_input.b.x), vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, -38802i))), _wgslsmith_f_op_f32(abs(513f)) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x + var_2.x))));
    return var_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(max(~u_input.a, 0u));
    global1 = func_1();
    let var_0 = Struct_1(0u);
    let var_1 = func_1();
    let var_2 = Struct_4(func_1().a, select(select(vec3<bool>(u_input.b.x > 0i, true, any(vec2<bool>(false, true))), vec3<bool>(true, all(vec3<bool>(false, false, false)), false), !any(vec4<bool>(true, true, true, false))), vec3<bool>(all(select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), false)), true, true), select(vec3<bool>(all(vec2<bool>(false, false)), true, true), vec3<bool>(false, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), all(vec3<bool>(false, false, false))))), Struct_2(select(select(select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, true), true), select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, false)), vec4<bool>(false, true, false, true)), !select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, false)), false)), vec4<i32>(u_input.b.x, abs(~(-22670i)) | _wgslsmith_dot_vec3_i32(countOneBits(u_input.b), abs(vec3<i32>(u_input.b.x, u_input.b.x, -38340i))), countOneBits(-2147483647i), -2147483647i));
    let var_3 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(474f, _wgslsmith_f_op_f32(round(1056f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(2139f, 1000f) - _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(177f, 528f))))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(156f, 2025f)))), vec2<f32>(_wgslsmith_f_op_f32(-811f * 284f), -1000f))), 249i, select(firstTrailingBit(-1i), u_input.b.x, var_3.c.a.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1508f, -1282f, -1096f, -1925f), vec4<f32>(2655f, -857f, -907f, -1212f)))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1000f, 805f, 1115f, 111f))), select(select(var_3.c.a, var_2.c.a, true), var_3.c.a, var_3.c.a))) * vec4<f32>(_wgslsmith_f_op_f32(floor(-935f)), _wgslsmith_f_op_f32(select(-728f, -132f, false)), -1798f, 1988f)));
}

