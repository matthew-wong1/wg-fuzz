struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: f32,
    d: f32,
    e: vec3<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
    d: vec4<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: array<Struct_1, 19>;

var<private> global2: bool;

var<private> global3: array<vec2<f32>, 7>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: i32, arg_1: vec4<u32>) -> vec3<bool> {
    var var_0 = select(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), all(vec2<bool>(true, true))), vec3<bool>(false, true, !(arg_0 == arg_0)), false), select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), !select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true)))), vec3<bool>(true, true, true));
    var var_1 = _wgslsmith_add_vec2_i32(vec2<i32>(arg_0, -abs(u_input.d)) << (global0.xy % vec2<u32>(32u)), -vec2<i32>(abs(firstLeadingBit(-37849i)), -(~(-30818i))));
    let var_2 = Struct_3(Struct_1(vec4<i32>(-1i, -15241i, var_1.x, 2147483647i)), var_1.x);
    let var_3 = Struct_1(vec4<i32>(-_wgslsmith_mult_i32(~var_1.x, _wgslsmith_dot_vec4_i32(vec4<i32>(51907i, u_input.a, -1i, 0i), var_2.a.a)), 0i, _wgslsmith_dot_vec4_i32(var_2.a.a, vec4<i32>(u_input.c, 2147483647i, select(2147483647i, -8097i, true), arg_0 ^ -1i)), u_input.a));
    var var_4 = ~_wgslsmith_div_vec2_u32(vec2<u32>(_wgslsmith_clamp_u32(~u_input.b.x, u_input.e.x | arg_1.x, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 52660u, global0.x, global0.x), arg_1)), ~(~u_input.e.x)), ~_wgslsmith_div_vec2_u32(firstTrailingBit(u_input.b), _wgslsmith_sub_vec2_u32(u_input.e.zx, vec2<u32>(arg_1.x, 0u))));
    return !select(vec3<bool>(var_0.x, any(vec4<bool>(false, var_0.x, var_0.x, var_0.x)), all(!vec4<bool>(true, var_0.x, var_0.x, false))), select(vec3<bool>(true, true, true), vec3<bool>(var_0.x, true, false == var_0.x), vec3<bool>(var_1.x <= var_3.a.x, true, any(vec3<bool>(var_0.x, true, true)))), true);
}

fn func_2(arg_0: vec4<f32>, arg_1: i32, arg_2: Struct_3, arg_3: vec4<i32>) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-arg_0.x), arg_0.x, -450f) * vec3<f32>(-2011f, arg_0.x, _wgslsmith_f_op_f32(3548f + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(678f - -944f), _wgslsmith_f_op_f32(select(arg_0.x, arg_0.x, false)))))));
    let var_1 = arg_2.a;
    var_0 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1765f - var_0.x)), var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-230f + 1464f) * 1186f))))));
    global2 = true;
    let var_2 = Struct_3(Struct_1((var_1.a << ((vec4<u32>(global0.x, global0.x, global0.x, 42713u) ^ u_input.e) % vec4<u32>(32u))) ^ ~(~vec4<i32>(-30276i, 29280i, 22455i, 1i))), _wgslsmith_add_i32(1i, _wgslsmith_mod_i32(u_input.a, _wgslsmith_add_i32(1i, -9997i))));
    return Struct_2(Struct_1(~(~(vec4<i32>(arg_2.a.a.x, var_1.a.x, var_2.b, var_2.b) >> (u_input.e % vec4<u32>(32u))))), vec2<f32>(-787f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1318f + _wgslsmith_div_f32(-1762f, var_0.x)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)))), -178f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0.x)) - _wgslsmith_f_op_f32(-1646f + 394f)) - _wgslsmith_f_op_f32(-1130f * 1180f)), -1250f)), select(!func_3(-1i, firstTrailingBit(u_input.e)), func_3(43884i, _wgslsmith_clamp_vec4_u32(~u_input.e, u_input.e, vec4<u32>(global0.x, 27344u, u_input.b.x, 1u))), !select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), var_1.a.x > 2147483647i)));
}

fn func_4(arg_0: vec3<i32>, arg_1: vec2<u32>, arg_2: Struct_2) -> i32 {
    var var_0 = Struct_3(func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.b.x, arg_2.b.x, -104f, arg_2.b.x) - _wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_2.b.x, -1512f, arg_2.b.x, 476f), vec4<f32>(arg_2.b.x, arg_2.c, -921f, arg_2.d)))) * _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(-362f, 512f, arg_2.d, arg_2.c) - vec4<f32>(arg_2.b.x, -1066f, arg_2.d, arg_2.c))))), -2147483647i, Struct_3(Struct_1(-arg_2.a.a), arg_2.a.a.x ^ _wgslsmith_div_i32(arg_0.x, 40841i)), _wgslsmith_clamp_vec4_i32(func_2(vec4<f32>(-1000f, -187f, arg_2.b.x, arg_2.d), u_input.d, Struct_3(global1[_wgslsmith_index_u32(1u, 19u)], 1i), arg_2.a.a).a.a | vec4<i32>(arg_2.a.a.x, u_input.a, arg_0.x, arg_2.a.a.x), -vec4<i32>(2147483647i, u_input.a, u_input.d, -40040i), vec4<i32>(_wgslsmith_mult_i32(u_input.d, 5536i), u_input.c, u_input.a >> (global0.x % 32u), ~u_input.d))).a, ~u_input.a);
    var var_1 = -10983i;
    var var_2 = select(true, true, arg_2.e.x);
    var var_3 = min(arg_0.xz, _wgslsmith_mod_vec2_i32(~var_0.a.a.zw, _wgslsmith_mult_vec2_i32(_wgslsmith_clamp_vec2_i32(arg_2.a.a.xz ^ vec2<i32>(0i, -1i), var_0.a.a.yw, arg_0.xx), ~vec2<i32>(-10024i, -16052i))));
    var_0 = Struct_3(arg_2.a, 65304i);
    return 15110i;
}

