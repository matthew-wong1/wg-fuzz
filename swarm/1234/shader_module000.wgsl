struct Struct_1 {
    a: bool,
    b: vec4<f32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec3<i32>,
    c: vec2<u32>,
    d: vec2<u32>,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec3<u32>, arg_1: bool) -> i32 {
    global0 = ~(-vec3<i32>(reverseBits(abs(85971i)), (u_input.b & u_input.b) | _wgslsmith_div_i32(u_input.b, -8829i), -min(global0.x, global0.x)));
    let var_0 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(1153f, -1719f), vec2<f32>(-1240f, -914f))), vec2<f32>(785f, -2313f))))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1067f, -830f))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(624f, -387f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(655f, 1000f) + vec2<f32>(-1131f, 1363f)), !vec2<bool>(arg_1, arg_1)))))));
    var var_1 = _wgslsmith_f_op_f32(floor(-670f));
    let var_2 = Struct_1(-805f >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -830f) * var_0.x), vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0.x * 598f))), -1738f, _wgslsmith_f_op_f32(876f - _wgslsmith_f_op_f32(var_0.x + -860f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(666f))))));
    let var_3 = Struct_2(any(vec3<bool>(max(0u, u_input.c) <= arg_0.x, arg_1, true)));
    return -1i;
}

fn func_2(arg_0: u32, arg_1: Struct_2, arg_2: Struct_4, arg_3: vec3<bool>) -> vec3<i32> {
    global0 = -vec3<i32>(_wgslsmith_div_i32(~reverseBits(-49521i), abs(i32(-1i) * -2147483647i)), func_3(min(u_input.a.wzz, u_input.a.wxz), all(vec2<bool>(arg_3.x, true))), -1i);
    var var_0 = countOneBits(~_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(u_input.a & u_input.a, vec4<u32>(u_input.c, u_input.c, arg_0, 0u)), ~u_input.a.x));
    global0 = vec3<i32>(-41837i, 61498i, 1i);
    var_0 = ~(~(~71461u));
    var var_1 = select(_wgslsmith_clamp_u32(1u, ~(~(~1u)), u_input.c), u_input.c, false);
    return vec3<i32>(func_3(~u_input.a.xyw, false), func_3(vec3<u32>(_wgslsmith_dot_vec3_u32(u_input.a.www, u_input.a.wxw), max(u_input.c, _wgslsmith_mod_u32(u_input.a.x, 4294967295u)), firstTrailingBit(u_input.a.x)), select(false & any(vec3<bool>(arg_1.a, arg_2.c.a, false)), false, !arg_2.b.a)), 1i);
}

fn func_1(arg_0: Struct_2, arg_1: f32, arg_2: Struct_1) -> vec3<bool> {
    global0 = min(-_wgslsmith_sub_vec3_i32(vec3<i32>(~global0.x, ~0i, u_input.b), ~_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b, -28574i, 1i), vec3<i32>(-23274i, 21783i, u_input.b))), ~(~(~func_2(0u, Struct_2(arg_2.a), Struct_4(arg_2, Struct_1(false, arg_2.b), Struct_2(arg_0.a)), vec3<bool>(false, arg_0.a, arg_0.a)))));
    var var_0 = arg_2.b.yx;
    let var_1 = u_input.b;
    var_0 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))))), arg_2.b.zz));
    global0 = min(vec3<i32>(0i, _wgslsmith_add_i32(firstTrailingBit(~global0.x), 1i), ~(-(~var_1))), vec3<i32>(var_1, -1i, global0.x));
    return !vec3<bool>(!(-105f >= arg_1), false, !arg_2.a);
}

fn func_4(arg_0: vec3<bool>, arg_1: vec2<u32>) -> StorageBuffer {
    var var_0 = Struct_3(u_input.a.ww, vec3<i32>(_wgslsmith_mod_i32(global0.x, ~_wgslsmith_mult_i32(global0.x, 2147483647i)), i32(-1i) * -2147483647i, firstLeadingBit(func_3(reverseBits(u_input.a.xww), all(vec4<bool>(arg_0.x, false, false, arg_0.x))))), abs(vec2<u32>(4294967295u, ~max(29882u, 11148u))), ~(~u_input.a.xz), Struct_2(u_input.b < ~global0.x));
    global0 = select(vec3<i32>(global0.x, 2147483647i, 1i), firstTrailingBit(reverseBits(~vec3<i32>(var_0.b.x, u_input.b, -25717i) ^ _wgslsmith_clamp_vec3_i32(vec3<i32>(global0.x, 2147483647i, 859i), var_0.b, var_0.b))), arg_0);
    let var_1 = Struct_1(!(!(all(vec4<bool>(arg_0.x, true, var_0.e.a, false)) & (true && var_0.e.a))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-432f, -712f, _wgslsmith_f_op_f32(f32(-1f) * -1185f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -485f), -223f))));
    var var_2 = var_0.e.a;
    var_2 = all(func_1(var_0.e, _wgslsmith_f_op_f32(-var_1.b.x), var_1));
    return StorageBuffer(vec3<u32>(0u, u_input.c ^ var_0.a.x, 24062u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~vec3<i32>(u_input.b, global0.x, ~(i32(-1i) * -u_input.b));
    var var_1 = ~u_input.c;
    let var_2 = vec3<i32>(-2147483647i, -7190i, ~(-2147483647i) | (-(i32(-1i) * -2147483647i) & var_0.x));
    var_1 = 53839u;
    global0 = var_2;
    global0 = -(var_2 << (vec3<u32>(~u_input.a.x, 1u, abs(4294967295u)) % vec3<u32>(32u)));
    var_1 = _wgslsmith_div_u32(abs(29477u << (~4294967295u % 32u)), u_input.c | (_wgslsmith_add_u32(u_input.a.x, u_input.c) << (u_input.a.x % 32u))) << (1u % 32u);
    global0 = -vec3<i32>(~select(-1i, _wgslsmith_sub_i32(1i, 1i), true), -u_input.b | (_wgslsmith_mult_i32(u_input.b, -10344i) << ((0u >> (u_input.a.x % 32u)) % 32u)), -18603i);
    let x = u_input.a;
    s_output = func_4(!select(select(func_1(Struct_2(false), -1027f, Struct_1(false, vec4<f32>(411f, 2101f, 312f, -230f))), vec3<bool>(true, true, false), vec3<bool>(true, true, false)), func_1(Struct_2(true), 244f, Struct_1(true, vec4<f32>(795f, 289f, 190f, -496f))), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)), u_input.a.xx);
}

