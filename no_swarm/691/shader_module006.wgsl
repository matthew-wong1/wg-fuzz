struct Struct_1 {
    a: i32,
    b: i32,
    c: bool,
    d: i32,
    e: i32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: bool,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3() -> i32 {
    var var_0 = ~(~(~max(vec4<u32>(8314u, 0u, 1u, 22160u), vec4<u32>(1u, u_input.a, 74279u, 0u)))) >> (vec4<u32>(1u, 32053u, u_input.a, 0u) % vec4<u32>(32u));
    var_0 = ~abs(abs(abs(vec4<u32>(38940u, 1u, 1u, 4294967295u)) ^ vec4<u32>(1u, 14140u, var_0.x, 0u)));
    let var_1 = ~_wgslsmith_add_vec4_u32(vec4<u32>(~var_0.x, var_0.x, _wgslsmith_mult_u32(1u, var_0.x), ~0u) | vec4<u32>(1u, 10202u, ~var_0.x, 123172u), vec4<u32>(var_0.x, ~var_0.x | ~u_input.a, _wgslsmith_mult_u32(8432u, var_0.x | 7893u), min(~48395u, 63u)));
    var_0 = vec4<u32>(4294967295u, 13675u, 0u, 77308u);
    var var_2 = Struct_2(~var_0.zz, false, var_1);
    return ~firstTrailingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, _wgslsmith_clamp_i32(-30416i, 2147483647i, -2147483647i), -1i), vec3<i32>(countOneBits(2147483647i), -2147483647i, -25692i)));
}

fn func_2(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: vec4<i32>, arg_3: bool) -> vec4<i32> {
    let var_0 = vec3<i32>(-countOneBits(i32(-1i) * -11174i), 35158i, select(arg_2.x & func_3(), ~(-arg_2.x), any(!vec3<bool>(true, false, arg_0.b))));
    let var_1 = Struct_1(_wgslsmith_div_i32(abs(var_0.x), ~_wgslsmith_dot_vec3_i32(-vec3<i32>(-14774i, arg_2.x, -1i), vec3<i32>(var_0.x, arg_2.x, -1i))), i32(-1i) * -1i, any(!vec4<bool>(!arg_3, arg_3, true, true)), ~abs(var_0.x), _wgslsmith_add_i32(firstLeadingBit(var_0.x), _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, arg_2.x), countOneBits(vec2<i32>(var_0.x, 51390i))), ~(~(-5693i)))));
    let var_2 = var_1;
    return firstLeadingBit(_wgslsmith_clamp_vec4_i32(vec4<i32>(arg_2.x, i32(-1i) * -13746i, _wgslsmith_sub_i32(_wgslsmith_sub_i32(var_0.x, -2147483647i), var_0.x), _wgslsmith_sub_i32(arg_2.x, 0i)), _wgslsmith_add_vec4_i32(~vec4<i32>(-11392i, 27831i, 2147483647i, var_2.b), ~(-vec4<i32>(216i, -15178i, var_2.b, var_0.x))), select(vec4<i32>(0i, 61976i, arg_2.x, 1i), _wgslsmith_mult_vec4_i32(arg_2, vec4<i32>(var_1.d, arg_2.x, -1i, arg_2.x)), select(vec4<bool>(false, arg_3, var_2.c, var_2.c), vec4<bool>(var_2.c, arg_3, true, var_2.c), true)) >> (firstLeadingBit(~vec4<u32>(38911u, u_input.b, arg_1.x, 1u)) % vec4<u32>(32u))));
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: Struct_2) -> Struct_2 {
    var var_0 = Struct_2(vec2<u32>(firstLeadingBit(_wgslsmith_sub_u32(reverseBits(arg_1.a.x), 15044u)), 1u), arg_1.b, ~(_wgslsmith_mult_vec4_u32(~arg_2.c, ~vec4<u32>(u_input.b, arg_1.a.x, u_input.b, arg_2.a.x)) | _wgslsmith_mult_vec4_u32(arg_1.c, ~vec4<u32>(arg_2.c.x, u_input.b, 0u, 1805u))));
    let var_1 = arg_1.c;
    var_0 = arg_1;
    var var_2 = all(select(!vec2<bool>(var_0.b, !var_0.b), select(!(!vec2<bool>(true, var_0.b)), vec2<bool>(var_0.b != false, select(arg_2.b, arg_1.b, arg_2.b)), arg_1.b), var_0.b));
    var var_3 = vec3<i32>(func_2(Struct_2(~(~var_0.c.xy), true && all(vec4<bool>(true, arg_1.b, var_0.b, true)), vec4<u32>(u_input.a, ~22547u, arg_1.a.x, ~var_0.a.x)), ~vec4<u32>(var_0.a.x, 92296u | var_0.c.x, 0u, _wgslsmith_div_u32(u_input.a, 20665u)), ~vec4<i32>(-50789i, -1i, arg_0.x, arg_0.x) >> (vec4<u32>(min(arg_2.c.x, arg_1.c.x), arg_1.c.x, 4294967295u, 4294967295u) % vec4<u32>(32u)), var_0.b & true).x, ~_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.x, -arg_0.x, -arg_0.x, -2147483647i), vec4<i32>(arg_0.x, arg_0.x, 0i, 23731i) << ((vec4<u32>(arg_1.a.x, 1u, arg_1.c.x, 4294967295u) & arg_1.c) % vec4<u32>(32u))), _wgslsmith_div_i32(2147483647i, func_2(Struct_2(~arg_2.a, var_0.b, vec4<u32>(arg_1.a.x, 1u, 0u, var_0.a.x)), arg_1.c, reverseBits(_wgslsmith_add_vec4_i32(vec4<i32>(1i, -2147483647i, arg_0.x, arg_0.x), vec4<i32>(1i, 3452i, arg_0.x, 2147483647i))), false).x));
    return arg_1;
}

