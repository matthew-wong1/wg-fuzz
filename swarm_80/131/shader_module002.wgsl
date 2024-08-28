struct Struct_1 {
    a: u32,
    b: u32,
    c: vec4<f32>,
    d: bool,
    e: f32,
}

struct Struct_2 {
    a: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(-805f, -1427f, 890f);

var<private> global1: i32;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3() -> vec4<i32> {
    let var_0 = vec2<i32>(~_wgslsmith_div_i32(28650i, select(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, -24406i, 0i, 2147483647i), vec4<i32>(-6473i, 1i, -25866i, 2147483647i)), _wgslsmith_div_i32(-1i, 44390i), true)), reverseBits(-(~_wgslsmith_clamp_i32(37240i, -62781i, -1614i))));
    global1 = var_0.x;
    let var_1 = Struct_2(293f);
    var var_2 = vec3<u32>(abs(reverseBits(~(~u_input.b.x))), _wgslsmith_add_u32(abs(_wgslsmith_mod_u32(4294967295u, u_input.a.x << (4294967295u % 32u))), u_input.c), ~(~abs(1u)));
    var var_3 = var_1;
    return abs(-select(vec4<i32>(min(var_0.x, var_0.x), -72967i, firstLeadingBit(1i), var_0.x), _wgslsmith_sub_vec4_i32(vec4<i32>(var_0.x, 25110i, var_0.x, 0i), -vec4<i32>(0i, -1i, var_0.x, var_0.x)), select(select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, false), false), select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true), true), vec4<bool>(true, true, true, true))));
}

fn func_4(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: u32, arg_3: vec3<i32>) -> vec3<f32> {
    let var_0 = arg_1;
    let var_1 = Struct_2(_wgslsmith_f_op_f32(ceil(113f)));
    var var_2 = false;
    let var_3 = -countOneBits(-var_0);
    let var_4 = var_3.xwy;
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(vec3<f32>(global0.x, _wgslsmith_f_op_f32(var_1.a - 1485f), _wgslsmith_f_op_f32(global0.x * var_1.a)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-2171f, 819f, var_1.a) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, -1554f, 1195f)))))) + _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global0.x)) + _wgslsmith_f_op_f32(301f * arg_0.a)), 772f, 571f), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, -1057f, 814f))))))));
}

fn func_2(arg_0: vec3<i32>) -> Struct_2 {
    let var_0 = _wgslsmith_mod_vec4_u32(vec4<u32>(~(1u ^ ~u_input.c), 4294967295u, _wgslsmith_sub_u32(firstTrailingBit(u_input.b.x) & 22757u, 1u), u_input.c), _wgslsmith_clamp_vec4_u32(firstLeadingBit(select(vec4<u32>(0u, 4294967295u, u_input.c, u_input.c), vec4<u32>(4294967295u, 138093u, 4294967295u, u_input.a.x), vec4<bool>(true, false, false, true)) ^ ~vec4<u32>(u_input.a.x, 60328u, u_input.a.x, 1u)), ~(~(~vec4<u32>(1u, 4294967295u, u_input.a.x, u_input.a.x))), vec4<u32>(max(~u_input.a.x, 41064u), 0u, 0u, u_input.c)));
    global0 = _wgslsmith_f_op_vec3_f32(func_4(Struct_2(_wgslsmith_f_op_f32(-1610f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)))), ~(-(~vec4<i32>(arg_0.x, arg_0.x, 23480i, arg_0.x) | func_3())), _wgslsmith_add_u32(var_0.x, ~0u), arg_0));
    var var_1 = 32597i;
    let var_2 = firstTrailingBit(~var_0.x);
    var var_3 = Struct_1(_wgslsmith_dot_vec4_u32(var_0, ~vec4<u32>(~var_0.x, 1u, ~u_input.a.x, ~4294967295u)), u_input.a.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, -315f, 354f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(182f, global0.x, -1701f, global0.x))))), !any(select(select(vec2<bool>(false, true), vec2<bool>(false, true), true), vec2<bool>(true, true), true)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1f, global0.x) - _wgslsmith_f_op_f32(floor(global0.x))))));
    return Struct_2(_wgslsmith_f_op_f32(-var_3.c.x));
}

