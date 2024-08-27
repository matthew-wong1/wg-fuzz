struct Struct_1 {
    a: vec2<f32>,
    b: u32,
    c: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec2<u32>,
    c: vec4<u32>,
    d: i32,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: u32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(vec2<f32>(-1563f, -1000f), 0u, vec3<f32>(-949f, 1366f, -547f)));

var<private> global1: Struct_1;

var<private> global2: i32 = 0i;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_1(arg_0: Struct_3) -> Struct_1 {
    var var_0 = 442f;
    let var_1 = countOneBits(countOneBits(u_input.c));
    var var_2 = 0u;
    let var_3 = arg_0;
    let var_4 = ~u_input.b.xy;
    return Struct_1(vec2<f32>(284f, global1.a.x), _wgslsmith_div_u32(~var_1, arg_0.c.x) >> (4294967295u % 32u), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1655f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -115f) - _wgslsmith_f_op_f32(-697f * 850f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global1.c.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-global1.c)))))));
}

fn func_3() -> i32 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global1.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(global0.a.a.x)))) * 1134f), any(vec2<bool>(true, true)))) * 1557f);
    var var_1 = ~firstLeadingBit(reverseBits(_wgslsmith_mod_u32(~4294967295u, _wgslsmith_mult_u32(1u, 24369u))));
    var var_2 = Struct_1(global1.a, global0.a.b, _wgslsmith_div_vec3_f32(vec3<f32>(-2381f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(global1.c.x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(-global0.a.a.x))), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.a.a.x * 431f), _wgslsmith_f_op_f32(-global0.a.a.x)), 301f, func_1(Struct_3(false, u_input.a.zx, vec4<u32>(1u, 56220u, global1.b, u_input.a.x), u_input.b.x, global0.a)).a.x)));
    global2 = _wgslsmith_dot_vec3_i32(u_input.b, vec3<i32>(0i, min(-u_input.d << (global0.a.b % 32u), _wgslsmith_mult_i32(u_input.e, 1i)), u_input.d & -1i));
    let var_3 = Struct_3(!((true || (-458f != var_2.a.x)) | true), u_input.a.zy, select(~vec4<u32>(global1.b ^ var_2.b, 0u, _wgslsmith_add_u32(4294967295u, global1.b), 1u), abs(~vec4<u32>(u_input.a.x, 1u, var_2.b, 32065u)) >> (~(vec4<u32>(0u, var_2.b, 0u, var_2.b) | vec4<u32>(51177u, var_2.b, global1.b, u_input.a.x)) % vec4<u32>(32u)), all(vec3<bool>(true, global1.b > global0.a.b, true))), -1i, func_1(Struct_3(countOneBits(global0.a.b) > max(94889u, 0u), u_input.a.xx, _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, u_input.c, u_input.a.x, var_2.b), countOneBits(vec4<u32>(global1.b, var_2.b, 0u, 90263u))), u_input.d, func_1(Struct_3(true, u_input.a.zy, vec4<u32>(81767u, 34206u, 4294967295u, u_input.c), u_input.e, Struct_1(var_2.c.yz, global0.a.b, global1.c))))));
    return -u_input.d;
}

fn func_2(arg_0: Struct_1) -> vec2<f32> {
    var var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a.x))));
    var var_1 = select(vec3<i32>(-15147i, 1i, -u_input.e >> ((countOneBits(global1.b) ^ func_1(Struct_3(true, u_input.a.xz, vec4<u32>(global0.a.b, 1u, global1.b, 23189u), u_input.d, Struct_1(vec2<f32>(global0.a.a.x, arg_0.a.x), arg_0.b, vec3<f32>(arg_0.a.x, 1000f, arg_0.c.x)))).b) % 32u)), abs(-u_input.b) << (u_input.a % vec3<u32>(32u)), vec3<bool>(true, true, true));
    var var_2 = func_1(Struct_3(true, u_input.a.yx, ~(abs(vec4<u32>(arg_0.b, global0.a.b, 4294967295u, 11776u)) & _wgslsmith_mod_vec4_u32(vec4<u32>(19772u, arg_0.b, 4294967295u, 78084u), vec4<u32>(arg_0.b, global0.a.b, 30827u, 63583u))), func_3(), func_1(Struct_3(true, _wgslsmith_mult_vec2_u32(u_input.a.zz, vec2<u32>(0u, 72383u)), min(vec4<u32>(arg_0.b, 11458u, global0.a.b, 1u), vec4<u32>(arg_0.b, 22015u, 32941u, 127147u)), var_1.x, Struct_1(vec2<f32>(-950f, global0.a.a.x), 6493u, vec3<f32>(1091f, -251f, -2062f))))));
    let var_3 = global0.a.c.x;
    global1 = global0.a;
    return vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-1775f, _wgslsmith_f_op_f32(f32(-1f) * -957f)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -529f))))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = 13649i;
    var var_0 = _wgslsmith_mult_u32(17395u, 0u);
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(func_2(func_1(Struct_3(all(vec3<bool>(true, false, false)), ~vec2<u32>(u_input.a.x, global0.a.b), vec4<u32>(global0.a.b, 4294967295u, 0u, 28984u), select(9600i, u_input.d, false), global0.a)))), ~u_input.a.x, vec3<f32>(-600f, _wgslsmith_div_f32(global0.a.c.x, _wgslsmith_div_f32(-1487f, -336f)), _wgslsmith_f_op_f32(global0.a.a.x * _wgslsmith_f_op_f32(-global1.c.x))));
    let var_2 = vec3<i32>(_wgslsmith_sub_i32(countOneBits(_wgslsmith_mod_i32(-1i, u_input.e) >> (reverseBits(global1.b) % 32u)), u_input.b.x), min(_wgslsmith_clamp_i32(abs(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, u_input.b.x, -31922i), u_input.b)), ~(-u_input.e), -(~u_input.b.x)), -47996i), u_input.e ^ _wgslsmith_sub_i32(-(u_input.e << (0u % 32u)), _wgslsmith_add_i32(u_input.d, ~u_input.b.x)));
    let var_3 = global0.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec3_u32(u_input.a, vec3<u32>(u_input.c, _wgslsmith_add_u32(4294967295u, global1.b), _wgslsmith_div_u32(47449u, 36549u)) ^ ~_wgslsmith_mult_vec3_u32(vec3<u32>(9522u, global0.a.b, 13244u), u_input.a)), _wgslsmith_clamp_u32(~var_3.b, ~select(_wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(global0.a.b, 1u, 74446u)), ~12039u, true), (select(u_input.c, 1u, true) >> (1u % 32u)) << (global1.b % 32u)), select(69133u, 0u, true));
}

