struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec4<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<bool>,
}

struct Struct_4 {
    a: Struct_2,
    b: f32,
    c: vec4<u32>,
    d: Struct_2,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: vec4<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32, arg_1: bool, arg_2: Struct_1, arg_3: f32) -> bool {
    global0 = arg_1;
    global0 = arg_1;
    var var_0 = _wgslsmith_clamp_vec4_i32(-(~_wgslsmith_mod_vec4_i32(min(vec4<i32>(-2147483647i, u_input.b, arg_2.a, u_input.b), vec4<i32>(17305i, u_input.b, 17642i, u_input.b)), _wgslsmith_sub_vec4_i32(vec4<i32>(arg_2.a, u_input.b, u_input.b, 61151i), vec4<i32>(47948i, arg_2.a, u_input.b, arg_2.a)))), -countOneBits(~vec4<i32>(arg_2.a, 0i, 0i, 2147483647i) | _wgslsmith_mult_vec4_i32(vec4<i32>(-1i, u_input.b, arg_2.a, 45411i), vec4<i32>(u_input.b, arg_2.a, arg_2.a, 2186i))), ~(-(vec4<i32>(25314i, 15820i, -13411i, arg_2.a) | vec4<i32>(-2147483647i, -2147483647i, u_input.b, -8651i)) | max(vec4<i32>(u_input.b, arg_2.a, u_input.b, u_input.b) | vec4<i32>(53337i, arg_2.a, arg_2.a, u_input.b), firstLeadingBit(vec4<i32>(u_input.b, arg_2.a, arg_2.a, -1i)))));
    var var_1 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_0), arg_3)), arg_0))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(arg_0, 1121f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_3, -476f) + vec2<f32>(arg_3, arg_0))))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1258f))), -1545f)))));
    var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_3, var_1.x)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, -769f)) - vec2<f32>(784f, 956f)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-367f, 555f), vec2<f32>(1575f, 1397f)))))));
    return !any(vec3<bool>(arg_1, true, arg_1));
}

fn func_2() -> Struct_2 {
    global0 = true;
    let var_0 = ~_wgslsmith_mod_vec2_u32(countOneBits(abs(u_input.a)), vec2<u32>(u_input.a.x, ~u_input.a.x) | _wgslsmith_div_vec2_u32(vec2<u32>(14596u, u_input.a.x), vec2<u32>(u_input.a.x, u_input.a.x)));
    return Struct_2(Struct_1(1i), Struct_1(-1i), Struct_1(u_input.b), !(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), func_3(1000f, false, Struct_1(1i), -1484f))));
}

