struct Struct_1 {
    a: vec3<f32>,
    b: bool,
    c: i32,
    d: bool,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<f32>,
    c: vec3<i32>,
    d: vec4<i32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 32>;

var<private> global1: array<u32, 6> = array<u32, 6>(99988u, 38044u, 1u, 93594u, 4294967295u, 1u);

var<private> global2: bool;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec4<bool>) -> vec3<i32> {
    global2 = !all(arg_0);
    return vec3<i32>(min(-2147483647i, -abs(1i << (0u % 32u))), ~1i, u_input.c);
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<bool>, arg_3: u32) -> Struct_1 {
    let var_0 = _wgslsmith_mult_vec3_i32(vec3<i32>(arg_1.c & arg_0.c, reverseBits(u_input.c), u_input.c) | func_3(vec4<bool>(true, true, true, true)), select(vec3<i32>(14757i, max(arg_0.c, 28836i), -2147483647i), -vec3<i32>(2147483647i, arg_0.c, arg_1.c), arg_0.b | any(arg_2.xx))) >> (_wgslsmith_mod_vec3_u32(~min(vec3<u32>(5542u, u_input.b, u_input.d), vec3<u32>(global1[_wgslsmith_index_u32(50423u, 6u)], arg_3, global1[_wgslsmith_index_u32(arg_3, 6u)])) << (_wgslsmith_add_vec3_u32(vec3<u32>(u_input.b, 1u, 0u), ~vec3<u32>(53918u, u_input.d, global1[_wgslsmith_index_u32(8337u, 6u)])) % vec3<u32>(32u)), _wgslsmith_mod_vec3_u32(countOneBits(vec3<u32>(arg_3, 4294967295u, 71308u)) & vec3<u32>(arg_3, arg_3, global1[_wgslsmith_index_u32(4294967295u, 6u)]), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.d, arg_3, arg_3), vec3<u32>(u_input.d, u_input.a, 1u), _wgslsmith_clamp_vec3_u32(vec3<u32>(7498u, arg_3, 4294967295u), vec3<u32>(1u, global1[_wgslsmith_index_u32(23070u, 6u)], 4294967295u), vec3<u32>(1u, arg_3, 4294967295u))))) % vec3<u32>(32u));
    global1 = array<u32, 6>();
    var var_1 = select(vec3<u32>(global1[_wgslsmith_index_u32(32319u, 6u)], 0u & ~(~u_input.a), ~1u), ~min(abs(vec3<u32>(97694u, 4294967295u, 0u)), vec3<u32>(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.d, 6u)], 6u)], 4294967295u, ~global1[_wgslsmith_index_u32(u_input.b, 6u)])), arg_2);
    let var_2 = arg_1.d;
    let var_3 = _wgslsmith_sub_vec3_i32(firstTrailingBit(-select(vec3<i32>(1i, var_0.x, arg_0.c), var_0 ^ vec3<i32>(var_0.x, var_0.x, arg_0.c), select(arg_2, vec3<bool>(var_2, true, arg_0.d), false))), max(abs(max(vec3<i32>(-1i, u_input.c, arg_0.c), _wgslsmith_mod_vec3_i32(var_0, var_0))), ~vec3<i32>(0i, _wgslsmith_div_i32(arg_1.c, var_0.x), u_input.c)));
    return Struct_1(_wgslsmith_f_op_vec3_f32(trunc(arg_0.e.yzy)), var_2, arg_1.c, true, vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.e.x) * 935f), 240f)), _wgslsmith_f_op_f32(268f + arg_1.a.x), -2565f, -1032f));
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1, arg_3: vec3<bool>) -> Struct_1 {
    return arg_0;
}

