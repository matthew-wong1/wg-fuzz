struct Struct_1 {
    a: vec3<f32>,
    b: vec3<f32>,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<bool>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: u32,
    c: i32,
}

struct Struct_4 {
    a: i32,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_1) -> vec2<bool> {
    let var_0 = min(-_wgslsmith_mult_i32(-1i ^ (u_input.a.x & u_input.c.x), -14625i), u_input.a.x ^ (_wgslsmith_mod_i32(reverseBits(u_input.a.x), u_input.c.x & u_input.a.x) << (max(~33594u, 3146u) % 32u)));
    var var_1 = Struct_3(countOneBits((vec4<i32>(u_input.a.x, 56676i, 0i, var_0) >> (~vec4<u32>(32154u, u_input.b, u_input.b, 43688u) % vec4<u32>(32u))) | _wgslsmith_div_vec4_i32(vec4<i32>(-4755i, var_0, 68424i, var_0), -vec4<i32>(u_input.c.x, u_input.a.x, var_0, 2147483647i))), ~(~abs(4294967295u)), ~var_0);
    var_1 = Struct_3(var_1.a, u_input.b, 1i);
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(arg_0.b)) * _wgslsmith_f_op_vec3_f32(abs(arg_0.a))) - _wgslsmith_f_op_vec3_f32(abs(arg_0.b))) - vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.b.x, arg_0.b.x)), _wgslsmith_f_op_f32(-arg_0.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a.x) - -1009f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(arg_0.b, _wgslsmith_div_vec3_f32(vec3<f32>(-305f, arg_0.a.x, 659f), arg_0.b))))), arg_0.c);
    var_1 = Struct_3(_wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(var_1.a.x, -1i, u_input.a.x, 1i), -(~vec4<i32>(0i, -1i, u_input.a.x, -1i))), firstLeadingBit(~vec4<i32>(-56452i, u_input.a.x, var_1.a.x, u_input.a.x))), firstTrailingBit(~_wgslsmith_add_u32(~u_input.d, ~var_2.c)), firstTrailingBit(-_wgslsmith_div_i32(var_0 ^ 2147483647i, -1i)));
    return select(select(select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), select(select(vec2<bool>(false, true), vec2<bool>(false, true), true), select(vec2<bool>(false, true), vec2<bool>(false, true), true), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true))), true), !select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, true), false)), vec2<bool>(false, true)), !select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false)), all(vec3<bool>(true, true, true))), !(var_1.b != min(var_1.b, 1u)));
}

fn func_2() -> f32 {
    let var_0 = select(vec2<bool>(~firstTrailingBit(u_input.b) != ~39226u, any(!select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), true))), func_3(Struct_1(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1f, 1f, 1f), _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, 1373f, 776f) + vec3<f32>(-783f, 828f, 313f)), vec3<bool>(true, false, false))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(513f, 269f, 2107f)) + vec3<f32>(558f, -870f, 675f)), ~u_input.d)), false && all(vec4<bool>(true, true, true, true)));
    var var_1 = Struct_4(-11255i, select(vec3<bool>(func_3(Struct_1(vec3<f32>(-627f, -437f, 733f), vec3<f32>(501f, -297f, 157f), u_input.d)).x, (u_input.c.x < u_input.c.x) || false, false), !vec3<bool>(true, var_0.x, true), true));
    var var_2 = Struct_2(Struct_1(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-644f)) - -2373f), _wgslsmith_f_op_f32(-1012f * -1449f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(738f - -639f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1219f, -1000f, -1226f) + vec3<f32>(-1000f, 1559f, -689f)), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(226f, -2008f, -956f), vec3<f32>(-640f, 1000f, 1670f))), var_1.b))), abs(u_input.b)), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(226f, -865f, 100f) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -1204f, -604f) * vec3<f32>(-385f, 386f, -1627f)))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1f, 1f, 1f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-721f, -1250f, -1160f))))), 1u), !(!(!vec4<bool>(true, var_0.x, true, var_1.b.x))));
    var_2 = Struct_2(var_2.a, var_2.a, var_2.c);
    let var_3 = func_3(var_2.a);
    return -346f;
}

fn func_1(arg_0: Struct_2) -> vec2<bool> {
    let var_0 = arg_0.a.a.x;
    let var_1 = arg_0.c.x;
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(1383f * var_0), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.a.x)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_0.b.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1401f * arg_0.a.b.x))))));
    var_2 = vec3<f32>(_wgslsmith_f_op_f32(select(-1491f, _wgslsmith_f_op_f32(func_2()), true)), _wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(214f + var_2.x))));
    var var_3 = Struct_1(arg_0.a.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0.b.b) - vec3<f32>(-415f, var_2.x, _wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(ceil(var_0)))))), _wgslsmith_mod_u32(1u, abs(u_input.b)));
    return select(select(vec2<bool>(any(!arg_0.c), any(vec3<bool>(var_1, arg_0.c.x, true))), !arg_0.c.zw, arg_0.c.xy), vec2<bool>(var_1, !arg_0.c.x), var_0 == var_2.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b > u_input.d;
    let var_1 = u_input.b;
    let var_2 = Struct_4(-(~(~(-2147483647i))), vec3<bool>(!any(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, true))), any(func_1(Struct_2(Struct_1(vec3<f32>(-1000f, -830f, 2813f), vec3<f32>(1806f, -928f, 512f), 50377u), Struct_1(vec3<f32>(-756f, -364f, 1389f), vec3<f32>(1072f, 1543f, -385f), u_input.b), vec4<bool>(true, false, false, false)))), _wgslsmith_sub_u32(firstTrailingBit(var_1), var_1 ^ var_1) >= 35443u));
    let var_3 = 46784i;
    var var_4 = Struct_1(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-702f - 127f), _wgslsmith_f_op_f32(func_2()), var_2.b.x)), 1460f, _wgslsmith_f_op_f32(func_2())))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1215f, -370f, 741f)))) * _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(575f, -1725f, -1295f) - vec3<f32>(1859f, -318f, 145f)))))), ~var_1);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(560f, var_4.b.x, -173f, var_4.a.x), vec4<f32>(var_4.b.x, 892f, var_4.b.x, -1073f))), vec4<f32>(299f, 215f, -1045f, -678f))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, var_4.b.x, var_4.b.x, -333f))))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1929f, var_4.b.x, -726f, 507f), vec4<f32>(1432f, 660f, var_4.a.x, -1315f), vec4<bool>(true, var_2.b.x, true, false))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(2234f, -903f, var_4.b.x, var_4.a.x))), vec4<bool>(!var_2.b.x, var_2.b.x, any(vec2<bool>(var_2.b.x, false)), func_3(Struct_1(var_4.b, var_4.b, var_1)).x)))), 43757u, vec2<i32>(var_3, _wgslsmith_sub_i32(-2147483647i, i32(-1i) * -1i)));
}

