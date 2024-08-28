struct Struct_1 {
    a: f32,
    b: i32,
    c: vec4<f32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec3<u32>,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: vec3<i32>,
}

struct Struct_4 {
    a: vec4<bool>,
    b: Struct_3,
    c: i32,
    d: bool,
}

struct Struct_5 {
    a: f32,
    b: Struct_1,
    c: vec3<i32>,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(27650u, Struct_1(1000f, 42826i, vec4<f32>(954f, -1489f, -412f, -607f)), vec3<i32>(2147483647i, 20517i, -1i));

var<private> global1: Struct_5 = Struct_5(230f, Struct_1(-750f, 0i, vec4<f32>(155f, -2059f, -906f, 1000f)), vec3<i32>(44341i, -1i, -40585i), vec2<u32>(64615u, 41774u));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3() -> f32 {
    global0 = Struct_3(global1.d.x, global0.b, _wgslsmith_sub_vec3_i32(global1.c, firstTrailingBit(firstLeadingBit(global0.c))) >> (_wgslsmith_add_vec3_u32(firstTrailingBit(select(vec3<u32>(4294967295u, 44796u, 58058u), vec3<u32>(21696u, u_input.a.x, global0.a), vec3<bool>(true, true, false))), vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(31406u, 1u, 11641u, global1.d.x), vec4<u32>(30855u, 36046u, 48053u, 1u)), reverseBits(2680u), _wgslsmith_add_u32(0u, global0.a))) % vec3<u32>(32u)));
    var var_0 = Struct_5(global1.a, Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-380f, -871f), -590f)), 680f)), select(0i, -global0.b.b, true), _wgslsmith_f_op_vec4_f32(-global0.b.c)), reverseBits(vec3<i32>(0i, _wgslsmith_clamp_i32(global1.c.x, _wgslsmith_add_i32(global1.b.b, 8291i), global1.c.x), 0i)), global1.d);
    let var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.a))))) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(var_0.a, var_0.b.c.x))), _wgslsmith_f_op_f32(164f + _wgslsmith_f_op_f32(floor(global1.b.c.x))), any(select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, false), false)))));
    global0 = Struct_3(1u, Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global1.a + -1230f))))), ~max(_wgslsmith_mod_i32(global0.c.x, -2147483647i), firstLeadingBit(-5408i)), vec4<f32>(707f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global0.b.a + 624f), _wgslsmith_f_op_f32(trunc(-3186f)))), _wgslsmith_f_op_f32(abs(-312f)), _wgslsmith_f_op_f32(-global0.b.a))), ~(~_wgslsmith_mult_vec3_i32(vec3<i32>(-56213i, global1.b.b, var_0.b.b), global0.c) & firstLeadingBit(abs(vec3<i32>(1i, global0.b.b, var_0.b.b)))));
    global1 = Struct_5(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1510f), global0.b.a)), global1.b, select(vec3<i32>(global0.c.x, global1.c.x, max(~var_0.b.b, 37030i)), abs(var_0.c), select(!vec3<bool>(false, false, var_1), !vec3<bool>(false, var_1, var_1), !vec3<bool>(var_1, var_1, var_1))), _wgslsmith_div_vec2_u32(max(vec2<u32>(~0u, 0u), abs(~u_input.a)), ~firstTrailingBit(~global1.d)));
    return _wgslsmith_f_op_f32(-114f * var_0.a);
}

