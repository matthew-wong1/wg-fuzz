struct Struct_1 {
    a: i32,
    b: f32,
    c: vec2<i32>,
    d: vec4<bool>,
    e: bool,
}

struct Struct_2 {
    a: vec4<bool>,
    b: f32,
    c: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec3<bool>,
    c: Struct_1,
    d: vec3<bool>,
    e: vec3<bool>,
}

struct Struct_4 {
    a: f32,
    b: vec4<u32>,
    c: vec2<bool>,
    d: i32,
}

struct Struct_5 {
    a: u32,
    b: vec3<f32>,
    c: Struct_4,
    d: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: u32,
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

var<private> global0: vec3<u32>;

var<private> global1: i32;

var<private> global2: array<Struct_2, 11> = array<Struct_2, 11>(Struct_2(vec4<bool>(true, true, false, false), -803f, Struct_1(-46940i, 1226f, vec2<i32>(-29796i, -14742i), vec4<bool>(true, false, false, true), true)), Struct_2(vec4<bool>(true, true, true, false), -2324f, Struct_1(-1i, -1074f, vec2<i32>(10737i, 2147483647i), vec4<bool>(true, false, true, false), true)), Struct_2(vec4<bool>(true, true, false, false), -1000f, Struct_1(-1i, -423f, vec2<i32>(8691i, 0i), vec4<bool>(true, false, false, false), false)), Struct_2(vec4<bool>(false, true, true, false), 418f, Struct_1(51789i, -270f, vec2<i32>(i32(-2147483648), -1i), vec4<bool>(false, false, false, false), true)), Struct_2(vec4<bool>(true, true, false, false), -681f, Struct_1(-14220i, 1062f, vec2<i32>(70838i, -2182i), vec4<bool>(true, true, false, false), true)), Struct_2(vec4<bool>(true, false, false, true), 374f, Struct_1(-54411i, 1241f, vec2<i32>(11437i, 1i), vec4<bool>(true, true, false, false), true)), Struct_2(vec4<bool>(true, false, true, true), -1760f, Struct_1(59989i, -466f, vec2<i32>(-1i, -5684i), vec4<bool>(false, false, false, true), true)), Struct_2(vec4<bool>(true, true, true, false), 402f, Struct_1(i32(-2147483648), -145f, vec2<i32>(-13088i, 60870i), vec4<bool>(true, true, false, true), false)), Struct_2(vec4<bool>(true, false, true, true), 522f, Struct_1(2147483647i, 330f, vec2<i32>(2147483647i, 21443i), vec4<bool>(false, true, false, false), true)), Struct_2(vec4<bool>(true, true, true, false), -1185f, Struct_1(2147483647i, 393f, vec2<i32>(59278i, 40411i), vec4<bool>(true, false, true, false), true)), Struct_2(vec4<bool>(false, true, false, false), 1370f, Struct_1(10401i, 1588f, vec2<i32>(-65599i, 17029i), vec4<bool>(false, false, true, false), false)));

var<private> global3: bool;

var<private> global4: Struct_3;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec2<f32>) -> vec4<bool> {
    global2 = array<Struct_2, 11>();
    let var_0 = ~vec3<i32>(0i, firstLeadingBit(-u_input.a), u_input.a);
    let var_1 = vec3<i32>(global4.c.a, -31065i, -_wgslsmith_mod_i32(abs(1i), u_input.a));
    var var_2 = vec3<i32>(_wgslsmith_div_i32(-7757i, -8158i), -var_0.x, _wgslsmith_sub_i32(abs(u_input.a), var_0.x) << ((~abs(u_input.b) & firstTrailingBit(u_input.b)) % 32u));
    return !(!global4.c.d);
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: i32) -> f32 {
    let var_0 = countOneBits(~52252u << (global0.x % 32u));
    var var_1 = Struct_3(true, !vec3<bool>(true, any(func_3(vec2<f32>(global4.c.b, 309f)).yy), all(vec3<bool>(arg_0.e, global4.a, global4.e.x))), arg_0, vec3<bool>(true, true, !global4.d.x), vec3<bool>(!any(vec4<bool>(arg_0.d.x, true, false, global4.c.e)), true, all(!select(global4.c.d, arg_0.d, vec4<bool>(global4.e.x, true, false, arg_0.d.x)))));
    global4 = Struct_3(all(vec4<bool>(global4.a, select(true, var_1.a, false) || any(vec4<bool>(false, global4.d.x, arg_0.e, false)), all(select(var_1.c.d, arg_0.d, var_1.d.x)), false)), select(func_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-2365f, 1320f))))).wwy, select(vec3<bool>(arg_0.d.x, true, !arg_0.e), vec3<bool>(!arg_0.d.x, global4.d.x & true, select(global4.c.e, global4.c.d.x, true)), select(!vec3<bool>(arg_0.e, arg_0.d.x, false), arg_0.d.wwx, vec3<bool>(true, arg_0.e, var_1.e.x))), vec3<bool>(any(!vec2<bool>(var_1.a, arg_0.e)), !global4.a, false)), Struct_1(arg_2, 1000f, -abs(global4.c.c), vec4<bool>(~var_0 < global0.x, any(!vec2<bool>(true, var_1.b.x)), firstTrailingBit(var_0) < reverseBits(0u), true), any(var_1.b)), select(global4.b, func_3(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(512f, -489f))))).yzy, false && any(vec4<bool>(arg_0.e, global4.e.x, global4.a, arg_0.e))), var_1.b);
    var var_2 = vec4<i32>(arg_2, _wgslsmith_dot_vec3_i32(abs(~_wgslsmith_add_vec3_i32(vec3<i32>(arg_1, arg_1, 3738i), vec3<i32>(arg_2, global4.c.c.x, arg_2))), vec3<i32>(firstLeadingBit(_wgslsmith_clamp_i32(1i, -1i, -2147483647i)), _wgslsmith_dot_vec2_i32(~vec2<i32>(arg_2, arg_2), arg_0.c), _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.c.c.x, u_input.a, arg_1, arg_0.a), vec4<i32>(arg_0.a, arg_2, 16788i, 1i)), 1i))), ~(firstTrailingBit(_wgslsmith_add_i32(u_input.a, global4.c.a)) >> (13442u % 32u)), -_wgslsmith_add_i32(~arg_0.a, 0i));
    global2 = array<Struct_2, 11>();
    return _wgslsmith_f_op_f32(select(-719f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(195f * -2093f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4.c.b - _wgslsmith_f_op_f32(258f + global4.c.b)))), all(arg_0.d)));
}