fn func_1(arg_0: Struct_1) -> Struct_4 {
    global0 = !any(!vec3<bool>(all(vec3<bool>(true, false, true)), true, true));
    let var_0 = ~(u_input.a ^ u_input.a);
    var var_1 = var_0.x;
    let var_2 = func_2();
    global0 = true;
    return Struct_4(func_2(), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1533f)) * _wgslsmith_f_op_f32(f32(-1f) * -1068f)), _wgslsmith_mod_vec4_u32(_wgslsmith_clamp_vec4_u32(max(_wgslsmith_mult_vec4_u32(vec4<u32>(0u, 62079u, 17296u, 1u), vec4<u32>(1u, var_0.x, var_0.x, u_input.a.x)), min(vec4<u32>(u_input.a.x, 11222u, var_0.x, 0u), vec4<u32>(68083u, u_input.a.x, var_0.x, 42867u))), ~abs(vec4<u32>(var_0.x, u_input.a.x, 1u, 0u)), vec4<u32>(36196u, 0u, u_input.a.x, u_input.a.x) & max(vec4<u32>(var_0.x, u_input.a.x, 17864u, 1u), vec4<u32>(u_input.a.x, var_0.x, 1u, u_input.a.x))), min(~(~vec4<u32>(u_input.a.x, var_0.x, 14928u, u_input.a.x)), ~vec4<u32>(54695u, var_0.x, u_input.a.x, var_0.x) | vec4<u32>(u_input.a.x, 13757u, 114977u, 30147u))), Struct_2(var_2.b, func_2().a, func_2().c, select(!(!vec4<bool>(var_2.d.x, false, true, false)), select(!vec4<bool>(true, var_2.d.x, true, true), select(vec4<bool>(var_2.d.x, true, var_2.d.x, false), vec4<bool>(var_2.d.x, false, var_2.d.x, var_2.d.x), true), vec4<bool>(false, false, true, var_2.d.x)), var_2.a.a <= _wgslsmith_add_i32(-1i, arg_0.a))), Struct_2(var_2.b, func_2().b, func_2().b, func_2().d));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_4, arg_2: vec3<bool>, arg_3: vec3<f32>) -> vec4<u32> {
    global0 = any(!select(vec3<bool>(true, true & arg_0.b.x, u_input.b != arg_1.d.a.a), !arg_1.e.d.zzy, !func_2().d.xxw));
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(min(arg_1.b, arg_3.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1421f))), func_1(Struct_1(arg_1.e.a.a)).b)) - vec3<f32>(_wgslsmith_f_op_f32(-1000f + -334f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(-1162f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -274f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_3.x * arg_1.b), _wgslsmith_f_op_f32(arg_1.b * 172f)))));
    let var_1 = func_1(arg_0.a).e;
    var var_2 = arg_0;
    let var_3 = u_input.a.x;
    return arg_1.c;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = true;
    let var_0 = vec3<u32>(~firstLeadingBit(u_input.a.x), ~65089u, ~_wgslsmith_dot_vec4_u32(func_4(Struct_3(Struct_1(u_input.b), vec3<bool>(true, false, false)), func_1(Struct_1(57249i)), vec3<bool>(true, true, true), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1828f, -1099f, 750f))), vec4<u32>(func_4(Struct_3(Struct_1(-45602i), vec3<bool>(true, false, true)), Struct_4(Struct_2(Struct_1(2334i), Struct_1(u_input.b), Struct_1(5644i), vec4<bool>(false, true, false, false)), -1592f, vec4<u32>(4294967295u, 49782u, u_input.a.x, 1u), Struct_2(Struct_1(u_input.b), Struct_1(u_input.b), Struct_1(u_input.b), vec4<bool>(false, false, false, true)), Struct_2(Struct_1(-65218i), Struct_1(1i), Struct_1(1i), vec4<bool>(false, true, false, true))), vec3<bool>(true, true, false), vec3<f32>(1652f, -335f, -1351f)).x, _wgslsmith_clamp_u32(4294967295u, 1u, u_input.a.x), u_input.a.x ^ u_input.a.x, _wgslsmith_mult_u32(u_input.a.x, 1u))));
    global0 = select((any(func_2().d.xz) & (1i != ~u_input.b)) || (~u_input.a.x < _wgslsmith_mult_u32(~u_input.a.x, 8442u)), all(func_1(Struct_1(-1i >> (var_0.x % 32u))).a.d.wx), all(!vec3<bool>(false, true, any(vec3<bool>(false, true, false)))));
    var var_1 = _wgslsmith_add_vec3_i32(-abs(vec3<i32>(u_input.b, u_input.b, -1i) ^ min(vec3<i32>(-2147483647i, 65103i, u_input.b), vec3<i32>(-8097i, u_input.b, u_input.b))), vec3<i32>(-12019i, -1i, _wgslsmith_add_i32(_wgslsmith_add_i32(4768i, -u_input.b), u_input.b)));
    var var_2 = -385f;
    var var_3 = Struct_4(Struct_2(Struct_1(u_input.b), func_2().b, func_2().a, select(vec4<bool>(true, true, true, true), func_2().d, true)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-746f, _wgslsmith_f_op_f32(step(-757f, -1000f)), false))))), vec4<u32>(u_input.a.x | 1u, ~_wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(var_0.x, var_0.x)), select(_wgslsmith_mult_u32(4294967295u, var_0.x), _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, var_0.x, u_input.a.x, var_0.x), vec4<u32>(var_0.x, 4240u, 4294967295u, u_input.a.x)), all(vec3<bool>(true, true, false))), u_input.a.x) >> (vec4<u32>(4294967295u, min(33283u, reverseBits(14778u)), 56735u, ~func_1(Struct_1(var_1.x)).c.x) % vec4<u32>(32u)), Struct_2(func_1(func_1(func_1(Struct_1(u_input.b)).d.a).a.a).d.c, func_2().b, func_1(func_1(func_1(Struct_1(var_1.x)).a.b).d.a).e.c, select(vec4<bool>(false, true, false, true), vec4<bool>(all(vec3<bool>(false, true, false)), var_0.x >= 27905u, any(vec4<bool>(true, false, true, false)), all(vec3<bool>(false, true, false))), select(select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, true)), vec4<bool>(true, true, true, true), true))), func_2());
    var var_4 = func_1(var_3.d.c).d;
    let var_5 = -max(~(~u_input.b ^ var_3.a.b.a), -1i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1427f, -284f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.b)), vec4<i32>(35737i, 38097i, var_4.b.a, _wgslsmith_add_i32(~(-u_input.b), 0i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-336f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-2490f)))) * var_3.b));
}

