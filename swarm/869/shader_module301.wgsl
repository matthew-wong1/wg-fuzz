struct Struct_1 {
    a: vec2<u32>,
    b: bool,
    c: vec4<bool>,
    d: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
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

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: bool, arg_1: f32, arg_2: vec3<bool>) -> vec4<i32> {
    let var_0 = Struct_1(firstTrailingBit(~(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.c, 0u), vec2<u32>(u_input.c, u_input.c)) << (vec2<u32>(52030u, u_input.c) % vec2<u32>(32u)))), true, vec4<bool>(true, arg_2.x, true, 2147483647i <= u_input.b), _wgslsmith_div_f32(arg_1, _wgslsmith_f_op_f32(-arg_1)));
    let var_1 = var_0;
    let var_2 = vec2<f32>(-501f, _wgslsmith_div_f32(844f, arg_1));
    var var_3 = Struct_1(vec2<u32>(0u, var_0.a.x), true, !var_0.c, _wgslsmith_div_f32(-577f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.d)), var_1.d, arg_0))));
    var_3 = Struct_1(~vec2<u32>(_wgslsmith_add_u32(34447u & var_0.a.x, var_0.a.x), _wgslsmith_dot_vec4_u32(vec4<u32>(9805u, var_3.a.x, var_1.a.x, 4294967295u) ^ vec4<u32>(u_input.c, u_input.c, var_0.a.x, 0u), min(vec4<u32>(24697u, 1156u, u_input.c, var_0.a.x), vec4<u32>(11353u, 0u, 0u, 0u)))), !arg_2.x, select(!select(var_1.c, !var_3.c, any(vec2<bool>(false, arg_2.x))), var_3.c, select(vec4<bool>(false, false, arg_0, false), !(!var_1.c), !vec4<bool>(arg_0, false, var_0.b, arg_0))), arg_1);
    return vec4<i32>(u_input.a, 32640i, ~u_input.b, -2147483647i);
}

fn func_2() -> Struct_1 {
    let var_0 = any(vec2<bool>(false, u_input.c >= ~(u_input.c | u_input.c)));
    var var_1 = -(_wgslsmith_add_vec4_i32(reverseBits(func_3(true, -808f, vec3<bool>(true, var_0, var_0))), vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, u_input.a, u_input.a), vec3<i32>(2147483647i, 20967i, -20872i)), 19274i, u_input.b, firstTrailingBit(u_input.b))) | -vec4<i32>(23650i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, u_input.a, u_input.a, 37818i), vec4<i32>(0i, u_input.b, -2147483647i, u_input.a)), u_input.a, _wgslsmith_mult_i32(u_input.b, -17254i)));
    let var_2 = firstTrailingBit(~_wgslsmith_div_u32(reverseBits(u_input.c), _wgslsmith_sub_u32(u_input.c, 4294967295u))) | 23712u;
    var var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-828f))) - _wgslsmith_div_f32(-1863f, 1060f)), 840f));
    let var_4 = Struct_1(vec2<u32>(~firstLeadingBit(u_input.c << (1u % 32u)), _wgslsmith_sub_u32(~var_2, min(_wgslsmith_add_u32(74855u, 51571u), 1u))), true, vec4<bool>(var_0, true, var_0, true), _wgslsmith_f_op_f32(-var_3.x));
    return Struct_1(vec2<u32>(1u, _wgslsmith_clamp_u32(1u, min(abs(u_input.c), _wgslsmith_mult_u32(1u, 1u)), 0u)), !(~_wgslsmith_sub_u32(var_2, var_2) < var_2), vec4<bool>(all(!var_4.c.yw), !any(select(vec2<bool>(true, var_4.c.x), vec2<bool>(false, false), var_0)), var_4.b, !select(true, true, any(vec2<bool>(false, var_0)))), 510f);
}

fn func_4(arg_0: vec4<u32>, arg_1: f32, arg_2: Struct_1, arg_3: u32) -> vec4<f32> {
    var var_0 = !vec4<bool>(any(!arg_2.c), false, select(all(select(vec3<bool>(arg_2.c.x, false, false), vec3<bool>(arg_2.b, true, arg_2.b), true)), !arg_2.c.x, true), true);
    var_0 = arg_2.c;
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_2.d, arg_2.d, arg_1, 1498f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(275f, arg_1, arg_2.d, -597f))) - vec4<f32>(278f, -1921f, -2447f, -1195f))));
}

fn func_1(arg_0: vec4<bool>) -> i32 {
    var var_0 = u_input.a;
    var_0 = ~(-firstTrailingBit(-3632i));
    var var_1 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_4(vec4<u32>(34524u, 4294967295u, u_input.c, 0u) >> (vec4<u32>(u_input.c, 31916u, u_input.c, u_input.c) % vec4<u32>(32u)), -1132f, func_2(), firstLeadingBit(u_input.c))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f))));
    let var_2 = true;
    var var_3 = Struct_1(firstLeadingBit(select(~vec2<u32>(0u, 7928u), _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.c, 22793u) | vec2<u32>(u_input.c, u_input.c), ~vec2<u32>(u_input.c, u_input.c)), arg_0.wy)), func_2().b, vec4<bool>(true, arg_0.x, var_1.x != -1000f, true), -1041f);
    return (~firstTrailingBit(-84412i) | _wgslsmith_dot_vec2_i32(~(-vec2<i32>(2147483647i, u_input.b)), _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(-37365i, 7043i)) | select(vec2<i32>(-47740i, -2147483647i), vec2<i32>(15826i, u_input.a), vec2<bool>(arg_0.x, var_2)))) ^ -2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<i32>((u_input.b << (~(~19629u) % 32u)) & (u_input.a & ~(~u_input.a)), 2147483647i, min(_wgslsmith_sub_i32(-u_input.b, func_1(vec4<bool>(true, true, true, true))), ~_wgslsmith_mult_i32(-u_input.a, u_input.b << (u_input.c % 32u))));
    var var_1 = Struct_1(_wgslsmith_mult_vec2_u32(~vec2<u32>(u_input.c, u_input.c), _wgslsmith_mult_vec2_u32(~vec2<u32>(u_input.c, u_input.c), min(~vec2<u32>(u_input.c, u_input.c), vec2<u32>(1u, 1u)))), true, vec4<bool>(true, true, true, func_3(u_input.c >= 67835u, 1285f, vec3<bool>(true, true, true)).x > u_input.b), _wgslsmith_f_op_f32(sign(-343f)));
    let var_2 = Struct_1(~var_1.a, var_1.b, select(var_1.c, var_1.c, !var_1.c), 1440f);
    var var_3 = var_2;
    var_3 = func_2();
    var_3 = var_2;
    var var_4 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(~30833u, ~var_4.a.x), _wgslsmith_div_vec2_u32(~var_3.a, vec2<u32>(52815u, 95384u))), ~_wgslsmith_sub_u32(countOneBits(var_4.a.x), var_4.a.x ^ var_1.a.x)));
}

