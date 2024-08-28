struct Struct_1 {
    a: vec4<bool>,
    b: bool,
    c: bool,
    d: vec2<i32>,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: f32,
    d: i32,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_1,
    c: f32,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec4<u32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: i32,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<bool>(true, true, true, false), false, false, vec2<i32>(i32(-2147483648), 0i), -1353f);

var<private> global1: array<vec3<i32>, 30> = array<vec3<i32>, 30>(vec3<i32>(-1i, 42324i, -34738i), vec3<i32>(0i, 25767i, i32(-2147483648)), vec3<i32>(-1054i, -17313i, -25063i), vec3<i32>(0i, 1i, i32(-2147483648)), vec3<i32>(-22015i, 0i, -1i), vec3<i32>(28458i, -1i, 11722i), vec3<i32>(34236i, 2147483647i, -42910i), vec3<i32>(17261i, 0i, -7642i), vec3<i32>(1i, 0i, 19816i), vec3<i32>(-1685i, -1i, 1i), vec3<i32>(0i, -16843i, -1i), vec3<i32>(2147483647i, 27174i, 1i), vec3<i32>(1i, -11344i, 30448i), vec3<i32>(i32(-2147483648), 12226i, 47004i), vec3<i32>(i32(-2147483648), 2147483647i, 1i), vec3<i32>(-1i, -32812i, 2527i), vec3<i32>(-67716i, 2147483647i, -37352i), vec3<i32>(0i, 9703i, -1i), vec3<i32>(-1969i, -43679i, 53385i), vec3<i32>(75596i, i32(-2147483648), -25963i), vec3<i32>(-67966i, 46886i, -9554i), vec3<i32>(-42588i, 0i, 59323i), vec3<i32>(-6686i, -5620i, 2147483647i), vec3<i32>(-1i, 1i, 2147483647i), vec3<i32>(-15194i, 0i, 0i), vec3<i32>(2147483647i, 0i, -9189i), vec3<i32>(26926i, 1i, i32(-2147483648)), vec3<i32>(2147483647i, 2147483647i, -31975i), vec3<i32>(26637i, -27969i, 64298i), vec3<i32>(i32(-2147483648), 1i, 1i));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> vec2<bool> {
    global0 = Struct_1(!select(vec4<bool>(global0.b, all(vec3<bool>(global0.b, true, false)), u_input.d.x > 60080i, !global0.b), vec4<bool>(global0.b, global0.c, false, true), vec4<bool>(global0.c && false, all(global0.a), false, false)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(-408f)), _wgslsmith_f_op_f32(-2155f * _wgslsmith_f_op_f32(step(1000f, -731f))))) != _wgslsmith_f_op_f32(-global0.e), !global0.a.x, vec2<i32>(-(~_wgslsmith_add_i32(-2147483647i, global0.d.x)), -2147483647i), 187f);
    var var_0 = Struct_2(Struct_1(vec4<bool>((i32(-1i) * -10484i) >= abs(global0.d.x), select(global0.c, global0.d.x == -1i, global0.a.x), all(select(vec2<bool>(false, true), vec2<bool>(global0.a.x, global0.c), vec2<bool>(global0.b, false))), global0.a.x), any(vec2<bool>(true, global0.a.x)), global0.c, max(vec2<i32>(0i, firstLeadingBit(global0.d.x)), select(select(u_input.d.xw, u_input.d.zz, false), min(vec2<i32>(global0.d.x, u_input.a), vec2<i32>(-38575i, global0.d.x)), vec2<bool>(global0.c, global0.c))), global0.e), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1f, 144f)) - _wgslsmith_div_f32(-1000f, global0.e)), 1291f, (abs(~38637i) ^ _wgslsmith_clamp_i32(select(u_input.a, -1i, global0.c), -u_input.a, 2147483647i)) << (4294967295u % 32u), Struct_1(!(!vec4<bool>(global0.b, global0.b, false, true)), -1000f >= _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global0.e), -257f)), true, countOneBits(-reverseBits(u_input.d.wy)), _wgslsmith_f_op_f32(-global0.e)));
    var var_1 = Struct_3(vec4<bool>(true, global0.c, !var_0.e.a.x, global0.c != var_0.a.a.x), var_0.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * global0.e) - global0.e))), 479f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global0.e, 1000f, var_0.c))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.a.e, 108f, -1702f), vec3<f32>(var_0.c, -243f, global0.e), vec3<bool>(var_0.e.b, true, true)))))));
    var_0 = Struct_2(Struct_1(select(var_0.e.a, !(!var_0.e.a), select(var_0.e.a, !vec4<bool>(var_0.e.b, var_1.b.b, false, global0.c), false && var_1.b.b)), select(var_0.e.a.x & (false | global0.c), true, var_0.a.c), all(select(global0.a.ww, vec2<bool>(var_0.a.a.x, false), var_1.b.b)) != false, global0.d << (vec2<u32>(1u, 1u) % vec2<u32>(32u)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1433f * -1925f)))))), _wgslsmith_f_op_f32(max(-583f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(var_1.c, global0.e)))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.c * var_0.c) + _wgslsmith_f_op_f32(round(var_1.c)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -634f))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-993f + global0.e), -456f)), any(global0.a.wxz))), i32(-1i) * -2147483647i, var_0.a);
    var var_2 = var_1.d;
    return select(select(select(select(!var_1.b.a.yy, vec2<bool>(false, true), !global0.a.zy), !(!vec2<bool>(global0.c, false)), var_1.a.yw), var_1.b.a.wz, vec2<bool>(any(var_0.a.a.zyw) == true, !var_0.e.b && true)), select(global0.a.xw, !vec2<bool>(select(true, false, true), any(var_1.a)), !select(vec2<bool>(false, global0.b), select(global0.a.wz, vec2<bool>(true, true), var_1.b.c), !var_1.a.zz)), !(!var_0.a.a.yz));
}

