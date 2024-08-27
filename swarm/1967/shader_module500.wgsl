struct Struct_1 {
    a: vec4<bool>,
    b: vec2<i32>,
    c: vec2<f32>,
    d: vec2<bool>,
    e: vec2<f32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: bool,
    d: Struct_1,
    e: vec2<bool>,
}

struct Struct_3 {
    a: u32,
    b: bool,
}

struct Struct_4 {
    a: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
    d: i32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: vec4<bool> = vec4<bool>(false, false, true, true);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> bool {
    let var_0 = 27152u;
    var var_1 = ~vec2<u32>(firstLeadingBit(1u), ((var_0 << (0u % 32u)) >> (~0u % 32u)) >> (60561u % 32u));
    global0 = countOneBits(vec3<u32>(~min(global0.x, 48724u), ~var_0, 4294967295u));
    var var_2 = !all(vec4<bool>(all(vec3<bool>(true, global1.x, global1.x)), all(vec2<bool>(true, false)), global1.x, true)) | any(select(select(vec4<bool>(global1.x, true, true, global1.x), vec4<bool>(false, false, true, false), all(vec3<bool>(global1.x, global1.x, global1.x))), !vec4<bool>(global1.x, true, global1.x, global1.x), select(!vec4<bool>(false, global1.x, true, false), select(vec4<bool>(global1.x, true, false, true), vec4<bool>(true, global1.x, global1.x, global1.x), false), all(global1.zy))));
    var var_3 = u_input.a.x;
    return true;
}

fn func_2(arg_0: vec3<u32>, arg_1: f32) -> Struct_3 {
    global0 = select(arg_0, _wgslsmith_div_vec3_u32(~arg_0, ~arg_0), global1.x);
    var var_0 = Struct_4(_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(countOneBits(select(vec4<i32>(27153i, 5797i, 0i, -22582i), vec4<i32>(u_input.a.x, -2147483647i, u_input.a.x, 0i), vec4<bool>(true, global1.x, false, global1.x))), _wgslsmith_add_vec4_i32(abs(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)), -vec4<i32>(2147483647i, u_input.a.x, u_input.a.x, 7344i))), _wgslsmith_add_vec4_i32(vec4<i32>(min(-27535i, 19943i), -u_input.a.x, firstTrailingBit(26659i), u_input.a.x), ~(~vec4<i32>(u_input.a.x, -10996i, -18663i, u_input.a.x)))));
    var_0 = Struct_4(var_0.a);
    let var_1 = Struct_1(vec4<bool>(false, func_3(), false, all(!vec2<bool>(global1.x, global1.x))), vec2<i32>(_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, 15783i, u_input.a.x, 0i), vec4<i32>(var_0.a, 31377i, -1i, -57231i)), firstTrailingBit(vec4<i32>(u_input.a.x, u_input.a.x, -2147483647i, u_input.a.x))), 1i >> ((global0.x << (global0.x % 32u)) % 32u)), u_input.a.x), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_1 + -134f)))), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(arg_1, _wgslsmith_f_op_f32(round(244f)))))), global1.ww, vec2<f32>(-609f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1))));
    let var_2 = firstLeadingBit(0u);
    return Struct_3(4294967295u, var_1.d.x);
}

