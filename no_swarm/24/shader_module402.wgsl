struct Struct_1 {
    a: i32,
    b: bool,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
    d: f32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 22>;

var<private> global1: array<vec2<bool>, 30>;

var<private> global2: f32 = -303f;

var<private> global3: array<Struct_1, 12> = array<Struct_1, 12>(Struct_1(-16740i, false, vec2<u32>(106134u, 43180u)), Struct_1(2147483647i, true, vec2<u32>(42929u, 1u)), Struct_1(-3803i, false, vec2<u32>(1u, 8007u)), Struct_1(8857i, false, vec2<u32>(841u, 0u)), Struct_1(0i, true, vec2<u32>(32326u, 1u)), Struct_1(i32(-2147483648), true, vec2<u32>(27539u, 4294967295u)), Struct_1(0i, false, vec2<u32>(4294967295u, 4294967295u)), Struct_1(i32(-2147483648), true, vec2<u32>(20198u, 35701u)), Struct_1(-6841i, true, vec2<u32>(1739u, 0u)), Struct_1(-1i, true, vec2<u32>(32007u, 45156u)), Struct_1(-71562i, true, vec2<u32>(4519u, 0u)), Struct_1(-9065i, false, vec2<u32>(72189u, 0u)));

var<private> global4: i32;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: Struct_1) -> u32 {
    var var_0 = ~vec3<i32>(_wgslsmith_div_i32(arg_0.a, max(arg_0.a, arg_0.a)), ~21853i & _wgslsmith_clamp_i32(u_input.c.x, arg_0.a, 1i), -arg_0.a) << (~(~vec3<u32>(0u, u_input.b, 7994u)) % vec3<u32>(32u));
    var var_1 = _wgslsmith_f_op_f32(-1695f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1716f) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-796f)), -1001f)));
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1141f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-767f))), _wgslsmith_f_op_f32(f32(-1f) * -599f))));
    let var_2 = global0[_wgslsmith_index_u32(~arg_0.c.x, 22u)];
    var var_3 = _wgslsmith_f_op_f32(f32(-1f) * -1035f);
    return 112334u;
}

fn func_2(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: Struct_1) -> vec2<u32> {
    global2 = arg_0.x;
    global3 = array<Struct_1, 12>();
    var var_0 = arg_2;
    var var_1 = min(arg_1.c.x, func_3(Struct_1(_wgslsmith_mult_i32(-9172i, 0i), arg_1.b, vec2<u32>(55015u, arg_2.c.x)))) ^ 73490u;
    var_1 = arg_2.c.x;
    return abs(vec2<u32>(_wgslsmith_div_u32(~select(1u, 0u, arg_1.b), ~(~arg_2.c.x)), abs(~_wgslsmith_mult_u32(var_0.c.x, arg_1.c.x))));
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: bool, arg_3: Struct_1) -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_sub_i32(_wgslsmith_mult_i32(firstTrailingBit(u_input.c.x), countOneBits(_wgslsmith_dot_vec3_i32(u_input.e, u_input.e))), 0i), arg_2, ~(~(~vec2<u32>(arg_3.c.x, 1u))));
    var var_1 = global0[_wgslsmith_index_u32(~reverseBits(60469u), 22u)];
    var var_2 = countOneBits(vec2<i32>(~(-2147483647i), _wgslsmith_clamp_i32(~var_1.a, countOneBits(-557i), arg_1.a << (50971u % 32u)) ^ arg_3.a));
    global3 = array<Struct_1, 12>();
    var_1 = Struct_1(var_1.a, true, vec2<u32>(firstTrailingBit(countOneBits(arg_1.c.x)), _wgslsmith_add_u32(var_1.c.x | 0u, _wgslsmith_mult_u32(0u, u_input.d))) << (vec2<u32>(_wgslsmith_div_u32(_wgslsmith_div_u32(u_input.a, 0u), 32236u), ~var_0.c.x) % vec2<u32>(32u)));
    return Struct_1(arg_3.a, any(select(global1[_wgslsmith_index_u32(~(~0u), 30u)], select(!vec2<bool>(false, arg_3.b), global1[_wgslsmith_index_u32(6302u, 30u)], true), vec2<bool>(var_0.b, any(global1[_wgslsmith_index_u32(var_1.c.x, 30u)])))), _wgslsmith_mod_vec2_u32(_wgslsmith_clamp_vec2_u32(arg_1.c << (~vec2<u32>(arg_1.c.x, 4294967295u) % vec2<u32>(32u)), ~_wgslsmith_sub_vec2_u32(vec2<u32>(54442u, 15854u), var_1.c), vec2<u32>(18945u, u_input.d)), vec2<u32>(select(func_3(Struct_1(arg_1.a, arg_3.b, vec2<u32>(45839u, arg_3.c.x))), 1u, -2400f == arg_0), _wgslsmith_add_u32(32397u, arg_3.c.x) | _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.a, 7722u), vec3<u32>(arg_3.c.x, 38549u, 11018u)))));
}

