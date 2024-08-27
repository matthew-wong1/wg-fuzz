struct Struct_1 {
    a: vec2<i32>,
    b: vec2<f32>,
    c: u32,
}

struct Struct_2 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_2) -> i32 {
    let var_0 = true;
    let var_1 = arg_0;
    var var_2 = _wgslsmith_div_vec4_i32(-reverseBits(select(_wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, 61858i, 31869i, arg_0.a), vec4<i32>(arg_0.a, arg_0.a, -1i, 20140i)), firstLeadingBit(vec4<i32>(var_1.a, arg_0.a, -17542i, 30764i)), vec4<bool>(true, true, true, true))), ~firstTrailingBit(vec4<i32>(~var_1.a, _wgslsmith_clamp_i32(arg_0.a, 1i, 16954i), _wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.a, var_1.a, var_1.a), vec3<i32>(2761i, arg_0.a, -3975i)), -1i)));
    var var_3 = abs(vec4<u32>(~(~(~54905u)), 1u, 68312u, 0u));
    var var_4 = Struct_2(min(-(i32(-1i) * -var_2.x), -30932i));
    return min(var_1.a ^ firstLeadingBit(0i), abs(~(~var_1.a)));
}

fn func_2() -> Struct_2 {
    return Struct_2(~((func_3(Struct_2(1i)) << (max(u_input.a, u_input.c.x) % 32u)) | max(1i, _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 2147483647i, -25640i), vec3<i32>(1i, -1615i, -2147483647i)))));
}

fn func_4(arg_0: Struct_2, arg_1: vec3<u32>, arg_2: i32) -> Struct_1 {
    return Struct_1(firstLeadingBit(reverseBits(vec2<i32>(arg_2, arg_2) ^ vec2<i32>(arg_0.a, arg_2))) ^ vec2<i32>(_wgslsmith_mult_i32(10503i, -1i), -abs(arg_2)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 1587f))), vec2<f32>(_wgslsmith_div_f32(613f, 332f), -369f)))), 9793u);
}

fn func_1(arg_0: vec3<i32>) -> f32 {
    let var_0 = Struct_2(arg_0.x);
    var var_1 = func_4(func_2(), abs(vec3<u32>(~62488u, max(u_input.b, 8140u) >> (4294967295u % 32u), 1u)), arg_0.x);
    var_1 = func_4(var_0, vec3<u32>(4294967295u, func_4(func_2(), vec3<u32>(~4294967295u, 94038u, u_input.a), var_1.a.x).c, u_input.c.x), 1i);
    var_1 = func_4(Struct_2(var_0.a), vec3<u32>(u_input.c.x, u_input.b, 0u), -64926i);
    var_1 = func_4(var_0, ~_wgslsmith_sub_vec3_u32(select(u_input.c & u_input.c, u_input.c | u_input.c, vec3<bool>(true, true, true)), u_input.c), max(_wgslsmith_dot_vec3_i32(vec3<i32>(-18812i, 0i, _wgslsmith_mult_i32(var_1.a.x, var_0.a)), -arg_0 | arg_0), var_1.a.x));
    return var_1.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~u_input.d.x;
    var_0 = 4294967295u;
    var_0 = _wgslsmith_add_u32(8562u, abs(u_input.d.x));
    let var_1 = Struct_1(firstLeadingBit(vec2<i32>(1i, _wgslsmith_dot_vec3_i32(vec3<i32>(10750i, 2147483647i, -29497i), vec3<i32>(28858i, 17500i, 0i)))) ^ vec2<i32>(2147483647i, ~(~2147483647i)), vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-575f, -253f)) + _wgslsmith_f_op_f32(f32(-1f) * -872f)), -1460f)), _wgslsmith_f_op_f32(-616f + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(1000f, -795f)), _wgslsmith_div_f32(256f, 143f), false)))), u_input.a);
    let var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_1(vec3<i32>(-1i, var_1.a.x, 14312i))), var_1.b.x)), var_1.b.x, -1396f));
    let var_3 = var_1;
    var var_4 = Struct_2(var_1.a.x);
    let var_5 = func_4(func_2(), _wgslsmith_mod_vec3_u32(~(countOneBits(u_input.c) & vec3<u32>(var_1.c, 0u, var_3.c)), u_input.c << (u_input.c % vec3<u32>(32u))), -func_4(func_2(), reverseBits(vec3<u32>(var_3.c, 38077u, 1u)), ~1i).a.x);
    var_4 = Struct_2(select(_wgslsmith_mod_i32(var_1.a.x, -1i), 20671i, select(true, 0i <= ~var_4.a, any(vec3<bool>(true, true, true)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(-1i) * -vec4<i32>(_wgslsmith_add_i32(var_1.a.x, var_1.a.x), -1i, 17814i << (var_3.c % 32u), reverseBits(1i)));
}

