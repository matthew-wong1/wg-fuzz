struct Struct_1 {
    a: vec2<bool>,
    b: bool,
    c: i32,
    d: f32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: vec3<i32>,
    b: f32,
    c: bool,
}

struct Struct_4 {
    a: f32,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
    d: vec4<u32>,
    e: vec4<u32>,
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

var<private> global0: array<vec3<u32>, 14>;

var<private> global1: Struct_1;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> i32 {
    let var_0 = Struct_2(~u_input.b);
    var var_1 = ~2147483647i;
    return -68998i << (_wgslsmith_div_u32(~reverseBits(4294967295u), 4294967295u) % 32u);
}

fn func_4(arg_0: i32, arg_1: vec2<u32>, arg_2: vec2<u32>, arg_3: i32) -> vec2<bool> {
    global1 = Struct_1(select(!global1.a, !(!select(global1.a, vec2<bool>(false, global1.b), vec2<bool>(true, global1.a.x))), true), all(select(vec3<bool>(arg_3 < -1i, global1.b, false), vec3<bool>(true, global1.b, true), select(!vec3<bool>(false, true, global1.a.x), vec3<bool>(global1.b, global1.b, global1.a.x), global1.a.x))), ~(~max(func_3(), 0i)), global1.d);
    var var_0 = global1.a.x;
    let var_1 = -6279i;
    global1 = Struct_1(select(select(select(global1.a, select(vec2<bool>(global1.a.x, global1.a.x), global1.a, false), select(vec2<bool>(global1.b, global1.b), vec2<bool>(false, false), global1.a)), vec2<bool>(select(global1.a.x, true, global1.a.x), true), vec2<bool>(false, global1.b | global1.b)), !vec2<bool>(select(true, true, global1.a.x), global1.a.x), !global1.b), !all(vec3<bool>(global1.a.x && false, true, global1.a.x)), -2147483647i, -993f);
    var var_2 = select(select(vec4<bool>(false, !(!global1.a.x), global1.b != true, !all(vec4<bool>(false, global1.a.x, true, true))), select(!vec4<bool>(global1.b, false, true, global1.b), vec4<bool>(global1.b, any(vec4<bool>(global1.a.x, global1.b, true, global1.b)), any(global1.a), global1.d >= global1.d), global1.b), var_1 == -2147483647i), vec4<bool>(!(!global1.a.x) & global1.b, any(select(vec2<bool>(global1.b, global1.b), vec2<bool>(true, global1.a.x), vec2<bool>(global1.a.x, true))) | !global1.b, (arg_0 > ~var_1) & all(select(vec4<bool>(global1.a.x, global1.b, global1.a.x, global1.b), vec4<bool>(true, global1.b, false, global1.b), true)), global1.a.x), vec4<bool>(!(!global1.a.x), select(true, global1.a.x, false), false, global1.b));
    return var_2.xx;
}

fn func_2() -> Struct_1 {
    global0 = array<vec3<u32>, 14>();
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.d + -1516f)), global1.d);
    var var_1 = Struct_1(func_4(u_input.c.x, u_input.e.wx, vec2<u32>(0u, 0u), func_3()), !(true | global1.b) | global1.b, min(-(~global1.c & -u_input.c.x), -1i), var_0.x);
    global1 = Struct_1(global1.a, true, -_wgslsmith_sub_i32(_wgslsmith_clamp_i32(max(20923i, var_1.c), var_1.c, 1i), 66379i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1000f)) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.d, -1070f))));
    let var_2 = Struct_3(-(_wgslsmith_clamp_vec3_i32(u_input.c, min(u_input.c, u_input.c), u_input.c) >> (_wgslsmith_div_vec3_u32(firstTrailingBit(u_input.d.wxy), _wgslsmith_clamp_vec3_u32(vec3<u32>(1u, u_input.d.x, 1u), u_input.e.wzw, vec3<u32>(0u, 26374u, u_input.e.x))) % vec3<u32>(32u))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -406f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)))))), var_1.b);
    return Struct_1(!(!func_4(1i, u_input.e.zx, _wgslsmith_add_vec2_u32(vec2<u32>(8956u, u_input.b), u_input.e.xy), u_input.c.x)), true, _wgslsmith_dot_vec2_i32(var_2.a.xz, -vec2<i32>(_wgslsmith_sub_i32(19208i, 45495i), _wgslsmith_mult_i32(var_2.a.x, 0i))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(209f)) - _wgslsmith_f_op_f32(exp2(var_2.b)))))));
}