fn func_2(arg_0: i32, arg_1: vec4<u32>, arg_2: vec3<u32>) -> Struct_3 {
    global1 = Struct_5(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_3()), 785f)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global0.b.a)) + _wgslsmith_f_op_f32(-382f * global0.b.c.x))), 0i, vec4<f32>(global0.b.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global1.a))), 995f, _wgslsmith_f_op_f32(-global0.b.c.x))), firstTrailingBit(vec3<i32>(arg_0, 1i, firstLeadingBit(~global0.b.b))), global1.d);
    global1 = Struct_5(356f, Struct_1(1463f, 1i, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global0.b.c.x, 152f, global0.b.c.x, 1736f)))) + vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_div_f32(global0.b.c.x, global0.b.a), _wgslsmith_f_op_f32(-global0.b.a), global0.b.a))), abs(global0.c), vec2<u32>(arg_1.x >> (~u_input.a.x % 32u), ~global0.a) | vec2<u32>(0u, arg_2.x));
    let var_0 = Struct_5(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(-832f)))))), global0.b, vec3<i32>(firstLeadingBit(_wgslsmith_add_i32(global1.c.x, global1.c.x)), global0.c.x, -global0.c.x), u_input.a);
    global0 = Struct_3(1u, var_0.b, _wgslsmith_div_vec3_i32(global1.c, _wgslsmith_mod_vec3_i32(vec3<i32>(-9883i, var_0.b.b, arg_0), global0.c) ^ ~vec3<i32>(global0.c.x, 0i, 0i)));
    var var_1 = Struct_5(108f, global0.b, global1.c, _wgslsmith_div_vec2_u32(~arg_2.yz, arg_1.xy));
    return Struct_3(98697u, Struct_1(781f, -1i, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global1.a, 455f, global1.b.c.x, 925f))) + _wgslsmith_div_vec4_f32(global0.b.c, vec4<f32>(-538f, global0.b.a, 597f, global1.b.a))) + var_1.b.c)), var_0.c);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3) -> i32 {
    let var_0 = countOneBits(abs(arg_1.b.b));
    global1 = Struct_5(global0.b.c.x, func_2(-(~countOneBits(1i)), ~(_wgslsmith_mult_vec4_u32(vec4<u32>(51441u, u_input.a.x, arg_1.a, 5927u), vec4<u32>(0u, global0.a, 74527u, 0u)) ^ _wgslsmith_mod_vec4_u32(vec4<u32>(global1.d.x, 1u, arg_1.a, 38332u), vec4<u32>(u_input.a.x, global0.a, global0.a, arg_1.a))), ~(~min(vec3<u32>(global1.d.x, 0u, 29902u), vec3<u32>(u_input.a.x, u_input.a.x, 63970u)))).b, global0.c, u_input.a);
    global0 = Struct_3(countOneBits(~_wgslsmith_add_u32(1u, global1.d.x)), Struct_1(global1.a, func_2(-arg_1.b.b, ~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, global1.d.x, 49449u), vec4<u32>(34513u, 22870u, 1u, global0.a)), _wgslsmith_mult_vec3_u32(~vec3<u32>(global1.d.x, 58939u, 4294967295u), select(vec3<u32>(25608u, arg_1.a, 82625u), vec3<u32>(global1.d.x, 23206u, 1u), true))).c.x, global0.b.c), firstLeadingBit(arg_1.c));
    global0 = arg_1;
    global1 = Struct_5(_wgslsmith_f_op_f32(arg_1.b.a + _wgslsmith_f_op_f32(sign(1f))), arg_1.b, -firstTrailingBit(abs(vec3<i32>(var_0, 5251i, arg_0.b))), u_input.a);
    return 2147483647i;
}

