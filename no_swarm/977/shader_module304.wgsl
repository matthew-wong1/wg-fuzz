struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec4<i32>,
    d: vec3<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: vec4<f32>) -> f32 {
    let var_0 = any(!(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), false))));
    var var_1 = ~(reverseBits(_wgslsmith_mult_vec4_u32(select(vec4<u32>(18052u, arg_0.b.x, arg_0.c.x, 4294967295u), vec4<u32>(arg_0.c.x, 1u, arg_0.b.x, u_input.d.x), vec4<bool>(var_0, true, var_0, false)), _wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 0u, arg_0.c.x, arg_0.c.x), vec4<u32>(u_input.d.x, arg_0.c.x, arg_0.c.x, arg_0.b.x)))) | ~(~(~vec4<u32>(1u, u_input.d.x, arg_0.c.x, u_input.d.x))));
    var var_2 = arg_0;
    var_1 = _wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_2.c.x << (0u % 32u), arg_0.b.x, 4294967295u, ~var_2.b.x), abs(select(vec4<u32>(25905u, arg_0.b.x, u_input.d.x, var_1.x), vec4<u32>(arg_0.b.x, 32569u, 0u, 0u), var_0))), var_2.c.x, _wgslsmith_clamp_u32(_wgslsmith_mod_u32(1u, arg_0.b.x & 0u), _wgslsmith_div_u32(var_1.x, var_1.x), _wgslsmith_mod_u32(var_2.c.x, firstLeadingBit(u_input.d.x))), ~abs(~4294967295u)), ~_wgslsmith_add_vec4_u32(vec4<u32>(36562u, arg_0.b.x << (36082u % 32u), abs(4294967295u), _wgslsmith_add_u32(u_input.d.x, var_2.b.x)), vec4<u32>(abs(var_1.x), abs(40555u), u_input.d.x, _wgslsmith_dot_vec3_u32(var_1.xxz, var_1.xzy))));
    var var_3 = Struct_2(Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(var_2.a)), _wgslsmith_f_op_f32(-arg_0.a))), vec2<u32>(u_input.d.x, 4294967295u) >> ((~arg_0.b >> (reverseBits(var_1.ww) % vec2<u32>(32u))) % vec2<u32>(32u)), _wgslsmith_sub_vec2_u32(vec2<u32>(select(var_1.x, arg_0.b.x, false), var_1.x), u_input.d)), u_input.b, arg_0);
    return -1000f;
}

fn func_2(arg_0: u32) -> Struct_2 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)) * _wgslsmith_f_op_f32(func_3(Struct_1(1349f, _wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, 51144u), vec2<u32>(arg_0, arg_0), vec2<u32>(4294967295u, 0u)), u_input.d), _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) * _wgslsmith_f_op_vec4_f32(vec4<f32>(795f, 219f, -748f, -415f) * vec4<f32>(-276f, 203f, -1000f, 1401f)))))), ~(~(~vec2<u32>(1u, 36100u))), ~firstLeadingBit(reverseBits(vec2<u32>(u_input.d.x, u_input.d.x) & u_input.d)));
    var var_1 = vec2<bool>(true, any(vec4<bool>(true, true, true, true)) || all(!select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true), true)));
    var_1 = select(vec2<bool>(true, true), select(!select(!vec2<bool>(false, var_1.x), vec2<bool>(var_1.x, var_1.x), true), vec2<bool>(true, !any(vec3<bool>(true, true, false))), select(!vec2<bool>(true, var_1.x), !select(vec2<bool>(false, true), vec2<bool>(var_1.x, var_1.x), vec2<bool>(var_1.x, var_1.x)), vec2<bool>(select(false, false, true), !var_1.x))), any(select(select(vec3<bool>(false, true, var_1.x), !vec3<bool>(true, var_1.x, true), select(vec3<bool>(true, true, var_1.x), vec3<bool>(var_1.x, true, var_1.x), vec3<bool>(var_1.x, true, true))), vec3<bool>(false, var_1.x, var_1.x), vec3<bool>(var_1.x, -1000f <= var_0.a, var_1.x))));
    var var_2 = _wgslsmith_mod_vec2_u32(var_0.b, u_input.d);
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a * -1326f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a) + _wgslsmith_f_op_f32(-var_0.a))) - _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-575f, var_0.a), vec2<f32>(750f, 994f), vec2<bool>(var_1.x, false)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a, 2529f) - _wgslsmith_f_op_vec2_f32(vec2<f32>(483f, 616f) - vec2<f32>(-1072f, 873f)))))));
    return Struct_2(Struct_1(var_3.x, ~abs(var_0.b), u_input.d), i32(-1i) * -2147483647i, Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_0.a + _wgslsmith_f_op_f32(sign(var_0.a))), _wgslsmith_f_op_f32(-442f - 692f))), var_0.b ^ max(max(u_input.d, vec2<u32>(49933u, var_0.b.x)), var_0.c), vec2<u32>(0u, _wgslsmith_clamp_u32(arg_0, 0u, arg_0))));
}

