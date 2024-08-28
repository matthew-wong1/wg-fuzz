struct Struct_1 {
    a: bool,
    b: vec3<u32>,
    c: vec2<bool>,
    d: f32,
    e: vec4<bool>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: u32,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: f32, arg_1: vec2<u32>) -> f32 {
    let var_0 = _wgslsmith_dot_vec4_u32(select(reverseBits(vec4<u32>(4294967295u, arg_1.x, 1u, 4294967295u)) | ~vec4<u32>(8394u, arg_1.x, u_input.c, arg_1.x), vec4<u32>(abs(47219u), max(u_input.c, arg_1.x), 24996u, ~4294967295u), !any(vec3<bool>(false, true, true))) >> (~(~(~vec4<u32>(144414u, u_input.c, arg_1.x, 1u))) % vec4<u32>(32u)), select(abs(select(vec4<u32>(1u, 6943u, 29011u, arg_1.x), vec4<u32>(u_input.c, arg_1.x, u_input.c, 78557u), false)), select(max(vec4<u32>(u_input.c, u_input.c, 0u, 0u), vec4<u32>(4446u, 18881u, 53698u, u_input.c)), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.c, 35783u, 0u, 0u), vec4<u32>(4294967295u, 11128u, arg_1.x, u_input.c)), true), vec4<bool>(true, true, true, true)) ^ ~vec4<u32>(arg_1.x & u_input.c, ~u_input.c, ~u_input.c, u_input.c));
    let var_1 = _wgslsmith_mult_vec2_i32(u_input.d, _wgslsmith_sub_vec2_i32((vec2<i32>(-1i) * -u_input.d) >> (arg_1 % vec2<u32>(32u)), vec2<i32>(u_input.b.x, 7989i)));
    var var_2 = Struct_2(62871u, Struct_1(any(vec4<bool>(any(vec3<bool>(false, true, true)), true, any(vec3<bool>(false, true, false)), true)), ~abs(~vec3<u32>(27071u, 32645u, 4294967295u)), vec2<bool>(true, true), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_0))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(arg_0, arg_0)), _wgslsmith_f_op_f32(abs(830f)))), !select(vec4<bool>(false, true, false, false), select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, false), false), vec4<bool>(true, false, false, true))));
    var var_3 = Struct_2(var_2.b.b.x, var_2.b);
    let var_4 = Struct_2(_wgslsmith_clamp_u32(~_wgslsmith_sub_u32(firstLeadingBit(var_3.a), _wgslsmith_dot_vec3_u32(var_2.b.b, var_3.b.b)), var_3.b.b.x, ~4294967295u & (u_input.c & arg_1.x)), Struct_1(true, ~abs(abs(vec3<u32>(u_input.c, var_0, 55586u))), var_3.b.c, -179f, var_2.b.e));
    return _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_2.b.d)) * var_4.b.d)), 1f)));
}

fn func_2(arg_0: Struct_1) -> vec4<i32> {
    var var_0 = arg_0.d;
    var_0 = _wgslsmith_f_op_f32(func_3(-298f, arg_0.b.zy));
    let var_1 = u_input.c;
    let var_2 = _wgslsmith_f_op_f32(-1095f - _wgslsmith_f_op_f32(floor(arg_0.d)));
    var_0 = _wgslsmith_f_op_f32(round(arg_0.d));
    return -(~(~(~(~vec4<i32>(u_input.b.x, u_input.a.x, u_input.e, 10737i)))));
}

fn func_4(arg_0: vec4<i32>) -> Struct_2 {
    var var_0 = arg_0.x;
    var_0 = firstLeadingBit(-29691i);
    let var_1 = Struct_1(all(!select(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true)), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true)), vec2<bool>(true, true))), ~min(max(vec3<u32>(46785u, 57474u, u_input.c), vec3<u32>(13326u, u_input.c, u_input.c)), ~vec3<u32>(60886u, 0u, 0u)) | ~(~vec3<u32>(u_input.c, 15257u, 67768u)), !vec2<bool>(all(vec4<bool>(false, true, true, false)), all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), true))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-525f, -1000f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1379f), -1000f, any(vec2<bool>(false, true)))), true)))), select(!select(vec4<bool>(false, false, false, true), select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, false)), vec4<bool>(false, true, true, true)), vec4<bool>(true, any(vec3<bool>(true, true, true)), (u_input.c >> (u_input.c % 32u)) == ~4294967295u, all(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), false))), true));
    var_0 = u_input.d.x;
    var_0 = 2147483647i;
    return Struct_2(~0u, var_1);
}

