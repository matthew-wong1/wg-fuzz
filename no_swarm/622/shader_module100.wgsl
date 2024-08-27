struct Struct_1 {
    a: bool,
    b: vec2<i32>,
    c: vec2<bool>,
    d: vec4<i32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec3<bool>) -> u32 {
    var var_0 = !select(vec3<bool>(any(vec4<bool>(false, arg_0.x, false, arg_0.x)), false, arg_0.x), vec3<bool>(arg_0.x, true, arg_0.x), select(vec3<bool>(all(vec2<bool>(arg_0.x, false)), true, arg_0.x), vec3<bool>(arg_0.x, true, arg_0.x), all(vec2<bool>(true, true))));
    var var_1 = firstLeadingBit(global0.x);
    let var_2 = Struct_1(true, abs(vec2<i32>(_wgslsmith_sub_i32(u_input.b, u_input.b << (u_input.c % 32u)), ~(-u_input.b))), select(select(var_0.xy, !select(var_0.yz, vec2<bool>(false, true), arg_0.x), true), select(select(vec2<bool>(true, true), !vec2<bool>(arg_0.x, var_0.x), false), vec2<bool>(true, true), select(arg_0.xy, select(var_0.xx, var_0.zz, arg_0.x), !vec2<bool>(false, var_0.x))), !vec2<bool>(arg_0.x, true)), ~vec4<i32>(select(u_input.b, u_input.b, false), u_input.b, _wgslsmith_clamp_i32(u_input.b, -10160i, 3736i), u_input.b) >> (vec4<u32>(_wgslsmith_mult_u32(u_input.a, global0.x), _wgslsmith_dot_vec3_u32(~vec3<u32>(30546u, 1505u, global0.x), vec3<u32>(0u, 1u, 77134u)), 13985u ^ _wgslsmith_clamp_u32(u_input.c, 4294967295u, 14082u), ~(~89732u)) % vec4<u32>(32u)));
    let var_3 = _wgslsmith_f_op_f32(sign(-154f));
    let var_4 = Struct_1((_wgslsmith_f_op_f32(-426f * -125f) > _wgslsmith_f_op_f32(-var_3)) & (var_2.d.x != -(37022i | var_2.d.x)), vec2<i32>(-14055i, -countOneBits(var_2.d.x)), select(select(select(vec2<bool>(true, var_0.x), vec2<bool>(var_0.x, arg_0.x), true), var_0.xy, select(u_input.c, global0.x, true) < _wgslsmith_sub_u32(u_input.a, global0.x)), select(select(!vec2<bool>(var_2.c.x, var_0.x), vec2<bool>(var_2.a, false), vec2<bool>(var_0.x, false)), var_2.c, false), !select(!var_2.c, var_2.c, !arg_0.yx)), firstTrailingBit(-vec4<i32>(-u_input.b, select(u_input.b, -41879i, true), abs(50564i), ~u_input.b)));
    return ~0u;
}

fn func_4(arg_0: Struct_2, arg_1: vec3<u32>, arg_2: Struct_2, arg_3: Struct_1) -> f32 {
    let var_0 = firstTrailingBit(reverseBits(_wgslsmith_div_u32(u_input.c, reverseBits(arg_1.x)) << (reverseBits(_wgslsmith_clamp_u32(96750u, u_input.c, arg_1.x)) % 32u)));
    var var_1 = !select(!(!select(vec4<bool>(true, arg_0.b.c.x, false, arg_0.b.a), vec4<bool>(false, true, false, true), vec4<bool>(false, arg_3.c.x, true, false))), !vec4<bool>(arg_0.b.c.x, arg_3.c.x, true, !arg_2.b.a), !all(!vec3<bool>(arg_0.b.a, arg_2.b.a, arg_0.b.c.x)));
    global0 = vec3<u32>(4294967295u, _wgslsmith_dot_vec4_u32(~(~vec4<u32>(global0.x, arg_1.x, global0.x, arg_1.x)), vec4<u32>(87831u, 0u | abs(arg_1.x), ~(~4294967295u), _wgslsmith_clamp_u32(var_0, 41075u, 0u))), u_input.c);
    global0 = arg_1;
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-826f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(133f * 1954f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(-468f, 273f)))) + -904f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(816f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(937f, 547f))) * 1000f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1012f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1184f)) - -1069f))), true)));
    return -1102f;
}

fn func_2(arg_0: vec3<bool>, arg_1: Struct_2, arg_2: Struct_2, arg_3: bool) -> bool {
    var var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_4(Struct_2(2147483647i, arg_1.b), ~vec3<u32>(4294967295u & u_input.a, _wgslsmith_mod_u32(global0.x, global0.x), func_3(arg_0)), arg_2, Struct_1(any(vec4<bool>(false, true, arg_2.b.a, true)) & false, vec2<i32>(20444i, u_input.b), select(vec2<bool>(true, true), vec2<bool>(true, false), arg_1.b.a), vec4<i32>(_wgslsmith_mod_i32(arg_1.b.b.x, arg_1.a), arg_1.a, u_input.b >> (u_input.a % 32u), 0i))))));
    global0 = ~vec3<u32>(global0.x, global0.x, ~countOneBits(u_input.c)) >> (~vec3<u32>(func_3(vec3<bool>(arg_2.b.c.x, true, arg_2.b.c.x)), _wgslsmith_mult_u32(global0.x, u_input.c), ~global0.x) % vec3<u32>(32u));
    var_0 = _wgslsmith_f_op_f32(round(-627f));
    let var_1 = Struct_2(min(_wgslsmith_dot_vec3_i32(abs(-vec3<i32>(arg_1.b.d.x, arg_2.b.b.x, 72378i)), -min(arg_1.b.d.zxx, arg_1.b.d.xzz)), arg_2.b.d.x), arg_1.b);
    return true;
}

