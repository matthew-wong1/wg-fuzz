struct Struct_1 {
    a: bool,
    b: bool,
    c: vec2<u32>,
    d: vec3<i32>,
    e: bool,
}

struct Struct_2 {
    a: f32,
    b: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<bool>,
}

struct Struct_4 {
    a: vec4<f32>,
    b: f32,
    c: u32,
}

struct Struct_5 {
    a: Struct_4,
    b: bool,
    c: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 24>;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> vec2<u32> {
    global0 = array<vec2<i32>, 24>();
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(170f + -675f) * 939f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2314f * 1000f) + _wgslsmith_f_op_f32(1000f + 316f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(-1167f, _wgslsmith_f_op_f32(309f * -1199f)))))), 1000f);
    global0 = array<vec2<i32>, 24>();
    let var_1 = Struct_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.x, -404f, 1f, _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_0.x, -116f, var_0.x, var_0.x))))) - vec4<f32>(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-283f - -572f)), -1000f, var_0.x)), _wgslsmith_f_op_f32(var_0.x + -1426f), u_input.a);
    let var_2 = Struct_1(false, !(true && (var_0.x == -1000f)) | !any(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false))), _wgslsmith_mod_vec2_u32(min(u_input.c.zx, vec2<u32>(1u, abs(31727u))), u_input.c.wz), -(-_wgslsmith_div_vec3_i32(vec3<i32>(2147483647i, -2147483647i, u_input.b), vec3<i32>(u_input.b, u_input.b, u_input.b)) << (vec3<u32>(~47706u, u_input.c.x | 20494u, var_1.c) % vec3<u32>(32u))), true);
    return vec2<u32>(~(~(~max(1u, var_1.c))), ~u_input.c.x);
}

fn func_4(arg_0: Struct_3, arg_1: vec3<u32>) -> bool {
    global0 = array<vec2<i32>, 24>();
    global0 = array<vec2<i32>, 24>();
    global0 = array<vec2<i32>, 24>();
    global0 = array<vec2<i32>, 24>();
    global0 = array<vec2<i32>, 24>();
    return arg_0.b.x;
}

fn func_2() -> vec3<bool> {
    var var_0 = Struct_5(Struct_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-848f, -3006f, 170f, -339f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(456f, -356f, 1351f, -1951f) * vec4<f32>(1280f, -104f, -983f, -831f))))), _wgslsmith_f_op_f32(f32(-1f) * -2524f), u_input.c.x), func_4(Struct_3(Struct_1(true, true, func_3(), -vec3<i32>(u_input.b, u_input.b, u_input.b), all(vec3<bool>(false, true, false))), vec3<bool>(true, true, true)), max(u_input.c.xxw, reverseBits(firstTrailingBit(vec3<u32>(53970u, u_input.c.x, u_input.a))))), Struct_3(Struct_1(true, true, vec2<u32>(_wgslsmith_clamp_u32(u_input.a, 31357u, 0u), ~0u), vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-33885i, 2147483647i, -2147483647i), vec3<i32>(u_input.b, u_input.b, -9997i)), _wgslsmith_div_i32(u_input.b, u_input.b), u_input.b), true), select(!select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(true, true, false)), vec3<bool>(true, true, true), true)));
    let var_1 = (~(~_wgslsmith_sub_vec4_i32(vec4<i32>(var_0.c.a.d.x, u_input.b, -43227i, u_input.b), vec4<i32>(u_input.b, var_0.c.a.d.x, 1i, var_0.c.a.d.x))) ^ (select(-vec4<i32>(-1i, var_0.c.a.d.x, u_input.b, u_input.b), vec4<i32>(var_0.c.a.d.x, u_input.b, var_0.c.a.d.x, -2147483647i), true) ^ ~vec4<i32>(-1i, u_input.b, 61254i, 42054i))) & vec4<i32>(_wgslsmith_dot_vec4_i32(firstLeadingBit(_wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, var_0.c.a.d.x, 28003i, u_input.b), vec4<i32>(-2147483647i, 24832i, var_0.c.a.d.x, 13471i))), ~(vec4<i32>(1i, u_input.b, u_input.b, -34956i) & vec4<i32>(u_input.b, -4759i, -40325i, var_0.c.a.d.x))), -5473i, u_input.b, _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(var_0.c.a.d, vec3<i32>(u_input.b, u_input.b, 12707i)), -(~vec3<i32>(2147483647i, 2147483647i, var_0.c.a.d.x))));
    var var_2 = var_0.c.b;
    global0 = array<vec2<i32>, 24>();
    let var_3 = Struct_2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.a.b)))))), func_4(var_0.c, ~(~vec3<u32>(4294967295u, 68877u, u_input.c.x)) | vec3<u32>(firstLeadingBit(4294967295u), ~var_0.a.c, _wgslsmith_add_u32(0u, 7019u))));
    return var_0.c.b;
}

