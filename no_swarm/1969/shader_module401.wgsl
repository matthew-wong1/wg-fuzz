struct Struct_1 {
    a: u32,
    b: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: u32) -> f32 {
    var var_0 = any(!(!(!select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), false))));
    let var_1 = Struct_1(~(_wgslsmith_clamp_u32(~u_input.a, 4294967295u, ~u_input.a) << (arg_0 % 32u)), -638f);
    var_0 = _wgslsmith_mod_u32(~_wgslsmith_mult_u32(72001u, ~u_input.a), firstLeadingBit(min(~29466u, firstTrailingBit(u_input.a)))) > 31369u;
    var var_2 = var_1;
    var_2 = var_1;
    return -256f;
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -978f))) - _wgslsmith_f_op_f32(trunc(321f))), 534f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(1u))), 172f) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(step(-222f, 652f)), _wgslsmith_f_op_f32(234f + 193f), _wgslsmith_f_op_f32(1451f + 1000f), 619f))), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1691f), _wgslsmith_f_op_f32(abs(1775f)), -513f, _wgslsmith_f_op_f32(trunc(-800f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-920f, 197f, -1000f, -356f) * vec4<f32>(-1494f, 1502f, 796f, 1699f))), !(!any(vec4<bool>(false, false, false, true))))));
    let var_1 = Struct_1(reverseBits(46175u), var_0.x);
    var_0 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(468f, var_0.x, _wgslsmith_f_op_f32(var_1.b - -184f), _wgslsmith_f_op_f32(var_1.b * 399f)))), vec4<f32>(var_0.x, 577f, 1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2347f + 1364f)) * 1405f))));
    let var_2 = Struct_1(u_input.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(-1204f, _wgslsmith_f_op_f32(-940f * 557f), true))))));
    var var_3 = !(!all(vec2<bool>(true, true)));
    return Struct_1(_wgslsmith_div_u32(43331u, 14824u), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(var_1.b, -1000f)), _wgslsmith_f_op_f32(ceil(1080f)), true)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_1.b * var_1.b), _wgslsmith_f_op_f32(-var_0.x))))));
}

fn func_1() -> Struct_1 {
    var var_0 = func_2();
    let var_1 = _wgslsmith_add_vec3_i32(vec3<i32>(reverseBits(1i), -(~_wgslsmith_dot_vec4_i32(vec4<i32>(-30993i, 31127i, 1i, 1i), vec4<i32>(-1i, 1i, 77612i, -37232i))), max(_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(0i, 9306i, 2147483647i), vec3<i32>(-2147483647i, -57534i, -88379i)), vec3<i32>(8835i, 34897i, 1i)), ~(~30615i))), select(vec3<i32>(0i, countOneBits(-1i), _wgslsmith_sub_i32(~(-10305i), _wgslsmith_sub_i32(0i, -9752i))), ~_wgslsmith_div_vec3_i32(vec3<i32>(-2147483647i, -29301i, -1220i), vec3<i32>(2147483647i, -2147483647i, 14140i)), !all(vec2<bool>(true, false)) | true));
    var var_2 = countOneBits(8025u & _wgslsmith_add_u32(_wgslsmith_add_u32(~11606u, _wgslsmith_add_u32(var_0.a, 24018u)), ~4294967295u & _wgslsmith_add_u32(u_input.a, 32299u)));
    let var_3 = min(_wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(select(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, 42031u), vec4<u32>(6522u, 10043u, u_input.a, var_0.a)), vec4<u32>(u_input.a, 70816u, 19396u, 1u), select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, false))), ~abs(vec4<u32>(4294967295u, var_0.a, 25665u, var_0.a))), vec4<u32>(7284u, ~(~u_input.a), select(50559u, 4294967295u, all(vec2<bool>(false, false))), 33302u)), ~_wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(38570u, var_0.a, 1u, 21256u), vec4<u32>(1u, u_input.a, 45262u, 1u)), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, 0u, 1u, 67726u), vec4<u32>(25910u, 51038u, u_input.a, 33777u))));
    var var_4 = abs(_wgslsmith_dot_vec4_u32(var_3, ~vec4<u32>(var_0.a, 82734u, 1u, var_3.x)) << (_wgslsmith_mult_u32(~15365u >> (var_0.a % 32u), 1u) % 32u));
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = _wgslsmith_dot_vec4_u32(vec4<u32>(50983u, 47875u, 78307u, _wgslsmith_sub_u32(~var_0.a, abs(~var_0.a))), countOneBits(vec4<u32>(1u, var_0.a, _wgslsmith_mod_u32(56379u, 43413u), var_0.a) & vec4<u32>(4294967295u, 1u, 4294967295u, func_1().a)));
    var var_2 = var_0.b;
    var_2 = 900f;
    let var_3 = Struct_1(_wgslsmith_div_u32(var_1, func_2().a), var_0.b);
    var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(561f)));
    var_2 = var_3.b;
    var_2 = _wgslsmith_f_op_f32(f32(-1f) * -1607f);
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(_wgslsmith_div_u32(var_3.a, countOneBits(4725u))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(var_0.b, var_0.b))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.b + var_0.b) * var_0.b)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1988f, var_3.b) * _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_0.b, 1564f)))))) * vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -620f) + var_3.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b) - _wgslsmith_f_op_f32(trunc(var_0.b))))));
}

