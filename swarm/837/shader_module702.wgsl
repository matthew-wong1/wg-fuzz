struct Struct_1 {
    a: vec3<bool>,
    b: vec3<i32>,
    c: vec3<f32>,
    d: vec3<f32>,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: Struct_2,
    d: f32,
}

struct Struct_4 {
    a: i32,
    b: i32,
    c: vec4<i32>,
    d: f32,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
    d: vec3<u32>,
    e: vec2<u32>,
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

var<private> global0: Struct_1 = Struct_1(vec3<bool>(false, false, false), vec3<i32>(-11792i, 31919i, 12647i), vec3<f32>(331f, -568f, 323f), vec3<f32>(-2333f, -302f, -723f));

var<private> global1: Struct_4 = Struct_4(38305i, 39295i, vec4<i32>(25733i, 29677i, 0i, -49439i), 1037f, 226f);

var<private> global2: Struct_4;

var<private> global3: array<vec2<f32>, 24> = array<vec2<f32>, 24>(vec2<f32>(-816f, 993f), vec2<f32>(1232f, -426f), vec2<f32>(-1000f, -884f), vec2<f32>(-1000f, 925f), vec2<f32>(469f, -123f), vec2<f32>(-928f, -352f), vec2<f32>(-1000f, 1000f), vec2<f32>(-346f, -2286f), vec2<f32>(-460f, 804f), vec2<f32>(-535f, 2819f), vec2<f32>(2100f, -325f), vec2<f32>(1083f, 1270f), vec2<f32>(-627f, 1000f), vec2<f32>(2848f, -1875f), vec2<f32>(-1032f, -839f), vec2<f32>(-1000f, 1884f), vec2<f32>(-1311f, 702f), vec2<f32>(-577f, 1000f), vec2<f32>(538f, 262f), vec2<f32>(487f, -166f), vec2<f32>(-330f, -901f), vec2<f32>(-1222f, -600f), vec2<f32>(1085f, -309f), vec2<f32>(1000f, 873f));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec4<i32>) -> vec3<f32> {
    global3 = array<vec2<f32>, 24>();
    global1 = Struct_4(_wgslsmith_div_i32(-global2.a | _wgslsmith_add_i32(u_input.c.x, max(global2.c.x, arg_0.x)), reverseBits(select(-2147483647i, global2.b, global0.a.x) ^ (-64979i | global2.a))), arg_0.x, vec4<i32>(global0.b.x, ~_wgslsmith_mult_i32(global1.a, global1.c.x), _wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.x, -13756i, global1.b), vec3<i32>(global0.b.x, 2147483647i, 25792i)), global1.c.x, global2.b), global1.c.x) & vec4<i32>(~22678i, -arg_0.x, -40919i, _wgslsmith_mod_i32(_wgslsmith_clamp_i32(-39608i, u_input.c.x, u_input.c.x), 1i)), _wgslsmith_f_op_f32(abs(1000f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global1.e)) + 859f))))));
    global2 = Struct_4(global1.a, 0i, vec4<i32>(arg_0.x, -reverseBits(u_input.c.x), abs(1i), arg_0.x & -global0.b.x), _wgslsmith_f_op_f32(-214f - _wgslsmith_f_op_f32(f32(-1f) * -2203f)), _wgslsmith_f_op_f32(min(global2.e, _wgslsmith_f_op_f32(trunc(957f)))));
    global2 = Struct_4(global2.a, global1.a, countOneBits(vec4<i32>(~global2.b << (_wgslsmith_dot_vec2_u32(u_input.d.yz, u_input.e) % 32u), -8141i, _wgslsmith_add_i32(-45104i, -u_input.c.x), firstLeadingBit(u_input.c.x))), global2.d, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1443f + global0.d.x))));
    var var_0 = Struct_2(-(_wgslsmith_mult_vec2_i32(-vec2<i32>(global0.b.x, -15548i), vec2<i32>(8722i, -1i)) >> (vec2<u32>(_wgslsmith_clamp_u32(29435u, u_input.b, 24271u), ~u_input.a) % vec2<u32>(32u))));
    return _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global1.d, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global1.d - 1213f), -1000f)), 345f)))));
}

