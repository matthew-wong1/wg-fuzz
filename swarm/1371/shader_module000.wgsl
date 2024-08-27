struct Struct_1 {
    a: u32,
    b: vec4<f32>,
    c: vec3<f32>,
    d: vec2<u32>,
    e: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
    d: vec3<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
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

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3() -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1218f, -316f, -1000f)))))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -710f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -772f))), _wgslsmith_f_op_f32(trunc(-548f)))));
    global0 = u_input.b.zy | u_input.b.xx;
    global0 = vec2<i32>(-1i) * -vec2<i32>(-_wgslsmith_mod_i32(1i, 2147483647i), firstLeadingBit(_wgslsmith_mult_i32(u_input.a, global0.x)));
    var var_1 = firstLeadingBit(_wgslsmith_sub_u32(u_input.e | ~1u, 0u));
    var var_2 = Struct_1(u_input.c | reverseBits(0u), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1968f, -661f, var_0.x, var_0.x))) + vec4<f32>(1629f, var_0.x, 1014f, var_0.x)) + _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, 1638f, 1420f, var_0.x) - vec4<f32>(var_0.x, 1245f, var_0.x, 1722f))))))), var_0, ~(~_wgslsmith_div_vec2_u32(u_input.d.yx, u_input.d.zx)) | vec2<u32>(firstLeadingBit(u_input.d.x) >> (0u % 32u), select(~57190u, abs(u_input.d.x), true)), firstLeadingBit(~(24962u >> ((u_input.c | u_input.d.x) % 32u))));
    return select(!(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true)), vec4<bool>(true, true, true, true))), vec4<bool>(true, true, countOneBits(4294967295u) < _wgslsmith_clamp_u32(1u, var_2.d.x, ~0u), true), vec4<bool>(true, !(var_0.x > var_2.c.x), true, u_input.c >= countOneBits(firstTrailingBit(var_2.e))));
}

fn func_2(arg_0: Struct_1, arg_1: f32, arg_2: bool) -> vec2<i32> {
    var var_0 = !select(select(select(!vec4<bool>(true, arg_2, arg_2, arg_2), vec4<bool>(true, false, true, arg_2), select(vec4<bool>(false, true, true, false), vec4<bool>(true, arg_2, false, false), vec4<bool>(true, true, arg_2, arg_2))), func_3(), arg_2), vec4<bool>(false, arg_2, func_3().x, 1f > arg_0.c.x), true);
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(-473f, arg_1), _wgslsmith_f_op_f32(ceil(arg_0.c.x))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.c.yy) + _wgslsmith_f_op_vec2_f32(arg_0.c.yy * arg_0.b.zx))))));
    global0 = vec2<i32>(~select(2147483647i, u_input.b.x >> (arg_0.a % 32u), !arg_2) << ((67701u & (max(u_input.e, arg_0.a) & _wgslsmith_add_u32(arg_0.e, 26629u))) % 32u), select(-1i, reverseBits(abs(global0.x)), true == !func_3().x));
    let var_2 = i32(-1i) * -1i;
    var var_3 = Struct_1(_wgslsmith_div_u32(_wgslsmith_mod_u32(abs(0u << (1u % 32u)), u_input.c), arg_0.e), arg_0.b, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(vec3<f32>(var_1.x, 110f, -428f), arg_0.c))) - _wgslsmith_f_op_vec3_f32(arg_0.c * _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, var_1.x, 704f)))), _wgslsmith_f_op_vec3_f32(arg_0.c - _wgslsmith_f_op_vec3_f32(arg_0.c + vec3<f32>(1302f, arg_0.b.x, arg_0.b.x))), false & (u_input.c <= u_input.d.x))), u_input.d.yz, 20586u);
    return -_wgslsmith_add_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(firstLeadingBit(0i), global0.x << (var_3.d.x % 32u)), (i32(-1i) * -629i) & _wgslsmith_dot_vec4_i32(vec4<i32>(-19036i, u_input.b.x, u_input.a, var_2), vec4<i32>(0i, global0.x, u_input.a, var_2))), vec2<i32>(34183i, var_2) & u_input.b.xz);
}

