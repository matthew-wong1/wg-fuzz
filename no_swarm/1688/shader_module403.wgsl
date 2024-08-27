struct Struct_1 {
    a: vec2<f32>,
    b: bool,
    c: vec3<f32>,
    d: vec2<f32>,
    e: vec3<f32>,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec4<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(1974f, -1000f, -240f, 580f);

var<private> global1: array<vec3<u32>, 4> = array<vec3<u32>, 4>(vec3<u32>(21850u, 78614u, 86586u), vec3<u32>(0u, 9456u, 58864u), vec3<u32>(1u, 0u, 0u), vec3<u32>(1u, 1u, 13192u));

var<private> global2: array<bool, 32> = array<bool, 32>(false, true, true, true, true, false, true, false, true, false, true, false, false, false, false, true, true, false, false, false, false, true, true, true, true, false, false, false, true, true, true, true);

var<private> global3: f32 = 1012f;

var<private> global4: Struct_3;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: u32, arg_1: u32) -> vec2<i32> {
    global2 = array<bool, 32>();
    global2 = array<bool, 32>();
    var var_0 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-global0.zzw), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(1000f, -2098f, global0.x))))), global4.b.a.xxw))));
    var var_1 = global4.b;
    let var_2 = 1u;
    return firstTrailingBit(~vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, -2046i), vec2<i32>(-52739i, 0i)) << (abs(15268u) % 32u), -2147483647i << (_wgslsmith_sub_u32(u_input.b, 24093u) % 32u)));
}

fn func_2(arg_0: bool, arg_1: vec4<f32>, arg_2: vec4<bool>) -> Struct_2 {
    let var_0 = Struct_3(_wgslsmith_mod_u32(abs(global4.a), ~(~0u)), Struct_2(_wgslsmith_f_op_vec4_f32(global4.b.a + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, 269f, 278f)))));
    let var_1 = _wgslsmith_add_vec2_i32(abs(_wgslsmith_mod_vec2_i32(max(~vec2<i32>(30310i, 44053i), _wgslsmith_mod_vec2_i32(vec2<i32>(44107i, 20974i), vec2<i32>(14427i, -1i))), func_3(var_0.a, global4.a << (37094u % 32u)))), _wgslsmith_mult_vec2_i32(reverseBits(func_3(4294967295u, 4294967295u)) >> (vec2<u32>(u_input.a.x, u_input.b) % vec2<u32>(32u)), vec2<i32>(1i, 1i)));
    global0 = arg_1;
    var var_2 = vec3<i32>(_wgslsmith_mult_i32(_wgslsmith_add_i32(-var_1.x, var_1.x), var_1.x) << (var_0.a % 32u), abs(var_1.x) >> (_wgslsmith_div_u32(1u, abs(global4.a)) % 32u), var_1.x);
    var var_3 = firstLeadingBit(-_wgslsmith_sub_vec3_i32(vec3<i32>(var_2.x << (0u % 32u), ~(-52495i), var_2.x & var_2.x), _wgslsmith_add_vec3_i32(vec3<i32>(-10933i, -2147483647i, 0i), ~vec3<i32>(-1i, var_1.x, -1i))));
    return Struct_2(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1584f)) - _wgslsmith_f_op_f32(min(global4.b.a.x, 1459f))) - 214f), global0.x, global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.b.a.x, arg_1.x))))));
}