fn func_4(arg_0: Struct_3, arg_1: vec4<bool>, arg_2: Struct_1) -> i32 {
    global0 = arg_2;
    let var_0 = vec3<u32>(countOneBits(u_input.d.x) | ((_wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.e.x, u_input.d.x, 0u), vec4<u32>(u_input.e.x, u_input.e.x, u_input.d.x, 35040u)) >> (~15653u % 32u)) ^ 36965u), max(u_input.a, max(~(~1u), u_input.d.x)), countOneBits(~_wgslsmith_mult_u32(u_input.a, u_input.d.x)) & 21524u);
    let var_1 = ~_wgslsmith_clamp_vec3_u32(abs(u_input.d) ^ ~var_0, select(~(vec3<u32>(var_0.x, var_0.x, 70095u) ^ vec3<u32>(var_0.x, 1u, var_0.x)), vec3<u32>(abs(u_input.b), u_input.a, var_0.x), !select(global0.a.x, false, false)), _wgslsmith_div_vec3_u32(~vec3<u32>(4795u, var_0.x, 4294967295u), var_0));
    var var_2 = abs(_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(~(global1.c | vec4<i32>(0i, global2.b, arg_0.a.a.x, 13436i)), -max(global1.c, global2.c)), _wgslsmith_add_vec4_i32(~abs(vec4<i32>(u_input.c.x, -2147483647i, -12331i, 1i)), ~(global1.c | global1.c))));
    var var_3 = Struct_3(arg_0.a, -1020f, Struct_2(_wgslsmith_sub_vec2_i32(global1.c.zw, global0.b.zy)), global2.e);
    return ~firstTrailingBit(_wgslsmith_sub_i32(-10050i, firstTrailingBit(var_3.c.a.x & arg_0.c.a.x)));
}

fn func_2(arg_0: vec3<f32>, arg_1: f32) -> u32 {
    var var_0 = !global0.a;
    var var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_1, -331f, global0.a.x)) * global1.e), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.d.x - global0.c.x) * -645f))))));
    global2 = Struct_4(func_4(Struct_3(Struct_2(~global0.b.yy), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global1.d, 104f, true)) - arg_1), Struct_2(~u_input.c), global0.c.x), !select(vec4<bool>(var_0.x, true, var_0.x, var_0.x), vec4<bool>(false, true, global0.a.x, false), -9716i < u_input.c.x), Struct_1(select(vec3<bool>(var_0.x, global0.a.x, var_0.x), global0.a, any(var_0.zy)), global2.c.xyz, _wgslsmith_f_op_vec3_f32(func_3(vec4<i32>(global2.b, u_input.c.x, global1.b, 1i))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(global0.c.x, arg_0.x, 1517f)))))), global2.c.x, vec4<i32>(_wgslsmith_mult_i32(max(0i | global2.a, firstTrailingBit(global0.b.x)), _wgslsmith_add_i32(_wgslsmith_mult_i32(global2.c.x, 18207i), global2.c.x)), global1.a, u_input.c.x, ~0i), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global2.d * 658f))))), _wgslsmith_f_op_f32(-global1.d));
    let var_2 = Struct_3(Struct_2(firstTrailingBit(firstLeadingBit(vec2<i32>(0i, global1.c.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x + _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(global1.e, -1000f), _wgslsmith_div_f32(2892f, 1784f)))) * _wgslsmith_f_op_f32(abs(641f))), Struct_2(vec2<i32>(0i & _wgslsmith_clamp_i32(global2.b, global2.c.x, global0.b.x), select(max(-18159i, 2147483647i), -global0.b.x, global0.a.x))), _wgslsmith_f_op_f32(sign(arg_0.x)));
    let var_3 = Struct_1(select(vec3<bool>(all(select(vec4<bool>(true, global0.a.x, false, var_0.x), vec4<bool>(false, global0.a.x, false, false), vec4<bool>(global0.a.x, global0.a.x, false, global0.a.x))), true, true), !global0.a, select(select(!global0.a, global0.a, any(vec4<bool>(true, var_0.x, global0.a.x, false))), vec3<bool>(any(vec4<bool>(global0.a.x, true, true, global0.a.x)), 440f != var_2.b, false), !(!vec3<bool>(global0.a.x, var_0.x, var_0.x)))), select(~(~vec3<i32>(1i, global2.a, global2.b)), global2.c.xzw, !(!global0.a)) >> (u_input.d % vec3<u32>(32u)), vec3<f32>(_wgslsmith_f_op_f32(ceil(-1016f)), 863f, arg_1), global0.c);
    return 60595u;
}

