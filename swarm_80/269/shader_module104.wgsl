struct Struct_1 {
    a: vec4<f32>,
    b: vec2<bool>,
    c: i32,
    d: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> vec4<f32> {
    let var_0 = max(global0.x << (_wgslsmith_add_u32(u_input.a.x, u_input.b) % 32u), 27345i << (u_input.a.x % 32u));
    var var_1 = vec3<bool>(true, all(vec4<bool>(any(vec4<bool>(false, true, true, true)), true, true, true)) && any(vec4<bool>(true, true, true, true)), any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, u_input.b < u_input.a.x))));
    var var_2 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(664f, -300f, 262f, 425f), vec4<f32>(1385f, -1000f, -1000f, 198f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1037f, -811f, -856f, -1332f)), var_0 <= 0i)))), var_1.yx, firstTrailingBit(_wgslsmith_add_i32(global0.x, 32270i)) & 73046i, _wgslsmith_add_vec2_i32(~(vec2<i32>(var_0, global0.x) << (u_input.a % vec2<u32>(32u))), _wgslsmith_div_vec2_i32(max(vec2<i32>(var_0, -7684i), vec2<i32>(-1i, global0.x)), -vec2<i32>(var_0, 29502i)))));
    let var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_2.a.a) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.a.a.x, var_2.a.a.x, var_2.a.a.x, var_2.a.a.x))), var_2.a.a)), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1865f), 1244f, 1762f, 732f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_2.a.a.x, -1000f, -1000f, -2236f))))))), var_2.a.b, -1i, _wgslsmith_clamp_vec2_i32(~(-select(vec2<i32>(var_0, var_0), vec2<i32>(var_0, var_2.a.c), var_1.x)), vec2<i32>(abs(var_2.a.c), 726i), reverseBits(var_2.a.d)));
    let var_4 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-358f, -1133f))), vec2<f32>(_wgslsmith_f_op_f32(var_2.a.a.x - var_2.a.a.x), _wgslsmith_f_op_f32(min(1000f, _wgslsmith_f_op_f32(abs(var_3.a.x))))))) * _wgslsmith_f_op_vec2_f32(max(var_2.a.a.zy, _wgslsmith_div_vec2_f32(var_3.a.zw, var_2.a.a.yx))));
    return _wgslsmith_f_op_vec4_f32(var_2.a.a - _wgslsmith_div_vec4_f32(var_2.a.a, vec4<f32>(1797f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-615f - var_2.a.a.x) * var_3.a.x), var_3.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.a.a.x), _wgslsmith_f_op_f32(-366f - -227f)))));
}

fn func_2(arg_0: f32, arg_1: Struct_1) -> bool {
    global0 = vec2<i32>(arg_1.d.x, 0i);
    global0 = vec2<i32>(-14808i, global0.x);
    var var_0 = arg_1;
    var_0 = arg_1;
    var var_1 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3()))))));
    return arg_1.b.x;
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: bool, arg_3: Struct_1) -> bool {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1000f, 1873f, -778f, 1000f))))) - vec4<f32>(_wgslsmith_f_op_f32(-arg_1.a.a.x), _wgslsmith_f_op_f32(1000f * -1447f), -1000f, 735f))), !vec2<bool>(max(arg_1.a.c, 10309i) != -19834i, abs(2547u) < u_input.b), abs(~countOneBits(countOneBits(-1i))), _wgslsmith_clamp_vec2_i32(~abs(vec2<i32>(1i, 2147483647i) & arg_1.a.d), _wgslsmith_div_vec2_i32(vec2<i32>(-1i) * -arg_1.a.d, -abs(arg_1.a.d)), vec2<i32>(-12445i, abs(-1i))));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.a.xyx)));
    var var_2 = vec3<i32>(arg_3.d.x, i32(-1i) * -_wgslsmith_dot_vec3_i32(~vec3<i32>(var_0.d.x, var_0.d.x, arg_3.d.x), ~vec3<i32>(arg_1.a.d.x, global0.x, arg_3.c)), abs(-arg_1.a.c << (reverseBits(u_input.a.x) % 32u)));
    let var_3 = arg_3;
    var var_4 = 1i << (u_input.a.x % 32u);
    return !(_wgslsmith_f_op_f32(ceil(var_3.a.x)) > arg_1.a.a.x);
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(round(arg_0.a));
    let var_1 = -596f;
    var var_2 = Struct_2(arg_0);
    let var_3 = countOneBits(min(vec2<u32>(~u_input.b, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 0u, 29551u) << (vec3<u32>(0u, 4294967295u, u_input.b) % vec3<u32>(32u)), ~vec3<u32>(u_input.a.x, 1u, u_input.b))), vec2<u32>(~(32247u | u_input.b), _wgslsmith_add_u32(u_input.b, u_input.a.x))));
    let var_4 = ~_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a.x, ~(var_3.x | u_input.b), _wgslsmith_add_u32(countOneBits(var_3.x), 1u), ~(~7484u)), ~vec4<u32>(var_3.x, ~var_3.x, 1u, 0u & var_3.x), vec4<u32>(~select(31206u, 4294967295u, false), 65857u, 1u, ~(~u_input.b)));
    return arg_0;
}

