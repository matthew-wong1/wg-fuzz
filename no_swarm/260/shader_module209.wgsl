struct Struct_1 {
    a: bool,
    b: f32,
    c: vec3<f32>,
    d: u32,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: bool,
    d: vec4<bool>,
    e: vec3<i32>,
}

struct Struct_4 {
    a: u32,
    b: Struct_1,
    c: vec3<bool>,
    d: vec2<f32>,
}

struct Struct_5 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: f32,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 14497u;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: f32, arg_1: Struct_2, arg_2: f32) -> bool {
    var var_0 = ~_wgslsmith_mult_u32(1u, firstTrailingBit(29506u));
    global0 = reverseBits(_wgslsmith_mult_u32(~4294967295u, 1u) & ~(~_wgslsmith_dot_vec2_u32(vec2<u32>(59173u, 4294967295u), vec2<u32>(116325u, 69754u))));
    let var_1 = Struct_4(~max(~(~72136u), 1u), Struct_1(true, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(1000f)))), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(arg_2 * arg_0), arg_2, 758f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_0, arg_0, arg_0))))), countOneBits(reverseBits(2030u))), !vec3<bool>(true, !any(vec4<bool>(false, true, true, true)), any(vec4<bool>(true, false, false, true))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(arg_0 * arg_0), _wgslsmith_f_op_f32(-arg_0))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(1f, _wgslsmith_f_op_f32(f32(-1f) * -284f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-540f, arg_0) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2, -448f))))));
    var var_2 = min(reverseBits(u_input.a), 11329i);
    let var_3 = all(select(vec4<bool>(true, !(var_1.b.a | var_1.b.a), !(var_1.c.x || false), !var_1.c.x), vec4<bool>(false || all(var_1.c), true, all(!vec4<bool>(var_1.b.a, true, var_1.b.a, var_1.b.a)), false), select(vec4<bool>(all(var_1.c), var_1.c.x | false, select(false, var_1.c.x, false), true), vec4<bool>(select(var_1.b.a, true, false), var_1.c.x, var_1.c.x, all(vec2<bool>(var_1.c.x, true))), select(vec4<bool>(var_1.c.x, var_1.b.a, var_1.b.a, var_1.b.a), vec4<bool>(true, true, var_1.c.x, var_1.b.a), vec4<bool>(var_1.b.a, var_1.b.a, var_1.b.a, true)))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2), 1097f) * -1844f)) != _wgslsmith_f_op_f32(-arg_2);
}

fn func_2(arg_0: vec2<u32>) -> Struct_4 {
    let var_0 = Struct_4(85506u, Struct_1(!(!all(vec3<bool>(true, false, true))), _wgslsmith_f_op_f32(f32(-1f) * -326f), _wgslsmith_div_vec3_f32(vec3<f32>(-519f, _wgslsmith_f_op_f32(f32(-1f) * -772f), _wgslsmith_f_op_f32(f32(-1f) * -274f)), vec3<f32>(_wgslsmith_div_f32(1000f, -1099f), _wgslsmith_f_op_f32(select(759f, 1321f, false)), _wgslsmith_f_op_f32(sign(-1531f)))), arg_0.x), vec3<bool>(true, all(vec3<bool>(true, all(vec4<bool>(false, true, true, false)), true)), true), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2369f + 354f))), -2754f));
    var var_1 = Struct_1(true, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.d.x * 1000f))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(var_0.b.c))) * vec3<f32>(var_0.d.x, _wgslsmith_f_op_f32(f32(-1f) * -144f), _wgslsmith_f_op_f32(min(-254f, 946f)))), var_0.b.c), var_0.a);
    var var_2 = Struct_2(vec3<i32>(1921i, -(~_wgslsmith_div_i32(u_input.a, u_input.a)), 21658i));
    var var_3 = var_0.b.a;
    var var_4 = !vec4<bool>(any(var_0.c.yz), any(select(var_0.c.zx, var_0.c.zx, func_3(812f, Struct_2(vec3<i32>(u_input.a, -62363i, 2147483647i)), var_0.d.x))), ((true & var_0.c.x) & any(vec3<bool>(var_0.c.x, true, true))) || (false && var_1.a), all(select(vec4<bool>(false, var_0.b.a, true, var_1.a), vec4<bool>(true, var_1.a, false, var_1.a), var_1.a)) == !all(vec3<bool>(var_0.c.x, true, false)));
    return var_0;
}

fn func_4(arg_0: Struct_4, arg_1: vec2<u32>, arg_2: bool) -> i32 {
    let var_0 = any(select(select(vec2<bool>(arg_0.c.x, func_3(arg_0.b.c.x, Struct_2(vec3<i32>(u_input.a, u_input.a, 0i)), arg_0.d.x)), !(!arg_0.c.zz), arg_0.c.x), arg_0.c.zz, all(vec4<bool>(true, false, arg_0.d.x >= arg_0.d.x, arg_2))));
    return ~u_input.a;
}

fn func_5(arg_0: i32, arg_1: Struct_2, arg_2: i32, arg_3: Struct_2) -> u32 {
    let var_0 = vec4<u32>(1u, 1u, 1u, 1u);
    var var_1 = ~_wgslsmith_dot_vec3_u32(firstLeadingBit(var_0.zwz << (vec3<u32>(16987u, var_0.x, var_0.x) % vec3<u32>(32u))), ~vec3<u32>(var_0.x, var_0.x, 4294967295u) << (vec3<u32>(0u, 4294967295u, var_0.x) % vec3<u32>(32u))) ^ _wgslsmith_sub_u32(1u, 0u);
    global0 = firstLeadingBit(~firstLeadingBit(var_0.x)) << (_wgslsmith_div_u32(_wgslsmith_div_u32(func_2(_wgslsmith_sub_vec2_u32(vec2<u32>(var_0.x, var_0.x), vec2<u32>(68407u, var_0.x))).b.d, ~(~10258u)), _wgslsmith_dot_vec2_u32(var_0.yx, vec2<u32>(1u, var_0.x))) % 32u);
    var var_2 = -1837f;
    let var_3 = reverseBits(~(~var_0));
    return 4294967295u;
}