fn func_5(arg_0: bool, arg_1: Struct_2) -> Struct_2 {
    let var_0 = Struct_1(false, vec3<u32>(21985u, 1u, ~arg_1.b.b.x), arg_1.b.c, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_1.b.d + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-116f - 586f))), _wgslsmith_f_op_f32(floor(-1000f)), all(vec2<bool>(true, true)))), vec4<bool>(false, !all(!vec2<bool>(true, arg_0)), select(_wgslsmith_dot_vec3_u32(arg_1.b.b, vec3<u32>(arg_1.a, 48837u, 5159u)) == _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, arg_1.b.b.x, u_input.c), vec3<u32>(81702u, u_input.c, 0u)), any(!vec4<bool>(arg_1.b.e.x, arg_0, arg_0, arg_0)), arg_1.b.e.x != false), arg_1.b.d == 629f));
    let var_1 = u_input.e;
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.d, 1136f))), -620f, var_0.d) + vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -466f), var_0.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1494f))))));
    var var_3 = vec3<i32>(-u_input.e, 601i, firstTrailingBit(u_input.b.x));
    var_3 = max(_wgslsmith_mod_vec3_i32(u_input.a, u_input.a), ~vec3<i32>(~6377i, _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, -83817i, var_1, -1i), vec4<i32>(-61774i, var_1, var_1, var_3.x)), -5515i), var_1));
    return Struct_2(select(arg_1.a, 89525u, all(arg_1.b.e.wz)), func_4(-(max(vec4<i32>(33572i, var_3.x, u_input.b.x, -1i), vec4<i32>(var_3.x, 39266i, var_1, var_1)) << (firstTrailingBit(vec4<u32>(arg_1.a, var_0.b.x, u_input.c, 1u)) % vec4<u32>(32u)))).b);
}

fn func_1(arg_0: vec4<u32>, arg_1: i32, arg_2: i32) -> Struct_2 {
    var var_0 = func_5(true, func_4(_wgslsmith_div_vec4_i32(func_2(Struct_1(false, vec3<u32>(4294967295u, 74539u, 0u), vec2<bool>(true, true), 867f, vec4<bool>(false, false, false, true))), vec4<i32>(2147483647i, 11686i, arg_1, -10459i)) & abs(~vec4<i32>(u_input.d.x, 2147483647i, arg_2, 2147483647i))));
    var_0 = Struct_2(_wgslsmith_dot_vec2_u32(~func_5(all(var_0.b.e.yz), Struct_2(arg_0.x, Struct_1(true, arg_0.xzw, vec2<bool>(var_0.b.e.x, false), 2289f, vec4<bool>(var_0.b.e.x, var_0.b.a, var_0.b.c.x, var_0.b.e.x)))).b.b.zx, ~(~(~arg_0.zx))), Struct_1(true, ~select(~var_0.b.b, ~var_0.b.b, !var_0.b.c.x), func_4(~vec4<i32>(u_input.a.x, arg_1, -38345i, -21566i)).b.c, _wgslsmith_f_op_f32(-var_0.b.d), !select(var_0.b.e, var_0.b.e, !vec4<bool>(true, true, true, var_0.b.e.x))));
    let var_1 = var_0.b;
    var var_2 = countOneBits(u_input.a);
    let var_3 = _wgslsmith_f_op_f32(f32(-1f) * -262f);
    return Struct_2(var_0.a, func_4(_wgslsmith_mult_vec4_i32(_wgslsmith_clamp_vec4_i32(max(vec4<i32>(var_2.x, 2147483647i, 0i, arg_2), vec4<i32>(arg_1, 30349i, var_2.x, 1i)), max(vec4<i32>(16818i, 49931i, var_2.x, -1i), vec4<i32>(-1i, 2147483647i, arg_2, u_input.d.x)), ~vec4<i32>(arg_2, 38433i, arg_1, arg_1)), vec4<i32>(var_2.x, abs(u_input.d.x), arg_1, 1i))).b);
}

