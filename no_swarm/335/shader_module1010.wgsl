struct Struct_1 {
    a: vec3<f32>,
    b: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 27>;

var<private> global1: array<Struct_1, 26>;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: bool) -> i32 {
    let var_0 = u_input.c;
    let var_1 = _wgslsmith_div_vec2_f32(vec2<f32>(631f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -480f) * _wgslsmith_f_op_f32(step(-299f, -842f))) - 1f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(-282f * 1678f), _wgslsmith_f_op_f32(-852f + 1000f))))));
    var var_2 = u_input.a.x;
    var var_3 = select(select(!vec2<bool>(false, arg_0), !(!(!vec2<bool>(false, arg_0))), vec2<bool>(true, true || arg_0)), select(vec2<bool>(!arg_0, true), select(vec2<bool>(true, true), !vec2<bool>(true, arg_0), all(vec4<bool>(arg_0, arg_0, false, arg_0))), !(!select(vec2<bool>(arg_0, false), vec2<bool>(true, false), true))), select(!select(select(vec2<bool>(true, arg_0), vec2<bool>(true, arg_0), arg_0), vec2<bool>(arg_0, arg_0), !arg_0), select(select(vec2<bool>(arg_0, arg_0), select(vec2<bool>(false, true), vec2<bool>(true, arg_0), vec2<bool>(false, true)), false), select(select(vec2<bool>(true, true), vec2<bool>(arg_0, false), false), vec2<bool>(arg_0, arg_0), vec2<bool>(true, true)), select(select(vec2<bool>(arg_0, false), vec2<bool>(arg_0, arg_0), vec2<bool>(arg_0, true)), !vec2<bool>(arg_0, arg_0), !vec2<bool>(false, arg_0))), true));
    return 38962i;
}

fn func_2(arg_0: vec4<i32>, arg_1: vec2<u32>, arg_2: vec3<f32>) -> vec3<u32> {
    global0 = array<vec3<f32>, 27>();
    let var_0 = _wgslsmith_dot_vec3_i32(-vec3<i32>(_wgslsmith_mult_i32(1i, func_3(false)), 0i, ~(-6725i)), _wgslsmith_clamp_vec3_i32(countOneBits(_wgslsmith_sub_vec3_i32(arg_0.yxy, vec3<i32>(arg_0.x, 20887i, -68254i))), ~arg_0.wwz, abs(vec3<i32>(1i | arg_0.x, ~2719i, u_input.c))));
    let var_1 = global1[_wgslsmith_index_u32((u_input.b | ~(max(arg_1.x, 0u) << (arg_1.x % 32u))) | (arg_1.x >> ((countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.x, 1710u, 86290u, arg_1.x), vec4<u32>(1u, 26934u, 4294967295u, 1u))) >> (_wgslsmith_dot_vec2_u32(arg_1 & arg_1, arg_1) % 32u)) % 32u)), 26u)];
    global1 = array<Struct_1, 26>();
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1292f, -634f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1281f - 1293f)))), var_1.b);
    return vec3<u32>(_wgslsmith_dot_vec2_u32(arg_1, vec2<u32>(u_input.b, ~1u)), 65391u, var_2.b);
}

