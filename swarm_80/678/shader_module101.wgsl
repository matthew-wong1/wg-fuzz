struct Struct_1 {
    a: vec2<u32>,
    b: u32,
    c: vec3<f32>,
}

struct Struct_2 {
    a: f32,
    b: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<f32>,
    c: Struct_2,
    d: vec4<f32>,
}

struct Struct_4 {
    a: u32,
    b: vec2<u32>,
    c: vec4<bool>,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: vec3<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 25> = array<Struct_2, 25>(Struct_2(-492f, -219f), Struct_2(-777f, -1396f), Struct_2(525f, 1475f), Struct_2(-809f, 1000f), Struct_2(-200f, 1570f), Struct_2(653f, 1422f), Struct_2(265f, 1000f), Struct_2(333f, -379f), Struct_2(-1000f, 990f), Struct_2(720f, -318f), Struct_2(-819f, 1000f), Struct_2(231f, -985f), Struct_2(-1236f, -373f), Struct_2(-363f, -1402f), Struct_2(-1994f, -168f), Struct_2(718f, 1901f), Struct_2(-1142f, 2849f), Struct_2(1000f, -393f), Struct_2(1000f, 2692f), Struct_2(143f, 210f), Struct_2(2424f, 1744f), Struct_2(855f, 376f), Struct_2(232f, -559f), Struct_2(329f, -1204f), Struct_2(-481f, -804f));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3() -> f32 {
    return 575f;
}

fn func_4(arg_0: Struct_2) -> vec3<bool> {
    global0 = array<Struct_2, 25>();
    let var_0 = !vec2<bool>(u_input.a == (0u ^ u_input.a), (true && any(vec2<bool>(false, false))) && false);
    global0 = array<Struct_2, 25>();
    let var_1 = abs(4294967295u);
    global0 = array<Struct_2, 25>();
    return select(select(!vec3<bool>(all(vec3<bool>(var_0.x, false, var_0.x)), var_0.x, !var_0.x), select(select(!vec3<bool>(var_0.x, var_0.x, true), vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(true, true, true)), !select(vec3<bool>(var_0.x, false, true), vec3<bool>(var_0.x, var_0.x, var_0.x), true), vec3<bool>(var_0.x | true, var_0.x & var_0.x, any(vec4<bool>(true, true, true, var_0.x)))), vec3<bool>(any(select(var_0, vec2<bool>(true, false), var_0)), var_0.x, any(vec4<bool>(var_0.x, var_0.x, true, true)))), vec3<bool>(true, !var_0.x, true), select(select(select(!vec3<bool>(false, var_0.x, var_0.x), select(vec3<bool>(var_0.x, var_0.x, true), vec3<bool>(var_0.x, true, var_0.x), var_0.x), !vec3<bool>(false, var_0.x, var_0.x)), vec3<bool>(any(var_0), u_input.e != 1i, var_0.x), select(false, false, true) | any(var_0)), vec3<bool>(any(select(var_0, vec2<bool>(var_0.x, false), true)), !(false && var_0.x), var_0.x), true));
}

fn func_2(arg_0: vec2<u32>, arg_1: Struct_4) -> u32 {
    let var_0 = global0[_wgslsmith_index_u32(arg_0.x, 25u)];
    var var_1 = func_4(Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) - -955f), -1598f));
    var var_2 = arg_1.d;
    let var_3 = Struct_3(arg_1.d, vec3<f32>(_wgslsmith_f_op_f32(arg_1.d.c.x + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(var_0.b))))), -1109f, 210f), global0[_wgslsmith_index_u32(0u, 25u)], _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b, _wgslsmith_f_op_f32(var_2.c.x * -1595f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_1.d.c.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.c.x)))));
    var_1 = !func_4(Struct_2(-718f, _wgslsmith_div_f32(-753f, -1861f)));
    return _wgslsmith_add_u32(var_3.a.a.x, max(~1u, u_input.a));
}

