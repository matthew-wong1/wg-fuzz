struct Struct_1 {
    a: vec3<f32>,
    b: i32,
}

struct Struct_2 {
    a: u32,
    b: vec4<u32>,
    c: vec3<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec4<u32>,
    c: vec2<bool>,
    d: vec2<f32>,
    e: vec2<f32>,
}

struct Struct_4 {
    a: vec4<f32>,
    b: u32,
    c: i32,
    d: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 32> = array<bool, 32>(true, true, false, false, true, true, false, true, true, false, true, false, false, false, false, false, false, false, false, true, false, false, true, true, false, true, false, false, true, true, false, true);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec4<f32>, arg_1: u32, arg_2: i32, arg_3: Struct_2) -> i32 {
    var var_0 = Struct_1(vec3<f32>(600f, _wgslsmith_f_op_f32(arg_3.d.a.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.d.a.x * -603f))), _wgslsmith_f_op_f32(-arg_3.d.a.x)), arg_2);
    var var_1 = 84447u;
    var_0 = Struct_1(arg_0.xzy, 8330i & -_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.b, 1i, var_0.b), vec3<i32>(-1i, var_0.b, 0i)));
    var var_2 = true;
    var var_3 = !(!(!select(vec2<bool>(global0[_wgslsmith_index_u32(18289u, 32u)], global0[_wgslsmith_index_u32(5320u, 32u)]), vec2<bool>(global0[_wgslsmith_index_u32(arg_1, 32u)], global0[_wgslsmith_index_u32(49837u, 32u)]), select(vec2<bool>(true, global0[_wgslsmith_index_u32(arg_3.a, 32u)]), vec2<bool>(global0[_wgslsmith_index_u32(25359u, 32u)], true), global0[_wgslsmith_index_u32(u_input.a.x, 32u)]))));
    return ~1i;
}

fn func_2(arg_0: Struct_1, arg_1: vec2<f32>) -> u32 {
    let var_0 = ~(-_wgslsmith_add_vec2_i32(-vec2<i32>(arg_0.b, arg_0.b), min(vec2<i32>(49096i, -1i), vec2<i32>(arg_0.b, -1i))) | _wgslsmith_div_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(-8615i, arg_0.b), firstTrailingBit(vec2<i32>(-2147483647i, -1i))), ~vec2<i32>(0i, arg_0.b)));
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a.x, -192f, arg_0.a.x)) * vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -905f), _wgslsmith_f_op_f32(-arg_0.a.x), arg_1.x)) + _wgslsmith_div_vec3_f32(arg_0.a, arg_0.a)), _wgslsmith_mod_i32(var_0.x, (min(var_0.x, arg_0.b) << (~1u % 32u)) ^ func_3(vec4<f32>(arg_0.a.x, 239f, -573f, arg_0.a.x), 0u, _wgslsmith_mult_i32(arg_0.b, var_0.x), Struct_2(1u, vec4<u32>(u_input.a.x, 4945u, u_input.a.x, u_input.a.x), arg_0.a, Struct_1(arg_0.a, 792i)))));
    let var_2 = select(select(select(!(!vec3<bool>(true, global0[_wgslsmith_index_u32(1u, 32u)], false)), !(!vec3<bool>(true, global0[_wgslsmith_index_u32(31491u, 32u)], false)), !vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 32u)], global0[_wgslsmith_index_u32(35114u, 32u)], global0[_wgslsmith_index_u32(49659u, 32u)])), vec3<bool>(global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 51836u), u_input.a.xy), 32u)], global0[_wgslsmith_index_u32(~(~u_input.a.x), 32u)], true), any(select(!vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.a.x, 32u)], false, true), !vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.a.x, 32u)], global0[_wgslsmith_index_u32(u_input.a.x, 32u)], global0[_wgslsmith_index_u32(u_input.a.x, 32u)]), !vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 32u)], global0[_wgslsmith_index_u32(u_input.a.x, 32u)], true, true)))), !(!(!vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 32u)], global0[_wgslsmith_index_u32(u_input.a.x, 32u)], false))), all(vec3<bool>(true, any(select(vec4<bool>(global0[_wgslsmith_index_u32(63235u, 32u)], global0[_wgslsmith_index_u32(0u, 32u)], true, false), vec4<bool>(global0[_wgslsmith_index_u32(7783u, 32u)], false, false, global0[_wgslsmith_index_u32(u_input.a.x, 32u)]), global0[_wgslsmith_index_u32(1u, 32u)])), any(select(vec4<bool>(false, global0[_wgslsmith_index_u32(2367u, 32u)], false, global0[_wgslsmith_index_u32(4294967295u, 32u)]), vec4<bool>(true, true, global0[_wgslsmith_index_u32(u_input.a.x, 32u)], false), global0[_wgslsmith_index_u32(u_input.a.x, 32u)])))));
    var var_3 = vec2<u32>(u_input.a.x, abs(~u_input.a.x)) ^ firstTrailingBit(vec2<u32>(u_input.a.x, _wgslsmith_sub_u32(u_input.a.x, 76580u) ^ ~u_input.a.x));
    var var_4 = Struct_2(~_wgslsmith_mod_u32(4294967295u, reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(117457u, u_input.a.x, 0u), vec3<u32>(78903u, var_3.x, u_input.a.x)))), vec4<u32>(min(6233u, var_3.x), _wgslsmith_mult_u32(min(1536u, u_input.a.x), var_3.x) & min(u_input.a.x << (1u % 32u), var_3.x), _wgslsmith_mod_u32(_wgslsmith_div_u32(~var_3.x, 1u), ~u_input.a.x ^ (var_3.x ^ u_input.a.x)), ~abs(4294967295u)), _wgslsmith_f_op_vec3_f32(-var_1.a), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.a.x, -1223f, 672f) + arg_0.a) + var_1.a) + var_1.a), -9758i));
    return var_4.a;
}

