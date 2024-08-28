struct Struct_1 {
    a: i32,
    b: u32,
    c: vec2<u32>,
    d: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec2<i32>,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 6> = array<vec2<i32>, 6>(vec2<i32>(-8576i, 43088i), vec2<i32>(24735i, -26059i), vec2<i32>(-22774i, 48329i), vec2<i32>(-1i, -10208i), vec2<i32>(657i, -42i), vec2<i32>(44816i, i32(-2147483648)));

var<private> global1: array<vec3<i32>, 21>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_1) -> vec2<u32> {
    global0 = array<vec2<i32>, 6>();
    var var_0 = u_input.b.x;
    var_0 = _wgslsmith_mod_u32(countOneBits(arg_1.c.x), select(arg_1.c.x, 4294967295u, true));
    var_0 = arg_1.c.x;
    var var_1 = Struct_1(~select(u_input.e, u_input.c.x, all(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), true))), ~_wgslsmith_sub_u32(u_input.d.x, 1u), vec2<u32>(~(~_wgslsmith_add_u32(u_input.b.x, 0u)), arg_1.b), u_input.e);
    return reverseBits(abs(vec2<u32>(~77458u, countOneBits(var_1.c.x))) & arg_1.c);
}

fn func_2(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1) -> f32 {
    let var_0 = arg_2.b;
    var var_1 = _wgslsmith_mult_i32(i32(-1i) * -59243i, min(-2147483647i, ~(~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.e, -34341i, 40407i, arg_1), vec4<i32>(1i, -50149i, 0i, arg_0.d)))));
    let var_2 = Struct_1(-_wgslsmith_sub_i32(0i ^ ~arg_1, u_input.c.x), u_input.b.x, ~max(_wgslsmith_clamp_vec2_u32(vec2<u32>(arg_2.b, 0u), arg_2.c, vec2<u32>(var_0, u_input.d.x)) | func_3(vec2<u32>(var_0, arg_2.c.x), arg_2), ~vec2<u32>(var_0, 29695u) >> (firstLeadingBit(vec2<u32>(arg_0.c.x, 34642u)) % vec2<u32>(32u))), select(u_input.e, _wgslsmith_mult_i32(arg_1, -(arg_1 & arg_1)), arg_0.d >= 2147483647i));
    let var_3 = select(!select(select(vec2<bool>(false, false), vec2<bool>(true, false), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true))), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(false, true), !select(vec2<bool>(true, true), vec2<bool>(true, any(vec4<bool>(true, false, false, false))), !all(vec4<bool>(false, false, true, false))));
    global0 = array<vec2<i32>, 6>();
    return -1579f;
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: vec2<bool>) -> Struct_1 {
    global0 = array<vec2<i32>, 6>();
    let var_0 = !(!select(select(vec2<bool>(false, false), arg_2, arg_2), arg_2, select(arg_2, select(vec2<bool>(false, arg_2.x), vec2<bool>(true, false), arg_2), any(arg_2))));
    let var_1 = vec3<bool>(var_0.x, true, !(!select(any(vec3<bool>(arg_2.x, false, false)), true, arg_2.x)));
    let var_2 = Struct_1(_wgslsmith_sub_i32(-firstLeadingBit(arg_1.a), -abs(u_input.c.x)), countOneBits(u_input.b.x), select(abs(firstLeadingBit(vec2<u32>(u_input.a, u_input.a))), ~firstLeadingBit(_wgslsmith_mod_vec2_u32(arg_1.c, arg_1.c)), var_0), 0i);
    let var_3 = true;
    return Struct_1(arg_1.d >> (_wgslsmith_sub_u32(_wgslsmith_div_u32(~var_2.c.x, ~126758u), reverseBits(u_input.b.x)) % 32u), ~1u, ~_wgslsmith_sub_vec2_u32(reverseBits(~u_input.b.wz), min(vec2<u32>(arg_1.b, 1u), _wgslsmith_add_vec2_u32(vec2<u32>(arg_1.c.x, u_input.b.x), vec2<u32>(1u, arg_1.c.x)))), u_input.e);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    let var_0 = vec3<bool>(select(any(vec3<bool>(true, all(vec3<bool>(false, false, false)), true)), true, all(!select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(true, false, true)))), false, !(true & all(vec3<bool>(true, true, true))) | any(select(vec3<bool>(false, false, false), select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), false), true)));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(759f, -1061f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -666f) + _wgslsmith_f_op_f32(round(-399f))))))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-128f, _wgslsmith_f_op_f32(min(528f, -351f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1450f))));
    let var_2 = arg_1;
    let var_3 = vec4<u32>(arg_1.b, 82934u >> (var_2.b % 32u), arg_1.c.x, ~(~23111u));
    var var_4 = Struct_1(var_2.d, ~36529u, vec2<u32>(var_3.x, func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-2230f, -135f, 2055f), vec3<f32>(2147f, 778f, -578f))), Struct_1(arg_0.a, abs(0u), ~vec2<u32>(1u, 49220u), arg_1.d >> (var_2.c.x % 32u)), vec2<bool>(false, true)).b), ~abs(-31699i));
    return Struct_1(-36838i, 4294967295u, ~_wgslsmith_mod_vec2_u32(reverseBits(~arg_1.c), ~countOneBits(var_4.c)), _wgslsmith_add_i32(u_input.c.x, abs(_wgslsmith_div_i32(_wgslsmith_sub_i32(arg_1.d, arg_0.a), arg_0.d & -40829i))));
}

