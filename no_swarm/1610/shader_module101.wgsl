struct Struct_1 {
    a: vec4<i32>,
    b: bool,
    c: vec3<u32>,
    d: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<f32>,
}

struct Struct_3 {
    a: u32,
    b: vec4<i32>,
    c: bool,
    d: bool,
    e: vec2<f32>,
}

struct Struct_4 {
    a: vec3<bool>,
    b: i32,
    c: vec4<u32>,
    d: vec4<bool>,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec3<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 18> = array<Struct_4, 18>(Struct_4(vec3<bool>(true, true, false), 25712i, vec4<u32>(2955u, 59499u, 162u, 3101u), vec4<bool>(false, true, true, false), vec3<f32>(-306f, -473f, -1610f)), Struct_4(vec3<bool>(true, true, true), -1i, vec4<u32>(0u, 0u, 41294u, 126467u), vec4<bool>(false, false, false, true), vec3<f32>(1000f, 426f, 1211f)), Struct_4(vec3<bool>(true, true, true), 13512i, vec4<u32>(14990u, 7387u, 1236u, 0u), vec4<bool>(true, true, false, false), vec3<f32>(-1587f, -352f, 525f)), Struct_4(vec3<bool>(false, true, false), 29037i, vec4<u32>(52922u, 0u, 39267u, 79714u), vec4<bool>(true, false, false, false), vec3<f32>(-1100f, -927f, 1175f)), Struct_4(vec3<bool>(true, true, false), -5724i, vec4<u32>(0u, 52842u, 9869u, 27627u), vec4<bool>(true, false, false, true), vec3<f32>(1000f, -981f, -441f)), Struct_4(vec3<bool>(false, true, true), 0i, vec4<u32>(17762u, 0u, 15090u, 63956u), vec4<bool>(false, true, true, true), vec3<f32>(594f, -1260f, 370f)), Struct_4(vec3<bool>(false, false, false), 1043i, vec4<u32>(35906u, 76844u, 4294967295u, 0u), vec4<bool>(false, false, false, false), vec3<f32>(860f, -1000f, 1000f)), Struct_4(vec3<bool>(false, false, true), 2147483647i, vec4<u32>(1u, 4294967295u, 0u, 17643u), vec4<bool>(false, true, true, false), vec3<f32>(678f, -1421f, -1847f)), Struct_4(vec3<bool>(true, true, true), 24502i, vec4<u32>(84168u, 13161u, 4294967295u, 0u), vec4<bool>(true, false, false, true), vec3<f32>(-1289f, 797f, 1176f)), Struct_4(vec3<bool>(true, true, true), 1i, vec4<u32>(1u, 4294967295u, 1u, 0u), vec4<bool>(false, false, true, false), vec3<f32>(-526f, 291f, 1055f)), Struct_4(vec3<bool>(true, false, false), -87070i, vec4<u32>(37461u, 0u, 4294967295u, 61757u), vec4<bool>(true, false, false, false), vec3<f32>(-983f, 2223f, 1549f)), Struct_4(vec3<bool>(true, true, true), -24599i, vec4<u32>(1307u, 1u, 4294967295u, 52432u), vec4<bool>(false, false, true, true), vec3<f32>(-101f, -1000f, -443f)), Struct_4(vec3<bool>(true, true, true), -61918i, vec4<u32>(26787u, 4294967295u, 9845u, 26074u), vec4<bool>(false, false, false, false), vec3<f32>(-1908f, -780f, -521f)), Struct_4(vec3<bool>(false, false, false), 39511i, vec4<u32>(19055u, 1u, 1u, 1u), vec4<bool>(true, true, true, false), vec3<f32>(923f, 1852f, -1000f)), Struct_4(vec3<bool>(true, false, true), i32(-2147483648), vec4<u32>(1u, 4294967295u, 4784u, 1u), vec4<bool>(true, false, false, true), vec3<f32>(-367f, -899f, -143f)), Struct_4(vec3<bool>(true, true, false), 13623i, vec4<u32>(92785u, 34395u, 2751u, 21627u), vec4<bool>(true, false, true, true), vec3<f32>(-393f, 353f, -242f)), Struct_4(vec3<bool>(true, true, true), 18270i, vec4<u32>(10370u, 1u, 1u, 72130u), vec4<bool>(false, true, true, true), vec3<f32>(214f, 1562f, -949f)), Struct_4(vec3<bool>(true, true, false), 47211i, vec4<u32>(4294967295u, 28020u, 1u, 4294967295u), vec4<bool>(true, true, false, true), vec3<f32>(195f, 1040f, 1149f)));

var<private> global1: f32;

var<private> global2: Struct_2 = Struct_2(Struct_1(vec4<i32>(-13105i, i32(-2147483648), 0i, -1i), false, vec3<u32>(4988u, 4294967295u, 27130u), vec4<f32>(810f, 1296f, -254f, 969f)), Struct_1(vec4<i32>(-20865i, 2147483647i, i32(-2147483648), -15855i), false, vec3<u32>(4294967295u, 79756u, 25387u), vec4<f32>(-248f, -431f, -1000f, 603f)), vec4<f32>(-614f, 333f, -796f, 608f));

var<private> global3: bool;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
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

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: i32) -> vec2<u32> {
    var var_0 = global0[_wgslsmith_index_u32(select(_wgslsmith_add_u32(_wgslsmith_mod_u32(~(~0u), reverseBits(~global2.a.c.x)), 1u), _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(abs(~vec4<u32>(0u, global2.b.c.x, 33756u, u_input.a)), ~_wgslsmith_mult_vec4_u32(vec4<u32>(global2.b.c.x, 82086u, 4294967295u, 4294967295u), vec4<u32>(1u, 71739u, 416u, 47107u))), _wgslsmith_div_vec4_u32(abs(vec4<u32>(u_input.a, 4294967295u, 17231u, global2.a.c.x)), vec4<u32>(42576u, _wgslsmith_div_u32(global2.a.c.x, 20667u), ~u_input.c.x, 1u))), select(all(select(select(vec3<bool>(true, global2.a.b, global2.b.b), vec3<bool>(true, true, global2.a.b), vec3<bool>(global2.b.b, global2.a.b, global2.a.b)), vec3<bool>(global2.b.b, true, global2.b.b), all(vec2<bool>(false, false)))), any(vec4<bool>(global2.a.b, all(vec2<bool>(global2.b.b, global2.a.b)), any(vec4<bool>(true, true, true, global2.b.b)), true)), global2.b.b)), 18u)];
    var_0 = global0[_wgslsmith_index_u32(4294967295u, 18u)];
    var_0 = Struct_4(var_0.d.yyw, arg_0, vec4<u32>(1u, 1u, 50601u, 1u), !select(!(!var_0.d), !select(vec4<bool>(global2.a.b, false, true, true), vec4<bool>(var_0.a.x, global2.a.b, true, true), true), true), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(161f + 1149f) * var_0.e.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(439f))), _wgslsmith_f_op_f32(var_0.e.x - 295f))));
    return ~var_0.c.xx;
}