fn func_1(arg_0: Struct_1, arg_1: bool, arg_2: vec4<i32>, arg_3: Struct_1) -> i32 {
    let var_0 = !vec4<bool>(true, !arg_3.c, !arg_1, true);
    let var_1 = func_4(min(vec4<i32>(-1i) * -vec4<i32>(arg_3.e, -8485i, 1i, 1i), _wgslsmith_clamp_vec4_i32(-vec4<i32>(2147483647i, arg_3.d, arg_2.x, -17062i), vec4<i32>(arg_2.x, arg_2.x, arg_0.b, -1i), func_2(Struct_2(vec2<u32>(0u, 4294967295u), arg_0.c, vec4<u32>(40836u, 4294967295u, 4294967295u, u_input.a)), vec4<u32>(4294967295u, 0u, 55077u, 84863u), vec4<i32>(-11212i, 0i, -8581i, 0i), false))) | ~(max(arg_2, vec4<i32>(arg_2.x, arg_3.e, 16159i, 33256i)) & ~vec4<i32>(arg_3.e, arg_0.b, 0i, arg_2.x)), Struct_2(vec2<u32>(abs(1u), ~u_input.b | u_input.a), arg_0.c, vec4<u32>(_wgslsmith_mult_u32(0u, ~u_input.b), u_input.b, ~4294967295u, ~u_input.a << (u_input.a % 32u))), Struct_2(_wgslsmith_mod_vec2_u32(vec2<u32>(abs(u_input.a), u_input.b), vec2<u32>(1u, ~u_input.a)), !all(vec3<bool>(arg_1, arg_0.c, arg_1)), ~vec4<u32>(0u, 15538u, ~u_input.a, max(u_input.b, u_input.a))));
    var var_2 = vec3<bool>(arg_1, func_4(-vec4<i32>(-arg_3.b, min(5036i, -24745i), _wgslsmith_sub_i32(arg_0.e, arg_2.x), 1i << (0u % 32u)), Struct_2(func_4(arg_2 | vec4<i32>(arg_0.d, 0i, arg_2.x, arg_2.x), Struct_2(var_1.c.ww, arg_1, vec4<u32>(var_1.a.x, var_1.a.x, u_input.b, 4294967295u)), func_4(arg_2, Struct_2(vec2<u32>(var_1.a.x, 12000u), true, vec4<u32>(83955u, 4294967295u, u_input.b, u_input.a)), Struct_2(vec2<u32>(var_1.c.x, u_input.b), var_0.x, var_1.c))).c.zw, true, _wgslsmith_add_vec4_u32(var_1.c, vec4<u32>(var_1.c.x, var_1.a.x, 17721u, 22529u))), func_4(vec4<i32>(-37526i, arg_2.x, abs(-1i), ~arg_3.e), func_4(-vec4<i32>(arg_0.b, -18192i, arg_0.a, arg_3.e), var_1, Struct_2(var_1.c.xx, arg_1, var_1.c)), var_1)).b, true);
    var_2 = !vec3<bool>(any(select(var_0.wwy, select(vec3<bool>(arg_0.c, var_1.b, var_1.b), vec3<bool>(true, var_1.b, true), var_0.xxy), !var_0.wyy)), arg_0.c, any(var_2.yx) && (1f > _wgslsmith_f_op_f32(trunc(540f))));
    let var_3 = all(var_0);
    return abs(-2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(-func_1(Struct_1(abs(2147483647i), 34559i, true, i32(-1i) * -52186i, abs(-37170i)), any(vec3<bool>(false, false, true)), firstTrailingBit(select(vec4<i32>(0i, 1i, 0i, -2147483647i), vec4<i32>(13056i, -1i, 2147483647i, 1i), true)), Struct_1(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 24574i, 2147483647i, 63625i), vec4<i32>(5289i, -33573i, 14530i, -2147483647i)), 1i, false, ~29595i, _wgslsmith_sub_i32(0i, -1i))), _wgslsmith_add_i32(_wgslsmith_div_i32(-17146i, -_wgslsmith_mod_i32(-60646i, 45320i)), -2147483647i | _wgslsmith_clamp_i32(-1i, 0i, _wgslsmith_dot_vec4_i32(vec4<i32>(-22649i, 2147483647i, -2147483647i, 24878i), vec4<i32>(-27520i, 1i, 1i, 1i)))), !(!any(vec3<bool>(false, true, true))), 14390i, -_wgslsmith_dot_vec3_i32(~vec3<i32>(-12804i, 45538i, 0i), vec3<i32>(1i, 1i, 1i)) ^ func_2(func_4(vec4<i32>(-38225i, -1i, 2147483647i, -1i), Struct_2(vec2<u32>(6306u, u_input.b), true, vec4<u32>(u_input.a, 41709u, 4294967295u, 1u)), func_4(vec4<i32>(51820i, 14502i, -9701i, 1i), Struct_2(vec2<u32>(u_input.b, u_input.b), false, vec4<u32>(4294967295u, 5927u, u_input.b, 65354u)), Struct_2(vec2<u32>(4294967295u, u_input.b), false, vec4<u32>(22645u, u_input.a, 4294967295u, 57533u)))), ~select(vec4<u32>(4294967295u, u_input.a, 0u, u_input.b), vec4<u32>(u_input.a, u_input.a, u_input.b, u_input.a), vec4<bool>(true, false, true, true)), firstLeadingBit(vec4<i32>(6667i, -2147483647i, 0i, 0i)), true).x);
    var var_1 = select(vec2<bool>(u_input.b < 0u, any(!(!vec2<bool>(var_0.c, var_0.c)))), !select(vec2<bool>(true, false), select(vec2<bool>(var_0.c, true), vec2<bool>(true, true), !vec2<bool>(true, var_0.c)), !select(vec2<bool>(var_0.c, var_0.c), vec2<bool>(false, var_0.c), vec2<bool>(var_0.c, var_0.c))), vec2<bool>(!(!(!var_0.c)), !(u_input.a != func_4(vec4<i32>(2147483647i, -2147483647i, -1i, var_0.b), Struct_2(vec2<u32>(51217u, u_input.b), false, vec4<u32>(u_input.b, u_input.b, u_input.b, 32823u)), Struct_2(vec2<u32>(u_input.b, u_input.b), false, vec4<u32>(41187u, u_input.b, u_input.a, u_input.a))).c.x)));
    var var_2 = var_0;
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1549f - _wgslsmith_div_f32(845f, _wgslsmith_f_op_f32(select(802f, 1906f, var_1.x)))))));
    var_2 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(749f, var_3, var_3), vec3<f32>(var_3, var_3, var_3)) - _wgslsmith_div_vec3_f32(vec3<f32>(var_3, -265f, var_3), vec3<f32>(var_3, -575f, var_3))) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(637f, 485f, var_3))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(509f, 743f, var_3)), var_1.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_3, -670f, var_3), vec3<f32>(-402f, -309f, var_3))) - _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-419f, 639f, 796f)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3, var_3, -1228f))))), _wgslsmith_dot_vec4_i32(firstTrailingBit(_wgslsmith_mult_vec4_i32(vec4<i32>(var_2.b, -36507i, -1i, var_0.b), firstLeadingBit(vec4<i32>(2147483647i, var_0.b, 0i, var_0.d)))), _wgslsmith_div_vec4_i32(func_2(Struct_2(vec2<u32>(70240u, u_input.b), true, vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)), vec4<u32>(0u, 11428u, u_input.a, u_input.a), vec4<i32>(var_2.e, var_0.e, var_0.e, var_2.a), false), _wgslsmith_mult_vec4_i32(vec4<i32>(var_2.d, 0i, var_0.d, var_2.a), vec4<i32>(var_0.a, -1i, -1i, var_0.d))) << (vec4<u32>(~1u, ~44912u, 33559u, u_input.b) % vec4<u32>(32u))));
}

