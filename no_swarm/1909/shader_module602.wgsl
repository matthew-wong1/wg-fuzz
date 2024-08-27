struct Struct_1 {
    a: vec2<bool>,
    b: f32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: u32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 9>;

var<private> global1: array<Struct_3, 11>;

var<private> global2: vec4<f32> = vec4<f32>(-693f, 2341f, 2273f, 1003f);

var<private> global3: i32;

var<private> global4: array<Struct_3, 18> = array<Struct_3, 18>(Struct_3(Struct_1(vec2<bool>(true, false), -136f), 1u), Struct_3(Struct_1(vec2<bool>(true, true), 1498f), 71308u), Struct_3(Struct_1(vec2<bool>(true, false), -1214f), 4294967295u), Struct_3(Struct_1(vec2<bool>(true, false), 804f), 39781u), Struct_3(Struct_1(vec2<bool>(true, false), -261f), 0u), Struct_3(Struct_1(vec2<bool>(true, false), -750f), 1u), Struct_3(Struct_1(vec2<bool>(true, true), 939f), 78597u), Struct_3(Struct_1(vec2<bool>(false, false), 464f), 44543u), Struct_3(Struct_1(vec2<bool>(false, false), -1190f), 56694u), Struct_3(Struct_1(vec2<bool>(false, true), -356f), 44458u), Struct_3(Struct_1(vec2<bool>(false, false), 435f), 4294967295u), Struct_3(Struct_1(vec2<bool>(true, true), -1682f), 4294967295u), Struct_3(Struct_1(vec2<bool>(false, false), -1274f), 0u), Struct_3(Struct_1(vec2<bool>(true, true), 576f), 0u), Struct_3(Struct_1(vec2<bool>(true, false), -784f), 30919u), Struct_3(Struct_1(vec2<bool>(true, false), 1000f), 54084u), Struct_3(Struct_1(vec2<bool>(false, true), 283f), 57493u), Struct_3(Struct_1(vec2<bool>(false, false), 1877f), 19109u));

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: vec2<bool>, arg_1: vec4<i32>) -> vec4<u32> {
    var var_0 = vec2<u32>(_wgslsmith_sub_u32(u_input.a, max(66592u, ~(19677u << (u_input.b.x % 32u)))), abs(u_input.a));
    var var_1 = vec4<f32>(-614f, _wgslsmith_f_op_f32(global2.x * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(481f, global2.x))), _wgslsmith_f_op_f32(global2.x + _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(global2.x, _wgslsmith_f_op_f32(round(-2601f)))))), _wgslsmith_f_op_f32(trunc(714f)));
    let var_2 = all(!(!(!(!vec4<bool>(arg_0.x, true, true, arg_0.x)))));
    var_0 = reverseBits(~abs(max(_wgslsmith_mod_vec2_u32(u_input.b.xz, u_input.b.xy), select(vec2<u32>(var_0.x, 5297u), u_input.b.zz, vec2<bool>(true, arg_0.x)))));
    var var_3 = abs(_wgslsmith_mult_vec3_i32(arg_1.wwy, min(-arg_1.xxz, vec3<i32>(_wgslsmith_clamp_i32(arg_1.x, 59824i, -2147483647i), ~global0[_wgslsmith_index_u32(var_0.x, 9u)], arg_1.x))));
    return vec4<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(~var_0.x, _wgslsmith_dot_vec4_u32(vec4<u32>(36310u, u_input.b.x, var_0.x, 0u), vec4<u32>(37360u, u_input.a, 72031u, var_0.x))), abs(vec2<u32>(u_input.b.x, 47779u)) | ~vec2<u32>(0u, 1u)), _wgslsmith_sub_u32(~(~u_input.a), 4294967295u), 33488u, select(u_input.b.x, select(~(~8764u), u_input.b.x, select(true, all(vec3<bool>(false, arg_0.x, arg_0.x)), !var_2)), all(vec4<bool>(arg_0.x, true, true, true))));
}

fn func_2(arg_0: u32) -> Struct_3 {
    let var_0 = vec3<i32>(58966i, global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_div_u32(~u_input.a, ~1u), arg_0), 9u)], -min(-38756i, -44459i));
    global4 = array<Struct_3, 18>();
    var var_1 = _wgslsmith_div_vec4_u32(~(~select(vec4<u32>(4294967295u, arg_0, u_input.b.x, 1u) >> (vec4<u32>(22038u, u_input.a, 82561u, u_input.a) % vec4<u32>(32u)), ~vec4<u32>(4294967295u, u_input.b.x, arg_0, u_input.a), vec4<bool>(true, true, false, false))), ((firstTrailingBit(vec4<u32>(1u, 4294967295u, 0u, u_input.b.x)) >> (~vec4<u32>(0u, 32172u, u_input.b.x, u_input.b.x) % vec4<u32>(32u))) | func_3(vec2<bool>(true, false), -vec4<i32>(16797i, 0i, var_0.x, global0[_wgslsmith_index_u32(u_input.a, 9u)]))) << (select(~(~vec4<u32>(4294967295u, u_input.a, 1u, arg_0)), _wgslsmith_mult_vec4_u32(abs(vec4<u32>(arg_0, 0u, 0u, arg_0)), vec4<u32>(4294967295u, u_input.b.x, u_input.b.x, 24526u)), ~arg_0 > ~u_input.a) % vec4<u32>(32u)));
    return Struct_3(Struct_1(!vec2<bool>(any(vec3<bool>(true, false, true)), true), global2.x), _wgslsmith_dot_vec3_u32(firstTrailingBit(_wgslsmith_mult_vec3_u32(var_1.xzw, vec3<u32>(4294967295u, var_1.x, u_input.b.x))) | reverseBits(_wgslsmith_mod_vec3_u32(u_input.b, var_1.xzy)), vec3<u32>(u_input.a, ~(59875u >> (0u % 32u)), var_1.x)));
}

