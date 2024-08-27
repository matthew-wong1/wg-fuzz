struct Struct_1 {
    a: f32,
    b: i32,
    c: bool,
    d: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<u32>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: u32,
    c: u32,
    d: vec2<u32>,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: u32,
    b: Struct_2,
    c: i32,
    d: Struct_4,
    e: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: u32,
    d: vec4<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: vec4<f32>;

var<private> global2: i32;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
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

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_3) -> u32 {
    global0 = false;
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1979f, global1.x))) * 1219f), _wgslsmith_f_op_f32(f32(-1f) * -557f)));
    global0 = arg_0.a.c;
    let var_1 = -2147483647i;
    global0 = all(vec2<bool>(any(!vec4<bool>(true, arg_1.a.x, true, true)), !all(select(arg_1.a.yx, arg_1.a.yx, false))));
    return _wgslsmith_div_u32(~max(1u, _wgslsmith_mult_u32(arg_1.d.x, select(u_input.a, arg_1.b, false))), 4294967295u);
}

fn func_4(arg_0: Struct_3, arg_1: u32, arg_2: bool) -> vec2<f32> {
    var var_0 = ~arg_0.d.x;
    var var_1 = Struct_4(Struct_1(1f, -20645i, !arg_2, _wgslsmith_div_vec2_i32(arg_0.e.d, arg_0.e.d)));
    var var_2 = Struct_5(arg_0.c, Struct_2(arg_0.e, Struct_1(1000f, var_1.a.d.x, all(vec3<bool>(false, true, var_1.a.c)), _wgslsmith_mod_vec2_i32(_wgslsmith_mult_vec2_i32(var_1.a.d, arg_0.e.d), var_1.a.d)), firstTrailingBit(arg_0.d << (arg_0.d % vec2<u32>(32u)))), var_1.a.d.x, Struct_4(var_1.a), true);
    var_0 = arg_0.b;
    let var_3 = all(select(select(select(select(arg_0.a.yy, vec2<bool>(var_2.b.b.c, false), vec2<bool>(true, var_2.e)), select(arg_0.a.yy, arg_0.a.xz, vec2<bool>(var_2.e, arg_0.e.c)), arg_0.a.zy), select(select(vec2<bool>(false, var_2.d.a.c), arg_0.a.xy, true), select(vec2<bool>(var_2.d.a.c, true), arg_0.a.xx, arg_0.a.xx), vec2<bool>(false, var_2.d.a.c)), any(vec2<bool>(true, arg_2))), !select(vec2<bool>(var_2.b.a.c, false), select(vec2<bool>(false, var_1.a.c), arg_0.a.xz, vec2<bool>(true, false)), !vec2<bool>(arg_0.e.c, false)), !arg_0.a.xx));
    return _wgslsmith_f_op_vec2_f32(-global1.zy);
}

fn func_5(arg_0: vec2<f32>, arg_1: u32, arg_2: Struct_3, arg_3: u32) -> bool {
    var var_0 = 39286u;
    global2 = -1i;
    let var_1 = Struct_1(-129f, 2147483647i, ~(~arg_1) <= arg_2.d.x, vec2<i32>(select(countOneBits(arg_2.e.b), _wgslsmith_mult_i32(-49094i, -38323i), arg_2.a.x), countOneBits(~arg_2.e.b)) & arg_2.e.d);
    return arg_2.a.x;
}

