struct Struct_1 {
    a: vec3<f32>,
    b: vec3<u32>,
    c: u32,
    d: vec2<f32>,
    e: vec3<f32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
    d: vec3<u32>,
    e: vec4<f32>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec3<u32>,
    c: Struct_2,
    d: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
    d: vec4<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec3<i32>(1i, -4431i, 2147483647i), vec3<u32>(13442u, 4294967295u, 4294967295u), Struct_2(1u, Struct_1(vec3<f32>(1000f, -1970f, 1000f), vec3<u32>(4294967295u, 8912u, 4294967295u), 60326u, vec2<f32>(236f, 1089f), vec3<f32>(-969f, -375f, 1325f)), Struct_1(vec3<f32>(-1439f, 303f, 2703f), vec3<u32>(30556u, 3847u, 27480u), 26353u, vec2<f32>(275f, -155f), vec3<f32>(-825f, 804f, 2337f)), vec3<u32>(0u, 13221u, 1u), vec4<f32>(-456f, -487f, -221f, 1000f)), 1626f);

var<private> global1: i32;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec2<bool>) -> f32 {
    global1 = abs(0i);
    var var_0 = Struct_1(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-1055f - global0.d), global0.c.e.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.d) + global0.c.c.a.x)), vec3<f32>(global0.c.e.x, 1002f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(global0.d)))))), firstTrailingBit(~_wgslsmith_add_vec3_u32(select(vec3<u32>(u_input.b, 14074u, global0.c.c.b.x), vec3<u32>(34881u, global0.c.b.b.x, global0.b.x), vec3<bool>(arg_0.x, arg_0.x, arg_0.x)), _wgslsmith_div_vec3_u32(vec3<u32>(52022u, 0u, 4294967295u), global0.c.b.b))), u_input.a.x, global0.c.b.e.yx, _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.d, _wgslsmith_f_op_f32(select(184f, 1f, !arg_0.x)), global0.c.e.x)));
    global0 = Struct_3(reverseBits(vec3<i32>(1i << (_wgslsmith_mod_u32(var_0.c, 1u) % 32u), select(abs(global0.a.x), 18076i, arg_0.x), 21006i)), global0.c.b.b, Struct_2(~(~global0.c.c.b.x), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1031f, var_0.e.x, -178f)) - _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(675f, 378f, -573f)))), _wgslsmith_mult_vec3_u32(vec3<u32>(50645u, 51359u, u_input.b) << (vec3<u32>(0u, u_input.a.x, 0u) % vec3<u32>(32u)), global0.c.d), ~(~85448u), var_0.e.zy, var_0.e), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -275f), _wgslsmith_f_op_f32(-global0.d), _wgslsmith_f_op_f32(ceil(global0.c.e.x))), abs(~global0.c.b.b), 4294967295u, var_0.d, _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1406f, global0.c.e.x, 490f))))), vec3<u32>(select(42848u, global0.c.c.b.x, arg_0.x), 1u, _wgslsmith_mult_u32(u_input.b, var_0.c)) & _wgslsmith_add_vec3_u32(vec3<u32>(58863u, 7193u, u_input.a.x), countOneBits(vec3<u32>(64850u, 31426u, global0.c.a))), vec4<f32>(_wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(sign(-349f)), global0.d, _wgslsmith_div_f32(_wgslsmith_div_f32(205f, 1046f), _wgslsmith_f_op_f32(-global0.d)))), var_0.e.x);
    let var_1 = u_input.a.x;
    let var_2 = _wgslsmith_add_vec2_i32(_wgslsmith_div_vec2_i32(abs(select(vec2<i32>(global0.a.x, u_input.d.x), global0.a.yx, arg_0)), vec2<i32>(i32(-1i) * -18841i, u_input.c)), select(vec2<i32>(-1i) * -_wgslsmith_mod_vec2_i32(vec2<i32>(-1i, 0i), u_input.d.ww), vec2<i32>(0i, u_input.d.x), false | (any(vec4<bool>(arg_0.x, false, true, arg_0.x)) | arg_0.x)));
    return -785f;
}

