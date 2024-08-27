struct Struct_1 {
    a: i32,
    b: vec3<u32>,
    c: bool,
    d: vec2<u32>,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: vec2<u32>,
    d: bool,
}

struct Struct_3 {
    a: i32,
    b: vec4<i32>,
    c: vec3<u32>,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
    c: f32,
    d: i32,
}

struct Struct_5 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: Struct_3) -> vec4<i32> {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-402f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-688f - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(-591f)))))));
    var var_1 = vec3<bool>(arg_2.d.d, !(!(~arg_1.d.x < (34709u >> (0u % 32u)))), true);
    var var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(225f * 532f), _wgslsmith_f_op_f32(exp2(var_0.x))), 890f)));
    let var_3 = Struct_4(Struct_3(arg_2.d.a.a | arg_1.a, select(~vec4<i32>(arg_1.a, -65171i, u_input.a.x, arg_2.b.x) | vec4<i32>(4878i, arg_2.d.a.a, arg_2.b.x, arg_2.b.x), vec4<i32>(u_input.a.x, countOneBits(11214i), -2147483647i, arg_1.a), _wgslsmith_dot_vec2_u32(arg_1.b.xy, vec2<u32>(2094u, 4294967295u)) > ~4294967295u), vec3<u32>(abs(select(57794u, 24938u, true)), ~_wgslsmith_add_u32(2490u, arg_0), _wgslsmith_div_u32(arg_2.d.c.x, 1u)), arg_2.d), arg_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))), firstLeadingBit(~arg_2.d.a.a) >> ((arg_0 ^ 1u) % 32u));
    let var_4 = !arg_1.c;
    return u_input.a;
}

fn func_2(arg_0: vec3<bool>, arg_1: vec4<u32>) -> Struct_3 {
    var var_0 = all(arg_0.xy);
    let var_1 = arg_0.x;
    return Struct_3(u_input.b, min(select(_wgslsmith_sub_vec4_i32(vec4<i32>(-12658i, u_input.b, 27834i, u_input.a.x), u_input.a) & -u_input.a, u_input.a, select(!vec4<bool>(var_1, true, true, arg_0.x), vec4<bool>(false, true, arg_0.x, var_1), true)), _wgslsmith_add_vec4_i32(func_3(7986u & arg_1.x, Struct_1(u_input.a.x, arg_1.xyy, false, arg_1.yy, arg_0.x), Struct_3(1i, u_input.a, arg_1.zzz, Struct_2(Struct_1(-6729i, arg_1.wzz, false, vec2<u32>(0u, arg_1.x), false), vec4<u32>(arg_1.x, 0u, 1u, arg_1.x), vec2<u32>(4294967295u, arg_1.x), false))), countOneBits(u_input.a))), _wgslsmith_mod_vec3_u32(~arg_1.wxy, ~arg_1.wzw) ^ arg_1.xxx, Struct_2(Struct_1(u_input.a.x ^ 2147483647i, vec3<u32>(1u, 1u, 1u), true, ~_wgslsmith_mod_vec2_u32(arg_1.xy, vec2<u32>(arg_1.x, 4294967295u)), var_1), ~arg_1, ~max(arg_1.ww, arg_1.wz) ^ vec2<u32>(arg_1.x, _wgslsmith_sub_u32(20234u, 0u)), true));
}

