struct Struct_1 {
    a: vec4<f32>,
    b: f32,
    c: u32,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: bool,
}

struct Struct_4 {
    a: vec4<f32>,
    b: Struct_1,
    c: i32,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -585f;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: f32, arg_1: u32, arg_2: bool, arg_3: u32) -> bool {
    global0 = arg_0;
    let var_0 = select(!(!arg_2), arg_2, true && arg_2);
    global0 = 2351f;
    let var_1 = (max(~_wgslsmith_clamp_vec3_i32(vec3<i32>(-2147483647i, u_input.b, u_input.b), vec3<i32>(57673i, -10281i, u_input.b), vec3<i32>(u_input.b, -2147483647i, u_input.b)), vec3<i32>(_wgslsmith_mod_i32(4561i, u_input.b), 1i, -u_input.b)) | vec3<i32>(firstTrailingBit(u_input.b), -u_input.b, u_input.b)) << (~vec3<u32>(~36142u, arg_3, 4294967295u) % vec3<u32>(32u));
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_0, arg_0, var_0))))), _wgslsmith_f_op_f32(select(arg_0, arg_0, var_0)))) + -1286f);
    return any(select(!vec4<bool>(false, -432f == arg_0, all(vec4<bool>(var_0, arg_2, true, arg_2)), all(vec3<bool>(false, arg_2, var_0))), !vec4<bool>(true && var_0, false, true, true), arg_2));
}

fn func_2(arg_0: Struct_3, arg_1: i32, arg_2: Struct_1, arg_3: bool) -> i32 {
    let var_0 = Struct_4(_wgslsmith_f_op_vec4_f32(arg_2.a + _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(arg_2.b + arg_2.a.x), 1998f, -1000f, _wgslsmith_f_op_f32(f32(-1f) * -1000f))))), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1135f, _wgslsmith_f_op_f32(-arg_0.a.x), -1296f, _wgslsmith_f_op_f32(-199f * arg_0.a.x))), arg_2.b, arg_2.c ^ ~(106540u << (u_input.e % 32u))), 1i << (arg_2.c % 32u), Struct_1(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_0.a.x, arg_2.b, arg_0.a.x, arg_0.a.x)))), vec4<f32>(arg_0.a.x, 508f, _wgslsmith_f_op_f32(-arg_2.a.x), arg_2.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.a.x - arg_2.a.x))), arg_2.c));
    var var_1 = arg_2;
    var var_2 = any(!vec4<bool>(select(true, arg_3, arg_0.b), true, var_0.c >= -2147483647i, func_3(var_1.b, var_0.b.c, false, var_0.d.c))) && arg_3;
    let var_3 = Struct_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(var_1.a))) - var_0.d.a), arg_2, _wgslsmith_dot_vec3_i32(~(-vec3<i32>(var_0.c, -1i, 17156i)) >> (abs(vec3<u32>(4294967295u, 0u, 0u) ^ vec3<u32>(0u, var_1.c, arg_2.c)) % vec3<u32>(32u)), -(-vec3<i32>(arg_1, u_input.b, 0i) << (~vec3<u32>(var_1.c, 0u, var_0.d.c) % vec3<u32>(32u)))), arg_2);
    var var_4 = ~(-33849i);
    return -(~2801i);
}

fn func_4(arg_0: vec4<i32>) -> vec4<bool> {
    global0 = -686f;
    let var_0 = u_input.c.x;
    return !vec4<bool>(true, false, !any(select(vec2<bool>(false, true), vec2<bool>(false, true), false)), true);
}

