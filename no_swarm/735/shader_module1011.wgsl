struct Struct_1 {
    a: vec3<i32>,
    b: i32,
    c: vec3<u32>,
    d: vec2<u32>,
}

struct Struct_2 {
    a: f32,
    b: bool,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec4<i32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(319f, 889f, 2410f, 844f);

var<private> global1: array<Struct_2, 4>;

var<private> global2: array<vec2<i32>, 24> = array<vec2<i32>, 24>(vec2<i32>(-15527i, -60664i), vec2<i32>(58259i, 24605i), vec2<i32>(-1i, -1i), vec2<i32>(0i, 0i), vec2<i32>(-17576i, -1336i), vec2<i32>(-28i, -35906i), vec2<i32>(1i, 69554i), vec2<i32>(0i, 1i), vec2<i32>(4526i, 25144i), vec2<i32>(0i, i32(-2147483648)), vec2<i32>(-28876i, 0i), vec2<i32>(-1i, 1i), vec2<i32>(-23211i, -43960i), vec2<i32>(2147483647i, 2147483647i), vec2<i32>(2147483647i, 0i), vec2<i32>(-21124i, i32(-2147483648)), vec2<i32>(4580i, -13795i), vec2<i32>(i32(-2147483648), 36204i), vec2<i32>(-28246i, -1i), vec2<i32>(28324i, 2147483647i), vec2<i32>(1i, -1i), vec2<i32>(17192i, -32315i), vec2<i32>(2169i, -27764i), vec2<i32>(1i, 30095i));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2) -> f32 {
    var var_0 = Struct_1(arg_1.c.a << (arg_0.c % vec3<u32>(32u)), -(~max(u_input.b.x, arg_0.a.x)) & min(u_input.b.x, -_wgslsmith_mod_i32(arg_1.c.a.x, arg_0.b)), arg_1.c.c, _wgslsmith_div_vec2_u32(arg_1.c.c.zy, vec2<u32>(18742u, 4189u << (1u % 32u))));
    let var_1 = -2147483647i;
    let var_2 = Struct_2(_wgslsmith_f_op_f32(step(1141f, -489f)), arg_1.b, Struct_1(_wgslsmith_div_vec3_i32(vec3<i32>(arg_0.b << (arg_0.c.x % 32u), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, -1i, -37516i), vec3<i32>(2147483647i, -2147483647i, 1i)), ~(-2147483647i)), var_0.a), _wgslsmith_add_i32(_wgslsmith_sub_i32(var_1, 3992i), ~var_0.a.x) << (20199u % 32u), (firstLeadingBit(arg_1.c.c) | ~vec3<u32>(var_0.c.x, arg_1.c.d.x, arg_1.c.d.x)) << (vec3<u32>(~4294967295u, var_0.c.x, _wgslsmith_mult_u32(arg_1.c.d.x, arg_1.c.d.x)) % vec3<u32>(32u)), vec2<u32>(~4294967295u, u_input.a << (arg_1.c.d.x % 32u)) ^ (vec2<u32>(1u, 1u) | select(arg_0.d, arg_0.c.xx, arg_1.b))));
    let var_3 = Struct_2(1101f, arg_1.b, Struct_1(countOneBits(firstLeadingBit(vec3<i32>(23604i, 0i, arg_0.b))) >> (vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.c.c.x, var_2.c.c.x, 0u, 35573u), vec4<u32>(u_input.a, 42947u, 40720u, arg_0.c.x)), 0u, 1u) % vec3<u32>(32u)), var_0.a.x, _wgslsmith_clamp_vec3_u32(_wgslsmith_mod_vec3_u32(var_0.c, vec3<u32>(3639u, arg_1.c.c.x, 30788u)), firstTrailingBit(firstTrailingBit(arg_1.c.c)), _wgslsmith_mult_vec3_u32(~var_2.c.c, _wgslsmith_sub_vec3_u32(arg_0.c, arg_0.c))), ~(~vec2<u32>(4294967295u, var_2.c.d.x))));
    let var_4 = var_2;
    return _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(select(var_4.a, var_3.a, true)));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec2<f32>, arg_3: bool) -> u32 {
    global2 = array<vec2<i32>, 24>();
    var var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a, arg_2.x, _wgslsmith_f_op_f32(sign(-258f)), 620f) + _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(-324f, -790f, global0.x, arg_2.x) + vec4<f32>(-1352f, 182f, -809f, -1093f)))))), vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_0.a))), global0.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(arg_2.x)))), _wgslsmith_f_op_f32(select(-2430f, arg_2.x, !arg_0.b))));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, -160f, -189f, -580f) * vec4<f32>(-297f, -1569f, -1165f, arg_2.x)) - vec4<f32>(arg_2.x, var_0.x, 1618f, 1788f)) - _wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(vec4<f32>(1600f, -1054f, arg_0.a, arg_2.x), vec4<f32>(global0.x, 583f, arg_2.x, -1001f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a, -242f, arg_0.a, var_0.x) - vec4<f32>(-194f, arg_0.a, arg_0.a, -697f))))) - vec4<f32>(arg_0.a, _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.x, -501f) + 2328f), _wgslsmith_f_op_f32(global0.x + _wgslsmith_f_op_f32(arg_0.a * arg_0.a)), _wgslsmith_f_op_f32(func_3(arg_0.c, Struct_2(-975f, false, Struct_1(vec3<i32>(0i, 1i, arg_1.b), u_input.b.x, vec3<u32>(1u, 0u, 1u), vec2<u32>(4294967295u, 1u))))))));
    var var_2 = any(select(select(!vec3<bool>(arg_3, arg_3, true), select(vec3<bool>(arg_3, false, false), vec3<bool>(arg_3, arg_3, arg_0.b), !arg_3), true), select(!select(vec3<bool>(false, true, arg_0.b), vec3<bool>(arg_3, arg_3, true), false), vec3<bool>(any(vec3<bool>(arg_0.b, true, false)), select(arg_0.b, false, arg_3), arg_0.b), arg_3), vec3<bool>(false, !select(arg_0.b, arg_3, true), arg_3)));
    let var_3 = true;
    return ~75612u;
}

