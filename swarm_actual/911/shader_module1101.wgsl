struct Struct_1 {
    a: vec2<f32>,
    b: i32,
    c: vec3<bool>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec4<i32>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec3<u32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: i32,
    d: vec3<f32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_2;

var<private> global2: array<vec3<f32>, 28>;

var<private> global3: array<f32, 5>;

var<private> global4: vec2<i32> = vec2<i32>(-16562i, -1i);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_3, arg_1: f32, arg_2: vec4<u32>, arg_3: vec3<i32>) -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(floor(-121f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(396f + -265f))) * _wgslsmith_f_op_vec2_f32(ceil(global1.b.a))));
    var var_1 = abs(max(~vec3<u32>(1u, firstTrailingBit(arg_0.a.x), _wgslsmith_mod_u32(arg_0.b.x, arg_0.b.x)), _wgslsmith_mod_vec3_u32(~vec3<u32>(1u, arg_0.b.x, arg_0.a.x) ^ vec3<u32>(arg_0.b.x, arg_2.x, 1u), arg_0.a.wxx)));
    var_0 = global0.a;
    var var_2 = -_wgslsmith_dot_vec3_i32(arg_0.c.c.zxy, ~global1.c.wwz | arg_3) & min(~(~_wgslsmith_dot_vec4_i32(arg_0.c.c, vec4<i32>(global4.x, -16734i, 14184i, 1i))), -39425i);
    var_2 = arg_3.x;
    return arg_0.c.b.c;
}

