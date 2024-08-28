struct Struct_1 {
    a: u32,
    b: vec3<u32>,
    c: vec2<i32>,
    d: vec3<i32>,
    e: f32,
}

struct Struct_2 {
    a: bool,
    b: u32,
    c: vec2<f32>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: f32,
    c: vec4<bool>,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 27> = array<i32, 27>(-15923i, 0i, -58901i, -14406i, -2834i, -48694i, i32(-2147483648), -6954i, -16966i, 46449i, -1i, -48016i, 26514i, -21314i, 0i, 8424i, 0i, 8069i, 2147483647i, -1i, i32(-2147483648), 29645i, -1i, 55027i, 0i, 2147483647i, -46471i);

var<private> global1: f32;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec4<f32>, arg_1: i32, arg_2: i32) -> f32 {
    var var_0 = arg_2;
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -161f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.x), -3048f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(962f, -215f) + arg_0.x))))), _wgslsmith_f_op_f32(abs(-1000f)));
    var var_2 = Struct_3(max(min(~abs(vec4<u32>(1u, 70242u, 0u, 1u)), ~vec4<u32>(1u, 1u, 1u, 1u)), select(~vec4<u32>(0u, 0u, 4294967295u, 77874u), abs(vec4<u32>(40434u, 92581u, 87572u, 4294967295u)), all(vec2<bool>(true, true)))), _wgslsmith_div_f32(-805f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.x, arg_0.x))))), vec4<bool>(true, true, true, true));
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -203f), _wgslsmith_f_op_f32(-arg_0.x))))) - 746f));
    var var_3 = var_2.c.x;
    return 767f;
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: vec3<bool>) -> f32 {
    let var_0 = Struct_2(any(select(select(!vec4<bool>(arg_2.x, arg_2.x, true, true), !vec4<bool>(false, arg_2.x, true, true), select(arg_2.x, arg_2.x, arg_2.x)), vec4<bool>(true, true, arg_2.x, true), vec4<bool>(arg_2.x, all(arg_2.xx), all(arg_2), select(true, arg_2.x, true)))), arg_0.b.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, 1000f) + _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1, -830f) - vec2<f32>(-515f, 2674f)))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(trunc(arg_1)), arg_0.e))));
    let var_1 = Struct_4(Struct_3(~_wgslsmith_sub_vec4_u32(~vec4<u32>(1u, var_0.b, arg_0.b.x, arg_0.b.x), abs(vec4<u32>(arg_0.b.x, var_0.b, arg_0.b.x, var_0.b))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-2289f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(arg_1)), _wgslsmith_f_op_f32(arg_0.e - arg_0.e)))), select(vec4<bool>(false | arg_2.x, true, any(vec2<bool>(arg_2.x, true)), arg_2.x), !(!vec4<bool>(var_0.a, arg_2.x, false, true)), select(select(vec4<bool>(false, var_0.a, false, false), vec4<bool>(var_0.a, var_0.a, var_0.a, var_0.a), arg_2.x), vec4<bool>(arg_2.x, false, var_0.a, arg_2.x), all(vec4<bool>(true, var_0.a, false, arg_2.x))))));
    global1 = -1132f;
    var var_2 = vec4<bool>(all(!var_1.a.c), !(u_input.a > max(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.c.x, 0i, -3100i, -2147483647i), vec4<i32>(-2147483647i, global0[_wgslsmith_index_u32(arg_0.a, 27u)], -29839i, arg_0.d.x)), 76703i)), var_1.a.c.x, ~var_1.a.a.x == arg_0.b.x);
    var var_3 = 347f;
    return arg_1;
}

