struct Struct_1 {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec2<u32>,
    d: vec3<bool>,
    e: vec3<f32>,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: bool,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
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

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec4<i32>) -> i32 {
    let var_0 = all(vec4<bool>(true, all(vec3<bool>(all(vec3<bool>(false, true, false)), true, false)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-308f, 1318f)), -584f) >= _wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(sign(1000f)))), true));
    let var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1463f - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-204f * 1351f)))), -134f)));
    let var_2 = false;
    let var_3 = vec2<u32>(~_wgslsmith_sub_u32(~1u, _wgslsmith_mod_u32(61146u, 65817u)), _wgslsmith_add_u32(_wgslsmith_sub_u32(max(4294967295u, 1u), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 1u, 22312u), vec3<u32>(4294967295u, 4294967295u, 1u))), abs(firstTrailingBit(1u)))) >> (~(~_wgslsmith_add_vec2_u32(vec2<u32>(25782u, 6916u), _wgslsmith_mod_vec2_u32(vec2<u32>(30201u, 0u), vec2<u32>(1u, 4294967295u)))) % vec2<u32>(32u));
    let var_4 = _wgslsmith_f_op_f32(-var_1);
    return ~_wgslsmith_dot_vec2_i32(u_input.b.xw, (-u_input.e | arg_0.yy) << ((var_3 >> (vec2<u32>(95998u, var_3.x) % vec2<u32>(32u))) % vec2<u32>(32u)));
}

fn func_2(arg_0: Struct_3, arg_1: vec3<f32>, arg_2: vec2<bool>, arg_3: vec4<i32>) -> vec2<i32> {
    var var_0 = select(vec4<bool>(arg_2.x, any(!vec2<bool>(arg_0.d.d.x, arg_2.x)), all(arg_0.d.d), true), vec4<bool>(select(arg_0.d.d.x, all(!arg_0.e.d), any(vec3<bool>(false, false, true))), true, arg_2.x, !arg_0.d.d.x), false || (any(arg_0.e.d) & (arg_0.b.a.x == ~arg_0.e.c.x)));
    var_0 = vec4<bool>(true, true, arg_0.d.d.x, _wgslsmith_f_op_f32(f32(-1f) * -1509f) >= arg_0.a);
    var_0 = !vec4<bool>(true, arg_2.x, true, all(var_0.ywx));
    let var_1 = arg_0.e.c.x;
    var var_2 = _wgslsmith_sub_vec4_i32(vec4<i32>(arg_0.e.b.x, arg_3.x | (func_3(vec4<i32>(arg_0.e.b.x, -2147483647i, 2147483647i, 11338i)) ^ -4940i), max(1i, u_input.a) & _wgslsmith_div_i32(-arg_3.x, countOneBits(u_input.d)), firstTrailingBit(firstTrailingBit(_wgslsmith_mult_i32(arg_3.x, arg_3.x)))), arg_0.d.b & _wgslsmith_clamp_vec4_i32(abs(arg_3 & vec4<i32>(1i, 26559i, -56999i, arg_0.e.b.x)), _wgslsmith_add_vec4_i32(max(arg_3, arg_3), firstTrailingBit(arg_0.e.b)), firstLeadingBit(select(arg_0.e.b, vec4<i32>(u_input.d, 2147483647i, -2147483647i, 45062i), vec4<bool>(arg_0.d.d.x, var_0.x, var_0.x, var_0.x)))));
    return u_input.b.xx;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_2, arg_2: f32) -> u32 {
    var var_0 = -((abs(select(vec4<i32>(-7739i, u_input.e.x, -551i, 1i), u_input.b, vec4<bool>(false, arg_0.d.x, true, arg_0.d.x))) ^ -(~arg_0.b)) & -u_input.b);
    let var_1 = -abs(-_wgslsmith_add_vec2_i32(vec2<i32>(-31798i, 0i), u_input.b.yz)) | _wgslsmith_sub_vec2_i32(_wgslsmith_add_vec2_i32(firstLeadingBit(-arg_0.b.xw), -func_2(Struct_3(315f, arg_1, true, Struct_1(arg_0.c, arg_0.b, vec2<u32>(arg_1.a.x, 0u), vec3<bool>(arg_0.d.x, arg_0.d.x, arg_0.d.x), vec3<f32>(548f, 519f, 846f)), Struct_1(vec2<u32>(arg_0.a.x, arg_0.a.x), arg_0.b, arg_1.a.xx, vec3<bool>(arg_0.d.x, arg_0.d.x, arg_0.d.x), arg_0.e)), vec3<f32>(arg_0.e.x, -1378f, arg_0.e.x), vec2<bool>(false, arg_0.d.x), u_input.b)), var_0.ww);
    let var_2 = _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-675f, _wgslsmith_f_op_f32(f32(-1f) * -111f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.e.x), arg_0.e.x), -607f)));
    let var_3 = arg_0;
    var_0 = vec4<i32>(-(~(~abs(7375i))), -7317i, var_3.b.x, 25131i);
    return _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(var_3.c, var_3.c), 0u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstLeadingBit(vec4<u32>(12074u, 1u ^ select(func_1(Struct_1(vec2<u32>(1u, 28602u), u_input.b, vec2<u32>(67708u, 1u), vec3<bool>(false, false, true), vec3<f32>(-845f, 232f, 1828f)), Struct_2(vec3<u32>(3951u, 72u, 30955u)), -379f), ~1u, true), _wgslsmith_mult_u32(_wgslsmith_div_u32(1u, 400u), ~0u), _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(8302u, 0u, 0u), vec3<u32>(1u, 88684u, 47616u)) << (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u)), ~min(vec3<u32>(50416u, 0u, 1u), vec3<u32>(4294967295u, 4294967295u, 0u)))));
    var var_1 = u_input.d;
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(442f, 920f, -1189f))) + vec3<f32>(1000f, 469f, -856f))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(_wgslsmith_mult_i32(max(~u_input.d, 0i), u_input.b.x), i32(-1i) * -3876i, func_2(Struct_3(_wgslsmith_f_op_f32(min(-912f, 1092f)), Struct_2(vec3<u32>(var_0.x, var_0.x, 21772u)), true, Struct_1(vec2<u32>(var_0.x, 22338u), vec4<i32>(-1i, 1i, u_input.e.x, 23579i), var_0.yy, vec3<bool>(false, false, true), var_2), Struct_1(vec2<u32>(4294967295u, var_0.x), u_input.b, var_0.zy, vec3<bool>(true, false, true), vec3<f32>(var_2.x, -2023f, 313f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_2) - _wgslsmith_f_op_vec3_f32(round(vec3<f32>(1264f, var_2.x, 752f)))), !select(vec2<bool>(true, false), vec2<bool>(true, false), true), ~(-vec4<i32>(-2147483647i, u_input.b.x, u_input.c, 2147483647i))).x), ~abs(var_0), 0u, -_wgslsmith_clamp_i32(u_input.c >> ((var_0.x ^ var_0.x) % 32u), -2147483647i, -_wgslsmith_mult_i32(u_input.a, 0i)));
}