fn func_1(arg_0: vec2<f32>, arg_1: vec4<bool>) -> bool {
    let var_0 = global1[_wgslsmith_index_u32(u_input.a, 4u)];
    var var_1 = !(firstTrailingBit(func_2(Struct_2(global0.x, var_0.b, var_0.c), var_0.c, _wgslsmith_f_op_vec2_f32(global0.ww + global0.zz), select(var_0.b, true, var_0.b))) >= ~1u);
    var var_2 = var_0.a;
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~3714u;
    let var_1 = select(!vec4<bool>(_wgslsmith_mod_i32(2147483647i, u_input.b.x) != (29660i & u_input.b.x), true, (u_input.a >= u_input.a) || any(vec2<bool>(false, true)), true), vec4<bool>(u_input.b.x > ~u_input.b.x, true || !func_1(vec2<f32>(global0.x, -290f), vec4<bool>(false, true, false, true)), true, true), all(vec3<bool>(_wgslsmith_mod_u32(var_0, 0u) > ~u_input.a, true, ~u_input.a != 0u)));
    let var_2 = vec3<f32>(global0.x, -165f, -436f);
    global1 = array<Struct_2, 4>();
    global2 = array<vec2<i32>, 24>();
    global0 = vec4<f32>(-987f, var_2.x, -456f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x)))));
    global1 = array<Struct_2, 4>();
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_div_f32(global0.x, 764f)) - _wgslsmith_f_op_vec2_f32(-global0.xw)))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-684f, 355f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec4_i32(_wgslsmith_mult_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, 24269i, u_input.b.x, 0i), vec4<i32>(u_input.b.x, u_input.b.x, -2147483647i, 2147483647i)) >> (~vec4<u32>(var_0, 37310u, u_input.a, 1u) % vec4<u32>(32u)), vec4<i32>(~5452i, _wgslsmith_dot_vec2_i32(u_input.b, vec2<i32>(-70531i, 0i)), u_input.b.x | 1i, _wgslsmith_add_i32(0i, 17815i))), abs(vec4<i32>(u_input.b.x, _wgslsmith_mod_i32(-2147483647i, u_input.b.x), _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 994i, -8747i, -51600i), vec4<i32>(-15369i, 0i, u_input.b.x, u_input.b.x)), _wgslsmith_dot_vec2_i32(global2[_wgslsmith_index_u32(46u, 24u)], vec2<i32>(u_input.b.x, u_input.b.x))))), vec3<u32>(23176u, abs(~_wgslsmith_mult_u32(29414u, u_input.a)), _wgslsmith_div_u32(firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 53740u, u_input.a, var_0), vec4<u32>(34176u, u_input.a, u_input.a, u_input.a))), 1u)), ~_wgslsmith_clamp_vec4_i32(abs(countOneBits(vec4<i32>(1i, 32786i, u_input.b.x, 16185i))), ~vec4<i32>(u_input.b.x, 1i, u_input.b.x, u_input.b.x), _wgslsmith_mod_vec4_i32(firstTrailingBit(vec4<i32>(2147483647i, -18146i, 9595i, 62888i)), ~vec4<i32>(-33045i, -15538i, u_input.b.x, u_input.b.x))), firstTrailingBit(countOneBits(vec3<i32>(u_input.b.x, u_input.b.x, -1i)) >> (~_wgslsmith_mod_vec3_u32(vec3<u32>(var_0, u_input.a, var_0), vec3<u32>(var_0, 68425u, 4294967295u)) % vec3<u32>(32u))));
}