fn func_1() -> bool {
    let var_0 = select(vec3<bool>(true, false, true), vec3<bool>(any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), any(vec2<bool>(true, false)))), true, any(vec3<bool>(true, true, true))), !(!vec3<bool>(any(vec4<bool>(false, false, true, true)), false, true)));
    var var_1 = vec3<i32>(u_input.c ^ u_input.d, func_4(select(reverseBits(vec3<i32>(0i, 41099i, u_input.c)), vec3<i32>(u_input.d, -32104i, u_input.c), true), u_input.e.zz, func_2(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-366f, 131f, 718f, 636f))), ~2147483647i, Struct_3(Struct_1(vec4<i32>(-31272i, u_input.a, -17762i, -8239i)), 2147483647i), firstTrailingBit(vec4<i32>(u_input.d, 2147483647i, 4302i, 2147483647i)))) << (_wgslsmith_sub_u32(~global0.x, ~55591u >> ((global0.x ^ 14784u) % 32u)) % 32u), firstLeadingBit(-40273i));
    let var_2 = ~(13465u | ~(global0.x << (~0u % 32u)));
    global2 = !all(vec4<bool>(var_0.x, 1u < global0.x, var_0.x, all(var_0)));
    let var_3 = func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-511f, 339f, -1085f, -359f) + vec4<f32>(-156f, -1108f, -842f, -194f)) + vec4<f32>(1280f, 651f, -1376f, 2130f)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(179f, 1320f, 424f, 2384f)) + _wgslsmith_f_op_vec4_f32(min(vec4<f32>(299f, -1093f, -217f, -1038f), vec4<f32>(-541f, 703f, 796f, -584f)))))), u_input.c, Struct_3(global1[_wgslsmith_index_u32(global0.x, 19u)], u_input.d), vec4<i32>(u_input.c, func_4(-firstLeadingBit(vec3<i32>(var_1.x, u_input.c, -23423i)), ~(~u_input.e.zw), Struct_2(func_2(vec4<f32>(-1550f, 653f, 167f, -1148f), 3460i, Struct_3(global1[_wgslsmith_index_u32(0u, 19u)], -1i), vec4<i32>(u_input.d, u_input.c, var_1.x, u_input.c)).a, _wgslsmith_f_op_vec2_f32(-global3[_wgslsmith_index_u32(23614u, 7u)]), 739f, _wgslsmith_div_f32(-645f, -483f), vec3<bool>(var_0.x, var_0.x, var_0.x))), u_input.d, select(~(~u_input.a), ~select(var_1.x, u_input.c, var_0.x), !var_0.x))).a;
    return var_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec2<f32>, 7>();
    global3 = array<vec2<f32>, 7>();
    global0 = (~vec4<u32>(1u, _wgslsmith_mod_u32(4294967295u, global0.x), _wgslsmith_dot_vec4_u32(u_input.e, vec4<u32>(u_input.e.x, u_input.e.x, global0.x, 0u)), _wgslsmith_mult_u32(global0.x, 4052u)) ^ u_input.e) | vec4<u32>(76318u, 60488u, ~1u, firstLeadingBit(1u >> (global0.x % 32u)));
    let var_0 = !select(vec3<bool>(true, any(vec3<bool>(true, true, true)), any(select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, false)))), vec3<bool>(true, all(select(vec2<bool>(true, false), vec2<bool>(false, false), true)), !all(vec2<bool>(true, true))), any(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false))));
    var var_1 = vec3<bool>(all(vec3<bool>(func_1(), true, (global0.x | 1u) > u_input.e.x)), !(!(!all(var_0))), -_wgslsmith_add_i32(1i, max(u_input.c, -1i)) > countOneBits(u_input.d));
    var var_2 = Struct_1(func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1141f, 873f, 1690f, -1630f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(119f, 1981f, -491f, 897f)))), ~(~min(-1i, -43486i)), Struct_3(global1[_wgslsmith_index_u32(1u, 19u)], ~(-1i)), _wgslsmith_mod_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.c, u_input.a, u_input.c, -46792i), vec4<i32>(u_input.a, 1i, u_input.a, u_input.c), vec4<i32>(u_input.a, -2147483647i, u_input.c, 13514i)), vec4<i32>(u_input.c, 1189i, -2147483647i, u_input.d)) & ~(~vec4<i32>(u_input.c, u_input.d, u_input.a, 2147483647i))).a.a);
    let var_3 = true;
    let var_4 = vec3<i32>(-(u_input.a & u_input.d), max(u_input.d, 0i), 0i) & vec3<i32>(-(~_wgslsmith_clamp_i32(u_input.c, -35980i, var_2.a.x)), min(_wgslsmith_sub_i32(i32(-1i) * -1i, var_2.a.x), i32(-1i) * -32384i), -_wgslsmith_clamp_i32(1i, -1i, 0i));
    var var_5 = Struct_3(global1[_wgslsmith_index_u32(u_input.b.x, 19u)], u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_i32(reverseBits(vec2<i32>(var_2.a.x, u_input.c) ^ _wgslsmith_mod_vec2_i32(vec2<i32>(-1i, u_input.d), vec2<i32>(2147483647i, 2147483647i))), var_2.a.ww), var_2.a.x, u_input.c, ~countOneBits(~vec4<u32>(0u, 0u, u_input.e.x, u_input.b.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1427f, 106f) * -1655f))));
}