fn func_2(arg_0: i32, arg_1: u32, arg_2: u32) -> vec3<u32> {
    let var_0 = Struct_3(firstLeadingBit(~_wgslsmith_div_vec4_u32(~vec4<u32>(arg_2, 1u, 4294967295u, arg_2), vec4<u32>(1u, arg_1, 0u, 10596u))), _wgslsmith_f_op_f32(func_4(Struct_1(arg_2, ~firstTrailingBit(vec3<u32>(arg_1, 1u, 4294967295u)), _wgslsmith_sub_vec2_i32(vec2<i32>(arg_0, u_input.a) | vec2<i32>(global0[_wgslsmith_index_u32(arg_2, 27u)], 0i), _wgslsmith_add_vec2_i32(vec2<i32>(-13246i, u_input.a), vec2<i32>(global0[_wgslsmith_index_u32(4294967295u, 27u)], global0[_wgslsmith_index_u32(arg_1, 27u)]))), -_wgslsmith_clamp_vec3_i32(vec3<i32>(70530i, -2147483647i, arg_0), vec3<i32>(1i, arg_0, arg_0), vec3<i32>(u_input.a, 0i, u_input.a)), _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(383f, -386f, -152f, 1137f)), reverseBits(2147483647i), u_input.a >> (arg_1 % 32u)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(-1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1487f)))), vec3<bool>(true, true, true))), select(vec4<bool>(false, any(select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, false), false)), false, any(select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true)))), !select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false), false)), vec4<bool>(all(vec3<bool>(true, false, false)), true, false, arg_0 > abs(2147483647i))));
    let var_1 = vec2<i32>(-1i) * -(abs(~vec2<i32>(-17591i, u_input.a)) & (vec2<i32>(arg_0, u_input.a) ^ _wgslsmith_add_vec2_i32(vec2<i32>(arg_0, u_input.a), vec2<i32>(arg_0, arg_0))));
    global0 = array<i32, 27>();
    var var_2 = countOneBits(~(~(~(~vec4<u32>(0u, var_0.a.x, 1u, 33001u)))));
    let var_3 = -(~(-(~(vec3<i32>(39835i, -1i, arg_0) | vec3<i32>(0i, arg_0, 0i)))));
    return _wgslsmith_div_vec3_u32(vec3<u32>(~_wgslsmith_dot_vec3_u32(var_2.ywx, ~var_0.a.yzw), _wgslsmith_sub_u32(_wgslsmith_mult_u32(0u, _wgslsmith_dot_vec3_u32(var_2.wxy, vec3<u32>(arg_1, var_2.x, 18952u))), _wgslsmith_add_u32(54426u, _wgslsmith_sub_u32(43728u, var_0.a.x))), _wgslsmith_div_u32(min(var_0.a.x, 4294967295u), 22036u)), ~vec3<u32>(arg_2, firstTrailingBit(4294967295u), ~firstLeadingBit(arg_2)));
}

fn func_1(arg_0: vec2<bool>, arg_1: vec2<i32>, arg_2: Struct_2, arg_3: bool) -> Struct_4 {
    var var_0 = firstTrailingBit(min(~(~vec3<u32>(4294967295u, arg_2.b, arg_2.b)) >> (countOneBits(_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, arg_2.b, arg_2.b), vec3<u32>(90272u, 15946u, 4294967295u))) % vec3<u32>(32u)), func_2(0i, ~(~arg_2.b), arg_2.b)));
    var var_1 = _wgslsmith_clamp_i32(_wgslsmith_div_i32(-35554i, _wgslsmith_sub_i32(firstLeadingBit(1i), i32(-1i) * -global0[_wgslsmith_index_u32(1u, 27u)])), firstTrailingBit(_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, u_input.a, -32720i, 1i) >> (vec4<u32>(arg_2.b, 27566u, 12939u, var_0.x) % vec4<u32>(32u)), vec4<i32>(-1i, 2147483647i, -35609i, -4604i)), _wgslsmith_div_vec4_i32(~vec4<i32>(-31665i, 49724i, arg_1.x, global0[_wgslsmith_index_u32(arg_2.b, 27u)]), _wgslsmith_div_vec4_i32(vec4<i32>(arg_1.x, arg_1.x, arg_1.x, -1i), vec4<i32>(global0[_wgslsmith_index_u32(var_0.x, 27u)], global0[_wgslsmith_index_u32(4585u, 27u)], -81983i, u_input.a))))), _wgslsmith_div_i32(_wgslsmith_mult_i32(-10927i, countOneBits(-2147483647i)), firstLeadingBit(global0[_wgslsmith_index_u32(abs(var_0.x), 27u)])) >> (~(~1u) % 32u));
    var_1 = abs(~34275i);
    global1 = 434f;
    var var_2 = _wgslsmith_clamp_vec2_i32(select(vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_1.x, arg_1.x), select(arg_1, arg_1, false)), ~global0[_wgslsmith_index_u32(var_0.x, 27u)]), -vec2<i32>(-u_input.a, countOneBits(u_input.a)), true), arg_1, vec2<i32>(global0[_wgslsmith_index_u32(1u, 27u)], abs(abs(i32(-1i) * -1i))));
    return Struct_4(Struct_3(countOneBits(countOneBits(_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_2.b, 17273u, 22654u, 4294967295u), vec4<u32>(52735u, arg_2.b, 0u, 133675u), vec4<u32>(var_0.x, 0u, var_0.x, 1u)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_2.c.x * arg_2.c.x), _wgslsmith_f_op_f32(max(arg_2.c.x, arg_2.c.x))))), !select(!vec4<bool>(true, arg_0.x, true, false), select(vec4<bool>(false, false, true, arg_0.x), vec4<bool>(false, arg_3, arg_0.x, arg_0.x), true), vec4<bool>(true, arg_2.a, arg_3, false))));
}

