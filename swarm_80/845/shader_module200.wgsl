struct Struct_1 {
    a: vec3<i32>,
    b: vec2<f32>,
}

struct Struct_2 {
    a: i32,
    b: f32,
    c: bool,
    d: Struct_1,
    e: u32,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec2<f32>,
}

struct Struct_4 {
    a: vec4<f32>,
    b: Struct_1,
    c: Struct_3,
}

struct Struct_5 {
    a: vec2<f32>,
    b: vec3<bool>,
    c: Struct_4,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec2<i32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: f32,
    d: f32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_2(arg_0: u32, arg_1: vec2<bool>, arg_2: vec3<f32>, arg_3: Struct_2) -> u32 {
    let var_0 = !(!(!(!vec2<bool>(true, arg_1.x))));
    let var_1 = vec2<u32>(u_input.d, ~arg_3.e);
    var var_2 = Struct_4(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(979f, arg_2.x, _wgslsmith_f_op_f32(max(190f, arg_2.x)), _wgslsmith_f_op_f32(min(320f, arg_3.b))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.x, arg_2.x, -1155f, arg_3.b) + vec4<f32>(arg_2.x, -987f, 706f, arg_3.d.b.x)) * _wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_2.x, arg_2.x, -539f, -1047f), vec4<f32>(arg_2.x, 715f, 1346f, arg_2.x)))), vec4<bool>(true, select(var_0.x, arg_1.x, arg_1.x), select(false, true, true), false))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1086f, _wgslsmith_f_op_f32(arg_3.d.b.x - arg_3.d.b.x), _wgslsmith_f_op_f32(sign(arg_2.x)), _wgslsmith_f_op_f32(-arg_3.b))))), Struct_1(u_input.a.yzx, _wgslsmith_f_op_vec2_f32(ceil(arg_3.d.b))), Struct_3(vec4<bool>(any(vec2<bool>(false, arg_3.c)), arg_1.x, !arg_1.x, var_0.x), vec2<f32>(-4120f, _wgslsmith_div_f32(-184f, arg_2.x))));
    var var_3 = var_2.c.a.yww;
    var_3 = var_2.c.a.yzz;
    return ~reverseBits(arg_0);
}

fn func_3(arg_0: u32, arg_1: u32, arg_2: Struct_5, arg_3: Struct_1) -> bool {
    var var_0 = 0i << (~(~(~arg_1)) % 32u);
    var_0 = -reverseBits(-1i);
    var_0 = 2147483647i;
    let var_1 = Struct_2(u_input.c.x, arg_2.a.x, arg_2.d.a.x, arg_2.c.b, _wgslsmith_div_u32(_wgslsmith_sub_u32(~(u_input.d >> (20369u % 32u)), min(_wgslsmith_mult_u32(40905u, arg_0), func_2(arg_0, arg_2.b.zx, arg_2.c.a.zyy, Struct_2(u_input.c.x, 305f, true, Struct_1(arg_3.a, vec2<f32>(arg_2.d.b.x, -1000f)), u_input.d)))), ~arg_1));
    var_0 = ~(-70261i);
    return !(_wgslsmith_dot_vec2_i32(~arg_3.a.zx | firstTrailingBit(vec2<i32>(1i, arg_3.a.x)), vec2<i32>(i32(-1i) * -1i, 0i)) >= ~arg_3.a.x);
}

fn func_1(arg_0: vec3<bool>, arg_1: u32, arg_2: f32, arg_3: vec2<bool>) -> bool {
    let var_0 = firstTrailingBit(_wgslsmith_add_vec2_u32(vec2<u32>(72179u, min(~0u, _wgslsmith_div_u32(4221u, 29714u))), vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, arg_1, 0u, u_input.d), vec4<u32>(4294967295u, u_input.e, arg_1, u_input.d)), ~func_2(u_input.d, arg_3, vec3<f32>(arg_2, 2372f, arg_2), Struct_2(2147483647i, -844f, arg_0.x, Struct_1(u_input.a.wzx, vec2<f32>(-808f, 326f)), arg_1)))));
    let var_1 = 55945u;
    var var_2 = func_3(1u, _wgslsmith_dot_vec4_u32(~vec4<u32>(var_1, var_1, 0u, u_input.d) >> (~vec4<u32>(1u, 61992u, var_0.x, var_0.x) % vec4<u32>(32u)), ~(~(vec4<u32>(var_0.x, arg_1, 15864u, 6660u) | vec4<u32>(var_0.x, var_1, 0u, 1u)))), Struct_5(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-158f, -2368f) + vec2<f32>(-1098f, arg_2)), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(774f, 1588f)))))), !select(arg_0, vec3<bool>(arg_3.x, false, true), !vec3<bool>(arg_3.x, arg_3.x, false)), Struct_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2, 1000f, 1000f, -1000f) - vec4<f32>(518f, arg_2, 313f, -333f))), Struct_1(_wgslsmith_sub_vec3_i32(u_input.a.wzz, vec3<i32>(u_input.b, u_input.b, u_input.b)), vec2<f32>(-493f, arg_2)), Struct_3(select(vec4<bool>(arg_0.x, arg_3.x, false, false), vec4<bool>(true, arg_0.x, arg_3.x, false), arg_0.x), vec2<f32>(arg_2, 244f))), Struct_3(select(select(vec4<bool>(false, true, false, false), vec4<bool>(true, arg_3.x, arg_0.x, arg_0.x), arg_3.x), !vec4<bool>(arg_0.x, arg_0.x, false, false), vec4<bool>(arg_3.x, arg_0.x, arg_3.x, arg_3.x)), vec2<f32>(-799f, arg_2))), Struct_1(_wgslsmith_mult_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(u_input.a.x, u_input.b), _wgslsmith_sub_i32(2147483647i, 0i), 1i), u_input.a.xyy & _wgslsmith_add_vec3_i32(u_input.a.xzy, vec3<i32>(u_input.b, u_input.b, u_input.c.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1719f, arg_2), vec2<f32>(arg_2, arg_2), arg_0.xx))))));
    var_2 = true || !(_wgslsmith_f_op_f32(f32(-1f) * -1000f) >= _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_2))));
    var var_3 = _wgslsmith_div_vec2_i32(vec2<i32>(-1i) * -select(-u_input.a.zw, u_input.c, !arg_3.x), u_input.c);
    return false && any(select(!(!vec4<bool>(false, true, true, arg_0.x)), select(select(vec4<bool>(true, arg_3.x, false, false), vec4<bool>(arg_3.x, arg_3.x, false, arg_3.x), arg_3.x), !vec4<bool>(true, arg_3.x, false, arg_0.x), vec4<bool>(true, arg_3.x, arg_0.x, true)), true));
}