fn func_4(arg_0: vec3<u32>, arg_1: vec2<u32>, arg_2: f32, arg_3: Struct_1) -> vec4<f32> {
    var var_0 = vec2<bool>(true, all(vec3<bool>(global2.b.b, any(vec2<bool>(true, arg_3.b)), any(!vec2<bool>(arg_3.b, false)))));
    global0 = array<Struct_4, 18>();
    var var_1 = Struct_2(global2.b, Struct_1(firstTrailingBit(~arg_3.a), arg_3.b, ~vec3<u32>(arg_3.c.x, ~9221u, 0u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(269f, arg_2, global2.a.d.x, 2002f), _wgslsmith_f_op_vec4_f32(-arg_3.d))))), global2.b.d);
    let var_2 = Struct_2(Struct_1(var_1.a.a, any(vec2<bool>(false, select(true, true, false))), abs(vec3<u32>(~arg_3.c.x, ~1u, u_input.c.x)), global2.b.d), arg_3, vec4<f32>(-671f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3.d.x - 1468f) - 1219f) * arg_2), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.c.x), _wgslsmith_f_op_f32(step(526f, -1000f))))), global2.c.x));
    let var_3 = var_2.b.d;
    return global2.a.d;
}

fn func_2(arg_0: i32, arg_1: vec2<u32>, arg_2: f32, arg_3: vec4<bool>) -> Struct_3 {
    global0 = array<Struct_4, 18>();
    let var_0 = Struct_1(vec4<i32>(-arg_0, _wgslsmith_dot_vec2_i32(global2.a.a.zz, vec2<i32>(0i, -37248i)), -arg_0, -4303i), true, u_input.c, _wgslsmith_f_op_vec4_f32(func_4(global2.a.c, ~func_3(arg_0), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-928f)), global2.b.d.x), Struct_1(vec4<i32>(_wgslsmith_mult_i32(arg_0, -4201i), select(2147483647i, 2147483647i, false), 0i, u_input.b << (arg_1.x % 32u)), select(true, true, true), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.c.x, 1u, 12967u), _wgslsmith_div_vec3_u32(global2.b.c, vec3<u32>(arg_1.x, 47392u, u_input.a))), _wgslsmith_f_op_vec4_f32(global2.a.d - _wgslsmith_f_op_vec4_f32(global2.c - global2.b.d))))));
    let var_1 = global2.b;
    var var_2 = vec2<i32>(8630i, countOneBits(~firstLeadingBit(firstTrailingBit(u_input.b))));
    let var_3 = Struct_3(~abs(4294967295u), var_0.a, !var_1.b, !all(arg_3.zx), var_0.d.xz);
    return Struct_3(max(~0u, ~var_1.c.x | var_3.a), vec4<i32>(_wgslsmith_clamp_i32(-(~1i), 48627i, 38350i ^ max(var_1.a.x, arg_0)), _wgslsmith_clamp_i32(_wgslsmith_mod_i32(1i, ~u_input.b), var_3.b.x, ~firstTrailingBit(2147483647i)), countOneBits(_wgslsmith_mult_i32(6796i | var_0.a.x, 13010i)), min(-_wgslsmith_sub_i32(global2.b.a.x, 0i), min(var_1.a.x, -51502i))), false, all(!arg_3.yy) || var_1.b, var_3.e);
}

