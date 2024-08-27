struct Struct_1 {
    a: vec2<u32>,
    b: f32,
    c: vec2<u32>,
    d: f32,
    e: f32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec3<u32>,
    c: u32,
    d: vec2<f32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: i32,
}

struct Struct_4 {
    a: f32,
    b: i32,
}

struct Struct_5 {
    a: vec2<bool>,
    b: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec2<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 8>;

var<private> global1: vec4<f32>;

var<private> global2: array<Struct_4, 13>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec3<u32>, arg_1: vec4<f32>) -> u32 {
    global2 = array<Struct_4, 13>();
    var var_0 = Struct_2(~(~vec3<u32>(1u, 22144u, ~u_input.c)), select(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b, 20634u, _wgslsmith_div_u32(u_input.b, arg_0.x)), vec3<u32>(~4294967295u, ~40878u, 27198u), arg_0), vec3<u32>(arg_0.x, _wgslsmith_mult_u32(_wgslsmith_mod_u32(4294967295u, 4294967295u), 78928u), _wgslsmith_mod_u32(~arg_0.x, _wgslsmith_mult_u32(u_input.b, 4294967295u))), !select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, false, false)), any(vec4<bool>(true, true, true, false)))), 14867u, arg_1.yw);
    var var_1 = select(!select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true)), vec2<bool>(!(!(u_input.a.x < u_input.a.x)), !any(vec4<bool>(true, false, false, false))), select(vec2<bool>(true, !select(false, true, true)), select(select(vec2<bool>(true, false), vec2<bool>(true, true), true), select(vec2<bool>(false, false), vec2<bool>(true, true), true), _wgslsmith_clamp_u32(arg_0.x, 29192u, arg_0.x) != var_0.b.x), select(select(vec2<bool>(false, true), vec2<bool>(true, false), true), !select(vec2<bool>(false, false), vec2<bool>(false, false), false), false)));
    global2 = array<Struct_4, 13>();
    let var_2 = arg_1;
    return max(_wgslsmith_dot_vec2_u32(abs(arg_0.xx ^ vec2<u32>(u_input.c, 40152u)), vec2<u32>(arg_0.x & 48062u, ~1u)), ~abs(~arg_0.x)) | arg_0.x;
}

fn func_2(arg_0: vec4<f32>, arg_1: bool) -> u32 {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-279f, 204f)) - _wgslsmith_f_op_f32(-325f - global1.x))) + 1009f), _wgslsmith_f_op_f32(arg_0.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_0.x + global1.x))) - global1.x)), 2391f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)));
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(var_0, var_0))) * _wgslsmith_f_op_vec4_f32(-arg_0)) - _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1995f, _wgslsmith_f_op_f32(var_0.x - global1.x), -1000f, -1000f)))));
    let var_1 = Struct_2(~vec3<u32>(u_input.c, 8068u, 8741u), vec3<u32>(~u_input.b | 936u, u_input.b, (func_3(vec3<u32>(u_input.b, 32412u, 0u), var_0) ^ ~1u) | 1u), max(~abs(~1u), _wgslsmith_sub_u32(_wgslsmith_sub_u32(select(u_input.c, u_input.c, true), 91655u), ~16064u)), vec2<f32>(_wgslsmith_f_op_f32(709f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-760f + var_0.x))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -820f) - _wgslsmith_f_op_f32(step(global1.x, 306f)))))));
    let var_2 = any(select(vec2<bool>(true, arg_1), !vec2<bool>(true, !arg_1), !select(select(vec2<bool>(arg_1, arg_1), vec2<bool>(true, false), vec2<bool>(arg_1, arg_1)), select(vec2<bool>(false, arg_1), vec2<bool>(arg_1, arg_1), vec2<bool>(true, arg_1)), !vec2<bool>(arg_1, false))));
    let var_3 = !select(select(!(!vec2<bool>(arg_1, true)), !(!vec2<bool>(var_2, true)), !(!vec2<bool>(var_2, var_2))), vec2<bool>(false, !var_2), var_2 && all(!vec3<bool>(var_2, arg_1, true)));
    return ~(~17543u);
}