fn func_1(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: bool) -> Struct_1 {
    var var_0 = func_2(arg_1.x);
    var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1770f * arg_0.a)), firstLeadingBit(var_0.a.c >> (var_0.c.c % vec2<u32>(32u))), vec2<u32>(49643u, ~arg_1.x)), _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(abs(vec2<i32>(var_0.b, u_input.a)) & -u_input.c.yy, firstTrailingBit(~u_input.c.xz)), ~reverseBits(2147483647i), ~(-31117i)), Struct_1(_wgslsmith_f_op_f32(-arg_0.a), u_input.d, arg_0.b));
    let var_1 = firstLeadingBit(-24478i);
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-740f, arg_0.a)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-483f, -301f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1495f, var_0.c.a))))));
    var var_3 = vec4<bool>(all(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(arg_2, false, arg_2, arg_2), vec4<bool>(arg_2, arg_2, false, false), false), select(vec4<bool>(arg_2, arg_2, false, false), vec4<bool>(false, true, arg_2, true), vec4<bool>(false, true, arg_2, true)))), false, true, arg_2);
    return func_2(_wgslsmith_dot_vec3_u32(min(vec3<u32>(arg_0.b.x, _wgslsmith_clamp_u32(arg_0.b.x, 1u, 1u), _wgslsmith_dot_vec2_u32(var_0.c.c, vec2<u32>(u_input.d.x, var_0.a.c.x))), _wgslsmith_mult_vec3_u32(~vec3<u32>(56965u, 0u, u_input.d.x), vec3<u32>(1417u, u_input.d.x, arg_1.x))), arg_1)).c;
}