fn func_1(arg_0: Struct_4, arg_1: i32, arg_2: Struct_4, arg_3: Struct_1) -> Struct_4 {
    global3 = array<vec2<f32>, 24>();
    global2 = Struct_4(reverseBits(reverseBits(abs(-68163i))), arg_1 << (_wgslsmith_clamp_u32(func_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -1333f, global1.d) + arg_3.c), _wgslsmith_f_op_f32(arg_0.e * 626f)), _wgslsmith_div_u32(1u, ~89346u), _wgslsmith_div_u32(u_input.d.x, u_input.d.x) >> (~u_input.d.x % 32u)) % 32u), vec4<i32>(-1i) * -((global1.c | global1.c) << (~vec4<u32>(11338u, u_input.e.x, u_input.b, 1u) % vec4<u32>(32u))), arg_0.e, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(arg_3.d.x)), arg_3.d.x)))));
    global2 = Struct_4(_wgslsmith_mod_i32(-2147483647i, ~(-_wgslsmith_dot_vec4_i32(vec4<i32>(global0.b.x, -22448i, arg_0.c.x, -1i), global1.c))), global2.b, countOneBits(vec4<i32>(~(-2147483647i), _wgslsmith_mod_i32(global2.b, -1i), firstLeadingBit(arg_3.b.x), _wgslsmith_clamp_i32(arg_2.a, 1i, 20509i)) | (-arg_0.c << (vec4<u32>(58550u, u_input.b, u_input.a, u_input.a) % vec4<u32>(32u)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.e - -338f))), _wgslsmith_f_op_f32(round(-189f)));
    let var_0 = Struct_2(-(_wgslsmith_clamp_vec2_i32(arg_3.b.zz, vec2<i32>(-1i, arg_3.b.x), arg_3.b.xx) ^ (vec2<i32>(1i, global0.b.x) & vec2<i32>(global0.b.x, arg_0.c.x))) ^ vec2<i32>(~(arg_2.c.x | global0.b.x), ~_wgslsmith_dot_vec2_i32(arg_2.c.xx, vec2<i32>(0i, 5584i))));
    var var_1 = Struct_4(~((i32(-1i) * -1i) << (u_input.e.x % 32u)), -33461i, countOneBits(vec4<i32>(_wgslsmith_dot_vec2_i32(arg_0.c.yx, global0.b.zy) ^ -6360i, -max(0i, -1i), ~var_0.a.x & -global1.c.x, 30164i)), 147f, global2.d);
    return arg_0;
}