fn func_4(arg_0: f32, arg_1: f32, arg_2: i32, arg_3: vec4<bool>) -> Struct_1 {
    var var_0 = _wgslsmith_clamp_i32(countOneBits(abs(0i)), _wgslsmith_dot_vec3_i32(vec3<i32>((-1i ^ u_input.c.x) << (~u_input.d % 32u), -2147483647i >> ((u_input.d | 1u) % 32u), ~(-u_input.c.x)), countOneBits(-(u_input.a.yxz >> (vec3<u32>(1u, u_input.d, u_input.d) % vec3<u32>(32u))))), i32(-1i) * -abs(-1i));
    var var_1 = Struct_1(u_input.a.xwy, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(558f, arg_0) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_1, arg_0), vec2<f32>(-1000f, 704f), false))) - vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -253f), 399f)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, arg_1)))), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-310f, 1496f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, arg_1))))))));
    var_1 = Struct_1(max(vec3<i32>(var_1.a.x, firstLeadingBit(1i), arg_2), max(vec3<i32>(u_input.a.x, -1i, 1i), reverseBits(vec3<i32>(1i, 0i, 2147483647i))) | -vec3<i32>(2147483647i, -1i, var_1.a.x)), _wgslsmith_f_op_vec2_f32(var_1.b * var_1.b));
    var_0 = reverseBits(abs(-arg_2));
    var_1 = Struct_1(vec3<i32>(-(~(-2147483647i)), var_1.a.x, (u_input.c.x | -8335i) << (4294967295u % 32u)), var_1.b);
    return Struct_1(var_1.a, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-486f, _wgslsmith_f_op_f32(-arg_0)))))));
}

fn func_5(arg_0: bool, arg_1: f32, arg_2: Struct_1) -> Struct_2 {
    let var_0 = vec3<i32>(arg_2.a.x, u_input.b, 2147483647i);
    var var_1 = arg_0;
    let var_2 = select(vec3<u32>(_wgslsmith_sub_u32(u_input.d, 0u), _wgslsmith_sub_u32(~u_input.e, u_input.d) ^ ~u_input.e, ~(~u_input.d)), ~(~vec3<u32>(u_input.d, u_input.e, u_input.e)) >> (vec3<u32>(_wgslsmith_mod_u32(select(8519u, u_input.d, arg_0), 4294967295u), u_input.d, u_input.e ^ ~u_input.e) % vec3<u32>(32u)), vec3<bool>(arg_0, false & arg_0, true));
    return Struct_2(-abs(var_0.x) << (u_input.e % 32u), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-873f, -124f)) * arg_2.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1))), arg_0)), arg_0, Struct_1(vec3<i32>(_wgslsmith_add_i32(26064i, 0i), -_wgslsmith_div_i32(33304i, var_0.x), u_input.b), vec2<f32>(383f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_2.b.x))))), 51847u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(true, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -210f))), func_4(_wgslsmith_f_op_f32(ceil(-1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1117f, 563f)) - -912f)), u_input.c.x, vec4<bool>(false, true, true || func_1(vec3<bool>(false, false, false), u_input.d, 926f, vec2<bool>(true, true)), false)));
    var var_1 = any(!(!select(vec2<bool>(false, var_0.c), vec2<bool>(true, true), false)));
    let x = u_input.a;
    s_output = StorageBuffer(max(-_wgslsmith_clamp_vec2_i32(firstTrailingBit(vec2<i32>(u_input.a.x, -15983i)), u_input.a.zz & u_input.c, select(vec2<i32>(9703i, 0i), vec2<i32>(-9384i, 0i), false)), _wgslsmith_mult_vec2_i32(-u_input.a.xz << (max(vec2<u32>(var_0.e, 4063u), vec2<u32>(36110u, 1u)) % vec2<u32>(32u)), u_input.c)), u_input.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(func_5(var_0.c, 1000f, var_0.d).d.b.x, _wgslsmith_f_op_f32(var_0.b - var_0.b))), _wgslsmith_f_op_f32(floor(845f))))), _wgslsmith_f_op_f32(min(1726f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -218f)))), countOneBits(~vec2<u32>(~u_input.e, ~var_0.e)));
}

