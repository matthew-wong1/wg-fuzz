struct Struct_1 {
    a: bool,
    b: i32,
    c: i32,
    d: f32,
}

struct Struct_2 {
    a: u32,
    b: f32,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec2<bool>,
    c: f32,
    d: Struct_2,
}

struct Struct_4 {
    a: vec2<i32>,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 6> = array<Struct_3, 6>(Struct_3(vec3<f32>(-980f, 1079f, -1666f), vec2<bool>(false, true), -1463f, Struct_2(114108u, 463f)), Struct_3(vec3<f32>(-884f, -1188f, 1854f), vec2<bool>(false, true), 688f, Struct_2(9151u, 853f)), Struct_3(vec3<f32>(949f, 1694f, -526f), vec2<bool>(true, true), -112f, Struct_2(4294967295u, -1511f)), Struct_3(vec3<f32>(-633f, 256f, -496f), vec2<bool>(false, false), 1103f, Struct_2(1u, -448f)), Struct_3(vec3<f32>(-370f, 826f, 377f), vec2<bool>(true, false), -866f, Struct_2(23360u, 1236f)), Struct_3(vec3<f32>(120f, -307f, -1279f), vec2<bool>(false, true), 136f, Struct_2(32667u, -1023f)));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_3, arg_2: vec4<u32>) -> f32 {
    global0 = array<Struct_3, 6>();
    let var_0 = Struct_1(false || (_wgslsmith_f_op_f32(-arg_0.x) <= -1000f), -8123i, 39698i, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_0.x, -375f)) - _wgslsmith_div_f32(-817f, _wgslsmith_f_op_f32(-arg_0.x))))));
    global0 = array<Struct_3, 6>();
    global0 = array<Struct_3, 6>();
    global0 = array<Struct_3, 6>();
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a.x))))));
}

fn func_2() -> Struct_2 {
    let var_0 = u_input.a.x >> (u_input.a.x % 32u);
    global0 = array<Struct_3, 6>();
    let var_1 = Struct_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-594f - 555f) + 934f), _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, -1000f) * vec2<f32>(1048f, 253f)), Struct_3(vec3<f32>(838f, -861f, -267f), vec2<bool>(true, true), 1000f, Struct_2(29339u, -527f)), firstTrailingBit(vec4<u32>(4294967295u, 0u, var_0, 34972u)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(521f - -107f))))), vec2<bool>(true, all(select(vec2<bool>(false, true), vec2<bool>(true, true), true))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(1055f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(442f, _wgslsmith_f_op_f32(1233f - -865f)))))), Struct_2(6009u << (var_0 % 32u), _wgslsmith_f_op_f32(ceil(354f))));
    var var_2 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(~vec4<u32>(min(u_input.a.x, var_1.d.a), 1u, var_1.d.a, min(u_input.a.x, 51633u)), vec4<u32>(abs(var_0), ~(~u_input.a.x), var_0, 1u)), vec4<u32>(min(1u, 33953u), 34787u, _wgslsmith_dot_vec3_u32(~min(u_input.a, vec3<u32>(4294967295u, 75280u, 41339u)), u_input.a), _wgslsmith_mult_u32(min(54033u, 39538u), _wgslsmith_mult_u32(~u_input.a.x, max(7465u, u_input.a.x))))), 6u)];
    let var_3 = _wgslsmith_add_u32(var_2.d.a, _wgslsmith_add_u32(_wgslsmith_add_u32(~var_1.d.a, max(var_1.d.a, ~39135u)), 45194u));
    return var_1.d;
}

fn func_1(arg_0: vec4<f32>, arg_1: vec2<u32>) -> Struct_2 {
    global0 = array<Struct_3, 6>();
    var var_0 = max(~vec2<u32>(4294967295u, u_input.a.x), ~vec2<u32>(u_input.a.x, arg_1.x));
    global0 = array<Struct_3, 6>();
    var_0 = vec2<u32>(~(~u_input.a.x), 4294967295u) & ~(abs(vec2<u32>(u_input.a.x, u_input.a.x)) & vec2<u32>(arg_1.x << (22780u % 32u), ~47267u));
    global0 = array<Struct_3, 6>();
    return func_2();
}

fn func_4(arg_0: Struct_2, arg_1: i32, arg_2: bool, arg_3: bool) -> Struct_2 {
    var var_0 = arg_0.a >> ((24926u << (max(~(arg_0.a ^ arg_0.a), ~0u | min(23513u, u_input.a.x)) % 32u)) % 32u);
    var var_1 = 20820u;
    var_0 = countOneBits(1u);
    var_1 = _wgslsmith_sub_u32(reverseBits(arg_0.a), _wgslsmith_mod_u32(4294967295u, 4294967295u));
    global0 = array<Struct_3, 6>();
    return func_2();
}

