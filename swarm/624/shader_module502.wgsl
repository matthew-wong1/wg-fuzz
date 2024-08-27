struct Struct_1 {
    a: vec3<f32>,
    b: bool,
    c: u32,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: Struct_2,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: Struct_3, arg_3: u32) -> u32 {
    let var_0 = Struct_3(Struct_2(~arg_2.a.a), ~arg_2.b, Struct_2(~vec4<u32>(57444u, 0u, 4294967295u, 4294967295u) << (vec4<u32>(countOneBits(arg_2.a.a.x), 38440u, arg_3, ~4294967295u) % vec4<u32>(32u))), arg_2.d);
    var var_1 = u_input.b.x;
    var var_2 = true;
    let var_3 = select(!vec2<bool>(true, u_input.b.x <= u_input.c.x), !select(!vec2<bool>(arg_2.d.b, arg_2.d.b), vec2<bool>(var_0.d.b, any(vec4<bool>(false, true, false, true))), select(vec2<bool>(false, var_0.d.b), select(vec2<bool>(arg_2.d.b, arg_2.d.b), vec2<bool>(false, arg_2.d.b), vec2<bool>(var_0.d.b, false)), !var_0.d.b)), select(select(vec2<bool>(true, !arg_2.d.b), vec2<bool>(true, !arg_2.d.b), true), select(!select(vec2<bool>(true, true), vec2<bool>(true, var_0.d.b), true), vec2<bool>(arg_2.d.b, !arg_2.d.b), vec2<bool>(true, true)), arg_2.d.b));
    var var_4 = var_3;
    return ~(~1328u);
}

fn func_2(arg_0: Struct_1) -> Struct_2 {
    let var_0 = u_input.a;
    var var_1 = arg_0;
    let var_2 = Struct_2(vec4<u32>(_wgslsmith_div_u32(func_3(Struct_2(vec4<u32>(1u, u_input.a, 79920u, var_1.c)), var_1.a.yz, Struct_3(Struct_2(vec4<u32>(var_0, u_input.a, 22164u, 42579u)), arg_0.c, Struct_2(vec4<u32>(30554u, u_input.a, 4294967295u, u_input.a)), arg_0), 56892u), 0u) << (firstTrailingBit(42448u) % 32u), ~u_input.a, _wgslsmith_mod_u32(29660u & max(var_1.c, 91774u), _wgslsmith_div_u32(1u, 15219u) >> (_wgslsmith_add_u32(4294967295u, var_0) % 32u)), 4294967295u));
    var_1 = arg_0;
    var var_3 = select(!vec2<bool>(true != (var_1.a.x > arg_0.a.x), var_1.b), !(!select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(var_1.b, var_1.b)), vec2<bool>(var_1.b, true))), !any(vec4<bool>(true, arg_0.b == true, arg_0.b, var_0 == var_2.a.x)));
    return Struct_2(var_2.a);
}

fn func_1(arg_0: f32, arg_1: Struct_3, arg_2: i32, arg_3: vec2<i32>) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1142f);
    let var_1 = ~(~(~vec3<u32>(arg_1.c.a.x, 43515u, 1u)) >> (arg_1.c.a.zzz % vec3<u32>(32u)));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1839f - arg_1.d.a.x)))))) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-172f, arg_0)) + 1865f))));
    var var_2 = vec2<i32>(~(~1i), (arg_2 ^ 42524i) ^ arg_2) & u_input.b.xy;
    let var_3 = func_2(arg_1.d);
    return arg_1;
}

