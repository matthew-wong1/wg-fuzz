struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
    d: vec4<bool>,
    e: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: vec3<f32>,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -33012i;

var<private> global1: i32 = i32(-2147483648);

var<private> global2: bool = true;

var<private> global3: array<vec2<bool>, 4> = array<vec2<bool>, 4>(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true));

var<private> global4: Struct_2;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: vec3<f32>) -> i32 {
    global3 = array<vec2<bool>, 4>();
    var var_0 = Struct_1(2147483647i & _wgslsmith_clamp_i32(_wgslsmith_clamp_i32(arg_1.a, global4.c, countOneBits(2147483647i)), -u_input.b.x & -73335i, _wgslsmith_mult_i32(global4.c, -24914i)));
    let var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_2.x))), arg_2.x, arg_2.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(select(976f, 2088f, false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-719f, -588f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.x + -1562f)))), vec3<bool>(!select(true, !global4.d.x, true), u_input.c < _wgslsmith_mod_u32(_wgslsmith_add_u32(u_input.c, u_input.c), _wgslsmith_add_u32(u_input.c, u_input.c)), true)));
    var_0 = global4.b;
    let var_2 = Struct_2(Struct_1(countOneBits(-23247i)), global4.a, firstLeadingBit(u_input.a.x), vec4<bool>(true, !(u_input.c == countOneBits(u_input.c)), true, global4.d.x), global4.e);
    return arg_1.a ^ ~_wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(u_input.a, -vec3<i32>(arg_1.a, var_2.e, var_0.a)), 1i);
}

fn func_2(arg_0: i32) -> vec4<bool> {
    var var_0 = global4.a;
    global4 = Struct_2(Struct_1(_wgslsmith_mult_i32(~countOneBits(var_0.a), ~_wgslsmith_div_i32(-1i, arg_0))), global4.a, _wgslsmith_mod_i32(-1i, countOneBits(func_3(select(global4.d, vec4<bool>(true, global4.d.x, global4.d.x, global4.d.x), global4.d.x), Struct_1(0i), _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, 838f, 1000f) + vec3<f32>(507f, -219f, -198f))))), vec4<bool>(all(vec4<bool>(global4.d.x, global4.d.x, true, true)), global4.d.x, global4.d.x & any(global4.d.xx), any(!(!vec2<bool>(true, global4.d.x)))), ~12985i);
    var var_1 = global4.a;
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1714f + 752f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2142f + 1112f) + 917f))), 1f);
    global4 = Struct_2(Struct_1(_wgslsmith_add_i32(reverseBits(_wgslsmith_mod_i32(40885i, -1i)), global4.b.a)), global4.a, var_0.a, vec4<bool>(true && !any(vec2<bool>(false, true)), global4.d.x, true, true), 2147483647i);
    return global4.d;
}

fn func_1(arg_0: vec3<bool>, arg_1: f32) -> bool {
    let var_0 = _wgslsmith_sub_vec4_i32(abs(reverseBits(_wgslsmith_sub_vec4_i32(vec4<i32>(0i, -2147483647i, u_input.a.x, global4.e) << (vec4<u32>(61075u, 37552u, 14709u, 17929u) % vec4<u32>(32u)), select(vec4<i32>(u_input.b.x, -2147483647i, 1i, 1i), vec4<i32>(-2147483647i, global4.c, u_input.b.x, 4145i), false)))), vec4<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(select(vec4<i32>(u_input.a.x, 1i, global4.c, -2147483647i), vec4<i32>(34464i, u_input.a.x, global4.b.a, 25294i), arg_0.x), max(vec4<i32>(global4.c, u_input.b.x, global4.a.a, -1i), vec4<i32>(-2147483647i, global4.a.a, u_input.b.x, -15077i)), firstLeadingBit(vec4<i32>(-2147483647i, 1i, u_input.b.x, global4.e))), vec4<i32>(-8127i, firstLeadingBit(u_input.b.x), global4.c & 6038i, max(-2147483647i, -18492i))), global4.c, countOneBits(i32(-1i) * -1i), u_input.b.x));
    var var_1 = !(!func_2(-u_input.b.x));
    let var_2 = Struct_1(~(-82247i));
    var var_3 = global4.b;
    global3 = array<vec2<bool>, 4>();
    return !(!(4294967295u == (_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 0u), vec2<u32>(u_input.c, u_input.c)) >> (74038u % 32u))));
}