fn func_4(arg_0: Struct_3, arg_1: Struct_3) -> u32 {
    let var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(644f, -802f, 454f)))))), Struct_1(select(!(!vec4<bool>(false, global1.x, arg_1.b, arg_1.b)), !(!vec4<bool>(false, false, true, arg_0.b)), false && !arg_1.b), abs(u_input.a.yx), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_div_f32(-738f, -1000f), 1f))), global1.xw, vec2<f32>(_wgslsmith_f_op_f32(-201f * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -344f))), false, Struct_1(!select(!vec4<bool>(global1.x, arg_0.b, arg_0.b, true), select(vec4<bool>(arg_1.b, false, false, true), vec4<bool>(global1.x, true, false, global1.x), vec4<bool>(arg_0.b, false, false, false)), arg_1.b || false), u_input.a.zx, _wgslsmith_f_op_vec2_f32(-vec2<f32>(1680f, -1000f)), select(select(!global1.xx, vec2<bool>(false, true), select(vec2<bool>(arg_0.b, global1.x), vec2<bool>(false, true), false)), select(select(vec2<bool>(global1.x, true), global1.yz, arg_0.b), vec2<bool>(true, false), true), true), vec2<f32>(_wgslsmith_f_op_f32(-806f * -170f), _wgslsmith_f_op_f32(round(-459f)))), vec2<bool>(false, any(vec3<bool>(func_3(), all(vec2<bool>(arg_1.b, true)), true))));
    global1 = vec4<bool>(false, var_0.c, 6643u <= min(_wgslsmith_mod_u32(abs(global0.x), 1u), 19715u ^ arg_0.a), false);
    let var_1 = vec2<bool>((firstTrailingBit(70522u) & abs(global0.x)) < firstTrailingBit(~global0.x), (false && !any(vec3<bool>(arg_0.b, true, true))) & arg_0.b);
    global0 = _wgslsmith_mod_vec3_u32(vec3<u32>(min(~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, global0.x, 1u), vec3<u32>(31708u, 1u, 30201u)), ~30089u), select(~21484u, max(63383u, _wgslsmith_mult_u32(arg_0.a, 10060u)), true), global0.x), vec3<u32>(max(~28840u, select(global0.x, global0.x, global1.x)) ^ ~(~0u), ~(~_wgslsmith_dot_vec2_u32(vec2<u32>(18141u, global0.x), vec2<u32>(global0.x, arg_0.a))), 7277u));
    global0 = vec3<u32>(countOneBits(_wgslsmith_dot_vec3_u32(~_wgslsmith_div_vec3_u32(vec3<u32>(global0.x, global0.x, arg_0.a), vec3<u32>(arg_1.a, arg_0.a, arg_0.a)), vec3<u32>(~4294967295u, arg_1.a, 4294967295u))), 1u, ~arg_0.a);
    return _wgslsmith_div_u32(_wgslsmith_sub_u32(~0u, _wgslsmith_add_u32(_wgslsmith_add_u32(~arg_1.a, arg_0.a & global0.x), arg_0.a)), ~(~abs(~arg_0.a)));
}

