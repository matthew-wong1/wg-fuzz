struct Struct_1 {
    a: u32,
    b: i32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: u32,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 16>;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1() -> Struct_3 {
    var var_0 = u_input.a;
    global0 = array<Struct_1, 16>();
    let var_1 = Struct_4(global0[_wgslsmith_index_u32(abs(~4294967295u), 16u)]);
    global0 = array<Struct_1, 16>();
    global0 = array<Struct_1, 16>();
    return Struct_3(vec4<u32>(~var_1.a.a, max(_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.a.a, 3124u), select(vec2<u32>(var_1.a.a, 4294967295u), vec2<u32>(var_1.a.a, var_1.a.a), vec2<bool>(true, true))), var_1.a.a), abs(countOneBits(~4294967295u)), abs(var_1.a.a)), abs(~_wgslsmith_mult_u32(41419u, var_1.a.a)) | var_1.a.a);
}

fn func_3(arg_0: vec2<bool>, arg_1: vec2<bool>, arg_2: bool, arg_3: f32) -> i32 {
    var var_0 = func_1();
    var var_1 = ~_wgslsmith_mod_u32(4294967295u, ~(~_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.a.x, var_0.b, var_0.a.x, var_0.a.x), var_0.a)));
    var_1 = var_0.b;
    var_0 = func_1();
    return -min(~u_input.a, u_input.a);
}

fn func_4(arg_0: i32, arg_1: Struct_3, arg_2: u32) -> Struct_3 {
    let var_0 = Struct_2(1254f, Struct_1(arg_1.b, _wgslsmith_dot_vec4_i32(-firstLeadingBit(vec4<i32>(-10176i, 2147483647i, arg_0, -6166i)), abs(vec4<i32>(13399i, 27523i, u_input.a, -21479i)) & -vec4<i32>(arg_0, arg_0, u_input.a, -10709i))));
    global0 = array<Struct_1, 16>();
    var var_1 = Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0.a)))), var_0.a), var_0.b);
    let var_2 = ~vec3<u32>(~_wgslsmith_clamp_u32(var_1.b.a, arg_1.b, 93881u), 4294967295u, ~0u | ~arg_2) << (vec3<u32>(arg_1.a.x, ~_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(var_1.b.a, arg_1.a.x), arg_1.a.yz, arg_1.a.xw), vec2<u32>(16868u, 4294967295u)), var_0.b.a) % vec3<u32>(32u));
    let var_3 = arg_1;
    return var_3;
}

fn func_5(arg_0: Struct_3) -> i32 {
    var var_0 = _wgslsmith_clamp_u32(~arg_0.a.x, ~19106u, 16128u);
    var var_1 = ~(firstLeadingBit(~(~arg_0.a.x)) >> (1u % 32u));
    var var_2 = firstTrailingBit(abs(u_input.a));
    let var_3 = firstLeadingBit(0i) == _wgslsmith_sub_i32(-29177i, ~max(u_input.a, u_input.a));
    let var_4 = -973f;
    return _wgslsmith_sub_i32(_wgslsmith_sub_i32(1i, _wgslsmith_mod_i32(_wgslsmith_clamp_i32(-15581i, u_input.a, u_input.a), _wgslsmith_clamp_i32(u_input.a, u_input.a, 2147483647i))), 1i) & -u_input.a;
}

fn func_2(arg_0: vec3<i32>, arg_1: i32, arg_2: i32, arg_3: vec4<bool>) -> vec4<u32> {
    let var_0 = func_5(func_4(func_3(vec2<bool>(true, true), select(arg_3.xx, arg_3.yw, !arg_3.x), arg_3.x, -1000f), Struct_3(vec4<u32>(1u, ~0u, ~57512u, 27184u), _wgslsmith_add_u32(1u, func_1().b)), 1u));
    var var_1 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1000f)) + _wgslsmith_f_op_f32(max(1000f, _wgslsmith_div_f32(1068f, _wgslsmith_f_op_f32(round(-592f)))))), Struct_1(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(_wgslsmith_sub_u32(1u, 0u), 1u, ~49174u), ~(~22555u)), _wgslsmith_add_i32(min(-23086i, 0i), max(~arg_0.x, var_0))));
    let var_2 = -1328f;
    let var_3 = func_1();
    return var_3.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var_0 = Struct_3(abs(countOneBits(_wgslsmith_mult_vec4_u32(vec4<u32>(var_0.b, var_0.a.x, var_0.a.x, 54883u), func_2(vec3<i32>(u_input.a, -41391i, u_input.a), 2147483647i, 1i, vec4<bool>(false, false, false, true))))), ~1u);
    var_0 = func_1();
    let var_1 = ~2147483647i;
    let var_2 = ~var_0.a;
    global0 = array<Struct_1, 16>();
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2264f, 942f, -644f, 1294f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1075f, -1727f, 2005f, 1181f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(3490f, 266f, -2052f, -2648f))))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(696f, -337f, -1194f, 599f)) * vec4<f32>(-622f, 633f, 394f, 1000f))))) * vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-302f - 1f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2763f) * _wgslsmith_f_op_f32(f32(-1f) * -356f)), -228f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(158f, 110f))));
    let x = u_input.a;
    s_output = StorageBuffer(-min(vec4<i32>(var_1 << (var_0.b % 32u), 1i, 5653i, _wgslsmith_add_i32(u_input.a, 12707i)), _wgslsmith_add_vec4_i32(min(vec4<i32>(2147483647i, 33350i, var_1, 72574i), vec4<i32>(var_1, u_input.a, 10128i, 55865i)), vec4<i32>(-20766i, -41864i, u_input.a, 0i) & vec4<i32>(u_input.a, u_input.a, 0i, -1i))), max(select(max(vec3<i32>(13392i, u_input.a, var_1), vec3<i32>(2147483647i, var_1, u_input.a)), _wgslsmith_add_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(1i, 0i, -3544i)), select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), false)), abs(-vec3<i32>(u_input.a, u_input.a, -50367i))) & _wgslsmith_mult_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a, u_input.a, -1i), vec3<i32>(var_1, 26584i, u_input.a)), vec3<i32>(~u_input.a, abs(u_input.a), -1i)));
}