fn func_2(arg_0: vec4<u32>) -> bool {
    let var_0 = !select(vec4<bool>(-731f >= _wgslsmith_f_op_f32(func_3(vec2<bool>(true, false))), true, u_input.c < max(1i, -2698i), true), select(select(select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, true), true), select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, false), true), true), vec4<bool>(u_input.d.x < -51138i, select(false, false, false), select(false, true, true), true), any(vec4<bool>(false, true, false, false))), true);
    global1 = countOneBits(-6324i);
    global1 = _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(abs(select(16348i, 1i, var_0.x)), 1i, firstLeadingBit(u_input.c)), select(vec3<i32>(global0.a.x, -26118i, 0i), ~u_input.d.yyw, all(vec2<bool>(false, var_0.x)))), u_input.c);
    global0 = Struct_3(-firstTrailingBit(-vec3<i32>(-33453i, global0.a.x, global0.a.x)), u_input.e.zwx, global0.c, _wgslsmith_f_op_f32(-global0.d));
    var var_1 = min(countOneBits(_wgslsmith_add_u32(82352u ^ arg_0.x, ~arg_0.x | ~u_input.e.x)), 26329u);
    return any(select(select(var_0, !(!vec4<bool>(var_0.x, true, true, var_0.x)), !var_0), select(!select(vec4<bool>(var_0.x, true, var_0.x, false), var_0, true), vec4<bool>(!var_0.x, all(vec4<bool>(false, false, var_0.x, var_0.x)), false | var_0.x, var_0.x), !vec4<bool>(var_0.x, false, var_0.x, var_0.x)), !vec4<bool>(global0.d >= -711f, select(true, var_0.x, true), select(false, false, var_0.x), select(true, false, var_0.x))));
}

fn func_4(arg_0: vec2<bool>, arg_1: vec2<i32>, arg_2: Struct_2, arg_3: Struct_3) -> Struct_2 {
    global1 = -min(firstLeadingBit(arg_1.x), _wgslsmith_dot_vec2_i32(select(global0.a.yy, vec2<i32>(global0.a.x, 26664i), arg_0), ~min(arg_3.a.zz, arg_1)));
    return Struct_2(~arg_3.c.a, arg_3.c.b, arg_3.c.c, select(countOneBits(global0.c.d), countOneBits(reverseBits(arg_3.b)), !arg_0.x && (arg_1.x <= ~arg_1.x)), _wgslsmith_f_op_vec4_f32(arg_2.e * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3.d, global0.c.e.x, arg_2.e.x, 226f) * vec4<f32>(arg_2.c.a.x, -179f, 331f, 676f)), _wgslsmith_f_op_vec4_f32(round(arg_3.c.e)))) - _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_2.c.d.x, global0.c.b.e.x, 115f, -119f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(980f, arg_2.c.e.x, -1147f, 864f)))))));
}

fn func_1(arg_0: u32) -> Struct_2 {
    return func_4(select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, func_2(vec4<u32>(4294967295u, 6711u, u_input.b, global0.b.x)))), select(vec2<bool>(any(vec4<bool>(true, false, false, true)), 15953u != u_input.a.x), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false)), _wgslsmith_mod_u32(0u, 30264u) < (u_input.e.x & 64975u)), 4294967295u >= global0.c.d.x), u_input.d.wz, global0.c, Struct_3(countOneBits(_wgslsmith_mult_vec3_i32(vec3<i32>(-1i, u_input.c, 2147483647i), max(vec3<i32>(21663i, global0.a.x, u_input.d.x), vec3<i32>(10233i, u_input.d.x, u_input.d.x)))), vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, arg_0, 0u, 19954u), ~u_input.e), 4294967295u, u_input.a.x), global0.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.d - _wgslsmith_f_op_f32(global0.d * global0.d)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-730f - global0.c.c.e.x)))));
}

