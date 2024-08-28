struct Struct_1 {
    a: vec4<bool>,
    b: u32,
    c: i32,
    d: vec3<f32>,
    e: bool,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec3<f32>,
    d: i32,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
    d: vec3<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<f32>,
    c: vec2<i32>,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: vec2<u32>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: bool, arg_1: i32, arg_2: vec3<u32>, arg_3: Struct_1) -> u32 {
    return u_input.c;
}

fn func_4(arg_0: Struct_1, arg_1: i32) -> vec2<u32> {
    let var_0 = u_input.d.yy;
    let var_1 = arg_0.b;
    global0 = 0u;
    let var_2 = -1791f;
    global0 = arg_0.b & _wgslsmith_mult_u32(_wgslsmith_add_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.e.x, arg_0.b, 17534u, arg_0.b), vec4<u32>(arg_0.b, arg_0.b, u_input.e.x, arg_0.b)), 1u), arg_0.b);
    return select(_wgslsmith_mult_vec2_u32(~abs(u_input.b & u_input.e.yz), vec2<u32>(39822u & arg_0.b, ~0u) ^ (min(u_input.b, u_input.b) << (~vec2<u32>(30398u, 52022u) % vec2<u32>(32u)))), _wgslsmith_add_vec2_u32(u_input.e.xy, u_input.e.zz), any(select(select(arg_0.a.wy, vec2<bool>(arg_0.a.x, arg_0.a.x), vec2<bool>(false, arg_0.e)), arg_0.a.xw, select(arg_0.a.zy, select(vec2<bool>(arg_0.a.x, arg_0.e), arg_0.a.yw, true), !arg_0.a.x))));
}

fn func_2(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: i32, arg_3: f32) -> bool {
    global1 = ~func_4(Struct_1(!(!arg_0.a), ~func_3(arg_0.a.x, 18410i, vec3<u32>(15570u, arg_0.b, 60486u), Struct_1(vec4<bool>(arg_0.a.x, true, false, arg_0.e), u_input.b.x, -23499i, arg_0.d, true)), _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_2, arg_1.x, -1i, -2817i), vec4<i32>(-1i, 0i, 1i, -2147483647i)), _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, arg_0.c, u_input.d.x, arg_0.c), vec4<i32>(arg_2, 0i, 1i, arg_2))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(arg_0.d, vec3<f32>(arg_3, arg_0.d.x, -335f))), arg_0.a.x), ~_wgslsmith_add_i32(arg_1.x, u_input.d.x) & -1i);
    var var_0 = arg_0.e || !arg_0.a.x;
    var var_1 = 1u;
    global0 = 4294967295u >> ((arg_0.b ^ 72277u) % 32u);
    var var_2 = _wgslsmith_f_op_f32(-arg_3);
    return true;
}

