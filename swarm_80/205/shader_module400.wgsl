struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: f32,
    b: vec4<bool>,
    c: Struct_1,
    d: u32,
}

struct Struct_4 {
    a: vec4<bool>,
    b: u32,
    c: i32,
    d: Struct_2,
    e: Struct_2,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_4,
    c: Struct_1,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec3<i32>,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: vec4<i32>;

var<private> global2: bool = false;

var<private> global3: u32 = 4294967295u;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_5, arg_2: Struct_1) -> vec4<i32> {
    let var_0 = _wgslsmith_sub_vec4_i32(((vec4<i32>(-1i) * -vec4<i32>(u_input.c, u_input.b, 0i, 1i)) & vec4<i32>(firstLeadingBit(1i), _wgslsmith_div_i32(u_input.c, 0i), -2147483647i, ~0i)) & vec4<i32>(~1i, arg_2.a.x, (-2644i & arg_2.a.x) | u_input.b, ~u_input.b), max(firstTrailingBit(-vec4<i32>(25395i, u_input.b, -19697i, global1.x)), -countOneBits(vec4<i32>(arg_1.c.a.x, u_input.b, 2147483647i, -16754i))) >> (abs(~firstTrailingBit(vec4<u32>(arg_1.b.b, 19352u, 22558u, arg_0.x))) % vec4<u32>(32u)));
    let var_1 = Struct_2(false);
    global0 = ~36672i;
    let var_2 = var_1;
    var var_3 = Struct_2(var_1.a);
    return _wgslsmith_mult_vec4_i32(var_0, vec4<i32>(firstLeadingBit(_wgslsmith_dot_vec3_i32(~vec3<i32>(arg_2.a.x, arg_1.c.a.x, var_0.x), global1.yyz)), max(max(37632i, 2147483647i), 2147483647i >> (u_input.d.x % 32u)), global1.x ^ 1i, global1.x));
}

fn func_2(arg_0: Struct_2) -> Struct_1 {
    global1 = firstTrailingBit(vec4<i32>(global1.x, _wgslsmith_mult_i32(global1.x, 1i), ~global1.x, _wgslsmith_clamp_i32(u_input.c, -1i, 50309i)) | _wgslsmith_sub_vec4_i32(~vec4<i32>(4003i, global1.x, u_input.c, 1i), func_3(vec2<u32>(u_input.a, u_input.d.x), Struct_5(arg_0, Struct_4(vec4<bool>(false, arg_0.a, false, arg_0.a), 62292u, -2147483647i, arg_0, Struct_2(arg_0.a)), Struct_1(global1.zxz), vec2<bool>(true, arg_0.a)), Struct_1(vec3<i32>(u_input.c, -1i, u_input.b))))) >> (vec4<u32>(1u, ~4294967295u, 1u, 1u) % vec4<u32>(32u));
    var var_0 = u_input.d.yz;
    var_0 = ~select(_wgslsmith_mod_vec2_u32(vec2<u32>(~u_input.a, 16082u), u_input.d.xx), abs(vec2<u32>(firstTrailingBit(30167u), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.d.x, u_input.d.x), vec3<u32>(var_0.x, 0u, 15009u)))), !select(vec2<bool>(arg_0.a, false), select(vec2<bool>(arg_0.a, false), vec2<bool>(arg_0.a, arg_0.a), vec2<bool>(true, false)), any(vec3<bool>(arg_0.a, false, false))));
    var_0 = ~reverseBits(~_wgslsmith_mod_vec2_u32(firstTrailingBit(vec2<u32>(14013u, u_input.a)), firstLeadingBit(vec2<u32>(0u, 77450u))));
    let var_1 = _wgslsmith_mod_vec4_i32(~min(vec4<i32>(_wgslsmith_add_i32(-14439i, 2147483647i), 1i, _wgslsmith_mult_i32(u_input.b, global1.x), ~1i), vec4<i32>(2147483647i, u_input.b, u_input.c, u_input.c) >> ((vec4<u32>(1u, var_0.x, var_0.x, u_input.d.x) ^ vec4<u32>(var_0.x, u_input.d.x, var_0.x, 1u)) % vec4<u32>(32u))), abs(vec4<i32>(func_3(u_input.d.zy, Struct_5(arg_0, Struct_4(vec4<bool>(true, true, arg_0.a, false), 4294967295u, 33944i, Struct_2(arg_0.a), arg_0), Struct_1(vec3<i32>(0i, global1.x, u_input.b)), vec2<bool>(arg_0.a, arg_0.a)), Struct_1(vec3<i32>(0i, 2147483647i, global1.x))).x, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, global1.x, global1.x) & global1.xww, vec3<i32>(u_input.b, 2147483647i, global1.x)), _wgslsmith_clamp_i32(47654i, u_input.b, u_input.b) >> (firstLeadingBit(var_0.x) % 32u), 2147483647i)));
    return Struct_1(vec3<i32>(var_1.x, u_input.b, -49544i));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<i32>) -> vec4<bool> {
    let var_0 = Struct_4(vec4<bool>(true, false, true, true), 45194u, -(-global1.x ^ -(u_input.b ^ 3627i)), Struct_2(true), Struct_2(reverseBits(~20732u) < ((28226u >> (u_input.d.x % 32u)) ^ _wgslsmith_sub_u32(4294967295u, 1u))));
    global3 = ~var_0.b;
    var var_1 = Struct_2(_wgslsmith_f_op_f32(231f * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1096f + -1352f)))) <= _wgslsmith_f_op_f32(-571f - -948f));
    let var_2 = ~(~7717u);
    global1 = abs(vec4<i32>(-(15197i ^ global1.x), 1i, abs(-_wgslsmith_mod_i32(global1.x, global1.x)), _wgslsmith_clamp_i32(_wgslsmith_mult_i32(1i | u_input.c, 32132i), -global1.x & _wgslsmith_sub_i32(-2147483647i, -15296i), var_0.c)));
    return !select(select(select(vec4<bool>(var_0.e.a, var_0.a.x, false, var_0.d.a), select(var_0.a, vec4<bool>(var_1.a, var_1.a, var_0.e.a, var_1.a), var_1.a), true), select(!var_0.a, vec4<bool>(var_0.d.a, var_1.a, false, false), all(var_0.a.zz)), !select(var_0.a, vec4<bool>(var_0.d.a, var_1.a, var_0.e.a, false), false)), select(!var_0.a, !(!var_0.a), var_0.e.a), false);
}

