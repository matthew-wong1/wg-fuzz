struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: i32,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: f32,
    b: u32,
    c: bool,
    d: vec2<bool>,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: array<Struct_4, 21>;

var<private> global2: array<vec3<i32>, 12>;

var<private> global3: vec3<u32>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_1(arg_0: vec4<u32>, arg_1: vec2<bool>, arg_2: Struct_2, arg_3: Struct_2) -> Struct_1 {
    global1 = array<Struct_4, 21>();
    var var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -160f)), _wgslsmith_div_f32(-2214f, -258f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -793f))))));
    global1 = array<Struct_4, 21>();
    var var_1 = all(arg_1);
    global3 = vec3<u32>(_wgslsmith_div_u32(global3.x >> (0u % 32u), u_input.a), arg_0.x >> (4294967295u % 32u), arg_0.x) & vec3<u32>(firstTrailingBit(abs(_wgslsmith_mod_u32(32901u, 40946u))), _wgslsmith_div_u32(_wgslsmith_mult_u32(global3.x, global3.x << (22051u % 32u)), _wgslsmith_mult_u32(13734u, global3.x)), arg_0.x << (~reverseBits(arg_0.x) % 32u));
    return global0.a;
}

fn func_3(arg_0: vec2<u32>, arg_1: vec4<i32>, arg_2: Struct_2, arg_3: vec2<bool>) -> u32 {
    global1 = array<Struct_4, 21>();
    let var_0 = Struct_2(func_1(firstTrailingBit(max(vec4<u32>(4294967295u, 0u, 4294967295u, 0u) & vec4<u32>(arg_0.x, 1u, arg_0.x, global3.x), vec4<u32>(global3.x, 12018u, u_input.b, arg_0.x))), vec2<bool>(arg_3.x, true), arg_2, Struct_2(global0.a)));
    let var_1 = func_1(~(~abs(vec4<u32>(arg_0.x, 1u, 0u, arg_0.x))), arg_3, arg_2, arg_2);
    var var_2 = Struct_3(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1093f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-615f)) * -178f)), _wgslsmith_f_op_f32(f32(-1f) * -151f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-555f, _wgslsmith_f_op_f32(max(578f, -821f)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(-428f - 453f)))), -(~arg_1.x), Struct_1(arg_1.x != _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, arg_1.x, arg_1.x, 0i), vec4<i32>(arg_1.x, arg_1.x, arg_1.x, 1i))), func_1(_wgslsmith_add_vec4_u32(~abs(vec4<u32>(0u, global3.x, 20934u, 1u)), _wgslsmith_sub_vec4_u32(~vec4<u32>(arg_0.x, 0u, 6097u, 32839u), countOneBits(vec4<u32>(4294967295u, u_input.b, 41834u, 12394u)))), vec2<bool>(select(arg_2.a.a & var_1.a, var_0.a.a, var_0.a.a && true), true), arg_2, Struct_2(var_1)));
    global0 = global1[_wgslsmith_index_u32(u_input.a, 21u)];
    return abs(~(~reverseBits(4294967295u)));
}

fn func_2(arg_0: Struct_2, arg_1: u32, arg_2: vec2<u32>) -> vec4<u32> {
    global3 = vec3<u32>(42187u, u_input.a, ~1u);
    let var_0 = global1[_wgslsmith_index_u32(38594u, 21u)];
    var var_1 = _wgslsmith_f_op_f32(-705f - -1013f);
    var var_2 = var_0.a.a;
    var var_3 = 1f;
    return vec4<u32>(_wgslsmith_div_u32(reverseBits(0u), func_3(~vec2<u32>(4294967295u, arg_2.x), _wgslsmith_mod_vec4_i32(vec4<i32>(29703i, 99042i, -5201i, 1i), vec4<i32>(39173i, 13239i, 22829i, 2147483647i)), arg_0, !vec2<bool>(true, arg_0.a.a)) >> (_wgslsmith_clamp_u32(103275u, func_3(vec2<u32>(arg_2.x, 40034u), vec4<i32>(0i, 1i, 1i, -2147483647i), arg_0, vec2<bool>(true, true)), _wgslsmith_add_u32(global3.x, global3.x)) % 32u)), ~4294967295u & ~(~(~arg_1)), 79460u, 97954u);
}