fn func_5(arg_0: u32, arg_1: Struct_3, arg_2: Struct_1, arg_3: Struct_4) -> Struct_3 {
    var var_0 = _wgslsmith_div_vec4_u32(vec4<u32>(~1u ^ firstTrailingBit(arg_1.d.a), ~(~0u), 0u, select(func_4(arg_1.d, -2147483647i, true, arg_2.a).a, arg_1.d.a, arg_1.b.x)) & ~(~vec4<u32>(4294967295u, arg_1.d.a, u_input.a.x, u_input.a.x)), _wgslsmith_mod_vec4_u32(~firstTrailingBit(abs(vec4<u32>(arg_1.d.a, 9575u, 11776u, 0u))), ~min(countOneBits(vec4<u32>(53970u, 4294967295u, 4294967295u, 5855u)), ~vec4<u32>(u_input.a.x, arg_0, arg_0, arg_1.d.a))));
    let var_1 = ~var_0.yw;
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(698f, arg_2.d, -3297f, _wgslsmith_f_op_f32(round(arg_2.d))))));
    var var_3 = _wgslsmith_f_op_vec2_f32(vec2<f32>(-244f, 1139f) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(var_2.wy))), _wgslsmith_f_op_vec2_f32(arg_1.a.yx - _wgslsmith_f_op_vec2_f32(exp2(var_2.xz)))));
    var_3 = arg_1.a.yx;
    return Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(arg_1.a.x, 1f, _wgslsmith_div_f32(var_2.x, 1000f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1501f, 312f, -530f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.x, arg_2.d, 1952f)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_1.a))), vec2<bool>(any(vec3<bool>(true, arg_2.a, all(vec3<bool>(false, arg_1.b.x, false)))), arg_2.d >= _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -726f), _wgslsmith_f_op_f32(703f - -1380f))), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-1000f, arg_2.d)), _wgslsmith_f_op_f32(-891f - _wgslsmith_f_op_f32(-arg_2.d))), _wgslsmith_f_op_f32(var_2.x * var_3.x), arg_2.a)), arg_1.d);
}

fn func_6(arg_0: Struct_3, arg_1: i32) -> StorageBuffer {
    let var_0 = u_input.a & ~u_input.a;
    var var_1 = Struct_4(_wgslsmith_clamp_vec2_i32(~vec2<i32>(u_input.b.x, ~u_input.b.x), countOneBits(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.b.x, -2147483647i) ^ vec2<i32>(arg_1, arg_1), _wgslsmith_div_vec2_i32(u_input.b.zy, vec2<i32>(2147483647i, -51948i)))), vec2<i32>(i32(-1i) * -u_input.b.x, _wgslsmith_sub_i32(-8335i, -u_input.b.x))), -(firstLeadingBit(reverseBits(vec3<i32>(-48924i, -2147483647i, u_input.b.x))) ^ vec3<i32>(_wgslsmith_sub_i32(arg_1, u_input.b.x), select(arg_1, 1i, true), _wgslsmith_mod_i32(-1i, 22210i))));
    var_1 = Struct_4(vec2<i32>(~_wgslsmith_sub_i32(-2147483647i, var_1.a.x), u_input.b.x), var_1.b);
    let var_2 = ~(~_wgslsmith_clamp_vec2_u32(~(u_input.a.xz << (u_input.a.zy % vec2<u32>(32u))), ~var_0.yz, u_input.a.xz));
    var var_3 = ~vec4<u32>(max(1u, ~var_0.x), 4294967295u, _wgslsmith_div_u32(4294967295u, max(~u_input.a.x, arg_0.d.a)), _wgslsmith_mult_u32(var_0.x, _wgslsmith_div_u32(~27207u, 4294967295u)));
    return StorageBuffer(~(~var_1.b));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_add_u32(_wgslsmith_mult_u32(50946u, u_input.a.x), u_input.a.x);
    let x = u_input.a;
    s_output = func_6(func_5(57453u, Struct_3(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -711f), -1341f, _wgslsmith_f_op_f32(sign(-1511f))), !select(vec2<bool>(false, false), vec2<bool>(true, false), false), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1533f, -644f))), func_4(func_1(vec4<f32>(194f, 1021f, 500f, 382f), vec2<u32>(1u, 30436u)), u_input.b.x, any(vec3<bool>(true, false, true)), true)), Struct_1(false, u_input.b.x, _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(u_input.b.zx, u_input.b.xy, vec2<i32>(u_input.b.x, u_input.b.x)), u_input.b.zy), 1f), Struct_4(-(vec2<i32>(2147483647i, u_input.b.x) | u_input.b.xy), u_input.b)), u_input.b.x);
}

