struct Struct_1 {
    a: bool,
    b: f32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec3<f32>,
    c: i32,
    d: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<u32>,
    c: Struct_1,
}

struct Struct_4 {
    a: vec3<bool>,
    b: i32,
    c: bool,
    d: vec2<i32>,
    e: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec4<u32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 4>;

var<private> global1: array<u32, 19>;

var<private> global2: Struct_4 = Struct_4(vec3<bool>(true, true, true), 9543i, true, vec2<i32>(i32(-2147483648), 252i), -8444i);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: Struct_4) -> i32 {
    var var_0 = ~(~20659u);
    var var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(-259f))));
    var var_2 = _wgslsmith_div_i32(~_wgslsmith_dot_vec3_i32((vec3<i32>(-30642i, 10579i, arg_0.b) & vec3<i32>(global2.b, 226i, -744i)) ^ vec3<i32>(-2147483647i, global2.d.x, arg_0.b), vec3<i32>(~(-19602i), _wgslsmith_clamp_i32(45145i, -9456i, 18353i), min(arg_0.d.x, 19397i))), ~15902i);
    let var_3 = arg_0;
    let var_4 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global0[_wgslsmith_index_u32(0u, 4u)], global0[_wgslsmith_index_u32(u_input.e, 4u)], global0[_wgslsmith_index_u32(78897u, 4u)]))), vec3<f32>(307f, global0[_wgslsmith_index_u32(u_input.a.x, 4u)], -243f), true)))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1457f, 115f) - global0[_wgslsmith_index_u32(u_input.e, 4u)]), _wgslsmith_div_f32(874f, _wgslsmith_f_op_f32(abs(1147f))), 1104f))));
    return select(i32(-1i) * -2147483647i, _wgslsmith_clamp_i32(14190i << (_wgslsmith_mod_u32(0u, ~0u) % 32u), arg_0.b, ~(global2.b >> (global1[_wgslsmith_index_u32(u_input.c.x, 19u)] % 32u))), all(arg_0.a.yx));
}

fn func_2() -> u32 {
    global2 = Struct_4(vec3<bool>(select(true, true, true), true | global2.c, false), global2.b << (~1u % 32u), !(global2.b == 1i), vec2<i32>(abs(global2.b), -11027i), -_wgslsmith_dot_vec4_i32(~vec4<i32>(global2.d.x, 34328i, -2147483647i, global2.d.x), vec4<i32>(1i, global2.e ^ global2.d.x, func_3(Struct_4(vec3<bool>(global2.c, global2.a.x, true), -1i, global2.a.x, global2.d, global2.b)), global2.b)));
    global1 = array<u32, 19>();
    var var_0 = Struct_1(!global2.a.x, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(u_input.c & vec4<u32>(global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(44201u, 19u)], 19u)], 19u)], ~59265u, ~u_input.a.x, ~51138u), ~abs(vec4<u32>(u_input.b.x, u_input.d, global1[_wgslsmith_index_u32(1u, 19u)], u_input.e))), 4u)]);
    let var_1 = Struct_3(Struct_1(var_0.a, -2039f), max(u_input.c, ~u_input.c), Struct_1(false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_0.b)) + _wgslsmith_f_op_f32(-802f - global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.c.x, 19u)], 19u)], 19u)], 4u)])))));
    var var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-530f + _wgslsmith_f_op_f32(var_1.c.b - -741f)))))));
    return _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(var_1.b.zww, select(min(vec3<u32>(4294967295u, var_1.b.x, 32405u), var_1.b.wzw) >> (_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.e, global1[_wgslsmith_index_u32(0u, 19u)], 533u), vec3<u32>(var_1.b.x, 0u, var_1.b.x), vec3<u32>(0u, global1[_wgslsmith_index_u32(var_1.b.x, 19u)], var_1.b.x)) % vec3<u32>(32u)), u_input.c.xxz, true), ~(~vec3<u32>(global1[_wgslsmith_index_u32(0u, 19u)], 485u, u_input.b.x))), ~(~vec3<u32>(~global1[_wgslsmith_index_u32(4294967295u, 19u)], 0u, max(3381u, u_input.a.x))));
}