fn func_1(arg_0: vec3<u32>) -> u32 {
    global0 = array<i32, 9>();
    global3 = 22580i;
    var var_0 = vec4<i32>(firstTrailingBit(firstLeadingBit(1i)), ~(firstTrailingBit(~global0[_wgslsmith_index_u32(0u, 9u)]) << ((u_input.a | _wgslsmith_mod_u32(arg_0.x, 75617u)) % 32u)), 0i, 1i);
    global4 = array<Struct_3, 18>();
    let var_1 = func_2(1u);
    return _wgslsmith_mod_u32(0u, 72227u);
}

fn func_4(arg_0: u32, arg_1: Struct_3) -> vec4<bool> {
    global4 = array<Struct_3, 18>();
    var var_0 = arg_1.a;
    global4 = array<Struct_3, 18>();
    var var_1 = func_1(vec3<u32>(~(arg_1.b >> (1u % 32u)) >> (1u % 32u), 77335u, ~arg_1.b));
    let var_2 = Struct_2(_wgslsmith_div_vec3_u32(u_input.b, u_input.b), arg_1.a);
    return !(!select(select(vec4<bool>(false, true, true, true), !vec4<bool>(false, var_0.a.x, true, arg_1.a.a.x), true), select(vec4<bool>(false, var_0.a.x, var_2.b.a.x, false), vec4<bool>(var_2.b.a.x, true, var_0.a.x, true), true), vec4<bool>(!arg_1.a.a.x, false, var_0.a.x, func_2(17846u).a.a.x)));
}

fn func_5(arg_0: vec2<bool>, arg_1: vec4<bool>, arg_2: Struct_3, arg_3: Struct_2) -> Struct_2 {
    let var_0 = ~(_wgslsmith_dot_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(arg_2.b, 9u)] << (3709u % 32u), 2147483647i), select(-vec2<i32>(-1i, global0[_wgslsmith_index_u32(4294967295u, 9u)]), vec2<i32>(global0[_wgslsmith_index_u32(u_input.a, 9u)], global0[_wgslsmith_index_u32(arg_3.a.x, 9u)]) | vec2<i32>(global0[_wgslsmith_index_u32(arg_3.a.x, 9u)], global0[_wgslsmith_index_u32(0u, 9u)]), vec2<bool>(arg_0.x, false))) | -_wgslsmith_dot_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(arg_2.b, 9u)], global0[_wgslsmith_index_u32(6272u, 9u)], global0[_wgslsmith_index_u32(u_input.a, 9u)]) >> (vec3<u32>(40114u, u_input.a, 4294967295u) % vec3<u32>(32u)), select(vec3<i32>(47954i, global0[_wgslsmith_index_u32(arg_2.b, 9u)], global0[_wgslsmith_index_u32(1u, 9u)]), vec3<i32>(47748i, global0[_wgslsmith_index_u32(arg_3.a.x, 9u)], -1i), true)));
    var var_1 = arg_2.a.a;
    global4 = array<Struct_3, 18>();
    let var_2 = ~func_3(vec2<bool>(any(func_4(37125u, global1[_wgslsmith_index_u32(u_input.a, 11u)])), arg_0.x), vec4<i32>(2147483647i, -(~7731i), global0[_wgslsmith_index_u32(~(~0u), 9u)], firstLeadingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(16383i, var_0, -7193i, -39578i), vec4<i32>(2147483647i, global0[_wgslsmith_index_u32(0u, 9u)], global0[_wgslsmith_index_u32(u_input.a, 9u)], -2147483647i))))).zwx;
    let var_3 = _wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(firstTrailingBit(~global0[_wgslsmith_index_u32(4294967295u, 9u)]), _wgslsmith_clamp_i32(global0[_wgslsmith_index_u32(1u, 9u)], 0i, -1i), _wgslsmith_dot_vec4_i32(select(vec4<i32>(var_0, global0[_wgslsmith_index_u32(arg_2.b, 9u)], 15554i, var_0), vec4<i32>(var_0, var_0, global0[_wgslsmith_index_u32(4294967295u, 9u)], -36841i), arg_2.a.a.x), firstTrailingBit(vec4<i32>(global0[_wgslsmith_index_u32(var_2.x, 9u)], var_0, 1i, var_0))), global0[_wgslsmith_index_u32(arg_2.b, 9u)]), ~_wgslsmith_mod_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(1u, 9u)], -30895i, 0i, global0[_wgslsmith_index_u32(arg_2.b, 9u)]) & vec4<i32>(2147483647i, var_0, -1i, global0[_wgslsmith_index_u32(2147u, 9u)]), abs(vec4<i32>(global0[_wgslsmith_index_u32(var_2.x, 9u)], -2147483647i, -2147483647i, -11808i)))), (vec4<i32>(4735i, 2147483647i, 22166i, var_0) | select(abs(vec4<i32>(28171i, 0i, global0[_wgslsmith_index_u32(57609u, 9u)], var_0)), firstTrailingBit(vec4<i32>(5895i, var_0, 139771i, global0[_wgslsmith_index_u32(u_input.b.x, 9u)])), vec4<bool>(var_1.x, false, true, false))) << (~(~countOneBits(vec4<u32>(arg_3.a.x, 0u, 0u, var_2.x))) % vec4<u32>(32u)));
    return Struct_2(var_2, Struct_1(!arg_3.b.a, 1374f));
}

