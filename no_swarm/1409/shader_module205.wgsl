struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: i32,
    b: i32,
    c: Struct_2,
}

struct Struct_5 {
    a: vec3<u32>,
    b: Struct_3,
    c: Struct_3,
    d: vec3<u32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec4<i32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 21>;

var<private> global1: Struct_2;

var<private> global2: array<bool, 27>;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> u32 {
    let var_0 = Struct_3(true);
    global2 = array<bool, 27>();
    return u_input.e;
}

fn func_2() -> u32 {
    global2 = array<bool, 27>();
    global0 = array<Struct_2, 21>();
    global1 = global0[_wgslsmith_index_u32(u_input.e, 21u)];
    var var_0 = Struct_5(select(vec3<u32>(_wgslsmith_add_u32(4294967295u << (u_input.d % 32u), u_input.d), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d, u_input.d), ~vec2<u32>(u_input.e, 4294967295u)), func_3()), _wgslsmith_sub_vec3_u32(~vec3<u32>(4294967295u, 15377u, 4294967295u), ~vec3<u32>(44726u, 4294967295u, u_input.e)) | _wgslsmith_mult_vec3_u32(abs(vec3<u32>(u_input.e, u_input.d, u_input.e)), vec3<u32>(0u, 66797u, u_input.d)), !any(select(vec3<bool>(false, global1.a, true), vec3<bool>(false, false, true), false))), Struct_3(global1.a && true), Struct_3(true), _wgslsmith_mod_vec3_u32(select(vec3<u32>(u_input.d, 4294967295u, 1690u), vec3<u32>(4294967295u, 1u, 17355u) & vec3<u32>(u_input.e, 1u, u_input.d), !global1.a), ~vec3<u32>(0u, u_input.d, u_input.d) & vec3<u32>(56997u, 24792u, u_input.e)) >> (vec3<u32>(25495u, firstLeadingBit(u_input.d), u_input.d) % vec3<u32>(32u)), Struct_1(u_input.c.x));
    return 1u;
}

fn func_1(arg_0: i32) -> Struct_2 {
    global2 = array<bool, 27>();
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1452f, 1587f, 792f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1096f, -1413f, 174f) + vec3<f32>(1000f, -1269f, 1007f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, 204f, -1000f) - vec3<f32>(-274f, 1000f, 1489f))))));
    let var_1 = true;
    let var_2 = Struct_5(vec3<u32>(~4294967295u, ~u_input.d, func_2()), Struct_3(false), Struct_3(global2[_wgslsmith_index_u32(15810u, 27u)]), firstTrailingBit(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.d, u_input.d, u_input.d) ^ firstTrailingBit(vec3<u32>(u_input.d, 1u, u_input.e)), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.e, 1u, 4294967295u), ~vec3<u32>(u_input.d, 79616u, 0u)))), Struct_1(select(firstLeadingBit(43673i), arg_0, true)));
    let var_3 = _wgslsmith_f_op_f32(abs(-491f));
    return global0[_wgslsmith_index_u32(4294967295u, 21u)];
}

fn func_4(arg_0: Struct_4, arg_1: Struct_3, arg_2: Struct_5, arg_3: Struct_5) -> Struct_3 {
    var var_0 = vec2<i32>(-_wgslsmith_dot_vec2_i32(u_input.a.xz, -(vec2<i32>(arg_0.a, 13714i) & vec2<i32>(arg_2.e.a, -1i))), reverseBits(firstLeadingBit(i32(-1i) * -25142i)));
    let var_1 = Struct_3((_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(1000f, -626f))) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(359f - 1000f) - _wgslsmith_f_op_f32(floor(1617f)))) || !(_wgslsmith_f_op_f32(round(-346f)) <= _wgslsmith_f_op_f32(round(-678f))));
    var_0 = u_input.c.wy;
    var var_2 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-270f, -1007f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-182f)) * _wgslsmith_f_op_f32(select(193f, -1048f, arg_1.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2160f))))));
    global2 = array<bool, 27>();
    return arg_1;
}