fn func_1(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1, arg_3: bool) -> Struct_1 {
    global0 = ~firstLeadingBit(vec3<u32>(~arg_0, 1u, 50123u)) >> (vec3<u32>(_wgslsmith_add_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0, arg_0, 4294967295u, arg_0), vec4<u32>(0u, arg_0, 4294967295u, 1u)), 4294967295u), 0u), func_4(Struct_3(22143u, all(arg_1.a.xxy)), func_2(~vec3<u32>(global0.x, global0.x, 55502u), -147f)), _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(firstLeadingBit(vec4<u32>(18984u, arg_0, 51649u, arg_0)), _wgslsmith_clamp_vec4_u32(vec4<u32>(global0.x, arg_0, global0.x, 1u), vec4<u32>(4294967295u, 4294967295u, arg_0, global0.x), vec4<u32>(65855u, 4294967295u, 0u, arg_0))), ~select(vec4<u32>(arg_0, 49517u, global0.x, arg_0), vec4<u32>(global0.x, global0.x, global0.x, 1u), vec4<bool>(false, global1.x, true, arg_3)))) % vec3<u32>(32u));
    global1 = vec4<bool>(!global1.x, true, false, all(vec3<bool>(arg_2.a.x, false, global1.x)));
    let var_0 = !arg_1.a.yy;
    let var_1 = Struct_4(1i);
    var var_2 = Struct_1(arg_1.a, ~(vec2<i32>(_wgslsmith_clamp_i32(u_input.a.x, 15676i, arg_2.b.x), 1i) >> (global0.zy % vec2<u32>(32u))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.c.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(995f, 628f) * arg_2.c.x))), arg_1.d, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(arg_2.e - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.c.x, 286f) * vec2<f32>(-245f, arg_2.c.x)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.e.x, arg_2.e.x) - vec2<f32>(arg_2.e.x, arg_1.e.x)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(arg_2.c)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_2.c - arg_1.e) * _wgslsmith_f_op_vec2_f32(-arg_2.e)), arg_2.d)))));
    return Struct_1(vec4<bool>(var_2.a.x, func_2(_wgslsmith_add_vec3_u32(vec3<u32>(43807u, arg_0, global0.x), vec3<u32>(0u, arg_0, arg_0)), _wgslsmith_f_op_f32(floor(arg_2.c.x))).a < global0.x, !var_0.x, true), countOneBits(-vec2<i32>(~arg_2.b.x, arg_1.b.x)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(arg_1.c.x * -109f), _wgslsmith_f_op_f32(floor(1000f)))), _wgslsmith_f_op_vec2_f32(arg_2.c - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_2.e - arg_1.e) - vec2<f32>(1313f, arg_1.e.x)))), vec2<bool>(global1.x, var_0.x), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_2.c.x))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1200f) - -1272f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.e.x, 335f))));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<f32>, arg_3: vec4<u32>) -> i32 {
    let var_0 = firstLeadingBit(arg_3);
    var var_1 = Struct_1(vec4<bool>(any(vec3<bool>(true, arg_1.d.x, arg_0.a.x)), global1.x, func_2(var_0.xyw, -1106f).b, true), -max(-u_input.a.yz, max(arg_1.b, vec2<i32>(u_input.a.x, 21113i))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(vec2<f32>(229f, -956f), vec2<f32>(arg_0.e.x, 217f)))))))), vec2<bool>(all(vec4<bool>(true, global1.x, any(vec4<bool>(false, false, true, global1.x)), false || arg_1.a.x)), true), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(arg_1.c, arg_2) - _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(arg_0.e.x, arg_1.c.x)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(arg_1.c)))) * arg_0.c));
    global0 = ~vec3<u32>(reverseBits(0u), 0u, ~(~reverseBits(0u)));
    var var_2 = arg_0;
    var_1 = func_1(func_2(_wgslsmith_div_vec3_u32(var_0.zwx, firstLeadingBit(arg_3.yyw)), _wgslsmith_f_op_f32(f32(-1f) * -791f)).a >> (98128u % 32u), Struct_1(select(select(var_2.a, vec4<bool>(arg_1.a.x, true, true, var_1.d.x), select(vec4<bool>(true, true, true, global1.x), var_1.a, vec4<bool>(true, arg_0.d.x, arg_0.a.x, false))), vec4<bool>(true, false | var_1.a.x, var_1.b.x > var_2.b.x, true), vec4<bool>(true, true, true, arg_1.d.x)), var_1.b, _wgslsmith_f_op_vec2_f32(-var_2.e), vec2<bool>(_wgslsmith_f_op_f32(-arg_1.c.x) < var_1.c.x, !(var_2.c.x < arg_1.e.x)), func_1(_wgslsmith_dot_vec3_u32(~arg_3.ywz, min(vec3<u32>(1u, 4294967295u, 54423u), var_0.zwz)), arg_0, func_1(4294967295u, Struct_1(vec4<bool>(arg_0.a.x, true, false, arg_1.d.x), var_1.b, var_2.c, vec2<bool>(var_2.a.x, false), var_2.c), arg_0, global1.x && var_1.a.x), true).e), func_1(_wgslsmith_div_u32(~_wgslsmith_mod_u32(0u, 59809u), global0.x), Struct_1(func_1(0u, Struct_1(vec4<bool>(true, false, true, var_2.a.x), vec2<i32>(var_2.b.x, 2628i), arg_0.c, var_1.a.wz, vec2<f32>(var_1.e.x, 1180f)), func_1(arg_3.x, arg_0, arg_1, arg_1.d.x), select(var_2.d.x, false, false)).a, countOneBits(vec2<i32>(-26015i, 0i)) ^ u_input.a.zz, _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.x, 2599f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.c.x, var_2.e.x))), vec2<bool>(var_1.d.x, !arg_1.d.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_2.c - vec2<f32>(1662f, arg_1.e.x)) * arg_2)), arg_0, !(!(!arg_1.d.x))), !any(vec2<bool>(arg_3.x > var_0.x, arg_1.a.x && global1.x)));
    return ~_wgslsmith_clamp_i32(15189i, -46022i, 29596i);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = vec4<bool>(global1.x, global1.x, global1.x, global1.x);
    var var_0 = Struct_4(_wgslsmith_sub_i32(func_5(func_1(~41851u, Struct_1(vec4<bool>(global1.x, global1.x, global1.x, true), vec2<i32>(u_input.a.x, 1i), vec2<f32>(-357f, 437f), vec2<bool>(global1.x, true), vec2<f32>(1659f, 1061f)), Struct_1(vec4<bool>(false, global1.x, global1.x, global1.x), vec2<i32>(u_input.a.x, u_input.a.x), vec2<f32>(237f, -664f), vec2<bool>(global1.x, false), vec2<f32>(405f, 677f)), true), Struct_1(!vec4<bool>(true, global1.x, false, false), u_input.a.yx, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-288f, -1396f)), vec2<bool>(global1.x, false), _wgslsmith_f_op_vec2_f32(vec2<f32>(-932f, 225f) - vec2<f32>(-738f, -331f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-876f, 660f) * vec2<f32>(246f, 239f))), ~min(vec4<u32>(global0.x, global0.x, 3032u, global0.x), vec4<u32>(global0.x, global0.x, global0.x, global0.x))), firstTrailingBit(i32(-1i) * -2147483647i) << (56160u % 32u)));
    global1 = !vec4<bool>(true, all(global1.www), !(!all(vec3<bool>(true, global1.x, global1.x))), !(_wgslsmith_dot_vec3_i32(vec3<i32>(12511i, u_input.a.x, var_0.a), u_input.a) <= 1i));
    var var_1 = global1.x;
    var_0 = Struct_4(u_input.a.x);
    var var_2 = select(!func_1(_wgslsmith_div_u32(15606u << (global0.x % 32u), global0.x), func_1(firstTrailingBit(28392u), Struct_1(vec4<bool>(global1.x, true, true, true), u_input.a.yx, vec2<f32>(-144f, -1980f), vec2<bool>(global1.x, global1.x), vec2<f32>(-1000f, -238f)), Struct_1(vec4<bool>(true, true, global1.x, global1.x), u_input.a.yz, vec2<f32>(-292f, -1636f), vec2<bool>(global1.x, false), vec2<f32>(-116f, -1338f)), true), Struct_1(select(vec4<bool>(global1.x, global1.x, true, true), vec4<bool>(global1.x, global1.x, true, global1.x), vec4<bool>(true, false, global1.x, global1.x)), vec2<i32>(-2147483647i, 1i), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(1713f, 1130f), vec2<f32>(735f, -514f))), !global1.zw, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-168f, 162f), vec2<f32>(-894f, 1323f), global1.wz))), 1u < firstTrailingBit(1u)).d, !global1.zz, true);
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(min(-815f, _wgslsmith_f_op_f32(trunc(914f)))), _wgslsmith_f_op_f32(149f - -1595f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-625f, -2064f) - vec2<f32>(1f, 1f)), global1.x)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-976f, _wgslsmith_f_op_f32(-1344f + -189f)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(367f, 1000f) + vec2<f32>(731f, -657f))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(-func_5(Struct_1(vec4<bool>(false, true, false, var_2.x), vec2<i32>(var_0.a, 0i), var_3, vec2<bool>(var_2.x, true), vec2<f32>(-499f, 651f)), func_1(global0.x, Struct_1(vec4<bool>(true, global1.x, true, global1.x), u_input.a.xy, var_3, vec2<bool>(var_2.x, false), var_3), Struct_1(vec4<bool>(true, false, var_2.x, false), u_input.a.xy, var_3, vec2<bool>(global1.x, global1.x), var_3), global1.x), _wgslsmith_f_op_vec2_f32(var_3 * var_3), firstTrailingBit(vec4<u32>(4294967295u, 1u, global0.x, global0.x))), _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(3677i, u_input.a.x, 0i, u_input.a.x), vec4<i32>(var_0.a, -72946i, u_input.a.x, u_input.a.x)) ^ countOneBits(vec4<i32>(u_input.a.x, -1i, -2147483647i, -21411i)), vec4<i32>(firstTrailingBit(var_0.a), ~var_0.a, func_5(Struct_1(vec4<bool>(var_2.x, false, global1.x, true), vec2<i32>(1i, var_0.a), var_3, vec2<bool>(true, true), var_3), Struct_1(vec4<bool>(global1.x, global1.x, true, false), u_input.a.yz, vec2<f32>(-1000f, var_3.x), global1.xx, vec2<f32>(var_3.x, 970f)), vec2<f32>(var_3.x, -135f), vec4<u32>(global0.x, global0.x, global0.x, 3172u)), -421i))), 0u, abs(vec2<u32>(4294967295u, global0.x)), -var_0.a, _wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(30080u, 39443u, 0u, 23241u), ~vec4<u32>(global0.x, global0.x, global0.x, 0u)), 1u, _wgslsmith_mult_u32(9548u, global0.x), _wgslsmith_div_u32(global0.x, global0.x & 4294967295u)), min(vec4<u32>(global0.x, firstLeadingBit(global0.x), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 1u, global0.x, 66932u), vec4<u32>(global0.x, 1u, 69998u, 10837u)), _wgslsmith_mod_u32(global0.x, 1u)), _wgslsmith_clamp_vec4_u32(firstTrailingBit(vec4<u32>(1u, global0.x, global0.x, 26654u)), firstLeadingBit(vec4<u32>(global0.x, 4294967295u, 30567u, 0u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(global0.x, global0.x, 33564u, global0.x), vec4<u32>(global0.x, 4294967295u, 1u, 25612u), vec4<u32>(1u, global0.x, global0.x, 1u))))));
}

