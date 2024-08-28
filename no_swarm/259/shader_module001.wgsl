struct Struct_1 {
    a: bool,
    b: vec2<u32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: bool,
    d: vec4<u32>,
}

struct Struct_3 {
    a: vec3<u32>,
}

struct Struct_4 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: vec3<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: Struct_2 = Struct_2(vec3<i32>(-1i, 11210i, -23239i), Struct_1(true, vec2<u32>(74470u, 1u)), false, vec4<u32>(1u, 0u, 1u, 1u));

var<private> global2: array<Struct_3, 6> = array<Struct_3, 6>(Struct_3(vec3<u32>(9129u, 109681u, 4294967295u)), Struct_3(vec3<u32>(21039u, 76612u, 4294967295u)), Struct_3(vec3<u32>(40846u, 4294967295u, 1u)), Struct_3(vec3<u32>(4294967295u, 1u, 16464u)), Struct_3(vec3<u32>(12193u, 0u, 26945u)), Struct_3(vec3<u32>(0u, 0u, 1u)));

var<private> global3: array<vec4<i32>, 7>;

var<private> global4: array<Struct_4, 32>;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: i32, arg_1: vec3<f32>) -> i32 {
    var var_0 = global1.c;
    global0 = Struct_2(-(~abs(global0.a) | (_wgslsmith_div_vec3_i32(global0.a, global1.a) | vec3<i32>(global1.a.x, 2147483647i, -1i))), global0.b, true & any(!(!vec2<bool>(global0.c, global0.c))), countOneBits(_wgslsmith_mod_vec4_u32(~(~u_input.e), global1.d)));
    global3 = array<vec4<i32>, 7>();
    let var_1 = global2[_wgslsmith_index_u32(countOneBits(24441u), 6u)];
    var var_2 = select(vec4<bool>(global1.c, global0.b.a, all(select(select(vec2<bool>(false, global0.c), vec2<bool>(false, global0.c), false), !vec2<bool>(global1.b.a, global0.b.a), select(vec2<bool>(false, true), vec2<bool>(false, global0.c), false))), all(select(vec2<bool>(false, false), !vec2<bool>(global1.b.a, global0.b.a), vec2<bool>(false, true)))), vec4<bool>((-global1.a.x != ~global1.a.x) || true, ~(~1u) > ~global1.d.x, !(max(u_input.a, global0.a.x) < 31823i), any(!select(vec4<bool>(global1.b.a, global0.b.a, false, global0.c), vec4<bool>(false, global1.b.a, global1.c, false), vec4<bool>(false, global0.b.a, false, global1.b.a)))), ~(-_wgslsmith_div_i32(22744i, 2147483647i)) == u_input.b);
    return _wgslsmith_mod_i32(~_wgslsmith_mult_i32(global0.a.x, 0i), u_input.a);
}

fn func_2() -> Struct_2 {
    let var_0 = -790f;
    var var_1 = var_0;
    let var_2 = !(!(!vec3<bool>(global1.c, global1.c, !global0.b.a)));
    var var_3 = vec4<i32>(-1i) * -vec4<i32>(-countOneBits(-20467i), u_input.b, _wgslsmith_div_i32(_wgslsmith_div_i32(2147483647i, u_input.a), func_3(global0.a.x, vec3<f32>(var_0, 211f, -773f))), -global0.a.x);
    let var_4 = _wgslsmith_div_vec3_i32(vec3<i32>(var_3.x & 18582i, ~2147483647i, _wgslsmith_clamp_i32(reverseBits(_wgslsmith_dot_vec4_i32(vec4<i32>(-4040i, global0.a.x, -43963i, global0.a.x), vec4<i32>(-19300i, 6627i, -2147483647i, global0.a.x))), -_wgslsmith_sub_i32(global1.a.x, var_3.x), _wgslsmith_clamp_i32(1i, abs(1i), -1865i))), (-vec3<i32>(global1.a.x, -2147483647i, global1.a.x) << (vec3<u32>(~global0.b.b.x, firstTrailingBit(36057u), ~global0.d.x) % vec3<u32>(32u))) << (~reverseBits(~vec3<u32>(24235u, u_input.d, 1u)) % vec3<u32>(32u)));
    return Struct_2(vec3<i32>(global1.a.x | -44204i, u_input.b | select(-global0.a.x, countOneBits(-12434i), global1.c), -1i), global0.b, false, firstTrailingBit(vec4<u32>(reverseBits(1u >> (global0.d.x % 32u)), 4294967295u, 12866u, _wgslsmith_mod_u32(12573u << (0u % 32u), ~1u))));
}