fn func_1(arg_0: vec4<f32>) -> bool {
    let var_0 = !(!(-_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(u_input.a, u_input.a, u_input.a)) == ~12639i));
    global0 = 39255u;
    var var_1 = vec3<u32>(func_5(max(_wgslsmith_sub_i32(23086i, -1i), func_4(func_2(vec2<u32>(4294967295u, 16716u)), reverseBits(vec2<u32>(0u, 23784u)), true)), Struct_2(_wgslsmith_mult_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(-1i, u_input.a, -2147483647i), vec3<i32>(u_input.a, 29489i, 1i), vec3<i32>(-2147483647i, 0i, 1i)), select(vec3<i32>(11656i, -15153i, 21482i), vec3<i32>(u_input.a, u_input.a, -15316i), vec3<bool>(var_0, var_0, var_0)))), ~abs(u_input.a) & (_wgslsmith_sub_i32(u_input.a, -39588i) | -7376i), Struct_2(_wgslsmith_sub_vec3_i32(countOneBits(vec3<i32>(-8579i, -1i, -1i)), -vec3<i32>(20876i, -88944i, -4899i)))), abs(firstTrailingBit(~45363u)) ^ 41502u, ~_wgslsmith_add_u32(1u << (~4294967295u % 32u), _wgslsmith_mod_u32(~0u, 1u)));
    let var_2 = func_2(var_1.zx).b;
    var_1 = max(~max(~_wgslsmith_sub_vec3_u32(vec3<u32>(var_2.d, 1u, var_1.x), vec3<u32>(47587u, var_2.d, var_1.x)), ~vec3<u32>(var_1.x, 26253u, 24846u) | ~vec3<u32>(var_2.d, var_2.d, 9134u)), _wgslsmith_add_vec3_u32(vec3<u32>(var_1.x, ~countOneBits(1u), 26204u), vec3<u32>(1u, _wgslsmith_add_u32(var_2.d, 1u), 35028u)));
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !vec2<bool>(true, func_1(vec4<f32>(-507f, 1f, -477f, -117f)));
    let var_1 = vec3<i32>(countOneBits(-_wgslsmith_mult_i32(u_input.a, -24822i)), u_input.a, ~_wgslsmith_sub_i32(~u_input.a, ~u_input.a)) << (vec3<u32>(28472u, min(4294967295u, ~(~25422u)), ~func_5(u_input.a, Struct_2(vec3<i32>(-14672i, 2147483647i, u_input.a)), u_input.a, Struct_2(vec3<i32>(2147483647i, u_input.a, 1i))) | firstTrailingBit(reverseBits(1u))) % vec3<u32>(32u));
    var var_2 = func_2(_wgslsmith_clamp_vec2_u32(select(max(~vec2<u32>(7302u, 17640u), ~vec2<u32>(37976u, 7623u)), vec2<u32>(77477u, ~18139u), vec2<bool>(any(vec3<bool>(true, false, var_0.x)), true)), firstTrailingBit(vec2<u32>(1u, 1u)), vec2<u32>(abs(~4294967295u), 4294967295u)));
    var var_3 = Struct_4(84376u, var_2.b, vec3<bool>(!(func_5(u_input.a, Struct_2(var_1), 7611i, Struct_2(vec3<i32>(u_input.a, -14831i, var_1.x))) < var_2.b.d), var_2.b.a, !func_2(vec2<u32>(var_2.b.d, var_2.b.d) << (vec2<u32>(var_2.b.d, 34340u) % vec2<u32>(32u))).b.a), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(step(var_2.b.c.xx, var_2.b.c.yy)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_2.d.x, -1000f))))), _wgslsmith_div_vec2_f32(var_2.b.c.yx, _wgslsmith_div_vec2_f32(var_2.d, var_2.b.c.zy)))))));
    var_0 = select(vec2<bool>(func_1(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(vec4<f32>(var_3.d.x, var_2.b.c.x, var_2.b.b, var_2.d.x), vec4<f32>(1045f, var_2.d.x, -1382f, var_3.d.x))))), var_2.b.c.x < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.b.c.x * -2324f) * var_3.b.c.x)), !var_2.c.xy, true);
    let var_4 = abs(-_wgslsmith_mod_vec2_i32(countOneBits(vec2<i32>(0i, u_input.a)) << (vec2<u32>(var_3.a, var_2.a) % vec2<u32>(32u)), vec2<i32>(u_input.a, select(-2147483647i, -2147483647i, true))));
    var var_5 = ~(~vec4<i32>(var_1.x, -1986i, countOneBits(2147483647i), -2147483647i));
    var var_6 = func_2(~abs(abs(vec2<u32>(1u, var_2.a)))).b;
    let x = u_input.a;
    s_output = StorageBuffer(1267f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.b.c.x) - var_3.b.c.x))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-389f - 1075f)), 1f) * var_2.d.x), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-450f + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(var_6.c.x, 1543f))))), var_2.d.x)), ~var_6.d);
}

