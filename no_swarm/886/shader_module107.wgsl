struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: vec3<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_1(arg_0: u32) -> u32 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -559f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2250f))));
    let var_1 = vec3<i32>(reverseBits(-16476i), _wgslsmith_add_i32(~(-(u_input.a.x >> (arg_0 % 32u))), 1i ^ -u_input.a.x), -1i);
    var var_2 = !(!vec4<bool>(true, false, any(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), all(vec4<bool>(true, true, true, true))));
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a, var_0.a, 315f) * _wgslsmith_f_op_vec3_f32(max(vec3<f32>(1835f, 751f, -478f), vec3<f32>(1000f, 320f, 128f))))))));
    var var_4 = _wgslsmith_mult_vec3_i32(firstLeadingBit(-vec3<i32>(_wgslsmith_dot_vec4_i32(u_input.a, u_input.a), var_1.x, 1i)), var_1);
    return ~arg_0;
}

fn func_2(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: bool, arg_3: Struct_1) -> Struct_1 {
    var var_0 = arg_0.x >= (~(~arg_0.x) >> (1u % 32u));
    let var_1 = arg_1;
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1050f, -488f)) + 1117f));
}

fn func_3(arg_0: f32, arg_1: Struct_1) -> u32 {
    let var_0 = arg_1;
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.a, _wgslsmith_f_op_f32(f32(-1f) * -423f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(arg_1.a)))))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1579f - arg_1.a)), _wgslsmith_div_f32(515f, 1013f), arg_0) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, -145f, var_0.a) + vec3<f32>(arg_0, arg_1.a, -1000f))) * _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, arg_0, var_0.a) - vec3<f32>(arg_1.a, -392f, 783f)), vec3<f32>(186f, arg_0, arg_1.a))))));
    let var_2 = var_0.a;
    let var_3 = vec4<bool>(all(select(select(select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, true)), vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, false)), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, all(vec3<bool>(true, false, false))))), all(vec4<bool>(!any(vec3<bool>(false, true, false)), true, arg_0 < _wgslsmith_f_op_f32(-arg_1.a), any(vec3<bool>(true, true, false)) || any(vec3<bool>(true, true, true)))), !(!all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false)))), true);
    var var_4 = _wgslsmith_mod_vec3_i32(countOneBits(reverseBits(~vec3<i32>(u_input.a.x, -2147483647i, -1i))), (-min(u_input.a.www, u_input.a.yyz) >> (~vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u))) & u_input.a.wxx);
    return 19759u;
}

fn func_4(arg_0: vec4<u32>) -> Struct_1 {
    let var_0 = firstLeadingBit(_wgslsmith_clamp_vec2_i32(abs(u_input.a.zy ^ vec2<i32>(-1i, 24925i)), countOneBits(abs(vec2<i32>(u_input.a.x, -24513i))), ~u_input.a.zx)) >> (vec2<u32>(firstLeadingBit(102379u), 1u) % vec2<u32>(32u));
    var var_1 = var_0.x;
    var var_2 = !select(!all(vec2<bool>(false, false)), all(!select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, true))), any(select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(true, false, false))));
    var var_3 = var_0.x;
    let var_4 = 1212f;
    return Struct_1(var_4);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    var var_1 = Struct_1(-1104f);
    let var_2 = 1u;
    var_1 = func_4(_wgslsmith_mod_vec4_u32(vec4<u32>(~func_1(1u), func_3(_wgslsmith_f_op_f32(abs(303f)), func_2(vec2<u32>(var_2, var_2), Struct_1(1395f), var_0, Struct_1(var_1.a))), reverseBits(var_2 | 4294967295u), firstTrailingBit(~1u)), _wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(~vec4<u32>(15177u, var_2, 0u, var_2), ~vec4<u32>(var_2, 1u, 1u, 19859u)), _wgslsmith_mod_vec4_u32(vec4<u32>(38007u, var_2, var_2, var_2), max(vec4<u32>(0u, 61643u, var_2, 33767u), vec4<u32>(1u, 11870u, var_2, 4294967295u))), vec4<u32>(abs(16898u), 5191u, func_3(var_1.a, Struct_1(-571f)), _wgslsmith_mult_u32(var_2, 29295u)))));
    var var_3 = func_2(abs(vec2<u32>(var_2, min(var_2, 1u))) | select(~vec2<u32>(0u, 39047u), vec2<u32>(1u, 1u), select(select(vec2<bool>(true, var_0), vec2<bool>(false, var_0), false), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, var_0)), false)), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -391f)), var_0, func_4(countOneBits(max(vec4<u32>(var_2, var_2, 4294967295u, var_2), select(vec4<u32>(var_2, 83377u, 0u, 4294967295u), vec4<u32>(var_2, 75722u, 1u, var_2), var_0)))));
    var_1 = func_4(~vec4<u32>(~6597u, var_2, _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(3912u, 67845u), vec2<u32>(38446u, 15791u)), var_2), ~var_2));
    var_1 = func_2(countOneBits(_wgslsmith_mult_vec2_u32(~(~vec2<u32>(1u, var_2)), _wgslsmith_sub_vec2_u32(reverseBits(vec2<u32>(39402u, var_2)), reverseBits(vec2<u32>(1u, var_2))))), func_4(firstLeadingBit(~vec4<u32>(var_2, var_2, 60009u, var_2)) & vec4<u32>(func_1(var_2), ~var_2, ~10625u, var_2)), any(!select(vec4<bool>(var_0, true, var_0, true), !vec4<bool>(var_0, true, false, true), var_0)), func_2((~vec2<u32>(4294967295u, 51578u) << (~vec2<u32>(var_2, 55882u) % vec2<u32>(32u))) | _wgslsmith_clamp_vec2_u32(vec2<u32>(var_2, var_2) | vec2<u32>(43298u, var_2), _wgslsmith_add_vec2_u32(vec2<u32>(var_2, 4389u), vec2<u32>(0u, var_2)), ~vec2<u32>(var_2, var_2)), func_2(vec2<u32>(_wgslsmith_mult_u32(4917u, 0u), 1u), Struct_1(_wgslsmith_f_op_f32(abs(-1532f))), any(vec3<bool>(true, var_0, var_0)), Struct_1(_wgslsmith_f_op_f32(abs(-867f)))), var_0, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a + var_3.a) - var_1.a))));
    let var_4 = vec3<i32>(_wgslsmith_add_i32(1i, _wgslsmith_mod_i32(_wgslsmith_clamp_i32(~u_input.a.x, u_input.a.x ^ 2147483647i, countOneBits(1i)), u_input.a.x)), max(abs(u_input.a.x), select(2147483647i, -1i, var_0)), u_input.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1127f), 546f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_3.a))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1183f * func_2(vec2<u32>(var_2, 18454u), Struct_1(var_1.a), var_0, Struct_1(var_3.a)).a) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -587f))))), u_input.a.wyx, var_2);
}