fn func_1() -> vec3<f32> {
    global0 = array<vec2<i32>, 24>();
    global0 = array<vec2<i32>, 24>();
    let var_0 = u_input.b;
    let var_1 = _wgslsmith_sub_vec3_i32(select(max(~(~vec3<i32>(u_input.b, -9602i, -2147483647i)), -_wgslsmith_mod_vec3_i32(vec3<i32>(1i, var_0, -36941i), vec3<i32>(u_input.b, u_input.b, u_input.b))), -select(abs(vec3<i32>(-1i, u_input.b, var_0)), _wgslsmith_mult_vec3_i32(vec3<i32>(44818i, 2147483647i, 22843i), vec3<i32>(5307i, u_input.b, var_0)), func_2()), any(select(vec4<bool>(true, true, false, true), select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, false)), any(vec4<bool>(false, false, false, false))))), firstLeadingBit(select(max(vec3<i32>(var_0, 1i, 2147483647i) | vec3<i32>(1i, -1i, var_0), vec3<i32>(u_input.b, 0i, u_input.b) & vec3<i32>(u_input.b, u_input.b, 52615i)), firstTrailingBit(~vec3<i32>(-2147483647i, 4768i, var_0)), func_2())));
    var var_2 = func_4(Struct_3(Struct_1(false, any(select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(false, false, true))), abs(~vec2<u32>(u_input.a, 0u)), -vec3<i32>(-1i, u_input.b, var_1.x), true), !vec3<bool>(any(vec3<bool>(false, true, true)), func_2().x, true)), ((_wgslsmith_clamp_vec3_u32(u_input.c.xwy, vec3<u32>(2757u, 0u, 0u), vec3<u32>(u_input.a, u_input.c.x, u_input.c.x)) | _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, u_input.c.x, 1u), u_input.c.wzz)) | (_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, 1u, 4294967295u), vec3<u32>(0u, 11116u, 55002u)) << (u_input.c.xwz % vec3<u32>(32u)))) ^ firstLeadingBit(~vec3<u32>(6582u, u_input.a, u_input.a) ^ ~vec3<u32>(u_input.a, 76703u, u_input.c.x)));
    return vec3<f32>(-252f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)), _wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(step(-829f, -968f))), true)));
}

fn func_5(arg_0: Struct_3, arg_1: vec3<f32>, arg_2: Struct_5, arg_3: i32) -> Struct_5 {
    let var_0 = arg_0.b.xz;
    let var_1 = arg_2.a;
    let var_2 = reverseBits(_wgslsmith_add_u32(43487u, abs(arg_2.a.c)));
    let var_3 = _wgslsmith_f_op_vec3_f32(func_1()).x;
    var var_4 = var_0.x;
    return arg_2;
}