fn func_6(arg_0: u32, arg_1: Struct_2, arg_2: Struct_2) -> i32 {
    var var_0 = u_input.e;
    var var_1 = func_1(firstTrailingBit((~vec4<u32>(arg_0, 51343u, 80653u, arg_0) >> (~vec4<u32>(arg_0, arg_2.a, u_input.c, arg_1.b.b.x) % vec4<u32>(32u))) | _wgslsmith_sub_vec4_u32(vec4<u32>(32032u, 19273u, 2081u, arg_2.a), ~vec4<u32>(arg_2.a, 1u, 69080u, u_input.c))), ~func_2(func_1(_wgslsmith_mod_vec4_u32(vec4<u32>(1u, 4294967295u, 1u, u_input.c), vec4<u32>(arg_2.b.b.x, 4294967295u, 33640u, arg_0)), _wgslsmith_div_i32(u_input.a.x, u_input.b.x), ~(-1i)).b).x, _wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(1i, -14314i, -20533i)) ^ u_input.d.x);
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-arg_2.b.d), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(var_1.b.d, -784f)), -449f), arg_2.b.d) * vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_2.b.d))), -1462f, _wgslsmith_f_op_f32(-var_1.b.d))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_2.b.d, 280f, 152f))) + _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-741f, var_1.b.d, var_1.b.d), vec3<f32>(arg_1.b.d, arg_1.b.d, 849f))))))));
    let var_3 = -(~(~_wgslsmith_clamp_i32(u_input.d.x, 16101i, 25473i) ^ u_input.e));
    let var_4 = vec3<u32>(1u, var_1.b.b.x, arg_1.b.b.x);
    return _wgslsmith_div_i32(2147483647i, -1i << ((~_wgslsmith_mod_u32(arg_2.a, 4294967295u) & 28791u) % 32u));
}

fn func_7(arg_0: i32, arg_1: Struct_1) -> f32 {
    var var_0 = u_input.b;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(1066f)))) + 169f));
    let var_2 = var_0.x;
    let var_3 = arg_1;
    var var_4 = func_4(reverseBits(-vec4<i32>(_wgslsmith_mult_i32(0i, -2147483647i), _wgslsmith_add_i32(1i, arg_0), -22795i, u_input.e)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_3.d, -1000f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -vec2<i32>(u_input.d.x, _wgslsmith_sub_i32(u_input.a.x << (43567u % 32u), i32(-1i) * -1i) >> ((_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, 4294967295u, u_input.c, 31339u), vec4<u32>(1u, u_input.c, u_input.c, 72802u)) & u_input.c) % 32u));
    var var_1 = u_input.a;
    var_1 = ~vec3<i32>(24556i, var_0.x, _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, ~49024i), vec2<i32>(var_0.x, _wgslsmith_add_i32(u_input.a.x, var_1.x))));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.x, _wgslsmith_f_op_f32(select(-969f, _wgslsmith_f_op_f32(func_7(func_6(4294967295u >> (0u % 32u), func_1(vec4<u32>(u_input.c, u_input.c, u_input.c, 56048u), var_1.x, var_1.x), Struct_2(u_input.c, Struct_1(false, vec3<u32>(4294967295u, u_input.c, 80347u), vec2<bool>(false, false), -1029f, vec4<bool>(false, false, false, false)))), Struct_1(true, ~vec3<u32>(13547u, 1u, u_input.c), vec2<bool>(true, true), -495f, select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, false))))), true)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(944f, -311f, -374f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(474f, 593f, -346f))), ~(-1i) < u_input.d.x)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1232f, -1071f, 297f), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-729f, 300f, 323f), vec3<f32>(-750f, 1082f, 1301f))))))));
}

