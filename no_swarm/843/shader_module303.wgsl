struct Struct_1 {
    a: bool,
    b: vec2<bool>,
    c: u32,
    d: vec4<u32>,
}

struct Struct_2 {
    a: i32,
    b: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
    d: i32,
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

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_1(arg_0: vec3<u32>, arg_1: i32) -> i32 {
    return countOneBits(max(-arg_1 ^ ~(~0i), firstLeadingBit(1i)));
}

fn func_3(arg_0: vec4<f32>, arg_1: vec3<u32>, arg_2: bool) -> vec4<u32> {
    let var_0 = !(_wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(u_input.a.x, 2147483647i, u_input.a.x)), 2147483647i) <= 1i) & !arg_2;
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_0.zx * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_0.wy + arg_0.zx)))));
    let var_2 = Struct_2(_wgslsmith_sub_i32(i32(-1i) * -u_input.a.x, abs(~0i)), ~_wgslsmith_clamp_u32(~58966u, max(4294967295u, 52049u), ~76093u));
    var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(720f, var_1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-234f, var_1.x, var_0))))));
    var_1 = arg_0.xz;
    return _wgslsmith_mod_vec4_u32(min(~vec4<u32>(var_2.b, var_2.b, arg_1.x, 624u) | ~vec4<u32>(63490u, 23771u, 1u, 37054u), ~(vec4<u32>(4294967295u, var_2.b, arg_1.x, var_2.b) & vec4<u32>(var_2.b, arg_1.x, 0u, 0u))) >> (vec4<u32>(_wgslsmith_sub_u32(1u, 63499u << (arg_1.x % 32u)), max(1u, ~arg_1.x), var_2.b, ~1u) % vec4<u32>(32u)), ~(_wgslsmith_sub_vec4_u32(vec4<u32>(var_2.b, 0u, var_2.b, var_2.b) << (vec4<u32>(arg_1.x, var_2.b, arg_1.x, 85040u) % vec4<u32>(32u)), abs(vec4<u32>(arg_1.x, var_2.b, var_2.b, arg_1.x))) << (_wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, arg_1.x, var_2.b, 50501u), vec4<u32>(9358u, 4294967295u, 42857u, arg_1.x)), _wgslsmith_mod_vec4_u32(vec4<u32>(18225u, arg_1.x, 40171u, arg_1.x), vec4<u32>(var_2.b, 53205u, 22055u, 4294967295u))) % vec4<u32>(32u))));
}

fn func_2() -> Struct_1 {
    var var_0 = true;
    var_0 = false;
    var_0 = false;
    let var_1 = vec2<bool>(abs(u_input.a.x) < 1665i, all(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), all(vec3<bool>(true, true, false)))));
    let var_2 = Struct_2(u_input.a.x, 12048u);
    return Struct_1(true, !(!vec2<bool>(false & var_1.x, true)), ~abs(var_2.b), min(vec4<u32>(1u, 1u, 27585u, ~_wgslsmith_add_u32(0u, 9991u)), select(abs(~vec4<u32>(var_2.b, 0u, var_2.b, var_2.b)), func_3(vec4<f32>(562f, -1000f, 176f, -394f), vec3<u32>(1u, 51114u, 57213u), var_1.x), vec4<bool>(true, var_1.x, true, var_2.a > u_input.a.x))));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: i32) -> Struct_2 {
    var var_0 = max(min(countOneBits(arg_2), abs(u_input.a.x)), ~_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_sub_i32(arg_1.x, arg_2), 1i, abs(arg_2), _wgslsmith_div_i32(-20283i, arg_2)), firstLeadingBit(~arg_1)));
    let var_1 = Struct_2(max(_wgslsmith_add_i32(func_1(vec3<u32>(1u, 1u, 1u), arg_2), _wgslsmith_dot_vec3_i32(arg_1.zwx, vec3<i32>(-2147483647i, 3440i, 2147483647i)) & -15451i), select(_wgslsmith_mult_i32(0i, arg_1.x & -536i), u_input.a.x | firstLeadingBit(2147483647i), arg_0.b.x)), ~0u);
    var_0 = ~(-14008i);
    var var_2 = Struct_1(!(firstTrailingBit(_wgslsmith_add_i32(arg_1.x, -49560i)) <= -(~var_1.a)), arg_0.b, var_1.b, arg_0.d);
    var var_3 = var_1;
    return Struct_2(10403i, _wgslsmith_clamp_u32(30168u, _wgslsmith_sub_u32(arg_0.c, firstTrailingBit(1u)), var_3.b));
}