fn func_4(arg_0: f32, arg_1: Struct_1) -> u32 {
    var var_0 = func_2(u_input.d.x);
    let var_1 = ~_wgslsmith_mult_u32(~u_input.d.x, ~min(37986u, arg_1.c.x >> (arg_1.b.x % 32u)));
    var var_2 = arg_0;
    var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(767f, _wgslsmith_f_op_f32(arg_0 + -971f))) * -491f));
    var var_3 = var_0.a;
    return _wgslsmith_clamp_u32(~(~(~_wgslsmith_div_u32(arg_1.b.x, 0u))), arg_1.b.x, 56503u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -121f))), ~u_input.d, u_input.d), -_wgslsmith_clamp_i32(1i, -(-72456i ^ u_input.a), abs(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, u_input.b, -13064i, -3513i), vec4<i32>(-6417i, u_input.c.x, 6323i, u_input.c.x)))), Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(145f - 137f) * 1496f), _wgslsmith_f_op_f32(581f + -995f), any(vec4<bool>(false, false, true, false)))), ~vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 0u), vec2<u32>(0u, 1u)), u_input.d.x), vec2<u32>(_wgslsmith_mult_u32(~u_input.d.x, firstTrailingBit(u_input.d.x)), func_4(_wgslsmith_f_op_f32(min(-190f, -1540f)), func_1(Struct_1(-1599f, vec2<u32>(0u, 1u), u_input.d), vec3<u32>(u_input.d.x, 29260u, 1u), false)))));
    var var_1 = var_0.a;
    let var_2 = func_1(Struct_1(_wgslsmith_f_op_f32(ceil(1213f)), var_1.b, (firstTrailingBit(var_1.b) & _wgslsmith_add_vec2_u32(var_0.a.c, vec2<u32>(74293u, 1u))) >> (vec2<u32>(reverseBits(1u), var_1.c.x) % vec2<u32>(32u))), vec3<u32>(25475u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d.x, var_0.a.b.x, 4294967295u, ~var_1.b.x), select(~vec4<u32>(var_0.c.b.x, 21924u, var_1.c.x, u_input.d.x), vec4<u32>(var_1.c.x, 20459u, var_0.a.c.x, var_1.c.x), vec4<bool>(false, false, true, false))), _wgslsmith_div_u32(~1u, 49628u)), true);
    var var_3 = func_1(func_2(min(var_0.a.b.x, ~(~var_1.b.x))).c, _wgslsmith_clamp_vec3_u32(firstLeadingBit(~(vec3<u32>(4294967295u, u_input.d.x, 13400u) ^ vec3<u32>(1u, var_0.c.b.x, var_1.c.x))), ~countOneBits(~vec3<u32>(var_1.b.x, var_1.b.x, var_1.c.x)), vec3<u32>(abs(var_1.c.x), min(1u, 1u), ~62314u) << (~min(vec3<u32>(var_1.b.x, 28637u, var_1.b.x), vec3<u32>(1u, u_input.d.x, var_2.b.x)) % vec3<u32>(32u))), true);
    var var_4 = vec2<f32>(_wgslsmith_f_op_f32(ceil(1487f)), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(var_1.a)))), var_2.a))));
    var var_5 = _wgslsmith_mod_vec3_u32(~min(_wgslsmith_mult_vec3_u32(min(vec3<u32>(58566u, var_3.c.x, 0u), vec3<u32>(var_2.c.x, var_3.c.x, 28385u)), firstTrailingBit(vec3<u32>(var_1.b.x, 4294967295u, 40996u))), _wgslsmith_clamp_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(0u, var_2.b.x, var_0.c.c.x), vec3<u32>(var_3.b.x, 0u, u_input.d.x)), _wgslsmith_sub_vec3_u32(vec3<u32>(var_2.c.x, 1u, var_0.a.c.x), vec3<u32>(var_0.a.b.x, 49234u, 0u)), vec3<u32>(0u, var_1.b.x, 0u) ^ vec3<u32>(192u, 1u, var_0.a.c.x))), ~(_wgslsmith_div_vec3_u32(~vec3<u32>(1u, var_3.c.x, u_input.d.x), vec3<u32>(u_input.d.x, 25121u, 91662u) >> (vec3<u32>(var_3.c.x, 50232u, 1u) % vec3<u32>(32u))) << (vec3<u32>(1u, firstLeadingBit(u_input.d.x), 15629u) % vec3<u32>(32u))));
    var_4 = _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1038f, -2029f)));
    let var_6 = func_2(select(var_3.c.x, var_0.c.b.x, select((1u <= u_input.d.x) & true, any(vec3<bool>(true, true, true)) & any(vec2<bool>(true, false)), !(var_4.x < var_2.a)))).b;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(var_3.c.x, var_2.b.x, var_5.x & 4294967295u), _wgslsmith_sub_vec3_i32(reverseBits(u_input.c), -_wgslsmith_add_vec3_i32(abs(vec3<i32>(2147483647i, -2147483647i, 45352i)), _wgslsmith_div_vec3_i32(vec3<i32>(-15269i, 2147483647i, var_6), u_input.c))), -_wgslsmith_div_vec4_i32(abs(vec4<i32>(51560i, -1i, var_0.b, var_6) & vec4<i32>(var_0.b, var_6, var_6, -29607i)), -_wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, var_0.b, var_0.b, 2147483647i), vec4<i32>(u_input.c.x, var_0.b, -2782i, -3684i))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(392f))), 410f, _wgslsmith_div_f32(func_1(var_2, vec3<u32>(4294967295u, 1u, var_1.b.x), false).a, _wgslsmith_f_op_f32(step(-662f, var_4.x))))), ~1u);
}