fn func_4(arg_0: bool) -> Struct_1 {
    let var_0 = global4.c;
    var var_1 = max(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.b.x | 8477i, -21031i, global4.b.a, u_input.b.x) | vec4<i32>(u_input.a.x, ~1i, max(2147483647i, global4.c), i32(-1i) * -1i), _wgslsmith_div_vec4_i32(-_wgslsmith_div_vec4_i32(vec4<i32>(u_input.b.x, global4.c, -2147483647i, global4.c), vec4<i32>(global4.b.a, u_input.b.x, 2147483647i, u_input.a.x)), -vec4<i32>(u_input.b.x, u_input.b.x, -2147483647i, 1i))), vec4<i32>(_wgslsmith_sub_i32(-30932i, firstLeadingBit(u_input.a.x)), 2147483647i, _wgslsmith_sub_i32(~_wgslsmith_sub_i32(global4.e, u_input.b.x), 13676i), 0i));
    global2 = global4.d.x;
    global0 = 0i;
    var var_2 = Struct_2(global4.a, global4.b, global4.c >> (u_input.c % 32u), !global4.d, _wgslsmith_add_i32(~max(_wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(1i, global4.c, var_1.x)), 45579i), select(-1i, 42046i, true)));
    return Struct_1(-3198i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(!func_1(!global4.d.yww, _wgslsmith_f_op_f32(round(-1891f))) || all(global3[_wgslsmith_index_u32(1u, 4u)]));
    let var_1 = 0i;
    var var_2 = _wgslsmith_f_op_f32(step(-1718f, 1000f));
    let var_3 = vec2<u32>(u_input.c & _wgslsmith_mult_u32(_wgslsmith_mod_u32(46086u, u_input.c) ^ ~0u, 0u), 22398u);
    var var_4 = var_1 << (~1u % 32u);
    let var_5 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-551f * -322f) - 212f), 1f, _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(316f, -1625f))), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(282f, -2162f, -1368f, -591f)) * vec4<f32>(866f, -481f, 480f, 930f)) + vec4<f32>(_wgslsmith_f_op_f32(abs(-200f)), 945f, _wgslsmith_f_op_f32(step(1591f, 520f)), _wgslsmith_f_op_f32(abs(519f))))));
    var var_6 = countOneBits(var_3.x);
    var var_7 = select(global4.d.xwy, vec3<bool>(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_5.x))) == -2537f, true), !(all(select(vec3<bool>(global4.d.x, global4.d.x, global4.d.x), vec3<bool>(false, global4.d.x, true), vec3<bool>(global4.d.x, true, false))) && (var_5.x <= _wgslsmith_div_f32(var_5.x, 1646f))));
    let x = u_input.a;
    s_output = StorageBuffer(1000f, -abs(_wgslsmith_mod_vec4_i32(-vec4<i32>(global4.c, 1i, -1i, var_0.a), vec4<i32>(-1i, global4.e, -7048i, var_1))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_5.x)))), var_5.x, 1597f), ~_wgslsmith_clamp_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 38689u), vec4<u32>(4294967295u, 27144u, var_3.x, 24113u)), var_3.x, _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(37958u, 40289u, 20108u, u_input.c), vec4<u32>(1u, 0u, var_3.x, var_3.x), vec4<u32>(u_input.c, u_input.c, var_3.x, 12130u)), ~vec4<u32>(13182u, u_input.c, u_input.c, u_input.c))), var_5.x);
}

