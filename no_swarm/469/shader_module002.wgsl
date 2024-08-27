struct Struct_1 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: u32,
    d: u32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_2(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: vec2<bool>) -> Struct_1 {
    var var_0 = Struct_1(~_wgslsmith_mod_vec4_u32(u_input.b, arg_1.a));
    var var_1 = _wgslsmith_f_op_f32(-744f * _wgslsmith_f_op_f32(1f * 1000f));
    var_0 = Struct_1((~(u_input.b & vec4<u32>(0u, arg_1.a.x, 52092u, arg_1.a.x)) ^ _wgslsmith_mult_vec4_u32(vec4<u32>(0u, u_input.d, arg_0.x, arg_1.a.x), u_input.b << (u_input.b % vec4<u32>(32u)))) ^ firstLeadingBit(~reverseBits(u_input.b)));
    var_0 = Struct_1(var_0.a);
    let var_2 = arg_1;
    return Struct_1(var_2.a);
}

fn func_3(arg_0: bool) -> f32 {
    let var_0 = false;
    var var_1 = Struct_1(countOneBits(u_input.b));
    let var_2 = true;
    var var_3 = 0i;
    var var_4 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -667f), -451f), 226f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-886f - 257f))) - 1318f)))));
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(1f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(578f)), -412f))))));
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: vec3<f32>) -> u32 {
    return arg_1.a.x;
}

fn func_1(arg_0: bool) -> vec4<bool> {
    let var_0 = _wgslsmith_clamp_u32(func_4(vec2<bool>(~u_input.b.x != u_input.d, all(vec4<bool>(false, arg_0, false, arg_0))), func_2(~(~u_input.b.zw), Struct_1(u_input.b), !(!vec2<bool>(true, arg_0))), vec3<f32>(622f, _wgslsmith_f_op_f32(func_3(true)), -484f)), u_input.b.x & 43365u, firstLeadingBit(abs(abs(~u_input.b.x))));
    let var_1 = vec2<bool>(true, arg_0);
    var var_2 = func_2(firstLeadingBit(~_wgslsmith_div_vec2_u32(~u_input.b.zw, _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.d, u_input.c), vec2<u32>(var_0, var_0)))), Struct_1(~vec4<u32>(~u_input.c, abs(u_input.c), ~57129u, ~var_0)), var_1);
    let var_3 = func_2(u_input.b.yw, func_2(var_2.a.ww, Struct_1(firstLeadingBit(~vec4<u32>(0u, 4294967295u, 12773u, var_2.a.x))), var_1), vec2<bool>(false, any(var_1)));
    var var_4 = (_wgslsmith_mod_u32(var_2.a.x, u_input.b.x & (var_3.a.x & var_3.a.x)) >> (var_3.a.x % 32u)) != 70107u;
    return select(vec4<bool>(false, arg_0, false, true), !select(vec4<bool>(true, true, true, true), !vec4<bool>(arg_0, arg_0, arg_0, false), !var_1.x), true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(select(!vec4<bool>(select(true, false, true), any(vec2<bool>(false, true)), true, any(vec3<bool>(false, true, true))), select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, false)), func_1(false), all(vec3<bool>(true, false, false))), select(select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false), false), vec4<bool>(true, true, true, true), 1u > u_input.c)), any(select(select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false), true), select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, true), true), vec4<bool>(true, true, true, true)))), vec4<bool>((any(vec4<bool>(true, false, true, false)) || true) && false, _wgslsmith_add_i32(_wgslsmith_mod_i32(1i, 1i), u_input.a.x) <= u_input.a.x, false, false), ((_wgslsmith_mod_u32(4294967295u, u_input.b.x) >> (~1u % 32u)) <= _wgslsmith_add_u32(u_input.d, u_input.b.x)) && true);
    var var_1 = !select(func_1(var_0.x).wx, select(vec2<bool>(any(var_0.wx), any(vec2<bool>(var_0.x, var_0.x))), vec2<bool>(false, var_0.x), true), var_0.x);
    var_1 = vec2<bool>(all(var_0), true);
    let var_2 = 789f;
    var_1 = select(var_0.zw, var_0.yy, _wgslsmith_f_op_f32(max(-1198f, var_2)) <= var_2);
    var var_3 = func_2(~u_input.b.xz, func_2(~(~_wgslsmith_mod_vec2_u32(u_input.b.xy, u_input.b.yw)), func_2(abs(firstTrailingBit(vec2<u32>(0u, u_input.b.x))), Struct_1(~vec4<u32>(u_input.c, u_input.d, 6264u, u_input.c)), vec2<bool>(var_1.x, !var_1.x)), var_0.zy), var_0.yx);
    var var_4 = !var_0.ww;
    let var_5 = Struct_1(var_3.a);
    let x = u_input.a;
    s_output = StorageBuffer(~24760u, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(var_2, -141f)), _wgslsmith_f_op_f32(var_2 + 1379f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(var_2)), _wgslsmith_f_op_f32(867f - _wgslsmith_f_op_f32(f32(-1f) * -827f)))), -1603f, 579f), func_2(~(~_wgslsmith_div_vec2_u32(vec2<u32>(28023u, var_5.a.x), var_3.a.yz)), var_5, func_1(!(!var_1.x)).xz).a.x, 26236u, _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2, 1698f) - vec2<f32>(var_2, 652f)), vec2<f32>(_wgslsmith_div_f32(var_2, -434f), _wgslsmith_f_op_f32(-323f + var_2))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1223f, var_2), vec2<f32>(var_2, var_2), true))) * _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(vec2<f32>(294f, -334f), vec2<f32>(2784f, var_2)))))));
}

