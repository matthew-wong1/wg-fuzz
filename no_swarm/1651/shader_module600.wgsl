struct Struct_1 {
    a: u32,
    b: bool,
    c: bool,
    d: vec3<bool>,
    e: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: bool,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: vec3<f32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: f32) -> vec3<u32> {
    let var_0 = true;
    let var_1 = _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(abs(-vec2<i32>(-74578i, -5356i) >> (countOneBits(vec2<u32>(0u, 1u)) % vec2<u32>(32u))), ~firstLeadingBit(-vec2<i32>(-2894i, 6353i))), 1i);
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(377f)) * _wgslsmith_f_op_f32(ceil(-795f))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(698f + -310f))), _wgslsmith_f_op_f32(963f - 568f), false))));
    let var_3 = Struct_3(Struct_2(Struct_1(4294967295u, var_0, var_0, !vec3<bool>(var_0, false, false), select(-vec3<i32>(1i, var_1, var_1), -vec3<i32>(0i, 0i, -337i), select(false, var_0, var_0))), u_input.b, !all(vec4<bool>(false, var_0, true, false)) && (true || (-2147483647i >= var_1)), Struct_1(_wgslsmith_mod_u32(4294967295u, u_input.a) >> (_wgslsmith_sub_u32(u_input.a, u_input.b) % 32u), false, _wgslsmith_f_op_f32(arg_0 - 553f) == _wgslsmith_f_op_f32(select(568f, -1078f, true)), select(select(vec3<bool>(true, false, false), vec3<bool>(var_0, false, var_0), var_0), vec3<bool>(true, var_0, var_0), var_0 && var_0), _wgslsmith_add_vec3_i32(abs(vec3<i32>(-1i, var_1, 14351i)), -vec3<i32>(-1i, 10709i, var_1)))));
    let var_4 = var_3.a;
    return countOneBits(firstTrailingBit(vec3<u32>(var_3.a.a.a, ~4294967295u, max(max(var_3.a.a.a, 62441u), _wgslsmith_sub_u32(85990u, 2570u)))));
}

fn func_2(arg_0: Struct_2, arg_1: vec3<i32>) -> vec3<f32> {
    var var_0 = reverseBits(_wgslsmith_mult_vec3_u32(firstTrailingBit(vec3<u32>(~39510u, abs(33982u), 1u >> (arg_0.d.a % 32u))), ~vec3<u32>(u_input.a, ~arg_0.b, abs(4294967295u))));
    var_0 = ~(~func_3(_wgslsmith_f_op_f32(sign(208f))));
    let var_1 = _wgslsmith_mult_i32(1i, _wgslsmith_mod_i32((_wgslsmith_div_i32(-2147483647i, arg_1.x) << (4294967295u % 32u)) >> (4294967295u % 32u), select(-10464i, reverseBits(abs(-1i)), arg_0.d.d.x)));
    let var_2 = !(!arg_0.d.d);
    let var_3 = (0u << (u_input.b % 32u)) == _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 0u, var_0.x), select(vec3<u32>(_wgslsmith_div_u32(11365u, 64243u), 4294967295u, _wgslsmith_div_u32(arg_0.d.a, u_input.b)), ~vec3<u32>(6437u, var_0.x, var_0.x), false));
    return _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(337f, -106f, -905f))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-444f, 1000f, 993f) - vec3<f32>(-668f, 514f, 935f))))))));
}

