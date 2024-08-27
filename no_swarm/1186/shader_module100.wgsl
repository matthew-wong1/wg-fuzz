struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct Struct_3 {
    a: f32,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec4<bool>(true, true, false, true));

var<private> global1: vec4<i32>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: f32, arg_1: vec3<f32>, arg_2: i32) -> f32 {
    let var_0 = false;
    let var_1 = u_input.c.x;
    var var_2 = ~max(~(_wgslsmith_mult_u32(u_input.a.x, u_input.b) & u_input.b), _wgslsmith_mod_u32(0u, _wgslsmith_mult_u32(~u_input.a.x, 1u)));
    global1 = ~_wgslsmith_mult_vec4_i32(-vec4<i32>(var_1, ~global1.x, -2147483647i, u_input.c.x), vec4<i32>(-22297i, _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(0i, 44292i, var_1), vec3<i32>(u_input.c.x, global1.x, 1i), vec3<i32>(2147483647i, 2147483647i, 1i)), vec3<i32>(2147483647i, -2147483647i, -14694i)), u_input.c.x ^ abs(var_1), ~30573i));
    var var_3 = Struct_3(_wgslsmith_f_op_f32(arg_0 * -957f), global0.a.zx);
    return arg_1.x;
}

fn func_2() -> bool {
    global1 = firstTrailingBit(reverseBits(-(~vec4<i32>(-1i, -2147483647i, u_input.c.x, 30263i)) ^ _wgslsmith_mod_vec4_i32(firstLeadingBit(vec4<i32>(global1.x, global1.x, global1.x, u_input.c.x)), -vec4<i32>(0i, global1.x, global1.x, 15810i))));
    var var_0 = _wgslsmith_mult_i32(1i, reverseBits(reverseBits(global1.x)));
    var var_1 = vec4<f32>(-682f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1981f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(342f + 2693f) + _wgslsmith_f_op_f32(min(372f, -841f)))), _wgslsmith_f_op_f32(f32(-1f) * -375f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1194f) - _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(1122f * -1000f), _wgslsmith_div_vec3_f32(vec3<f32>(520f, 917f, 1000f), vec3<f32>(-107f, 1431f, -354f)), max(1i, global1.x))))), -1000f);
    var var_2 = Struct_1(var_1.x);
    let var_3 = 1u;
    return false;
}

fn func_1(arg_0: Struct_2, arg_1: vec3<u32>) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-456f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -910f) + _wgslsmith_f_op_f32(f32(-1f) * -1190f)))));
    var var_1 = u_input.a.wwx;
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -937f) * var_0), -2112f);
    var var_3 = func_2() & (!global0.a.x | any(select(arg_0.a.zw, select(arg_0.a.yw, global0.a.wz, arg_0.a.x), true)));
    global1 = abs(min(vec4<i32>(-62133i, 0i, 4294i, -1i), ~vec4<i32>(-43286i, u_input.c.x, u_input.c.x, global1.x)) ^ vec4<i32>(-u_input.c.x, 28071i, global1.x, ~(-2768i))) ^ (~_wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, 21059i, -1i, u_input.c.x), ~vec4<i32>(u_input.c.x, -2147483647i, -2147483647i, 41283i)) & vec4<i32>(abs(~(-1i)), 0i, u_input.c.x, -6682i));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-2903f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0))))) + -2437f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = any(!select(global0.a.zy, global0.a.xx, global0.a.x));
    let var_1 = -1026f;
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, _wgslsmith_div_f32(var_1, var_1))) - _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-382f, var_1))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, -926f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1, var_1) * vec2<f32>(var_1, -218f)))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(func_1(Struct_2(vec4<bool>(global0.a.x, true, global0.a.x, global0.a.x)), vec3<u32>(u_input.b, u_input.a.x, 1u))), -1220f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f))) * vec2<f32>(-1409f, _wgslsmith_f_op_f32(var_1 * -226f))));
    let var_3 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, var_2.x, -596f, var_2.x) - vec4<f32>(497f, var_1, 257f, -2563f)) + _wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_1, var_2.x, var_1, 1294f), vec4<f32>(var_1, var_1, 412f, -1000f))))) * _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-460f, var_2.x, -608f, -387f) + vec4<f32>(1970f, var_2.x, var_1, var_2.x))))))));
    global1 = vec4<i32>(_wgslsmith_add_i32(max(_wgslsmith_add_i32(_wgslsmith_add_i32(u_input.c.x, u_input.c.x), countOneBits(55114i)), _wgslsmith_div_i32(firstLeadingBit(global1.x), u_input.c.x)), ~firstTrailingBit(-global1.x)), _wgslsmith_add_i32(28337i, firstTrailingBit(firstTrailingBit(-1i))) | global1.x, u_input.c.x, _wgslsmith_clamp_i32(countOneBits(global1.x), abs(_wgslsmith_div_i32(select(u_input.c.x, 1i, true), 2147483647i)), -77321i));
    var var_4 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x)) * _wgslsmith_f_op_f32(var_2.x - _wgslsmith_f_op_f32(max(-1046f, var_1)))) * _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-1175f, _wgslsmith_div_f32(var_2.x, 734f))))), !select(!select(vec2<bool>(false, global0.a.x), global0.a.wx, global0.a.x), global0.a.yx, !(var_2.x == 119f)));
    var_0 = !(!global0.a.x);
    let var_5 = _wgslsmith_add_u32(firstTrailingBit(u_input.b), _wgslsmith_mod_u32(u_input.b, _wgslsmith_dot_vec3_u32(u_input.a.wwx, u_input.a.xyz)));
    let var_6 = _wgslsmith_f_op_vec4_f32(vec4<f32>(863f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(130f, var_1, global0.a.x)) * _wgslsmith_f_op_f32(-var_3.x))), -1637f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(740f + var_3.x))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-var_3), _wgslsmith_f_op_vec4_f32(-var_3))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_3) * vec4<f32>(var_2.x, 175f, -1000f, -1367f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.x, var_4.a, var_2.x, var_2.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(_wgslsmith_div_u32(_wgslsmith_div_u32(~var_5, ~u_input.b), _wgslsmith_dot_vec2_u32(u_input.a.wx, vec2<u32>(u_input.a.x, 32320u) ^ u_input.a.xx)), 72226u));
}

