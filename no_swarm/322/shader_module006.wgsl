struct Struct_1 {
    a: vec4<i32>,
    b: vec3<bool>,
    c: vec4<bool>,
    d: vec4<i32>,
    e: f32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec2<u32>,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec4<i32>, arg_1: vec2<f32>) -> vec3<i32> {
    return vec3<i32>(-_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(arg_0 >> (vec4<u32>(11943u, 0u, u_input.c.x, u_input.e) % vec4<u32>(32u)), arg_0), arg_0), i32(-1i) * -2147483647i, 2734i);
}

fn func_2() -> vec4<u32> {
    var var_0 = Struct_2(vec3<i32>(_wgslsmith_mult_i32(16044i, 5447i), -24340i, _wgslsmith_sub_i32(u_input.a.x, ~u_input.a.x) << (u_input.e % 32u)), -_wgslsmith_sub_vec3_i32(vec3<i32>(~2147483647i, select(-29089i, 0i, false), ~(-10463i)), max(vec3<i32>(u_input.a.x, -21625i, 565i), _wgslsmith_mult_vec3_i32(vec3<i32>(59089i, 2147483647i, u_input.a.x), vec3<i32>(u_input.a.x, -2147483647i, u_input.a.x)))));
    let var_1 = Struct_2(vec3<i32>(-1422i, _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(-22706i, u_input.a.x, u_input.a.x, -20592i), -vec4<i32>(u_input.a.x, u_input.a.x, var_0.a.x, u_input.a.x)), _wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(var_0.a.x, u_input.a.x, 47250i, 2147483647i), vec4<i32>(0i, -12521i, -26970i, var_0.a.x)), firstTrailingBit(vec4<i32>(-1i, 24550i, u_input.a.x, u_input.a.x)))), var_0.b.x), _wgslsmith_clamp_vec3_i32(func_3(vec4<i32>(var_0.a.x, var_0.a.x, 11552i, var_0.b.x) | (vec4<i32>(2147483647i, var_0.a.x, 2147483647i, 1i) ^ vec4<i32>(var_0.a.x, var_0.b.x, u_input.a.x, 1i)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-957f, 286f))), vec3<i32>(max(-16634i, u_input.a.x), u_input.a.x, ~var_0.a.x) >> (_wgslsmith_clamp_vec3_u32(u_input.b, vec3<u32>(27425u, u_input.c.x, 2714u), u_input.b) % vec3<u32>(32u)), vec3<i32>(67017i, var_0.b.x, firstTrailingBit(var_0.b.x))));
    var_0 = Struct_2(~(_wgslsmith_mult_vec3_i32(abs(var_0.b), var_1.b) | _wgslsmith_mult_vec3_i32(-vec3<i32>(u_input.a.x, var_0.a.x, var_0.a.x), max(var_1.a, var_0.a))), var_0.b);
    var var_2 = _wgslsmith_sub_vec3_u32(u_input.b, ~min(u_input.d.wyy, reverseBits(vec3<u32>(u_input.e, 0u, u_input.c.x)))) | ~u_input.b;
    let var_3 = ~min(~vec2<i32>(var_1.a.x, var_1.a.x), ~(-_wgslsmith_sub_vec2_i32(vec2<i32>(1i, var_0.b.x), vec2<i32>(var_0.a.x, -1i))));
    return abs(u_input.d) ^ ~vec4<u32>(reverseBits(0u), var_2.x | firstTrailingBit(55732u), min(var_2.x, u_input.e) & (var_2.x ^ var_2.x), 9281u);
}