fn func_2() -> Struct_2 {
    let var_0 = ~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u >> (u_input.a % 32u), u_input.a), vec2<u32>(0u, ~31951u) | _wgslsmith_mod_vec2_u32(~vec2<u32>(0u, 1u), ~vec2<u32>(1u, u_input.a)));
    var var_1 = vec3<bool>(func_5(_wgslsmith_f_op_vec2_f32(func_4(Struct_3(vec3<bool>(true, true, true), ~u_input.a, ~4294967295u, _wgslsmith_mult_vec2_u32(vec2<u32>(0u, var_0), vec2<u32>(4294967295u, u_input.a)), Struct_1(-840f, 0i, false, vec2<i32>(-1i, 2147483647i))), ~func_3(Struct_4(Struct_1(-1806f, 54923i, false, vec2<i32>(15668i, -5151i))), Struct_3(vec3<bool>(true, false, true), u_input.a, var_0, vec2<u32>(u_input.a, u_input.a), Struct_1(global1.x, 1i, true, vec2<i32>(2147483647i, -2147483647i)))), true)), ~func_3(Struct_4(Struct_1(-324f, 18276i, false, vec2<i32>(-1i, -40434i))), Struct_3(vec3<bool>(false, false, true), var_0, u_input.a, vec2<u32>(u_input.a, u_input.a), Struct_1(991f, 33095i, true, vec2<i32>(1i, 51570i)))), Struct_3(select(vec3<bool>(true, true, false), select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(true, false, true)), select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), false)), 14251u | _wgslsmith_mod_u32(33117u, var_0), var_0, _wgslsmith_mult_vec2_u32(vec2<u32>(41873u, var_0), vec2<u32>(44420u, 4294967295u)) | firstTrailingBit(vec2<u32>(var_0, 1u)), Struct_1(-846f, _wgslsmith_mod_i32(-2147483647i, -1i), true, vec2<i32>(1i, 1i))), var_0 ^ max(var_0 << (u_input.a % 32u), 1u)), all(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false))) & ((global1.x < _wgslsmith_f_op_f32(select(1774f, 1053f, true))) && false), _wgslsmith_div_u32(_wgslsmith_mod_u32(u_input.a | u_input.a, 1u), var_0) < _wgslsmith_div_u32(u_input.a, var_0));
    var var_2 = countOneBits(vec4<u32>(select(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, var_0, u_input.a), vec3<u32>(4294967295u, 0u, u_input.a)) & ~var_0, select(firstLeadingBit(var_0), var_0 | u_input.a, !var_1.x), var_1.x), 29039u, 4294967295u, 34617u ^ u_input.a));
    var var_3 = select(select(vec3<bool>(any(vec2<bool>(var_1.x, var_1.x)), _wgslsmith_f_op_f32(floor(global1.x)) != _wgslsmith_f_op_f32(-435f + 655f), true), !select(vec3<bool>(false, var_1.x, var_1.x), vec3<bool>(var_1.x, false, var_1.x), !vec3<bool>(false, false, var_1.x)), vec3<bool>(true, false, all(select(vec3<bool>(false, var_1.x, var_1.x), vec3<bool>(var_1.x, true, true), true)))), select(vec3<bool>(!(global1.x == -1000f), _wgslsmith_mult_i32(88486i, -21338i) == _wgslsmith_dot_vec3_i32(vec3<i32>(1i, -28197i, -10221i), vec3<i32>(-2147483647i, 52873i, 8385i)), true), vec3<bool>(select(false, select(var_1.x, var_1.x, var_1.x), false), true, true), !(!select(vec3<bool>(false, var_1.x, var_1.x), vec3<bool>(var_1.x, var_1.x, false), false))), vec3<bool>(var_1.x, !(!var_1.x), !(!var_1.x)));
    global2 = 59721i;
    return Struct_2(Struct_1(-1015f, _wgslsmith_mod_i32(_wgslsmith_clamp_i32(~(-2898i), ~1i, firstLeadingBit(-18222i)), ~2147483647i), false, vec2<i32>(_wgslsmith_add_i32(abs(0i), 2147483647i), -15492i)), Struct_1(_wgslsmith_div_f32(815f, global1.x), 1i, true, countOneBits(vec2<i32>(1i, i32(-1i) * -40555i))), select(~(~var_2.yy ^ ~vec2<u32>(4294967295u, 4294967295u)), vec2<u32>(~(u_input.a | u_input.a), var_0), var_3.x));
}

fn func_1() -> Struct_3 {
    global2 = 2147483647i;
    var var_0 = func_2();
    var var_1 = Struct_3(select(!select(vec3<bool>(true, var_0.b.c, var_0.b.c), select(vec3<bool>(true, false, var_0.a.c), vec3<bool>(var_0.a.c, true, true), var_0.a.c), select(vec3<bool>(true, var_0.b.c, var_0.b.c), vec3<bool>(true, var_0.b.c, var_0.b.c), vec3<bool>(true, true, false))), vec3<bool>(true, true, true), select(select(vec3<bool>(true, var_0.a.c, var_0.b.c), select(vec3<bool>(var_0.a.c, false, false), vec3<bool>(var_0.b.c, var_0.a.c, false), vec3<bool>(false, var_0.b.c, false)), !vec3<bool>(false, false, var_0.b.c)), !vec3<bool>(false, var_0.a.c, var_0.b.c), !vec3<bool>(true, false, var_0.a.c))), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, func_2().c.x, 423u) >> (max(~vec3<u32>(8711u, 15993u, 14874u), countOneBits(vec3<u32>(u_input.a, var_0.c.x, u_input.a))) % vec3<u32>(32u)), reverseBits(abs(vec3<u32>(4294967295u, 22806u, var_0.c.x)))), ~(~_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(var_0.c.x, 4294967295u, 0u), vec3<u32>(50852u, 38838u, 1u)), vec3<u32>(u_input.a, 0u, u_input.a) ^ vec3<u32>(41350u, 31221u, 10048u))), vec2<u32>(firstTrailingBit(_wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(var_0.c.x, u_input.a, u_input.a)), reverseBits(vec3<u32>(0u, 1u, 4294967295u)))), 31589u), Struct_1(947f, _wgslsmith_add_i32(21649i, _wgslsmith_dot_vec3_i32(abs(vec3<i32>(var_0.a.d.x, 2147483647i, var_0.b.b)), _wgslsmith_clamp_vec3_i32(vec3<i32>(-2147483647i, var_0.a.d.x, var_0.a.d.x), vec3<i32>(var_0.a.d.x, -7405i, var_0.b.d.x), vec3<i32>(-3092i, 18037i, var_0.b.d.x)))), true, vec2<i32>(0i, 0i)));
    global2 = var_0.b.b;
    let var_2 = vec3<i32>(1i, ~_wgslsmith_add_i32(-_wgslsmith_sub_i32(2147483647i, 15038i), abs(_wgslsmith_clamp_i32(8927i, var_0.b.b, -2147483647i))), var_1.e.b);
    return Struct_3(select(var_1.a, vec3<bool>(true, true, false), var_0.b.c & false), u_input.a, ~34305u, ~abs(var_0.c), var_0.a);
}

