struct Struct_1 {
    a: vec4<u32>,
    b: i32,
    c: vec3<f32>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: bool,
    b: vec2<f32>,
    c: vec3<bool>,
}

struct Struct_4 {
    a: vec4<f32>,
    b: Struct_1,
    c: Struct_3,
}

struct Struct_5 {
    a: f32,
    b: Struct_2,
    c: bool,
    d: Struct_2,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: f32,
    d: vec4<f32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: array<vec3<u32>, 13>;

var<private> global2: array<i32, 12>;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_2, arg_2: Struct_3, arg_3: bool) -> f32 {
    var var_0 = Struct_1(abs(_wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(select(vec4<u32>(1u, 29937u, u_input.a, 21502u), vec4<u32>(12865u, u_input.a, 8733u, u_input.a), vec4<bool>(arg_3, false, false, arg_2.a)), vec4<u32>(0u, 3174u, 44744u, u_input.a)), ~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, 1u, 0u, u_input.a), vec4<u32>(18800u, 4294967295u, 1u, 1u)))), ~global2[_wgslsmith_index_u32(~(~reverseBits(u_input.a)), 12u)], _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.b.x, arg_1.a, arg_0.b.x)))), vec3<f32>(-1067f, _wgslsmith_f_op_f32(-global0.x), arg_1.a)));
    var var_1 = arg_1;
    return arg_1.a;
}

fn func_4(arg_0: i32, arg_1: bool, arg_2: f32, arg_3: u32) -> vec4<u32> {
    return ~(~(firstLeadingBit(_wgslsmith_mod_vec4_u32(vec4<u32>(1u, arg_3, 40261u, 0u), vec4<u32>(15872u, arg_3, arg_3, arg_3))) << (~(vec4<u32>(9360u, arg_3, u_input.a, 63061u) ^ vec4<u32>(u_input.a, u_input.a, 0u, arg_3)) % vec4<u32>(32u))));
}

fn func_2(arg_0: bool) -> Struct_4 {
    let var_0 = global2[_wgslsmith_index_u32(u_input.a, 12u)];
    let var_1 = Struct_1(max(select(_wgslsmith_sub_vec4_u32(vec4<u32>(21876u, 0u, 36631u, 10445u), vec4<u32>(u_input.a, 74748u, 0u, 50901u)), ~vec4<u32>(u_input.a, 1u, u_input.a, u_input.a), arg_0), func_4(global2[_wgslsmith_index_u32(reverseBits(~u_input.a), 12u)], !arg_0, _wgslsmith_f_op_f32(func_3(Struct_3(arg_0, vec2<f32>(-845f, global0.x), vec3<bool>(true, arg_0, arg_0)), Struct_2(1459f), Struct_3(false, global0.zx, vec3<bool>(arg_0, false, false)), arg_0)), ~max(25471u, u_input.a))), max(global2[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(~u_input.a, _wgslsmith_add_u32(u_input.a, 31643u), u_input.a << (u_input.a % 32u)), 12u)], global2[_wgslsmith_index_u32(_wgslsmith_div_u32((u_input.a | u_input.a) ^ 39268u, u_input.a), 12u)]), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, -428f, global0.x)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, global0.x, global0.x) - vec3<f32>(-1189f, -236f, global0.x)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1318f, global0.x, global0.x))))));
    let var_2 = global2[_wgslsmith_index_u32(1u, 12u)] != _wgslsmith_mult_i32(var_1.b, 1i);
    let var_3 = ~(abs(~var_1.a.x) >> (_wgslsmith_div_u32(var_1.a.x, _wgslsmith_dot_vec4_u32(var_1.a, var_1.a)) % 32u)) >= _wgslsmith_div_u32(u_input.a, ~(~_wgslsmith_sub_u32(59666u, var_1.a.x)));
    return Struct_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(568f, var_1.c.x, -389f, global0.x), vec4<f32>(var_1.c.x, global0.x, var_1.c.x, -684f), true)), vec4<f32>(331f, var_1.c.x, -491f, var_1.c.x), select(vec4<bool>(false, false, false, false), vec4<bool>(false, arg_0, var_2, false), var_2))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_1.c.x, 1446f, -589f, -1788f))))), vec4<bool>(true, var_3 & var_2, true, select(false, true, arg_0))))), Struct_1(var_1.a & ~func_4(-1i, var_3, global0.x, 1u), -32562i, var_1.c), Struct_3(arg_0, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_1.c.xy - _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.c.x, -1000f) - var_1.c.zy)) * _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1760f, -165f)))), select(vec3<bool>(true, true, true), select(!vec3<bool>(true, arg_0, true), !vec3<bool>(arg_0, false, true), select(arg_0, true, var_2)), !all(vec3<bool>(true, var_2, arg_0)))));
}

