struct Struct_1 {
    a: vec4<u32>,
    b: u32,
    c: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec4<u32>,
}

struct Struct_4 {
    a: u32,
    b: vec4<bool>,
    c: vec3<u32>,
    d: i32,
    e: Struct_3,
}

struct Struct_5 {
    a: f32,
    b: u32,
    c: Struct_2,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec2<i32>,
    d: vec2<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5;

var<private> global1: array<Struct_1, 13> = array<Struct_1, 13>(Struct_1(vec4<u32>(4294967295u, 22879u, 45118u, 8662u), 0u, vec3<u32>(0u, 0u, 4294967295u)), Struct_1(vec4<u32>(4890u, 0u, 4294967295u, 6547u), 17469u, vec3<u32>(0u, 30865u, 1u)), Struct_1(vec4<u32>(0u, 58819u, 1u, 4292u), 0u, vec3<u32>(4294967295u, 1u, 76297u)), Struct_1(vec4<u32>(4294967295u, 41575u, 1u, 0u), 74335u, vec3<u32>(4294967295u, 0u, 0u)), Struct_1(vec4<u32>(4294967295u, 4294967295u, 4294967295u, 1u), 4294967295u, vec3<u32>(1u, 85378u, 0u)), Struct_1(vec4<u32>(50174u, 16258u, 5879u, 69180u), 1u, vec3<u32>(1u, 57420u, 4294967295u)), Struct_1(vec4<u32>(59615u, 7665u, 1741u, 19979u), 0u, vec3<u32>(0u, 73833u, 74341u)), Struct_1(vec4<u32>(22939u, 23375u, 53486u, 17397u), 143563u, vec3<u32>(4294967295u, 0u, 59215u)), Struct_1(vec4<u32>(43062u, 1286u, 1u, 4294967295u), 0u, vec3<u32>(117643u, 1u, 102907u)), Struct_1(vec4<u32>(0u, 18573u, 0u, 1u), 4294967295u, vec3<u32>(16029u, 106006u, 36912u)), Struct_1(vec4<u32>(0u, 0u, 92853u, 1u), 4294967295u, vec3<u32>(9066u, 26930u, 26995u)), Struct_1(vec4<u32>(1u, 4294967295u, 1u, 1u), 0u, vec3<u32>(6390u, 1u, 4294967295u)), Struct_1(vec4<u32>(21256u, 60585u, 0u, 18202u), 0u, vec3<u32>(26162u, 0u, 4294967295u)));

var<private> global2: array<i32, 7> = array<i32, 7>(52804i, -49638i, 33691i, 0i, 2421i, 33987i, 1i);

var<private> global3: bool = true;

var<private> global4: vec2<f32> = vec2<f32>(216f, -524f);

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: Struct_4) -> f32 {
    global1 = array<Struct_1, 13>();
    global1 = array<Struct_1, 13>();
    let var_0 = vec4<f32>(global0.a, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global0.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global0.a), global4.x, arg_0.b.x)))) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.a - 147f), _wgslsmith_f_op_f32(-global0.a)))), global0.a);
    global2 = array<i32, 7>();
    var var_1 = false;
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-1316f)), _wgslsmith_f_op_f32(max(-318f, _wgslsmith_f_op_f32(trunc(global4.x)))));
}

fn func_4(arg_0: Struct_3, arg_1: f32, arg_2: i32) -> u32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(arg_1, -789f)));
    global2 = array<i32, 7>();
    var var_1 = Struct_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_4(arg_0.b.x, select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true), false), vec3<u32>(0u, arg_0.b.x, 58769u), 34810i, arg_0))) * 161f), max(firstTrailingBit(arg_0.b.x), arg_0.b.x), Struct_2(global0.c.a, ~(~(arg_0.b.yyw >> (vec3<u32>(global0.d.x, arg_0.b.x, global0.c.a.a.x) % vec3<u32>(32u))))), vec3<u32>(~global0.c.a.b, u_input.e.x, ~43010u) ^ ~(~(vec3<u32>(40872u, arg_0.b.x, 0u) ^ vec3<u32>(arg_0.b.x, u_input.b, u_input.b))));
    var var_2 = firstLeadingBit(vec3<u32>(_wgslsmith_mult_u32(global0.d.x, var_1.c.b.x), 1u, _wgslsmith_dot_vec2_u32(vec2<u32>(40184u, _wgslsmith_mod_u32(1u, 27944u)), vec2<u32>(var_1.c.a.a.x, ~global0.b))));
    var var_3 = vec3<bool>(any(vec4<bool>(true, true, true, false)) || select(false, all(vec3<bool>(true, false, false)), select(-226f > arg_1, true, 2147483647i > u_input.c.x)), true, true);
    return ~_wgslsmith_sub_u32(arg_0.b.x, var_2.x);
}