fn func_1() -> vec2<f32> {
    global0 = firstLeadingBit(select(firstTrailingBit(~(vec3<u32>(99655u, global0.x, 57568u) << (vec3<u32>(u_input.c, 25591u, 4294967295u) % vec3<u32>(32u)))), _wgslsmith_mod_vec3_u32(~_wgslsmith_add_vec3_u32(vec3<u32>(0u, global0.x, 1u), vec3<u32>(u_input.c, 57659u, global0.x)), vec3<u32>(_wgslsmith_sub_u32(4294967295u, 57595u), u_input.c, ~0u)), vec3<bool>(true, true, func_2(vec3<bool>(true, true, false), Struct_2(-20680i, Struct_1(false, vec2<i32>(u_input.b, u_input.b), vec2<bool>(false, true), vec4<i32>(u_input.b, u_input.b, u_input.b, 2147483647i))), Struct_2(21719i, Struct_1(true, vec2<i32>(u_input.b, -1i), vec2<bool>(false, true), vec4<i32>(-2147483647i, -1i, 4383i, u_input.b))), false) && all(vec4<bool>(true, false, true, true)))));
    let var_0 = _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1412f, -1750f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-477f, -1093f)))))));
    let var_1 = _wgslsmith_mod_u32(firstLeadingBit(_wgslsmith_sub_u32(firstTrailingBit(global0.x), ~54560u)), ~4294967295u);
    global0 = ~vec3<u32>(106649u, global0.x, ~var_1);
    global0 = _wgslsmith_sub_vec3_u32(~min(vec3<u32>(29649u, global0.x, global0.x) & vec3<u32>(var_1, 1u, global0.x), firstTrailingBit(vec3<u32>(70358u, global0.x, var_1))), min((vec3<u32>(var_1, u_input.a, 4294967295u) | vec3<u32>(u_input.a, var_1, u_input.a)) >> (abs(vec3<u32>(u_input.a, 4294967295u, u_input.c)) % vec3<u32>(32u)), ~select(vec3<u32>(u_input.a, global0.x, global0.x), vec3<u32>(0u, u_input.a, 7360u), vec3<bool>(false, false, false)))) ^ _wgslsmith_add_vec3_u32(vec3<u32>(~global0.x, 4294967295u, firstTrailingBit(4294967295u)), ~(~_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, 19513u, u_input.c), vec3<u32>(var_1, var_1, 49648u))));
    return vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-270f))), -1309f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(func_1());
    let var_1 = firstLeadingBit(global0.x) ^ firstLeadingBit(firstLeadingBit(reverseBits(0u)));
    global0 = vec3<u32>(global0.x, 22835u, _wgslsmith_mod_u32(countOneBits(var_1) >> (4294967295u % 32u), 26753u)) | ~firstLeadingBit(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.c, global0.x, var_1) ^ vec3<u32>(var_1, var_1, 3170u), vec3<u32>(u_input.a, u_input.c, var_1)));
    global0 = _wgslsmith_mult_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(u_input.c, _wgslsmith_dot_vec4_u32(vec4<u32>(global0.x, var_1, global0.x, var_1) >> (vec4<u32>(u_input.c, 69627u, u_input.a, global0.x) % vec4<u32>(32u)), min(vec4<u32>(global0.x, 51815u, 82284u, var_1), vec4<u32>(u_input.a, 0u, 0u, global0.x)))), max(firstLeadingBit(func_3(vec3<bool>(true, false, true))), min(u_input.a, var_1)), 43651u), vec3<u32>(8681u & var_1, global0.x, 50451u) >> (abs(~_wgslsmith_sub_vec3_u32(vec3<u32>(var_1, 0u, 477u), vec3<u32>(0u, 4294967295u, var_1))) % vec3<u32>(32u)));
    let var_2 = countOneBits(_wgslsmith_add_vec3_i32(vec3<i32>(2147483647i, select(_wgslsmith_mult_i32(u_input.b, 1i), 2147483647i & u_input.b, all(vec2<bool>(false, true))), (u_input.b & -23709i) ^ u_input.b), vec3<i32>(-54494i, _wgslsmith_mod_i32(-u_input.b, ~u_input.b), firstLeadingBit(~u_input.b))));
    var var_3 = !select(select(select(vec2<bool>(false, true), vec2<bool>(true, true), any(vec4<bool>(false, false, true, true))), select(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false)), select(vec2<bool>(true, false), vec2<bool>(true, true), false), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false))), vec2<bool>(true, true)), select(select(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<bool>(true, true), vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(false, false), false), true), var_0.x < 711f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.x)))) + _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(403f, var_0.x, var_0.x, 1185f) * vec4<f32>(-1047f, 1129f, var_0.x, var_0.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, 725f, var_0.x, 653f) * vec4<f32>(var_0.x, 629f, var_0.x, 876f)))))), _wgslsmith_div_u32(~abs(72248u), global0.x), abs(u_input.b));
}