fn func_4(arg_0: Struct_3, arg_1: Struct_3, arg_2: vec4<f32>, arg_3: Struct_1) -> f32 {
    var var_0 = func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(arg_3.a.x, 1274f))))), arg_0, max(_wgslsmith_add_i32(-_wgslsmith_sub_i32(1i, -12001i), _wgslsmith_clamp_i32(firstTrailingBit(u_input.b.x), u_input.c.x, abs(15902i))), reverseBits(1i >> ((arg_1.c.a.x | 4294967295u) % 32u))), _wgslsmith_clamp_vec2_i32((vec2<i32>(u_input.c.x, u_input.c.x) << (vec2<u32>(arg_3.c, 48249u) % vec2<u32>(32u))) >> (_wgslsmith_mult_vec2_u32(arg_1.a.a.xx, arg_0.c.a.ww) % vec2<u32>(32u)), _wgslsmith_mod_vec2_i32(u_input.b.zx, vec2<i32>(u_input.c.x, u_input.c.x) ^ u_input.b.zx), u_input.b.xz) << (arg_1.c.a.yz % vec2<u32>(32u))).a;
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(arg_2.wz)));
    let var_2 = Struct_2(~(~(~var_0.a)));
    let var_3 = (u_input.b >> ((~firstTrailingBit(vec3<u32>(arg_0.c.a.x, 1u, var_0.a.x)) << (_wgslsmith_mod_vec3_u32(vec3<u32>(var_2.a.x, 1u, 28327u), var_2.a.xwz) % vec3<u32>(32u))) % vec3<u32>(32u))) ^ u_input.b;
    let var_4 = abs(countOneBits(2143i));
    return 881f;
}