fn func_1() -> vec2<bool> {
    var var_0 = max(vec2<u32>(max(4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.a), vec2<u32>(29768u, u_input.a) | vec2<u32>(u_input.a, 36325u))), func_2(~(vec2<u32>(4294967295u, u_input.a) ^ vec2<u32>(u_input.a, 64273u)), Struct_4(firstLeadingBit(u_input.a), _wgslsmith_div_vec2_u32(vec2<u32>(71817u, 4294967295u), vec2<u32>(69016u, u_input.a)), select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true), false), Struct_1(vec2<u32>(u_input.a, u_input.a), 1u, vec3<f32>(852f, 1708f, 949f))))), ~(~(vec2<u32>(u_input.a, 94791u) ^ vec2<u32>(10232u, 34532u)) >> (~vec2<u32>(1u, 1u) % vec2<u32>(32u))));
    var_0 = vec2<u32>(var_0.x, var_0.x);
    var_0 = _wgslsmith_clamp_vec2_u32(~(~vec2<u32>(69047u, ~2786u)), min(vec2<u32>(~1u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(10341u, u_input.a), vec2<u32>(58074u, u_input.a))), ~countOneBits(vec2<u32>(u_input.a, var_0.x) << (vec2<u32>(var_0.x, u_input.a) % vec2<u32>(32u)))), _wgslsmith_clamp_vec2_u32(~_wgslsmith_sub_vec2_u32(vec2<u32>(61623u, 71081u) ^ vec2<u32>(u_input.a, 19779u), _wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, 74483u), vec2<u32>(4294967295u, u_input.a))), select(select(max(vec2<u32>(1u, 0u), vec2<u32>(u_input.a, var_0.x)), vec2<u32>(u_input.a, u_input.a), false), firstTrailingBit(reverseBits(vec2<u32>(0u, var_0.x))), vec2<bool>(any(vec4<bool>(false, false, false, false)), true)), abs(abs(vec2<u32>(var_0.x, 4294967295u))) >> (~_wgslsmith_clamp_vec2_u32(vec2<u32>(var_0.x, 4294967295u), vec2<u32>(15445u, 4294967295u), vec2<u32>(1u, 15543u)) % vec2<u32>(32u))));
    global0 = array<Struct_2, 25>();
    var var_1 = Struct_1(_wgslsmith_div_vec2_u32(vec2<u32>(abs(var_0.x), ~25276u) | countOneBits(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, 3083u), vec2<u32>(0u, 15646u))), reverseBits(vec2<u32>(firstLeadingBit(var_0.x), 39269u ^ var_0.x))), ~var_0.x, _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(2120f - 235f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1506f, 342f))), -541f))));
    return !(!vec2<bool>((u_input.d & u_input.d) == -1i, false | any(vec2<bool>(true, true))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = u_input.a;
    let var_2 = vec4<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(-vec4<i32>(u_input.b, 14183i, u_input.c, u_input.d), vec4<i32>(u_input.d, 0i >> (u_input.a % 32u), 2147483647i, i32(-1i) * -27739i)), max(firstTrailingBit(select(vec4<i32>(57251i, -2147483647i, u_input.e, 0i), vec4<i32>(u_input.b, u_input.b, 14547i, u_input.c), vec4<bool>(var_0.x, false, true, true))), min(vec4<i32>(-2147483647i, u_input.e, -1i, u_input.e), firstLeadingBit(vec4<i32>(u_input.e, u_input.d, 2147483647i, u_input.d))))), -u_input.e, 1i, reverseBits(0i));
    let var_3 = Struct_3(Struct_1(~vec2<u32>(4294967295u, u_input.a), u_input.a, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(692f, 166f, 561f))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1386f), _wgslsmith_f_op_f32(min(379f, -218f)), _wgslsmith_f_op_f32(sign(-1274f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1703f, 577f, 862f), vec3<f32>(-415f, -516f, 114f))), vec3<f32>(-377f, -1656f, -2059f), any(vec4<bool>(false, true, var_0.x, true)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(538f, 356f, 422f) * vec3<f32>(463f, 1284f, 451f)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1137f, -1546f, 242f)))))), Struct_2(-266f, _wgslsmith_f_op_f32(sign(808f))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1392f, 469f))), -1657f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(619f)))), -1000f));
    var var_4 = vec2<i32>(-9063i, 1i);
    let var_5 = 72325u;
    global0 = array<Struct_2, 25>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.b.x)), vec3<u32>(19686u, var_3.a.a.x, _wgslsmith_mod_u32(~(u_input.a & var_5), 39001u)), vec3<i32>(_wgslsmith_sub_i32(59492i, -4331i), _wgslsmith_mult_i32(2147483647i, var_2.x), 0i), -_wgslsmith_dot_vec3_i32(-var_2.wzx << ((vec3<u32>(4294967295u, 46760u, var_3.a.a.x) & vec3<u32>(var_3.a.a.x, 1u, 1u)) % vec3<u32>(32u)), var_2.xww >> (vec3<u32>(98983u, 20644u, u_input.a) % vec3<u32>(32u))));
}