fn func_1(arg_0: vec4<bool>, arg_1: vec3<f32>) -> Struct_2 {
    var var_0 = u_input.c;
    var var_1 = func_2(-u_input.b, ~vec2<u32>(_wgslsmith_dot_vec3_u32(u_input.c, min(global2.b.c, vec3<u32>(global2.a.c.x, u_input.c.x, var_0.x))), ~1u), arg_1.x, !vec4<bool>(all(select(arg_0.wyw, vec3<bool>(arg_0.x, global2.a.b, arg_0.x), arg_0.yzz)), true && arg_0.x, !select(global2.b.b, global2.b.b, false), reverseBits(u_input.b) > u_input.b));
    var var_2 = abs(~(~61966u));
    var_1 = Struct_3(global2.b.c.x, vec4<i32>(2147483647i, firstLeadingBit(-_wgslsmith_clamp_i32(0i, 2147483647i, 0i)), var_1.b.x, -2147483647i), !(!any(!arg_0.zxz)), true, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global2.b.d.x + 424f), _wgslsmith_f_op_f32(ceil(-286f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(-1885f, global2.b.d.x, true)))) - arg_1.x)));
    var var_3 = ~(global2.a.c & _wgslsmith_sub_vec3_u32(u_input.c, global2.a.c));
    return Struct_2(Struct_1(vec4<i32>(var_1.b.x, global2.a.a.x, ~(-33481i & global2.b.a.x), -firstLeadingBit(19782i)), all(vec2<bool>(arg_0.x, -740f <= arg_1.x)), _wgslsmith_sub_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(global2.a.c.x, var_3.x, 1u), _wgslsmith_mult_vec3_u32(u_input.c, u_input.c)), firstLeadingBit(_wgslsmith_clamp_vec3_u32(global2.b.c, vec3<u32>(4294967295u, var_3.x, 29633u), vec3<u32>(var_0.x, 20047u, var_3.x)))), vec4<f32>(_wgslsmith_f_op_f32(-153f - arg_1.x), _wgslsmith_f_op_f32(f32(-1f) * -672f), -1525f, 1059f)), global2.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.e.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.e.x, var_1.e.x)), -463f, arg_1.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(vec4<bool>(select(!global2.b.b, (true != global2.b.b) && any(vec2<bool>(false, global2.a.b)), true), !(!global2.b.b), global2.a.a.x < global2.b.a.x, select(true, !(2147483647i > u_input.b), any(select(vec3<bool>(false, global2.a.b, true), vec3<bool>(global2.a.b, false, true), true)))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.c.x, global2.a.d.x, -2298f) + global2.c.zwx))))));
    let var_1 = countOneBits(_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(min(vec3<i32>(32510i, u_input.b, -44751i), global2.a.a.zxy) << (global2.b.c % vec3<u32>(32u)), vec3<i32>(reverseBits(-82608i), _wgslsmith_dot_vec3_i32(vec3<i32>(global2.a.a.x, -2147483647i, 6109i), vec3<i32>(0i, -41696i, global2.a.a.x)), reverseBits(u_input.b))), i32(-1i) * -1i));
    var var_2 = Struct_3(~func_2(firstTrailingBit(~(-1i)), ~vec2<u32>(1u, 1u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global2.b.d.x, global2.c.x))), select(select(vec4<bool>(var_0.a.b, true, false, global2.a.b), vec4<bool>(true, false, true, var_0.b.b), vec4<bool>(true, false, false, var_0.b.b)), vec4<bool>(var_0.b.b, global2.a.b, false, false), true)).a, _wgslsmith_clamp_vec4_i32(global2.b.a, ~(-max(vec4<i32>(var_0.b.a.x, 0i, -2147483647i, var_0.a.a.x), global2.b.a)), global2.a.a), all(vec4<bool>(true, true, true, true != var_0.a.b)) && !global2.b.b, global2.b.b, vec2<f32>(_wgslsmith_f_op_f32(-global2.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.a.d.x)))));
    let var_3 = var_0;
    let var_4 = !select(select(select(vec4<bool>(global2.a.b, false, false, var_0.b.b), vec4<bool>(var_0.a.b, global2.a.b, var_2.c, false), !var_0.a.b), select(vec4<bool>(var_2.d, var_2.d, var_3.b.b, true), select(vec4<bool>(global2.a.b, true, false, var_2.d), vec4<bool>(false, false, var_0.b.b, true), vec4<bool>(false, var_2.d, var_3.b.b, var_0.b.b)), all(vec2<bool>(global2.b.b, true))), var_2.c), select(!(!vec4<bool>(var_3.a.b, global2.a.b, var_0.a.b, var_3.a.b)), select(vec4<bool>(var_2.c, true, true, true), vec4<bool>(var_0.a.b, false, var_0.a.b, true), false), !vec4<bool>(true, global2.b.b, global2.a.b, global2.a.b)), vec4<bool>(firstTrailingBit(0i) > (u_input.b & -54602i), false, true, !(!var_2.c)));
    let var_5 = ~var_3.b.c.x;
    var var_6 = 87810u;
    let var_7 = vec3<u32>(1u, _wgslsmith_div_u32(min(4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, var_3.b.c.x, 1u, var_0.a.c.x), vec4<u32>(4294967295u, 19305u, 1u, 4294967295u)) | global2.a.c.x), firstLeadingBit(1u)), 1u);
    var var_8 = (u_input.c.x << ((~abs(64935u) >> (_wgslsmith_sub_u32(var_7.x | u_input.c.x, 1u) % 32u)) % 32u)) & ~abs(~_wgslsmith_sub_u32(var_0.b.c.x, 0u));
    let x = u_input.a;
    s_output = StorageBuffer(~(~firstTrailingBit(vec4<u32>(4294967295u, var_5, var_3.b.c.x, global2.a.c.x))) >> (abs(select(vec4<u32>(global2.a.c.x, 1u, 0u, 4294967295u) >> (vec4<u32>(u_input.c.x, 4294967295u, 0u, 39271u) % vec4<u32>(32u)), select(vec4<u32>(4294967295u, 0u, global2.a.c.x, u_input.a), vec4<u32>(var_5, 67329u, 0u, 1u), vec4<bool>(false, var_2.c, true, var_3.a.b)), any(vec3<bool>(var_0.a.b, true, var_0.a.b)))) % vec4<u32>(32u)), _wgslsmith_add_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(u_input.c.x, global2.a.c.x), 50876u), vec2<u32>(countOneBits(var_3.a.c.x), var_2.a)), u_input.c.zx & vec2<u32>(28498u, ~4294967295u)), vec3<i32>(var_1, -1i, select(-1i, ~1i, true)), abs(func_1(vec4<bool>(var_2.c, false, true, true), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-232f, var_3.b.d.x, global2.b.d.x))).b.c.x) & ~global2.b.c.x);
}