fn func_4(arg_0: vec4<u32>, arg_1: vec4<u32>, arg_2: vec2<i32>, arg_3: vec2<bool>) -> vec4<u32> {
    var var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-650f)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1057f * 146f))) - 1760f)))));
    let var_1 = Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-704f, 1324f, -412f, 1000f) - vec4<f32>(-147f, 1383f, -1000f, 836f))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1423f), _wgslsmith_f_op_f32(round(-283f)), _wgslsmith_f_op_f32(abs(-623f)), _wgslsmith_div_f32(841f, 919f)))), 1i, global0.a, Struct_1(false));
    let var_2 = 1265f;
    let var_3 = arg_2.x < ~(countOneBits(arg_2.x) << (_wgslsmith_add_u32(arg_0.x, 4294967295u) % 32u));
    let var_4 = Struct_4(global0.a);
    return func_2(Struct_2(func_1(~(~vec4<u32>(0u, 4294967295u, u_input.b, u_input.a)), arg_3, Struct_2(var_4.a), Struct_2(var_4.a))), ~_wgslsmith_clamp_u32(_wgslsmith_mult_u32(4294967295u, 1u), ~u_input.b & (global3.x | 4294967295u), ~u_input.b), vec2<u32>(u_input.b, 9458u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !vec4<bool>(global0.a.a, true, !global0.a.a, !any(vec4<bool>(true, global0.a.a, true, global0.a.a)));
    var var_1 = func_4(~func_2(Struct_2(func_1(vec4<u32>(global3.x, u_input.b, 0u, 0u), vec2<bool>(true, global0.a.a), Struct_2(Struct_1(false)), Struct_2(global0.a))), u_input.b, vec2<u32>(1u, 1u)), vec4<u32>(91675u | u_input.a, func_3(vec2<u32>(4294967295u, 16915u), vec4<i32>(28943i, -47272i, -27087i, 54084i), Struct_2(global0.a), !var_0.xz), 1u, 49193u) & vec4<u32>(min(28029u, global3.x), select(global3.x, 1u, true), abs(_wgslsmith_dot_vec4_u32(vec4<u32>(50153u, 4294967295u, 61738u, u_input.a), vec4<u32>(global3.x, u_input.a, 34298u, global3.x))), func_2(Struct_2(global0.a), min(global3.x, global3.x), abs(vec2<u32>(0u, global3.x))).x), abs(~vec2<i32>(39423i, -2147483647i)), !var_0.zy);
    global3 = vec3<u32>(func_4(~_wgslsmith_clamp_vec4_u32(~vec4<u32>(global3.x, var_1.x, global3.x, var_1.x), ~vec4<u32>(u_input.a, global3.x, 4294967295u, global3.x), ~vec4<u32>(global3.x, 30825u, u_input.a, 92853u)), max(vec4<u32>(75467u, ~29191u, func_3(var_1.zw, vec4<i32>(-2147483647i, 2147483647i, 0i, -1287i), Struct_2(Struct_1(true)), var_0.yw), ~global3.x), vec4<u32>(u_input.b, _wgslsmith_mult_u32(18179u, var_1.x), global3.x >> (global3.x % 32u), _wgslsmith_sub_u32(92497u, 0u))), vec2<i32>(-(~1i), -2147483647i), select(!(!var_0.xy), select(var_0.ww, !var_0.yw, any(var_0)), vec2<bool>(true, global0.a.a))).x, ~min(var_1.x, u_input.b), 1u);
    let var_2 = func_2(Struct_2(func_1(firstTrailingBit(_wgslsmith_mod_vec4_u32(vec4<u32>(global3.x, u_input.a, u_input.a, 49428u), vec4<u32>(1u, u_input.a, u_input.b, 0u))), var_0.wx, Struct_2(func_1(vec4<u32>(4294967295u, global3.x, 0u, 21851u), vec2<bool>(false, false), Struct_2(Struct_1(global0.a.a)), Struct_2(Struct_1(false)))), Struct_2(global0.a))), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 9303u, func_3(global3.zx, ~vec4<i32>(-2851i, -13514i, 22138i, -2147483647i), Struct_2(global0.a), !var_0.zy)), _wgslsmith_add_vec3_u32(func_4(vec4<u32>(1u, u_input.b, 1u, u_input.a), _wgslsmith_mod_vec4_u32(vec4<u32>(39266u, u_input.a, u_input.b, 32778u), vec4<u32>(global3.x, var_1.x, u_input.b, u_input.b)), reverseBits(vec2<i32>(-2147483647i, 0i)), var_0.yz).wyz, ~(var_1.wwz & var_1.yzy))), ~global3.xz);
    var var_3 = Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-112f, 959f, 1000f, 279f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(477f, -540f, -850f, 160f))) - vec4<f32>(1f, 1f, 1f, 1f)) + vec4<f32>(1f, 1f, 1f, 1f)), -1i, func_1(~_wgslsmith_sub_vec4_u32(var_2, var_2), !var_0.yx, Struct_2(func_1(vec4<u32>(80494u, u_input.b, var_2.x, 4294967295u) ^ vec4<u32>(var_2.x, 51025u, u_input.a, 4294967295u), vec2<bool>(false, var_0.x), Struct_2(global0.a), Struct_2(global0.a))), Struct_2(Struct_1(all(var_0.xxy)))), global0.a);
    var var_4 = ~vec3<u32>(21724u | ~(~var_2.x), u_input.a, 0u);
    global0 = global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(~countOneBits(11935u), u_input.a), 21u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_u32(vec4<u32>(global3.x, var_1.x, 1u, u_input.a), ~(var_2 << (var_2 % vec4<u32>(32u)))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-2219f, var_3.a.x)))), _wgslsmith_f_op_f32(319f + _wgslsmith_f_op_f32(abs(-1065f)))), _wgslsmith_sub_vec3_i32(vec3<i32>(-45338i, countOneBits(~var_3.b), firstTrailingBit(var_3.b << (var_2.x % 32u))), vec3<i32>(~_wgslsmith_dot_vec4_i32(vec4<i32>(var_3.b, var_3.b, var_3.b, -36749i), vec4<i32>(2147483647i, 1i, var_3.b, 14649i)), _wgslsmith_div_i32(var_3.b, ~2147483647i), ~_wgslsmith_div_i32(65315i, var_3.b))));
}