fn func_1(arg_0: Struct_4, arg_1: bool, arg_2: vec3<i32>, arg_3: vec2<i32>) -> bool {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f))) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-744f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1403f)) + 733f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-302f, 522f) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-827f, -1000f)))), true)));
    let var_1 = Struct_4(arg_0.a, arg_0.b);
    let var_2 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(func_2(Struct_2(Struct_1(22628u, arg_1, var_1.a.d.x, var_1.a.d, vec3<i32>(-26770i, 2147483647i, 5685i)), var_1.a.a, true, var_1.a), vec3<i32>(arg_3.x, 1i, arg_0.a.e.x))))))))));
    let var_3 = Struct_3(Struct_2(Struct_1(max(1u, var_1.a.a), arg_0.a.d.x, any(arg_0.a.d), vec3<bool>(any(var_1.a.d.yx), false, !var_1.a.b), ~select(arg_0.a.e, vec3<i32>(-2147483647i, -117280i, 0i), arg_0.a.d)), countOneBits(~_wgslsmith_sub_u32(0u, arg_0.a.a)), arg_1, Struct_1(~(~67958u), false, all(select(vec4<bool>(var_1.a.c, false, false, var_1.a.b), vec4<bool>(arg_1, arg_0.a.c, false, var_1.a.c), vec4<bool>(arg_0.a.c, arg_0.a.b, false, true))), select(arg_0.a.d, !arg_0.a.d, all(vec4<bool>(false, arg_0.a.c, false, false))), -_wgslsmith_clamp_vec3_i32(vec3<i32>(arg_3.x, arg_3.x, arg_2.x), vec3<i32>(arg_0.a.e.x, arg_3.x, 42519i), vec3<i32>(arg_3.x, arg_2.x, -2147483647i)))));
    let var_4 = Struct_3(Struct_2(var_1.a, 16485u, true | (_wgslsmith_f_op_f32(sign(var_0.x)) != -750f), Struct_1(var_3.a.b, true, !var_1.a.c, select(!arg_0.a.d, select(var_1.a.d, arg_0.a.d, vec3<bool>(arg_0.a.b, true, false)), false), arg_2)));
    return var_4.a.d.d.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(Struct_1(u_input.a, !func_1(Struct_4(Struct_1(1u, false, true, vec3<bool>(true, true, false), vec3<i32>(0i, -11410i, 37123i)), vec2<i32>(5601i, -53496i)), u_input.b >= 0u, vec3<i32>(-43817i, 4367i, -18385i), vec2<i32>(-20194i, 26552i)), true, select(select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true), false), _wgslsmith_clamp_vec3_i32(-_wgslsmith_add_vec3_i32(vec3<i32>(1i, 1i, -75912i), vec3<i32>(-1i, 19977i, 0i)), _wgslsmith_add_vec3_i32(vec3<i32>(0i, -20855i, 1i), vec3<i32>(-2147483647i, 2147483647i, -113i)), ~vec3<i32>(2147483647i, 1i, -1i))), ~firstTrailingBit(~max(vec2<i32>(2147483647i, -30241i), vec2<i32>(26597i, 0i))));
    let var_1 = var_0;
    var var_2 = _wgslsmith_add_u32(var_1.a.a, 49818u);
    let var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(115f + -791f), 1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -258f))), _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-971f * 714f)))));
    let var_4 = _wgslsmith_div_f32(var_3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.x - _wgslsmith_f_op_f32(floor(-1000f))))));
    var_2 = ~(~max(abs(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, var_0.a.a, 0u, 10295u), vec4<u32>(u_input.b, 1u, var_1.a.a, 0u))), ~_wgslsmith_mod_u32(109665u, u_input.b)));
    var_2 = ~(~(~1u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(max(var_3.x, 730f)), _wgslsmith_sub_vec2_u32(select(vec2<u32>(~54475u, firstTrailingBit(var_0.a.a)), _wgslsmith_clamp_vec2_u32(select(vec2<u32>(var_0.a.a, 0u), vec2<u32>(var_1.a.a, var_1.a.a), true), abs(vec2<u32>(var_1.a.a, var_1.a.a)), vec2<u32>(var_0.a.a, var_0.a.a)), true), _wgslsmith_mult_vec2_u32(~vec2<u32>(1u, var_1.a.a), ~_wgslsmith_mod_vec2_u32(vec2<u32>(1u, 0u), vec2<u32>(var_1.a.a, u_input.b)))), _wgslsmith_f_op_vec3_f32(floor(var_3.zwz)), ~(~max(~vec4<u32>(var_1.a.a, u_input.b, 32816u, 0u), vec4<u32>(4294967295u, 4294967295u, 11608u, var_1.a.a))));
}