fn func_4(arg_0: vec2<bool>, arg_1: vec3<bool>, arg_2: vec4<u32>, arg_3: bool) -> vec3<bool> {
    let var_0 = true;
    var var_1 = global0.d.x;
    let var_2 = Struct_2(Struct_1(select(vec4<bool>(any(global0.a.wyz), arg_1.x, true | arg_3, true), select(global0.a, global0.a, arg_3), select(!global0.a, !vec4<bool>(true, var_0, global0.c, true), vec4<bool>(false, global0.a.x, true, arg_0.x))), global0.b, all(select(!arg_1.zz, select(arg_1.yz, arg_0, arg_1.xz), func_3())), u_input.d.zx, global0.e), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(1131f, -204f)))) - -1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.e) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1006f + _wgslsmith_f_op_f32(160f + -634f))))), global0.d.x, Struct_1(select(select(global0.a, !vec4<bool>(arg_0.x, true, arg_1.x, false), var_0 | arg_3), select(global0.a, select(vec4<bool>(true, false, false, arg_3), global0.a, vec4<bool>(arg_3, false, arg_1.x, arg_0.x)), false), !global0.a), arg_3, false, vec2<i32>(global0.d.x, (u_input.d.x << (30766u % 32u)) | (global0.d.x << (u_input.b.x % 32u))), _wgslsmith_f_op_f32(-828f - -976f)));
    var var_3 = Struct_1(!vec4<bool>(any(select(global0.a, vec4<bool>(true, false, var_2.a.b, var_2.e.b), vec4<bool>(var_0, true, var_2.e.b, true))), var_2.e.a.x, false, var_0), true, arg_0.x, -_wgslsmith_clamp_vec2_i32(_wgslsmith_add_vec2_i32(var_2.e.d, global0.d), -vec2<i32>(var_2.d, 0i), abs(u_input.d.yy)) & var_2.a.d, var_2.a.e);
    let var_4 = var_2;
    return select(var_2.e.a.xzx, global0.a.zwy, vec3<bool>(!any(!vec2<bool>(true, global0.b)), true, arg_0.x));
}

fn func_2(arg_0: f32) -> u32 {
    let var_0 = func_4(func_3(), global0.a.wzz, _wgslsmith_mult_vec4_u32(u_input.c, ~u_input.c), any(!global0.a.zxz));
    global1 = array<vec3<i32>, 30>();
    var var_1 = reverseBits(u_input.d);
    let var_2 = global0.a.x;
    let var_3 = global0.a;
    return ~min(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(abs(vec3<u32>(u_input.c.x, 0u, u_input.b.x)), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b.x, 1u, 1u), u_input.b)), _wgslsmith_mult_vec3_u32(_wgslsmith_mult_vec3_u32(u_input.b, vec3<u32>(u_input.b.x, u_input.c.x, 11516u)), u_input.b)), ~max(u_input.c.x, u_input.c.x));
}