fn func_4(arg_0: Struct_4, arg_1: Struct_2) -> Struct_5 {
    let var_0 = vec4<i32>(-23331i, arg_0.b, -1i, _wgslsmith_div_i32(arg_0.b, 1i));
    global2 = array<Struct_4, 13>();
    var var_1 = 4294967295u ^ (u_input.b | reverseBits(~42963u));
    var var_2 = (0i >= (firstTrailingBit(var_0.x) ^ (_wgslsmith_mod_i32(var_0.x, arg_0.b) ^ _wgslsmith_mult_i32(arg_0.b, arg_0.b)))) && !((2147483647i <= u_input.a.x) & select(true, true, true));
    let var_3 = _wgslsmith_add_vec2_u32(~vec2<u32>(arg_1.a.x, max(7286u, 0u) << (~u_input.b % 32u)), vec2<u32>(~arg_1.c, _wgslsmith_div_u32(arg_1.c, u_input.c | _wgslsmith_dot_vec3_u32(arg_1.b, vec3<u32>(66554u, u_input.b, 0u)))));
    return Struct_5(vec2<bool>(true, (arg_1.d.x != _wgslsmith_f_op_f32(ceil(arg_1.d.x))) & all(vec4<bool>(true, true, true, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_0.a, -409f))) - -1950f)));
}

fn func_5(arg_0: Struct_5, arg_1: Struct_2) -> Struct_2 {
    let var_0 = -(~(-(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a.x, -1i, 24393i, u_input.a.x), vec4<i32>(u_input.a.x, 0i, u_input.a.x, 1i)) >> (~vec4<u32>(u_input.b, u_input.b, 55513u, arg_1.a.x) % vec4<u32>(32u)))));
    var var_1 = _wgslsmith_f_op_f32(func_4(Struct_4(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(arg_0.b, arg_0.b), _wgslsmith_f_op_f32(min(1556f, -877f)))), ~(~1i)), arg_1).b * _wgslsmith_f_op_f32(select(arg_0.b, global1.x, !(!select(arg_0.a.x, true, arg_0.a.x)))));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global1.wwx));
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_2.x))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -292f), _wgslsmith_f_op_f32(f32(-1f) * -1171f))) + _wgslsmith_f_op_f32(step(func_4(global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(84573u, u_input.b), 13u)], Struct_2(arg_1.a, arg_1.a, 1004u, var_2.xx)).b, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1589f, -636f))))) + -862f);
    global1 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(681f, global1.x, var_2.x, 1053f))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, arg_0.b, 642f, 319f) + vec4<f32>(1000f, -104f, arg_0.b, global1.x)))))));
    return Struct_2(~vec3<u32>(~_wgslsmith_sub_u32(arg_1.c, 1u), ~5342u | ~u_input.b, ~func_2(vec4<f32>(var_2.x, 126f, arg_0.b, global1.x), false)), arg_1.a, ~19180u, _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.d.x)), _wgslsmith_f_op_f32(sign(247f))))));
}

fn func_1(arg_0: vec2<f32>, arg_1: u32) -> Struct_2 {
    var var_0 = 1u;
    let var_1 = ~min(_wgslsmith_div_vec3_u32(~firstLeadingBit(vec3<u32>(57659u, arg_1, u_input.b)), vec3<u32>(1u, u_input.c, _wgslsmith_add_u32(55141u, u_input.b))), ~_wgslsmith_mod_vec3_u32(vec3<u32>(0u, 0u, arg_1), _wgslsmith_mod_vec3_u32(vec3<u32>(5766u, 90503u, arg_1), vec3<u32>(4294967295u, arg_1, arg_1))));
    var var_2 = Struct_2(~abs(vec3<u32>(0u, _wgslsmith_sub_u32(u_input.c, arg_1), firstLeadingBit(36795u))), var_1 << (~(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.b, u_input.c, var_1.x), var_1) ^ countOneBits(vec3<u32>(1u, 14287u, u_input.b))) % vec3<u32>(32u)), u_input.b, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1195f, global1.x))), 331f));
    var var_3 = _wgslsmith_add_vec4_i32(u_input.a, u_input.a);
    global0 = array<Struct_1, 8>();
    return func_5(func_4(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(~func_2(vec4<f32>(var_2.d.x, 706f, var_2.d.x, arg_0.x), false), ~(~var_2.a.x)), 13u)], Struct_2(min(vec3<u32>(var_2.b.x, 1u, 1844u), var_1), vec3<u32>(var_2.b.x, abs(1u), var_2.a.x), arg_1, vec2<f32>(1f, _wgslsmith_f_op_f32(ceil(var_2.d.x))))), Struct_2(firstLeadingBit(reverseBits(var_2.a) >> (vec3<u32>(0u, 14265u, 4294967295u) % vec3<u32>(32u))), var_1, ~arg_1, vec2<f32>(_wgslsmith_div_f32(global1.x, _wgslsmith_f_op_f32(var_2.d.x * -1518f)), var_2.d.x)));
}