fn func_1(arg_0: vec4<f32>) -> vec4<f32> {
    global0 = array<f32, 4>();
    var var_0 = global1[_wgslsmith_index_u32(~_wgslsmith_mult_u32(1u, _wgslsmith_clamp_u32(~36841u, max(firstTrailingBit(1u), global1[_wgslsmith_index_u32(28447u, 19u)]), _wgslsmith_sub_u32(~u_input.c.x, func_2()))), 19u)];
    return vec4<f32>(-190f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_f_op_f32(f32(-1f) * -181f)))), 1f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(reverseBits(0u), 4u)], global0[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(0u, 19u)], 4u)], true)) + 1560f), global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(countOneBits(_wgslsmith_dot_vec4_u32(u_input.c, ~u_input.c)), 19u)], 4u)])));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<i32>(firstLeadingBit(abs(global2.e)), 2147483647i, i32(-1i) * -firstLeadingBit(~(-26398i)));
    global0 = array<f32, 4>();
    let var_1 = ~select(25669i, global2.b, global2.a.x);
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-363f, global0[_wgslsmith_index_u32(u_input.d, 4u)], global0[_wgslsmith_index_u32(u_input.a.x, 4u)], -781f))) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0[_wgslsmith_index_u32(48767u, 4u)], 777f, 260f, global0[_wgslsmith_index_u32(26571u, 4u)]), vec4<f32>(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(31107u, 19u)], 4u)], global0[_wgslsmith_index_u32(14077u, 4u)], -410f, 2875f), global2.c))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 229f, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(52571u, 19u)], 4u)], global0[_wgslsmith_index_u32(u_input.e, 4u)]) + vec4<f32>(-1072f, global0[_wgslsmith_index_u32(4294967295u, 4u)], 1000f, global0[_wgslsmith_index_u32(4294967295u, 4u)])), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(global0[_wgslsmith_index_u32(105437u, 4u)], 515f, global0[_wgslsmith_index_u32(128789u, 4u)], global0[_wgslsmith_index_u32(7982u, 4u)]))), u_input.d <= 1u))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_1(vec4<f32>(244f, 773f, global0[_wgslsmith_index_u32(0u, 4u)], 345f))) * vec4<f32>(-200f, 2459f, -1426f, global0[_wgslsmith_index_u32(41265u, 4u)])) - vec4<f32>(_wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(35511u, 4u)])), 529f, _wgslsmith_f_op_f32(min(1446f, -769f)), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4294967295u, 4u)])))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(20214u, 4u)] * _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(0u, 4u)])), _wgslsmith_f_op_f32(min(328f, global0[_wgslsmith_index_u32(reverseBits(u_input.c.x), 4u)])), _wgslsmith_div_f32(global0[_wgslsmith_index_u32(1u, 4u)], _wgslsmith_div_f32(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.e, 19u)], 19u)], 4u)], 281f)))));
    var var_3 = global2.c | all(select(vec4<bool>(global0[_wgslsmith_index_u32(44492u, 4u)] == -1239f, !global2.c, global0[_wgslsmith_index_u32(0u, 4u)] >= -1000f, any(vec4<bool>(false, false, global2.a.x, false))), select(select(vec4<bool>(global2.c, false, true, false), vec4<bool>(global2.c, true, global2.c, true), vec4<bool>(global2.c, global2.a.x, global2.a.x, global2.a.x)), vec4<bool>(true, false, false, false), !vec4<bool>(global2.a.x, true, true, false)), !(global1[_wgslsmith_index_u32(4294967295u, 19u)] < global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.e, 19u)], 19u)], 19u)], 19u)], 19u)])));
    var var_4 = vec4<i32>(~(2147483647i | _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.x, var_0.x, -62673i), var_0)), countOneBits(_wgslsmith_add_i32(global2.e, _wgslsmith_div_i32(var_1, 1i))), var_0.x, -select(firstTrailingBit(-1i), _wgslsmith_mod_i32(var_0.x, var_1), any(vec3<bool>(false, true, global2.c)))) & vec4<i32>(_wgslsmith_div_i32(~var_1, firstTrailingBit(var_0.x) ^ -var_0.x), reverseBits(global2.e), func_3(Struct_4(select(global2.a, global2.a, false), _wgslsmith_mod_i32(692i, var_1), true, _wgslsmith_clamp_vec2_i32(vec2<i32>(var_1, var_0.x), global2.d, var_0.yz), var_1 & 32262i)), -40738i);
    var var_5 = Struct_4(!(!(!select(vec3<bool>(true, global2.c, global2.a.x), global2.a, global2.c))), _wgslsmith_mult_i32(select(-2147483647i, -2147483647i, !global2.c) & -(~11248i), abs(_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-5600i, var_4.x), vec2<i32>(-17952i, var_1)), func_3(Struct_4(vec3<bool>(true, global2.c, global2.c), -17059i, global2.a.x, vec2<i32>(1i, var_4.x), var_0.x))))), false, select(~vec2<i32>(-2147483647i, ~global2.d.x), min(var_0.zy & select(var_4.xw, var_4.xy, global2.a.yx), vec2<i32>(max(var_1, 20718i), ~var_4.x)), vec2<bool>(global2.a.x, !any(vec2<bool>(global2.a.x, false)))), _wgslsmith_clamp_i32(global2.b, -59700i, _wgslsmith_dot_vec2_i32(~var_0.yy, vec2<i32>(2147483647i, 2147483647i))) & 1i);
    var var_6 = ~min(max(_wgslsmith_div_u32(10495u, u_input.d), reverseBits(firstTrailingBit(4294967295u))), global1[_wgslsmith_index_u32(firstTrailingBit(u_input.c.x), 19u)]);
    var_4 = ~_wgslsmith_clamp_vec4_i32(min(-vec4<i32>(var_1, -19418i, global2.e, global2.d.x), vec4<i32>(_wgslsmith_clamp_i32(1i, var_5.e, var_4.x), var_5.b, global2.b, func_3(Struct_4(vec3<bool>(global2.a.x, true, false), var_4.x, var_5.c, vec2<i32>(1i, var_4.x), var_4.x)))), -vec4<i32>(~var_5.b, _wgslsmith_div_i32(-56118i, -5369i), var_4.x, _wgslsmith_dot_vec2_i32(vec2<i32>(1i, -5842i), vec2<i32>(var_1, 32086i))), _wgslsmith_add_vec4_i32(-vec4<i32>(var_4.x, 4937i, var_1, 7792i), vec4<i32>(abs(-2147483647i), 0i, min(global2.e, -33767i), -3328i)));
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.c, (vec4<u32>(_wgslsmith_div_u32(global1[_wgslsmith_index_u32(u_input.a.x, 19u)], 81842u), ~u_input.a.x, ~9676u, ~0u) >> ((~vec4<u32>(u_input.b.x, 4294967295u, global1[_wgslsmith_index_u32(1u, 19u)], u_input.b.x) << (~vec4<u32>(15334u, 77786u, 4294967295u, 11602u) % vec4<u32>(32u))) % vec4<u32>(32u))) ^ min(vec4<u32>(0u, u_input.a.x, 0u, 70862u) & ~u_input.c, _wgslsmith_add_vec4_u32(reverseBits(u_input.c), _wgslsmith_mult_vec4_u32(vec4<u32>(18326u, global1[_wgslsmith_index_u32(1u, 19u)], global1[_wgslsmith_index_u32(5631u, 19u)], 18663u), u_input.c))));
}

