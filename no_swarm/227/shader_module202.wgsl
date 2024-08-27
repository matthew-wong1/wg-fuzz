struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(0i, -5040i, 0i);

var<private> global1: Struct_2 = Struct_2(vec4<u32>(14746u, 4294967295u, 36721u, 4294967295u));

var<private> global2: Struct_1 = Struct_1(vec2<u32>(1u, 0u));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_2(arg_0: u32, arg_1: vec4<f32>) -> Struct_1 {
    var var_0 = Struct_2(_wgslsmith_mod_vec4_u32(global1.a, vec4<u32>(arg_0, max(global2.a.x, arg_0), _wgslsmith_div_u32(0u, 8068u), arg_0)) ^ global1.a);
    global0 = abs(vec3<i32>(i32(-1i) * -1076i, ~global0.x | u_input.a, ~0i));
    let var_1 = i32(-1i) * -_wgslsmith_clamp_i32(firstLeadingBit(_wgslsmith_clamp_i32(u_input.a, u_input.a, 1i)), min(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, global0.x, 10664i), vec3<i32>(global0.x, u_input.a, u_input.a)), global0.x & u_input.a), 27872i);
    let var_2 = Struct_1(_wgslsmith_add_vec2_u32(firstTrailingBit(~global2.a) << ((vec2<u32>(arg_0, global2.a.x) ^ vec2<u32>(52735u, 30656u)) % vec2<u32>(32u)), global2.a ^ var_0.a.yx));
    var var_3 = arg_0;
    return var_2;
}

fn func_3() -> bool {
    global1 = Struct_2(vec4<u32>(countOneBits(1u), ~countOneBits(abs(global1.a.x)), 51375u, 1u));
    let var_0 = vec3<u32>(abs(reverseBits(~global1.a.x)), ~1649u, max(global1.a.x, 1u) ^ ~global1.a.x);
    var var_1 = func_2(1u, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-702f, -1035f, 745f, -1171f), vec4<f32>(512f, -512f, 988f, 1329f), vec4<bool>(false, true, true, false))) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-433f, 415f, 976f, -348f), vec4<f32>(-785f, 136f, -225f, 1834f), false)))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1047f, -1000f, 1744f, 1000f), vec4<f32>(-1520f, 1894f, 1534f, -352f))))))));
    let var_2 = _wgslsmith_dot_vec4_i32(~(-_wgslsmith_mod_vec4_i32(~vec4<i32>(global0.x, global0.x, 5510i, u_input.a), -vec4<i32>(u_input.a, global0.x, u_input.a, 2147483647i))), ~(-(~vec4<i32>(-27846i, global0.x, -2147483647i, global0.x))));
    let var_3 = vec4<i32>(global0.x, _wgslsmith_dot_vec3_i32(vec3<i32>(-9770i, global0.x, u_input.a) << (_wgslsmith_div_vec3_u32(vec3<u32>(76609u, global2.a.x, 85927u), global1.a.xxz) % vec3<u32>(32u)), select(vec3<i32>(global0.x, -1i, global0.x) << (vec3<u32>(66366u, global1.a.x, 1u) % vec3<u32>(32u)), _wgslsmith_mult_vec3_i32(vec3<i32>(-49955i, global0.x, -2147483647i), vec3<i32>(u_input.a, u_input.a, global0.x)), vec3<bool>(false, false, true))), -(~(-2147483647i)), _wgslsmith_add_i32(~(-19065i), u_input.a)) ^ vec4<i32>(-(~global0.x), _wgslsmith_mod_i32(_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(global0.x, global0.x, var_2, global0.x), vec4<i32>(global0.x, -27635i, 6005i, var_2)), _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, 2147483647i), vec2<i32>(-34048i, u_input.a))), -76455i | (global0.x | 1i)), _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, 44912i, u_input.a, var_2) | vec4<i32>(-31297i, -1i, -2147483647i, var_2), -vec4<i32>(u_input.a, global0.x, var_2, 1i)), ~firstTrailingBit(vec4<i32>(var_2, global0.x, u_input.a, var_2))), var_2);
    return !all(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)));
}