fn func_1(arg_0: u32, arg_1: Struct_1) -> vec3<u32> {
    global2 = all(select(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_clamp_u32(abs(4294967295u), ~57931u, ~u_input.b), firstTrailingBit(global1[_wgslsmith_index_u32(~u_input.b, 6u)])), 32u)], !global0[_wgslsmith_index_u32(arg_0, 32u)], global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(0u, 6u)], u_input.d), vec2<u32>(1u, 20551u)) | u_input.d, 6u)], 32u)]));
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(trunc(arg_1.a)), arg_1.b, 23602i, true, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-162f, -1742f, arg_1.e.x, _wgslsmith_div_f32(arg_1.e.x, -289f)))));
    let var_1 = arg_1;
    let var_2 = func_4(func_2(Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(628f, -397f, -1585f) - vec3<f32>(-1906f, -264f, var_0.a.x)), arg_1.b, _wgslsmith_add_i32(-1i, var_1.c), any(vec3<bool>(true, false, arg_1.d)), vec4<f32>(_wgslsmith_f_op_f32(-225f * var_1.e.x), var_0.a.x, _wgslsmith_f_op_f32(min(113f, 1356f)), _wgslsmith_div_f32(var_1.a.x, -124f))), arg_1, select(vec3<bool>(false, var_0.b & true, true), vec3<bool>(var_0.d, !var_1.b, false), any(select(vec3<bool>(arg_1.d, false, false), vec3<bool>(var_1.b, false, var_0.b), var_1.b))), 38492u), arg_1.e.x, var_1, !select(vec3<bool>(arg_1.c != var_0.c, true || var_1.b, var_1.d), !select(vec3<bool>(false, true, false), vec3<bool>(var_1.b, false, var_0.d), true), select(select(vec3<bool>(var_0.d, true, true), vec3<bool>(arg_1.d, arg_1.b, false), vec3<bool>(true, arg_1.d, true)), vec3<bool>(var_0.d, arg_1.d, var_0.b), !vec3<bool>(var_1.d, arg_1.d, var_1.d))));
    var var_3 = _wgslsmith_dot_vec4_u32(~_wgslsmith_add_vec4_u32(min(vec4<u32>(arg_0, 0u, u_input.b, 4294967295u), vec4<u32>(4294967295u, global1[_wgslsmith_index_u32(0u, 6u)], 4294967295u, 48859u)), vec4<u32>(u_input.a, 4294967295u, global1[_wgslsmith_index_u32(0u, 6u)], 1u) ^ vec4<u32>(0u, 41729u, u_input.a, arg_0)), ~abs(~vec4<u32>(4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_0, 6u)], 6u)], 0u, u_input.a))) | 1u;
    return vec3<u32>(31801u, 1u, arg_0);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<bool>, 32>();
    global2 = true;
    let var_0 = global0[_wgslsmith_index_u32(21449u, 32u)];
    let x = u_input.a;
    s_output = StorageBuffer(func_1(33221u, Struct_1(vec3<f32>(_wgslsmith_f_op_f32(select(815f, 227f, var_0.x)), _wgslsmith_f_op_f32(447f + 339f), _wgslsmith_f_op_f32(f32(-1f) * -1098f)), var_0.x, u_input.c, false, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1826f, -1542f, 363f, 1000f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(1f, 1f))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(270f, 426f), vec2<f32>(-431f, -1264f), any(vec3<bool>(false, true, false)))) - func_4(func_4(Struct_1(vec3<f32>(-111f, -569f, 1462f), var_0.x, -2147483647i, var_0.x, vec4<f32>(585f, -743f, -902f, 1991f)), -1412f, Struct_1(vec3<f32>(413f, -1229f, 366f), true, u_input.c, false, vec4<f32>(-929f, -1000f, 997f, 997f)), vec3<bool>(var_0.x, var_0.x, var_0.x)), _wgslsmith_f_op_f32(sign(-699f)), func_2(Struct_1(vec3<f32>(-2379f, 224f, -221f), true, u_input.c, false, vec4<f32>(585f, -1430f, -935f, -834f)), Struct_1(vec3<f32>(-697f, -1858f, -625f), true, u_input.c, true, vec4<f32>(1000f, 1000f, 1870f, -347f)), vec3<bool>(var_0.x, var_0.x, true), 0u), vec3<bool>(true, true, true)).a.zx)), abs(firstLeadingBit(reverseBits(_wgslsmith_mod_vec3_i32(vec3<i32>(27562i, u_input.c, -31214i), vec3<i32>(8187i, u_input.c, u_input.c))))), reverseBits(abs(_wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(24700i, u_input.c, u_input.c, -20984i), vec4<i32>(-1i, u_input.c, 1i, u_input.c)), firstLeadingBit(vec4<i32>(-8601i, 2147483647i, u_input.c, -2147483647i))))), vec3<i32>(u_input.c, u_input.c, ~func_3(!vec4<bool>(var_0.x, true, false, false)).x));
}