fn func_5(arg_0: vec2<i32>, arg_1: Struct_4, arg_2: Struct_5) -> f32 {
    global2 = array<i32, 12>();
    global0 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(arg_2.a - global0.x), arg_2.d.a, _wgslsmith_f_op_f32(arg_1.a.x - arg_1.c.b.x))))));
    var var_0 = Struct_2(arg_1.b.c.x);
    var var_1 = global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(arg_1.b.a.x, 1u), 12u)];
    global2 = array<i32, 12>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_1.a.x, -586f)) + _wgslsmith_div_f32(arg_1.c.b.x, -208f)) * global0.x)));
}

fn func_1(arg_0: Struct_2, arg_1: vec4<u32>) -> Struct_1 {
    let var_0 = arg_1.x;
    var var_1 = 2398u;
    var_1 = 4294967295u;
    global2 = array<i32, 12>();
    let var_2 = Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1412f, arg_0.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -777f) - _wgslsmith_f_op_f32(-arg_0.a))))), arg_0, _wgslsmith_f_op_f32(-global0.x) >= _wgslsmith_f_op_f32(func_5(_wgslsmith_add_vec2_i32(vec2<i32>(-644i, global2[_wgslsmith_index_u32(u_input.a, 12u)]), _wgslsmith_mod_vec2_i32(vec2<i32>(-41179i, -14089i), vec2<i32>(2147483647i, -57514i))), func_2(global0.x <= arg_0.a), Struct_5(global0.x, arg_0, func_2(true).c.c.x, Struct_2(2297f)))), Struct_2(-770f));
    return func_2(true).b;
}

fn func_6(arg_0: u32, arg_1: Struct_1, arg_2: f32, arg_3: Struct_1) -> Struct_5 {
    global1 = array<vec3<u32>, 13>();
    let var_0 = 2147483647i;
    global0 = _wgslsmith_f_op_vec3_f32(arg_1.c + _wgslsmith_f_op_vec3_f32(arg_1.c + arg_1.c));
    let var_1 = global0.xz;
    global1 = array<vec3<u32>, 13>();
    return Struct_5(arg_3.c.x, Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -1432f)), all(vec2<bool>(true, true)), Struct_2(-631f));
}

fn func_7(arg_0: Struct_5) -> Struct_5 {
    var var_0 = arg_0.d.a;
    let var_1 = !(abs(u_input.a) >= 6221u);
    global0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(func_3(func_2(true).c, Struct_2(558f), func_2(any(vec3<bool>(var_1, arg_0.c, arg_0.c))).c, !(!var_1))), _wgslsmith_f_op_f32(round(arg_0.b.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1235f))) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(trunc(1643f)), _wgslsmith_f_op_f32(round(1000f)), global0.x) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, -1202f, 1355f)))), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-447f - arg_0.a), _wgslsmith_f_op_f32(arg_0.d.a + -1488f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) * _wgslsmith_div_f32(arg_0.a, -957f)), func_2(!arg_0.c).a.x), (_wgslsmith_mod_u32(u_input.a, u_input.a) & abs(u_input.a)) < ((1u | u_input.a) >> (29550u % 32u)))));
    global1 = array<vec3<u32>, 13>();
    var var_2 = u_input.a;
    return func_6(~_wgslsmith_sub_u32(u_input.a, ~u_input.a), Struct_1(vec4<u32>(u_input.a, u_input.a & u_input.a, u_input.a, ~u_input.a), ~(~1i), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.b.a, 726f, arg_0.b.a) + vec3<f32>(arg_0.b.a, global0.x, global0.x)) * _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1699f, arg_0.a, global0.x)))) - func_2(false).a.yyz)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * global0.x)) + _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.x * 763f), arg_0.b.a)))), Struct_1(vec4<u32>(abs(func_1(Struct_2(arg_0.b.a), vec4<u32>(u_input.a, u_input.a, 59283u, 0u)).a.x), u_input.a, u_input.a, max(u_input.a, firstLeadingBit(6426u))), 2147483647i, _wgslsmith_f_op_vec3_f32(vec3<f32>(func_1(Struct_2(arg_0.b.a), vec4<u32>(u_input.a, 0u, u_input.a, 4294967295u)).c.x, _wgslsmith_f_op_f32(1131f * -1495f), -445f) - vec3<f32>(751f, -579f, _wgslsmith_f_op_f32(-global0.x)))));
}