fn func_5(arg_0: Struct_4, arg_1: Struct_3, arg_2: vec4<f32>) -> vec4<u32> {
    var var_0 = arg_0;
    let var_1 = ~abs(4294967295u);
    global0 = Struct_1(select(global0.a, global0.a, !global0.a.x), vec3<i32>(-14320i, -1978i, global0.b.x) >> ((firstLeadingBit(select(vec3<u32>(u_input.e.x, var_1, 0u), vec3<u32>(4294967295u, var_1, 1u), global0.a)) >> (vec3<u32>(~29039u, ~u_input.b, abs(u_input.d.x)) % vec3<u32>(32u))) % vec3<u32>(32u)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-239f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.c.x) + _wgslsmith_f_op_f32(-global2.e)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1000f))))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-607f, -177f, global1.d) * global0.d)), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1227f, -339f, arg_2.x)))), vec3<f32>(643f, _wgslsmith_f_op_f32(f32(-1f) * -1198f), 149f), global0.a.x)));
    global2 = func_1(arg_0, ~(-arg_0.b), func_1(Struct_4(-firstLeadingBit(-1i), var_0.c.x, _wgslsmith_clamp_vec4_i32(vec4<i32>(arg_1.c.a.x, arg_0.a, -70713i, global0.b.x) & global1.c, ~global1.c, firstLeadingBit(var_0.c)), 197f, global0.c.x), ~1i, Struct_4(-_wgslsmith_mult_i32(12454i, global1.a), 7195i, _wgslsmith_clamp_vec4_i32(global2.c, func_1(arg_0, -40211i, arg_0, Struct_1(global0.a, vec3<i32>(2147483647i, u_input.c.x, 1i), vec3<f32>(arg_2.x, global1.e, 1250f), arg_2.zxw)).c, global2.c), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(var_0.e)))), -950f), Struct_1(vec3<bool>(true, global0.a.x, all(vec4<bool>(global0.a.x, global0.a.x, false, true))), vec3<i32>(-1i) * -var_0.c.wwx, _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, arg_2.x, -1216f) * vec3<f32>(arg_0.d, arg_2.x, arg_0.d)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(257f, arg_2.x, arg_2.x)))), vec3<f32>(_wgslsmith_f_op_f32(-1348f + global2.e), _wgslsmith_f_op_f32(-1060f + 723f), -1000f))), Struct_1(select(!global0.a, !vec3<bool>(true, global0.a.x, false), !select(global0.a, global0.a, global0.a)), max(firstTrailingBit(~global1.c.zzz), vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, global2.c.x, global0.b.x), var_0.c.wxy), ~27774i, global2.c.x)), vec3<f32>(_wgslsmith_f_op_f32(-arg_0.d), global0.d.x, _wgslsmith_f_op_vec3_f32(func_3(vec4<i32>(-4874i, global2.b, 6352i, u_input.c.x))).x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.d, global1.d, global2.e)))))));
    global1 = func_1(func_1(Struct_4(-34585i, _wgslsmith_dot_vec2_i32(~vec2<i32>(-61238i, u_input.c.x), global2.c.xx), min(var_0.c, _wgslsmith_mod_vec4_i32(vec4<i32>(global0.b.x, arg_0.b, 0i, -6909i), arg_0.c)), _wgslsmith_f_op_f32(-global1.d), _wgslsmith_f_op_f32(f32(-1f) * -145f)), _wgslsmith_mod_i32(-arg_0.b, _wgslsmith_dot_vec4_i32(vec4<i32>(44397i, global2.a, 0i, 22011i), vec4<i32>(2147483647i, var_0.b, 0i, 2147483647i))), func_1(Struct_4(_wgslsmith_clamp_i32(u_input.c.x, arg_1.a.a.x, 0i), -2147483647i, vec4<i32>(3349i, global0.b.x, 1i, var_0.c.x), _wgslsmith_f_op_f32(ceil(-1551f)), global2.e), -17838i, arg_0, Struct_1(!vec3<bool>(true, false, global0.a.x), global1.c.yxx ^ global2.c.zzw, _wgslsmith_f_op_vec3_f32(arg_2.xxz * global0.c), arg_2.wwx)), Struct_1(!vec3<bool>(false, global0.a.x, global0.a.x), arg_0.c.zzy, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-211f, global0.c.x, arg_2.x)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(191f, 533f, arg_1.b) * global0.d)), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(arg_2.wwz - global0.d))))), _wgslsmith_div_i32(-arg_0.c.x, u_input.c.x), func_1(arg_0, global2.c.x, func_1(Struct_4(-1i, _wgslsmith_div_i32(30901i, global1.a), _wgslsmith_clamp_vec4_i32(vec4<i32>(30372i, 4849i, 23121i, 1i), vec4<i32>(3658i, 2147483647i, global2.c.x, arg_1.a.a.x), vec4<i32>(-2147483647i, -2147483647i, 25374i, global1.b)), var_0.d, global0.c.x), global2.b, func_1(arg_0, arg_0.c.x, func_1(arg_0, -19889i, arg_0, Struct_1(vec3<bool>(false, false, global0.a.x), vec3<i32>(-40930i, u_input.c.x, 2147483647i), vec3<f32>(global1.d, global0.d.x, 1439f), vec3<f32>(arg_2.x, global0.c.x, 1703f))), Struct_1(vec3<bool>(true, global0.a.x, global0.a.x), vec3<i32>(arg_0.a, 1i, -59627i), arg_2.xyz, vec3<f32>(-820f, var_0.e, -2769f))), Struct_1(select(global0.a, global0.a, vec3<bool>(global0.a.x, true, false)), ~vec3<i32>(u_input.c.x, global2.c.x, global2.b), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(275f, 662f, 509f))), vec3<f32>(global0.d.x, 1285f, 234f))), Struct_1(vec3<bool>(all(vec4<bool>(global0.a.x, global0.a.x, global0.a.x, false)), !global0.a.x, true), reverseBits(vec3<i32>(-12519i, -1i, arg_0.a)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_0.d, global0.d.x, arg_1.d), arg_2.yww)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(vec4<i32>(var_0.a, -1i, arg_1.c.a.x, 2147483647i))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-608f, -302f, -871f))))), Struct_1(global0.a, -global1.c.xzy, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-arg_2.yxz), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.b, global2.e, var_0.e)), !all(global0.a))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global0.c + vec3<f32>(var_0.e, 125f, global1.d)))));
    return firstLeadingBit(vec4<u32>(~u_input.d.x, _wgslsmith_mult_u32(~(~1u), (u_input.b ^ 22586u) ^ abs(var_1)), 66833u, firstTrailingBit(max(5028u, ~var_1))));
}