fn func_1(arg_0: vec2<bool>) -> vec2<i32> {
    global0 = vec2<i32>(_wgslsmith_mod_i32(1i, -2147483647i) >> (~(~select(86138u, u_input.b, false)) % 32u), reverseBits(0i));
    global0 = _wgslsmith_sub_vec2_i32(~(~vec2<i32>(-34725i, -17866i & global0.x)), reverseBits(-_wgslsmith_add_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(global0.x, global0.x), vec2<i32>(global0.x, global0.x)), vec2<i32>(-46790i, -38247i) & vec2<i32>(global0.x, -38391i))));
    var var_0 = func_5(Struct_1(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(943f, _wgslsmith_f_op_f32(1463f + 620f), _wgslsmith_div_f32(-304f, 1059f), _wgslsmith_div_f32(-1345f, 1242f)))), vec2<bool>(arg_0.x, func_4(firstTrailingBit(vec2<i32>(global0.x, -1i)), Struct_2(Struct_1(vec4<f32>(1424f, 267f, -882f, -277f), vec2<bool>(arg_0.x, false), 39177i, vec2<i32>(38547i, 1i))), func_2(1000f, Struct_1(vec4<f32>(-378f, -242f, -1331f, -1250f), vec2<bool>(false, arg_0.x), -2147483647i, vec2<i32>(-2147483647i, 1376i))), Struct_1(vec4<f32>(-1781f, -1000f, 361f, -166f), arg_0, -31824i, vec2<i32>(-28109i, 1i)))), global0.x << (45020u % 32u), select(vec2<i32>(global0.x, -45014i), vec2<i32>(-20949i, -52657i), !arg_0)));
    let var_1 = Struct_2(func_5(func_5(Struct_1(_wgslsmith_f_op_vec4_f32(min(var_0.a, vec4<f32>(var_0.a.x, var_0.a.x, var_0.a.x, var_0.a.x))), !arg_0, var_0.d.x ^ var_0.c, ~var_0.d))));
    var_0 = var_1.a;
    return -(~(abs(vec2<i32>(global0.x, var_1.a.c)) << (~vec2<u32>(51248u, u_input.a.x) % vec2<u32>(32u))) ^ -select(var_1.a.d, _wgslsmith_div_vec2_i32(var_0.d, var_1.a.d), arg_0));
}

fn func_6(arg_0: u32, arg_1: vec2<i32>, arg_2: Struct_1, arg_3: vec2<bool>) -> bool {
    var var_0 = _wgslsmith_f_op_vec4_f32(-arg_2.a);
    let var_1 = Struct_2(func_5(arg_2));
    var_0 = arg_2.a;
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_1.a.a + _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.a.x, _wgslsmith_div_f32(arg_2.a.x, var_0.x), _wgslsmith_f_op_f32(var_1.a.a.x - var_1.a.a.x), arg_2.a.x))));
    var var_2 = var_1;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_0.x)) - -803f) > 2120f;
}

