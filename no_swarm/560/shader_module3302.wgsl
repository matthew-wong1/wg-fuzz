struct Struct_1 {
    a: vec4<u32>,
    b: i32,
    c: vec2<f32>,
    d: f32,
    e: vec2<i32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: vec3<u32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 4294967295u;

var<private> global1: f32 = -415f;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<u32>, arg_1: vec2<u32>) -> vec2<f32> {
    global0 = 2307u;
    var var_0 = (arg_0.xz << (firstTrailingBit(~u_input.a.zx) % vec2<u32>(32u))) | ~_wgslsmith_sub_vec2_u32(_wgslsmith_mod_vec2_u32(~arg_0.xy, _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a.x, arg_1.x), arg_0.zx)), vec2<u32>(~arg_0.x, ~1u));
    var var_1 = Struct_3(Struct_2(75180i, Struct_1(vec4<u32>(0u, _wgslsmith_mult_u32(4294967295u, var_0.x), _wgslsmith_dot_vec3_u32(arg_0, u_input.a), _wgslsmith_sub_u32(var_0.x, var_0.x)), u_input.b.x, _wgslsmith_f_op_vec2_f32(vec2<f32>(448f, -140f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(933f, 881f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-783f))), ~_wgslsmith_add_vec2_i32(u_input.b.yz, vec2<i32>(1i, 21526i))), 1u), ~(vec3<i32>(-u_input.b.x, i32(-1i) * -21605i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, -24830i), vec4<i32>(u_input.b.x, -1i, 2147483647i, 12820i))) ^ (_wgslsmith_add_vec3_i32(vec3<i32>(u_input.b.x, -14558i, u_input.b.x), u_input.b) & vec3<i32>(u_input.b.x, 1i, 0i))));
    let var_2 = (u_input.b.x ^ 0i) | (-1i ^ var_1.b.x);
    global1 = -1071f;
    return _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -629f))), 403f));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: u32, arg_3: bool) -> vec3<i32> {
    let var_0 = !vec4<bool>(!arg_3, !(!all(vec4<bool>(arg_3, arg_3, false, arg_3))), false, true);
    let var_1 = arg_0;
    global0 = u_input.a.x;
    var var_2 = Struct_2(2147483647i, Struct_1(vec4<u32>(~arg_0.a.x | arg_0.a.x, 1u, ~15255u, ~_wgslsmith_mod_u32(arg_2, 51438u)), i32(-1i) * -1i, _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-321f, var_1.c.x))), vec2<f32>(-904f, 1763f), false)))), _wgslsmith_f_op_f32(abs(-513f)), firstLeadingBit(~vec2<i32>(arg_1.x, arg_1.x))), ~abs(10830u));
    let var_3 = Struct_2(2147483647i >> ((72669u >> (reverseBits(0u | u_input.a.x) % 32u)) % 32u), Struct_1(~(~(~vec4<u32>(41246u, var_2.b.a.x, var_1.a.x, arg_2))), -_wgslsmith_dot_vec4_i32(-arg_1, _wgslsmith_sub_vec4_i32(vec4<i32>(1i, 43436i, 30333i, u_input.b.x), arg_1)), _wgslsmith_f_op_vec2_f32(var_2.b.c + _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(-179f, 1000f) - arg_0.c)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-1506f)), -3066f)), u_input.b.yx), _wgslsmith_sub_u32(34500u, u_input.a.x));
    return vec3<i32>(var_1.e.x, 24812i & var_1.b, abs(firstTrailingBit(~_wgslsmith_dot_vec3_i32(arg_1.xxz, u_input.b))));
}

fn func_5(arg_0: Struct_2, arg_1: vec3<u32>, arg_2: vec3<i32>, arg_3: bool) -> f32 {
    global1 = _wgslsmith_f_op_f32(abs(arg_0.b.c.x));
    let var_0 = arg_0;
    var var_1 = select(vec3<bool>(!(23311u <= _wgslsmith_clamp_u32(0u, 0u, 4294967295u)), true, arg_0.a != abs(-43288i ^ arg_2.x)), !vec3<bool>(arg_3, !arg_3, all(!vec2<bool>(true, arg_3))), !arg_3);
    let var_2 = -(vec3<i32>(_wgslsmith_clamp_i32(arg_0.a, 8138i, 1910i) & var_0.a, countOneBits(firstTrailingBit(-1i)), ~var_0.a) >> (_wgslsmith_mult_vec3_u32(~var_0.b.a.yww, vec3<u32>(arg_0.c, u_input.a.x, 13417u)) % vec3<u32>(32u)));
    var var_3 = -_wgslsmith_add_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, var_2.x, 0i, arg_0.a), vec4<i32>(-18328i, 0i, arg_0.a, 1i)), _wgslsmith_clamp_i32(-63647i, -22196i, -1i)), abs(arg_0.b.e)), var_2.yx);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-203f)) + var_0.b.c.x);
}