fn func_6(arg_0: u32, arg_1: Struct_2, arg_2: vec4<f32>) -> bool {
    global2 = Struct_4(~_wgslsmith_dot_vec4_i32(select(reverseBits(global1.c), ~vec4<i32>(global2.a, 46467i, arg_1.a.x, 0i), arg_1.a.x >= 1i), ~global1.c), _wgslsmith_mod_i32(-28677i, ~(1i | -arg_1.a.x)), reverseBits(vec4<i32>(~arg_1.a.x, _wgslsmith_clamp_i32(_wgslsmith_add_i32(2147483647i, global0.b.x), 1i, firstTrailingBit(-8140i)), ~1i, _wgslsmith_dot_vec4_i32(global1.c, global1.c))), 553f, 394f);
    global3 = array<vec2<f32>, 24>();
    var var_0 = func_1(Struct_4(-1i, global2.b, vec4<i32>(u_input.c.x, _wgslsmith_sub_i32(19453i, firstTrailingBit(arg_1.a.x)), 9669i, select(abs(0i), _wgslsmith_mult_i32(arg_1.a.x, -1i), select(global0.a.x, true, global0.a.x))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.d.x), global1.d) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(global0.c.x)), _wgslsmith_f_op_f32(trunc(521f)), true))), 1455f), -1i, Struct_4(func_1(func_1(func_1(Struct_4(-7043i, arg_1.a.x, global2.c, -487f, global0.d.x), -2147483647i, Struct_4(global1.b, 0i, global2.c, global1.e, -595f), Struct_1(global0.a, global2.c.yxz, arg_2.xxz, vec3<f32>(global2.e, -1434f, 130f))), -1i, func_1(Struct_4(-57575i, -7227i, vec4<i32>(2147483647i, -38264i, u_input.c.x, 2147483647i), global2.d, arg_2.x), 0i, Struct_4(global2.c.x, global2.c.x, vec4<i32>(2147483647i, 4192i, global1.a, global1.c.x), 1000f, -726f), Struct_1(vec3<bool>(global0.a.x, global0.a.x, global0.a.x), vec3<i32>(8276i, -1442i, global2.b), arg_2.zzx, arg_2.zzz)), Struct_1(vec3<bool>(false, false, false), global1.c.wzw, vec3<f32>(arg_2.x, 1000f, arg_2.x), global0.d)), -_wgslsmith_add_i32(global0.b.x, 0i), func_1(func_1(Struct_4(-14845i, u_input.c.x, global2.c, global0.d.x, arg_2.x), 0i, Struct_4(arg_1.a.x, global0.b.x, global1.c, arg_2.x, -1129f), Struct_1(global0.a, vec3<i32>(2248i, arg_1.a.x, global1.a), global0.c, vec3<f32>(global0.c.x, 321f, global1.e))), min(global1.c.x, 0i), Struct_4(global2.a, arg_1.a.x, global2.c, 551f, global1.e), Struct_1(vec3<bool>(true, global0.a.x, global0.a.x), vec3<i32>(2147483647i, arg_1.a.x, 1i), arg_2.yxz, arg_2.zyy)), Struct_1(!global0.a, countOneBits(global2.c.yzx), vec3<f32>(-1000f, -861f, global2.d), _wgslsmith_f_op_vec3_f32(-arg_2.zzy))).a, -global0.b.x, _wgslsmith_mod_vec4_i32(select(vec4<i32>(u_input.c.x, arg_1.a.x, global2.b, -2147483647i), vec4<i32>(1i, 2147483647i, global1.a, u_input.c.x), global0.a.x), vec4<i32>(0i, arg_1.a.x, u_input.c.x, u_input.c.x)) << (_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 0u, arg_0, 25546u), vec4<u32>(0u, arg_0, arg_0, arg_0) | vec4<u32>(u_input.b, u_input.a, 57187u, 1u)) % vec4<u32>(32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_vec3_f32(func_3(-global1.c)).x + -1348f), arg_2.x), Struct_1(select(global0.a, select(global0.a, global0.a, !global0.a), global0.a), vec3<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(arg_1.a, vec2<i32>(17947i, 16728i)), arg_1.a), 32667i, global1.a), _wgslsmith_f_op_vec3_f32(-arg_2.xxz), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_2.zwx), arg_2.zzx))).c.wxw;
    var var_1 = ~0u;
    global1 = func_1(Struct_4(var_0.x, u_input.c.x, min(-select(vec4<i32>(global0.b.x, -30008i, 2885i, 2147483647i), vec4<i32>(-26824i, 33506i, arg_1.a.x, 2147483647i), vec4<bool>(global0.a.x, global0.a.x, global0.a.x, true)), min(~vec4<i32>(0i, u_input.c.x, global2.b, 1i), -vec4<i32>(global2.a, global2.c.x, global0.b.x, -1i))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1019f) + 388f), arg_2.x), -2147483647i, func_1(Struct_4(~max(-484i, var_0.x), var_0.x, global1.c, global2.d, 969f), -12178i, func_1(func_1(Struct_4(arg_1.a.x, global0.b.x, vec4<i32>(0i, var_0.x, -1i, -9409i), -1000f, -1908f), _wgslsmith_mult_i32(-1i, global2.a), func_1(Struct_4(arg_1.a.x, global2.b, vec4<i32>(global2.b, -2147483647i, global0.b.x, -18708i), -864f, 357f), global2.b, Struct_4(-45071i, u_input.c.x, global2.c, 658f, 603f), Struct_1(global0.a, vec3<i32>(1i, 1i, global2.c.x), vec3<f32>(-1446f, 1446f, global1.d), arg_2.wxw)), Struct_1(vec3<bool>(global0.a.x, global0.a.x, global0.a.x), global0.b, arg_2.zyw, vec3<f32>(global0.c.x, 141f, -681f))), firstLeadingBit(-49646i), func_1(func_1(Struct_4(-2147483647i, -2147483647i, global2.c, global0.c.x, -274f), var_0.x, Struct_4(-13297i, arg_1.a.x, vec4<i32>(arg_1.a.x, global2.a, -2147483647i, u_input.c.x), -1000f, -216f), Struct_1(vec3<bool>(true, false, global0.a.x), vec3<i32>(var_0.x, 0i, -9612i), vec3<f32>(-199f, global2.d, global0.c.x), global0.d)), _wgslsmith_div_i32(global0.b.x, var_0.x), Struct_4(0i, -2147483647i, vec4<i32>(var_0.x, -2147483647i, u_input.c.x, 0i), -456f, global1.d), Struct_1(vec3<bool>(global0.a.x, true, true), global1.c.wyz, vec3<f32>(global0.c.x, global1.e, global0.c.x), vec3<f32>(global0.c.x, 871f, global0.c.x))), Struct_1(vec3<bool>(true, true, true), global2.c.yzx, vec3<f32>(-613f, global2.d, -1005f), _wgslsmith_f_op_vec3_f32(arg_2.zxz * vec3<f32>(-292f, 2105f, global2.d)))), Struct_1(!select(vec3<bool>(global0.a.x, global0.a.x, global0.a.x), global0.a, vec3<bool>(global0.a.x, global0.a.x, global0.a.x)), -func_1(Struct_4(1438i, var_0.x, global2.c, arg_2.x, 1203f), -1851i, Struct_4(-21838i, global1.b, vec4<i32>(var_0.x, global1.b, -1i, global0.b.x), global1.e, -748f), Struct_1(global0.a, global2.c.ywx, global0.d, global0.d)).c.zwx, vec3<f32>(_wgslsmith_f_op_f32(global1.e + -221f), arg_2.x, _wgslsmith_f_op_f32(global1.d - 1168f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(global0.c, vec3<f32>(global2.d, 1034f, 648f), global0.a.x))))), Struct_1(global0.a, ~global1.c.zww, _wgslsmith_f_op_vec3_f32(round(global0.d)), _wgslsmith_f_op_vec3_f32(arg_2.wyx - _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global0.c.x, 876f, 1000f))))));
    return global0.a.x || (u_input.e.x == 19488u);
}