fn func_1() -> f32 {
    global0 = _wgslsmith_div_vec2_i32(vec2<i32>(-27408i, u_input.a) ^ vec2<i32>(u_input.b.x, countOneBits(firstTrailingBit(global0.x))), vec2<i32>(global0.x, -15314i) >> (vec2<u32>(4294967295u, ~27667u ^ u_input.e) % vec2<u32>(32u)));
    let var_0 = firstLeadingBit(0u);
    global0 = min(~(-min(vec2<i32>(global0.x, -1i), vec2<i32>(global0.x, -2933i))), -func_2(Struct_1(1u, vec4<f32>(-322f, -2249f, 333f, 1411f), vec3<f32>(445f, -1000f, -1735f), u_input.d.zx, 15453u), _wgslsmith_f_op_f32(593f + -294f), true)) >> (vec2<u32>(abs(_wgslsmith_mod_u32(~var_0, 36759u)), abs(_wgslsmith_dot_vec3_u32(abs(vec3<u32>(u_input.e, u_input.d.x, u_input.d.x)), vec3<u32>(var_0, 4294967295u, u_input.d.x)))) % vec2<u32>(32u));
    var var_1 = countOneBits(vec2<u32>(u_input.e, 27653u));
    var var_2 = any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, all(vec3<bool>(true, false, true)), false), vec4<bool>(true, true, true, true), true), vec4<bool>(true, true, true, true)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1367f, -1000f, true)) - -614f)));
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: vec3<u32>, arg_3: vec2<u32>) -> StorageBuffer {
    let var_0 = _wgslsmith_f_op_f32(532f + 851f);
    var var_1 = select(true, false, any(func_3()));
    let var_2 = -countOneBits(_wgslsmith_clamp_i32(global0.x, -5662i, ~firstTrailingBit(-2578i)));
    let var_3 = var_2;
    let var_4 = vec3<bool>(all(func_3().wxw), any(vec3<bool>(true, true, true)) && true, all(select(!select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), true), vec3<bool>(true, true, true), all(vec4<bool>(true, true, true, true)))));
    return StorageBuffer(vec3<u32>(_wgslsmith_div_u32(_wgslsmith_mod_u32(4294967295u, firstTrailingBit(arg_2.x)), _wgslsmith_mult_u32(17392u, ~arg_3.x)), 1u, ~_wgslsmith_mult_u32(~arg_2.x, max(arg_2.x, u_input.d.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(u_input.e) & u_input.d.x;
    let var_1 = Struct_1(_wgslsmith_sub_u32(~_wgslsmith_clamp_u32(39682u, u_input.c, 70953u), ~_wgslsmith_div_u32(u_input.e, u_input.e)) ^ ~_wgslsmith_sub_u32(u_input.e, _wgslsmith_add_u32(u_input.c, 4294967295u)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1238f, 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -810f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -932f), _wgslsmith_f_op_f32(755f - 437f))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1037f), _wgslsmith_f_op_f32(-1000f - -2478f), _wgslsmith_f_op_f32(-1547f * 601f), -1020f) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-566f, 556f, 692f, -1205f)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1123f, 1775f, 366f, -158f)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(-171f - -675f), _wgslsmith_f_op_f32(-634f + -429f), _wgslsmith_f_op_f32(-1000f + -580f))))), _wgslsmith_sub_vec2_u32(_wgslsmith_mod_vec2_u32(_wgslsmith_mod_vec2_u32(u_input.d.yz, u_input.d.yy), u_input.d.xz) << (~abs(vec2<u32>(u_input.d.x, u_input.d.x)) % vec2<u32>(32u)), ~u_input.d.xx), 9679u);
    var var_2 = ~u_input.a;
    var var_3 = firstTrailingBit(vec4<u32>(~_wgslsmith_mod_u32(~u_input.d.x, ~var_1.e), var_1.d.x, 1u, var_1.a));
    let var_4 = u_input.e;
    let var_5 = reverseBits(_wgslsmith_mod_vec3_i32(u_input.b, vec3<i32>(global0.x, u_input.b.x, (u_input.a | u_input.b.x) >> (var_4 % 32u))));
    let var_6 = var_1;
    var_2 = u_input.a;
    var var_7 = var_6;
    let x = u_input.a;
    s_output = func_4(_wgslsmith_f_op_f32(func_1()), var_1, ~(var_3.xxx >> (var_3.xwz % vec3<u32>(32u))), vec2<u32>(~(~_wgslsmith_dot_vec2_u32(u_input.d.zy, var_3.yw)), _wgslsmith_sub_u32(max(1u, max(0u, u_input.d.x)), 31371u)));
}