fn func_7(arg_0: u32, arg_1: vec3<bool>, arg_2: bool) -> Struct_1 {
    let var_0 = vec4<i32>(global0.x, func_5(Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-2204f, -413f, -738f, 1293f))) + _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(787f, 899f, 414f, 187f)))), !vec2<bool>(arg_1.x, false), ~(i32(-1i) * -24974i), ~vec2<i32>(24199i, 1i))).d.x, -2147483647i, _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(abs(vec3<i32>(-1i, global0.x, global0.x)), vec3<i32>(_wgslsmith_clamp_i32(2147483647i, global0.x, global0.x), global0.x, i32(-1i) * -2147483647i)), ~_wgslsmith_add_vec3_i32(vec3<i32>(0i, global0.x, -37826i), _wgslsmith_add_vec3_i32(vec3<i32>(34653i, global0.x, -9606i), vec3<i32>(global0.x, -32654i, 2147483647i)))));
    var var_1 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-423f, 1511f, -1000f, -2751f), vec4<f32>(1000f, -741f, 753f, 581f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-369f, 753f, 108f, -260f) * vec4<f32>(-1261f, -829f, -2569f, 691f))))), arg_1.yx, var_0.x, var_0.xz));
    let var_2 = _wgslsmith_f_op_f32(var_1.a.a.x + _wgslsmith_f_op_f32(var_1.a.a.x - _wgslsmith_f_op_f32(-338f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_1.a.a.x))))));
    var var_3 = min(max(22430i, ~(~select(var_1.a.d.x, global0.x, var_1.a.b.x))), ~var_1.a.d.x);
    var var_4 = Struct_2(func_5(var_1.a));
    return Struct_1(var_1.a.a, var_4.a.b, abs(-57044i) | _wgslsmith_mult_i32(~var_4.a.c, -1i), ~_wgslsmith_sub_vec2_i32(firstLeadingBit(var_1.a.d), vec2<i32>(-43999i, select(var_1.a.c, -24647i, true))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_7(u_input.a.x, select(vec3<bool>(func_6(~0u, func_1(vec2<bool>(false, true)), func_5(Struct_1(vec4<f32>(664f, 426f, -436f, 1091f), vec2<bool>(false, false), global0.x, vec2<i32>(-1i, global0.x))), select(vec2<bool>(false, true), vec2<bool>(true, true), true)), _wgslsmith_f_op_f32(-702f - 293f) >= _wgslsmith_f_op_vec4_f32(func_3()).x, -global0.x < _wgslsmith_div_i32(21405i, global0.x)), vec3<bool>(all(vec2<bool>(true, true)), true, any(vec3<bool>(true, false, false))), !(!any(vec4<bool>(false, false, false, true)))), true);
    global0 = _wgslsmith_mult_vec2_i32(vec2<i32>(-1i) * -var_0.d, _wgslsmith_sub_vec2_i32(_wgslsmith_mult_vec2_i32(_wgslsmith_sub_vec2_i32(var_0.d, var_0.d), ~var_0.d), var_0.d)) << (max(vec2<u32>(u_input.b >> (_wgslsmith_clamp_u32(u_input.a.x, 1u, 4294967295u) % 32u), _wgslsmith_div_u32(u_input.a.x, firstLeadingBit(34882u))), _wgslsmith_mod_vec2_u32(min(_wgslsmith_mult_vec2_u32(u_input.a, vec2<u32>(41666u, u_input.b)), _wgslsmith_div_vec2_u32(u_input.a, u_input.a)), _wgslsmith_clamp_vec2_u32(~vec2<u32>(85664u, 104443u), vec2<u32>(129146u, 4294967295u), ~vec2<u32>(87711u, 11544u)))) % vec2<u32>(32u));
    let var_1 = Struct_2(var_0);
    global0 = ~(~(~min(vec2<i32>(-2147483647i, var_0.c), var_0.d))) & var_1.a.d;
    let var_2 = _wgslsmith_mult_u32(u_input.a.x, u_input.b);
    let var_3 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(var_0.a.x, var_1.a.a.x, false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a.a.x * var_1.a.a.x))) * -947f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-654f, -112f)))));
    let var_4 = var_1.a;
    let x = u_input.a;
    s_output = StorageBuffer(1305f);
}

