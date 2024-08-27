struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: vec2<u32>,
    d: Struct_2,
    e: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: i32,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 8>;

var<private> global1: array<vec2<u32>, 5> = array<vec2<u32>, 5>(vec2<u32>(123112u, 0u), vec2<u32>(1u, 30223u), vec2<u32>(0u, 0u), vec2<u32>(20749u, 4294967295u), vec2<u32>(0u, 1u));

var<private> global2: array<Struct_1, 13> = array<Struct_1, 13>(Struct_1(vec4<bool>(true, false, true, false)), Struct_1(vec4<bool>(false, true, false, true)), Struct_1(vec4<bool>(false, true, false, false)), Struct_1(vec4<bool>(true, false, true, false)), Struct_1(vec4<bool>(false, false, true, true)), Struct_1(vec4<bool>(true, true, true, true)), Struct_1(vec4<bool>(true, true, false, true)), Struct_1(vec4<bool>(false, false, false, true)), Struct_1(vec4<bool>(false, true, true, true)), Struct_1(vec4<bool>(false, false, false, true)), Struct_1(vec4<bool>(false, true, false, false)), Struct_1(vec4<bool>(false, false, false, false)), Struct_1(vec4<bool>(false, false, false, false)));

var<private> global3: array<f32, 1> = array<f32, 1>(558f);

var<private> global4: array<Struct_2, 23> = array<Struct_2, 23>(Struct_2(Struct_1(vec4<bool>(false, true, true, false))), Struct_2(Struct_1(vec4<bool>(true, false, false, false))), Struct_2(Struct_1(vec4<bool>(true, false, false, false))), Struct_2(Struct_1(vec4<bool>(false, false, false, false))), Struct_2(Struct_1(vec4<bool>(true, false, true, false))), Struct_2(Struct_1(vec4<bool>(false, false, false, true))), Struct_2(Struct_1(vec4<bool>(false, true, false, true))), Struct_2(Struct_1(vec4<bool>(false, false, true, false))), Struct_2(Struct_1(vec4<bool>(true, false, false, true))), Struct_2(Struct_1(vec4<bool>(false, false, true, false))), Struct_2(Struct_1(vec4<bool>(true, true, true, false))), Struct_2(Struct_1(vec4<bool>(true, false, true, true))), Struct_2(Struct_1(vec4<bool>(false, false, false, true))), Struct_2(Struct_1(vec4<bool>(false, false, false, false))), Struct_2(Struct_1(vec4<bool>(true, true, false, true))), Struct_2(Struct_1(vec4<bool>(false, false, false, true))), Struct_2(Struct_1(vec4<bool>(true, false, true, true))), Struct_2(Struct_1(vec4<bool>(false, true, true, false))), Struct_2(Struct_1(vec4<bool>(true, true, true, false))), Struct_2(Struct_1(vec4<bool>(false, true, true, true))), Struct_2(Struct_1(vec4<bool>(false, false, false, false))), Struct_2(Struct_1(vec4<bool>(false, false, false, true))), Struct_2(Struct_1(vec4<bool>(true, false, true, false))));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    global2 = array<Struct_1, 13>();
    global0 = array<Struct_3, 8>();
    global1 = array<vec2<u32>, 5>();
    var var_0 = select(!(!(!arg_0.a.wy)), select(arg_0.a.wz, !arg_0.a.xy, false), arg_0.a.x);
    var var_1 = global0[_wgslsmith_index_u32(u_input.c, 8u)];
    return global2[_wgslsmith_index_u32(~50635u, 13u)];
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: Struct_2) -> vec4<bool> {
    let var_0 = min(~vec4<u32>(firstTrailingBit(max(u_input.c, arg_0)), 1u, _wgslsmith_add_u32(abs(38575u), _wgslsmith_dot_vec3_u32(vec3<u32>(15146u, arg_0, arg_0), u_input.b.zyy)), u_input.c >> (arg_0 % 32u)), _wgslsmith_div_vec4_u32(~(~(u_input.b >> (u_input.b % vec4<u32>(32u)))), _wgslsmith_add_vec4_u32(~(vec4<u32>(1u, 26324u, arg_0, 6309u) >> (u_input.b % vec4<u32>(32u))), ~(vec4<u32>(arg_0, u_input.c, u_input.b.x, u_input.b.x) >> (vec4<u32>(1u, u_input.c, u_input.b.x, arg_0) % vec4<u32>(32u))))));
    let var_1 = max(-33377i, u_input.a.x);
    let var_2 = Struct_3(var_1, Struct_2(arg_2.a), vec2<u32>(4294967295u, ~_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(15757u, 31124u, u_input.c, u_input.b.x), vec4<u32>(4294967295u, u_input.c, u_input.b.x, 24100u)), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.b.x, 4294967295u, 25404u, 1u), vec4<u32>(4658u, u_input.b.x, u_input.b.x, arg_0)))), global4[_wgslsmith_index_u32(var_0.x, 23u)], _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(arg_0, 1u)] + -1000f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(u_input.b.x, 1u)] - global3[_wgslsmith_index_u32(4598u, 1u)]), _wgslsmith_f_op_f32(step(global3[_wgslsmith_index_u32(u_input.b.x, 1u)], global3[_wgslsmith_index_u32(var_0.x, 1u)]))))))));
    let var_3 = func_2(func_2(var_2.b.a));
    global1 = array<vec2<u32>, 5>();
    return select(select(arg_1.a, vec4<bool>(!arg_1.a.x, false, false, arg_1.a.x), func_2(Struct_1(vec4<bool>(var_3.a.x, true, false, var_3.a.x))).a), var_3.a, true);
}