fn func_5(arg_0: Struct_2) -> bool {
    var var_0 = _wgslsmith_mod_i32(-13770i, _wgslsmith_sub_i32(1i, -1i));
    global1 = ~_wgslsmith_add_i32(~(~(-21430i)), _wgslsmith_clamp_i32(global0.a.x, (i32(-1i) * -40789i) >> (1u % 32u), _wgslsmith_dot_vec3_i32(global0.a, u_input.d.zyy) ^ global0.a.x));
    return any(!(!vec2<bool>(true, -2147483647i > u_input.d.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0.c;
    let var_1 = Struct_3(_wgslsmith_add_vec3_i32(~(-(~global0.a)), ~abs(-u_input.d.wyz)), select(max(max(global0.c.c.b, var_0.c.b) & vec3<u32>(4294967295u, u_input.e.x, 62007u), ~(~global0.c.b.b)), var_0.c.b | var_0.d, func_5(func_1(u_input.a.x))), func_4(!vec2<bool>(true, u_input.b > u_input.e.x), _wgslsmith_mod_vec2_i32(-vec2<i32>(global0.a.x, -4985i), vec2<i32>(-u_input.d.x, u_input.c)), global0.c, Struct_3(global0.a, ~abs(vec3<u32>(40807u, 44794u, 45324u)), Struct_2(4294967295u, func_4(vec2<bool>(false, true), u_input.d.xw, global0.c, Struct_3(global0.a, vec3<u32>(var_0.c.b.x, 1u, 52914u), global0.c, -1244f)).c, Struct_1(var_0.b.a, vec3<u32>(1u, 0u, u_input.b), global0.b.x, vec2<f32>(-1207f, global0.d), vec3<f32>(-480f, 965f, -303f)), vec3<u32>(global0.b.x, u_input.a.x, 14803u), _wgslsmith_f_op_vec4_f32(-var_0.e)), global0.c.b.e.x)), _wgslsmith_div_f32(var_0.e.x, var_0.e.x));
    global0 = Struct_3(~_wgslsmith_add_vec3_i32(global0.a, vec3<i32>(64325i, 37636i, -2147483647i)) & u_input.d.wyy, vec3<u32>(~global0.b.x, ~var_1.c.c.c, global0.b.x) | global0.c.c.b, Struct_2(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(u_input.e << (vec4<u32>(var_0.c.c, u_input.e.x, 37931u, global0.b.x) % vec4<u32>(32u)), u_input.e), firstLeadingBit(vec4<u32>(var_1.b.x, var_1.b.x, 135221u, var_1.c.d.x))), Struct_1(_wgslsmith_f_op_vec3_f32(ceil(var_1.c.b.a)), vec3<u32>(var_1.c.d.x, global0.b.x, var_1.c.d.x), countOneBits(u_input.b) & var_0.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1442f, var_0.e.x))), global0.c.c.a), var_1.c.b, ~abs(~vec3<u32>(global0.c.c.b.x, global0.b.x, 4294967295u)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(var_0.e)))))), _wgslsmith_div_f32(1707f, var_0.b.e.x));
    let var_2 = func_4(vec2<bool>(true, any(!select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), false))), var_1.a.xx, func_4(select(vec2<bool>(true, true), vec2<bool>(true, true), true), u_input.d.xw, func_4(!select(vec2<bool>(true, true), vec2<bool>(true, true), false), global0.a.zx ^ min(vec2<i32>(26857i, var_1.a.x), vec2<i32>(global0.a.x, var_1.a.x)), func_4(vec2<bool>(true, true), -vec2<i32>(-2147483647i, -85892i), var_1.c, Struct_3(global0.a, vec3<u32>(global0.b.x, var_1.b.x, 4294967295u), Struct_2(var_0.c.c, Struct_1(var_0.b.e, vec3<u32>(global0.c.c.b.x, var_0.a, var_0.b.c), global0.c.b.b.x, vec2<f32>(-104f, 781f), vec3<f32>(1000f, 145f, global0.d)), var_0.c, vec3<u32>(u_input.b, 0u, var_0.c.c), vec4<f32>(-317f, var_0.e.x, 1563f, global0.c.e.x)), var_0.e.x)), var_1), var_1), Struct_3(vec3<i32>(firstTrailingBit(-31111i), firstLeadingBit(-42685i), 81891i), vec3<u32>(_wgslsmith_add_u32(global0.b.x, 0u), reverseBits(~4294967295u), ~(~52342u)), func_4(!select(vec2<bool>(false, true), vec2<bool>(false, true), false), u_input.d.zz, var_1.c, var_1), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec2<bool>(false, false))))))).b;
    global1 = min(_wgslsmith_sub_i32(var_1.a.x, u_input.d.x), var_1.a.x);
    global0 = var_1;
    let var_3 = var_1;
    var var_4 = func_1(~var_2.c);
    let var_5 = var_3.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(-173f, global0.c.c.d.x), var_2.b.x, var_4.c.b);
}

