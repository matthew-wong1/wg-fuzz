struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec3<bool>,
    c: vec3<bool>,
}

struct Struct_3 {
    a: i32,
    b: vec3<f32>,
    c: vec4<i32>,
    d: i32,
}

struct Struct_4 {
    a: i32,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: f32,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec3<i32>, arg_1: vec4<u32>) -> vec2<f32> {
    global0 = Struct_4(_wgslsmith_sub_i32(~(-79319i), 17019i), -744f);
    global0 = Struct_4(9758i ^ u_input.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1647f - _wgslsmith_f_op_f32(f32(-1f) * -583f))));
    var var_0 = _wgslsmith_mult_vec4_u32(~(countOneBits(arg_1) ^ vec4<u32>(1658u ^ u_input.c, _wgslsmith_dot_vec3_u32(arg_1.www, arg_1.zxy), ~0u, 1u)), _wgslsmith_clamp_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(~0u, 12586u, _wgslsmith_div_u32(1u, 1u), u_input.a), reverseBits(vec4<u32>(1u, 9583u, u_input.a, u_input.c)) >> (abs(vec4<u32>(10720u, 16813u, 35502u, 0u)) % vec4<u32>(32u)), vec4<u32>(1u, 27938u, ~7031u, 0u)), ~arg_1, vec4<u32>(abs(abs(1u)), min(_wgslsmith_mod_u32(0u, arg_1.x), firstTrailingBit(u_input.c)), arg_1.x, 0u)));
    let var_1 = vec2<u32>(~arg_1.x, ~1u);
    var var_2 = abs(~min(-(~0i), -2147483647i & (1i >> (arg_1.x % 32u))));
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_div_f32(1801f, global0.b), _wgslsmith_f_op_f32(-global0.b)), vec2<f32>(_wgslsmith_f_op_f32(global0.b + 733f), 1000f))))) + _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(374f, -375f))))))))));
}

fn func_2() -> Struct_3 {
    let var_0 = vec3<bool>(any(vec4<bool>(false, any(vec2<bool>(false, true)) == true, 1i < min(u_input.b.x, u_input.b.x), !all(vec4<bool>(false, true, false, false)))), true, any(!select(vec4<bool>(true, false, false, true), select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, false), false), true)));
    var var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(1000f * 1446f), _wgslsmith_f_op_f32(step(global0.b, -1371f))) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-817f, global0.b))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(u_input.b, vec4<u32>(26527u, u_input.a, u_input.a, 56292u))))), vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_vec2_f32(func_3(vec3<i32>(global0.a, u_input.b.x, 27417i), vec4<u32>(u_input.c, u_input.c, 77131u, u_input.c))).x, -1851f)), _wgslsmith_f_op_f32(-global0.b)), select(vec2<bool>(true, true), select(vec2<bool>(true, false), select(var_0.yy, var_0.xy, var_0.x), !vec2<bool>(var_0.x, var_0.x)), vec2<bool>(true, !var_0.x)))));
    return Struct_3(u_input.b.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-564f, -1140f, var_1.x) * _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_1.x, var_1.x, 1500f)))) + _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(-139f, 268f, -263f) * vec3<f32>(var_1.x, -1000f, var_1.x)), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2061f, -506f, -1222f)), vec3<f32>(797f, 1000f, global0.b)))))), vec4<i32>(~0i, -(~_wgslsmith_mod_i32(global0.a, 4809i)), u_input.b.x, 2147483647i), ~(~u_input.b.x));
}

fn func_4(arg_0: i32, arg_1: Struct_3, arg_2: f32) -> Struct_4 {
    global0 = Struct_4(7565i, _wgslsmith_f_op_f32(step(arg_1.b.x, -1701f)));
    global0 = Struct_4(~_wgslsmith_dot_vec2_i32(vec2<i32>(global0.a, _wgslsmith_mult_i32(global0.a, arg_1.d)), ~min(vec2<i32>(21494i, global0.a), u_input.b.zx)), 257f);
    let var_0 = Struct_1(_wgslsmith_mod_i32(u_input.b.x, reverseBits(_wgslsmith_div_i32(24116i, arg_1.c.x) & _wgslsmith_mult_i32(2147483647i, -1i))));
    let var_1 = u_input.c;
    let var_2 = ~(~abs(vec2<i32>(_wgslsmith_mult_i32(var_0.a, 2147483647i), _wgslsmith_mult_i32(arg_0, 57178i))));
    return Struct_4(-2147483647i, 606f);
}

fn func_1(arg_0: bool, arg_1: vec2<i32>) -> Struct_4 {
    global0 = func_4(global0.a, func_2(), global0.b);
    let var_0 = -u_input.b;
    let var_1 = ~(~u_input.c);
    global0 = Struct_4(~min(-abs(var_0.x), ~arg_1.x), _wgslsmith_f_op_f32(min(global0.b, global0.b)));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1015f))));
    return Struct_4(_wgslsmith_div_i32(u_input.b.x, _wgslsmith_div_i32(u_input.b.x, _wgslsmith_clamp_i32(firstLeadingBit(arg_1.x), 0i >> (u_input.c % 32u), -2147483647i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1(true && all(!select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, false), true)), vec2<i32>(50818i, _wgslsmith_dot_vec2_i32(u_input.b.xz, -abs(vec2<i32>(-10581i, u_input.b.x)))));
    let var_0 = vec4<u32>(firstTrailingBit(1u) | 5088u, u_input.c, 4294967295u, u_input.a);
    let var_1 = func_1(!any(!select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false))), vec2<i32>(max(global0.a, u_input.b.x) << (~var_0.x % 32u), firstLeadingBit(2147483647i)) ^ vec2<i32>(global0.a >> (_wgslsmith_div_u32(u_input.c, u_input.a) % 32u), reverseBits(-1i)));
    let var_2 = var_0.x;
    global0 = func_1(true, u_input.b.yx);
    let var_3 = ~(~u_input.a);
    var var_4 = func_4(var_1.a, Struct_3(_wgslsmith_mod_i32(-_wgslsmith_dot_vec2_i32(u_input.b.zz, u_input.b.zz), ~u_input.b.x ^ (i32(-1i) * -43779i)), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1707f, _wgslsmith_f_op_f32(-1215f * 197f), _wgslsmith_f_op_f32(-var_1.b)))), vec4<i32>(-countOneBits(var_1.a), _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -2147483647i, global0.a, u_input.b.x) & vec4<i32>(-76649i, 60546i, 1i, var_1.a), ~vec4<i32>(var_1.a, global0.a, 2147483647i, 0i)), _wgslsmith_div_i32(-811i, var_1.a & global0.a), _wgslsmith_dot_vec3_i32(u_input.b, u_input.b)), _wgslsmith_mult_i32(u_input.b.x, (-27907i << (var_2 % 32u)) | 34628i)), _wgslsmith_f_op_f32(sign(global0.b)));
    var var_5 = vec2<u32>(var_3 >> (abs(13424u) % 32u), ~51892u);
    var_5 = var_0.xx;
    let x = u_input.a;
    s_output = StorageBuffer(var_1.a, vec2<f32>(_wgslsmith_f_op_f32(var_4.b + var_1.b), 202f), var_4.b, var_4.b, _wgslsmith_div_f32(1508f, _wgslsmith_f_op_f32(-var_1.b)));
}