fn func_5(arg_0: Struct_4, arg_1: Struct_2, arg_2: vec4<bool>) -> vec3<bool> {
    global0 = array<i32, 27>();
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_1.c + arg_1.c));
    var var_1 = arg_0.a.c;
    let var_2 = Struct_4(Struct_3(~vec4<u32>(arg_1.b, arg_1.b, ~arg_0.a.a.x, 1u), -706f, arg_2));
    var var_3 = ~68810u;
    return vec3<bool>(!all(!vec3<bool>(true, var_2.a.c.x, arg_0.a.c.x)), true, arg_2.x);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = 976f;
    let var_0 = func_5(func_1(select(vec2<bool>(false, true), !select(vec2<bool>(false, false), vec2<bool>(false, true), true), vec2<bool>(true, true)), select(vec2<i32>(-67921i, global0[_wgslsmith_index_u32(1u, 27u)]), _wgslsmith_add_vec2_i32(~vec2<i32>(u_input.a, u_input.a), ~vec2<i32>(u_input.a, -13893i)), true), Struct_2(firstLeadingBit(global0[_wgslsmith_index_u32(4294967295u, 27u)]) >= global0[_wgslsmith_index_u32(reverseBits(44956u), 27u)], 0u, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-774f, -482f), vec2<f32>(-825f, 535f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(295f, -906f) + vec2<f32>(181f, 1412f)))), true), Struct_2(false, ~1750u, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1751f, -1624f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-540f, 832f)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(1277f, 557f) + vec2<f32>(-1668f, -339f))))), vec4<bool>(true, true, true != any(vec2<bool>(false, false)), func_1(select(vec2<bool>(true, true), vec2<bool>(true, true), global0[_wgslsmith_index_u32(0u, 27u)] > u_input.a), max(vec2<i32>(u_input.a, global0[_wgslsmith_index_u32(57240u, 27u)]), max(vec2<i32>(global0[_wgslsmith_index_u32(44827u, 27u)], u_input.a), vec2<i32>(2147483647i, global0[_wgslsmith_index_u32(20194u, 27u)]))), Struct_2(true, reverseBits(124877u), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(621f, -738f)))), select(true, -3755i > global0[_wgslsmith_index_u32(3326u, 27u)], true)).a.c.x));
    let var_1 = -select(vec2<i32>(reverseBits(u_input.a) & -76411i, _wgslsmith_dot_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(4294967295u, 27u)], -1i, u_input.a) | vec3<i32>(u_input.a, global0[_wgslsmith_index_u32(84823u, 27u)], u_input.a), _wgslsmith_add_vec3_i32(vec3<i32>(-9948i, u_input.a, 71612i), vec3<i32>(global0[_wgslsmith_index_u32(4294967295u, 27u)], -60669i, global0[_wgslsmith_index_u32(85591u, 27u)])))), _wgslsmith_mult_vec2_i32(_wgslsmith_mult_vec2_i32(~vec2<i32>(u_input.a, u_input.a), ~vec2<i32>(-52972i, 2147483647i)), vec2<i32>(-global0[_wgslsmith_index_u32(10015u, 27u)], _wgslsmith_mod_i32(global0[_wgslsmith_index_u32(4294967295u, 27u)], -1i))), any(!select(vec4<bool>(var_0.x, var_0.x, false, var_0.x), vec4<bool>(false, true, var_0.x, var_0.x), false)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(select(952f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1277f, -691f, var_0.x))))), (var_1.x | ~2700i) == (-2147483647i ^ select(0i, -1i, var_0.x)))), ~(~1u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1447f, -220f)), -398f)) + _wgslsmith_f_op_f32(666f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -972f)))), _wgslsmith_f_op_f32(f32(-1f) * -321f));
}