fn func_6(arg_0: Struct_2, arg_1: vec3<bool>) -> vec3<bool> {
    var var_0 = Struct_2(_wgslsmith_mult_vec3_u32(~arg_0.b & arg_0.a, ~vec3<u32>(4294967295u | u_input.c, _wgslsmith_div_u32(0u, u_input.c), arg_0.b.x)), vec3<u32>(func_1(vec2<f32>(arg_0.d.x, _wgslsmith_f_op_f32(-global1.x)), max(u_input.c, u_input.c)).c, 4294967295u, 30425u), ~6113u, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1228f, _wgslsmith_f_op_f32(floor(-288f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global1.x, 937f)) + arg_0.d.x)), 386f));
    var var_1 = 1000f;
    global2 = array<Struct_4, 13>();
    let var_2 = 1u | (~1u ^ max(max(arg_0.b.x ^ u_input.c, func_5(Struct_5(vec2<bool>(false, arg_1.x), var_0.d.x), Struct_2(var_0.b, var_0.a, arg_0.b.x, vec2<f32>(arg_0.d.x, 1069f))).a.x), u_input.b));
    let var_3 = global2[_wgslsmith_index_u32(~reverseBits(~var_2), 13u)];
    return !vec3<bool>(arg_1.x, arg_1.x, arg_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_4, 13>();
    var var_0 = select(~vec4<u32>(abs(1u), 5069u, 0u, u_input.c), _wgslsmith_div_vec4_u32(~(~vec4<u32>(1u, 1u, 4294967295u, 18766u)), ~(~vec4<u32>(22063u, u_input.b, u_input.b, u_input.b))), true);
    global2 = array<Struct_4, 13>();
    var var_1 = u_input.a;
    let var_2 = var_0.x >> (_wgslsmith_dot_vec3_u32(~(~vec3<u32>(0u, var_0.x, 0u)), select(~_wgslsmith_div_vec3_u32(vec3<u32>(var_0.x, 0u, 0u), var_0.yzw), ~(~vec3<u32>(var_0.x, u_input.b, var_0.x)), func_6(func_1(vec2<f32>(-1397f, 2325f), 34314u), vec3<bool>(true, true, true)))) % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_i32(vec3<i32>(~u_input.a.x, var_1.x, u_input.a.x), select(~vec3<i32>(var_1.x, -19581i, var_1.x), var_1.xwz, false)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-func_5(func_4(Struct_4(919f, 1i), Struct_2(var_0.zzx, vec3<u32>(var_0.x, var_0.x, 0u), var_0.x, global1.yx)), Struct_2(vec3<u32>(0u, u_input.b, 38482u), vec3<u32>(4294967295u, 1u, 44968u), var_0.x, global1.yz)).d.x))), _wgslsmith_mult_vec2_u32(func_5(func_4(global2[_wgslsmith_index_u32(~var_0.x, 13u)], Struct_2(var_0.yzw, var_0.xyw, 64338u, global1.zy)), Struct_2(vec3<u32>(u_input.b, 0u, 0u), ~var_0.ywz, var_0.x, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global1.x, -1062f), vec2<f32>(182f, -648f), false)))).b.yy, min(min(_wgslsmith_div_vec2_u32(var_0.yy, vec2<u32>(1u, u_input.b)), var_0.xz), var_0.wy)), var_1.x);
}

