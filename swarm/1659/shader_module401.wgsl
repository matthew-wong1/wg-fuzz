struct Struct_1 {
    a: vec2<i32>,
    b: vec2<u32>,
    c: f32,
    d: vec4<bool>,
    e: vec4<i32>,
}

struct Struct_2 {
    a: f32,
    b: vec2<u32>,
    c: bool,
}

struct Struct_3 {
    a: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: vec4<i32>,
    d: i32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_2) -> vec4<bool> {
    var var_0 = Struct_2(-525f, arg_0.b, arg_2.c);
    return vec4<bool>(true, var_0.c, true, all(vec4<bool>(true, arg_1.d.x, true, arg_2.c)));
}

fn func_3() -> f32 {
    var var_0 = u_input.a.x;
    let var_1 = u_input.c.x | max(u_input.c.x, _wgslsmith_mod_i32(u_input.b.x, _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(6476i, -25097i, u_input.c.x), u_input.b.wzx), u_input.b.x ^ u_input.b.x)));
    var var_2 = false;
    var var_3 = vec4<i32>(_wgslsmith_mod_i32(10255i, _wgslsmith_dot_vec2_i32(u_input.b.zx, -(u_input.b.xz << (vec2<u32>(u_input.a.x, u_input.a.x) % vec2<u32>(32u))))), min(reverseBits(u_input.c.x), -_wgslsmith_mod_i32(u_input.b.x, _wgslsmith_add_i32(u_input.c.x, -1i))), ~u_input.c.x, countOneBits(var_1));
    var var_4 = ~u_input.a.yx;
    return _wgslsmith_f_op_f32(1358f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -365f)) + 404f));
}

fn func_4(arg_0: f32, arg_1: Struct_2, arg_2: Struct_1) -> Struct_1 {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-2062f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1744f + -139f), _wgslsmith_f_op_f32(max(arg_0, 308f))))))), ~firstTrailingBit(arg_2.b), arg_1.c);
    let var_1 = arg_2.d.xw;
    var_0 = Struct_2(_wgslsmith_f_op_f32(step(arg_2.c, var_0.a)), select(arg_1.b, abs(arg_1.b), !var_1), arg_2.d.x);
    let var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(372f, _wgslsmith_f_op_f32(426f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-671f, var_0.a)), _wgslsmith_f_op_f32(sign(1120f)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-992f - -751f)))));
    var_0 = Struct_2(_wgslsmith_f_op_f32(trunc(arg_1.a)), _wgslsmith_sub_vec2_u32(reverseBits(vec2<u32>(~42931u, 1u)), _wgslsmith_sub_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(arg_2.b.x, arg_1.b.x), var_0.b) & ~arg_1.b, ~vec2<u32>(u_input.a.x, arg_1.b.x))), !arg_2.d.x);
    return Struct_1(min(_wgslsmith_clamp_vec2_i32(-(u_input.b.yx << (vec2<u32>(0u, 4294967295u) % vec2<u32>(32u))), vec2<i32>(-u_input.b.x, arg_2.a.x), arg_2.e.zx), arg_2.e.wx), select(var_0.b, _wgslsmith_mult_vec2_u32(~u_input.a.zx, vec2<u32>(6859u, firstTrailingBit(u_input.a.x))), vec2<bool>((51264u ^ arg_1.b.x) >= 1u, true)), 1f, func_2(arg_1, arg_2, arg_1), ~u_input.b);
}

fn func_1(arg_0: f32, arg_1: Struct_2, arg_2: vec3<bool>, arg_3: vec2<bool>) -> Struct_1 {
    let var_0 = select(arg_2, arg_2, select(vec3<bool>(arg_3.x, any(arg_2.zx), arg_3.x), arg_2, vec3<bool>(arg_1.c, (12966u >> (1u % 32u)) != min(arg_1.b.x, arg_1.b.x), arg_1.c)));
    return func_4(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(arg_0, arg_1.a, arg_1.c)), _wgslsmith_f_op_f32(arg_1.a + -1000f)), -834f, all(func_2(Struct_2(arg_1.a, vec2<u32>(arg_1.b.x, arg_1.b.x), var_0.x), Struct_1(u_input.c, u_input.a.xx, -1250f, vec4<bool>(arg_2.x, arg_2.x, arg_1.c, false), vec4<i32>(2171i, u_input.b.x, u_input.b.x, u_input.b.x)), Struct_2(arg_0, arg_1.b, false))))))), Struct_2(_wgslsmith_f_op_f32(func_3()), ~(~(~vec2<u32>(u_input.a.x, 96898u))), ~(~4294967295u) > ~_wgslsmith_mult_u32(u_input.a.x, arg_1.b.x)), Struct_1(vec2<i32>(-u_input.c.x, -2147483647i), ~firstTrailingBit(vec2<u32>(u_input.a.x, 4294967295u)), 485f, func_2(arg_1, Struct_1(u_input.b.zw, vec2<u32>(u_input.a.x, 4294967295u), arg_1.a, vec4<bool>(false, arg_2.x, var_0.x, false), vec4<i32>(-1i, 2147483647i, 1i, -10961i)), arg_1), ~_wgslsmith_mod_vec4_i32(firstTrailingBit(u_input.b), u_input.b >> (vec4<u32>(arg_1.b.x, arg_1.b.x, 147051u, arg_1.b.x) % vec4<u32>(32u)))));
}

