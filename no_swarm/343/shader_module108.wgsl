struct Struct_1 {
    a: vec2<u32>,
    b: u32,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_2,
    c: bool,
    d: bool,
    e: Struct_1,
}

struct Struct_4 {
    a: vec4<f32>,
    b: bool,
    c: Struct_2,
    d: vec4<i32>,
}

struct Struct_5 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec2<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
    d: vec2<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: i32 = -1i;

var<private> global2: vec4<u32> = vec4<u32>(2455u, 0u, 1u, 64847u);

var<private> global3: vec2<f32> = vec2<f32>(-319f, -120f);

var<private> global4: Struct_1;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> u32 {
    global2 = vec4<u32>(global4.b, (firstTrailingBit(u_input.d.x) ^ _wgslsmith_dot_vec4_u32(vec4<u32>(48664u, u_input.d.x, u_input.a.x, 0u), vec4<u32>(global4.b, 1u, 1u, 38714u))) >> (~1u % 32u), 31617u, 4294967295u) << (~(vec4<u32>(u_input.a.x, ~global4.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, global4.b, global4.b, 4294967295u), vec4<u32>(72519u, 1u, 110612u, 31014u)), ~4294967295u) >> (vec4<u32>(abs(29953u), global2.x, ~global4.a.x, global2.x) % vec4<u32>(32u))) % vec4<u32>(32u));
    global0 = any(select(vec4<bool>(true, true, 23624u > (global4.a.x | 8025u), true), vec4<bool>(true, all(select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(true, false, true))), false, false), vec4<bool>(true, true || select(false, false, true), _wgslsmith_div_u32(u_input.d.x, global4.b) > ~14322u, true)));
    global1 = _wgslsmith_sub_i32(-2147483647i, _wgslsmith_clamp_i32(~firstTrailingBit(12132i), _wgslsmith_dot_vec2_i32(-u_input.c, u_input.c), ~_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, u_input.c.x, 27728i, -10060i), vec4<i32>(u_input.c.x, u_input.b.x, 0i, 34163i))) >> (0u % 32u));
    let var_0 = _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(global3.x + _wgslsmith_f_op_f32(global3.x + 438f)), 155f)));
    let var_1 = Struct_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, _wgslsmith_div_f32(1000f, global3.x), global3.x, global3.x) - vec4<f32>(global3.x, _wgslsmith_f_op_f32(floor(-1046f)), -646f, _wgslsmith_f_op_f32(-var_0.x)))), !any(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true))) == true, Struct_2(2147483647i), -(~(-_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.b.x, 2147483647i, u_input.b.x, u_input.c.x), vec4<i32>(-11972i, u_input.c.x, 19180i, u_input.c.x), vec4<i32>(u_input.b.x, u_input.c.x, 4902i, u_input.c.x)))));
    return global4.a.x;
}

fn func_2(arg_0: vec3<f32>, arg_1: i32) -> vec2<bool> {
    global2 = ~select(select(vec4<u32>(4294967295u, ~4294967295u, global4.a.x, ~107571u), min(select(vec4<u32>(4294967295u, global2.x, 0u, global4.b), vec4<u32>(global4.a.x, u_input.a.x, global4.a.x, 42099u), false), max(vec4<u32>(u_input.a.x, 52942u, global4.a.x, global2.x), vec4<u32>(34221u, global2.x, global4.a.x, global4.b))), all(vec3<bool>(true, false, true))), _wgslsmith_mult_vec4_u32(~vec4<u32>(u_input.a.x, global4.a.x, 1u, 15371u), vec4<u32>(firstTrailingBit(9156u), _wgslsmith_div_u32(1u, 27636u), func_3(), global2.x)), vec4<bool>(true, true, !any(vec2<bool>(false, true)), any(vec2<bool>(false, true))));
    var var_0 = Struct_5(select(select(_wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b.x, -26196i, u_input.c.x, u_input.b.x), vec4<i32>(arg_1, 0i, arg_1, -2147483647i)), vec4<i32>(arg_1, arg_1, u_input.c.x, -6212i)), abs(firstLeadingBit(vec4<i32>(32974i, 1i, arg_1, u_input.b.x))), (arg_1 >> (u_input.d.x % 32u)) < min(-2147483647i, 1i)), select(vec4<i32>(arg_1 & 1i, arg_1, i32(-1i) * -26537i, -1i), vec4<i32>(-arg_1, i32(-1i) * -1i, 819i, -2147483647i), false), select(select(select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false)), select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, false), false), select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, true), false)), select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), true), select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false), true), true))));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(arg_0.x, arg_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -628f)), -1149f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.x + global3.x)))));
    global3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.xx) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.x, _wgslsmith_f_op_f32(trunc(-946f))))));
    let var_2 = ~_wgslsmith_add_vec2_u32(vec2<u32>(func_3(), ~(~u_input.d.x)), ~_wgslsmith_sub_vec2_u32(~global4.a, ~vec2<u32>(global4.b, 38470u)));
    return select(vec2<bool>((any(vec2<bool>(true, false)) & true) != any(select(vec2<bool>(true, true), vec2<bool>(true, false), false)), ~20633i < _wgslsmith_mod_i32(-13179i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, u_input.c.x, 17197i), var_0.a.wxw))), vec2<bool>(true, true), any(!(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), false))));
}