fn func_1(arg_0: Struct_3, arg_1: vec3<f32>) -> Struct_3 {
    var var_0 = Struct_3(1213f, !(!func_4(func_2(Struct_2(arg_0.b.x)), global1.wx)), Struct_1(global1.xzx), _wgslsmith_mod_u32(0u, u_input.d.x));
    global3 = _wgslsmith_mult_u32(min(~abs(1u), u_input.d.x), ~_wgslsmith_sub_u32(4294967295u, arg_0.d >> (u_input.a % 32u)));
    var var_1 = Struct_2(!(!(_wgslsmith_dot_vec2_i32(vec2<i32>(3625i, 2147483647i), vec2<i32>(arg_0.c.a.x, -19211i)) < (arg_0.c.a.x & 2147483647i))));
    var var_2 = var_0.b.yz;
    let var_3 = _wgslsmith_div_vec3_i32(vec3<i32>(func_2(Struct_2(all(var_0.b))).a.x, arg_0.c.a.x, var_0.c.a.x), ~var_0.c.a >> (~(~(~u_input.d)) % vec3<u32>(32u)));
    return Struct_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_0.a, 473f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1453f), _wgslsmith_f_op_f32(trunc(1325f)))), !select(!vec4<bool>(var_1.a, true, true, true), !var_0.b, false), arg_0.c, 1u);
}

fn func_5(arg_0: Struct_3) -> Struct_2 {
    global3 = _wgslsmith_div_u32(abs(0u), ~(~(13587u | arg_0.d)) >> (1u % 32u));
    var var_0 = arg_0.d << (firstLeadingBit(_wgslsmith_mult_u32(u_input.a, 35646u)) % 32u);
    global3 = 6159u;
    let var_1 = ~(vec3<u32>(arg_0.d, abs(43758u), ~(u_input.a & arg_0.d)) >> (_wgslsmith_add_vec3_u32(~(vec3<u32>(arg_0.d, arg_0.d, arg_0.d) ^ u_input.d), ~select(u_input.d, u_input.d, vec3<bool>(arg_0.b.x, arg_0.b.x, true))) % vec3<u32>(32u)));
    let var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-arg_0.a), -933f, -431f) + _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(1093f, -1715f, arg_0.a) * vec3<f32>(arg_0.a, arg_0.a, 254f))))))), vec3<f32>(arg_0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -563f) * 400f) - arg_0.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(726f)))));
    return Struct_2(_wgslsmith_div_i32(abs(arg_0.c.a.x), ~(-2147483647i)) == 42307i);
}