fn func_2(arg_0: u32) -> Struct_5 {
    global3 = !select(any(select(select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, false)), vec4<bool>(false, true, true, true), true)), false, all(vec2<bool>(true, true)));
    global2 = array<i32, 7>();
    let var_0 = u_input.e.x;
    var var_1 = Struct_2(global0.c.a, global0.c.b);
    let var_2 = ~(~_wgslsmith_mult_u32(var_1.a.b, ~(~var_1.b.x)));
    return Struct_5(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a + global4.x)))), func_4(Struct_3(_wgslsmith_sub_vec4_i32(vec4<i32>(global2[_wgslsmith_index_u32(3617u, 7u)], -1i, -1i, 2147483647i), abs(vec4<i32>(-56472i, u_input.c.x, 54222i, global2[_wgslsmith_index_u32(18504u, 7u)]))), global0.c.a.a), _wgslsmith_f_op_f32(func_3(Struct_4(~arg_0, select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, true), true), _wgslsmith_add_vec3_u32(vec3<u32>(var_0, 69561u, var_0), global0.d), _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 33098i, -1i, 23937i), vec4<i32>(u_input.c.x, global2[_wgslsmith_index_u32(4294967295u, 7u)], u_input.c.x, 0i)), Struct_3(vec4<i32>(23561i, u_input.c.x, -13470i, u_input.c.x), vec4<u32>(global0.d.x, 0u, 4294967295u, 1u))))), u_input.c.x ^ (reverseBits(u_input.c.x) >> (~arg_0 % 32u))), global0.c, min(abs(global0.d), ~_wgslsmith_clamp_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(87541u, var_0, u_input.e.x), global0.c.b, vec3<u32>(var_2, 24413u, 1u)), ~global0.d, ~vec3<u32>(87229u, 1u, arg_0))));
}

fn func_1() -> vec3<u32> {
    let var_0 = func_2(_wgslsmith_div_u32(0u, 68954u));
    let var_1 = Struct_4(~global0.c.b.x, select(vec4<bool>(true, true, true, true), select(!select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, true)), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), true), vec4<bool>(true, true, true, true)), true), firstTrailingBit(global0.c.a.c), global2[_wgslsmith_index_u32(~((_wgslsmith_clamp_u32(54047u, 10429u, var_0.c.b.x) & 90374u) << (countOneBits(global0.d.x) % 32u)), 7u)], Struct_3(_wgslsmith_add_vec4_i32(min(vec4<i32>(-1i, global2[_wgslsmith_index_u32(global0.c.a.b, 7u)], -38821i, u_input.c.x), vec4<i32>(-44043i, global2[_wgslsmith_index_u32(88424u, 7u)], u_input.c.x, 0i)), vec4<i32>(u_input.c.x, u_input.c.x, 1i, -30739i)), var_0.c.a.a));
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global4.x, -411f, false)))))), _wgslsmith_f_op_f32(-1614f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(global4.x, global4.x))))), _wgslsmith_f_op_f32(-global0.a), var_0.a);
    global4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, -698f) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-954f, global0.a))))));
    let var_3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(876f, -174f));
    return vec3<u32>(select(var_0.d.x, ~(~firstLeadingBit(50089u)), var_1.b.x), ~(global0.b | (select(4294967295u, 1u, var_1.b.x) << (_wgslsmith_clamp_u32(var_0.b, 0u, u_input.d.x) % 32u))), ~_wgslsmith_mult_u32(~global0.b ^ var_0.b, 55832u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(~vec4<i32>(0i >> ((u_input.a.x >> (u_input.d.x % 32u)) % 32u), u_input.c.x, u_input.c.x, global2[_wgslsmith_index_u32(5436u, 7u)]), global0.c.a.a);
    global4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global4.x, global4.x)) + _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1053f, global4.x)))))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(global0.a, -1230f), vec2<f32>(global0.a, global0.a)), _wgslsmith_div_vec2_f32(vec2<f32>(-681f, 100f), vec2<f32>(global4.x, -688f))))))));
    global1 = array<Struct_1, 13>();
    let var_1 = var_0.a.yxx;
    let var_2 = 28610i;
    global1 = array<Struct_1, 13>();
    var var_3 = reverseBits(func_1());
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(-global4.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global0.a)) + -843f) + _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(global4.x, -442f))))));
}