fn func_1(arg_0: vec2<f32>, arg_1: vec2<u32>) -> Struct_4 {
    var var_0 = vec4<u32>(arg_1.x, 1u, u_input.a.x, arg_1.x) << (max(reverseBits(vec4<u32>(_wgslsmith_add_u32(40342u, 31990u), _wgslsmith_mult_u32(arg_1.x, 1u), ~u_input.a.x, u_input.a.x)), abs(vec4<u32>(firstLeadingBit(arg_1.x), u_input.a.x, reverseBits(arg_1.x), u_input.a.x))) % vec4<u32>(32u));
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_0.x, -402f, 1409f), vec3<f32>(-345f, arg_0.x, 2121f))))) - _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_0.x, arg_0.x, arg_0.x))) * vec3<f32>(-224f, 1776f, arg_0.x))))), -1i);
    var_0 = vec4<u32>(select(0u, var_0.x, global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(reverseBits(~arg_1.x), reverseBits(var_0.x)), 32u)]), (~(~0u) & arg_1.x) & func_2(Struct_1(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_1.a.x, 1000f, 163f))), 0i), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.a.x, var_1.a.x) * vec2<f32>(arg_0.x, -1860f))), abs(arg_1.x), _wgslsmith_sub_u32(_wgslsmith_mult_u32(u_input.a.x & ~42492u, u_input.a.x), reverseBits(max(var_0.x, 1u))));
    var var_2 = min(firstTrailingBit(firstLeadingBit(vec4<i32>(var_1.b, -5401i, var_1.b, var_1.b)) ^ reverseBits(vec4<i32>(var_1.b, 2147483647i, 1669i, var_1.b))), abs(vec4<i32>(25263i, 2147483647i, var_1.b, var_1.b) ^ vec4<i32>(var_1.b, var_1.b, -2147483647i, -87849i)) ^ vec4<i32>(-1i, ~var_1.b, 0i ^ var_1.b, var_1.b)) >> (~(~vec4<u32>(1u, var_0.x, var_0.x, ~28759u)) % vec4<u32>(32u));
    let var_3 = !(!(!all(!vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 32u)], false, false, false))));
    return Struct_4(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(max(arg_0.x, arg_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.x)), 2003f, _wgslsmith_f_op_f32(144f - _wgslsmith_f_op_f32(min(arg_0.x, var_1.a.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_1.a.x, 404f, arg_0.x, arg_0.x))))) * _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(333f, var_1.a.x, 856f, arg_0.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a.x, arg_0.x, arg_0.x, -1183f))))))), _wgslsmith_add_u32(16402u, _wgslsmith_add_u32(_wgslsmith_mult_u32(4294967295u >> (var_0.x % 32u), 41438u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, var_0.x, 28493u, arg_1.x) & vec4<u32>(u_input.a.x, 4294967295u, 0u, 4299u), abs(vec4<u32>(u_input.a.x, 11222u, 41548u, arg_1.x))))), ~(i32(-1i) * -(i32(-1i) * -47386i)), arg_0.x);
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_4) -> vec4<bool> {
    let var_0 = Struct_3(!(!select(vec3<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 32u)], arg_0.x, false), arg_0.zxw, !arg_0.wyz)), vec4<u32>(~50335u, func_2(Struct_1(_wgslsmith_div_vec3_f32(arg_1.a.xwz, arg_1.a.yxx), max(arg_1.c, arg_1.c)), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-690f, 1000f), arg_1.a.wx, vec2<bool>(true, arg_0.x)))))), ~(~_wgslsmith_add_u32(u_input.a.x, 64626u)), _wgslsmith_add_u32(~(11630u >> (0u % 32u)), u_input.a.x)), vec2<bool>(~abs(u_input.a.x) < ~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 44894u), vec2<u32>(1u, 5544u)), false), arg_1.a.zy, arg_1.a.wy);
    var var_1 = var_0;
    let var_2 = Struct_1(vec3<f32>(1f, _wgslsmith_f_op_f32(ceil(542f)), _wgslsmith_f_op_f32(sign(1274f))), firstTrailingBit(~arg_1.c >> (_wgslsmith_div_u32(~29034u, arg_1.b) % 32u)));
    var var_3 = var_1.d;
    let var_4 = var_2;
    return arg_0;
}