fn func_1() -> u32 {
    var var_0 = Struct_1(~(~vec2<u32>(_wgslsmith_clamp_u32(0u, u_input.a.x, 0u), 0u)), _wgslsmith_clamp_u32(10255u, ~select(4294967295u, global2.x, true), 21925u) ^ (global2.x | u_input.a.x));
    var var_1 = 59335u;
    var_1 = 28311u;
    var var_2 = -_wgslsmith_mult_vec4_i32(_wgslsmith_mod_vec4_i32(-_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b.x, -1i, -1i, u_input.c.x), vec4<i32>(26279i, u_input.b.x, u_input.c.x, 47557i)), abs(vec4<i32>(20897i, u_input.c.x, -2147483647i, u_input.c.x))), _wgslsmith_div_vec4_i32(-_wgslsmith_sub_vec4_i32(vec4<i32>(0i, u_input.c.x, u_input.c.x, u_input.c.x), vec4<i32>(u_input.c.x, 11660i, 2147483647i, u_input.c.x)), _wgslsmith_mult_vec4_i32(~vec4<i32>(1i, u_input.b.x, u_input.b.x, u_input.c.x), _wgslsmith_mod_vec4_i32(vec4<i32>(-1i, u_input.b.x, u_input.b.x, u_input.b.x), vec4<i32>(u_input.c.x, u_input.b.x, u_input.c.x, -22846i)))));
    let var_3 = vec4<bool>(true, !(!any(vec2<bool>(true, false))), any(select(vec2<bool>(true, true), !func_2(vec3<f32>(global3.x, global3.x, -240f), -27144i), any(vec4<bool>(false, true, false, false)))), !any(vec3<bool>(true, false, true)));
    return 0u;
}

fn func_4(arg_0: vec2<bool>, arg_1: u32, arg_2: bool) -> Struct_4 {
    var var_0 = Struct_1(u_input.a.zz, firstLeadingBit(u_input.d.x));
    var var_1 = var_0.a.x;
    let var_2 = Struct_5(vec4<i32>(-countOneBits(35806i), 0i, _wgslsmith_add_i32(14004i, u_input.b.x), _wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(12928i, u_input.c.x, u_input.b.x, -1i)) & -vec4<i32>(35005i, u_input.c.x, u_input.b.x, 3813i), select(vec4<i32>(-2147483647i, 0i, u_input.b.x, u_input.b.x) >> (vec4<u32>(4294967295u, global2.x, global2.x, global4.a.x) % vec4<u32>(32u)), _wgslsmith_mult_vec4_i32(vec4<i32>(0i, u_input.c.x, -8061i, 41302i), vec4<i32>(-11453i, u_input.c.x, -25964i, u_input.c.x)), select(vec4<bool>(arg_2, arg_0.x, true, arg_2), vec4<bool>(arg_0.x, true, false, arg_2), arg_2)))));
    var var_3 = global3.x;
    global3 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-global3.x), 579f) + _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(758f, 482f)), vec2<f32>(-977f, global3.x)))))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global3.x - 1505f), global3.x))), 472f)));
    return Struct_4(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 1522f, _wgslsmith_f_op_f32(-global3.x), global3.x), (any(vec4<bool>(arg_0.x, arg_0.x, arg_0.x, false)) == true) && !(all(vec4<bool>(false, true, false, arg_2)) || true), Struct_2(~var_2.a.x), var_2.a << (vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1, 1u, global2.x) | global2.yzz, max(vec3<u32>(7566u, 12784u, 14628u), vec3<u32>(global2.x, var_0.a.x, 1u))), _wgslsmith_mult_u32(_wgslsmith_div_u32(32731u, u_input.a.x), u_input.d.x), 103u, ~global2.x) % vec4<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(vec2<bool>(true, true || any(vec3<bool>(true, true, true))), ~(select(85444u, func_1(), true) >> (~(~1u) % 32u)), all(select(select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false)), vec3<bool>(true, true, true), false), !select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, false)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(true, false, true)))));
    let var_1 = ~var_0.d.zzw;
    global1 = var_0.d.x;
    global0 = abs(var_1.x) == 1i;
    global2 = ~select(~_wgslsmith_sub_vec4_u32(~vec4<u32>(68214u, 1u, 4294967295u, u_input.d.x), firstTrailingBit(vec4<u32>(global4.a.x, 4294967295u, global2.x, global4.a.x))), _wgslsmith_add_vec4_u32(abs(vec4<u32>(global2.x, 4294967295u, u_input.a.x, global2.x)), ~vec4<u32>(0u, 57070u, global4.b, u_input.a.x)) >> (_wgslsmith_div_vec4_u32(vec4<u32>(global4.a.x, 21639u, global2.x, 20859u) >> (vec4<u32>(global2.x, 1u, global2.x, u_input.a.x) % vec4<u32>(32u)), vec4<u32>(u_input.d.x, global2.x, global2.x, global4.a.x)) % vec4<u32>(32u)), !vec4<bool>(var_0.b, true, var_0.b, true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_i32(0i, _wgslsmith_dot_vec3_i32(var_1, ~vec3<i32>(-48456i, var_1.x, 2147483647i) & vec3<i32>(-2147483647i, var_1.x, var_0.d.x))), global2.x, vec3<i32>(u_input.b.x, -2147483647i, firstLeadingBit(var_1.x << (u_input.d.x % 32u)) >> (4294967295u % 32u)), _wgslsmith_add_vec2_u32(vec2<u32>(_wgslsmith_div_u32(17737u, global2.x), _wgslsmith_mod_u32(global2.x, 0u)), vec2<u32>(0u, abs(28817u))) | max(~vec2<u32>(25074u, 42734u), global2.yw), ~countOneBits(global2.x));
}

