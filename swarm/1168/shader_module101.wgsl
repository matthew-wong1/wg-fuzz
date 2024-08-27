struct Struct_1 {
    a: vec2<f32>,
    b: f32,
    c: bool,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: vec2<f32>,
    d: vec2<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec4<i32>(-21982i, -27886i, 32706i, 1362i));

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec3<f32>, arg_1: u32, arg_2: vec4<i32>) -> f32 {
    var var_0 = true;
    global0 = Struct_2(_wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, ~(-38021i), 0i, 1i), vec4<i32>(_wgslsmith_clamp_i32(arg_2.x, -47399i, arg_2.x), -1i, 42488i, global0.a.x)), vec4<i32>(_wgslsmith_div_i32(43142i, -35043i), select(global0.a.x, 0i, true) << (_wgslsmith_mult_u32(29199u, u_input.b.x) % 32u), -1i, -7056i)));
    global0 = Struct_2(vec4<i32>(_wgslsmith_mod_i32(3450i, _wgslsmith_mod_i32(7118i, 4063i)), 0i, -(arg_2.x & 0i), abs(1i >> (1u % 32u))) ^ abs(-abs(vec4<i32>(1i, 0i, global0.a.x, 37854i))));
    global0 = Struct_2(vec4<i32>(_wgslsmith_add_i32(0i, global0.a.x), arg_2.x, _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, arg_2.x), vec2<i32>(-17595i, -1i)) ^ 1i, 2147483647i) | -_wgslsmith_add_vec4_i32(vec4<i32>(-9931i, global0.a.x, -16823i, arg_2.x), global0.a));
    var var_1 = !any(vec3<bool>(true, false, false));
    return arg_0.x;
}

fn func_4(arg_0: vec3<f32>, arg_1: i32, arg_2: Struct_2) -> vec4<bool> {
    return vec4<bool>(!(!(!any(vec4<bool>(false, true, false, false)))), !(!(4294967295u >= u_input.b.x)) & true, true, true);
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(1746f * 673f), _wgslsmith_f_op_f32(f32(-1f) * -1391f)) - vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(462f, -704f))), 651f)), 2029f, firstLeadingBit(-_wgslsmith_mult_i32(u_input.c.x, u_input.c.x)) < abs(global0.a.x));
    var var_1 = func_4(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.a.x, _wgslsmith_f_op_f32(-1676f * 124f), var_0.a.x), vec3<f32>(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1100f, var_0.b, 912f) + vec3<f32>(var_0.a.x, var_0.b, 935f)), u_input.a.x, max(vec4<i32>(u_input.c.x, 2147483647i, -2147483647i, global0.a.x), u_input.c))), var_0.a.x, -694f), global0.a.x > countOneBits(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c.x, -2147483647i), global0.a.zx)))), _wgslsmith_dot_vec3_i32(select(_wgslsmith_add_vec3_i32(firstLeadingBit(u_input.c.xwx), vec3<i32>(39344i, global0.a.x, -2147483647i) << (u_input.b.xxw % vec3<u32>(32u))), abs(vec3<i32>(2147483647i, 1i, 2147483647i)) << (_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, 38562u), vec3<u32>(1u, 1u, 1u)) % vec3<u32>(32u)), all(vec2<bool>(false, var_0.c)) && var_0.c), _wgslsmith_mod_vec3_i32(-u_input.c.yzw, -u_input.c.ywy) << ((_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a.x, 1u, 4294967295u), vec3<u32>(4294967295u, u_input.a.x, 37885u)) << (~u_input.b.yyy % vec3<u32>(32u))) % vec3<u32>(32u))), Struct_2(~u_input.c));
    var var_2 = var_1.x;
    global0 = Struct_2(~(-(~u_input.c)));
    let var_3 = vec2<bool>(var_0.c & var_0.c, var_1.x);
    return Struct_2(u_input.c);
}

fn func_1(arg_0: vec2<u32>) -> StorageBuffer {
    global0 = func_2();
    let var_0 = _wgslsmith_clamp_u32(max(1u, ~(~(~16271u))), firstTrailingBit(1u), _wgslsmith_dot_vec4_u32(u_input.b, u_input.b));
    var var_1 = Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-381f, 1847f)))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1016f, 1502f)) + _wgslsmith_f_op_f32(step(-1504f, 2461f))), _wgslsmith_f_op_f32(min(-1241f, _wgslsmith_f_op_f32(-1649f - -2038f))))), 881f, true);
    let var_2 = func_4(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_1.a.x, 198f, -1352f), vec3<f32>(678f, var_1.b, var_1.a.x))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_1.a.x, 1000f, 1022f), vec3<f32>(var_1.b, -710f, var_1.b), vec3<bool>(var_1.c, var_1.c, false))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(488f, var_1.a.x, var_1.a.x)), var_1.c)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a.x, 730f, -253f))), select(select(vec3<bool>(var_1.c, var_1.c, var_1.c), !vec3<bool>(var_1.c, true, var_1.c), select(vec3<bool>(var_1.c, var_1.c, var_1.c), vec3<bool>(false, true, var_1.c), vec3<bool>(false, false, false))), !vec3<bool>(var_1.c, true, true), -54871i > global0.a.x))), u_input.c.x, func_2()).x;
    var var_3 = _wgslsmith_mult_u32(var_0, 44116u);
    return StorageBuffer(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_1.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.x)), -351f), vec3<f32>(_wgslsmith_f_op_f32(-253f - _wgslsmith_f_op_f32(-var_1.a.x)), _wgslsmith_f_op_f32(-var_1.a.x), _wgslsmith_f_op_f32(step(var_1.a.x, _wgslsmith_f_op_f32(var_1.b + var_1.b)))))), -214f, var_1.a, u_input.c.xz, 32787u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_2(countOneBits(~u_input.c));
    let x = u_input.a;
    s_output = func_1(vec2<u32>(9500u, countOneBits(1u)));
}