fn func_5(arg_0: i32, arg_1: i32, arg_2: vec4<bool>, arg_3: Struct_1) -> Struct_1 {
    let var_0 = Struct_1(vec3<f32>(497f, -374f, _wgslsmith_f_op_f32(-arg_3.a.x)), arg_3.b);
    let var_1 = Struct_3(!(!(!vec3<bool>(true, global0[_wgslsmith_index_u32(25375u, 32u)], global0[_wgslsmith_index_u32(u_input.a.x, 32u)]))), vec4<u32>(~_wgslsmith_sub_u32(_wgslsmith_clamp_u32(u_input.a.x, 40532u, u_input.a.x), reverseBits(u_input.a.x)), ~_wgslsmith_add_u32(~1u, u_input.a.x), u_input.a.x, ~33732u), vec2<bool>(!(arg_2.x == true) & false, all(arg_2.zx)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a.x, 672f) * _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_3.a.x, -325f) + arg_3.a.yz)))), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(arg_3.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a.x, 1356f) * vec2<f32>(arg_3.a.x, arg_3.a.x))))));
    var var_2 = 1u;
    global0 = array<bool, 32>();
    let var_3 = true || (all(!select(vec4<bool>(arg_2.x, false, false, var_1.c.x), arg_2, vec4<bool>(false, false, var_1.c.x, false))) & true);
    return Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(func_1(vec2<f32>(var_0.a.x, var_0.a.x), firstTrailingBit(var_1.b.zz)).a.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(arg_3.a.x)), var_0.a.x)), var_1.d.x)), arg_0 << (~reverseBits(firstLeadingBit(var_1.b.x)) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<bool>(true, false, !any(vec3<bool>(false, select(false, global0[_wgslsmith_index_u32(0u, 32u)], global0[_wgslsmith_index_u32(88258u, 32u)]), !global0[_wgslsmith_index_u32(u_input.a.x, 32u)])), true);
    global0 = array<bool, 32>();
    var var_1 = func_5(-45832i, -(~max(-2147483647i, 0i) >> (u_input.a.x % 32u)), select(select(!select(vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 32u)], false, global0[_wgslsmith_index_u32(23604u, 32u)], var_0.x), vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 32u)], var_0.x, var_0.x, var_0.x), vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 32u)], var_0.x, global0[_wgslsmith_index_u32(u_input.a.x, 32u)], var_0.x)), func_4(vec4<bool>(var_0.x, true, false, false), func_1(vec2<f32>(1331f, 1394f), vec2<u32>(u_input.a.x, u_input.a.x))), var_0.x), select(func_4(vec4<bool>(var_0.x, global0[_wgslsmith_index_u32(4294967295u, 32u)], false, var_0.x), Struct_4(vec4<f32>(-621f, 476f, 494f, -1842f), u_input.a.x, 0i, -600f)), vec4<bool>(!var_0.x, any(var_0.wx), var_0.x, false), select(!vec4<bool>(global0[_wgslsmith_index_u32(15756u, 32u)], true, global0[_wgslsmith_index_u32(28599u, 32u)], global0[_wgslsmith_index_u32(u_input.a.x, 32u)]), vec4<bool>(true, true, true, true), var_0.x)), any(!select(vec4<bool>(var_0.x, true, var_0.x, true), vec4<bool>(var_0.x, var_0.x, var_0.x, false), vec4<bool>(var_0.x, false, true, global0[_wgslsmith_index_u32(u_input.a.x, 32u)])))), Struct_1(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(145f, 2023f, 1000f), vec3<f32>(-188f, -1023f, 928f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(856f, -1155f, -1194f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(129f, 2044f, 585f)))), 20169i));
    var var_2 = vec3<bool>(false, (_wgslsmith_mult_u32(u_input.a.x, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.a.x), vec2<u32>(53857u, 30715u))) <= 4294967295u) || !select(var_0.x, false, true), !any(vec3<bool>(!var_0.x, true, select(var_0.x, false, true))));
    let var_3 = Struct_4(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-1000f - var_1.a.x), _wgslsmith_f_op_f32(-1000f + -526f), _wgslsmith_f_op_f32(step(var_1.a.x, 437f)), _wgslsmith_f_op_f32(290f * var_1.a.x)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(1000f, -546f, -1000f, -1029f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a.x, var_1.a.x, 109f, 856f)))), !vec4<bool>(var_2.x, var_2.x, global0[_wgslsmith_index_u32(80602u, 32u)], true))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_1.a.x, -341f, -212f, var_1.a.x))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(2079f, 1531f, var_1.a.x, -1397f)))))), _wgslsmith_sub_u32(~func_1(_wgslsmith_f_op_vec2_f32(var_1.a.xy - var_1.a.yz), min(vec2<u32>(u_input.a.x, u_input.a.x), vec2<u32>(0u, u_input.a.x))).b, 0u), var_1.b, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(func_1(vec2<f32>(-146f, 811f), u_input.a.yx).a.x, _wgslsmith_f_op_f32(floor(var_1.a.x))))))));
    var_2 = select(!vec3<bool>(!(47804i != var_1.b), var_0.x & global0[_wgslsmith_index_u32(~4294967295u, 32u)], func_4(vec4<bool>(var_0.x, true, false, var_0.x), Struct_4(var_3.a, 12274u, var_3.c, -345f)).x), !vec3<bool>(false | (var_1.b >= 0i), -45550i <= var_3.c, var_0.x), true);
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(reverseBits(vec4<u32>(7124u, u_input.a.x, 2881u, var_3.b)) >> ((_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, var_3.b, 4294967295u, u_input.a.x), vec4<u32>(0u, 26480u, 10105u, 28433u)) >> (vec4<u32>(41483u, var_3.b, 4294967295u, 1u) % vec4<u32>(32u))) % vec4<u32>(32u))), _wgslsmith_dot_vec4_i32(vec4<i32>(13845i, abs(var_3.c), ~var_3.c, -var_3.c) & -_wgslsmith_clamp_vec4_i32(vec4<i32>(0i, -14397i, var_3.c, var_3.c), vec4<i32>(2147483647i, var_3.c, -49525i, -60846i), vec4<i32>(var_1.b, -2147483647i, var_3.c, -2147483647i)), min(-vec4<i32>(-2147483647i, -2147483647i, var_3.c, var_3.c), -vec4<i32>(var_3.c, var_3.c, var_3.c, 0i)) | (_wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, 1i, -40415i, 1519i), vec4<i32>(var_3.c, 48684i, 0i, var_3.c)) & ~vec4<i32>(var_3.c, var_1.b, 0i, var_3.c))), -1135f);
}