fn func_7(arg_0: bool, arg_1: bool) -> vec3<f32> {
    var var_0 = global0.b >> (max(vec3<u32>(_wgslsmith_dot_vec3_u32(u_input.d, ~vec3<u32>(u_input.e.x, u_input.b, 0u)), func_5(Struct_4(-26172i, 0i, vec4<i32>(global0.b.x, 38476i, -1i, 2147483647i), global1.e, global1.d), Struct_3(Struct_2(u_input.c), 1710f, Struct_2(u_input.c), global1.d), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global2.e, -861f, global2.e, global2.d), vec4<f32>(global1.d, 273f, global2.e, global2.e), false))).x, ~_wgslsmith_mod_u32(1u, 22935u)), ~vec3<u32>(u_input.d.x ^ 87046u, func_2(vec3<f32>(global0.c.x, 216f, -1213f), -1287f), 0u)) % vec3<u32>(32u));
    var var_1 = -2374f;
    var var_2 = vec2<f32>(global2.d, _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_3(global1.c)).x), _wgslsmith_f_op_f32(trunc(-1422f))), global2.d, true)));
    var var_3 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(global0.d - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.c.x, -529f, 577f) + global0.d))) - vec3<f32>(_wgslsmith_f_op_f32(-global0.d.x), global2.e, _wgslsmith_f_op_f32(-var_2.x)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-global2.d), _wgslsmith_f_op_f32(trunc(global2.e)), _wgslsmith_f_op_f32(select(1687f, global1.e, arg_1))) * _wgslsmith_f_op_vec3_f32(select(global0.c, vec3<f32>(global2.d, -1571f, 189f), !global0.a))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, global0.d.x, -1356f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.c.x, 1000f, global1.d) + vec3<f32>(var_2.x, var_2.x, global1.d)))))));
    var var_4 = Struct_2(_wgslsmith_clamp_vec2_i32(var_0.yy, _wgslsmith_mult_vec2_i32(-firstTrailingBit(vec2<i32>(6163i, var_0.x)), _wgslsmith_div_vec2_i32(_wgslsmith_sub_vec2_i32(global2.c.zz, vec2<i32>(global0.b.x, 2147483647i)), abs(vec2<i32>(40453i, global2.c.x)))), -vec2<i32>(u_input.c.x & u_input.c.x, u_input.c.x)));
    return _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(trunc(global0.d))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(func_7(~0u >= u_input.a, func_6(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(~vec4<u32>(21066u, u_input.d.x, 0u, u_input.a), vec4<u32>(40503u, 1u, u_input.b, u_input.b) >> (vec4<u32>(27968u, u_input.a, 10721u, 0u) % vec4<u32>(32u))), func_5(func_1(Struct_4(global1.a, 1i, vec4<i32>(global2.c.x, 0i, global0.b.x, -2147483647i), 485f, global2.d), 1i, Struct_4(global1.c.x, 56720i, global2.c, global2.e, global0.c.x), Struct_1(vec3<bool>(false, true, false), global1.c.zyz, global0.c, vec3<f32>(-637f, global1.d, -489f))), Struct_3(Struct_2(vec2<i32>(-24159i, global0.b.x)), global0.c.x, Struct_2(global1.c.yz), 752f), vec4<f32>(747f, 210f, global2.e, global0.d.x))), Struct_2(-vec2<i32>(global1.a, -1i) | _wgslsmith_div_vec2_i32(global2.c.wx, global1.c.xz)), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1140f, global1.e, -239f, global0.d.x))))))));
    var var_1 = global0.b;
    var var_2 = global1.c.zwz;
    global3 = array<vec2<f32>, 24>();
    let var_3 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.e, 694f, 769f, 593f) * vec4<f32>(global2.e, global1.e, -590f, 327f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(772f, global0.d.x, -1358f, 1751f) - vec4<f32>(-2020f, global2.e, global2.e, -1411f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.d, -696f, -927f, -1707f)) + _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-449f, global1.d, -398f, global1.d))))))), vec4<f32>(524f, global0.d.x, _wgslsmith_f_op_f32(var_0.x - global1.e), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(func_1(Struct_4(-5944i, global2.b, vec4<i32>(var_1.x, -2147483647i, -31918i, -2147483647i), var_0.x, -709f), var_2.x, Struct_4(global0.b.x, 2147483647i, vec4<i32>(55905i, -79814i, -8381i, u_input.c.x), 844f, 2005f), Struct_1(global0.a, vec3<i32>(-1i, -43595i, global2.c.x), vec3<f32>(158f, var_0.x, 723f), vec3<f32>(global0.d.x, global0.d.x, global0.d.x))).d, -2587f, true)) * _wgslsmith_f_op_vec3_f32(func_3(global1.c >> (vec4<u32>(u_input.b, u_input.a, 4294967295u, u_input.a) % vec4<u32>(32u)))).x))));
    var_1 = vec3<i32>(firstLeadingBit(var_1.x), ~(-23366i), 0i);
    global1 = Struct_4(~(-global1.c.x & reverseBits(2147483647i)), -2147483647i, -_wgslsmith_sub_vec4_i32(global2.c, vec4<i32>(var_1.x ^ 1i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, 0i, global0.b.x, -36052i), global2.c), ~global0.b.x, global0.b.x)), var_3.x, global1.e);
    let var_4 = vec3<u32>(_wgslsmith_mod_u32(61203u | _wgslsmith_sub_u32(1u, u_input.a), u_input.a) | abs(7329u), u_input.a, select(_wgslsmith_div_u32(select(_wgslsmith_mult_u32(u_input.e.x, 8350u), _wgslsmith_dot_vec3_u32(vec3<u32>(31484u, 0u, u_input.b), u_input.d), all(vec4<bool>(false, false, global0.a.x, global0.a.x))), ~16238u), 98741u, true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(var_3.x - -261f), vec3<i32>(u_input.c.x, _wgslsmith_dot_vec2_i32(global1.c.wx, -vec2<i32>(-2147483647i, 474i)), var_2.x));
}

