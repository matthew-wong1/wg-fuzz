struct Struct_1 {
    a: vec2<f32>,
    b: vec3<f32>,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec4<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> u32 {
    let var_0 = -2147483647i | u_input.a.x;
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-arg_2.b.yy), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-arg_0.b.x), -1076f, -1142f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.b.x, arg_0.a.x, -349f)))), arg_1.c);
    return _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(~vec4<u32>(abs(1u), arg_2.c.x, _wgslsmith_dot_vec2_u32(arg_1.c.zy, vec2<u32>(arg_1.c.x, arg_0.c.x)), ~arg_2.c.x), ~(~_wgslsmith_add_vec4_u32(vec4<u32>(arg_2.c.x, 0u, 48258u, arg_0.c.x), vec4<u32>(41412u, arg_0.c.x, arg_1.c.x, arg_0.c.x)))), vec4<u32>(~_wgslsmith_mult_u32(arg_1.c.x | 0u, arg_2.c.x), ~60526u, _wgslsmith_div_u32(arg_0.c.x, arg_1.c.x), _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(~vec2<u32>(arg_2.c.x, arg_0.c.x), _wgslsmith_mod_vec2_u32(var_1.c.yz, arg_2.c.xy), arg_2.c.yx), _wgslsmith_mult_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.b, 0u), vec2<u32>(44755u, 37624u)), vec2<u32>(4294967295u, 28517u)))));
}

fn func_2() -> Struct_1 {
    var var_0 = abs(vec3<i32>(-1i, u_input.a.x, ~u_input.a.x));
    var_0 = vec3<i32>(-2147483647i, u_input.a.x, var_0.x);
    var_0 = vec3<i32>(-1i) * -_wgslsmith_div_vec3_i32(_wgslsmith_div_vec3_i32(~u_input.a.xxw, vec3<i32>(0i, -2147483647i, u_input.a.x)), ~vec3<i32>(var_0.x, -2147483647i, 1i) ^ _wgslsmith_mod_vec3_i32(vec3<i32>(2147483647i, 31287i, -87552i), vec3<i32>(-54801i, var_0.x, u_input.a.x)));
    let var_1 = vec2<u32>((func_3(Struct_1(vec2<f32>(-892f, 2340f), vec3<f32>(125f, 409f, -1656f), vec3<u32>(u_input.b, u_input.b, u_input.b)), Struct_1(vec2<f32>(423f, 640f), vec3<f32>(750f, -1000f, 863f), vec3<u32>(68275u, u_input.b, 1u)), Struct_1(vec2<f32>(-1811f, 2041f), vec3<f32>(-2682f, -169f, -206f), vec3<u32>(1u, u_input.b, u_input.b))) >> (1u % 32u)) | (u_input.b << (u_input.b % 32u)), abs(~(~select(u_input.b, u_input.b, false))));
    var var_2 = var_1;
    return Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(2242f - -750f), _wgslsmith_f_op_f32(sign(-2316f))))) * _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(1109f, -381f), vec2<f32>(-659f, -1195f))), vec2<f32>(1f, 1f)))), vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(round(-338f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1301f - -369f) - _wgslsmith_f_op_f32(floor(-1808f)))), -268f), vec3<u32>(~(max(var_2.x, u_input.b) & u_input.b), 33442u, select(~u_input.b, ~4294967295u, all(vec3<bool>(false, true, true))) >> (_wgslsmith_mod_u32(0u, var_1.x) % 32u)));
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1, arg_3: f32) -> Struct_1 {
    var var_0 = select(!select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, true)), select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, true), false), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true)), select(vec4<bool>(822f > arg_1.b.x, !(1714f > arg_2.b.x), true, false), select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true)), vec4<bool>(false, true, false, false), select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, false))), vec4<bool>(true, any(vec4<bool>(true, false, false, true)), true, true), any(vec3<bool>(true, true, true))), any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true))), !select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true)), vec4<bool>(false, true, true, false)), select(select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, false), true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1509f)));
    var var_2 = arg_2;
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.b.x)) - _wgslsmith_f_op_f32(-arg_2.b.x)) + 226f);
    let var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(var_2.b.zz - _wgslsmith_f_op_vec2_f32(-arg_1.b.xz)))), var_2.b, vec3<u32>(var_2.c.x, u_input.b, 4294967295u));
    return Struct_1(var_3.a, var_3.b, _wgslsmith_add_vec3_u32(vec3<u32>(var_3.c.x, arg_1.c.x, var_2.c.x), _wgslsmith_clamp_vec3_u32(~(arg_1.c | vec3<u32>(18720u, u_input.b, 53123u)), arg_2.c & func_2().c, _wgslsmith_sub_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(1u, var_3.c.x, var_3.c.x), arg_1.c), vec3<u32>(67432u, var_3.c.x, u_input.b)))));
}

fn func_1(arg_0: i32, arg_1: vec4<f32>, arg_2: vec4<bool>, arg_3: f32) -> Struct_1 {
    return func_4(arg_0, func_2(), func_2(), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x + 385f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(_wgslsmith_mult_i32(-22753i, u_input.a.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(810f, 412f, 215f, -1262f))), vec4<f32>(-966f, 458f, 1547f, 1552f))))), vec4<bool>(all(vec4<bool>(true, u_input.a.x >= -1i, true, true)), true, !all(vec3<bool>(true, false, true)), true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(950f))));
    let var_1 = ~0u;
    var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(var_0.b.x + 682f), _wgslsmith_f_op_f32(ceil(var_0.a.x))), vec2<f32>(_wgslsmith_f_op_f32(-var_0.a.x), 854f)) * _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.b.xz + var_0.a), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_0.a.x, var_0.b.x)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.x, var_0.a.x))))), _wgslsmith_f_op_vec3_f32(-func_2().b), ~(~(var_0.c << ((var_0.c ^ vec3<u32>(0u, 0u, 4294967295u)) % vec3<u32>(32u)))));
    let var_2 = vec3<bool>(all(!(!select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, true)))), !(!(-u_input.a.x == 10152i)), !any(vec4<bool>(any(vec4<bool>(false, false, false, true)), true, true, true)));
    var var_3 = var_0.b.yz;
    let x = u_input.a;
    s_output = StorageBuffer(var_1, ~_wgslsmith_mult_vec2_u32(reverseBits(var_0.c.zz), ~var_0.c.xz) << (vec2<u32>(1u, abs(4294967295u)) % vec2<u32>(32u)), (_wgslsmith_sub_vec4_u32(~vec4<u32>(30845u, 67141u, 106456u, var_1), vec4<u32>(22362u, 0u, 3669u, var_0.c.x)) & (vec4<u32>(var_1, 0u, 4294967295u, var_0.c.x) ^ vec4<u32>(var_1, 1u, 82633u, u_input.b))) ^ (min(vec4<u32>(7992u, 4294967295u, var_1, 39042u), _wgslsmith_clamp_vec4_u32(vec4<u32>(72341u, 400u, u_input.b, 62513u), vec4<u32>(17883u, 0u, 0u, u_input.b), vec4<u32>(0u, 6427u, var_0.c.x, 1u))) ^ firstLeadingBit(vec4<u32>(u_input.b, 4071u, var_0.c.x, 4294967295u))), -568f);
}