fn func_1(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: Struct_1) -> vec4<i32> {
    let var_0 = true;
    let var_1 = func_4(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b, -28714i, 34760i, func_2(Struct_3(vec2<f32>(arg_0.b, arg_0.a.x), true), 1i, Struct_1(arg_2.a, arg_2.a.x, 1u), any(vec3<bool>(false, var_0, var_0)))), ~(abs(vec4<i32>(30286i, arg_1.x, arg_1.x, -4510i)) >> (vec4<u32>(1u, arg_2.c, arg_2.c, arg_0.c) % vec4<u32>(32u)))));
    let var_2 = Struct_2(_wgslsmith_mult_vec3_i32(arg_1, vec3<i32>(arg_1.x, _wgslsmith_sub_i32(~11025i, -arg_1.x), ~min(0i, arg_1.x))));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2446f) + arg_2.b)))));
    let var_3 = arg_0.a.x;
    return _wgslsmith_sub_vec4_i32(vec4<i32>(-1i) * -select(firstLeadingBit(vec4<i32>(arg_1.x, -2499i, -2147483647i, -26327i)), vec4<i32>(-1i, arg_1.x, 6383i, u_input.b) >> (vec4<u32>(1u, arg_0.c, u_input.c.x, 21368u) % vec4<u32>(32u)), any(vec2<bool>(var_0, var_0))), ~_wgslsmith_mod_vec4_i32(vec4<i32>(8361i, var_2.a.x, u_input.b, 0i) ^ (vec4<i32>(-39213i, u_input.b, var_2.a.x, -28681i) << (vec4<u32>(86265u, arg_2.c, u_input.c.x, u_input.e) % vec4<u32>(32u))), max(max(vec4<i32>(var_2.a.x, arg_1.x, var_2.a.x, u_input.b), vec4<i32>(-9449i, var_2.a.x, 1i, u_input.b)), _wgslsmith_mult_vec4_i32(vec4<i32>(arg_1.x, var_2.a.x, 37708i, 2147483647i), vec4<i32>(-21887i, u_input.b, -2147483647i, u_input.b)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(-_wgslsmith_mod_vec4_i32(_wgslsmith_mult_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(-47157i, u_input.b, u_input.b, 2147483647i), vec4<i32>(u_input.b, u_input.b, -24788i, -1i)), func_1(Struct_1(vec4<f32>(985f, -1728f, 597f, -573f), -610f, 1063u), vec3<i32>(u_input.b, 45400i, 0i), Struct_1(vec4<f32>(-704f, -1224f, -741f, 933f), 128f, u_input.a))), ~select(vec4<i32>(u_input.b, u_input.b, 1i, u_input.b), vec4<i32>(u_input.b, -23324i, u_input.b, u_input.b), false)));
    let var_1 = Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1314f, 188f) * vec2<f32>(508f, 778f))))), true);
    var_0 = _wgslsmith_sub_vec4_i32(-vec4<i32>(31328i, func_1(Struct_1(vec4<f32>(638f, 2181f, 2179f, var_1.a.x), var_1.a.x, u_input.c.x), -vec3<i32>(var_0.x, 22053i, 11632i), Struct_1(vec4<f32>(263f, var_1.a.x, var_1.a.x, -309f), 1000f, u_input.c.x)).x, var_0.x, ~22633i ^ _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, u_input.b, 20972i, 10597i), vec4<i32>(var_0.x, u_input.b, -2147483647i, u_input.b))), vec4<i32>(-2147483647i, ~u_input.b, u_input.b, u_input.b));
    let var_2 = Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a.x, var_1.a.x, var_1.a.x, -1383f)) * vec4<f32>(1043f, -905f, var_1.a.x, var_1.a.x)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_1.a.x, var_1.a.x, var_1.a.x, 162f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_1.a.x, -171f, var_1.a.x, var_1.a.x))))) * vec4<f32>(var_1.a.x, _wgslsmith_f_op_f32(var_1.a.x - var_1.a.x), -1038f, _wgslsmith_f_op_f32(step(-1641f, -238f))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1565f * var_1.a.x), 171f)), _wgslsmith_clamp_u32(firstTrailingBit(_wgslsmith_mult_u32(6856u, u_input.c.x) << (0u % 32u)), ~select(~1u, _wgslsmith_div_u32(8394u, 11558u), true), u_input.d.x));
    let var_3 = Struct_1(var_2.a, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1090f))) * _wgslsmith_f_op_f32(sign(-215f))))), reverseBits(116573u));
    var var_4 = false;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec2_u32(~max(vec2<u32>(var_3.c, var_3.c), reverseBits(u_input.c)), u_input.d), 98022u, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a.x) + _wgslsmith_div_f32(var_3.b, 1185f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.b + 682f) * var_1.a.x) - _wgslsmith_f_op_f32(var_1.a.x + _wgslsmith_f_op_f32(-var_3.a.x)))));
}