fn func_1() -> Struct_1 {
    global1 = array<vec3<i32>, 21>();
    var var_0 = countOneBits(~(countOneBits(u_input.a) ^ 4294967295u) & _wgslsmith_dot_vec4_u32(abs(u_input.b) & u_input.b, vec4<u32>(0u, 7621u, u_input.d.x, _wgslsmith_div_u32(23706u, 31080u))));
    let var_1 = func_5(Struct_1(u_input.c.x, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, _wgslsmith_mod_u32(43077u, 4294967295u), ~4294967295u), _wgslsmith_add_vec3_u32(~vec3<u32>(u_input.a, 1u, u_input.a), firstTrailingBit(vec3<u32>(1u, 60055u, u_input.a)))), u_input.b.xx, u_input.c.x | reverseBits(2147483647i)), func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1570f, -975f, -271f)))) + vec3<f32>(_wgslsmith_f_op_f32(1156f * -213f), -360f, _wgslsmith_f_op_f32(func_2(Struct_1(1i, u_input.d.x, u_input.b.yx, -2147483647i), -36523i, Struct_1(u_input.e, 1u, u_input.d.yy, 17541i))))), Struct_1(-42715i << (u_input.a % 32u), max(u_input.a, min(20925u, 1u)), _wgslsmith_clamp_vec2_u32(~u_input.b.wx, abs(vec2<u32>(1u, 1u)), abs(vec2<u32>(u_input.d.x, 1u))), _wgslsmith_add_i32(u_input.c.x, -13313i)), vec2<bool>(!any(vec4<bool>(true, true, true, false)), !any(vec2<bool>(true, true)))));
    var var_2 = _wgslsmith_clamp_u32(~var_1.c.x, _wgslsmith_mod_u32(0u, ~firstTrailingBit(u_input.d.x)) ^ 0u, _wgslsmith_dot_vec2_u32(firstLeadingBit(countOneBits(vec2<u32>(u_input.b.x, u_input.a))), vec2<u32>(1u, 40291u)));
    return var_1;
}

fn func_6(arg_0: u32, arg_1: Struct_1) -> f32 {
    var var_0 = vec3<u32>(min(select(1u << (arg_1.c.x % 32u), arg_1.b | 16524u, !any(vec4<bool>(false, true, false, false))), arg_1.b), _wgslsmith_mod_u32(_wgslsmith_div_u32(u_input.b.x, abs(arg_0)), ~((u_input.b.x << (4294967295u % 32u)) >> (~4294967295u % 32u))), 41370u);
    global1 = array<vec3<i32>, 21>();
    let var_1 = func_1();
    let var_2 = true;
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(-798f + _wgslsmith_f_op_f32(-120f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-607f))))), _wgslsmith_f_op_f32(func_2(arg_1, i32(-1i) * -var_1.a, arg_1)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1532f))))), 1605f);
    return 404f;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<i32>, 6>();
    var var_0 = _wgslsmith_f_op_f32(1689f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1731f * -151f) - -755f))));
    global0 = array<vec2<i32>, 6>();
    var var_1 = u_input.c.x;
    let var_2 = ~(countOneBits(_wgslsmith_add_vec4_u32(u_input.b, max(u_input.b, u_input.b))) | abs(_wgslsmith_clamp_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, 70144u, 30951u, 16889u), u_input.b, u_input.b), max(vec4<u32>(4294967295u, u_input.a, u_input.d.x, u_input.d.x), u_input.b), ~vec4<u32>(u_input.d.x, 5232u, u_input.a, 68878u))));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_6(~(1u << (u_input.a % 32u)) & var_2.x, func_1())));
    let x = u_input.a;
    s_output = StorageBuffer(~(~func_5(Struct_1(-1i, 3255u, vec2<u32>(1u, var_2.x), u_input.e), func_5(Struct_1(1i, u_input.a, var_2.yz, u_input.e), Struct_1(-35607i, 62840u, u_input.b.xy, -2147483647i))).c.x), _wgslsmith_div_vec2_u32(~var_2.ww, _wgslsmith_sub_vec2_u32(var_2.zy, ~vec2<u32>(0u, var_2.x))), func_5(Struct_1(~(-1i), firstLeadingBit(_wgslsmith_mult_u32(0u, 1u)), _wgslsmith_mult_vec2_u32(u_input.b.zz, vec2<u32>(var_2.x, 0u)) & (vec2<u32>(var_2.x, var_2.x) << (var_2.xx % vec2<u32>(32u))), u_input.e), Struct_1(-_wgslsmith_mod_i32(u_input.e, -1i), u_input.a, vec2<u32>(4294967295u, 4294967295u), _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(global0[_wgslsmith_index_u32(var_2.x, 6u)], global0[_wgslsmith_index_u32(2359u, 6u)]), -u_input.c.x))).b, u_input.a);
}

