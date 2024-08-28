struct Struct_1 {
    a: i32,
    b: vec3<f32>,
    c: vec4<f32>,
    d: i32,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: bool,
}

struct Struct_4 {
    a: i32,
    b: i32,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 16>;

var<private> global1: vec3<bool>;

var<private> global2: i32;

var<private> global3: array<vec2<f32>, 9>;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_3, arg_1: vec4<u32>, arg_2: vec3<bool>) -> bool {
    var var_0 = select(u_input.a, 1i, any(vec3<bool>(1i == u_input.a, any(arg_2), false)));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1000f)) - _wgslsmith_f_op_f32(f32(-1f) * -966f)))));
    global3 = array<vec2<f32>, 9>();
    let var_2 = !vec4<bool>(!(!all(vec4<bool>(global1.x, global1.x, true, false))), all(vec2<bool>(arg_0.a.a, global1.x)), false, global1.x);
    global1 = !select(!select(!arg_2, !var_2.zzw, arg_2.x), vec3<bool>(all(select(var_2.xx, global1.yx, arg_2.xz)), arg_2.x, any(select(var_2, vec4<bool>(false, false, arg_2.x, var_2.x), var_2))), !(!var_2.wxz));
    return arg_0.b.a;
}

fn func_4(arg_0: vec4<bool>, arg_1: vec3<f32>, arg_2: vec2<f32>) -> i32 {
    var var_0 = countOneBits(~(~vec2<u32>(18833u, global0[_wgslsmith_index_u32(8968u, 16u)])) & firstTrailingBit(_wgslsmith_sub_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(u_input.c.x, 16u)], 4294967295u), ~u_input.c)));
    var_0 = select(_wgslsmith_sub_vec2_u32(~countOneBits(reverseBits(u_input.c)), ~(~(vec2<u32>(global0[_wgslsmith_index_u32(1u, 16u)], var_0.x) << (vec2<u32>(global0[_wgslsmith_index_u32(3131u, 16u)], 15251u) % vec2<u32>(32u))))), vec2<u32>(~85420u, 57890u) & _wgslsmith_clamp_vec2_u32(countOneBits(vec2<u32>(0u, global0[_wgslsmith_index_u32(var_0.x, 16u)])), vec2<u32>(global0[_wgslsmith_index_u32(1u, 16u)], _wgslsmith_mult_u32(u_input.c.x, 23231u)), u_input.c), !select(!(!global1.xx), select(!global1.yx, vec2<bool>(true, arg_0.x), true), all(vec2<bool>(true, true))));
    var var_1 = Struct_1(firstLeadingBit(_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(-vec4<i32>(u_input.a, -8545i, -2147483647i, u_input.a), _wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, u_input.a, 1i, u_input.b.x), vec4<i32>(64922i, 1i, -2147483647i, u_input.b.x))), ~select(vec4<i32>(-2147483647i, u_input.a, u_input.a, u_input.b.x), vec4<i32>(-2147483647i, u_input.b.x, -57927i, u_input.b.x), false))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)), arg_1.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(375f * 1785f) + _wgslsmith_f_op_f32(-arg_1.x))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_2.x, arg_2.x, 576f, -392f), vec4<f32>(764f, 677f, 543f, 1559f)))))), ~u_input.a);
    let var_2 = select(select(vec2<bool>(true, global1.x), select(select(select(vec2<bool>(global1.x, false), vec2<bool>(global1.x, false), arg_0.x), !arg_0.zz, !global1.zx), vec2<bool>(true, true), true), select(true, true, false)), vec2<bool>(false, false), !(!(!(arg_1.x != 1996f))));
    global2 = select(_wgslsmith_div_i32(_wgslsmith_mod_i32(~_wgslsmith_sub_i32(u_input.b.x, var_1.a), max(_wgslsmith_mult_i32(-69239i, 30663i), var_1.d)), u_input.a), ~(-(~u_input.b.x | ~35371i)), all(select(!arg_0, vec4<bool>(!arg_0.x, true, 2147483647i > u_input.a, global1.x), all(!vec2<bool>(global1.x, global1.x)))));
    return ~(u_input.a & _wgslsmith_dot_vec4_i32(-_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b.x, u_input.a, -2147483647i, var_1.a), vec4<i32>(80967i, var_1.d, 2147483647i, u_input.a)), vec4<i32>(-1i) * -vec4<i32>(var_1.d, var_1.d, var_1.d, -44242i)));
}