fn func_4(arg_0: f32, arg_1: Struct_3, arg_2: u32) -> Struct_3 {
    var var_0 = !select(vec3<bool>(any(vec2<bool>(global2[_wgslsmith_index_u32(665u, 32u)], global2[_wgslsmith_index_u32(global4.a, 32u)])), any(vec2<bool>(true, true)), _wgslsmith_clamp_i32(0i, 1i, 20546i) == ~(-29857i)), select(!vec3<bool>(global2[_wgslsmith_index_u32(65824u, 32u)], global2[_wgslsmith_index_u32(33468u, 32u)], true), vec3<bool>(false, all(vec4<bool>(global2[_wgslsmith_index_u32(24913u, 32u)], global2[_wgslsmith_index_u32(100176u, 32u)], global2[_wgslsmith_index_u32(arg_2, 32u)], false)), all(vec4<bool>(global2[_wgslsmith_index_u32(0u, 32u)], true, true, true))), select(select(vec3<bool>(global2[_wgslsmith_index_u32(4294967295u, 32u)], global2[_wgslsmith_index_u32(4294967295u, 32u)], true), vec3<bool>(false, true, global2[_wgslsmith_index_u32(1u, 32u)]), vec3<bool>(global2[_wgslsmith_index_u32(12740u, 32u)], global2[_wgslsmith_index_u32(arg_1.a, 32u)], true)), vec3<bool>(true, global2[_wgslsmith_index_u32(arg_2, 32u)], global2[_wgslsmith_index_u32(30072u, 32u)]), global2[_wgslsmith_index_u32(~u_input.b, 32u)])), select(vec3<bool>(!global2[_wgslsmith_index_u32(18881u, 32u)], !global2[_wgslsmith_index_u32(arg_2, 32u)], any(vec4<bool>(global2[_wgslsmith_index_u32(36754u, 32u)], false, global2[_wgslsmith_index_u32(0u, 32u)], global2[_wgslsmith_index_u32(arg_1.a, 32u)]))), vec3<bool>(true, true, global2[_wgslsmith_index_u32(global4.a, 32u)] && false), vec3<bool>(true, true, true)));
    let var_1 = arg_1;
    let var_2 = vec3<i32>(-1i, 30731i, _wgslsmith_dot_vec2_i32(vec2<i32>(1i, 1i) & vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-28032i, 23082i, -2147483647i, -29462i), vec4<i32>(2147483647i, 35836i, -1i, 50445i)), -2147483647i), func_3(~_wgslsmith_mult_u32(arg_1.a, 9177u), arg_1.a)));
    var var_3 = _wgslsmith_f_op_vec3_f32(abs(var_1.b.a.wyw));
    var_0 = select(vec3<bool>(true, true, true), !(!vec3<bool>(global2[_wgslsmith_index_u32(arg_1.a, 32u)], true | global2[_wgslsmith_index_u32(arg_2, 32u)], var_0.x)), !vec3<bool>(any(vec2<bool>(var_0.x, true)), !var_0.x, true));
    return Struct_3(global4.a, func_2(true, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(global4.b.a.x)), _wgslsmith_f_op_f32(select(-177f, var_3.x, var_0.x)), _wgslsmith_f_op_f32(-var_3.x), 362f)), select(vec4<bool>(global2[_wgslsmith_index_u32(~6026u, 32u)], var_0.x || true, any(vec3<bool>(var_0.x, true, var_0.x)), true), select(vec4<bool>(var_0.x, true, true, var_0.x), select(vec4<bool>(var_0.x, global2[_wgslsmith_index_u32(36u, 32u)], false, var_0.x), vec4<bool>(true, global2[_wgslsmith_index_u32(u_input.a.x, 32u)], global2[_wgslsmith_index_u32(var_1.a, 32u)], true), true), all(vec3<bool>(false, var_0.x, true))), all(vec4<bool>(true, var_0.x, false, global2[_wgslsmith_index_u32(1u, 32u)])))));
}

fn func_1() -> i32 {
    global4 = func_4(_wgslsmith_f_op_f32(trunc(-1528f)), Struct_3(~u_input.a.x, func_2(true, global4.b.a, !vec4<bool>(global2[_wgslsmith_index_u32(u_input.b, 32u)], global2[_wgslsmith_index_u32(1u, 32u)], false, true))), global4.a);
    global2 = array<bool, 32>();
    let var_0 = global4.a;
    let var_1 = abs(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 0u, u_input.a.x), ~vec3<u32>(1u, 23154u, 1u))) << (0u % 32u);
    let var_2 = global0.yww;
    return abs(~abs(_wgslsmith_sub_i32(-21836i, 13517i)));
}