fn func_2(arg_0: Struct_2) -> i32 {
    var var_0 = Struct_4(_wgslsmith_f_op_f32(func_4(Struct_1(firstTrailingBit(arg_0.c.a), _wgslsmith_f_op_f32(arg_0.b - -224f), abs(global4.c.c), select(func_3(vec2<f32>(1013f, global4.c.b)), !vec4<bool>(true, true, false, global4.e.x), select(false, false, false)), arg_0.b <= -1037f), -(~0i), _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(arg_0.c.c.x, -2147483647i, 22958i), vec3<i32>(u_input.a, arg_0.c.a, -40018i)) ^ _wgslsmith_div_vec3_i32(vec3<i32>(10912i, 1i, -2147483647i), vec3<i32>(2147483647i, arg_0.c.c.x, u_input.a)), firstLeadingBit(vec3<i32>(arg_0.c.a, -1i, arg_0.c.a))))), vec4<u32>(global0.x, _wgslsmith_add_u32(countOneBits(~global0.x), ~6885u), u_input.b, 45462u), select(vec2<bool>(true, (global0.x | 0u) >= u_input.b), arg_0.a.zw, false), _wgslsmith_dot_vec2_i32(arg_0.c.c, ~(-global4.c.c)));
    let var_1 = true;
    global4 = Struct_3(_wgslsmith_div_i32(-2147483647i | -arg_0.c.a, min(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.c.a, u_input.a, 4322i, -8435i), vec4<i32>(global4.c.c.x, global4.c.a, var_0.d, -2147483647i)), 1i)) != -2127i, !select(!vec3<bool>(var_0.c.x, false, true), select(global4.e, select(arg_0.c.d.xxw, arg_0.c.d.xzy, vec3<bool>(var_1, false, false)), !var_1), arg_0.a.x), Struct_1(-(~arg_0.c.a), 1214f, -(abs(vec2<i32>(2147483647i, var_0.d)) | reverseBits(vec2<i32>(-34560i, var_0.d))), select(!func_3(vec2<f32>(var_0.a, -1000f)), !vec4<bool>(var_0.c.x, true, global4.e.x, false), func_3(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(arg_0.c.b, arg_0.c.b)))).x), select(global4.c.e, global4.e.x, !var_0.c.x & !arg_0.a.x)), arg_0.a.wxz, arg_0.a.yww);
    let var_2 = ~0i;
    global3 = global4.e.x;
    return -25009i;
}