fn func_2(arg_0: vec3<i32>, arg_1: vec2<f32>, arg_2: bool, arg_3: vec2<i32>) -> i32 {
    global0 = array<u32, 16>();
    let var_0 = arg_3;
    let var_1 = 262f;
    let var_2 = global1.x;
    let var_3 = ~(~(max(_wgslsmith_sub_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(0u, 16u)], u_input.d, global0[_wgslsmith_index_u32(32011u, 16u)]), vec3<u32>(global0[_wgslsmith_index_u32(u_input.c.x, 16u)], 4294967295u, 30431u)), ~vec3<u32>(24712u, 21550u, 65608u)) ^ (vec3<u32>(0u, 4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 16u)], 16u)]) << (~vec3<u32>(global0[_wgslsmith_index_u32(26496u, 16u)], 1u, global0[_wgslsmith_index_u32(u_input.d, 16u)]) % vec3<u32>(32u)))));
    return -(arg_3.x ^ _wgslsmith_clamp_i32(1i, 0i ^ var_0.x, i32(-1i) * -2147483647i)) | func_4(vec4<bool>(all(global1.yz), all(select(vec3<bool>(arg_2, arg_2, arg_2), vec3<bool>(arg_2, true, true), false)), all(!vec3<bool>(false, arg_2, true)), global1.x & func_3(Struct_3(Struct_2(true), Struct_2(false), arg_2), vec4<u32>(4930u, global0[_wgslsmith_index_u32(28594u, 16u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 16u)], 16u)], 4294967295u), vec3<bool>(global1.x, false, false))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-404f, 1713f, 1000f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-729f, arg_1.x, arg_1.x)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1674f, _wgslsmith_f_op_f32(max(-436f, arg_1.x)))));
}

fn func_1(arg_0: vec4<u32>, arg_1: bool, arg_2: f32, arg_3: f32) -> StorageBuffer {
    let var_0 = _wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(select(vec4<i32>(u_input.a, u_input.a, 0i, 42159i), vec4<i32>(u_input.a, u_input.b.x, u_input.a, u_input.a), true), ~vec4<i32>(u_input.a, u_input.a, -37883i, -2147483647i)), -vec4<i32>(45279i, 10807i, u_input.a, 1i) & vec4<i32>(u_input.b.x, u_input.b.x, u_input.a, 1i)), vec4<i32>(u_input.a, ~12819i, -2147483647i & (-50725i >> (arg_0.x % 32u)), func_2(-vec3<i32>(30529i, 11427i, -49183i), _wgslsmith_div_vec2_f32(global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(62861u, 16u)], 9u)], vec2<f32>(-217f, -734f)), true, u_input.b.xz))) ^ -firstLeadingBit(vec4<i32>(61132i, u_input.b.x, 24027i, -11646i) << (arg_0 % vec4<u32>(32u)));
    var var_1 = -_wgslsmith_sub_vec3_i32(abs(vec3<i32>(_wgslsmith_div_i32(u_input.a, u_input.b.x), i32(-1i) * -12523i, ~u_input.b.x)), var_0.zyz);
    global1 = vec3<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * arg_2)) + arg_3) > _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(1764f)), 2759f)), arg_1, any(select(select(vec2<bool>(false, true), vec2<bool>(true, global1.x), vec2<bool>(global1.x, false)), vec2<bool>(arg_1, false | global1.x), !select(global1.zx, global1.zz, arg_1))));
    let var_2 = select(!select(vec4<bool>(global1.x, !global1.x, !global1.x, arg_1), !select(vec4<bool>(arg_1, false, true, true), vec4<bool>(arg_1, false, arg_1, global1.x), vec4<bool>(false, arg_1, arg_1, global1.x)), vec4<bool>(global1.x, true, true, arg_1)), !(!select(!vec4<bool>(false, arg_1, false, false), select(vec4<bool>(global1.x, global1.x, false, false), vec4<bool>(false, arg_1, true, arg_1), vec4<bool>(global1.x, true, false, arg_1)), false)), !func_3(Struct_3(Struct_2(false), Struct_2(arg_1), true), ~_wgslsmith_div_vec4_u32(vec4<u32>(arg_0.x, 0u, 16101u, global0[_wgslsmith_index_u32(1u, 16u)]), vec4<u32>(7680u, 1u, arg_0.x, 22280u)), select(select(vec3<bool>(true, global1.x, arg_1), vec3<bool>(true, false, global1.x), global1.x), vec3<bool>(false, global1.x, arg_1), arg_1)));
    global3 = array<vec2<f32>, 9>();
    return StorageBuffer(-countOneBits(select(countOneBits(vec2<i32>(0i, 21391i)), max(u_input.b.yx, vec2<i32>(-2147483647i, -1i)), var_2.xw)), var_0.zyw);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 16>();
    global3 = array<vec2<f32>, 9>();
    let x = u_input.a;
    s_output = func_1(vec4<u32>(~_wgslsmith_add_u32(countOneBits(global0[_wgslsmith_index_u32(0u, 16u)]), u_input.d >> (u_input.d % 32u)), u_input.d, 6003u, ~u_input.d), !any(global1.zz) & (global1.x | true), -103f, -171f);
}