fn func_4(arg_0: u32, arg_1: Struct_2) -> Struct_2 {
    let var_0 = false;
    global3 = array<vec4<i32>, 7>();
    global0 = Struct_2(~arg_1.a, func_2().b, _wgslsmith_f_op_f32(119f * _wgslsmith_f_op_f32(f32(-1f) * -977f)) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1943f))), vec4<u32>(0u, ~_wgslsmith_dot_vec3_u32(global0.d.yyz, arg_1.d.wyy) | global0.b.b.x, _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(global0.d.zy, ~arg_1.d.wz), u_input.c), ~1u));
    let var_1 = _wgslsmith_f_op_f32(-694f - _wgslsmith_f_op_f32(777f - _wgslsmith_f_op_f32(-2841f - _wgslsmith_f_op_f32(555f - _wgslsmith_f_op_f32(1083f + 1223f)))));
    global0 = Struct_2(countOneBits(_wgslsmith_mult_vec3_i32(_wgslsmith_div_vec3_i32(func_2().a, vec3<i32>(1i, -1i, -1i)), vec3<i32>(-1i | u_input.b, _wgslsmith_mod_i32(2147483647i, global0.a.x), reverseBits(u_input.b)))), Struct_1(var_0, ~(u_input.c | ~global0.b.b)), true, vec4<u32>(_wgslsmith_dot_vec4_u32(global0.d, arg_1.d), ~0u, u_input.e.x, global1.d.x));
    return arg_1;
}

fn func_1() -> i32 {
    global0 = func_4(~(~firstLeadingBit(u_input.c.x) << (6167u % 32u)), func_2());
    let var_0 = min(29295u, ~_wgslsmith_add_u32(u_input.e.x, 22447u));
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1f, 1233f))) - vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1619f), 1f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(130f - 242f) - _wgslsmith_f_op_f32(571f + -133f))))));
    var var_2 = i32(-1i) * -7167i;
    let var_3 = 108f;
    return 55853i;
}

fn func_5(arg_0: i32) -> Struct_1 {
    let var_0 = Struct_1(any(!(!vec3<bool>(true, false, global0.b.a))) & !(!(global1.c & global0.c)), ~vec2<u32>(min(_wgslsmith_add_u32(1u, 45217u), _wgslsmith_sub_u32(74494u, global1.b.b.x)), ~(~4294967295u)));
    var var_1 = select(select(vec3<bool>((1i <= u_input.a) | false, false, any(!vec4<bool>(false, true, global0.c, global1.c))), select(vec3<bool>(global1.d.x > u_input.e.x, false, global1.b.a), vec3<bool>(true, true, true), !vec3<bool>(false, true, var_0.a)), vec3<bool>(true, !select(global0.b.a, false, var_0.a), true && any(vec3<bool>(false, global1.b.a, true)))), select(!vec3<bool>(20697i > arg_0, global0.c & global1.c, select(false, false, false)), vec3<bool>(true, false, all(vec3<bool>(false, var_0.a, false))), vec3<bool>(select(any(vec2<bool>(global1.b.a, global0.b.a)), true, any(vec4<bool>(false, global0.c, false, global1.c))), all(vec2<bool>(var_0.a, global0.b.a)) || true, global1.b.a)), select(vec3<bool>(all(!vec3<bool>(global1.b.a, false, global1.c)), any(vec2<bool>(true, true)), !(!var_0.a)), !select(select(vec3<bool>(false, global1.b.a, var_0.a), vec3<bool>(true, global0.b.a, true), vec3<bool>(false, false, global0.c)), !vec3<bool>(true, var_0.a, false), vec3<bool>(global0.b.a, global0.c, global0.c)), vec3<bool>(false, any(!vec4<bool>(global1.c, var_0.a, global1.c, global0.c)), !global1.c)));
    var var_2 = countOneBits(_wgslsmith_dot_vec3_i32(global0.a, (vec3<i32>(97493i, u_input.b, arg_0) >> (u_input.e.ywx % vec3<u32>(32u))) << (global0.d.zxz % vec3<u32>(32u)))) & (i32(-1i) * -1i);
    var_2 = _wgslsmith_div_i32(u_input.b, u_input.a);
    var var_3 = vec3<f32>(-141f, _wgslsmith_f_op_f32(f32(-1f) * -458f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -681f) * 1194f), -1023f) * -1285f));
    return Struct_1(var_3.x > _wgslsmith_f_op_f32(-var_3.x), vec2<u32>(61172u, ~(~global0.d.x)));
}

fn func_6(arg_0: Struct_2) -> Struct_4 {
    let var_0 = vec2<i32>(-_wgslsmith_mult_i32(reverseBits(-global0.a.x), abs(global0.a.x)), global0.a.x);
    var var_1 = var_0.x;
    var var_2 = arg_0;
    let var_3 = global4[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_add_u32(~40918u, _wgslsmith_div_u32(reverseBits(8296u >> (u_input.c.x % 32u)), 8290u)), _wgslsmith_dot_vec2_u32(vec2<u32>(28953u, 24221u), firstTrailingBit(countOneBits(vec2<u32>(3188u, global1.d.x)))), 572u), 32u)];
    var var_4 = global0.b;
    return global4[_wgslsmith_index_u32(43151u, 32u)];
}

