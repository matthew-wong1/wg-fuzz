struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
}

struct Struct_5 {
    a: bool,
    b: vec3<i32>,
    c: u32,
    d: vec2<bool>,
    e: Struct_4,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: i32, arg_1: i32, arg_2: Struct_3, arg_3: Struct_2) -> vec2<bool> {
    let var_0 = 51843u;
    let var_1 = false;
    var var_2 = !select(!select(vec4<bool>(arg_2.a, arg_2.a, false, true), vec4<bool>(var_1, arg_3.b.x, true, arg_2.a), vec4<bool>(true, var_1, true, false)), arg_3.b, !(!arg_3.b));
    let var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.a.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_3.a.a), _wgslsmith_f_op_f32(ceil(1203f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(527f, -197f))), _wgslsmith_f_op_f32(select(1189f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_3.a.a, arg_3.a.a))), all(var_2.xx))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -2543f)))));
    var_2 = select(select(arg_3.b, !arg_3.b, arg_2.a), vec4<bool>(true, var_2.x & var_2.x, select(true, !arg_2.a, u_input.a.x <= countOneBits(var_0)), true), true);
    return !arg_3.b.wy;
}

fn func_2(arg_0: Struct_4, arg_1: Struct_5, arg_2: u32) -> f32 {
    let var_0 = Struct_5(arg_1.a, -min(select(arg_1.b, arg_1.b, vec3<bool>(true, arg_0.a.a, arg_1.a)) >> (~u_input.a.xwz % vec3<u32>(32u)), ~vec3<i32>(arg_1.b.x, 0i, 40583i)), arg_2 << (u_input.a.x % 32u), func_3(abs(~arg_1.b.x), arg_1.b.x, Struct_3(any(vec4<bool>(arg_0.a.a, arg_0.a.a, true, false))), Struct_2(arg_1.e.b, vec4<bool>(false, arg_0.a.a, any(vec3<bool>(arg_0.a.a, arg_1.e.a.a, false)), true))), Struct_4(arg_1.e.a, arg_1.e.b));
    let var_1 = 1918f;
    var var_2 = abs(~_wgslsmith_mult_vec2_u32(u_input.a.xw, u_input.a.wy) << (countOneBits(abs(~vec2<u32>(arg_2, u_input.a.x))) % vec2<u32>(32u)));
    var var_3 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(855f + -569f)))), vec4<bool>(any(!vec4<bool>(false, var_0.d.x, false, true)), !var_0.e.a.a, arg_1.a, !func_3(arg_1.b.x, _wgslsmith_mod_i32(arg_1.b.x, 2147483647i), arg_1.e.a, Struct_2(arg_1.e.b, vec4<bool>(false, arg_0.a.a, arg_0.a.a, true))).x));
    var_3 = Struct_2(Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(arg_0.b.a, arg_1.e.b.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1147f + -1000f)))), select(select(!(!var_3.b), var_3.b, any(var_3.b) & var_0.a), var_3.b, var_0.d.x));
    return _wgslsmith_f_op_f32(min(arg_0.b.a, _wgslsmith_f_op_f32(var_3.a.a + -492f)));
}

fn func_1(arg_0: u32, arg_1: vec4<f32>) -> f32 {
    var var_0 = vec3<i32>(-firstTrailingBit(98984i), _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, -11844i, 1i, select(2147483647i, -1i, false)), ~vec4<i32>(20171i, 8745i, 2147483647i, -14298i) << (u_input.a % vec4<u32>(32u))), -(~0i & (-2147483647i << (u_input.b % 32u)))), 0i);
    var_0 = vec3<i32>(1i, var_0.x & -1i, 1i);
    let var_1 = u_input.b;
    let var_2 = vec2<bool>(false, !(!any(vec3<bool>(true, false, true))) && false);
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_1) + _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(1375f, 1183f), arg_1.x, 197f, arg_1.x)))));
    return _wgslsmith_f_op_f32(arg_1.x * _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(340f * arg_1.x), _wgslsmith_div_f32(arg_1.x, 1339f)), _wgslsmith_f_op_f32(func_2(Struct_4(Struct_3(var_2.x), Struct_1(-452f)), Struct_5(false, vec3<i32>(1i, 0i, var_0.x), arg_0, vec2<bool>(false, var_2.x), Struct_4(Struct_3(var_2.x), Struct_1(-1019f))), 7758u))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(644f, -306f, any(vec4<bool>(true, false, true, false)))), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(377f, -1380f))))), !vec4<bool>(all(vec2<bool>(false, true)) | true, 428f != _wgslsmith_f_op_f32(func_1(881u, vec4<f32>(-847f, 1232f, 671f, -1011f))), false, any(select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, false)))));
    let var_1 = _wgslsmith_mod_vec2_i32(vec2<i32>(38650i, 1i), firstTrailingBit(max(vec2<i32>(1i, 1i), -vec2<i32>(-2147483647i, -40917i)) >> ((vec2<u32>(118591u, 27830u) ^ ~u_input.a.yw) % vec2<u32>(32u))));
    let var_2 = var_0.b.x;
    let var_3 = Struct_2(var_0.a, var_0.b);
    let var_4 = Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_3.a.a)))) < var_3.a.a, vec3<i32>(abs(_wgslsmith_mult_i32(var_1.x, 15139i & var_1.x)), -_wgslsmith_sub_i32(var_1.x, var_1.x) >> (u_input.b % 32u), _wgslsmith_dot_vec3_i32(~_wgslsmith_mod_vec3_i32(vec3<i32>(34335i, 41004i, -34428i), vec3<i32>(var_1.x, var_1.x, var_1.x)), abs(vec3<i32>(-48566i, var_1.x, var_1.x)) & _wgslsmith_div_vec3_i32(vec3<i32>(var_1.x, var_1.x, var_1.x), vec3<i32>(1i, var_1.x, 2147483647i)))), ~100102u, var_3.b.zy, Struct_4(Struct_3(true), var_0.a));
    let var_5 = Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(-1217f)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_u32(_wgslsmith_mult_u32(77343u, select(var_4.c, _wgslsmith_div_u32(1u, 1u), !var_0.b.x)), firstLeadingBit(_wgslsmith_div_u32(var_4.c, u_input.a.x)), ~var_4.c), var_0.a.a, _wgslsmith_div_vec4_i32(vec4<i32>(firstLeadingBit(var_4.b.x), 9732i << (1u % 32u), ~var_4.b.x, firstLeadingBit(-18870i)) ^ -abs(vec4<i32>(54860i, 18635i, 2147483647i, -5599i)), -vec4<i32>(-1i, abs(var_4.b.x), var_1.x, var_1.x)));
}

