struct Struct_1 {
    a: bool,
    b: vec3<u32>,
    c: f32,
    d: vec2<bool>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: bool,
    c: vec3<u32>,
    d: Struct_1,
    e: i32,
}

struct Struct_3 {
    a: i32,
    b: bool,
    c: i32,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 21>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: f32, arg_1: vec3<u32>) -> u32 {
    let var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-432f, -841f), vec2<f32>(arg_0, arg_0))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-1310f, 1040f), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_0, arg_0), vec2<f32>(arg_0, -1000f), true))))), any(select(select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true), false), !select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, true), true), !select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, true), true))), abs(arg_1), Struct_1(all(vec4<bool>(true, true, all(vec4<bool>(true, true, true, true)), true)), vec3<u32>(~(~4294967295u), ~select(arg_1.x, arg_1.x, true), _wgslsmith_add_u32(0u, countOneBits(arg_1.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(-811f + -634f)), arg_0), select(vec2<bool>(true, true), vec2<bool>(true, any(vec4<bool>(false, true, true, false))), any(vec2<bool>(true, true)))), (1i >> (_wgslsmith_div_u32(arg_1.x, arg_1.x) % 32u)) >> (0u % 32u));
    global0 = array<Struct_3, 21>();
    var var_1 = _wgslsmith_mod_i32(u_input.c.x, _wgslsmith_div_i32(0i, -1i));
    var var_2 = select(true, any(vec4<bool>(true, !var_0.d.d.x, var_0.b, true)) & select(all(vec4<bool>(true, false, var_0.b, var_0.b)), 61373i < var_0.e, _wgslsmith_div_u32(arg_1.x, arg_1.x) <= var_0.d.b.x), all(!vec4<bool>(var_0.d.a, 1u == var_0.d.b.x, any(vec4<bool>(false, var_0.d.d.x, false, true)), true || var_0.d.a)));
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(2153f, var_0.a.x, var_0.d.c, arg_0))) * _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1288f, var_0.d.c, 448f, 1127f))))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(arg_0)), _wgslsmith_f_op_f32(sign(-1000f)), _wgslsmith_f_op_f32(step(-876f, var_0.d.c)), 1000f))) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.d.c, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1143f - 1150f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(1208f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-148f, var_0.d.c)))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)), var_0.a.x, arg_0, -1634f), true)));
    return select(10881u, _wgslsmith_dot_vec2_u32(~var_0.c.zx, ~arg_1.yy << (~(var_0.d.b.yx ^ var_0.d.b.zy) % vec2<u32>(32u))), true);
}

fn func_2() -> Struct_2 {
    var var_0 = countOneBits(~vec2<u32>(1u, func_3(-1000f, vec3<u32>(4294967295u, 1u, 4294967295u))));
    global0 = array<Struct_3, 21>();
    var_0 = ~_wgslsmith_add_vec2_u32(abs(~vec2<u32>(1u, var_0.x)), ~(~(vec2<u32>(44096u, var_0.x) | vec2<u32>(var_0.x, 1u))));
    var var_1 = Struct_5(_wgslsmith_f_op_f32(round(1f)));
    let var_2 = ~reverseBits(vec3<u32>(abs(var_0.x), var_0.x, 4294967295u));
    return Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_1.a, 1000f))))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(step(var_1.a, 1006f)), _wgslsmith_f_op_f32(ceil(var_1.a))))), select(!any(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false))), false, false), var_2, Struct_1(true, vec3<u32>(_wgslsmith_mod_u32(_wgslsmith_sub_u32(var_0.x, var_2.x), ~var_2.x), 1u, ~(~var_2.x)), _wgslsmith_div_f32(var_1.a, var_1.a), select(vec2<bool>(true, true), !select(vec2<bool>(true, true), vec2<bool>(true, false), true), var_2.x >= _wgslsmith_clamp_u32(4294967295u, 53197u, 34663u))), firstTrailingBit(_wgslsmith_div_i32(u_input.c.x, _wgslsmith_mult_i32(u_input.b << (30344u % 32u), -2147483647i))));
}

fn func_4(arg_0: Struct_2, arg_1: i32) -> Struct_1 {
    var var_0 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-318f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1194f * -362f) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.d.c, arg_0.d.c) * _wgslsmith_div_f32(-601f, arg_0.a.x)))), arg_0.d.d.x, ~(~(~arg_0.c) | vec3<u32>(72291u, 21657u, 4294967295u)), arg_0.d, _wgslsmith_mod_i32(_wgslsmith_sub_i32(arg_1, 3409i), u_input.b));
    global0 = array<Struct_3, 21>();
    global0 = array<Struct_3, 21>();
    let var_1 = Struct_4(Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(var_0.a, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-510f, 1210f), vec2<f32>(arg_0.d.c, var_0.a.x), arg_0.b)))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a.x, var_0.d.c) * arg_0.a)), true, arg_0.c, Struct_1(_wgslsmith_div_u32(arg_0.d.b.x, var_0.d.b.x) != 33115u, ~(~vec3<u32>(72155u, arg_0.c.x, 20145u)), arg_0.d.c, !vec2<bool>(var_0.b, arg_0.b)), arg_0.e));
    var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(arg_0.a.x, _wgslsmith_f_op_f32(round(1501f))))), true, var_1.a.d.b, func_2().d, ~(-(~_wgslsmith_dot_vec2_i32(vec2<i32>(1i, 742i), u_input.c))));
    return func_2().d;
}