fn func_7(arg_0: Struct_4, arg_1: f32, arg_2: Struct_4, arg_3: bool) -> vec2<f32> {
    global2 = array<Struct_3, 6>();
    var var_0 = 0i;
    global2 = array<Struct_3, 6>();
    let var_1 = arg_1;
    let var_2 = arg_0;
    return _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_1, -736f))), _wgslsmith_div_f32(arg_1, _wgslsmith_f_op_f32(max(2862f, var_2.b)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(func_7(global4[_wgslsmith_index_u32(_wgslsmith_div_u32(abs(_wgslsmith_dot_vec2_u32(~global1.b.b, u_input.e.zy)), global1.d.x), 32u)], 1080f, func_6(Struct_2(_wgslsmith_mod_vec3_i32(vec3<i32>(-2147483647i, global1.a.x, u_input.a), vec3<i32>(global1.a.x, u_input.a, global0.a.x)) << (_wgslsmith_clamp_vec3_u32(u_input.e.zwx, vec3<u32>(0u, 32277u, 11655u), global0.d.yxw) % vec3<u32>(32u)), func_5(func_1()), any(vec3<bool>(global1.b.a, global0.c, global1.b.a)) & all(vec3<bool>(global0.c, global1.b.a, true)), vec4<u32>(global0.b.b.x >> (global1.d.x % 32u), countOneBits(u_input.c.x), global1.d.x, firstLeadingBit(global1.d.x)))), !global1.b.a));
    var var_1 = 0u;
    global1 = Struct_2(global0.a, Struct_1(global1.b.a, func_5(global0.a.x).b), !func_6(Struct_2(select(global1.a, global0.a, vec3<bool>(global0.b.a, false, global0.c)), global1.b, true, _wgslsmith_div_vec4_u32(vec4<u32>(1545u, 4294967295u, u_input.c.x, 57380u), vec4<u32>(global0.b.b.x, 0u, global1.b.b.x, u_input.c.x)))).a.a, select(abs(~vec4<u32>(global1.d.x, u_input.e.x, global0.d.x, 30952u)), _wgslsmith_sub_vec4_u32(vec4<u32>(global0.b.b.x | global0.d.x, global0.b.b.x, 22649u, global0.b.b.x), vec4<u32>(_wgslsmith_mod_u32(global0.b.b.x, 0u), 0u, global0.d.x, _wgslsmith_dot_vec3_u32(global0.d.yxw, vec3<u32>(12044u, global1.b.b.x, 0u)))), vec4<bool>(false, all(select(vec2<bool>(true, false), vec2<bool>(global1.b.a, false), vec2<bool>(true, global0.c))), global0.b.a, all(select(vec3<bool>(false, global0.b.a, true), vec3<bool>(global1.c, global1.c, false), vec3<bool>(false, false, false))))));
    var var_2 = global3[_wgslsmith_index_u32(firstTrailingBit(global0.b.b.x), 7u)];
    var_2 = _wgslsmith_mult_vec4_i32(global3[_wgslsmith_index_u32(~(~(global0.d.x | global0.d.x)), 7u)], ~global3[_wgslsmith_index_u32(~global1.d.x, 7u)]) >> (~(~func_2().d ^ vec4<u32>(~global0.b.b.x, abs(u_input.c.x), 1u, _wgslsmith_mod_u32(10537u, 3536u))) % vec4<u32>(32u));
    var_1 = func_4(~53911u, Struct_2(vec3<i32>(global1.a.x, firstTrailingBit(1i), firstTrailingBit(firstLeadingBit(global1.a.x))), Struct_1(false, vec2<u32>(1u, u_input.d)), !(!any(vec4<bool>(true, global1.b.a, global1.c, false))), abs(func_4(~global1.b.b.x, Struct_2(vec3<i32>(1i, -23651i, -1i), global1.b, false, u_input.e)).d))).b.b.x;
    let var_3 = global0.d;
    var var_4 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)) * 310f) == 2048f, global0.d.yx);
    var var_5 = select(~global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(60821u, 0u & u_input.e.x) | firstTrailingBit(~1u), 7u)], global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(1u, _wgslsmith_clamp_u32(var_3.x, 0u, u_input.d)), vec2<u32>(~var_3.x, var_3.x) << ((_wgslsmith_div_vec2_u32(vec2<u32>(0u, u_input.d), vec2<u32>(global0.d.x, global1.d.x)) & vec2<u32>(11025u, 22146u)) % vec2<u32>(32u))), 7u)], global1.c);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(var_0.x, var_0.x), _wgslsmith_f_op_f32(937f - _wgslsmith_f_op_f32(var_0.x + -892f)), _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_vec2_f32(func_7(Struct_4(global0.b, var_0.x, global1.b), 1477f, Struct_4(Struct_1(global1.b.a, var_4.b), 420f, global1.b), false)).x - _wgslsmith_f_op_f32(f32(-1f) * -324f)))), _wgslsmith_dot_vec3_u32(~((vec3<u32>(27333u, 0u, var_4.b.x) & vec3<u32>(4294967295u, var_4.b.x, global0.b.b.x)) | ~global0.d.ywx), ~_wgslsmith_div_vec3_u32(var_3.xzz, global1.d.zzz >> (var_3.www % vec3<u32>(32u)))), vec3<f32>(var_0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1225f - _wgslsmith_f_op_f32(min(var_0.x, 879f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(1550f)), _wgslsmith_f_op_f32(-var_0.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1000f, -1110f))))), 1f);
}

