struct Struct_1 {
    a: vec2<f32>,
    b: f32,
    c: vec2<f32>,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: bool,
    d: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 27>;

var<private> global1: array<u32, 4>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3() -> u32 {
    var var_0 = select(select(select(!select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), true), select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), true), select(vec3<bool>(false, false, false), select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, true)), vec3<bool>(true, true, true))), vec3<bool>(true && any(vec2<bool>(false, false)), any(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false))), all(vec3<bool>(true, true, true))), select(vec3<bool>(true, true, true), vec3<bool>(true, any(vec2<bool>(false, true)), true), !select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true)))), vec3<bool>(true, all(select(select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false)), select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false), false), vec4<bool>(true, true, true, true))), _wgslsmith_add_u32(~global1[_wgslsmith_index_u32(0u, 4u)], ~u_input.b.x) < 1u), false);
    var_0 = select(!select(select(select(vec3<bool>(true, var_0.x, var_0.x), vec3<bool>(var_0.x, false, var_0.x), vec3<bool>(var_0.x, var_0.x, var_0.x)), vec3<bool>(var_0.x, false, var_0.x), any(vec3<bool>(true, true, true))), vec3<bool>(true, !var_0.x, all(vec2<bool>(var_0.x, true))), select(select(vec3<bool>(var_0.x, true, var_0.x), vec3<bool>(var_0.x, false, var_0.x), vec3<bool>(true, var_0.x, false)), select(vec3<bool>(var_0.x, true, false), vec3<bool>(true, var_0.x, var_0.x), false), true)), vec3<bool>(false, all(vec3<bool>(all(vec4<bool>(true, var_0.x, var_0.x, var_0.x)), true, !var_0.x)), true), !(!select(vec3<bool>(true, var_0.x, var_0.x), !vec3<bool>(var_0.x, true, false), vec3<bool>(var_0.x, var_0.x, var_0.x))));
    var_0 = !(!(!(!select(vec3<bool>(true, var_0.x, true), vec3<bool>(var_0.x, true, var_0.x), false))));
    var var_1 = 40532i;
    global0 = array<Struct_2, 27>();
    return 2260u;
}

fn func_2(arg_0: Struct_2, arg_1: f32, arg_2: Struct_2) -> Struct_2 {
    global1 = array<u32, 4>();
    var var_0 = 670f;
    var var_1 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_2.a.a * vec2<f32>(arg_1, -758f)))), _wgslsmith_div_f32(-1674f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-2104f, arg_0.a.b), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-684f, arg_0.a.a.x))), select(vec2<bool>(arg_2.c, false), vec2<bool>(arg_2.c, arg_0.c), vec2<bool>(false, false))))), _wgslsmith_sub_u32(func_3(), _wgslsmith_mult_u32(abs(global1[_wgslsmith_index_u32(4294967295u, 4u)]), ~arg_2.a.d))), arg_0.b, false, _wgslsmith_clamp_i32(abs(-14009i), arg_0.d & arg_2.d, -1i));
    let var_2 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.a.a) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_0.a.a + var_1.a.c))), -495f, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.a.a)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.a.b, arg_0.a.a.x)) - vec2<f32>(arg_0.a.a.x, -1643f)), !vec2<bool>(var_1.c, var_1.c))), u_input.d), var_1.b, true, 1i);
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(-1204f - _wgslsmith_f_op_f32(-arg_1)), _wgslsmith_f_op_f32(-273f - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_1.a.c.x * -201f)))))), -1050f, var_2.a.b);
    return arg_2;
}

fn func_4(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: Struct_2, arg_3: vec4<f32>) -> Struct_1 {
    global1 = array<u32, 4>();
    var var_0 = all(!(!vec3<bool>(select(arg_2.c, arg_0.c, true), any(vec4<bool>(true, arg_0.c, false, false)), true)));
    var var_1 = 0i;
    var var_2 = arg_0;
    var var_3 = var_2.a.c.x;
    return arg_2.a;
}

fn func_5(arg_0: Struct_1) -> vec3<bool> {
    global0 = array<Struct_2, 27>();
    global1 = array<u32, 4>();
    global0 = array<Struct_2, 27>();
    global0 = array<Struct_2, 27>();
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(905f, 2320f)) - vec2<f32>(_wgslsmith_f_op_f32(trunc(arg_0.c.x)), 1929f)), _wgslsmith_f_op_f32(f32(-1f) * -1433f), _wgslsmith_f_op_vec2_f32(trunc(arg_0.c)), u_input.a.x), ~global1[_wgslsmith_index_u32(~(~(~u_input.c.x)), 4u)], arg_0.d <= ~4294967295u, 1i >> (~arg_0.d % 32u));
    return !(!vec3<bool>(all(vec3<bool>(false, true, var_0.c)), var_0.c, true | var_0.c));
}

