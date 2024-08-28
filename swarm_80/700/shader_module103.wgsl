struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec4<bool>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_1,
    c: bool,
    d: vec4<f32>,
}

struct Struct_4 {
    a: i32,
    b: Struct_2,
    c: u32,
    d: Struct_3,
    e: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: f32,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec3<bool>) -> u32 {
    let var_0 = vec2<f32>(1000f, -266f);
    let var_1 = -21943i & -firstTrailingBit(_wgslsmith_mod_i32(_wgslsmith_add_i32(1i, 31951i), -3676i));
    let var_2 = Struct_4(var_1, Struct_2(!select(vec3<bool>(arg_0.x, arg_0.x, true), vec3<bool>(false, arg_0.x, arg_0.x), true), !(!vec4<bool>(true, arg_0.x, false, false)), Struct_1(~(~0u))), ~_wgslsmith_mod_u32(u_input.a.x, ~abs(u_input.a.x)), Struct_3(!arg_0.zz, Struct_1(9630u), true, _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.x, -828f, 1459f, -479f), vec4<f32>(-743f, var_0.x, var_0.x, 897f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1013f, 258f, var_0.x, 1397f))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-357f, var_0.x, var_0.x, -1308f))) - vec4<f32>(var_0.x, 1293f, var_0.x, 254f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) + _wgslsmith_f_op_f32(-813f - var_0.x)) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1245f)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(-307f, var_0.x)), -1000f)) + 287f)));
    let var_3 = Struct_2(vec3<bool>(true, true != all(!var_2.b.b), false & (_wgslsmith_sub_i32(1i, -7188i) < abs(var_2.a))), !select(select(vec4<bool>(var_2.d.a.x, var_2.b.a.x, true, false), !var_2.b.b, var_2.b.b), !select(vec4<bool>(arg_0.x, false, false, true), var_2.b.b, true), !(!vec4<bool>(false, var_2.b.a.x, arg_0.x, false))), Struct_1(u_input.a.x));
    let var_4 = max(reverseBits(vec3<i32>(var_2.a, 2147483647i, countOneBits(var_2.a))), _wgslsmith_add_vec3_i32(-vec3<i32>(firstLeadingBit(var_2.a), _wgslsmith_dot_vec2_i32(vec2<i32>(25416i, var_2.a), vec2<i32>(0i, var_1)), var_2.a), select(vec3<i32>(var_2.a, -11239i, 2147483647i), -vec3<i32>(5929i, -1i, 1i), arg_0.x) << (vec3<u32>(0u, 22990u, ~1u) % vec3<u32>(32u))));
    return u_input.a.x;
}

fn func_2() -> bool {
    var var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1441f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(600f)))))))));
    var var_1 = Struct_1(select(u_input.a.x, func_3(select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, true, true)), true)), !(~u_input.a.x < u_input.a.x)));
    var var_2 = select(vec2<bool>(all(select(vec4<bool>(false, false, false, false), select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), false), vec4<bool>(true, true, true, true))), false), select(select(select(vec2<bool>(true, false), select(vec2<bool>(true, true), vec2<bool>(true, true), false), vec2<bool>(true, true)), select(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(false, true), false), vec2<bool>(true, true)), select(false, true, true)), vec2<bool>(true, true), select(select(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false)), vec2<bool>(false, false), select(vec2<bool>(false, false), vec2<bool>(true, false), false)), vec2<bool>(select(true, false, true), false), select(vec2<bool>(true, true), vec2<bool>(true, true), any(vec4<bool>(true, true, true, true))))), true);
    var_2 = !vec2<bool>(any(vec3<bool>(false, true, var_2.x)), ~27440u <= _wgslsmith_dot_vec2_u32(max(u_input.a, u_input.a), _wgslsmith_add_vec2_u32(u_input.a, u_input.a)));
    var var_3 = ~(~u_input.a);
    return var_2.x;
}