fn func_6(arg_0: bool, arg_1: Struct_5, arg_2: bool, arg_3: Struct_2) -> Struct_4 {
    let var_0 = -u_input.b;
    let var_1 = Struct_1(68705u != func_5(Struct_3(Struct_1(arg_3.b, false, vec2<u32>(arg_1.c.a.c.x, u_input.c.x), arg_1.c.a.d, false), vec3<bool>(arg_3.b, false, arg_2)), arg_1.a.a.wwz, func_5(arg_1.c, vec3<f32>(arg_1.a.a.x, -972f, 808f), func_5(arg_1.c, arg_1.a.a.zzx, Struct_5(arg_1.a, arg_1.c.b.x, Struct_3(arg_1.c.a, arg_1.c.b)), -39501i), u_input.b), u_input.b).c.a.c.x, !any(!select(vec3<bool>(true, true, arg_2), arg_1.c.b, vec3<bool>(false, arg_0, false))), u_input.c.yy, arg_1.c.a.d, true);
    global0 = array<vec2<i32>, 24>();
    var var_2 = select(vec4<bool>(-426f > arg_3.a, true, true, true), vec4<bool>(!(!select(arg_1.b, false, arg_2)), any(vec2<bool>(!var_1.a, 1u == var_1.c.x)), false, true), vec4<bool>(arg_2, func_4(func_5(func_5(arg_1.c, arg_1.a.a.zxy, arg_1, arg_1.c.a.d.x).c, _wgslsmith_f_op_vec3_f32(max(arg_1.a.a.wxx, vec3<f32>(-941f, -361f, 239f))), Struct_5(Struct_4(vec4<f32>(591f, arg_1.a.b, arg_3.a, arg_1.a.b), arg_3.a, u_input.a), arg_2, arg_1.c), u_input.b).c, max(u_input.c.zxw, u_input.c.zxy | u_input.c.zyz)), true, func_2().x));
    var var_3 = _wgslsmith_dot_vec3_i32(-abs(~vec3<i32>(23486i, -484i, 1i)) & (-firstLeadingBit(vec3<i32>(-2147483647i, var_1.d.x, u_input.b)) << (~select(u_input.c.xzz, vec3<u32>(arg_1.c.a.c.x, u_input.c.x, 32084u), true) % vec3<u32>(32u))), vec3<i32>(-24580i, -11518i, u_input.b));
    return arg_1.a;
}