fn func_1(arg_0: i32, arg_1: f32, arg_2: vec3<u32>, arg_3: Struct_1) -> u32 {
    var var_0 = all(select(func_5(func_4(global0[_wgslsmith_index_u32(abs(global1[_wgslsmith_index_u32(59230u, 4u)]), 27u)], vec3<f32>(153f, 1000f, 255f), func_2(Struct_2(arg_3, 4294967295u, true, arg_0), arg_1, global0[_wgslsmith_index_u32(69545u, 27u)]), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.b, arg_1, -462f, -1000f)))), select(vec3<bool>(func_2(Struct_2(arg_3, 0u, false, 2147483647i), -488f, global0[_wgslsmith_index_u32(4294967295u, 27u)]).c, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), true), _wgslsmith_f_op_f32(arg_1 * 1382f) >= 1267f), !func_5(Struct_1(arg_3.a, arg_3.c.x, arg_3.a, arg_3.d)).x));
    let var_1 = _wgslsmith_mult_vec3_i32(~_wgslsmith_add_vec3_i32(-vec3<i32>(arg_0, -2147483647i, -1i), firstTrailingBit(abs(vec3<i32>(arg_0, 2147483647i, arg_0)))), _wgslsmith_div_vec3_i32(~vec3<i32>(_wgslsmith_mod_i32(15922i, arg_0), _wgslsmith_sub_i32(arg_0, arg_0), arg_0), select(-select(vec3<i32>(18570i, -35036i, arg_0), vec3<i32>(arg_0, arg_0, 2147483647i), true), vec3<i32>(arg_0, func_2(global0[_wgslsmith_index_u32(25576u, 27u)], 1000f, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 4u)], 27u)]).d, 1i), !select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), false))));
    global0 = array<Struct_2, 27>();
    let var_2 = -(~(~vec4<i32>(var_1.x, ~(-1i), -60356i ^ arg_0, countOneBits(arg_0))));
    let var_3 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(353f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.a.x) * 1134f)))), _wgslsmith_div_vec2_f32(arg_3.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1073f, -143f)) - arg_3.c)), select(vec2<bool>(true, true), vec2<bool>(true, true), select(select(func_5(arg_3).zy, select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true)), true), vec2<bool>(true, false), func_5(arg_3).xx))));
    return _wgslsmith_sub_u32(~arg_3.d, arg_3.d) ^ _wgslsmith_dot_vec2_u32(u_input.b.ww | arg_2.yx, ~vec2<u32>(global1[_wgslsmith_index_u32(arg_3.d | 1u, 4u)], _wgslsmith_div_u32(65248u, global1[_wgslsmith_index_u32(5834u, 4u)])));
}

fn func_6(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: Struct_1, arg_3: bool) -> i32 {
    global1 = array<u32, 4>();
    global1 = array<u32, 4>();
    global0 = array<Struct_2, 27>();
    global0 = array<Struct_2, 27>();
    var var_0 = any(vec3<bool>(false, (false != !arg_0.x) || (arg_3 | true), arg_0.x));
    return _wgslsmith_dot_vec4_i32(-select(abs(vec4<i32>(1i, 1i, 1i, 0i)), min(vec4<i32>(-2147483647i, 80899i, -34824i, 21641i), vec4<i32>(-1i, 1i, -68426i, -1i)), !vec4<bool>(false, true, arg_0.x, arg_3)), vec4<i32>(abs(firstTrailingBit(-23207i)), _wgslsmith_sub_i32(1i, min(30823i, -1i)), 1i, -1i)) | select(~abs(~(-22472i)), -abs(~(-1522i)), (arg_1.d ^ ~1u) > 4294967295u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<i32>(min(func_6(!select(vec2<bool>(true, false), vec2<bool>(false, false), false), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(890f, -467f)), _wgslsmith_f_op_f32(1081f - 242f), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1401f, -1028f) - vec2<f32>(-1664f, 674f)), ~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(48519u, 4u)], 4u)], 4u)]), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-828f, -222f)), _wgslsmith_f_op_f32(f32(-1f) * -970f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1292f, 1314f)), func_1(1i, -1089f, u_input.a, Struct_1(vec2<f32>(-1000f, -365f), 487f, vec2<f32>(-920f, -1287f), u_input.c.x))), true), -1i), 1i);
    var_0 = vec2<i32>(i32(-1i) * -2147483647i, ((var_0.x << (u_input.b.x % 32u)) ^ -1i) ^ (i32(-1i) * -12354i));
    var var_1 = global0[_wgslsmith_index_u32(firstLeadingBit(1u), 27u)];
    let var_2 = vec4<f32>(var_1.a.b, var_1.a.a.x, _wgslsmith_f_op_f32(step(var_1.a.b, -387f)), var_1.a.b);
    var var_3 = func_2(global0[_wgslsmith_index_u32(~(_wgslsmith_clamp_u32(u_input.a.x, func_1(-2658i, 681f, u_input.b.ywz, var_1.a), var_1.a.d) ^ (countOneBits(34608u) << (_wgslsmith_div_u32(global1[_wgslsmith_index_u32(0u, 4u)], 67106u) % 32u))), 27u)], 123f, global0[_wgslsmith_index_u32(select(func_3(), var_1.a.d, true), 27u)]).a;
    var var_4 = _wgslsmith_f_op_f32(var_2.x * func_4(Struct_2(Struct_1(var_2.xx, -905f, var_1.a.c, var_1.b >> (var_1.a.d % 32u)), ~global1[_wgslsmith_index_u32(~1u, 4u)], var_1.c, var_0.x), _wgslsmith_div_vec3_f32(var_2.zxx, _wgslsmith_f_op_vec3_f32(sign(var_2.zyx))), global0[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(4294967295u, 4u)], 27u)], var_2).a.x);
    global1 = array<u32, 4>();
    let x = u_input.a;
    s_output = StorageBuffer(var_0.x >> (103732u % 32u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.x, func_4(global0[_wgslsmith_index_u32(19201u, 27u)], var_2.zww, Struct_2(Struct_1(vec2<f32>(var_3.b, 417f), 2472f, var_3.a, global1[_wgslsmith_index_u32(var_1.b, 4u)]), 33649u, var_1.c, 47755i), vec4<f32>(-1657f, -792f, var_2.x, 375f)).c.x))));
}