fn func_1() -> Struct_2 {
    let var_0 = Struct_2(max(firstLeadingBit(~vec2<u32>(4294967295u, u_input.c)), ~min(vec2<u32>(4294967295u, u_input.e.x), abs(vec2<u32>(20725u, global1.x)))), vec2<i32>(u_input.d.x, u_input.d.x), vec3<f32>(-106f, 1232f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-316f, -187f, any(vec2<bool>(true, false)))) + _wgslsmith_f_op_f32(f32(-1f) * -351f))), _wgslsmith_dot_vec4_i32(select(-(vec4<i32>(u_input.d.x, u_input.d.x, -1i, u_input.d.x) << (vec4<u32>(5347u, global1.x, u_input.a, u_input.e.x) % vec4<u32>(32u))), ~vec4<i32>(u_input.d.x, -2147483647i, u_input.d.x, u_input.d.x) & firstLeadingBit(vec4<i32>(u_input.d.x, 1i, u_input.d.x, u_input.d.x)), true), vec4<i32>(_wgslsmith_div_i32(u_input.d.x, max(u_input.d.x, u_input.d.x)), _wgslsmith_clamp_i32(1i, _wgslsmith_mod_i32(1i, u_input.d.x), -2147483647i), -1i, -1i)), Struct_1(vec4<bool>(all(vec2<bool>(true, true)), false, true, true | func_2(Struct_1(vec4<bool>(false, true, false, true), global1.x, -1i, vec3<f32>(435f, 770f, -319f), true), vec2<i32>(6310i, u_input.d.x), 27074i, -1280f)), global1.x, u_input.d.x, _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(1000f * 1158f), _wgslsmith_f_op_f32(-1000f * 721f), _wgslsmith_f_op_f32(-1000f + -254f)))), !(firstLeadingBit(u_input.d.x) <= _wgslsmith_clamp_i32(u_input.d.x, u_input.d.x, -147i))));
    var var_1 = !select(vec4<bool>(var_0.e.a.x, true, var_0.e.e, true), select(!(!vec4<bool>(false, var_0.e.e, false, true)), vec4<bool>(any(var_0.e.a.wy), var_0.e.e | var_0.e.e, all(var_0.e.a), true), !(false | var_0.e.e)), select(vec4<bool>(true, all(vec3<bool>(var_0.e.e, var_0.e.e, var_0.e.a.x)), true, var_0.e.a.x), var_0.e.a, func_2(Struct_1(vec4<bool>(true, true, false, true), u_input.b.x, var_0.b.x, var_0.e.d, false), vec2<i32>(1i, u_input.d.x), 14798i, _wgslsmith_f_op_f32(sign(-1000f)))));
    var var_2 = firstTrailingBit(_wgslsmith_add_vec4_i32(countOneBits(min(_wgslsmith_sub_vec4_i32(vec4<i32>(var_0.b.x, 0i, -57600i, 2147483647i), vec4<i32>(55239i, -1i, -13895i, 2147483647i)), firstTrailingBit(vec4<i32>(u_input.d.x, -2507i, u_input.d.x, 0i)))), ~(-firstLeadingBit(vec4<i32>(2147483647i, -2147483647i, -1i, -2147483647i)))));
    let var_3 = var_0.e.a.ywy;
    global0 = _wgslsmith_mod_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(min(vec3<u32>(0u, global1.x, 1u), vec3<u32>(1u, 0u, var_0.a.x)), vec3<u32>(66015u, 18323u, u_input.a)), firstTrailingBit(4294967295u)), global1.x) >> (_wgslsmith_add_u32(41884u, firstTrailingBit(u_input.e.x)) % 32u);
    return Struct_2(_wgslsmith_div_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(var_0.e.b, 4294967295u), var_0.a.x), u_input.e.zy), var_0.b & vec2<i32>(1i, _wgslsmith_sub_i32(var_0.d, var_2.x | -1i)), var_0.c, var_2.x, var_0.e);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    global1 = vec2<u32>(var_0.a.x ^ _wgslsmith_dot_vec3_u32(~(~vec3<u32>(var_0.a.x, 2743u, 1u)), vec3<u32>(744u, ~68581u, var_0.e.b)), 35764u);
    global0 = var_0.a.x ^ 9645u;
    let var_1 = ~9203u;
    var var_2 = Struct_2(u_input.e.xz, ~vec2<i32>(-func_1().e.c, 1i), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(338f, 801f, -663f), _wgslsmith_f_op_vec3_f32(var_0.c - vec3<f32>(614f, var_0.e.d.x, var_0.c.x)))) - vec3<f32>(_wgslsmith_f_op_f32(-1667f - 1602f), var_0.e.d.x, _wgslsmith_f_op_f32(var_0.c.x + var_0.c.x)))), ~_wgslsmith_mod_i32(-u_input.d.x ^ 1i, ~0i), func_1().e);
    var_0 = func_1();
    let var_3 = -var_2.e.c;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.e.d.zx, var_0.e.d.xz, _wgslsmith_clamp_vec2_i32(reverseBits(var_0.b), select(var_2.b, var_2.b, var_2.e.e) & -var_0.b, vec2<i32>(abs(-1i), ~min(49937i, var_0.b.x))), -(~var_2.e.c), _wgslsmith_f_op_f32(2778f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1019f))))));
}