fn func_5(arg_0: u32, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: bool) -> Struct_1 {
    var var_0 = 1u;
    var var_1 = func_1(arg_1.a.x, func_1(804f, func_1(172f, Struct_3(Struct_2(vec4<u32>(4294967295u, u_input.a, arg_0, arg_1.c)), 6603u, func_2(Struct_1(arg_1.a, true, 37558u)), arg_1), countOneBits(13902i << (arg_1.c % 32u)), max(vec2<i32>(u_input.b.x, -28407i), ~u_input.b.zy)), -_wgslsmith_mod_i32(-2147483647i << (u_input.a % 32u), u_input.b.x & 1i), _wgslsmith_add_vec2_i32(~reverseBits(vec2<i32>(2147483647i, u_input.c.x)), reverseBits(u_input.c ^ vec2<i32>(u_input.c.x, u_input.c.x)))), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, _wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(u_input.b.x, -17780i, u_input.c.x, -1759i)), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.c.x, u_input.c.x, -1580i, u_input.c.x), vec4<i32>(0i, -59093i, 30321i, u_input.c.x))), 1i), u_input.b), -u_input.c).a;
    let var_2 = func_1(_wgslsmith_div_f32(947f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_1.a.x * 1916f)))), func_1(_wgslsmith_f_op_f32(-func_1(arg_1.a.x, Struct_3(Struct_2(var_1.a), arg_0, Struct_2(vec4<u32>(arg_0, arg_1.c, 1u, var_1.a.x)), arg_1), _wgslsmith_mult_i32(u_input.b.x, u_input.c.x), _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.c.x, u_input.c.x), vec2<i32>(-1i, u_input.c.x))).d.a.x), Struct_3(func_2(arg_1), var_1.a.x, func_1(-342f, Struct_3(Struct_2(vec4<u32>(11075u, u_input.a, 20984u, 4294967295u)), arg_1.c, Struct_2(vec4<u32>(u_input.a, arg_1.c, 0u, 4294967295u)), arg_1), -u_input.b.x, vec2<i32>(-1i, u_input.b.x)).a, func_1(-799f, Struct_3(Struct_2(var_1.a), 1u, Struct_2(vec4<u32>(var_1.a.x, var_1.a.x, arg_0, 0u)), Struct_1(arg_1.a, true, u_input.a)), -u_input.b.x, u_input.b.yy).d), u_input.c.x, ~u_input.c), u_input.c.x | ~(-_wgslsmith_dot_vec4_i32(vec4<i32>(26228i, -56903i, u_input.c.x, u_input.c.x), vec4<i32>(u_input.b.x, 740i, u_input.b.x, u_input.b.x))), vec2<i32>(u_input.b.x, _wgslsmith_div_i32(firstLeadingBit(select(41758i, u_input.c.x, arg_3)), u_input.c.x)));
    var_1 = Struct_2(_wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_dot_vec3_u32(~var_1.a.wwy, ~vec3<u32>(1u, 732u, arg_1.c)), _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 102734u), var_1.a.yx), var_2.d.c, 1u), 63276u, 15062u), ~firstTrailingBit(~vec4<u32>(u_input.a, 1u, u_input.a, 10465u))));
    var var_3 = func_1(-1000f, var_2, -2147483647i, ~_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.b.x, u_input.b.x), (u_input.b.xz ^ u_input.b.xx) & (u_input.b.xy ^ vec2<i32>(0i, -1i)), -countOneBits(vec2<i32>(u_input.b.x, u_input.b.x))));
    return func_1(_wgslsmith_f_op_f32(826f + var_3.d.a.x), Struct_3(var_3.a, _wgslsmith_clamp_u32(~40411u, arg_1.c, var_3.c.a.x) | var_2.b, var_3.a, func_1(-2302f, var_2, abs(13249i) ^ _wgslsmith_clamp_i32(u_input.c.x, 1i, -2147483647i), u_input.c).d), min(-6870i, u_input.c.x), -vec2<i32>(-20220i, _wgslsmith_mod_i32(u_input.c.x, ~u_input.c.x))).d;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<u32>(~u_input.a, ~7394u, ~_wgslsmith_sub_u32(~u_input.a, _wgslsmith_dot_vec3_u32(~vec3<u32>(0u, u_input.a, u_input.a), select(vec3<u32>(93915u, 0u, u_input.a), vec3<u32>(u_input.a, 4294967295u, 53024u), false))));
    var var_1 = Struct_2(~reverseBits(~(vec4<u32>(var_0.x, u_input.a, u_input.a, 37832u) >> (vec4<u32>(27263u, var_0.x, u_input.a, var_0.x) % vec4<u32>(32u)))));
    let var_2 = func_5(_wgslsmith_clamp_u32(22704u, ~1u, ~_wgslsmith_div_u32(~4294967295u, select(26443u, 4294967295u, false))), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(591f, -1000f, 225f)))), any(vec4<bool>(true, true, all(vec3<bool>(true, false, false)), any(vec3<bool>(true, true, true)))), 4294967295u), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1021f, 701f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(func_1(142f, Struct_3(Struct_2(var_1.a), u_input.a, Struct_2(vec4<u32>(21999u, 77499u, 109186u, u_input.a)), Struct_1(vec3<f32>(-1088f, 1171f, 486f), false, 1u)), -1i, u_input.c), Struct_3(Struct_2(vec4<u32>(var_1.a.x, 23972u, 57022u, 4294967295u)), var_0.x, Struct_2(vec4<u32>(var_0.x, var_1.a.x, 44131u, 0u)), Struct_1(vec3<f32>(-982f, 1656f, 760f), true, var_0.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1283f, -442f, 626f, 1000f)), Struct_1(vec3<f32>(1000f, 1398f, -1309f), true, 44364u)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1000f)))))), func_1(_wgslsmith_f_op_f32(110f - _wgslsmith_f_op_f32(-927f * -922f)), Struct_3(Struct_2(vec4<u32>(0u, 0u, 0u, var_1.a.x)), abs(92497u), Struct_2(var_1.a), Struct_1(vec3<f32>(-583f, 181f, 586f), false, 0u)), ~u_input.c.x, ~(-u_input.b.zz)).d.b & any(vec2<bool>(true, true)));
    var_1 = func_1(var_2.a.x, Struct_3(func_2(Struct_1(vec3<f32>(var_2.a.x, 1018f, var_2.a.x), true, 1u)), ~var_1.a.x, Struct_2(vec4<u32>(_wgslsmith_mod_u32(1996u, var_1.a.x), var_1.a.x, var_2.c, 1u)), Struct_1(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_2.a.x, 319f, var_2.a.x))), _wgslsmith_f_op_vec3_f32(var_2.a - vec3<f32>(var_2.a.x, 242f, 372f)))), any(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false))), 1u)), 1i, vec2<i32>(u_input.b.x, _wgslsmith_dot_vec2_i32(u_input.b.yz, u_input.c))).a;
    var var_3 = var_2.b;
    let var_4 = vec2<f32>(var_2.a.x, 342f);
    var var_5 = Struct_2(var_1.a);
    let x = u_input.a;
    s_output = StorageBuffer(-3110i, -vec4<i32>(_wgslsmith_dot_vec2_i32(~vec2<i32>(2147483647i, -2147483647i), ~u_input.c), ~countOneBits(2147483647i), _wgslsmith_mult_i32(u_input.c.x, _wgslsmith_mod_i32(u_input.c.x, u_input.b.x)), u_input.c.x), ~select(firstLeadingBit(1u), 1u, var_2.b || (u_input.b.x < u_input.c.x)));
}