fn func_1() -> u32 {
    let var_0 = u_input.b;
    let var_1 = ~reverseBits(min((vec3<i32>(-1i, -9247i, 1i) | vec3<i32>(1097i, u_input.c, u_input.c)) << (func_2(vec4<i32>(u_input.a.x, -2147483647i, 18174i, u_input.a.x), vec2<u32>(110253u, 4294967295u), vec3<f32>(-827f, -1335f, 1659f)) % vec3<u32>(32u)), -vec3<i32>(-33520i, u_input.a.x, u_input.a.x) & vec3<i32>(-2147483647i, u_input.a.x, u_input.c)));
    let var_2 = global1[_wgslsmith_index_u32(~(~u_input.b >> (~(44598u ^ var_0) % 32u)), 26u)];
    global1 = array<Struct_1, 26>();
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(global0[_wgslsmith_index_u32(u_input.b, 27u)])), var_2.a) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_2.a + var_2.a))))));
    return ~_wgslsmith_dot_vec3_u32(firstLeadingBit(firstTrailingBit(vec3<u32>(var_2.b, 78101u, u_input.b))), ~(vec3<u32>(1u, var_2.b, var_0) & _wgslsmith_div_vec3_u32(vec3<u32>(0u, var_0, 1u), vec3<u32>(var_0, 12903u, 25634u))));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: vec3<u32>, arg_3: Struct_1) -> Struct_1 {
    global1 = array<Struct_1, 26>();
    var var_0 = u_input.c;
    global0 = array<vec3<f32>, 27>();
    var var_1 = func_2(vec4<i32>(~(-u_input.c), _wgslsmith_div_i32(select(u_input.a.x, 27537i, false), firstTrailingBit(1i)), abs(49242i), 1i) ^ (_wgslsmith_mod_vec4_i32(-vec4<i32>(arg_1.x, u_input.a.x, 0i, arg_1.x), vec4<i32>(1i, u_input.a.x, u_input.a.x, u_input.a.x) ^ vec4<i32>(22523i, u_input.c, 23862i, -35281i)) >> (vec4<u32>(4294967295u, func_2(vec4<i32>(1i, arg_1.x, -18481i, 41770i), vec2<u32>(21183u, arg_0.b), vec3<f32>(2121f, arg_3.a.x, arg_0.a.x)).x, _wgslsmith_mult_u32(4294967295u, arg_0.b), 1u) % vec4<u32>(32u))), vec2<u32>(~arg_3.b, ~44672u), global0[_wgslsmith_index_u32(~arg_0.b, 27u)]).x;
    var var_2 = -firstTrailingBit(i32(-1i) * -arg_1.x);
    return global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(4294967295u, arg_2.x, arg_2.x << (~arg_3.b % 32u)), 26u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(Struct_1(_wgslsmith_f_op_vec3_f32(-global0[_wgslsmith_index_u32(~(4294967295u >> (u_input.b % 32u)), 27u)]), _wgslsmith_add_u32(~1u, func_1())), vec3<i32>(-1i | min(-u_input.c, ~0i), -36914i, _wgslsmith_dot_vec4_i32(vec4<i32>(49721i & u_input.c, u_input.c, u_input.c, _wgslsmith_clamp_i32(9540i, u_input.c, -2147483647i)), ~vec4<i32>(u_input.a.x, 45824i, u_input.a.x, u_input.c))), _wgslsmith_mult_vec3_u32(vec3<u32>(0u, 32355u, u_input.b), min(vec3<u32>(37520u, u_input.b, 0u) | vec3<u32>(u_input.b, u_input.b, 34357u), vec3<u32>(4294967295u, u_input.b, 47259u) >> (vec3<u32>(u_input.b, u_input.b, 0u) % vec3<u32>(32u))) >> ((vec3<u32>(61214u, u_input.b, u_input.b) | _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b, 26757u, u_input.b), vec3<u32>(u_input.b, 4294967295u, 1u))) % vec3<u32>(32u))), global1[_wgslsmith_index_u32(select(~1u, min(u_input.b, 4294967295u), true), 26u)]);
    var var_1 = _wgslsmith_div_i32(u_input.c, u_input.a.x);
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(3139f + var_0.a.x)))), -131f);
    let var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.a)), 4294967295u);
    let var_4 = !any(vec3<bool>((u_input.b & u_input.b) == var_0.b, any(vec4<bool>(true, true, true, true)), true));
    var var_5 = false;
    let var_6 = var_4;
    global1 = array<Struct_1, 26>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_3.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_3.a.x, -1374f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(322f + 3310f) - -1596f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-560f)) * 1090f))), -u_input.c >> ((~(u_input.b << (10288u % 32u)) >> (var_3.b % 32u)) % 32u));
}