fn func_1(arg_0: i32, arg_1: bool, arg_2: bool, arg_3: vec4<i32>) -> Struct_5 {
    var var_0 = func_2(!(!vec3<bool>(true, !arg_2, true)), ~(~vec4<u32>(1u, 1u, 1u, 1u) & _wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(0u, 4294967295u, 25324u, 0u), vec4<u32>(33264u, 4294967295u, 30982u, 19234u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 51121u, 0u, 19059u), vec4<u32>(52348u, 0u, 0u, 4294967295u), vec4<u32>(1u, 1u, 49700u, 35696u)))));
    let var_1 = _wgslsmith_sub_vec3_i32(vec3<i32>(2147483647i, ~u_input.a.x, 0i), -select(abs(vec3<i32>(-2147483647i, -1i, 0i)) & vec3<i32>(u_input.b, 25574i, arg_3.x), arg_3.xwx, !select(vec3<bool>(arg_2, false, var_0.d.d), vec3<bool>(arg_1, true, false), true)));
    let var_2 = !func_2(select(vec3<bool>(arg_2, var_0.d.d, true), vec3<bool>(true, 0u > var_0.c.x, var_0.d.d || arg_1), true), _wgslsmith_sub_vec4_u32(select(abs(vec4<u32>(4294967295u, var_0.c.x, var_0.d.c.x, var_0.d.a.d.x)), min(var_0.d.b, var_0.d.b), true), min(var_0.d.b, var_0.d.b))).d.d;
    let var_3 = _wgslsmith_div_vec3_i32(~(-vec3<i32>(arg_3.x, arg_0, var_0.a)), vec3<i32>(~(i32(-1i) * -arg_3.x), firstTrailingBit(_wgslsmith_dot_vec2_i32(select(arg_3.wx, var_0.b.zy, true), vec2<i32>(-9960i, -49592i))), 30675i));
    var var_4 = var_0.d;
    return Struct_5(func_2(!(!vec3<bool>(var_4.d, var_0.d.d, true)), ~max(vec4<u32>(39189u, var_0.d.b.x, 4294967295u, var_0.d.a.b.x), ~var_4.b)));
}

fn func_4(arg_0: Struct_5, arg_1: vec4<f32>, arg_2: vec4<u32>) -> i32 {
    let var_0 = Struct_4(func_1(arg_0.a.d.a.a, arg_0.a.d.d, func_2(select(!vec3<bool>(arg_0.a.d.a.e, false, true), vec3<bool>(true, false, false), select(vec3<bool>(true, true, true), vec3<bool>(false, false, arg_0.a.d.a.e), arg_0.a.d.d)), vec4<u32>(countOneBits(0u), abs(30432u), arg_2.x | arg_0.a.c.x, _wgslsmith_sub_u32(9961u, 0u))).d.d, select(u_input.a, arg_0.a.b, select(func_2(vec3<bool>(arg_0.a.d.d, arg_0.a.d.a.c, arg_0.a.d.a.c), arg_0.a.d.b).d.a.e, true, any(vec4<bool>(false, false, arg_0.a.d.d, true))))).a, func_1(u_input.b, _wgslsmith_div_u32(~1u, ~arg_2.x) == ~22212u, !(!(arg_0.a.d.a.e && arg_0.a.d.d)), _wgslsmith_add_vec4_i32(~(~u_input.a), arg_0.a.b)).a.d.a, arg_1.x, 37558i);
    let var_1 = var_0;
    var var_2 = arg_0;
    var_2 = Struct_5(var_0.a);
    var var_3 = _wgslsmith_dot_vec2_u32(~(~var_1.b.b.xz), vec2<u32>(~(~(~0u)), func_2(vec3<bool>(all(vec4<bool>(arg_0.a.d.a.e, arg_0.a.d.d, true, var_0.b.e)), true, var_1.b.e), vec4<u32>(~32555u, firstTrailingBit(0u), ~arg_2.x, firstTrailingBit(4294967295u))).c.x));
    return 1i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    var var_1 = ~0u;
    var_1 = ~(~_wgslsmith_dot_vec2_u32(~vec2<u32>(81073u, 4294967295u), ~vec2<u32>(10072u, 25915u)) ^ ~4294967295u);
    var_0 = u_input.a.x != min(min(_wgslsmith_add_i32(u_input.a.x, -51069i), func_4(func_1(17742i, false, true, u_input.a), vec4<f32>(-191f, -109f, -105f, -1000f), vec4<u32>(16183u, 10907u, 43023u, 30792u))), u_input.a.x);
    var_1 = 38544u;
    let var_2 = func_2(vec3<bool>(false, false, true), _wgslsmith_add_vec4_u32(vec4<u32>(9743u, 36405u, _wgslsmith_clamp_u32(54847u, countOneBits(66069u), ~1u), 1u), vec4<u32>(30706u, ~abs(64232u), ~(~74106u), 1u)));
    var_1 = ~var_2.c.x;
    var_0 = !(!(!(false && (37805u >= var_2.c.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(select(-488f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-400f, _wgslsmith_f_op_f32(f32(-1f) * -528f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-833f)) - -1887f) < _wgslsmith_f_op_f32(-_wgslsmith_div_f32(131f, 605f)))));
}

