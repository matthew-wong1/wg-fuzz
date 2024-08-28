struct Struct_1 {
    a: vec3<u32>,
    b: vec4<u32>,
    c: f32,
    d: i32,
}

struct Struct_2 {
    a: i32,
    b: vec2<u32>,
    c: f32,
    d: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
}

struct Struct_4 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 0u;

var<private> global1: Struct_3 = Struct_3(Struct_2(18485i, vec2<u32>(58222u, 4294967295u), -1448f, 0u), 1u);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
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

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<u32>, arg_1: vec2<bool>) -> f32 {
    global1 = Struct_3(Struct_2(0i, firstTrailingBit(countOneBits(abs(u_input.a.yy))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global1.a.c))), min(global1.a.b.x, u_input.a.x)), u_input.a.x);
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(247f, 627f, 479f), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1896f, global1.a.c, global1.a.c) + vec3<f32>(153f, global1.a.c, -1776f)))), vec3<f32>(_wgslsmith_f_op_f32(exp2(global1.a.c)), _wgslsmith_f_op_f32(global1.a.c + 1000f), _wgslsmith_div_f32(1175f, global1.a.c))) - _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -139f), _wgslsmith_f_op_f32(abs(-735f)), global1.a.c), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-1000f, global1.a.c, global1.a.c))))));
    var var_1 = _wgslsmith_div_vec3_i32(-_wgslsmith_mult_vec3_i32(max(vec3<i32>(14034i, u_input.c, global1.a.a) ^ vec3<i32>(u_input.b, u_input.d, 1i), _wgslsmith_clamp_vec3_i32(vec3<i32>(global1.a.a, global1.a.a, 1i), vec3<i32>(u_input.d, 2147483647i, -33218i), vec3<i32>(global1.a.a, -42516i, 16287i))), vec3<i32>(-2147483647i, u_input.c, abs(global1.a.a))), reverseBits(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.d, 0i, -2147483647i), vec3<i32>(u_input.c, u_input.c, 0i), vec3<i32>(global1.a.a, u_input.c, global1.a.a)) >> (~vec3<u32>(global1.b, global1.b, global1.a.d) % vec3<u32>(32u))) | vec3<i32>(_wgslsmith_mult_i32(_wgslsmith_mult_i32(0i, 2147483647i), global1.a.a), -1i, -u_input.d));
    var var_2 = Struct_1(vec3<u32>(firstLeadingBit(0u), min(1u, 0u), 4294967295u), vec4<u32>(1u, ~(~(~13659u)), _wgslsmith_sub_u32(arg_0.x, abs(max(0u, u_input.a.x))), 1u), 361f, 45016i);
    var var_3 = global1.a;
    return var_3.c;
}

fn func_2(arg_0: f32) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(~global1.a.b, vec2<bool>(true, true))) * 1168f);
    global1 = Struct_3(Struct_2(global1.a.a >> (_wgslsmith_div_u32(reverseBits(36498u), firstTrailingBit(72610u)) % 32u), vec2<u32>(~22619u ^ global1.a.b.x, ~(u_input.a.x & 4294967295u)), global1.a.c, global1.a.b.x), 4294967295u);
    let var_1 = vec2<i32>(-1i, 51421i);
    var var_2 = ~4172u;
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.a.c, 1109f, 371f, global1.a.c) - vec4<f32>(2520f, -998f, global1.a.c, var_0)))))))) + _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(abs(arg_0)), _wgslsmith_div_f32(1353f, 169f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(-2445f)), -841f)), 1102f))));
    return Struct_2(abs(~(-32546i)), vec2<u32>(global1.a.d, global1.b), var_3.x, abs(_wgslsmith_dot_vec3_u32(u_input.a, _wgslsmith_add_vec3_u32(vec3<u32>(u_input.a.x, global1.a.d, 7726u), abs(u_input.a)))));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2) -> Struct_4 {
    global1 = arg_0;
    return Struct_4(global1.a.b);
}