fn func_1(arg_0: vec2<f32>, arg_1: bool) -> Struct_2 {
    var var_0 = -447f;
    var var_1 = func_2(24444u, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1122f, _wgslsmith_div_f32(-208f, _wgslsmith_f_op_f32(arg_0.x - arg_0.x)), _wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(arg_0.x * _wgslsmith_f_op_f32(abs(arg_0.x))))));
    var var_2 = vec3<bool>(func_3(), arg_1, arg_1);
    global0 = vec3<i32>(~1i, -78779i, countOneBits(_wgslsmith_mult_i32(2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 13319i, global0.x, -46803i), vec4<i32>(-2147483647i, u_input.a, 1i, u_input.a)) | global0.x)));
    var var_3 = -49484i;
    return Struct_2(countOneBits(vec4<u32>(4294967295u, global1.a.x, ~1u, global2.a.x)));
}

fn func_4(arg_0: vec2<i32>, arg_1: vec3<u32>, arg_2: u32, arg_3: Struct_2) -> i32 {
    let var_0 = Struct_2(arg_3.a);
    var var_1 = ~firstLeadingBit(_wgslsmith_mod_vec4_i32(-(vec4<i32>(global0.x, 42368i, 22324i, global0.x) >> (vec4<u32>(1u, arg_1.x, 16066u, arg_3.a.x) % vec4<u32>(32u))), abs(-vec4<i32>(u_input.a, 0i, -2147483647i, global0.x))));
    var_1 = vec4<i32>(reverseBits(_wgslsmith_div_i32(~(-47567i >> (arg_2 % 32u)), u_input.a)), i32(-1i) * -20892i, ~(-arg_0.x ^ (_wgslsmith_dot_vec2_i32(vec2<i32>(1i, u_input.a), vec2<i32>(16201i, -1i)) << (countOneBits(4294967295u) % 32u))), _wgslsmith_mult_i32(arg_0.x, _wgslsmith_div_i32(-1149i, u_input.a)));
    global2 = func_2(abs(arg_3.a.x) << (reverseBits(_wgslsmith_add_u32(~arg_2, arg_1.x)) % 32u), vec4<f32>(2305f, -1478f, 1222f, -264f));
    var var_2 = any(!vec3<bool>(true, true, arg_0.x >= -arg_0.x));
    return var_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec3<i32>(global0.x, u_input.a, func_4(countOneBits(~vec2<i32>(u_input.a, global0.x)), select(_wgslsmith_mod_vec3_u32(global1.a.yzw, vec3<u32>(global1.a.x, global2.a.x, global1.a.x)), min(global1.a.yww, vec3<u32>(global1.a.x, 114647u, global1.a.x)), vec3<bool>(false, true, false)), ~(~global2.a.x), func_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-703f, -2145f)), true))) >> (_wgslsmith_div_vec3_u32(global1.a.wyw, global1.a.zxw) % vec3<u32>(32u));
    var var_0 = func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -165f), 668f) * _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1039f, -1514f) + vec2<f32>(543f, -167f)), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1700f, -739f))))))), true);
    let var_1 = Struct_2(max(~(~vec4<u32>(var_0.a.x, var_0.a.x, 4294967295u, 35403u)), func_1(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1382f, 761f))), true).a) & (vec4<u32>(_wgslsmith_sub_u32(var_0.a.x, 1u), ~4294967295u, 20350u, select(var_0.a.x, var_0.a.x, false)) | var_0.a));
    let var_2 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(1230f, -634f) - vec2<f32>(614f, 538f)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1252f, -937f) + vec2<f32>(-295f, -355f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(405f, -1797f) + vec2<f32>(-1021f, 447f)), vec2<bool>(true, true)))) * _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(504f, -2459f)), _wgslsmith_div_vec2_f32(vec2<f32>(1000f, -654f), vec2<f32>(-251f, -120f))))))));
    var_0 = func_1(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.x, var_2.x) - vec2<f32>(var_2.x, var_2.x)))) * vec2<f32>(_wgslsmith_div_f32(2117f, 496f), _wgslsmith_f_op_f32(var_2.x * 420f))))), any(vec3<bool>(false, all(vec3<bool>(true, true, true)), !all(vec2<bool>(true, false)))));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(global0.x), 657f, var_2.x);
}

