struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: i32,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec3<i32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: i32) -> vec4<bool> {
    let var_0 = Struct_1(61183u);
    var var_1 = u_input.a.x;
    var_1 = firstLeadingBit(~firstTrailingBit(u_input.a.x));
    let var_2 = reverseBits(firstTrailingBit(_wgslsmith_div_vec2_i32(_wgslsmith_add_vec2_i32(~vec2<i32>(arg_0, arg_0), vec2<i32>(arg_0, -2147483647i)), abs(_wgslsmith_mod_vec2_i32(vec2<i32>(-10421i, 27055i), vec2<i32>(-25790i, 27008i))))));
    var_1 = _wgslsmith_mod_u32(53651u, abs(~(~(var_0.a ^ u_input.a.x))));
    return vec4<bool>(true, select(arg_0 < 12746i, true, !select(true, true, true)), false, false);
}

fn func_3() -> vec2<u32> {
    var var_0 = vec2<i32>(1i, 1i);
    var_0 = _wgslsmith_sub_vec2_i32(max(_wgslsmith_div_vec2_i32(vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<i32>(var_0.x, -2147483647i, var_0.x, 0i)), abs(var_0.x)), reverseBits(-vec2<i32>(-2147483647i, -1i))), ~(select(vec2<i32>(var_0.x, var_0.x), vec2<i32>(13592i, var_0.x), vec2<bool>(true, false)) ^ -vec2<i32>(0i, 620i))), ~(-(~(~vec2<i32>(var_0.x, 2147483647i)))));
    var_0 = countOneBits(select(_wgslsmith_sub_vec2_i32(_wgslsmith_mod_vec2_i32(select(vec2<i32>(var_0.x, var_0.x), vec2<i32>(var_0.x, -2147483647i), vec2<bool>(false, false)), _wgslsmith_sub_vec2_i32(vec2<i32>(var_0.x, var_0.x), vec2<i32>(-2147483647i, -1i))), _wgslsmith_mod_vec2_i32(~vec2<i32>(var_0.x, var_0.x), select(vec2<i32>(0i, var_0.x), vec2<i32>(-16617i, -2147483647i), vec2<bool>(true, false)))), abs((vec2<i32>(-1i, 1i) << (u_input.a.zy % vec2<u32>(32u))) & abs(vec2<i32>(-1i, -1i))), !any(vec4<bool>(true, true, true, true))));
    let var_1 = Struct_1(4294967295u);
    let var_2 = !func_2(~(~var_0.x));
    return ~u_input.a.yz;
}

fn func_1() -> Struct_2 {
    var var_0 = ~(~_wgslsmith_add_u32(4294967295u, u_input.a.x) | firstTrailingBit(u_input.a.x));
    var_0 = min(~(~4807u), abs(~50823u));
    let var_1 = vec4<bool>(any(func_2(~(-1i))), false, any(func_2(_wgslsmith_sub_i32(-35248i, 0i))), !(!(all(vec3<bool>(true, true, false)) && all(vec3<bool>(false, true, true)))));
    var_0 = u_input.a.x;
    let var_2 = Struct_3(_wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(43820i, 2147483647i, -1i, -1249i) >> (u_input.a % vec4<u32>(32u)), -vec4<i32>(-2147483647i, 26278i, 1117i, 18764i), vec4<i32>(-1i, 37251i, -19102i, 2147483647i)), vec4<i32>(1i, 1i, 1i, 1i)), vec4<i32>(reverseBits(-33269i), select(1i, 0i, var_1.x) | firstTrailingBit(-38343i), -(i32(-1i) * -43223i), -1i)), -vec2<i32>(8942i, -10557i) << (func_3() % vec2<u32>(32u)), vec3<i32>(-30406i, max(~(i32(-1i) * -2147483647i), 0i), -(~(-2147483647i))), Struct_1(u_input.a.x >> (_wgslsmith_mod_u32(1u, ~28840u) % 32u)));
    return Struct_2(countOneBits(var_2.c.yx), var_2.c.x);
}

fn func_4(arg_0: i32, arg_1: i32, arg_2: Struct_2, arg_3: vec4<bool>) -> vec2<i32> {
    let var_0 = ~u_input.a.zyx;
    let var_1 = func_2(arg_2.b);
    let var_2 = arg_2;
    return abs(vec2<i32>(max(-1331i, _wgslsmith_add_i32(arg_1, 2147483647i) ^ 1i), i32(-1i) * -_wgslsmith_div_i32(0i, arg_2.b)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<f32>(-893f, _wgslsmith_f_op_f32(trunc(1365f)), _wgslsmith_div_f32(-192f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1151f)))))), 145f);
    var var_1 = Struct_2(func_4(1i, _wgslsmith_div_i32(2147483647i, 1i), func_1(), vec4<bool>(all(vec3<bool>(false, true, true)) | any(vec4<bool>(true, false, true, true)), false, !any(vec2<bool>(true, true)), !(var_0.x > var_0.x))), -(~1i));
    var var_2 = ~_wgslsmith_mult_i32(_wgslsmith_mod_i32((-2147483647i >> (u_input.a.x % 32u)) >> (max(u_input.a.x, 4294967295u) % 32u), 18068i), var_1.a.x);
    let var_3 = abs(abs(u_input.a.xz));
    var_1 = Struct_2(vec2<i32>(var_1.a.x, var_1.b), 1i);
    let x = u_input.a;
    s_output = StorageBuffer(max(~22873u, ~func_3().x), max(vec3<u32>(_wgslsmith_add_u32(firstTrailingBit(var_3.x), firstLeadingBit(u_input.a.x)), 24681u, reverseBits(func_3().x)), ~vec3<u32>(u_input.a.x, func_3().x, u_input.a.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(ceil(-1457f))), _wgslsmith_f_op_f32(min(var_0.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(var_0.x)), _wgslsmith_f_op_f32(f32(-1f) * -1404f))))))));
}