fn func_5(arg_0: vec2<i32>, arg_1: Struct_5) -> u32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-486f, -1000f)) - -292f), _wgslsmith_f_op_f32(ceil(-1000f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-274f * -124f), -605f)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1318f, 236f, -604f)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-910f, -149f, -1868f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(421f, -850f, 1216f))))));
    return _wgslsmith_mult_u32(u_input.e, ~max(u_input.e, arg_1.d.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(!any(!(!vec3<bool>(global1.a, true, false))), global1.a);
    var_0 = !vec2<bool>(false, true && all(vec4<bool>(global2[_wgslsmith_index_u32(4294967295u, 27u)], false, var_0.x, false)));
    let var_1 = u_input.a.x;
    var var_2 = func_5((vec2<i32>(29139i, -11213i) << (vec2<u32>(select(u_input.d, 79651u, var_0.x), 0u) % vec2<u32>(32u))) >> (vec2<u32>(~1u, abs(25945u)) % vec2<u32>(32u)), Struct_5(vec3<u32>(countOneBits(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d, u_input.d, 110841u), vec3<u32>(u_input.d, u_input.e, u_input.e))), select(47391u, u_input.d, true), 1u), func_4(Struct_4(_wgslsmith_mod_i32(-13989i, u_input.b), 1i, func_1(var_1)), Struct_3(!var_0.x), Struct_5(vec3<u32>(64695u, 1u, u_input.d), Struct_3(false), Struct_3(true), ~vec3<u32>(1436u, u_input.d, 11017u), Struct_1(u_input.c.x)), Struct_5(~vec3<u32>(1u, u_input.d, 58718u), Struct_3(global2[_wgslsmith_index_u32(76184u, 27u)]), Struct_3(true), ~vec3<u32>(1u, u_input.e, 1u), Struct_1(var_1))), Struct_3(func_1(_wgslsmith_dot_vec3_i32(u_input.c.wzw, u_input.a.yxw)).a), min(vec3<u32>(~3853u, 1u, u_input.e), _wgslsmith_clamp_vec3_u32(vec3<u32>(11898u, u_input.e, u_input.d), select(vec3<u32>(36590u, 48578u, u_input.d), vec3<u32>(u_input.d, 16500u, 4294967295u), var_0.x), vec3<u32>(u_input.d, 4294967295u, 1u))), Struct_1(_wgslsmith_dot_vec2_i32(u_input.a.xz, -u_input.c.xz))));
    var_0 = vec2<bool>(var_0.x == any(vec3<bool>(true, true, true)), any(vec4<bool>(global2[_wgslsmith_index_u32(u_input.e, 27u)], !global1.a, !any(vec2<bool>(true, global1.a)), !global1.a & (false == var_0.x))));
    let var_3 = Struct_5(vec3<u32>(_wgslsmith_mult_u32(u_input.d, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.e, 4294967295u, 4294967295u, u_input.d), ~vec4<u32>(u_input.e, 39824u, 19981u, u_input.d))), ~(~(~31909u)), abs(57611u ^ _wgslsmith_mult_u32(22529u, u_input.e))), func_4(Struct_4(-1614i, var_1, Struct_2(false)), Struct_3(global2[_wgslsmith_index_u32(4294967295u, 27u)]), Struct_5(~(~vec3<u32>(4294967295u, 1u, 1u)), Struct_3(any(vec2<bool>(true, true))), func_4(Struct_4(0i, var_1, global0[_wgslsmith_index_u32(u_input.e, 21u)]), Struct_3(var_0.x), Struct_5(vec3<u32>(4294967295u, u_input.d, u_input.e), Struct_3(false), Struct_3(true), vec3<u32>(u_input.d, u_input.d, u_input.d), Struct_1(u_input.c.x)), Struct_5(vec3<u32>(0u, 0u, 19788u), Struct_3(var_0.x), Struct_3(false), vec3<u32>(u_input.e, u_input.e, 52031u), Struct_1(var_1))), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.e, u_input.e, 40359u), vec3<u32>(u_input.e, u_input.d, u_input.e)) ^ _wgslsmith_sub_vec3_u32(vec3<u32>(38779u, u_input.e, 33723u), vec3<u32>(4294967295u, u_input.d, 0u)), Struct_1(-u_input.b)), Struct_5(vec3<u32>(u_input.e, ~647u, 1u), func_4(Struct_4(2348i, -18488i, Struct_2(true)), Struct_3(global1.a), Struct_5(vec3<u32>(u_input.e, u_input.e, 11570u), Struct_3(false), Struct_3(var_0.x), vec3<u32>(42609u, 82323u, 47136u), Struct_1(u_input.b)), Struct_5(vec3<u32>(u_input.d, u_input.d, 31856u), Struct_3(true), Struct_3(var_0.x), vec3<u32>(0u, 71669u, u_input.e), Struct_1(1i))), func_4(Struct_4(u_input.a.x, u_input.c.x, global0[_wgslsmith_index_u32(u_input.e, 21u)]), func_4(Struct_4(-1i, 5612i, global0[_wgslsmith_index_u32(75372u, 21u)]), Struct_3(false), Struct_5(vec3<u32>(u_input.d, u_input.d, 12756u), Struct_3(global2[_wgslsmith_index_u32(u_input.d, 27u)]), Struct_3(false), vec3<u32>(u_input.d, u_input.d, 1u), Struct_1(-2147483647i)), Struct_5(vec3<u32>(1u, 0u, 43813u), Struct_3(var_0.x), Struct_3(global2[_wgslsmith_index_u32(u_input.e, 27u)]), vec3<u32>(u_input.d, 4294967295u, u_input.d), Struct_1(0i))), Struct_5(vec3<u32>(37090u, u_input.e, u_input.d), Struct_3(false), Struct_3(global2[_wgslsmith_index_u32(47511u, 27u)]), vec3<u32>(19082u, u_input.e, 0u), Struct_1(var_1)), Struct_5(vec3<u32>(u_input.e, 4294967295u, 1u), Struct_3(var_0.x), Struct_3(global1.a), vec3<u32>(u_input.d, u_input.d, 4294967295u), Struct_1(var_1))), ~(~vec3<u32>(u_input.e, 54789u, u_input.e)), Struct_1(1i))), Struct_3(!var_0.x), ~abs(~_wgslsmith_div_vec3_u32(vec3<u32>(90804u, 35303u, 4294967295u), vec3<u32>(15327u, 28725u, 4294967295u))), Struct_1(var_1));
    let var_4 = Struct_4(var_3.e.a, u_input.c.x, func_1(select(_wgslsmith_add_i32(-1i, 0i) >> (_wgslsmith_mod_u32(var_3.a.x, 55277u) % 32u), select(abs(-6453i), ~var_1, any(vec3<bool>(var_3.c.a, global2[_wgslsmith_index_u32(var_3.a.x, 27u)], false))), global2[_wgslsmith_index_u32(var_3.a.x, 27u)])));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(abs(u_input.d), 76509u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(906f))), select(~(-var_1 ^ (var_4.a >> (u_input.d % 32u))), var_3.e.a & _wgslsmith_sub_i32(var_3.e.a & -2147483647i, reverseBits(var_1)), true));
}