fn func_6(arg_0: Struct_3, arg_1: vec2<i32>, arg_2: bool) -> i32 {
    var var_0 = vec3<bool>(all(select(func_1().a, select(func_1().a, select(vec3<bool>(arg_0.a.x, false, false), arg_0.a, vec3<bool>(false, true, false)), arg_0.a), true)), true, true);
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(1f)), 1643f)) + arg_0.e.a);
    var var_2 = arg_0.e;
    let var_3 = select(func_1().a, select(arg_0.a, func_1().a, arg_0.a), true);
    var_0 = !(!vec3<bool>(var_3.x, false, true));
    return -2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = countOneBits(max(~1i, 1i));
    let var_0 = Struct_2(Struct_1(global1.x, func_6(func_1(), vec2<i32>(abs(1i), _wgslsmith_mod_i32(45774i, 1i)), all(vec2<bool>(true, true))), true, _wgslsmith_mult_vec2_i32(-(vec2<i32>(92373i, 2147483647i) >> (vec2<u32>(u_input.a, 0u) % vec2<u32>(32u))), vec2<i32>(-2147483647i, abs(2147483647i)))), func_2().a, _wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u << (0u % 32u), select(16323u, u_input.a, true)) << (firstTrailingBit(abs(vec2<u32>(u_input.a, 0u))) % vec2<u32>(32u)), ~firstTrailingBit(_wgslsmith_div_vec2_u32(vec2<u32>(10445u, 1u), vec2<u32>(49360u, 4294967295u)))));
    let var_1 = Struct_4(func_1().e);
    var var_2 = var_0.b.c;
    var var_3 = vec2<bool>(true, true);
    var var_4 = Struct_2(Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_1.a.a, 1000f)) * _wgslsmith_div_f32(var_1.a.a, -740f)), var_0.a.a), var_1.a.d.x, var_3.x, -vec2<i32>(-1i, ~var_0.a.d.x)), var_0.a, var_0.c);
    global2 = min(-17321i, firstTrailingBit(abs(-1i)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, u_input.a, firstTrailingBit(u_input.a << (73932u % 32u)), _wgslsmith_add_u32(func_3(Struct_4(var_0.a), Struct_3(vec3<bool>(var_4.b.c, false, true), 0u, 1u, vec2<u32>(73123u, var_4.c.x), var_0.b)), var_0.c.x)), ~(vec4<u32>(u_input.a, var_0.c.x, u_input.a, var_4.c.x) ^ vec4<u32>(var_4.c.x, var_4.c.x, u_input.a, 4294967295u))), ~countOneBits(_wgslsmith_mult_vec4_u32(firstTrailingBit(vec4<u32>(var_0.c.x, 4294967295u, 1u, var_4.c.x)), vec4<u32>(0u, 19079u, 15054u, 1u))), firstTrailingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.c.x, 23136u) & ~var_4.c, func_2().c)), ~select(~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, 1u, 65155u, 56418u), vec4<u32>(u_input.a, 4294967295u, 4294967295u, 4294967295u)), _wgslsmith_mult_vec4_u32(firstTrailingBit(vec4<u32>(21828u, 2602u, u_input.a, 1u)), ~vec4<u32>(1u, 58324u, u_input.a, 4134u)), select(true, all(vec2<bool>(false, false)), any(vec4<bool>(false, var_3.x, false, var_1.a.c)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(func_2().a.a)))), 1373f));
}

