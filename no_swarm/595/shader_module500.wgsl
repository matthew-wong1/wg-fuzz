struct Struct_1 {
    a: vec2<u32>,
    b: bool,
    c: vec2<bool>,
    d: i32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: Struct_2,
    d: u32,
    e: u32,
}

struct Struct_4 {
    a: u32,
    b: vec2<u32>,
    c: i32,
    d: f32,
    e: i32,
}

struct Struct_5 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec2<u32>,
    d: vec3<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: vec2<u32>;

var<private> global2: array<Struct_5, 22>;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: i32, arg_1: bool) -> u32 {
    global2 = array<Struct_5, 22>();
    let var_0 = 4294967295u;
    global1 = _wgslsmith_add_vec2_u32(vec2<u32>(firstLeadingBit(~12077u), global1.x), vec2<u32>(firstTrailingBit(select(u_input.a & var_0, min(var_0, var_0), select(arg_1, true, arg_1))), global1.x));
    return 4294967295u;
}

fn func_2() -> vec2<u32> {
    var var_0 = Struct_1(min(vec2<u32>(_wgslsmith_add_u32(global1.x, global1.x), 1u), vec2<u32>(9306u, func_3(-44158i, false))) & select(select(~vec2<u32>(0u, 46838u), ~vec2<u32>(4294967295u, u_input.a), true), max(select(vec2<u32>(u_input.a, global1.x), vec2<u32>(global1.x, u_input.a), vec2<bool>(false, false)), ~vec2<u32>(global1.x, global1.x)), select(select(vec2<bool>(true, true), vec2<bool>(true, false), false), select(vec2<bool>(false, true), vec2<bool>(false, false), true), vec2<bool>(true, true))), all(!vec4<bool>(all(vec4<bool>(false, false, true, false)), true, true, all(vec3<bool>(false, false, true)))), select(select(vec2<bool>(true, select(false, true, true)), vec2<bool>(any(vec4<bool>(true, false, false, false)), true), !select(vec2<bool>(true, false), vec2<bool>(false, true), true)), select(vec2<bool>(true, true), vec2<bool>(true, all(vec4<bool>(false, false, false, false))), select(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true)))), any(vec3<bool>(true, true, u_input.a < 0u))), _wgslsmith_mod_i32(-2147483647i, -2147483647i));
    global1 = reverseBits(var_0.a);
    var var_1 = Struct_4(var_0.a.x, vec2<u32>(abs(_wgslsmith_mult_u32(u_input.a, ~u_input.a)), 4294967295u), _wgslsmith_dot_vec3_i32(~_wgslsmith_div_vec3_i32(countOneBits(vec3<i32>(var_0.d, var_0.d, var_0.d)), ~vec3<i32>(-1i, var_0.d, 1i)), _wgslsmith_div_vec3_i32(-vec3<i32>(-23170i, var_0.d, -3597i), min(_wgslsmith_add_vec3_i32(vec3<i32>(var_0.d, var_0.d, 1i), vec3<i32>(var_0.d, 0i, 1i)), ~vec3<i32>(29296i, -29107i, 1i)))), _wgslsmith_f_op_f32(-806f * 1f), var_0.d);
    var_0 = Struct_1(_wgslsmith_mod_vec2_u32(var_1.b, vec2<u32>(global1.x, 1u)), true, !vec2<bool>(var_0.c.x, false), abs(var_0.d));
    global1 = ~vec2<u32>(abs(~global1.x), ~96007u);
    return var_0.a;
}

fn func_1(arg_0: vec2<i32>, arg_1: vec2<bool>, arg_2: f32) -> Struct_3 {
    global1 = ~(~func_2() ^ ~vec2<u32>(99922u, 11184u));
    let var_0 = Struct_2(_wgslsmith_mult_u32(global1.x, _wgslsmith_add_u32(0u, ~(global1.x ^ global1.x))));
    var var_1 = var_0;
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_2 + 1440f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(arg_2)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-136f - -1098f), arg_2, arg_1.x))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2, arg_2, arg_2))))) - vec3<f32>(-609f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_2))), _wgslsmith_f_op_f32(step(-689f, _wgslsmith_f_op_f32(-415f - -775f))))));
    let var_3 = _wgslsmith_f_op_vec3_f32(var_2 * var_2);
    return Struct_3(var_0, _wgslsmith_mult_u32(_wgslsmith_mult_u32(firstTrailingBit(4294967295u), ~global1.x) | ~(~51269u), var_1.a), Struct_2(4886u), 48290u, 0u << (global1.x % 32u));
}