fn func_5(arg_0: vec4<i32>, arg_1: u32, arg_2: vec2<bool>) -> StorageBuffer {
    var var_0 = Struct_3(u_input.a.x, global4.b);
    global4 = Struct_3(0u, Struct_2(vec4<f32>(-1145f, 1000f, var_0.b.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global0.x)) - _wgslsmith_div_f32(-354f, var_0.b.a.x)))));
    let var_1 = abs(min(firstTrailingBit(var_0.a), _wgslsmith_add_u32(abs(~0u), var_0.a)));
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1992f, _wgslsmith_f_op_f32(var_0.b.a.x + _wgslsmith_div_f32(-884f, -526f)), _wgslsmith_f_op_f32(func_2(false, vec4<f32>(846f, -595f, global4.b.a.x, var_0.b.a.x), vec4<bool>(true, global2[_wgslsmith_index_u32(var_1, 32u)], arg_2.x, arg_2.x)).a.x - global4.b.a.x), global0.x)));
    var var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.b.a.xx))), _wgslsmith_f_op_vec2_f32(-global0.yw))), (arg_1 <= func_4(_wgslsmith_f_op_f32(global0.x - global4.b.a.x), Struct_3(var_0.a, Struct_2(vec4<f32>(var_0.b.a.x, global0.x, 423f, global0.x))), 1u).a) && any(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), true)), _wgslsmith_f_op_vec3_f32(abs(var_0.b.a.yzz)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, -967f) * _wgslsmith_f_op_vec2_f32(round(vec2<f32>(global0.x, 775f))))))), _wgslsmith_f_op_vec3_f32(var_0.b.a.zxy - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(var_0.b.a.xxw))))));
    return StorageBuffer(_wgslsmith_clamp_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(func_4(var_0.b.a.x, Struct_3(1u, var_0.b), u_input.a.x).a, ~14415u), 1u, global4.a, _wgslsmith_dot_vec4_u32(vec4<u32>(96848u, 0u, arg_1, 84929u) ^ vec4<u32>(u_input.d.x, 0u, 80753u, var_0.a), vec4<u32>(25457u, 1u, 0u, var_0.a))), vec4<u32>(~0u, u_input.d.x, func_4(global4.b.a.x, Struct_3(arg_1, Struct_2(global4.b.a)), 9820u).a | ~u_input.c.x, ~(~arg_1)), ~_wgslsmith_sub_vec4_u32(~u_input.c, vec4<u32>(arg_1, 0u, 63594u, 6833u))), _wgslsmith_f_op_vec4_f32(vec4<f32>(global4.b.a.x, -1287f, 851f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.b.a.x))) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-511f, _wgslsmith_f_op_f32(step(385f, global0.x)), var_2.e.x, _wgslsmith_f_op_f32(floor(global4.b.a.x))), var_0.b.a, vec4<bool>(true, arg_1 > var_1, var_2.b & true, any(vec4<bool>(false, var_2.b, false, arg_2.x)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = max(~max(min(1i, 2147483647i), -39839i), ~1i) | ~(~(~select(-40783i, 68297i, false)));
    let x = u_input.a;
    s_output = func_5(select(vec4<i32>(max(1i, var_0), func_1(), ~var_0, firstLeadingBit(-64016i)), -vec4<i32>(var_0, var_0, 50847i, 14876i), !(!vec4<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 32u)], global2[_wgslsmith_index_u32(4294967295u, 32u)], global2[_wgslsmith_index_u32(4294967295u, 32u)], global2[_wgslsmith_index_u32(4294967295u, 32u)]))) >> (abs(vec4<u32>(select(0u, 0u, global2[_wgslsmith_index_u32(0u, 32u)]), select(u_input.b, global4.a, true), func_4(915f, Struct_3(u_input.a.x, Struct_2(vec4<f32>(-1789f, -1198f, 1378f, global4.b.a.x))), 1u).a, global4.a)) % vec4<u32>(32u)), _wgslsmith_add_u32(0u, 52734u & u_input.c.x), vec2<bool>(global2[_wgslsmith_index_u32(u_input.d.x >> ((reverseBits(10394u) ^ u_input.c.x) % 32u), 32u)], global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(60130u, global4.a, 9626u), _wgslsmith_mod_vec3_u32(vec3<u32>(0u, global4.a, u_input.a.x), u_input.c.wyw)), max(0u, 1u)), 32u)]));
}