fn func_2(arg_0: vec2<bool>) -> f32 {
    global0 = ~(42463u & _wgslsmith_mod_u32(~_wgslsmith_dot_vec3_u32(u_input.a, u_input.a), ~(~u_input.a.x)));
    global1 = _wgslsmith_f_op_f32(func_5(Struct_2(u_input.b.x, Struct_1(vec4<u32>(4294967295u | u_input.a.x, u_input.a.x, u_input.a.x, 23476u), -1i, vec2<f32>(1000f, -763f), _wgslsmith_div_f32(-1007f, -1000f), ~vec2<i32>(u_input.b.x, u_input.b.x)), ~(~countOneBits(4294967295u))), u_input.a, func_4(Struct_1(max(abs(vec4<u32>(19057u, 0u, 85453u, 1u)), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x) & vec4<u32>(u_input.a.x, 46049u, u_input.a.x, u_input.a.x)), u_input.b.x, _wgslsmith_f_op_vec2_f32(func_3(~u_input.a, select(u_input.a.xy, vec2<u32>(u_input.a.x, 1u), vec2<bool>(true, false)))), _wgslsmith_f_op_f32(min(-165f, 268f)), ~_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.b.x, 2147483647i), u_input.b.yy)), _wgslsmith_clamp_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(-67914i, -10585i, u_input.b.x, u_input.b.x), ~abs(vec4<i32>(5201i, u_input.b.x, u_input.b.x, 1i)), vec4<i32>(_wgslsmith_clamp_i32(54186i, 1i, u_input.b.x), _wgslsmith_div_i32(u_input.b.x, 7117i), -u_input.b.x, -17932i)), select(0u, 1u, all(arg_0)), !(!arg_0.x)), arg_0.x));
    return _wgslsmith_f_op_f32(f32(-1f) * -819f);
}

fn func_1(arg_0: Struct_1, arg_1: i32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(785f, _wgslsmith_f_op_f32(trunc(368f)))), vec2<f32>(-832f, arg_0.c.x)));
    let var_1 = arg_1;
    var var_2 = !vec4<bool>(true, false, _wgslsmith_f_op_f32(func_2(vec2<bool>(false, false))) == _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_0.x - 986f))), true);
    var var_3 = firstTrailingBit(_wgslsmith_div_vec4_i32(vec4<i32>(-(var_1 ^ -1i), -(~arg_1), arg_1, 1i), firstTrailingBit(-_wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, arg_0.e.x, 25436i, 1i), vec4<i32>(-7189i, u_input.b.x, u_input.b.x, -12119i)))));
    var_3 = ~countOneBits(~countOneBits(max(vec4<i32>(1i, u_input.b.x, arg_0.e.x, var_3.x), vec4<i32>(arg_0.e.x, 2147483647i, -15482i, u_input.b.x))));
    return arg_0;
}

fn func_6(arg_0: Struct_2, arg_1: Struct_3, arg_2: Struct_1) -> vec2<i32> {
    var var_0 = any(vec2<bool>(true, true));
    var var_1 = true;
    var var_2 = arg_2.c;
    global0 = 78356u;
    var_2 = _wgslsmith_f_op_vec2_f32(arg_1.a.b.c * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_1.a.b.c) + _wgslsmith_f_op_vec2_f32(-arg_1.a.b.c)) * vec2<f32>(618f, _wgslsmith_f_op_f32(min(arg_2.c.x, 538f))))));
    return u_input.b.zy ^ select(arg_0.b.e, -arg_0.b.e, select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), true), true));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_div_f32(261f, -180f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(1992f, -872f), vec2<f32>(1789f, 774f)))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-948f, -902f))), u_input.a.x, _wgslsmith_mod_vec3_u32(u_input.a, _wgslsmith_mult_vec3_u32(max(u_input.a, vec3<u32>(u_input.a.x, 4294967295u, 34274u)) | u_input.a, abs(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)) & vec3<u32>(4294967295u, 0u, 1u))), func_6(Struct_2(~(u_input.b.x | u_input.b.x), func_1(Struct_1(vec4<u32>(12910u, 9003u, u_input.a.x, 825u), u_input.b.x, vec2<f32>(-1687f, 1416f), -1591f, u_input.b.yy), -18362i), 1u), Struct_3(Struct_2(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, 2147483647i, 2147483647i), vec4<i32>(26641i, u_input.b.x, u_input.b.x, u_input.b.x)), Struct_1(vec4<u32>(19584u, u_input.a.x, 90181u, u_input.a.x), -25059i, vec2<f32>(-790f, 647f), -105f, vec2<i32>(u_input.b.x, u_input.b.x)), max(u_input.a.x, u_input.a.x)), u_input.b), func_1(Struct_1(~vec4<u32>(u_input.a.x, u_input.a.x, 1u, 33224u), 53301i, _wgslsmith_f_op_vec2_f32(vec2<f32>(148f, 292f) + vec2<f32>(1251f, 242f)), _wgslsmith_f_op_f32(max(1027f, -143f)), u_input.b.zy), u_input.b.x)));
}