fn func_1(arg_0: vec3<i32>) -> Struct_1 {
    var var_0 = func_4(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-443f + 668f)))))), Struct_1(arg_0.x, true, func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-347f, -495f), vec2<f32>(1547f, 698f))), Struct_1(_wgslsmith_mod_i32(2158i, u_input.c.x), true, vec2<u32>(u_input.d, 2710u)), Struct_1(u_input.c.x, true, _wgslsmith_div_vec2_u32(vec2<u32>(0u, u_input.a), vec2<u32>(80046u, u_input.b))))), true, Struct_1(0i >> (1u % 32u), (~u_input.d < ~u_input.b) || (select(true, true, false) & all(vec2<bool>(true, true))), firstLeadingBit(vec2<u32>(abs(u_input.d), u_input.a))));
    global0 = array<Struct_1, 22>();
    global4 = var_0.a;
    var var_1 = func_4(187f, Struct_1(_wgslsmith_dot_vec3_i32(~vec3<i32>(arg_0.x, -1i, 2147483647i) & ~vec3<i32>(-33237i, 0i, 2147483647i), firstTrailingBit(arg_0) | -u_input.e), var_0.b, min(~(~var_0.c), ~(~var_0.c))), true, func_4(_wgslsmith_f_op_f32(f32(-1f) * -1000f), global3[_wgslsmith_index_u32(_wgslsmith_add_u32(4294967295u, ~(~var_0.c.x)), 12u)], !var_0.b, global3[_wgslsmith_index_u32(var_0.c.x, 12u)]));
    var var_2 = !(!select(!(!global1[_wgslsmith_index_u32(1u, 30u)]), global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u >> (u_input.a % 32u), _wgslsmith_add_u32(14462u, var_1.c.x)), 30u)], select(global1[_wgslsmith_index_u32(13169u, 30u)], vec2<bool>(false, var_1.b), select(global1[_wgslsmith_index_u32(53815u, 30u)], vec2<bool>(var_1.b, var_1.b), var_1.b))));
    return func_4(_wgslsmith_f_op_f32(min(1f, 1491f)), func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(1f)) + _wgslsmith_f_op_f32(-579f + _wgslsmith_f_op_f32(round(-452f)))), func_4(_wgslsmith_f_op_f32(-1137f - _wgslsmith_f_op_f32(trunc(-818f))), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_div_u32(var_1.c.x, 6702u), var_1.c.x), 22u)], any(vec2<bool>(true, true)), Struct_1(-arg_0.x, all(vec4<bool>(false, var_0.b, var_1.b, var_2.x)), var_0.c)), var_2.x, Struct_1(u_input.e.x, (var_1.c.x ^ 4294967295u) > reverseBits(u_input.a), ~_wgslsmith_add_vec2_u32(var_1.c, var_1.c))), var_2.x, global3[_wgslsmith_index_u32(var_0.c.x >> (var_0.c.x % 32u), 12u)]);
}

@compute
@workgroup_size(1)
fn main() {
    global4 = -(~(u_input.c.x ^ 27499i));
    global1 = array<vec2<bool>, 30>();
    let var_0 = global3[_wgslsmith_index_u32(u_input.b, 12u)];
    global1 = array<vec2<bool>, 30>();
    var var_1 = func_1(_wgslsmith_add_vec3_i32(~(_wgslsmith_add_vec3_i32(u_input.e, u_input.e) ^ -vec3<i32>(var_0.a, -83439i, 0i)), vec3<i32>(1i, 1i, ~2147483647i) >> (((vec3<u32>(u_input.a, 1u, 0u) ^ vec3<u32>(var_0.c.x, 41259u, var_0.c.x)) >> (vec3<u32>(var_0.c.x, u_input.d, u_input.d) % vec3<u32>(32u))) % vec3<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(9872i) >> (u_input.b % 32u), _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(14516u, 1u, 4294967295u, var_0.c.x) << (vec4<u32>(11028u, u_input.b, var_1.c.x, 65278u) % vec4<u32>(32u))), vec4<u32>(29763u, _wgslsmith_mult_u32(var_1.c.x, 1u), 4294967295u, ~u_input.b)), 6664u), select(_wgslsmith_div_vec3_u32(vec3<u32>(~var_0.c.x, 24954u, select(35348u, var_1.c.x, true)), ~(~vec3<u32>(46763u, 8827u, var_0.c.x))), ~(~(~vec3<u32>(var_1.c.x, 28029u, 8763u))), vec3<bool>(-1i >= _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.a, -52210i, -23719i, 4041i), vec4<i32>(var_1.a, var_0.a, u_input.e.x, var_1.a)), var_1.b, all(vec3<bool>(var_0.b, var_0.b, false)) || true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-435f))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-454f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-807f * -427f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -710f)), _wgslsmith_f_op_f32(f32(-1f) * -683f)), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-947f, 1939f, -922f, 530f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1027f, 1169f, 2075f, -1000f))))))));
}