fn func_5(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: vec2<f32>) -> vec3<bool> {
    let var_0 = Struct_4(func_2());
    var var_1 = arg_0;
    var_1 = firstTrailingBit(_wgslsmith_add_vec2_i32(vec2<i32>(~_wgslsmith_dot_vec3_i32(vec3<i32>(10749i, var_0.a.e, -1501i), vec3<i32>(var_0.a.e, var_0.a.e, -22108i)), 2147483647i), vec2<i32>(_wgslsmith_mod_i32(-1i, var_0.a.e) >> (arg_1.b.x % 32u), arg_0.x)));
    let var_2 = func_4(func_2(), ~(-2147483647i));
    var_1 = ~abs(u_input.c);
    return !(!vec3<bool>(!arg_1.a, arg_1.d.x & all(vec2<bool>(var_2.d.x, false)), func_4(func_2(), min(arg_0.x, u_input.b)).d.x));
}

fn func_1(arg_0: vec3<bool>, arg_1: vec4<bool>, arg_2: vec2<bool>, arg_3: bool) -> Struct_1 {
    var var_0 = Struct_3(i32(-1i) * -57862i, all(func_5(u_input.c, func_4(func_2(), u_input.b), vec2<f32>(194f, -572f))), u_input.c.x, Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(414f, 2391f), vec2<f32>(-1768f, 1602f), vec2<bool>(arg_1.x, true)))))), !arg_1.x, ~vec3<u32>(1u, 1u, 1u), Struct_1(true, vec3<u32>(_wgslsmith_div_u32(93011u, 12623u), _wgslsmith_mult_u32(1328u, 1u), countOneBits(9915u)), _wgslsmith_f_op_f32(1013f - _wgslsmith_f_op_f32(-132f - -684f)), func_2().d.d), -min(u_input.a ^ -26977i, abs(u_input.b))));
    var_0 = global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(~(3016u | firstTrailingBit(1u)), func_4(Struct_2(_wgslsmith_f_op_vec2_f32(-var_0.d.a), var_0.d.e > -2147483647i, vec3<u32>(_wgslsmith_div_u32(0u, var_0.d.d.b.x), ~var_0.d.d.b.x, ~var_0.d.d.b.x), Struct_1(true, _wgslsmith_div_vec3_u32(var_0.d.d.b, vec3<u32>(var_0.d.d.b.x, var_0.d.c.x, var_0.d.c.x)), _wgslsmith_f_op_f32(trunc(var_0.d.a.x)), !vec2<bool>(arg_3, false)), u_input.a | var_0.a), _wgslsmith_add_i32(-u_input.a, firstLeadingBit(var_0.d.e)) >> (~(~var_0.d.c.x) % 32u)).b.x), 21u)];
    let var_1 = !(4294967295u > ~(~var_0.d.c.x & var_0.d.d.b.x));
    global0 = array<Struct_3, 21>();
    let var_2 = Struct_4(Struct_2(vec2<f32>(_wgslsmith_f_op_f32(min(-379f, _wgslsmith_f_op_f32(255f + var_0.d.d.c))), _wgslsmith_f_op_f32(max(1725f, var_0.d.a.x))), true, var_0.d.c, var_0.d.d, -2147483647i));
    return Struct_1(var_2.a.b, var_2.a.d.b, var_0.d.d.c, select(select(select(func_4(var_2.a, u_input.c.x).d, vec2<bool>(true, arg_1.x), arg_0.xy), !func_4(Struct_2(var_0.d.a, arg_2.x, vec3<u32>(var_0.d.d.b.x, var_2.a.d.b.x, 1091u), Struct_1(var_0.d.d.a, var_2.a.d.b, var_0.d.d.c, vec2<bool>(arg_3, false)), 0i), var_2.a.e).d, !vec2<bool>(arg_1.x, true)), !arg_1.xz, var_2.a.d.d));
}

fn func_6(arg_0: Struct_1, arg_1: u32, arg_2: vec4<bool>) -> i32 {
    let var_0 = firstTrailingBit(-2147483647i);
    let var_1 = -309f;
    var var_2 = _wgslsmith_f_op_f32(-1694f - 1119f);
    var_2 = -225f;
    var var_3 = func_2().d;
    return u_input.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -abs(vec3<i32>(u_input.c.x, func_6(func_1(vec3<bool>(false, true, false), vec4<bool>(true, false, false, false), vec2<bool>(false, true), true), ~19174u, vec4<bool>(true, true, true, true)), -50374i));
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -513f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1356f * 792f) + _wgslsmith_f_op_f32(step(1537f, -477f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(273f + -1844f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1435f)))));
    let var_2 = 0i;
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(-104f + -454f), _wgslsmith_f_op_f32(848f - -432f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2().a.x + 356f)) - -1210f), 286f);
    var var_4 = Struct_5(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(var_3.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.zzx, vec2<u32>(abs(1u), 53018u));
}