fn func_8(arg_0: Struct_5, arg_1: f32, arg_2: vec2<bool>) -> bool {
    var var_0 = ~global1[_wgslsmith_index_u32(func_4(~23705i, func_7(func_7(Struct_5(global0.x, Struct_2(559f), true, Struct_2(global0.x)))).a >= arg_1, -1533f, _wgslsmith_clamp_u32(~(u_input.a ^ 2321u), ~countOneBits(47284u), 0u)).x, 13u)];
    global1 = array<vec3<u32>, 13>();
    let var_1 = func_2(firstTrailingBit(-firstLeadingBit(global2[_wgslsmith_index_u32(67555u, 12u)])) >= global2[_wgslsmith_index_u32(var_0.x, 12u)]).b;
    let var_2 = var_1;
    global0 = _wgslsmith_f_op_vec3_f32(-var_2.c);
    return arg_2.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !func_8(func_7(func_6(_wgslsmith_mult_u32(u_input.a, 45543u), func_1(Struct_2(global0.x), vec4<u32>(1u, 4294967295u, u_input.a, 4294967295u)), -993f, func_2(true).b)), global0.x, vec2<bool>(false, ~31806u == ~u_input.a));
    var var_1 = func_2(func_6(0u, func_2(!all(vec2<bool>(false, true))).b, _wgslsmith_f_op_f32(f32(-1f) * -669f), Struct_1(_wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.a, 1u, 45252u, 23977u), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, 0u, u_input.a, 46544u), vec4<u32>(0u, 4294967295u, u_input.a, u_input.a), vec4<u32>(1u, 4294967295u, 44843u, u_input.a))), _wgslsmith_dot_vec3_i32(-vec3<i32>(global2[_wgslsmith_index_u32(u_input.a, 12u)], global2[_wgslsmith_index_u32(22376u, 12u)], global2[_wgslsmith_index_u32(50606u, 12u)]), -vec3<i32>(-40232i, global2[_wgslsmith_index_u32(10406u, 12u)], global2[_wgslsmith_index_u32(u_input.a, 12u)])), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(948f, global0.x, global0.x) + vec3<f32>(-713f, -559f, -229f)) * _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1484f, 1000f, -757f), vec3<f32>(795f, 1432f, 401f)))))).c).c;
    global0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b.x) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1197f, 242f) + _wgslsmith_f_op_f32(f32(-1f) * -1114f))), global0.x, _wgslsmith_f_op_f32(1105f - var_1.b.x)));
    var var_2 = firstLeadingBit(26839i);
    var var_3 = func_2(!var_1.c.x).c;
    let x = u_input.a;
    s_output = StorageBuffer(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(firstLeadingBit(max(u_input.a, ~u_input.a)), 4294967295u), 12u)], -1246f, _wgslsmith_f_op_f32(floor(var_1.b.x)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1706f, var_3.b.x, var_3.b.x, global0.x) + vec4<f32>(global0.x, global0.x, -116f, var_3.b.x)) - vec4<f32>(-722f, 1105f, global0.x, -567f)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-533f, global0.x, 1105f, -235f)), vec4<f32>(-953f, _wgslsmith_f_op_f32(sign(333f)), -536f, _wgslsmith_f_op_f32(global0.x + global0.x)))), (_wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, 1u), vec2<u32>(4294967295u, u_input.a) >> (vec2<u32>(u_input.a, 34169u) % vec2<u32>(32u))) >> (~countOneBits(vec2<u32>(u_input.a, u_input.a)) % vec2<u32>(32u))) & _wgslsmith_mult_vec2_u32(~(~vec2<u32>(u_input.a, u_input.a)), _wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, u_input.a), func_1(Struct_2(-740f), vec4<u32>(4294967295u, u_input.a, 56547u, u_input.a)).a.xx)));
}