fn func_7(arg_0: i32, arg_1: Struct_4, arg_2: Struct_4) -> Struct_2 {
    global0 = array<vec2<i32>, 24>();
    var var_0 = max(_wgslsmith_clamp_i32(countOneBits(_wgslsmith_sub_i32(arg_0, arg_0) & _wgslsmith_mod_i32(arg_0, 10706i)), _wgslsmith_mult_i32(-29316i, countOneBits(-2147483647i)), max(~(-1i), ~arg_0)), arg_0);
    global0 = array<vec2<i32>, 24>();
    global0 = array<vec2<i32>, 24>();
    var var_1 = ~_wgslsmith_sub_vec3_u32(vec3<u32>(8554u, arg_1.c, countOneBits(~u_input.a)), min(vec3<u32>(~arg_1.c, ~4294967295u, u_input.c.x ^ 4294967295u), u_input.c.zzx));
    return Struct_2(func_6(false, func_5(Struct_3(func_5(Struct_3(Struct_1(true, true, u_input.c.yw, vec3<i32>(arg_0, -1i, 13965i), false), vec3<bool>(true, false, false)), arg_2.a.xyx, Struct_5(arg_1, true, Struct_3(Struct_1(true, true, var_1.zx, vec3<i32>(u_input.b, 19682i, arg_0), false), vec3<bool>(false, true, true))), -21607i).c.a, vec3<bool>(true, true, true)), _wgslsmith_f_op_vec3_f32(arg_1.a.xzx + _wgslsmith_f_op_vec3_f32(-arg_2.a.xzw)), Struct_5(arg_1, true, Struct_3(Struct_1(false, false, vec2<u32>(u_input.a, arg_1.c), vec3<i32>(-45858i, 1i, u_input.b), false), vec3<bool>(true, true, true))), _wgslsmith_clamp_i32(~(-1i), u_input.b, -1i)), true, Struct_2(_wgslsmith_f_op_vec3_f32(func_1()).x, true)).a.x, true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_7(-50770i, func_6(true, func_5(Struct_3(Struct_1(false, false, vec2<u32>(u_input.c.x, 10539u), vec3<i32>(14885i, -2147483647i, 5191i), true), vec3<bool>(false, false, false)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_1()), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-439f, 586f, -673f), vec3<f32>(-1461f, 525f, 511f)))), Struct_5(Struct_4(vec4<f32>(-457f, 2136f, -856f, -993f), 750f, u_input.c.x), func_2().x, Struct_3(Struct_1(true, false, vec2<u32>(0u, 88747u), vec3<i32>(u_input.b, u_input.b, 34895i), true), vec3<bool>(true, true, false))), u_input.b), true, Struct_2(_wgslsmith_f_op_f32(-1771f * _wgslsmith_f_op_f32(446f - 1017f)), func_2().x)), func_6(false, Struct_5(Struct_4(_wgslsmith_f_op_vec4_f32(vec4<f32>(1316f, -240f, -1000f, -107f) - vec4<f32>(-724f, 1000f, 363f, -940f)), _wgslsmith_f_op_f32(1015f - -1358f), u_input.c.x), true, func_5(Struct_3(Struct_1(true, false, u_input.c.ww, vec3<i32>(-1i, -2147483647i, 0i), true), vec3<bool>(true, true, true)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1228f, 1051f, -819f)), Struct_5(Struct_4(vec4<f32>(-354f, 913f, 723f, 941f), -556f, u_input.a), false, Struct_3(Struct_1(true, false, vec2<u32>(u_input.a, 0u), vec3<i32>(u_input.b, u_input.b, u_input.b), false), vec3<bool>(false, true, true))), u_input.b << (0u % 32u)).c), any(select(func_5(Struct_3(Struct_1(false, false, u_input.c.yx, vec3<i32>(0i, 0i, 2147483647i), false), vec3<bool>(true, false, true)), vec3<f32>(1000f, -2049f, 539f), Struct_5(Struct_4(vec4<f32>(-1478f, -357f, -2736f, -445f), -1000f, u_input.a), false, Struct_3(Struct_1(false, true, vec2<u32>(u_input.c.x, u_input.c.x), vec3<i32>(u_input.b, -60497i, 2147483647i), false), vec3<bool>(true, true, false))), u_input.b).c.b.xz, func_5(Struct_3(Struct_1(false, true, u_input.c.wz, vec3<i32>(u_input.b, -787i, u_input.b), true), vec3<bool>(true, true, true)), vec3<f32>(295f, -359f, 160f), Struct_5(Struct_4(vec4<f32>(130f, -887f, 1039f, 347f), -712f, 1u), true, Struct_3(Struct_1(true, true, vec2<u32>(u_input.a, u_input.a), vec3<i32>(19086i, u_input.b, 1242i), true), vec3<bool>(true, false, true))), u_input.b).c.b.zy, true)), Struct_2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1531f, 880f) + _wgslsmith_f_op_f32(min(801f, 589f))), any(vec3<bool>(false, false, true)))));
    var var_1 = Struct_5(func_6(false, Struct_5(Struct_4(vec4<f32>(-717f, 334f, -949f, -364f), _wgslsmith_f_op_f32(trunc(var_0.a)), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.c.x, u_input.a, 1u), u_input.c)), var_0.b, Struct_3(func_5(Struct_3(Struct_1(var_0.b, false, u_input.c.wz, vec3<i32>(39094i, u_input.b, u_input.b), false), vec3<bool>(false, true, false)), vec3<f32>(var_0.a, var_0.a, var_0.a), Struct_5(Struct_4(vec4<f32>(211f, var_0.a, 1432f, var_0.a), var_0.a, u_input.c.x), var_0.b, Struct_3(Struct_1(true, false, vec2<u32>(u_input.c.x, u_input.c.x), vec3<i32>(-18747i, u_input.b, 0i), false), vec3<bool>(var_0.b, false, var_0.b))), 0i).c.a, vec3<bool>(var_0.b, var_0.b, var_0.b))), var_0.b, var_0), true, func_5(func_5(Struct_3(func_5(Struct_3(Struct_1(true, var_0.b, vec2<u32>(33236u, 1u), vec3<i32>(2147483647i, -2147483647i, u_input.b), var_0.b), vec3<bool>(var_0.b, true, var_0.b)), vec3<f32>(733f, -242f, 1147f), Struct_5(Struct_4(vec4<f32>(var_0.a, -180f, 1588f, -1542f), var_0.a, u_input.c.x), var_0.b, Struct_3(Struct_1(false, var_0.b, u_input.c.yz, vec3<i32>(u_input.b, 7085i, u_input.b), var_0.b), vec3<bool>(var_0.b, false, true))), u_input.b).c.a, !vec3<bool>(var_0.b, var_0.b, var_0.b)), vec3<f32>(718f, _wgslsmith_f_op_f32(-var_0.a), -125f), Struct_5(Struct_4(vec4<f32>(1165f, -337f, var_0.a, -2135f), var_0.a, u_input.a), var_0.b, Struct_3(Struct_1(var_0.b, true, vec2<u32>(32311u, 28130u), vec3<i32>(-12875i, u_input.b, 5231i), false), vec3<bool>(var_0.b, var_0.b, var_0.b))), _wgslsmith_mult_i32(0i, ~37814i)).c, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a, var_0.a, 398f) * vec3<f32>(-160f, var_0.a, 728f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-520f, -759f, -1104f) - vec3<f32>(var_0.a, -197f, 831f)), select(vec3<bool>(var_0.b, true, var_0.b), vec3<bool>(false, true, var_0.b), false))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.a, var_0.a, 1027f), vec3<f32>(1551f, var_0.a, -103f), vec3<bool>(var_0.b, true, true))))), func_5(Struct_3(func_5(Struct_3(Struct_1(var_0.b, var_0.b, vec2<u32>(u_input.c.x, 21290u), vec3<i32>(-1i, u_input.b, 0i), true), vec3<bool>(true, true, true)), vec3<f32>(435f, 679f, -1000f), Struct_5(Struct_4(vec4<f32>(var_0.a, 712f, var_0.a, 904f), var_0.a, 19035u), true, Struct_3(Struct_1(var_0.b, false, vec2<u32>(1u, 0u), vec3<i32>(u_input.b, u_input.b, 2147483647i), var_0.b), vec3<bool>(true, var_0.b, var_0.b))), u_input.b).c.a, !vec3<bool>(true, var_0.b, true)), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a, var_0.a, var_0.a)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a, -1226f, var_0.a)))), Struct_5(func_6(var_0.b, Struct_5(Struct_4(vec4<f32>(1133f, 1125f, var_0.a, 1169f), var_0.a, u_input.a), var_0.b, Struct_3(Struct_1(false, false, vec2<u32>(0u, u_input.c.x), vec3<i32>(-36554i, u_input.b, u_input.b), true), vec3<bool>(var_0.b, true, false))), true, var_0), true, func_5(Struct_3(Struct_1(var_0.b, false, u_input.c.yz, vec3<i32>(-32119i, -16171i, u_input.b), true), vec3<bool>(false, false, true)), vec3<f32>(140f, -1178f, var_0.a), Struct_5(Struct_4(vec4<f32>(-137f, var_0.a, var_0.a, 2086f), -334f, u_input.a), true, Struct_3(Struct_1(var_0.b, true, u_input.c.zw, vec3<i32>(-31580i, -52993i, 1i), false), vec3<bool>(var_0.b, true, var_0.b))), u_input.b).c), max(_wgslsmith_clamp_i32(5081i, u_input.b, 31065i), _wgslsmith_add_i32(u_input.b, -12410i))), 17402i).c);
    var_1 = Struct_5(func_6(!(u_input.b > u_input.b), Struct_5(Struct_4(vec4<f32>(-1000f, var_1.a.a.x, var_0.a, var_1.a.b), _wgslsmith_f_op_f32(var_1.a.b - var_0.a), _wgslsmith_sub_u32(var_1.a.c, u_input.c.x)), u_input.b < 0i, var_1.c), false, var_0), true, func_5(var_1.c, vec3<f32>(-137f, var_0.a, 374f), Struct_5(var_1.a, true, func_5(Struct_3(Struct_1(var_1.b, var_0.b, vec2<u32>(u_input.a, 40359u), var_1.c.a.d, var_1.c.b.x), var_1.c.b), _wgslsmith_f_op_vec3_f32(var_1.a.a.wzy * var_1.a.a.zwz), func_5(Struct_3(Struct_1(false, var_0.b, vec2<u32>(u_input.c.x, var_1.c.a.c.x), var_1.c.a.d, false), var_1.c.b), var_1.a.a.zwz, Struct_5(var_1.a, false, var_1.c), -5734i), -2147483647i << (u_input.c.x % 32u)).c), select(-57497i << (var_1.a.c % 32u), 47305i, _wgslsmith_f_op_f32(var_1.a.b * var_1.a.a.x) == _wgslsmith_f_op_f32(-1000f * 143f))).c);
    var var_2 = 499f;
    var var_3 = select(!select(!vec4<bool>(var_1.b, var_0.b, true, true), vec4<bool>(true, any(var_1.c.b), var_0.b, var_1.c.a.d.x == 3540i), vec4<bool>(!var_1.b, select(var_1.c.b.x, var_0.b, false), false, var_1.c.a.e || false)), !(!select(select(vec4<bool>(false, true, false, var_1.c.b.x), vec4<bool>(var_1.b, var_0.b, var_1.c.b.x, var_1.b), vec4<bool>(var_1.c.b.x, true, var_0.b, true)), vec4<bool>(var_1.b, true, false, true), select(vec4<bool>(var_1.b, var_1.c.a.a, true, var_1.c.b.x), vec4<bool>(var_0.b, false, var_0.b, var_1.c.a.a), vec4<bool>(true, false, true, var_1.c.b.x)))), select(!select(vec4<bool>(false, true, var_1.c.b.x, false), vec4<bool>(var_0.b, false, var_1.c.a.a, false), 1441f < var_0.a), select(vec4<bool>(var_1.b, !var_0.b, func_4(var_1.c, vec3<u32>(var_1.c.a.c.x, 2796u, 4294967295u)), func_5(var_1.c, vec3<f32>(var_1.a.b, var_1.a.a.x, var_0.a), Struct_5(var_1.a, var_1.c.b.x, Struct_3(var_1.c.a, var_1.c.b)), var_1.c.a.d.x).b), select(vec4<bool>(true, var_0.b, false, true), select(vec4<bool>(false, false, var_1.c.b.x, var_1.b), vec4<bool>(false, var_1.b, var_1.c.a.b, var_0.b), vec4<bool>(var_0.b, true, true, var_0.b)), select(vec4<bool>(var_0.b, false, var_0.b, var_0.b), vec4<bool>(false, var_0.b, false, var_1.c.b.x), vec4<bool>(var_1.b, var_0.b, var_1.c.a.a, false))), !select(false, false, var_0.b)), vec4<bool>(var_1.c.b.x, any(vec4<bool>(true, true, true, true)), any(var_1.c.b), false)));
    var var_4 = Struct_4(vec4<f32>(_wgslsmith_div_f32(func_7(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 29369i, var_1.c.a.d.x, 0i), vec4<i32>(var_1.c.a.d.x, 0i, var_1.c.a.d.x, -11123i)), var_1.a, var_1.a).a, 1f), var_0.a, 371f, func_7(max(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, u_input.b, -2147483647i, u_input.b), vec4<i32>(-2147483647i, var_1.c.a.d.x, -49348i, -41667i)), _wgslsmith_dot_vec2_i32(vec2<i32>(21822i, u_input.b), global0[_wgslsmith_index_u32(106098u, 24u)])), func_6(var_3.x == var_1.c.b.x, func_5(Struct_3(var_1.c.a, var_1.c.b), var_1.a.a.zwx, Struct_5(var_1.a, true, Struct_3(Struct_1(true, true, vec2<u32>(0u, 61539u), vec3<i32>(var_1.c.a.d.x, -10669i, -1i), var_3.x), var_1.c.b)), u_input.b), var_0.b, var_0), func_5(Struct_3(var_1.c.a, vec3<bool>(var_1.b, false, true)), vec3<f32>(-1000f, 1483f, -386f), Struct_5(var_1.a, false, var_1.c), -2147483647i).a).a), var_1.a.b, u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-301f, _wgslsmith_f_op_f32(-1460f - -1572f), -869f, _wgslsmith_f_op_f32(151f * -680f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(508f, 871f, 389f, var_4.b), var_4.a))))), var_0.a, min(u_input.c, firstTrailingBit(~_wgslsmith_mod_vec4_u32(vec4<u32>(25623u, var_4.c, 0u, 1u), u_input.c))));
}