fn func_6(arg_0: Struct_5, arg_1: vec3<u32>, arg_2: u32) -> Struct_3 {
    let var_0 = firstTrailingBit(vec2<i32>(_wgslsmith_sub_i32(~arg_0.b.c, u_input.b), 54169i));
    global2 = true;
    let var_1 = arg_0;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f));
    global0 = u_input.c;
    return Struct_3(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2119f * 158f) + 1015f))))), arg_0.b.a, func_2(Struct_2(arg_0.b.a.x)), 38512u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1.x;
    let var_1 = func_6(Struct_5(Struct_2(countOneBits(47096i) > u_input.c), Struct_4(select(vec4<bool>(false, false, true, false), select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, false), true), select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true))), ~u_input.d.x & (37468u | u_input.a), -(-1i ^ global1.x), func_5(func_1(Struct_3(-237f, vec4<bool>(false, true, false, true), Struct_1(global1.wwx), 16085u), vec3<f32>(546f, 1194f, -806f))), func_5(func_1(Struct_3(1809f, vec4<bool>(true, false, false, true), Struct_1(vec3<i32>(u_input.b, global1.x, -16591i)), u_input.d.x), vec3<f32>(218f, 664f, 568f)))), Struct_1(global1.yxz & (global1.wxx << (vec3<u32>(1u, u_input.d.x, u_input.d.x) % vec3<u32>(32u)))), func_4(Struct_1(global1.www | global1.zzy), ~reverseBits(global1.xx)).xz), ~(max(vec3<u32>(u_input.d.x, 0u, 4294967295u) ^ u_input.d, countOneBits(u_input.d)) | (vec3<u32>(17740u, 10651u, u_input.d.x) ^ vec3<u32>(u_input.d.x, 25520u, u_input.a))), 1u);
    var var_2 = vec4<i32>(u_input.c, firstLeadingBit(global1.x), func_3(_wgslsmith_mult_vec2_u32(u_input.d.xy, _wgslsmith_mult_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(var_1.d, var_1.d), vec2<u32>(var_1.d, 4294967295u), u_input.d.yy), vec2<u32>(u_input.a, 1u))), Struct_5(Struct_2(true), Struct_4(!var_1.b, firstLeadingBit(4294967295u), i32(-1i) * -1i, Struct_2(var_1.b.x), func_5(var_1)), Struct_1(vec3<i32>(u_input.c, 11524i, global1.x)), func_4(func_2(Struct_2(var_1.b.x)), var_1.c.a.yx).zy), var_1.c).x, 1i);
    var var_3 = u_input.d;
    let var_4 = func_5(var_1).a;
    var var_5 = var_1.c;
    let var_6 = _wgslsmith_add_vec2_u32(var_3.xy, vec2<u32>(var_1.d, max(8145u, max(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 106376u), var_3.zz), ~4294967295u))));
    var_3 = _wgslsmith_div_vec3_u32(vec3<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(var_3.x, 4294967295u, var_6.x, 4294967295u), abs(vec4<u32>(var_1.d, var_1.d, 73784u, var_6.x))), abs(abs(vec4<u32>(var_3.x, var_3.x, u_input.a, var_3.x)))), _wgslsmith_add_u32(0u, ~func_1(var_1, vec3<f32>(101f, var_1.a, 303f)).d), ~(6122u ^ var_1.d)), vec3<u32>(~_wgslsmith_mult_u32(u_input.d.x, 4294967295u) | u_input.a, 7956u, _wgslsmith_dot_vec2_u32(u_input.d.xz, vec2<u32>(var_1.d, 9177u))));
    let x = u_input.a;
    s_output = StorageBuffer(~(countOneBits(vec3<i32>(-29235i, -54142i, var_5.a.x)) | (~var_2.wyw ^ select(vec3<i32>(-24972i, var_5.a.x, -1i), var_2.wyz, var_1.b.x))), var_2.x, ~(-var_1.c.a), global1.x, u_input.a ^ min(firstLeadingBit(1u & var_6.x), ~firstLeadingBit(14924u)));
}