fn func_1() -> Struct_1 {
    var var_0 = Struct_1(629f, select(-(~global0.b.b | ~18925i), func_4(Struct_1(_wgslsmith_f_op_f32(-global0.b.c.x), global1.b.b, _wgslsmith_f_op_vec4_f32(max(global0.b.c, vec4<f32>(global0.b.a, -706f, global0.b.a, global1.b.c.x)))), func_2(abs(global0.b.b), ~vec4<u32>(32521u, 0u, 0u, 64467u), vec3<u32>(3292u, 1u, u_input.a.x) | vec3<u32>(0u, 17777u, global0.a))), true), global0.b.c);
    let var_1 = !(!select(vec4<bool>(true, false, true, any(vec2<bool>(true, false))), vec4<bool>(true, true, true, true), 45813u >= _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 28397u, 61748u), vec3<u32>(43963u, 1u, u_input.a.x))));
    global0 = Struct_3(0u, global1.b, firstTrailingBit(global0.c));
    var var_2 = vec4<i32>(min(global0.c.x, var_0.b), -76597i, i32(-1i) * -1i, -(~var_0.b));
    var var_3 = 2147483647i;
    return func_2(_wgslsmith_dot_vec3_i32(abs(~vec3<i32>(var_2.x, var_0.b, var_2.x) ^ global0.c), ~global1.c), ~(~(~_wgslsmith_clamp_vec4_u32(vec4<u32>(88020u, global0.a, 27114u, 4294967295u), vec4<u32>(94573u, global0.a, 69284u, 7120u), vec4<u32>(0u, 5234u, global0.a, 1u)))), reverseBits(_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, 5832u, abs(1u)), ~abs(vec3<u32>(11080u, 4294967295u, global0.a))))).b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<u32>(abs(1u), 4294967295u, 31652u);
    global0 = Struct_3(~(global0.a << (4294967295u % 32u)) & _wgslsmith_div_u32(_wgslsmith_add_u32(_wgslsmith_add_u32(15069u, 39517u), ~u_input.a.x), _wgslsmith_div_u32(var_0.x, _wgslsmith_dot_vec4_u32(vec4<u32>(global1.d.x, global1.d.x, 0u, global0.a), vec4<u32>(global1.d.x, var_0.x, 4294967295u, global1.d.x)))), Struct_1(global1.b.c.x, -global0.c.x >> (15188u % 32u), global0.b.c), global0.c);
    global1 = Struct_5(515f, func_1(), global1.c, var_0.xy);
    global0 = func_2(max(global1.b.b, global1.b.b), ~max(vec4<u32>(~0u, _wgslsmith_dot_vec2_u32(global1.d, u_input.a), u_input.a.x, global1.d.x << (27653u % 32u)), vec4<u32>(86060u | var_0.x, ~4294967295u, u_input.a.x, 0u)), vec3<u32>(~(~global1.d.x), ~48921u | ~global0.a, _wgslsmith_sub_u32(_wgslsmith_mod_u32(~global1.d.x, u_input.a.x), _wgslsmith_mod_u32(countOneBits(0u), u_input.a.x))));
    global1 = Struct_5(_wgslsmith_f_op_f32(ceil(-211f)), Struct_1(285f, _wgslsmith_sub_i32(~(-2147483647i), 2147483647i), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a) + 1997f), global1.a, _wgslsmith_f_op_f32(select(138f, _wgslsmith_f_op_f32(global1.b.a + global1.b.a), true)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global0.b.a), 108f)))), ~global0.c, var_0.zy);
    var var_1 = var_0.x;
    let var_2 = Struct_2(select(vec2<bool>(all(vec3<bool>(true, false, true)), !all(vec4<bool>(true, true, true, true))), select(select(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false)), vec2<bool>(true, false), true), select(vec2<bool>(true, true), vec2<bool>(false, false), true), select(vec2<bool>(true, true), vec2<bool>(true, true), true)), select(vec2<bool>(true, true), vec2<bool>(true, true), false)), ~_wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(~vec3<u32>(31161u, var_0.x, 68643u), ~vec3<u32>(global0.a, 4294967295u, global1.d.x)), _wgslsmith_mod_vec3_u32(vec3<u32>(39u, 96984u, 506u), vec3<u32>(u_input.a.x, var_0.x, global1.d.x)) | _wgslsmith_mult_vec3_u32(vec3<u32>(global0.a, 21335u, var_0.x), vec3<u32>(var_0.x, 0u, global0.a))), func_1());
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-global0.b.a), ~0i & ~(-global1.c.x));
}