fn func_1(arg_0: bool) -> vec2<i32> {
    let var_0 = _wgslsmith_mult_i32(u_input.a.x, -1i);
    let var_1 = ~_wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(func_2(), u_input.d), u_input.d);
    var var_2 = u_input.d.x;
    let var_3 = 726f;
    let var_4 = Struct_1(vec4<i32>(u_input.a.x, u_input.a.x, _wgslsmith_add_i32(-1i, var_0), ~2147483647i), select(vec3<bool>(arg_0, false, any(!vec3<bool>(false, false, arg_0))), select(!(!vec3<bool>(arg_0, false, false)), vec3<bool>(any(vec4<bool>(true, arg_0, arg_0, true)), arg_0, true), !select(vec3<bool>(arg_0, true, true), vec3<bool>(arg_0, arg_0, false), vec3<bool>(arg_0, arg_0, true))), select(vec3<bool>(true, all(vec4<bool>(false, arg_0, arg_0, true)), true), !(!vec3<bool>(true, arg_0, true)), false)), select(select(select(!vec4<bool>(true, true, arg_0, true), vec4<bool>(arg_0, arg_0, arg_0, true), vec4<bool>(arg_0, false, false, false)), vec4<bool>(true, arg_0, 8740i == u_input.a.x, false), vec4<bool>(all(vec3<bool>(false, true, arg_0)), true, true, arg_0)), vec4<bool>(arg_0, false, arg_0, arg_0), false), vec4<i32>(func_3(vec4<i32>(1i, 0i, u_input.a.x, u_input.a.x), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_3, -931f), vec2<f32>(var_3, 258f)))).x, 1i, -6012i, 9629i) << (abs(firstTrailingBit(vec4<u32>(u_input.d.x, var_1.x, var_1.x, var_1.x))) % vec4<u32>(32u)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_3)) + _wgslsmith_f_op_f32(max(-470f, 269f)))), _wgslsmith_div_f32(730f, var_3)));
    return _wgslsmith_clamp_vec2_i32(~_wgslsmith_div_vec2_i32(vec2<i32>(u_input.a.x, 2147483647i), vec2<i32>(max(2147483647i, var_0), -2147483647i ^ u_input.a.x)), select(vec2<i32>(-1i) * -vec2<i32>(13772i, 0i), vec2<i32>(var_0, u_input.a.x), all(!var_4.c.wxw)), max(firstLeadingBit(~u_input.a << (_wgslsmith_mod_vec2_u32(vec2<u32>(var_1.x, 4294967295u), vec2<u32>(var_1.x, u_input.e)) % vec2<u32>(32u))), _wgslsmith_sub_vec2_i32(vec2<i32>(abs(-20729i), var_0), -(vec2<i32>(2147483647i, -16146i) << (vec2<u32>(0u, u_input.c.x) % vec2<u32>(32u))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(true);
    var_0 = u_input.a;
    var var_1 = Struct_2(_wgslsmith_mult_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(var_0.x, 2147483647i, u_input.a.x) ^ abs(vec3<i32>(-1i, -15041i, var_0.x)), vec3<i32>(-6127i, 1i, ~u_input.a.x)), vec3<i32>(-min(u_input.a.x, -32461i), -20197i, firstLeadingBit(abs(var_0.x)))), ~vec3<i32>(6827i, _wgslsmith_add_i32(~var_0.x, _wgslsmith_div_i32(u_input.a.x, var_0.x)), var_0.x));
    var var_2 = u_input.d;
    let var_3 = Struct_2(~abs(var_1.b), var_1.a << (min(vec3<u32>(var_2.x, u_input.e, 4294967295u), ~countOneBits(u_input.d.xxw)) % vec3<u32>(32u)));
    var var_4 = vec3<bool>(all(vec4<bool>(-var_1.b.x == _wgslsmith_dot_vec4_i32(vec4<i32>(var_3.b.x, -49895i, 16833i, 2147483647i), vec4<i32>(u_input.a.x, -1i, 2147483647i, u_input.a.x)), true, any(vec4<bool>(true, true, true, false)), true)), true, true);
    let var_5 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(2002f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + 1140f)) - 3193f)), 406f);
    var_1 = Struct_2(vec3<i32>(_wgslsmith_add_i32(u_input.a.x << (abs(u_input.b.x) % 32u), _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a.x, -1i, var_1.b.x, var_3.a.x), vec4<i32>(var_0.x, -6039i, var_0.x, var_1.b.x)), firstTrailingBit(vec4<i32>(u_input.a.x, var_1.a.x, -2147483647i, 3606i)))), 0i, u_input.a.x), reverseBits(~vec3<i32>(-var_1.b.x, ~var_3.a.x, i32(-1i) * -2147483647i)));
    var_4 = select(vec3<bool>(false, !(true | var_4.x), false), !vec3<bool>(!all(vec3<bool>(var_4.x, var_4.x, false)), any(select(vec3<bool>(var_4.x, var_4.x, var_4.x), vec3<bool>(true, var_4.x, var_4.x), vec3<bool>(var_4.x, false, true))), !var_4.x), vec3<bool>(var_4.x, false & (_wgslsmith_f_op_f32(-var_5) >= _wgslsmith_f_op_f32(-var_5)), all(vec2<bool>(select(var_4.x, true, var_4.x), var_4.x))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(firstLeadingBit(var_0.x), _wgslsmith_sub_i32(_wgslsmith_add_i32(func_3(vec4<i32>(2147483647i, 5375i, var_0.x, 0i), vec2<f32>(var_5, var_5)).x, ~var_1.b.x), _wgslsmith_clamp_i32(-2401i, 2147483647i, var_1.a.x)), countOneBits(_wgslsmith_clamp_i32(var_3.b.x, -1i, var_1.a.x) ^ var_1.b.x)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-var_5), var_5), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_5), _wgslsmith_f_op_f32(477f - 756f))), select(var_4.yy, var_4.xz, false))));
}