fn func_1(arg_0: u32, arg_1: vec3<u32>, arg_2: i32) -> Struct_2 {
    global1 = array<vec3<i32>, 30>();
    var var_0 = 133f;
    var var_1 = global1[_wgslsmith_index_u32(max(~4023u, ~func_2(_wgslsmith_f_op_f32(min(global0.e, 449f)))) << (arg_0 % 32u), 30u)];
    var var_2 = -_wgslsmith_mod_vec4_i32(u_input.d, -(u_input.d ^ -vec4<i32>(arg_2, var_1.x, global0.d.x, 16839i)));
    var var_3 = _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.e, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(-733f))))), _wgslsmith_f_op_f32(ceil(754f))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(195f, global0.e, -1594f))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.e, -1000f, global0.e)) + _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-2078f, global0.e, global0.e))))) - _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.e, global0.e, global0.e)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global0.e, -771f, 2880f)))))));
    return Struct_2(Struct_1(global0.a, any(vec2<bool>(true, true & global0.c)), false, -(~countOneBits(vec2<i32>(1i, var_2.x))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -739f), var_3.x))), 1f, _wgslsmith_f_op_f32(155f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -309f)))), u_input.a, Struct_1(global0.a, false, true, reverseBits(vec2<i32>(_wgslsmith_clamp_i32(var_1.x, 2147483647i, 1i), u_input.a)), var_3.x));
}

fn func_5(arg_0: i32, arg_1: Struct_2, arg_2: bool, arg_3: vec2<u32>) -> vec2<i32> {
    let var_0 = Struct_1(!vec4<bool>(true, any(!vec3<bool>(true, arg_2, false)), -632f <= _wgslsmith_f_op_f32(-1984f + global0.e), u_input.b.x == (arg_3.x ^ 1u)), arg_1.a.b, true & (global0.b || !arg_2), global0.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.e - global0.e) + _wgslsmith_f_op_f32(arg_1.b + arg_1.c)), 208f))));
    let var_1 = 4294967295u;
    let var_2 = func_1(max(~arg_3.x, ~(_wgslsmith_mod_u32(var_1, 4294967295u) & ~var_1)), vec3<u32>(abs(_wgslsmith_dot_vec2_u32(arg_3, ~vec2<u32>(20973u, arg_3.x))), ~27060u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, ~16695u, 0u, _wgslsmith_clamp_u32(51847u, 26935u, arg_3.x)), ~abs(vec4<u32>(u_input.b.x, 11413u, arg_3.x, var_1)))), -1i);
    global1 = array<vec3<i32>, 30>();
    global0 = Struct_1(global0.a, !(-(~0i) == _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0, var_0.d.x, var_0.d.x, u_input.a), u_input.d), firstLeadingBit(arg_0))), !arg_1.a.a.x, abs(vec2<i32>(var_2.d, ~(global0.d.x << (0u % 32u)))), _wgslsmith_f_op_f32(-global0.e));
    return func_1(_wgslsmith_div_u32(arg_3.x, ~_wgslsmith_div_u32(var_1 | u_input.c.x, arg_3.x)), u_input.b & u_input.c.wzz, var_2.d).a.d;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 24565u;
    var var_1 = -global0.d.x;
    global0 = Struct_1(select(global0.a, !global0.a, select(vec4<bool>(!global0.b, u_input.b.x != u_input.c.x, false, false & global0.c), !select(global0.a, global0.a, false), false)), global0.a.x, all(select(global0.a.xyz, !(!global0.a.ywx), !select(vec3<bool>(global0.b, false, global0.c), vec3<bool>(global0.a.x, true, global0.c), global0.a.wxw))), _wgslsmith_div_vec2_i32(_wgslsmith_div_vec2_i32(func_5(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, 2147483647i, global0.d.x), vec3<i32>(16904i, -45080i, -8535i)), func_1(u_input.c.x, vec3<u32>(23775u, 4294967295u, u_input.c.x), u_input.d.x), !global0.a.x, abs(vec2<u32>(4294967295u, u_input.b.x))), -reverseBits(vec2<i32>(u_input.a, -19105i))), vec2<i32>(-32503i, ~_wgslsmith_dot_vec3_i32(vec3<i32>(global0.d.x, 2147483647i, 79679i), vec3<i32>(u_input.a, -11323i, u_input.d.x)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(global0.e)))));
    global1 = array<vec3<i32>, 30>();
    global1 = array<vec3<i32>, 30>();
    let var_2 = Struct_1(global0.a, true, all(global0.a.yyy), abs(abs(vec2<i32>(-7508i, min(global0.d.x, global0.d.x)))), _wgslsmith_f_op_f32(f32(-1f) * -333f));
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(step(global0.e, 782f)), _wgslsmith_f_op_f32(f32(-1f) * -625f), _wgslsmith_f_op_f32(floor(1000f))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(865f, var_2.e) * _wgslsmith_f_op_f32(trunc(var_2.e)))))), func_1(u_input.b.x, _wgslsmith_mod_vec3_u32(u_input.b, ~(vec3<u32>(4294967295u, u_input.c.x, u_input.c.x) ^ u_input.c.wzy)), u_input.a).e.d.x, var_2.d.x << (_wgslsmith_mult_u32(_wgslsmith_mult_u32(reverseBits(16430u), u_input.c.x), 1u) % 32u), -1i, _wgslsmith_f_op_f32(sign(var_2.e)));
}

