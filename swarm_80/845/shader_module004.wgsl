struct Struct_1 {
    a: vec4<u32>,
    b: vec4<u32>,
    c: f32,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 13>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: bool, arg_1: vec2<u32>, arg_2: Struct_2) -> vec2<bool> {
    let var_0 = Struct_3(Struct_2(Struct_1(~max(arg_2.a.b, vec4<u32>(41009u, 4294967295u, u_input.a.x, 27363u)), _wgslsmith_clamp_vec4_u32(min(vec4<u32>(20845u, u_input.a.x, arg_2.a.b.x, u_input.a.x), arg_2.a.b), ~arg_2.a.a, arg_2.a.b), _wgslsmith_f_op_f32(-arg_2.a.c), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_2.a.c))))));
    global0 = array<vec2<f32>, 13>();
    var var_1 = Struct_2(Struct_1(~select(var_0.a.a.a, firstLeadingBit(vec4<u32>(var_0.a.a.a.x, arg_1.x, arg_1.x, 0u)), all(vec4<bool>(arg_0, false, false, true))), vec4<u32>(49409u, arg_1.x | 1u, var_0.a.a.a.x, _wgslsmith_add_u32(_wgslsmith_mod_u32(23783u, u_input.a.x), arg_2.a.a.x)), -641f, _wgslsmith_f_op_f32(max(-895f, _wgslsmith_f_op_f32(abs(-678f))))));
    var var_2 = _wgslsmith_dot_vec3_i32(firstTrailingBit(_wgslsmith_mod_vec3_i32(vec3<i32>(1i, 30894i, -1i) >> (vec3<u32>(u_input.a.x, var_1.a.a.x, 23474u) % vec3<u32>(32u)), vec3<i32>(1i, 1i, 1i))) >> (~vec3<u32>(~arg_2.a.b.x, _wgslsmith_mult_u32(arg_1.x, 44920u), ~11162u) % vec3<u32>(32u)), vec3<i32>(-77611i, _wgslsmith_sub_i32(min(~1i, _wgslsmith_mod_i32(45062i, 2147483647i)), -1i), -2147483647i));
    global0 = array<vec2<f32>, 13>();
    return select(vec2<bool>(!any(!vec4<bool>(true, arg_0, false, arg_0)), ~4294967295u <= countOneBits(arg_2.a.a.x)), vec2<bool>(any(vec2<bool>(true, arg_0)), false), arg_0);
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_2(Struct_1(vec4<u32>(~70108u, u_input.a.x, 9431u, ~25123u << (u_input.a.x % 32u)), ~vec4<u32>(~u_input.a.x, firstLeadingBit(33707u), 1u, ~u_input.a.x), _wgslsmith_f_op_f32(-153f * -186f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1714f)))));
    var var_1 = false;
    let var_2 = !select(vec2<bool>(true, true), func_3(true, var_0.a.a.zy, Struct_2(Struct_1(vec4<u32>(var_0.a.b.x, 24715u, var_0.a.b.x, var_0.a.b.x), vec4<u32>(u_input.a.x, 34581u, var_0.a.b.x, u_input.a.x), var_0.a.c, var_0.a.d))), select(vec2<bool>(false, false), select(vec2<bool>(false, true), vec2<bool>(true, false), true), vec2<bool>(false, true)));
    var_1 = false;
    return Struct_2(Struct_1(reverseBits(vec4<u32>(_wgslsmith_sub_u32(var_0.a.a.x, 17543u), 1u, 65315u, abs(u_input.a.x))), var_0.a.a >> ((min(var_0.a.b, var_0.a.b) ^ ~vec4<u32>(var_0.a.b.x, var_0.a.a.x, var_0.a.a.x, 13924u)) % vec4<u32>(32u)), var_0.a.c, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.a.c)))))));
}

fn func_1(arg_0: Struct_1, arg_1: i32, arg_2: vec3<bool>) -> Struct_1 {
    global0 = array<vec2<f32>, 13>();
    global0 = array<vec2<f32>, 13>();
    global0 = array<vec2<f32>, 13>();
    let var_0 = arg_0;
    var var_1 = func_2();
    return func_2().a;
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_1) -> Struct_2 {
    var var_0 = max(vec3<u32>(u_input.a.x, max(arg_1.a.x, 4294967295u) & arg_1.b.x, firstTrailingBit(u_input.a.x << (4294967295u % 32u))), _wgslsmith_add_vec3_u32(~arg_1.a.zzy, ~arg_0.wyw) | (abs(arg_0.xxz) << (countOneBits(vec3<u32>(11075u, 4294967295u, 103847u)) % vec3<u32>(32u)))) << (arg_1.b.ywz % vec3<u32>(32u));
    var_0 = select(_wgslsmith_clamp_vec3_u32(abs(reverseBits(reverseBits(arg_1.a.yxx))), _wgslsmith_add_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(0u, 41636u, arg_0.x), select(vec3<u32>(arg_1.b.x, 23447u, 0u), arg_0.zxy, false)), arg_0.zxz), vec3<u32>(u_input.a.x, 42447u, _wgslsmith_dot_vec4_u32(arg_1.b, countOneBits(vec4<u32>(u_input.a.x, 1u, 33402u, 1u))))), abs(vec3<u32>(func_2().a.b.x, select(14963u >> (arg_0.x % 32u), u_input.a.x, any(vec2<bool>(true, true))), arg_0.x)), vec3<bool>(false, any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false))), true));
    var var_1 = _wgslsmith_add_vec4_u32(~arg_0, vec4<u32>(var_0.x & u_input.a.x, 0u, 21307u, _wgslsmith_mod_u32(min(4294967295u, min(46415u, 9374u)), firstLeadingBit(firstTrailingBit(22563u)))));
    var var_2 = ~(~var_1.x);
    var_2 = ~(~4294967295u);
    return Struct_2(arg_1);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<f32>, 13>();
    var var_0 = select(-5438i, _wgslsmith_mult_i32(_wgslsmith_sub_i32(abs(~18896i), -2147483647i << (_wgslsmith_dot_vec2_u32(u_input.a, u_input.a) % 32u)), _wgslsmith_sub_i32(-44460i, _wgslsmith_clamp_i32(-1i, -1i, 2147483647i) >> (u_input.a.x % 32u))), true);
    let var_1 = Struct_3(func_4(vec4<u32>(1u, _wgslsmith_mult_u32(u_input.a.x, 12695u), reverseBits(u_input.a.x), select(u_input.a.x, 12715u, false)) | countOneBits(vec4<u32>(23362u, u_input.a.x, 1u, 315u) ^ vec4<u32>(63016u, u_input.a.x, u_input.a.x, 52007u)), func_1(Struct_1(vec4<u32>(64927u, 0u, 46325u, 31209u), select(vec4<u32>(u_input.a.x, 1u, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, 0u), true), _wgslsmith_f_op_f32(ceil(275f)), 1f), 0i, select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), true))));
    var var_2 = var_1.a.a;
    var_0 = abs(_wgslsmith_clamp_i32(1i, _wgslsmith_clamp_i32(reverseBits(0i), ~_wgslsmith_clamp_i32(-22994i, -1i, 0i), 18807i), min(-2147483647i << (var_2.a.x % 32u), -2147483647i)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.c), _wgslsmith_f_op_f32(1523f - -211f)), _wgslsmith_f_op_f32(step(var_2.c, var_2.c))))), _wgslsmith_add_vec3_i32(select(~vec3<i32>(1i, 1i, 1i), ~vec3<i32>(1i, 1i, 1i), vec3<bool>(false, true, false)), abs(~vec3<i32>(-32329i, 22646i, -2603i))));
}

