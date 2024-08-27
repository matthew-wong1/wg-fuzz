struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: f32,
    b: vec3<bool>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_2,
    c: Struct_2,
    d: Struct_1,
    e: u32,
}

struct Struct_4 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec4<f32>,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: Struct_1 = Struct_1(vec2<i32>(-25654i, -39339i));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec2<bool>, arg_1: u32, arg_2: Struct_3, arg_3: vec3<i32>) -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(149f * arg_2.b.a) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.a.x)))));
    var var_1 = arg_2;
    global1 = Struct_1(vec2<i32>(5921i, reverseBits(arg_3.x)) >> (_wgslsmith_div_vec2_u32(~u_input.c, _wgslsmith_mult_vec2_u32(u_input.c, vec2<u32>(u_input.b, 0u) >> (u_input.c % vec2<u32>(32u)))) % vec2<u32>(32u)));
    var var_2 = var_1.e;
    return arg_0;
}

fn func_2() -> Struct_1 {
    let var_0 = _wgslsmith_add_u32(52339u, 1u);
    var var_1 = !(!select(func_3(vec2<bool>(true, true), 2920u, Struct_3(vec2<f32>(-1818f, 1155f), Struct_2(global0.x, vec3<bool>(true, true, true)), Struct_2(1053f, vec3<bool>(true, false, false)), Struct_1(vec2<i32>(global1.a.x, 2959i)), u_input.a), select(vec3<i32>(global1.a.x, -18490i, 0i), vec3<i32>(69056i, global1.a.x, -2147483647i), true)), vec2<bool>(true, true), vec2<bool>(false, true)));
    let var_2 = Struct_3(global0.zy, Struct_2(global0.x, select(select(!vec3<bool>(var_1.x, var_1.x, true), !vec3<bool>(var_1.x, false, var_1.x), false), vec3<bool>(any(vec3<bool>(true, var_1.x, false)), false, true), var_1.x)), Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(298f, -1250f)) * _wgslsmith_f_op_f32(global0.x + global0.x)) * _wgslsmith_f_op_f32(689f * 686f)), select(!(!vec3<bool>(true, var_1.x, true)), select(vec3<bool>(var_1.x, false, var_1.x), !vec3<bool>(var_1.x, var_1.x, true), true), !var_1.x)), Struct_1(_wgslsmith_div_vec2_i32(global1.a & global1.a, global1.a) << (countOneBits(_wgslsmith_clamp_vec2_u32(u_input.c, u_input.c, vec2<u32>(var_0, 114462u))) % vec2<u32>(32u))), ~_wgslsmith_div_u32(1u | _wgslsmith_clamp_u32(4294967295u, u_input.e, 4294967295u), 0u));
    var var_3 = !(all(vec3<bool>(var_1.x, var_2.c.b.x, false)) && !(var_2.b.b.x || true));
    let var_4 = Struct_4(firstTrailingBit(vec4<i32>(0i, ~(-var_2.d.a.x), -firstLeadingBit(1i), global1.a.x)));
    return Struct_1(var_2.d.a);
}

fn func_1(arg_0: Struct_2, arg_1: u32, arg_2: bool) -> Struct_4 {
    global1 = func_2();
    var var_0 = global1.a.x;
    let var_1 = func_2();
    let var_2 = var_1.a.x | -(~(-200i));
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global0.x, -1403f, -824f))))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(122f, global0.x, 154f)))))));
    return Struct_4(_wgslsmith_add_vec4_i32(~vec4<i32>(var_1.a.x, _wgslsmith_add_i32(var_1.a.x, var_2), -23606i, var_2 & 0i), vec4<i32>(reverseBits(~var_2), firstLeadingBit(-var_2), reverseBits(var_1.a.x), ~_wgslsmith_div_i32(-1i, var_2))));
}

fn func_4(arg_0: bool, arg_1: Struct_4, arg_2: Struct_4, arg_3: bool) -> vec2<i32> {
    global1 = func_2();
    global1 = func_2();
    let var_0 = !select(select(vec4<bool>(arg_3, false, arg_0, global0.x >= global0.x), !vec4<bool>(arg_0, arg_3, arg_3, arg_0), !arg_3), !select(!vec4<bool>(true, false, true, arg_0), !vec4<bool>(false, true, false, arg_0), !vec4<bool>(true, false, arg_3, arg_3)), arg_0);
    let var_1 = Struct_1(abs(-global1.a));
    global0 = vec3<f32>(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global0.x))))), _wgslsmith_f_op_f32(-global0.x));
    return -abs(-max(select(vec2<i32>(4423i, -50453i), vec2<i32>(30722i, global1.a.x), arg_3), global1.a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 9394u;
    var var_1 = _wgslsmith_mod_vec2_i32(-vec2<i32>(global1.a.x, -8507i), ~_wgslsmith_div_vec2_i32(vec2<i32>(global1.a.x, -48428i), vec2<i32>(2147483647i, global1.a.x)) & (_wgslsmith_add_vec2_i32(global1.a, vec2<i32>(global1.a.x, global1.a.x)) ^ vec2<i32>(-19422i, -1i))) >> (u_input.c % vec2<u32>(32u));
    var_1 = _wgslsmith_mod_vec2_i32(~_wgslsmith_sub_vec2_i32(global1.a, _wgslsmith_mult_vec2_i32(global1.a, vec2<i32>(-23104i, var_1.x))), _wgslsmith_sub_vec2_i32(abs(min(vec2<i32>(-1i, var_1.x), ~vec2<i32>(-22720i, 0i))), func_4(!(global0.x < global0.x), Struct_4(_wgslsmith_div_vec4_i32(vec4<i32>(1i, var_1.x, -2147483647i, 43938i), vec4<i32>(31336i, 10074i, global1.a.x, -49395i))), func_1(Struct_2(-467f, vec3<bool>(false, false, false)), 1u, u_input.b <= u_input.c.x), global0.x <= global0.x)));
    global0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1672f, global0.x, _wgslsmith_f_op_f32(f32(-1f) * -1000f))))), vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(1129f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(531f + 1694f)) - _wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(select(-1107f, global0.x, false))))));
    var var_2 = ~vec3<u32>(~max(_wgslsmith_clamp_u32(u_input.b, u_input.a, 77815u), min(u_input.c.x, 96610u)), 1u, ~(~(u_input.e ^ u_input.c.x)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c.x, 4294967295u, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global0.x, global0.x, 394f, global0.x))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global0.x, 264f, 444f, 356f))) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-918f, global0.x, 416f, -476f), vec4<f32>(global0.x, global0.x, global0.x, global0.x), false)))) + _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(sign(100f)), global0.x, global0.x, _wgslsmith_f_op_f32(select(global0.x, 1721f, true)))))), _wgslsmith_mod_i32(_wgslsmith_mod_i32(2147483647i, 2147483647i), 2147483647i), var_2.x);
}

