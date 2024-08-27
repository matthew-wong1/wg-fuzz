struct Struct_1 {
    a: vec3<i32>,
    b: u32,
    c: f32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: vec3<i32>,
    d: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_3, arg_2: i32, arg_3: Struct_3) -> vec2<i32> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.c.b.c * -1000f)));
    let var_1 = _wgslsmith_sub_vec3_i32(-arg_3.c.c, firstTrailingBit(max(vec3<i32>(arg_2, arg_1.b.c.x, arg_2), ~vec3<i32>(arg_1.b.c.x, 0i, 6456i)))) << (abs(firstTrailingBit(u_input.b)) % vec3<u32>(32u));
    global0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1375f * 189f)));
    global0 = _wgslsmith_f_op_f32(step(arg_1.c.b.c, _wgslsmith_f_op_f32(floor(var_0))));
    global0 = arg_1.c.b.c;
    return vec2<i32>(~(-21007i), -30510i | var_1.x);
}

fn func_2(arg_0: u32) -> Struct_4 {
    var var_0 = _wgslsmith_add_i32(_wgslsmith_sub_i32(-1i, 1i), _wgslsmith_dot_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(-32623i, 1i), select(-func_3(vec2<bool>(true, true), Struct_3(Struct_2(vec2<i32>(13400i, -16838i), Struct_1(vec3<i32>(-1i, 1i, 10453i), 30445u, 132f), vec3<i32>(-22722i, -1i, 66975i), true), Struct_2(vec2<i32>(-47155i, 2147483647i), Struct_1(vec3<i32>(-19583i, -2147483647i, -70736i), u_input.a.x, 1247f), vec3<i32>(32959i, 2147483647i, -30158i), false), Struct_2(vec2<i32>(1i, -37937i), Struct_1(vec3<i32>(13018i, 3668i, -1i), u_input.b.x, 143f), vec3<i32>(0i, -11655i, 1i), false)), 47484i, Struct_3(Struct_2(vec2<i32>(0i, -36876i), Struct_1(vec3<i32>(1i, 39204i, 1i), 4294967295u, 209f), vec3<i32>(1i, -25213i, 36357i), true), Struct_2(vec2<i32>(-2147483647i, 2147483647i), Struct_1(vec3<i32>(-1i, -3202i, 12334i), 4294967295u, 204f), vec3<i32>(-1i, 2147483647i, 1i), true), Struct_2(vec2<i32>(2147483647i, 4399i), Struct_1(vec3<i32>(-23873i, -1458i, 2147483647i), 4294967295u, -145f), vec3<i32>(11306i, -5177i, -84088i), false))), vec2<i32>(1i, 1i), !any(vec3<bool>(false, false, true)))));
    var var_1 = -1076f;
    let var_2 = Struct_1(_wgslsmith_add_vec3_i32(vec3<i32>(2147483647i, _wgslsmith_add_i32(-2877i, min(-1i, -1i)), ~(~(-9699i))), -vec3<i32>(1i, 1i, 1i)), 82012u, 386f);
    return Struct_4(var_2);
}

fn func_1(arg_0: bool, arg_1: Struct_2, arg_2: vec2<i32>, arg_3: Struct_1) -> f32 {
    var var_0 = func_2(arg_3.b);
    let var_1 = arg_1;
    let var_2 = true;
    let var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.a.c * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1037f) - var_1.b.c)), 524f);
    var var_4 = var_2 && all(!select(!vec4<bool>(arg_0, var_2, true, false), select(vec4<bool>(false, arg_0, var_2, false), vec4<bool>(false, true, true, false), arg_0), vec4<bool>(arg_1.d, false, true, false)));
    return -387f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -(~_wgslsmith_sub_i32(-(i32(-1i) * -17456i), ~abs(-1i)));
    let var_1 = Struct_1(_wgslsmith_add_vec3_i32(vec3<i32>(1i, 1i, 1i), firstTrailingBit(countOneBits(vec3<i32>(-12462i, -1i, -2147483647i)))), ~u_input.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -396f))))));
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.c)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_1(true, Struct_2(var_1.a.zz, var_1, vec3<i32>(var_1.a.x, 11088i, var_1.a.x), true), vec2<i32>(var_1.a.x, 13547i) ^ var_1.a.xx, Struct_1(vec3<i32>(2147483647i, -9831i, var_1.a.x), 5864u, var_1.c))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_1.c), _wgslsmith_f_op_f32(var_1.c - -1058f), true)))) - _wgslsmith_f_op_f32(-var_1.c)));
    global0 = _wgslsmith_f_op_f32(f32(-1f) * -1102f);
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.c, var_1.c)))), 1639f);
    var var_3 = var_1;
    var_3 = Struct_1(-abs(_wgslsmith_mod_vec3_i32(vec3<i32>(var_3.a.x, 0i, var_1.a.x) << (vec3<u32>(12626u, u_input.a.x, 17245u) % vec3<u32>(32u)), -vec3<i32>(var_3.a.x, var_3.a.x, 19978i))), ~max(var_3.b, var_3.b), -898f);
    var_3 = func_2(u_input.b.x).a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_3.c), ~_wgslsmith_dot_vec4_i32(abs(_wgslsmith_add_vec4_i32(vec4<i32>(var_3.a.x, var_1.a.x, var_3.a.x, var_3.a.x), vec4<i32>(-2147483647i, var_1.a.x, var_1.a.x, var_3.a.x))), vec4<i32>(var_1.a.x, 0i, var_3.a.x, var_3.a.x) >> (~vec4<u32>(var_1.b, 31104u, 24392u, var_1.b) % vec4<u32>(32u))), ~var_1.b);
}