fn func_1(arg_0: Struct_3) -> vec3<u32> {
    var var_0 = arg_0.c.c.x;
    let var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_0.c.b + -1435f), _wgslsmith_div_f32(global4.c.b, _wgslsmith_f_op_f32(f32(-1f) * -384f)))), arg_0.c.b));
    var var_2 = arg_0;
    var var_3 = Struct_1(var_2.c.c.x, _wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(-233f + global4.c.b)), vec2<i32>(reverseBits(func_2(global2[_wgslsmith_index_u32(~u_input.b, 11u)])), ~(i32(-1i) * -3721i)), select(!select(var_2.c.d, arg_0.c.d, !global4.b.x), !vec4<bool>(!arg_0.c.e, true, global4.b.x, any(var_2.c.d)), arg_0.d.x), 69163u <= _wgslsmith_clamp_u32(u_input.b, _wgslsmith_dot_vec4_u32(~vec4<u32>(36319u, u_input.b, u_input.b, u_input.b), vec4<u32>(u_input.b, u_input.b, 0u, 1u)), ~global0.x));
    global2 = array<Struct_2, 11>();
    return vec3<u32>(1u, _wgslsmith_div_u32(3354u | global0.x, 0u), ~global0.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~_wgslsmith_mult_vec3_u32(~(~(~vec3<u32>(0u, global0.x, 32836u))), max(select(func_1(Struct_3(global4.b.x, global4.b, Struct_1(u_input.a, global4.c.b, vec2<i32>(-1i, u_input.a), global4.c.d, global4.b.x), global4.d, vec3<bool>(true, false, global4.d.x))), vec3<u32>(global0.x, 4294967295u, u_input.b), select(global4.b, global4.e, false)), reverseBits(firstTrailingBit(vec3<u32>(global0.x, u_input.b, 53286u)))));
    global0 = max(~select(vec3<u32>(global0.x, 28817u, _wgslsmith_add_u32(u_input.b, 71460u)), select(vec3<u32>(u_input.b, var_0.x, u_input.b), vec3<u32>(0u, 4294967295u, global0.x) << (vec3<u32>(8849u, 0u, 23119u) % vec3<u32>(32u)), !vec3<bool>(global4.c.e, global4.c.e, global4.b.x)), global4.c.d.wwx), firstLeadingBit(((vec3<u32>(27316u, 47949u, 38627u) << (vec3<u32>(u_input.b, global0.x, 23607u) % vec3<u32>(32u))) | ~vec3<u32>(var_0.x, 0u, u_input.b)) & ~(vec3<u32>(4294967295u, 51863u, var_0.x) & vec3<u32>(62064u, 19171u, global0.x))));
    global3 = true;
    let var_1 = ~firstLeadingBit(vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(82418u, 1u, global0.x), vec3<u32>(u_input.b, global0.x, global0.x)), 1u, firstLeadingBit(4294967295u))) | _wgslsmith_div_vec3_u32(firstLeadingBit(max(~vec3<u32>(33742u, global0.x, 1u), vec3<u32>(var_0.x, 1u, 4294967295u))), ~vec3<u32>(0u, 74092u >> (u_input.b % 32u), 1u));
    let var_2 = Struct_5(0u, _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global4.c.b, global4.c.b, 1103f))) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global4.c.b, global4.c.b, global4.c.b)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global4.c.b, -132f, global4.c.b) * vec3<f32>(global4.c.b, global4.c.b, 531f)), vec3<bool>(false, global4.a, global4.c.d.x)))))), Struct_4(180f, ~(~select(vec4<u32>(65630u, 64527u, var_0.x, 73142u), vec4<u32>(8547u, 1u, var_0.x, u_input.b), true)), vec2<bool>(global4.a | true, true), -2147483647i), Struct_3(global4.a, select(vec3<bool>(true, any(vec4<bool>(global4.e.x, global4.b.x, global4.a, true)), true), select(global4.c.d.xxz, !global4.d, true), vec3<bool>(true, global4.c.a >= -16888i, global4.c.e)), global4.c, select(func_3(vec2<f32>(global4.c.b, -341f)).xwz, vec3<bool>(global4.a || global4.e.x, global4.c.c.x <= global4.c.a, true), !(!global4.d)), select(!(!vec3<bool>(false, global4.e.x, true)), select(global4.d, select(vec3<bool>(global4.a, global4.e.x, global4.d.x), vec3<bool>(global4.a, global4.b.x, true), true), false), !global4.b.x)));
    global4 = Struct_3(!(true || (_wgslsmith_f_op_f32(ceil(1231f)) >= -1174f)), var_2.d.d, Struct_1(2147483647i, 1969f, firstTrailingBit(vec2<i32>(global4.c.c.x & -4532i, 1i)), var_2.d.c.d, global4.b.x), !vec3<bool>(all(vec3<bool>(var_2.d.b.x, true, true)), !(global0.x <= 73367u), global4.e.x), func_3(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(var_2.b.zx + var_2.b.yz), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_2.c.a, -409f)))))))).xwx);
    let var_3 = vec3<i32>(~(~(i32(-1i) * -2147483647i) >> ((~0u ^ global0.x) % 32u)), ~42562i, ~_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(var_2.c.d, -1i, u_input.a, var_2.c.d), vec4<i32>(var_2.d.c.a, 2147483647i, 11697i, global4.c.a)), vec4<i32>(62106i, 0i, var_2.d.c.a, u_input.a)), vec4<i32>(-42981i, 1i, u_input.a, u_input.a) << (var_2.c.b % vec4<u32>(32u))));
    let var_4 = abs(21721i) >> (global0.x % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.c.a)) + global4.c.b)));
}