fn func_1() -> Struct_2 {
    var var_0 = abs(firstLeadingBit(vec2<u32>(66047u, u_input.c)));
    let var_1 = u_input.a.x & _wgslsmith_add_i32(-(1i >> (_wgslsmith_mult_u32(u_input.b.x, u_input.b.x) % 32u)), 29421i);
    return Struct_2(Struct_1(select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, false)), vec4<bool>(false, true, true, true)), func_3(~649u, func_2(Struct_1(vec4<bool>(true, false, false, false))), Struct_2(Struct_1(vec4<bool>(false, true, false, true)))), func_2(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, 0u, u_input.b.x, 47751u), vec4<u32>(82284u, var_0.x, 0u, 1u)), 13u)]).a)));
}

fn func_4(arg_0: Struct_2) -> Struct_3 {
    let var_0 = u_input.a.x;
    var var_1 = arg_0.a.a.x;
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global3[_wgslsmith_index_u32(39146u, 1u)], -1296f)) * global3[_wgslsmith_index_u32(u_input.b.x, 1u)]), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-336f + -1000f), _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(u_input.b.x, 1u)])), _wgslsmith_f_op_f32(1f * global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.c, 1u, u_input.c), 1u)]))) + _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(min(412f, -227f)), 1488f, _wgslsmith_f_op_f32(ceil(-575f)))))));
    var var_3 = Struct_1(vec4<bool>(!all(select(arg_0.a.a, vec4<bool>(false, false, true, false), true)), arg_0.a.a.x, arg_0.a.a.x, true));
    let var_4 = global2[_wgslsmith_index_u32(firstTrailingBit(~u_input.c), 13u)];
    return global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(~_wgslsmith_dot_vec2_u32(u_input.b.xy, ~global1[_wgslsmith_index_u32(7322u, 5u)]), firstTrailingBit(0u), abs(25442u >> (1u % 32u)), u_input.c), ~(((vec4<u32>(u_input.b.x, 3651u, u_input.c, u_input.b.x) | vec4<u32>(u_input.c, u_input.b.x, 21069u, 4294967295u)) ^ countOneBits(vec4<u32>(3702u, 15539u, 1u, u_input.c))) & (vec4<u32>(u_input.b.x, 0u, 1u, 14423u) | _wgslsmith_add_vec4_u32(vec4<u32>(62329u, u_input.b.x, 32043u, 0u), u_input.b)))), 8u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(vec4<bool>(true, true, true, false));
    var var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(global3[_wgslsmith_index_u32(0u, 1u)], _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, global3[_wgslsmith_index_u32(u_input.c, 1u)]) * global3[_wgslsmith_index_u32(max(27163u, 19988u), 1u)]), global3[_wgslsmith_index_u32(u_input.b.x, 1u)]))))));
    global1 = array<vec2<u32>, 5>();
    let var_2 = func_4(func_1());
    var var_3 = vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-65981i, firstLeadingBit(~(-1i)), _wgslsmith_add_i32(var_2.a, 0i), max(firstLeadingBit(var_2.a), select(u_input.a.x, u_input.a.x, false))), vec4<i32>(-8898i, abs(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<i32>(1i, -49120i, u_input.a.x))), _wgslsmith_sub_i32(93280i, -30303i | var_2.a), i32(-1i) * -14464i)), var_2.a);
    global3 = array<f32, 1>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global3[_wgslsmith_index_u32(_wgslsmith_div_u32(4294967295u, u_input.b.x), 1u)], -1351f) * _wgslsmith_div_vec2_f32(vec2<f32>(-186f, global3[_wgslsmith_index_u32(var_2.c.x, 1u)]), _wgslsmith_f_op_vec2_f32(vec2<f32>(1574f, -216f) * vec2<f32>(global3[_wgslsmith_index_u32(8077u, 1u)], -469f)))) - vec2<f32>(_wgslsmith_f_op_f32(-1004f - 1f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-488f, -450f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1830f * -768f))), global3[_wgslsmith_index_u32(15182u, 1u)]), -(var_2.a | 1060i), u_input.a.x, abs(~_wgslsmith_clamp_i32(var_2.a, _wgslsmith_div_i32(0i, var_2.a), ~var_2.a)));
}