fn func_1(arg_0: vec2<i32>) -> Struct_1 {
    var var_0 = Struct_4(-2147483647i, Struct_2(vec3<bool>(true & select(false, true, false), any(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true))), all(vec3<bool>(true, false, false)) != true), select(vec4<bool>(true, false, true, false), vec4<bool>(any(vec4<bool>(true, false, false, true)), true, false, func_2()), select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, false), select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true)))), Struct_1(_wgslsmith_clamp_u32(_wgslsmith_add_u32(11941u, 0u), 1u, 1u))), max(select(u_input.a.x, 4294967295u, any(vec3<bool>(false, false, false))), func_3(vec3<bool>(true, true, true))), Struct_3(vec2<bool>(any(vec2<bool>(true, true)), true), Struct_1(u_input.a.x), true, vec4<f32>(1150f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(809f, -383f)))), 791f, -1000f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(1550f))))), 456f));
    var_0 = Struct_4(-1i, var_0.b, ~0u, var_0.d, -792f);
    var var_1 = var_0.e;
    var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -268f)));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1150f * _wgslsmith_f_op_f32(round(1017f)))) - var_0.d.d.x);
    return Struct_1(_wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(firstTrailingBit(1u), _wgslsmith_div_u32(~4294967295u, 31740u >> (var_0.b.c.a % 32u)))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: u32) -> Struct_2 {
    var var_0 = Struct_4(-4989i, arg_1, ~(_wgslsmith_mult_u32(~arg_2, ~22994u) & _wgslsmith_add_u32(~38286u, arg_0.a | 1u)), Struct_3(arg_1.b.yy, Struct_1(14522u), arg_1.a.x, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-956f, -2038f, arg_1.a.x))), -221f, _wgslsmith_f_op_f32(abs(-655f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1782f)))), 1429f);
    return arg_1;
}

fn func_5(arg_0: f32, arg_1: Struct_2) -> StorageBuffer {
    var var_0 = vec4<bool>(!(_wgslsmith_f_op_f32(max(arg_0, -1405f)) <= _wgslsmith_f_op_f32(floor(arg_0))), arg_1.a.x, !any(vec3<bool>(true, all(arg_1.a.yy), func_4(arg_1.c, Struct_2(vec3<bool>(false, false, false), arg_1.b, arg_1.c), arg_1.c.a).a.x)), !func_4(Struct_1(1u), Struct_2(vec3<bool>(true, true, true), arg_1.b, func_1(vec2<i32>(46914i, 1i))), arg_1.c.a).b.x);
    var_0 = !select(!arg_1.b, select(vec4<bool>(func_2(), var_0.x, true, arg_1.b.x), !arg_1.b, func_4(func_1(vec2<i32>(-17251i, -19578i)), func_4(Struct_1(0u), arg_1, arg_1.c.a), 1u).b), !select(func_2(), true, arg_0 <= 696f));
    let var_1 = !arg_1.a;
    var var_2 = Struct_2(var_1, !vec4<bool>(true, any(arg_1.b), !any(vec2<bool>(true, false)), true), arg_1.c);
    var var_3 = reverseBits(u_input.a);
    return StorageBuffer(func_1(~_wgslsmith_add_vec2_i32(vec2<i32>(1i, 11633i), _wgslsmith_sub_vec2_i32(vec2<i32>(-9789i, -18251i), vec2<i32>(-1i, -1i)))).a, 12576u, arg_0, _wgslsmith_div_i32(firstTrailingBit(_wgslsmith_dot_vec3_i32(~vec3<i32>(2147483647i, 5967i, 2147483647i), min(vec3<i32>(-2147483647i, -2147483647i, 1i), vec3<i32>(-919i, -1i, -38892i)))), _wgslsmith_mod_i32(1i, -(~1i))), min(-2147483647i << (~4294967295u % 32u), 0i));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_5(_wgslsmith_f_op_f32(f32(-1f) * -750f), func_4(func_1(countOneBits(~vec2<i32>(1i, -1i))), Struct_2(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), func_2()), vec4<bool>(true, true, true, true), Struct_1(u_input.a.x << (91903u % 32u))), _wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 4294967295u, 70620u, u_input.a.x) | ~vec4<u32>(0u, 1u, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, 0u, countOneBits(u_input.a.x), u_input.a.x))));
}

