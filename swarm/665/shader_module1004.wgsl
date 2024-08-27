struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: vec2<bool>,
    c: i32,
    d: bool,
}

struct Struct_5 {
    a: Struct_1,
    b: i32,
    c: i32,
    d: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: f32,
    d: i32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(-1i, -1i, 35769i, 2147483647i);

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2(arg_0: vec2<f32>, arg_1: Struct_5, arg_2: f32) -> i32 {
    var var_0 = i32(-1i) * -(-1i ^ ~(~global0.x));
    global0 = vec4<i32>(_wgslsmith_sub_i32(-1i | _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, arg_1.c), global0.wx), _wgslsmith_dot_vec3_i32(global0.wzw, global0.wzz)), global0.x), _wgslsmith_mod_i32(_wgslsmith_clamp_i32(_wgslsmith_sub_i32(1i, 11126i >> (0u % 32u)), _wgslsmith_dot_vec2_i32(vec2<i32>(arg_1.c, global0.x), vec2<i32>(-1i, arg_1.c)) ^ abs(arg_1.b), global0.x), 38623i), -2147483647i, -2147483647i);
    return -29377i;
}

fn func_3(arg_0: Struct_2, arg_1: u32, arg_2: Struct_4, arg_3: Struct_1) -> vec2<i32> {
    let var_0 = Struct_4(arg_2.a, !vec2<bool>(select(arg_2.c, -1i, true) > ~0i, true), 1i, all(select(select(vec3<bool>(arg_2.b.x, true, false), select(vec3<bool>(arg_2.a, arg_2.a, arg_2.a), vec3<bool>(false, arg_2.a, true), vec3<bool>(arg_2.a, arg_2.d, false)), vec3<bool>(true, arg_2.a, true)), !vec3<bool>(true, arg_2.a, true), all(arg_2.b))));
    var var_1 = arg_2;
    let var_2 = arg_0.a;
    var_1 = arg_2;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-477f + 147f));
    return firstLeadingBit(abs((abs(global0.zy) & ~vec2<i32>(-2147483647i, var_1.c)) ^ -global0.xy));
}

fn func_1(arg_0: bool, arg_1: vec4<f32>, arg_2: vec4<f32>) -> vec2<i32> {
    global0 = -firstLeadingBit(_wgslsmith_mod_vec4_i32(vec4<i32>(global0.x, global0.x ^ -1i, global0.x, max(0i, 0i)), ~(~vec4<i32>(global0.x, 1i, 10104i, global0.x))));
    global0 = vec4<i32>(~1i << (~_wgslsmith_sub_u32(~u_input.a.x, 0u) % 32u), 1i, ~global0.x, -8368i);
    global0 = select(vec4<i32>(-42115i, 2147483647i << (((u_input.a.x & u_input.a.x) & 1u) % 32u), ~reverseBits(82769i), global0.x), _wgslsmith_mod_vec4_i32(~(-vec4<i32>(-14103i, -1i, 1i, global0.x) | vec4<i32>(global0.x, -11664i, global0.x, 62273i)), reverseBits(~vec4<i32>(global0.x, global0.x, global0.x, global0.x))), func_2(_wgslsmith_div_vec2_f32(arg_1.yx, arg_1.yx), Struct_5(Struct_1(arg_1), global0.x, 1i, -351f), _wgslsmith_f_op_f32(trunc(arg_2.x))) <= 46133i);
    var var_0 = u_input.a.x;
    let var_1 = Struct_3(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(2541f, arg_1.x, -1111f, 675f), vec4<f32>(-1000f, -130f, -1861f, arg_1.x), true)))))));
    return countOneBits(-vec2<i32>(~global0.x, -1658i) ^ min(min(select(vec2<i32>(global0.x, 1i), vec2<i32>(global0.x, global0.x), true), func_3(Struct_2(var_1.a), 0u, Struct_4(true, vec2<bool>(arg_0, arg_0), global0.x, false), var_1.a)), vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(53103i, 11385i, global0.x, -28184i), vec4<i32>(global0.x, -2147483647i, -3464i, -1i)), _wgslsmith_mult_i32(global0.x, 24290i))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !all(vec4<bool>(all(vec2<bool>(false, false)) || select(false, false, true), true, true, u_input.a.x <= countOneBits(u_input.a.x)));
    var var_1 = _wgslsmith_div_vec2_i32(~(select(global0.yz ^ global0.zw, ~global0.ww, select(vec2<bool>(true, var_0), vec2<bool>(false, var_0), vec2<bool>(false, var_0))) & _wgslsmith_sub_vec2_i32(_wgslsmith_mult_vec2_i32(global0.zw, global0.wy), func_1(true, vec4<f32>(534f, -1155f, 232f, -133f), vec4<f32>(-3219f, 1000f, -1274f, -1761f)))), ~vec2<i32>(-func_2(vec2<f32>(-470f, -599f), Struct_5(Struct_1(vec4<f32>(-176f, 835f, 2947f, -301f)), 0i, -26087i, -219f), -2003f), -(2075i >> (u_input.a.x % 32u))));
    global0 = vec4<i32>(global0.x, ~_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(max(global0.yy, vec2<i32>(-2017i, var_1.x)), global0.yy), global0.zy), var_1.x, -global0.x);
    let var_2 = Struct_4(any(vec2<bool>(true, var_0)), vec2<bool>(true, true), countOneBits(-2122i << (u_input.a.x % 32u)), true);
    let var_3 = vec2<bool>(var_0, true);
    global0 = -vec4<i32>(var_1.x, _wgslsmith_mult_i32(1i, var_2.c), _wgslsmith_sub_i32(min(var_2.c, 13571i), var_2.c), countOneBits(var_2.c));
    var_1 = vec2<i32>(~func_2(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1362f, 1000f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-119f, -2422f) * vec2<f32>(-674f, 279f)))), Struct_5(Struct_1(vec4<f32>(540f, 1335f, 2511f, 871f)), 61811i, var_1.x | var_2.c, _wgslsmith_f_op_f32(ceil(-542f))), _wgslsmith_f_op_f32(trunc(103f))), i32(-1i) * -1i);
    let x = u_input.a;
    s_output = StorageBuffer(14392u, min(abs(_wgslsmith_sub_u32(4294967295u, u_input.a.x)) >> (reverseBits(firstTrailingBit(13881u)) % 32u), u_input.a.x), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-165f, -1196f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(583f - 865f) * _wgslsmith_f_op_f32(f32(-1f) * -585f))), _wgslsmith_f_op_f32(-642f * _wgslsmith_f_op_f32(trunc(1213f))))), 2920i, ~_wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(global0.x, 80515i, 10291i, var_1.x), vec4<i32>(-2147483647i, var_2.c, var_2.c, -8621i)), _wgslsmith_add_vec4_i32(vec4<i32>(16527i, 10118i, global0.x, -2147483647i), vec4<i32>(2147483647i, global0.x, var_2.c, var_1.x))), select(vec4<i32>(24105i, -11329i, var_2.c, var_2.c), vec4<i32>(var_1.x, var_2.c, global0.x, var_1.x), 2147483647i > global0.x)));
}