fn func_6(arg_0: Struct_2, arg_1: Struct_2, arg_2: f32) -> Struct_1 {
    global4 = array<Struct_3, 18>();
    let var_0 = ~_wgslsmith_mod_vec4_u32(vec4<u32>(min(~963u, 0u), countOneBits(~0u), arg_1.a.x, arg_1.a.x), vec4<u32>(~(0u << (u_input.a % 32u)), u_input.b.x, _wgslsmith_mod_u32(firstLeadingBit(94030u), 1u), ~44181u));
    var var_1 = u_input.a;
    var var_2 = !(!(!vec4<bool>(false, !arg_0.b.a.x, func_4(u_input.b.x, Struct_3(Struct_1(vec2<bool>(true, false), -635f), 1u)).x, arg_1.b.a.x)));
    global3 = 0i;
    return arg_0.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true != !all(select(select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, false)), select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false)), vec4<bool>(true, true, true, true)));
    var var_1 = global2.x;
    var var_2 = _wgslsmith_mod_i32(-global0[_wgslsmith_index_u32(min(4294967295u, countOneBits(17730u)), 9u)] << (~(~(~1399u)) % 32u), ~(i32(-1i) * -_wgslsmith_mult_i32(global0[_wgslsmith_index_u32(4294967295u, 9u)], 28295i)));
    let var_3 = select(vec3<u32>(u_input.b.x, 94649u, (u_input.a ^ u_input.b.x) >> (_wgslsmith_dot_vec2_u32(u_input.b.xx, u_input.b.yz) % 32u)), u_input.b, !(!vec3<bool>(false, var_0, true))) << (vec3<u32>(2217u, ~u_input.b.x, 1u) % vec3<u32>(32u));
    let var_4 = func_6(func_5(vec2<bool>(_wgslsmith_div_f32(global2.x, global2.x) <= _wgslsmith_f_op_f32(-global2.x), all(select(vec4<bool>(var_0, var_0, false, var_0), vec4<bool>(false, false, var_0, var_0), vec4<bool>(false, false, false, false)))), func_4(1u & _wgslsmith_mod_u32(u_input.b.x, u_input.b.x), global4[_wgslsmith_index_u32(~func_1(var_3), 18u)]), global1[_wgslsmith_index_u32(4294967295u, 11u)], Struct_2(var_3, func_2(_wgslsmith_mult_u32(u_input.b.x, 11635u)).a)), func_5(func_4(var_3.x, Struct_3(Struct_1(vec2<bool>(false, var_0), 568f), 16590u)).xx, !vec4<bool>(var_0, false, var_0, all(vec4<bool>(false, false, false, false))), global1[_wgslsmith_index_u32(1u, 11u)], Struct_2(vec3<u32>(~1u, _wgslsmith_div_u32(1u, var_3.x), 21448u), Struct_1(func_2(u_input.b.x).a.a, _wgslsmith_f_op_f32(global2.x * 648f)))), global2.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec4_u32(~func_3(vec2<bool>(false, var_4.a.x), vec4<i32>(56372i, -16087i, -2147483647i, global0[_wgslsmith_index_u32(u_input.a, 9u)])), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(31630u, var_3.x, 54828u, u_input.a), ~vec4<u32>(34316u, u_input.b.x, var_3.x, u_input.a)), 20394u, u_input.b.x, min(u_input.a, 0u << (u_input.b.x % 32u)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global2.x, -1000f)) - -575f))), ~max(~(var_3.x << (0u % 32u)), func_1(_wgslsmith_mult_vec3_u32(u_input.b, u_input.b))), firstTrailingBit(select(reverseBits(~vec3<i32>(1i, 40481i, global0[_wgslsmith_index_u32(33140u, 9u)])), vec3<i32>(-22395i, _wgslsmith_div_i32(-22018i, 1i), global0[_wgslsmith_index_u32(u_input.b.x & 85649u, 9u)]), vec3<bool>(true, any(vec2<bool>(var_0, var_0)), true))));
}