fn func_5(arg_0: i32, arg_1: u32, arg_2: Struct_2, arg_3: i32) -> bool {
    var var_0 = firstLeadingBit(_wgslsmith_mod_vec4_u32(vec4<u32>(abs(firstTrailingBit(4294967295u)), abs(abs(1u)), ~arg_2.b, func_3(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(540f, -506f, -446f, 538f))), ~vec3<u32>(arg_2.b, arg_1, 83918u), any(vec3<bool>(false, false, true))).x), _wgslsmith_div_vec4_u32(~vec4<u32>(33574u, arg_1, arg_2.b, arg_1), abs(vec4<u32>(0u, 60683u, 15027u, arg_2.b))) >> (vec4<u32>(arg_2.b, 4294967295u, _wgslsmith_sub_u32(arg_2.b, arg_1), ~arg_1) % vec4<u32>(32u))));
    var_0 = ~firstTrailingBit(vec4<u32>(_wgslsmith_add_u32(abs(0u), arg_2.b), var_0.x, 0u, var_0.x));
    let var_1 = _wgslsmith_mult_u32(1u, _wgslsmith_mod_u32(var_0.x, ~func_4(Struct_1(true, vec2<bool>(true, false), var_0.x, vec4<u32>(1u, var_0.x, 20586u, 82683u)), _wgslsmith_sub_vec4_i32(vec4<i32>(-9261i, arg_2.a, arg_2.a, u_input.a.x), vec4<i32>(-36572i, 0i, arg_2.a, arg_0)), u_input.a.x & 2147483647i).b));
    var var_2 = vec3<bool>(true, !(arg_2.b < 36840u), any(!select(select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, true)), select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false), true), select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false)))));
    var var_3 = u_input.a.x >= 24685i;
    return 2147483647i > -(~(~_wgslsmith_mod_i32(u_input.a.x, 1i)));
}

fn func_6(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: u32, arg_3: Struct_2) -> StorageBuffer {
    let var_0 = arg_2;
    var var_1 = vec3<bool>(false, true, true);
    let var_2 = !vec4<bool>(!any(!vec4<bool>(arg_0.a, var_1.x, var_1.x, var_1.x)), func_5(_wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), vec2<i32>(arg_3.a, -2147483647i)), i32(-1i) * -1i, arg_3.a), 4294967295u, arg_3, 14519i), arg_0.a, false);
    var var_3 = arg_3;
    var_3 = arg_3;
    return StorageBuffer(_wgslsmith_mult_vec2_i32(abs(u_input.a.zz ^ max(u_input.a.yy, vec2<i32>(arg_3.a, -6126i))), -_wgslsmith_div_vec2_i32(vec2<i32>(u_input.a.x, 1i), vec2<i32>(u_input.a.x, -24254i) & vec2<i32>(2147483647i, var_3.a))), firstTrailingBit(u_input.a.x), _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(u_input.a.xz, _wgslsmith_add_vec2_i32(select(u_input.a.xz, u_input.a.yz, true), u_input.a.yy)), firstTrailingBit(max(_wgslsmith_mod_i32(u_input.a.x, arg_3.a), func_1(arg_1.ywx, arg_3.a)))), 1i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(-1i);
    var_0 = 5034i;
    var_0 = _wgslsmith_mult_i32(abs(1i), abs(~firstLeadingBit(u_input.a.x))) | ~(-10705i);
    var_0 = u_input.a.x;
    var_0 = u_input.a.x;
    var_0 = _wgslsmith_clamp_i32(u_input.a.x, ~1i, _wgslsmith_mult_i32(_wgslsmith_mod_i32(10716i, _wgslsmith_dot_vec3_i32(~u_input.a, abs(u_input.a))), ~func_1(_wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, 63434u, 4294967295u), vec3<u32>(1u, 0u, 1u), vec3<u32>(1u, 0u, 145281u)), _wgslsmith_add_i32(u_input.a.x, u_input.a.x))));
    let var_1 = -60042i;
    let x = u_input.a;
    s_output = func_6(Struct_1(func_5(var_1, ~_wgslsmith_clamp_u32(1u, 4294967295u, 67407u), func_4(func_2(), vec4<i32>(var_1, 0i, u_input.a.x, -1i), u_input.a.x), _wgslsmith_mod_i32(_wgslsmith_mod_i32(u_input.a.x, 24422i), -4764i)), select(vec2<bool>(true, false), select(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false)), select(vec2<bool>(true, true), vec2<bool>(true, true), true), all(vec4<bool>(false, true, false, false))), vec2<bool>(true, true)), 4294967295u, vec4<u32>(0u, 31612u, ~1u, ~4294967295u) & countOneBits(func_3(vec4<f32>(-594f, 1236f, 587f, -2568f), vec3<u32>(0u, 39463u, 115213u), true))), reverseBits(vec4<u32>(~20965u, 1u << (1u % 32u), ~(4294967295u << (0u % 32u)), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 9853u, 95818u), vec3<u32>(1u, 1u, 1u)))), _wgslsmith_sub_u32(8035u, _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(19213u, 4294967295u), firstTrailingBit(1u), countOneBits(1u), func_4(Struct_1(true, vec2<bool>(true, false), 47381u, vec4<u32>(16203u, 1u, 4294967295u, 0u)), vec4<i32>(16849i, var_1, var_1, var_1), 94803i).b), ~vec4<u32>(1u, 52457u, 11797u, 30585u))), func_4(func_2(), _wgslsmith_clamp_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(var_1, 14907i, 1i, 1i) >> (vec4<u32>(49243u, 1u, 0u, 4294967295u) % vec4<u32>(32u)), _wgslsmith_mod_vec4_i32(vec4<i32>(0i, 0i, var_1, 24173i), vec4<i32>(var_1, u_input.a.x, 36148i, var_1))), firstLeadingBit(~vec4<i32>(35423i, u_input.a.x, var_1, var_1)), -vec4<i32>(-1i, var_1, u_input.a.x, -97575i)), _wgslsmith_add_i32(u_input.a.x, ~(~52387i))));
}