fn func_1() -> vec3<i32> {
    global0 = global1.b;
    let var_0 = func_4(Struct_3(func_2(global1.a.c), ~u_input.a.x), global1.a);
    global0 = 4294967295u;
    global0 = ~func_2(global1.a.c).d;
    let var_1 = Struct_2(countOneBits(u_input.d), vec2<u32>(~abs(abs(var_0.a.x)), 0u), -1000f, ~_wgslsmith_dot_vec4_u32(abs(~vec4<u32>(global1.b, 18632u, var_0.a.x, 32423u)), ~vec4<u32>(u_input.a.x, 41098u, var_0.a.x, var_0.a.x)));
    return -(~(~_wgslsmith_mod_vec3_i32(max(vec3<i32>(1i, global1.a.a, u_input.b), vec3<i32>(-2147483647i, global1.a.a, var_1.a)), vec3<i32>(-26864i, var_1.a, u_input.d))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_3(global1.a, max(u_input.a.x, _wgslsmith_clamp_u32(countOneBits(1u), ~select(global1.a.d, 0u, false), _wgslsmith_dot_vec4_u32(vec4<u32>(global1.a.d, u_input.a.x, global1.a.d, 16082u), _wgslsmith_mult_vec4_u32(vec4<u32>(1u, 0u, global1.b, global1.b), vec4<u32>(56633u, 14000u, global1.a.b.x, u_input.a.x))))));
    var var_0 = Struct_2(_wgslsmith_dot_vec3_i32(vec3<i32>(-(global1.a.a & global1.a.a), reverseBits(_wgslsmith_mod_i32(-1i, global1.a.a)), -21115i), select(~(~vec3<i32>(global1.a.a, -2147483647i, -1i)), select(select(vec3<i32>(-86190i, global1.a.a, 1i), vec3<i32>(-1i, 21108i, 0i), false), func_1(), vec3<bool>(true, true, true)), true)), max(global1.a.b, func_4(Struct_3(Struct_2(global1.a.a, vec2<u32>(global1.b, 4294967295u), 155f, u_input.a.x), 0u), global1.a).a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global1.a.c))) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global1.a.c * global1.a.c)))) - 430f), select((0u | global1.b) << (1u % 32u), abs(28318u), select(true, false, false) && (4294967295u >= u_input.a.x)));
    var var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(global1.a.c, _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-347f)), global1.a.c)))));
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1000f)) * _wgslsmith_div_f32(-117f, 226f)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-182f, var_0.c, false)), 2204f)) + global1.a.c) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1000f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.c), _wgslsmith_f_op_f32(exp2(var_0.c)), true)), any(vec4<bool>(false, true, true, false)) | false))));
    let var_2 = Struct_3(global1.a, u_input.a.x);
    var var_3 = vec3<bool>(any(vec2<bool>(true, all(vec4<bool>(true, true, true, true)))), !any(vec2<bool>(false, true)), true);
    let x = u_input.a;
    s_output = StorageBuffer(~firstTrailingBit(min(vec4<u32>(8354u, var_2.b, u_input.a.x, 0u), vec4<u32>(u_input.a.x, 15249u, 0u, 0u)) << (select(vec4<u32>(var_2.b, 1u, 1u, global1.b), vec4<u32>(global1.a.b.x, var_2.a.d, var_0.d, 0u), true) % vec4<u32>(32u))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.c, global1.a.c, 212f, var_0.c), vec4<f32>(var_0.c, 412f, var_0.c, 233f), vec4<bool>(true, true, false, false))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, var_2.a.c, -550f, var_2.a.c) - vec4<f32>(-858f, -1064f, 2414f, 1069f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-690f, -1241f, -102f, var_2.a.c)) * vec4<f32>(-112f, -399f, -607f, 681f))) + vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.c, -1412f) + _wgslsmith_f_op_f32(-435f - -1360f)), 625f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2087f + -365f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a.c - global1.a.c)))));
}

