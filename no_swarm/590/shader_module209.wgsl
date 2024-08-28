struct Struct_1 {
    a: u32,
    b: bool,
    c: vec3<f32>,
    d: vec4<u32>,
}

struct Struct_2 {
    a: u32,
    b: vec2<u32>,
}

struct Struct_3 {
    a: u32,
    b: i32,
}

struct Struct_4 {
    a: f32,
    b: Struct_2,
    c: f32,
    d: Struct_3,
}

struct Struct_5 {
    a: i32,
    b: vec4<f32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec4<bool>) -> bool {
    var var_0 = true;
    var_0 = !(!arg_0.x) || !arg_0.x;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(-1704f + -1045f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(364f + 625f))) - 643f)));
    let var_2 = Struct_5(u_input.a, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(630f + 1000f), -202f, _wgslsmith_f_op_f32(floor(-523f)), _wgslsmith_div_f32(-1068f, 1176f))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(select(-322f, 917f, arg_0.x)), 1513f, 105f, -507f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(146f, -1111f, -482f, -399f)) * vec4<f32>(-1099f, -523f, 917f, 3550f)), !(!arg_0)))), Struct_2(1u, vec2<u32>(max(46965u, 322u), _wgslsmith_mult_u32(firstLeadingBit(1u), _wgslsmith_mod_u32(0u, 30149u)))));
    var var_3 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1408f)))))), Struct_2(0u, var_2.c.b), 1048f, Struct_3(_wgslsmith_dot_vec3_u32(vec3<u32>(var_2.c.a, ~1u, ~4294967295u), min(vec3<u32>(94660u, 42894u, 0u), vec3<u32>(var_2.c.b.x, 0u, 54224u)) >> (~vec3<u32>(var_2.c.b.x, 321u, 85283u) % vec3<u32>(32u))), _wgslsmith_dot_vec3_i32(max(vec3<i32>(u_input.a, var_2.a, var_2.a) & vec3<i32>(var_2.a, var_2.a, 0i), vec3<i32>(u_input.a, u_input.a, -2147483647i)), vec3<i32>(-u_input.a, u_input.a, var_2.a << (47196u % 32u)))));
    return abs(var_2.a) == max(min(i32(-1i) * -var_3.d.b, var_3.d.b), 2147483647i >> (var_2.c.a % 32u));
}

fn func_2() -> vec2<u32> {
    var var_0 = true;
    var_0 = !func_3(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), false));
    let var_1 = -35954i;
    var_0 = select(true, !(!(true || any(vec2<bool>(true, false)))), !any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))));
    var_0 = false;
    return select(min(~(~vec2<u32>(21557u, 4294967295u)) << (vec2<u32>(0u, firstTrailingBit(4923u)) % vec2<u32>(32u)), select(~select(vec2<u32>(6878u, 0u), vec2<u32>(1u, 1u), false), vec2<u32>(1u, 1u), _wgslsmith_dot_vec3_u32(vec3<u32>(25619u, 1473u, 2728u), vec3<u32>(1u, 75417u, 6527u)) >= 44778u)), firstLeadingBit((~vec2<u32>(1u, 20452u) >> (select(vec2<u32>(0u, 70778u), vec2<u32>(4294967295u, 4294967295u), true) % vec2<u32>(32u))) | vec2<u32>(1u, 1u)), select(vec2<bool>(false, false), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), select(vec2<bool>(false, true), vec2<bool>(false, false), false)), all(select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), true))), vec2<bool>(true, true)));
}

fn func_4(arg_0: vec2<bool>, arg_1: vec2<u32>, arg_2: Struct_2, arg_3: i32) -> Struct_1 {
    var var_0 = 2147483647i;
    let var_1 = vec3<u32>(_wgslsmith_mult_u32(~58070u, ~(~arg_2.a)), arg_1.x << (arg_2.b.x % 32u), 41391u);
    var_0 = -1i;
    let var_2 = 56082u;
    var var_3 = arg_1.x;
    return Struct_1(43456u, arg_0.x, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1000f, -227f, 689f))) + _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(905f, 1171f, -2059f)))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-118f, 1000f, -2060f)), vec3<f32>(114f, -254f, -1000f))))), vec4<u32>(var_2, 0u | firstTrailingBit(1u), 27036u, _wgslsmith_add_u32(reverseBits(var_1.x), var_2) << (~0u % 32u)));
}

fn func_1() -> u32 {
    let var_0 = func_4(select(!select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false)), select(vec2<bool>(false, false), vec2<bool>(false, true), false)), !vec2<bool>(any(vec3<bool>(false, true, true)), all(vec4<bool>(false, true, false, true))), !any(vec2<bool>(false, false))), func_2(), Struct_2(109648u, ~vec2<u32>(~51178u, _wgslsmith_clamp_u32(34532u, 0u, 0u))), -u_input.a);
    let var_1 = i32(-1i) * -u_input.a;
    let var_2 = Struct_5(1i >> (abs(~abs(var_0.a)) % 32u), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_0.c.x, -1412f, 1000f, var_0.c.x))))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_0.c.x, 395f, 272f, 972f))))), Struct_2(21969u, vec2<u32>(1u, func_4(vec2<bool>(var_0.b, true), vec2<u32>(1u, 36162u), Struct_2(0u, vec2<u32>(var_0.d.x, var_0.d.x)), 18672i).a & ~8173u)));
    var var_3 = _wgslsmith_f_op_vec4_f32(sign(var_2.b));
    var_3 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1072f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(191f)), _wgslsmith_f_op_f32(var_3.x + -1508f))))) + var_0.c.x), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_2.b.x), var_0.c.x)))), var_2.b.x, var_0.c.x);
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = false;
    var var_1 = ~(~(~1u));
    var_1 = 1u;
    var_1 = _wgslsmith_clamp_u32(~countOneBits(~1u), ~select(~1u, _wgslsmith_mod_u32(96498u, func_1()), true), func_2().x);
    var_1 = ~1u;
    var_0 = !(any(select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(true, true, false))) || !all(vec3<bool>(false, false, true))) | all(vec2<bool>(any(vec4<bool>(true, true, true, false)) == true, all(select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), false))));
    var var_2 = ~47016u;
    let x = u_input.a;
    s_output = StorageBuffer(~23276u);
}