fn func_5(arg_0: vec2<bool>, arg_1: Struct_1) -> Struct_2 {
    var var_0 = ~(~76286u);
    var_0 = func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_1.c), 1876f))), Struct_2(1000f, vec2<u32>(~1u, 1u), !(!arg_0.x)), func_1(_wgslsmith_div_f32(arg_1.c, 1082f), Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1.c - 1168f), -251f), _wgslsmith_add_vec2_u32(vec2<u32>(arg_1.b.x, 1u) & vec2<u32>(14862u, 23538u), vec2<u32>(29685u, arg_1.b.x)), arg_0.x), select(vec3<bool>(all(vec4<bool>(true, true, false, arg_0.x)), arg_0.x & arg_1.d.x, !arg_0.x), select(!arg_1.d.wyx, vec3<bool>(true, arg_1.d.x, arg_0.x), any(arg_1.d.yw)), arg_1.d.x), !arg_0).d.zzy, !select(!(!vec2<bool>(arg_0.x, arg_1.d.x)), vec2<bool>(true, arg_1.d.x || true), arg_1.d.x)).b.x;
    var_0 = 1u;
    var_0 = ~firstTrailingBit(arg_1.b.x);
    let var_1 = Struct_1(~(-_wgslsmith_mult_vec2_i32(arg_1.a, _wgslsmith_div_vec2_i32(u_input.c, u_input.c))), _wgslsmith_sub_vec2_u32(vec2<u32>(~4294967295u, 1u) >> (reverseBits(reverseBits(arg_1.b)) % vec2<u32>(32u)), vec2<u32>(~4294967295u, min(_wgslsmith_mod_u32(arg_1.b.x, 1376u), u_input.a.x))), _wgslsmith_f_op_f32(arg_1.c - _wgslsmith_f_op_f32(1398f - func_4(-923f, Struct_2(arg_1.c, vec2<u32>(4294967295u, 22459u), false), func_4(484f, Struct_2(535f, vec2<u32>(8679u, 0u), true), arg_1)).c)), !vec4<bool>(arg_1.d.x, false, all(arg_1.d.wzy), true), abs(arg_1.e));
    return Struct_2(_wgslsmith_f_op_f32(-func_4(_wgslsmith_f_op_f32(arg_1.c * _wgslsmith_f_op_f32(-arg_1.c)), Struct_2(1064f, u_input.a.yy, arg_0.x), func_1(_wgslsmith_div_f32(1888f, arg_1.c), Struct_2(var_1.c, vec2<u32>(var_1.b.x, 0u), var_1.d.x), vec3<bool>(var_1.d.x, false, arg_1.d.x), func_2(Struct_2(arg_1.c, arg_1.b, false), var_1, Struct_2(arg_1.c, u_input.a.yy, arg_0.x)).ww)).c), reverseBits(vec2<u32>(_wgslsmith_sub_u32(_wgslsmith_mult_u32(u_input.a.x, u_input.a.x), 15555u), func_4(_wgslsmith_div_f32(413f, arg_1.c), Struct_2(-1000f, vec2<u32>(8709u, 0u), false), func_1(var_1.c, Struct_2(401f, arg_1.b, arg_0.x), vec3<bool>(true, true, var_1.d.x), arg_0)).b.x)), (func_1(_wgslsmith_f_op_f32(arg_1.c * 616f), Struct_2(arg_1.c, u_input.a.zy, arg_1.d.x), !vec3<bool>(arg_1.d.x, arg_0.x, arg_0.x), func_4(arg_1.c, Struct_2(-1000f, var_1.b, true), arg_1).d.xy).e.x & _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, u_input.c.x, u_input.c.x), ~arg_1.e.yxx)) == _wgslsmith_mod_i32(_wgslsmith_mod_i32(i32(-1i) * -4397i, -1i & var_1.e.x), -29150i));
}