fn func_4(arg_0: Struct_3) -> vec2<u32> {
    global0 = ~global1.x;
    let var_0 = Struct_1(_wgslsmith_mult_vec2_u32(abs(~(~vec2<u32>(40963u, arg_0.e))), ~(~reverseBits(vec2<u32>(arg_0.d, 4294967295u)))), !any(vec2<bool>(false, true)), select(vec2<bool>(all(select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, true), false)), true), select(vec2<bool>(false, true), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true)), vec2<bool>(true, true)), select(select(vec2<bool>(true, false), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true)), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true))), vec2<bool>(true, true), !select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true)))), firstLeadingBit(-21724i));
    var var_1 = func_1((-vec2<i32>(var_0.d, var_0.d) ^ vec2<i32>(0i, -22035i)) ^ (~_wgslsmith_mult_vec2_i32(vec2<i32>(var_0.d, 12471i), vec2<i32>(-2147483647i, -2147483647i)) >> (_wgslsmith_clamp_vec2_u32(var_0.a, var_0.a << (var_0.a % vec2<u32>(32u)), ~var_0.a) % vec2<u32>(32u))), var_0.c, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(850f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(1284f + -545f))) - _wgslsmith_f_op_f32(max(-711f, 2507f)))))).c;
    let var_2 = var_0.c;
    var var_3 = vec3<bool>(var_2.x || false, any(var_2), 1u == ~min(~arg_0.d, _wgslsmith_mult_u32(19908u, 1u)));
    return ~var_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_4(func_1(vec2<i32>(-1i) * -vec2<i32>(1i, 1i), vec2<bool>(false, all(vec4<bool>(true, true, true, true))), 907f));
    let var_0 = Struct_4(~_wgslsmith_mod_u32(~1u, ~(~284u)), vec2<u32>(~global1.x, _wgslsmith_mult_u32(_wgslsmith_div_u32(u_input.a, global1.x), ~1u)), ~2147483647i, -800f, ~(-47046i));
    global0 = _wgslsmith_clamp_u32(0u, var_0.b.x | 1u, _wgslsmith_dot_vec2_u32(abs(var_0.b), var_0.b << (reverseBits(~vec2<u32>(4294967295u, 0u)) % vec2<u32>(32u))));
    global1 = var_0.b;
    global0 = 1u;
    global2 = array<Struct_5, 22>();
    let var_1 = Struct_3(Struct_2(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(~vec4<u32>(24717u, 1u, 34938u, 1u), vec4<u32>(u_input.a, var_0.b.x, global1.x, var_0.a) | vec4<u32>(global1.x, 1u, 1u, u_input.a)), _wgslsmith_mult_vec4_u32(~vec4<u32>(u_input.a, 4294967295u, u_input.a, 1u), _wgslsmith_mult_vec4_u32(vec4<u32>(0u, u_input.a, var_0.a, 118269u), vec4<u32>(18597u, 4294967295u, global1.x, var_0.b.x))))), 1u << (var_0.a % 32u), func_1(_wgslsmith_mod_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(27370i, var_0.c), vec2<i32>(18157i, var_0.e)), ~vec2<i32>(2147483647i, var_0.c)) | reverseBits(vec2<i32>(var_0.e, 0i) >> (var_0.b % vec2<u32>(32u))), vec2<bool>(true, true && any(vec4<bool>(false, false, false, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0.d, -1069f, false))))).a, _wgslsmith_dot_vec4_u32(min(_wgslsmith_mult_vec4_u32(vec4<u32>(12961u, 0u, u_input.a, u_input.a), vec4<u32>(93620u, global1.x, 0u, 4294967295u)), vec4<u32>(global1.x, var_0.b.x, 17428u, 0u)), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, u_input.a, global1.x, global1.x), vec4<u32>(54696u, global1.x, 48850u, 13624u), vec4<u32>(var_0.b.x, 0u, global1.x, 4294967295u))) << (global1.x % 32u), var_0.a);
    var var_2 = vec4<bool>(all(vec3<bool>(true, any(vec3<bool>(true, true, true)), true)), true, any(!vec4<bool>(true, select(true, false, false), true, false)), !(var_0.d > var_0.d));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.c, var_0.d, vec2<u32>(u_input.a, ~firstLeadingBit(global1.x)), ~(vec3<i32>(var_0.c, var_0.c, 1i) & min(vec3<i32>(var_0.c, var_0.c, -25030i), vec3<i32>(var_0.e, var_0.c, var_0.c))) & (vec3<i32>(var_0.c, 1i, _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, 1i), vec2<i32>(var_0.e, var_0.c))) ^ firstTrailingBit(~vec3<i32>(var_0.e, var_0.e, -30751i))), _wgslsmith_mult_u32(1u, func_2().x));
}