fn func_1(arg_0: bool, arg_1: vec2<f32>, arg_2: u32, arg_3: bool) -> Struct_2 {
    var var_0 = func_2(_wgslsmith_clamp_vec3_i32(_wgslsmith_add_vec3_i32(~_wgslsmith_clamp_vec3_i32(vec3<i32>(1i, -21038i, -37307i), vec3<i32>(62471i, -53441i, 0i), vec3<i32>(12610i, -42067i, 12839i)), abs(~vec3<i32>(1i, 44040i, 36624i))), _wgslsmith_div_vec3_i32(vec3<i32>(89i, -4398i, 46935i), select(vec3<i32>(-2147483647i, -2147483647i, 0i), vec3<i32>(-14297i, 2147483647i, 34990i), vec3<bool>(false, arg_0, arg_0))) << (max(u_input.a, _wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, u_input.b.x, 4294967295u), u_input.a, u_input.a)) % vec3<u32>(32u)), ~(abs(vec3<i32>(1559i, -2147483647i, 1i)) & _wgslsmith_clamp_vec3_i32(vec3<i32>(-34082i, -15918i, -5593i), vec3<i32>(-1i, 0i, 8498i), vec3<i32>(-2147483647i, -2147483647i, 10238i)))));
    let var_1 = Struct_1(firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_div_u32(u_input.b.x, u_input.b.x), 918u, ~0u, ~0u), ~(vec4<u32>(1u, 52254u, 98987u, 1u) & vec4<u32>(4294967295u, u_input.b.x, 9071u, 0u)))), 30634u, vec4<f32>(_wgslsmith_f_op_f32(func_2(vec3<i32>(-11763i, 26695i, -1i)).a * var_0.a), -407f, 1488f, _wgslsmith_f_op_f32(min(1f, 2324f))), !arg_3, _wgslsmith_f_op_f32(max(1f, 211f)));
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global0.xy * vec2<f32>(global0.x, arg_1.x)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1308f, var_0.a)))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.e, -1258f) - _wgslsmith_f_op_vec2_f32(global0.zz * global0.xz))));
    global0 = _wgslsmith_f_op_vec3_f32(var_1.c.xxz + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(152f, global0.x, 2127f))) - _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_1.e, 1525f, 375f)))), _wgslsmith_f_op_vec3_f32(round(var_1.c.xzz))))));
    var_0 = func_2(vec3<i32>(~_wgslsmith_sub_i32(1i, _wgslsmith_mult_i32(51931i, -7190i)), _wgslsmith_mod_i32(~_wgslsmith_div_i32(-6590i, -5847i), 48837i), _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(~vec3<i32>(-46799i, 2378i, -1i), vec3<i32>(1i, 1i, 1i)), -1i)));
    return func_2(-(~countOneBits(_wgslsmith_clamp_vec3_i32(vec3<i32>(1i, -1i, 0i), vec3<i32>(-54824i, 2147483647i, 1i), vec3<i32>(0i, -33303i, -10398i)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(any(vec4<bool>(true, true, any(vec4<bool>(true, true, true, true)), any(vec4<bool>(true, true, true, true)))) || all(!select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(false, true, false))), global0.yy, u_input.a.x, any(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), all(vec3<bool>(false, true, true)))) || all(!select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, false), true)));
    let var_1 = Struct_2(577f);
    global0 = vec3<f32>(global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_0.a)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -731f)), _wgslsmith_f_op_f32(-616f + _wgslsmith_f_op_f32(f32(-1f) * -1172f)))), 238f);
    let var_2 = 886f;
    var var_3 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(func_1(all(vec3<bool>(false, true, true)), global0.yz, _wgslsmith_mod_u32(countOneBits(18539u), u_input.b.x), true).a))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec2_u32(u_input.a.zx, u_input.a.zz << ((vec2<u32>(23125u, 1u) >> (_wgslsmith_mod_vec2_u32(vec2<u32>(0u, u_input.a.x), vec2<u32>(1u, u_input.c)) % vec2<u32>(32u))) % vec2<u32>(32u))), _wgslsmith_div_vec2_u32(min(_wgslsmith_mult_vec2_u32(u_input.a.zx, vec2<u32>(u_input.c, 4829u)), countOneBits(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a.x, 62587u), vec2<u32>(21402u, 45854u)))), ~vec2<u32>(51302u, u_input.c) & vec2<u32>(1u, 1u)), _wgslsmith_mult_i32(1i, func_3().x), var_2);
}