fn func_6(arg_0: bool, arg_1: i32, arg_2: Struct_2) -> Struct_1 {
    let var_0 = arg_1;
    let var_1 = 48455u;
    let var_2 = vec3<u32>(~_wgslsmith_mod_u32(~_wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(4573u, 4294967295u, arg_2.b.x)), 0u >> (_wgslsmith_clamp_u32(44447u, 0u, arg_2.b.x) % 32u)), 1u, _wgslsmith_mod_u32(4294967295u, _wgslsmith_add_u32(select(arg_2.b.x, var_1, false), ~(38330u | var_1))));
    var var_3 = vec3<f32>(func_5(vec2<bool>(!arg_2.c, all(func_2(Struct_2(arg_2.a, vec2<u32>(var_1, 0u), false), Struct_1(u_input.b.xx, vec2<u32>(arg_2.b.x, arg_2.b.x), arg_2.a, vec4<bool>(true, false, true, arg_0), u_input.b), Struct_2(arg_2.a, vec2<u32>(4294967295u, 70100u), arg_0)))), func_1(func_5(vec2<bool>(true, true), Struct_1(u_input.c, arg_2.b, 137f, vec4<bool>(arg_0, true, false, true), vec4<i32>(u_input.b.x, 3060i, arg_1, 0i))).a, arg_2, !vec3<bool>(arg_0, true, true), vec2<bool>(true, arg_2.c & true))).a, arg_2.a, 529f);
    var_3 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.a, _wgslsmith_div_f32(arg_2.a, var_3.x), _wgslsmith_f_op_f32(trunc(var_3.x))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.x, arg_2.a, arg_2.a) * vec3<f32>(arg_2.a, var_3.x, 1267f))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(arg_2.a)))), 266f, _wgslsmith_f_op_f32(f32(-1f) * -617f))), !arg_0));
    return func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(442f + 1326f)), func_5(!vec2<bool>(arg_2.c, false), Struct_1(firstLeadingBit(vec2<i32>(u_input.b.x, u_input.c.x)), _wgslsmith_mult_vec2_u32(u_input.a.yy << (arg_2.b % vec2<u32>(32u)), abs(vec2<u32>(arg_2.b.x, 29148u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(792f - arg_2.a) - arg_2.a), vec4<bool>(true, true, !arg_2.c, false), firstLeadingBit(u_input.b))), select(vec3<bool>(false, arg_0, !arg_2.c), !(!(!vec3<bool>(true, false, arg_2.c))), true), vec2<bool>(false, arg_2.c));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !vec4<bool>(true, 37535u >= (0u & abs(u_input.a.x)), !any(vec3<bool>(false, false, true)), any(vec3<bool>(true, false, all(vec2<bool>(false, true)))));
    var var_1 = func_6(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(968f * _wgslsmith_f_op_f32(f32(-1f) * -1501f))) == _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(1246f)), _wgslsmith_f_op_f32(f32(-1f) * -294f)), i32(-1i) * -min(abs(1i), ~(-1i)), func_5(select(select(select(vec2<bool>(true, var_0.x), vec2<bool>(true, var_0.x), vec2<bool>(false, var_0.x)), !vec2<bool>(var_0.x, var_0.x), true), var_0.zx, var_0.ww), func_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f - 418f), _wgslsmith_f_op_f32(select(-265f, 541f, var_0.x))), Struct_2(_wgslsmith_f_op_f32(sign(-2174f)), u_input.a.yz >> (vec2<u32>(0u, u_input.a.x) % vec2<u32>(32u)), var_0.x), select(vec3<bool>(true, var_0.x, true), var_0.xyw, true), !vec2<bool>(var_0.x, false))));
    var_0 = func_1(-195f, Struct_2(_wgslsmith_f_op_f32(-func_1(995f, Struct_2(1761f, var_1.b, true), vec3<bool>(true, true, var_0.x), select(var_1.d.yy, vec2<bool>(var_0.x, false), var_0.x)).c), var_1.b, ~(~var_1.b.x) <= ~(~u_input.a.x)), func_2(Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.c)), vec2<u32>(abs(u_input.a.x), u_input.a.x), true), Struct_1(var_1.a, ~(~vec2<u32>(var_1.b.x, var_1.b.x)), var_1.c, var_1.d, ~(~u_input.b)), func_5(!var_1.d.yw, Struct_1(vec2<i32>(-2147483647i, -36336i) << (u_input.a.xy % vec2<u32>(32u)), u_input.a.zx ^ u_input.a.zy, _wgslsmith_f_op_f32(abs(var_1.c)), vec4<bool>(var_1.d.x, var_0.x, var_1.d.x, var_0.x), abs(vec4<i32>(-29220i, var_1.a.x, 2147483647i, 23754i))))).yzz, !func_2(func_5(select(vec2<bool>(var_1.d.x, false), vec2<bool>(true, false), var_1.d.wz), Struct_1(var_1.a, u_input.a.zz, 1429f, vec4<bool>(true, var_0.x, var_0.x, true), var_1.e)), Struct_1(abs(vec2<i32>(2147483647i, -1i)), func_4(var_1.c, Struct_2(var_1.c, u_input.a.xy, true), Struct_1(u_input.c, vec2<u32>(23369u, 1u), var_1.c, var_1.d, var_1.e)).b, var_1.c, var_1.d, vec4<i32>(0i, var_1.e.x, var_1.a.x, -26308i)), func_5(var_0.zy, Struct_1(vec2<i32>(var_1.e.x, 1i), var_1.b, 1376f, var_1.d, var_1.e))).yw).d;
    var_1 = func_4(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1959f))))), func_5(func_2(Struct_2(func_6(false, u_input.c.x, Struct_2(792f, vec2<u32>(3554u, 82247u), true)).c, _wgslsmith_add_vec2_u32(var_1.b, vec2<u32>(20712u, var_1.b.x)), all(var_1.d)), func_4(_wgslsmith_f_op_f32(var_1.c * var_1.c), func_5(var_1.d.yx, Struct_1(var_1.a, u_input.a.zy, var_1.c, vec4<bool>(false, var_1.d.x, var_1.d.x, true), u_input.b)), Struct_1(vec2<i32>(2147483647i, -1i), vec2<u32>(u_input.a.x, 35147u), var_1.c, vec4<bool>(true, var_1.d.x, true, var_0.x), vec4<i32>(u_input.c.x, u_input.b.x, 0i, -1i))), Struct_2(func_1(var_1.c, Struct_2(452f, vec2<u32>(var_1.b.x, 2528u), false), var_0.zwy, var_0.zw).c, ~vec2<u32>(u_input.a.x, u_input.a.x), true)).xz, Struct_1(var_1.a, u_input.a.xx, var_1.c, func_2(func_5(vec2<bool>(false, var_0.x), Struct_1(u_input.b.ww, vec2<u32>(u_input.a.x, u_input.a.x), var_1.c, vec4<bool>(var_1.d.x, var_0.x, var_1.d.x, true), var_1.e)), Struct_1(vec2<i32>(u_input.b.x, var_1.a.x), vec2<u32>(u_input.a.x, 27811u), var_1.c, var_1.d, vec4<i32>(var_1.a.x, 5070i, u_input.b.x, var_1.a.x)), func_5(var_1.d.wz, Struct_1(vec2<i32>(48934i, u_input.c.x), u_input.a.xz, -1255f, vec4<bool>(var_0.x, true, var_0.x, var_0.x), var_1.e))), var_1.e)), func_6(any(vec4<bool>(var_0.x, select(var_1.d.x, true, var_1.d.x), true, true)), min(-(~var_1.a.x), _wgslsmith_sub_i32(var_1.e.x, _wgslsmith_dot_vec3_i32(u_input.b.zzx, u_input.b.wxy))), func_5(var_1.d.wx, Struct_1(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.c.x, -34266i), u_input.b.yw), ~u_input.a.xx, var_1.c, !vec4<bool>(true, true, true, var_1.d.x), vec4<i32>(1i, 1i, 1i, 1i)))));
    let var_2 = Struct_2(_wgslsmith_f_op_f32(min(var_1.c, 853f)), func_6(false, i32(-1i) * -_wgslsmith_add_i32(1i, var_1.e.x), func_5(vec2<bool>(var_1.d.x, var_1.d.x), Struct_1(-var_1.e.zw, countOneBits(u_input.a.zy), _wgslsmith_f_op_f32(select(1518f, 450f, true)), var_1.d, u_input.b & vec4<i32>(var_1.a.x, -1i, -1i, var_1.e.x)))).b, var_0.x);
    var var_3 = ~(~(vec3<u32>(u_input.a.x, 1u, 18096u) & vec3<u32>(_wgslsmith_mod_u32(33662u, u_input.a.x), ~4153u, ~15656u)));
    var var_4 = !(!var_0.x);
    var_0 = !var_1.d;
    var_3 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(select(~vec4<u32>(0u, _wgslsmith_mult_u32(66280u, 36813u), 4294967295u, var_1.b.x), _wgslsmith_div_vec4_u32(vec4<u32>(0u, ~4294967295u, u_input.a.x, ~32216u), vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), vec2<u32>(var_2.b.x, var_2.b.x)), 29265u, ~4294967295u, _wgslsmith_sub_u32(var_3.x, u_input.a.x))), func_4(var_1.c, var_2, func_6(true, _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, var_1.a.x, 25248i, 2147483647i), u_input.b), Struct_2(167f, vec2<u32>(4387u, var_2.b.x), false))).d.x), u_input.b.zyz, abs(u_input.b >> (firstTrailingBit(vec4<u32>(var_2.b.x, 103880u, 0u, var_3.x)) % vec4<u32>(32u))), abs(u_input.c.x), ~(~u_input.a));
}