fn func_2(arg_0: vec2<bool>, arg_1: vec2<i32>) -> Struct_1 {
    var var_0 = Struct_2(~(_wgslsmith_mult_i32(max(-48021i, -6864i), global0.b) & (_wgslsmith_sub_i32(global0.b, global1.b.b) | 0i)), global1.b, global1.c);
    var var_1 = Struct_3(select(vec4<u32>(_wgslsmith_div_u32(1u, 1u), ~1u & firstTrailingBit(4294967295u), ~1468u, ~(~4294967295u)), vec4<u32>(1u, 1u, 1u, 1u), true != (_wgslsmith_f_op_f32(var_0.b.a.x + 262f) != _wgslsmith_f_op_f32(sign(var_0.b.a.x)))), ~(~vec3<u32>(16591u, ~1u, ~4294967295u)), Struct_2(-_wgslsmith_add_i32(-13248i, select(10057i, global1.b.b, true)), var_0.b, vec4<i32>(global4.x, _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(global1.b.b, global4.x, global0.b, global0.b), global1.c), arg_1.x), firstTrailingBit(u_input.b.x), global4.x)));
    let var_2 = !select(func_3(Struct_3(firstTrailingBit(vec4<u32>(var_1.b.x, var_1.b.x, 17100u, 4294967295u)), select(var_1.a.xyw, vec3<u32>(0u, var_1.a.x, 47209u), true), Struct_2(-9419i, Struct_1(var_1.c.b.a, arg_1.x, vec3<bool>(var_1.c.b.c.x, false, arg_0.x)), global1.c)), _wgslsmith_f_op_f32(exp2(global1.b.a.x)), ~vec4<u32>(var_1.a.x, var_1.b.x, 66384u, var_1.b.x), vec3<i32>(_wgslsmith_clamp_i32(24668i, -1i, -2147483647i), var_1.c.a, select(3720i, -34749i, global1.b.c.x))), select(vec3<bool>(global0.c.x, all(vec4<bool>(var_1.c.b.c.x, false, arg_0.x, global0.c.x)), var_1.c.b.c.x), vec3<bool>(global0.c.x, false, u_input.a < var_1.c.c.x), global0.c.x), !global1.b.c.x);
    global3 = array<f32, 5>();
    var var_3 = vec2<i32>(var_1.c.a, ~var_1.c.b.b << (countOneBits(534u) % 32u));
    return Struct_1(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(global0.a, vec2<f32>(1957f, 117f)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b.a.x, global3[_wgslsmith_index_u32(0u, 5u)])) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(global3[_wgslsmith_index_u32(36903u, 5u)], 170f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-302f, global3[_wgslsmith_index_u32(var_1.a.x, 5u)]), var_0.b.a))), func_3(Struct_3(var_1.a << (var_1.a % vec4<u32>(32u)), ~vec3<u32>(var_1.a.x, var_1.a.x, 44631u), Struct_2(global0.b, Struct_1(vec2<f32>(348f, 638f), -1i, vec3<bool>(var_0.b.c.x, true, true)), vec4<i32>(var_3.x, arg_1.x, global1.b.b, global0.b))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1849f, var_1.c.b.a.x)), _wgslsmith_mod_vec4_u32(~vec4<u32>(43796u, var_1.b.x, var_1.a.x, 761u), vec4<u32>(var_1.b.x, var_1.a.x, 47010u, var_1.a.x)), vec3<i32>(var_1.c.b.b, max(-40700i, 16098i), 31701i >> (var_1.a.x % 32u))).xz)), -55334i, select(select(select(var_0.b.c, func_3(Struct_3(vec4<u32>(var_1.a.x, var_1.b.x, 28384u, var_1.b.x), vec3<u32>(var_1.a.x, 1u, var_1.a.x), Struct_2(var_0.b.b, var_0.b, vec4<i32>(var_0.b.b, 2147483647i, var_0.a, -23994i))), -133f, vec4<u32>(54267u, 59548u, 41233u, var_1.b.x), var_1.c.c.zzy), vec3<bool>(var_1.c.b.c.x, var_1.c.b.c.x, var_1.c.b.c.x)), vec3<bool>(any(vec2<bool>(false, false)), global0.c.x, func_3(Struct_3(vec4<u32>(var_1.a.x, 16437u, 23719u, 0u), vec3<u32>(0u, var_1.a.x, var_1.a.x), var_1.c), -1987f, vec4<u32>(0u, var_1.a.x, var_1.b.x, 50159u), vec3<i32>(arg_1.x, var_1.c.c.x, 135i)).x), ~global0.b != max(-11356i, -22059i)), func_3(Struct_3(var_1.a, var_1.a.yzx, Struct_2(global4.x, Struct_1(var_1.c.b.a, -1i, vec3<bool>(false, var_1.c.b.c.x, false)), vec4<i32>(arg_1.x, global4.x, -1i, u_input.b.x))), _wgslsmith_f_op_f32(select(var_1.c.b.a.x, var_1.c.b.a.x, true)), ~reverseBits(var_1.a), _wgslsmith_mult_vec3_i32(global1.c.zwx, global1.c.wxw)), !var_0.b.c));
}

fn func_1() -> Struct_2 {
    var var_0 = ~_wgslsmith_clamp_u32(4294967295u, _wgslsmith_add_u32(1u, ~(~4223u)), 41759u);
    global2 = array<vec3<f32>, 28>();
    let var_1 = ~reverseBits(abs(global1.c.yyz));
    let var_2 = any(global1.b.c.zz);
    var var_3 = Struct_2(~countOneBits(~(-4120i)), func_2(vec2<bool>(var_2, true), vec2<i32>(-7441i, -93375i)), ~(~_wgslsmith_mod_vec4_i32(global1.c, vec4<i32>(-2147483647i, var_1.x, -16666i, 28569i))) | firstTrailingBit(global1.c));
    return Struct_2(-47152i, func_2(vec2<bool>(var_3.b.b >= _wgslsmith_dot_vec4_i32(vec4<i32>(1i, global1.c.x, global1.c.x, global1.c.x), vec4<i32>(-35155i, global0.b, u_input.a, global0.b)), _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(70722u, 5u)] + global3[_wgslsmith_index_u32(1u, 5u)]) < -1431f), var_1.xy), ~(-(~(~var_3.c))));
}