fn func_1() -> Struct_2 {
    global0 = array<vec3<u32>, 14>();
    let var_0 = func_2();
    global0 = array<vec3<u32>, 14>();
    global0 = array<vec3<u32>, 14>();
    global0 = array<vec3<u32>, 14>();
    return Struct_2(22364u);
}

fn func_5(arg_0: Struct_2, arg_1: u32, arg_2: Struct_4, arg_3: bool) -> Struct_4 {
    let var_0 = func_2();
    global1 = var_0;
    let var_1 = true;
    global1 = func_2();
    let var_2 = u_input.e.xw;
    return arg_2;
}

fn func_6(arg_0: Struct_4, arg_1: Struct_1, arg_2: vec2<f32>, arg_3: vec2<i32>) -> Struct_2 {
    var var_0 = true;
    global1 = func_2();
    var var_1 = Struct_3(_wgslsmith_sub_vec3_i32(vec3<i32>(-23982i, _wgslsmith_dot_vec2_i32(vec2<i32>(0i, 0i), vec2<i32>(arg_1.c, arg_1.c)), func_3()), u_input.c) | min(vec3<i32>(30400i, 1i, _wgslsmith_add_i32(-2664i, u_input.c.x)), select(firstLeadingBit(vec3<i32>(-1i, 0i, arg_1.c)), countOneBits(u_input.c), false)), arg_2.x, true);
    let var_2 = Struct_3(vec3<i32>(-u_input.c.x, countOneBits(_wgslsmith_mult_i32(-2147483647i, _wgslsmith_div_i32(u_input.c.x, var_1.a.x))), _wgslsmith_mod_i32(-2147483647i, ~(-arg_3.x))), -343f, !arg_1.b);
    global0 = array<vec3<u32>, 14>();
    return Struct_2(u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(func_5(func_1(), ~u_input.b, Struct_4(global1.d, _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(176f, global1.d, global1.d, global1.d), vec4<f32>(global1.d, -1071f, 188f, global1.d)), _wgslsmith_div_vec4_f32(vec4<f32>(-930f, -883f, 1354f, -285f), vec4<f32>(global1.d, -840f, -397f, -1249f)))), true), Struct_1(!select(func_4(-1i, u_input.d.zy, u_input.d.xx, u_input.c.x), global1.a, !global1.a.x), any(!vec3<bool>(false, global1.b, global1.b)) || all(select(global1.a, global1.a, global1.a)), select(-20092i, reverseBits(u_input.c.x), global1.b), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-func_5(Struct_2(1u), u_input.d.x, Struct_4(1087f, vec4<f32>(2613f, -656f, -635f, global1.d)), true).b.x)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-511f, -914f) + vec2<f32>(_wgslsmith_f_op_f32(select(-2009f, global1.d, global1.a.x)), _wgslsmith_f_op_f32(-352f - 668f))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(func_2().d, _wgslsmith_f_op_f32(f32(-1f) * -126f)))), countOneBits(max(~u_input.c.zz, firstTrailingBit(u_input.c.xy)) >> (u_input.d.yw % vec2<u32>(32u))));
    var var_1 = global1.d;
    var_1 = global1.d;
    let var_2 = 708f;
    var var_3 = func_2();
    let var_4 = u_input.d.x;
    let x = u_input.a;
    s_output = StorageBuffer(var_3.d);
}