fn func_4(arg_0: Struct_2, arg_1: f32) -> Struct_1 {
    global1 = arg_0;
    var var_0 = min(~(~0u), _wgslsmith_mult_u32(20076u, 1u));
    global4 = -u_input.b;
    var var_1 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1645f), _wgslsmith_f_op_f32(global1.b.a.x - 1000f)), _wgslsmith_f_op_f32(f32(-1f) * -1962f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2971f)) + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(848f * _wgslsmith_f_op_f32(select(487f, global3[_wgslsmith_index_u32(14932u, 5u)], global1.b.c.x)))))));
    var var_2 = global1.c;
    return arg_0.b;
}

fn func_5(arg_0: Struct_1) -> bool {
    let var_0 = _wgslsmith_dot_vec2_i32(vec2<i32>(~1i, global1.c.x), -_wgslsmith_clamp_vec2_i32(u_input.b & vec2<i32>(2147483647i, u_input.a), u_input.b, _wgslsmith_mult_vec2_i32(vec2<i32>(-2147483647i, 2147483647i), global1.c.xy)) >> (select(abs(~vec2<u32>(1u, 4294967295u)), vec2<u32>(1u, 12062u), true) % vec2<u32>(32u)));
    var var_1 = u_input.b.x;
    var var_2 = vec4<bool>(global1.b.c.x || arg_0.c.x, -403f < _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(max(4294967295u, 4294967295u), 44657u >> (1u % 32u)), 5u)] - _wgslsmith_f_op_f32(-func_2(vec2<bool>(true, false), u_input.b).a.x)), func_3(Struct_3(~min(vec4<u32>(4294967295u, 0u, 75840u, 1u), vec4<u32>(0u, 31864u, 43818u, 83078u)), min(vec3<u32>(6540u, 4294967295u, 47829u), vec3<u32>(0u, 4294967295u, 1u)) | _wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, 1u, 34993u), vec3<u32>(29395u, 73248u, 1386u), vec3<u32>(4294967295u, 8054u, 4294967295u)), Struct_2(_wgslsmith_mult_i32(global1.b.b, 19791i), func_1().b, global1.c ^ vec4<i32>(arg_0.b, -2833i, u_input.b.x, 4i))), -736f, vec4<u32>(0u, abs(abs(6730u)), _wgslsmith_dot_vec3_u32(vec3<u32>(23363u, 32194u, 53044u), vec3<u32>(16290u, 14322u, 18745u)), ~1u), -max(global1.c.xyw, -vec3<i32>(26764i, arg_0.b, global4.x))).x, -2059f < _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1393f) - -1185f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.b.a.x + arg_0.a.x)))));
    let var_3 = ~_wgslsmith_div_vec4_u32(~(~vec4<u32>(1u, 1u, 1u, 1u)), ~vec4<u32>(1u, 1u, 1u, 1u));
    let var_4 = vec2<u32>(firstLeadingBit(~reverseBits(var_3.x)) & ~30268u, ~var_3.x);
    return !arg_0.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(global0.a, -2147483647i, global0.c);
    global3 = array<f32, 5>();
    global0 = var_0;
    let var_1 = func_5(func_4(func_1(), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(global3[_wgslsmith_index_u32(0u, 5u)], var_0.a.x))))));
    var var_2 = Struct_2(2147483647i | global1.c.x, var_0, vec4<i32>(firstLeadingBit(_wgslsmith_sub_i32(40318i, var_0.b)), 16821i, _wgslsmith_div_i32(1i, i32(-1i) * -u_input.a), u_input.a));
    var var_3 = var_0.c.xy;
    let x = u_input.a;
    s_output = StorageBuffer(global1.b.a.x, _wgslsmith_f_op_f32(f32(-1f) * -1148f), abs(_wgslsmith_dot_vec2_i32(vec2<i32>(19334i, 1i), var_2.c.wx) & -2147483647i) ^ 1i, vec3<f32>(-877f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.b.a.x) + var_0.a.x))), 702f), vec2<u32>(1u, abs(~(~59036u))));
}

