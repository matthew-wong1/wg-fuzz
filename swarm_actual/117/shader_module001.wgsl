struct Struct_1 {
    a: u32,
    b: vec4<i32>,
    c: bool,
    d: f32,
    e: vec4<f32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: i32,
    c: Struct_1,
    d: vec3<u32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: u32,
    d: vec3<u32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(31683u, vec4<i32>(-1395i, 2147483647i, -27139i, -15318i), false, -1731f, vec4<f32>(183f, -600f, -1952f, 1000f));

var<private> global1: f32 = -1006f;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2(arg_0: f32, arg_1: bool) -> u32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-1130f + 441f), global0.e.x)) * vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.d, -211f)), global0.d)));
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1054f * -936f), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -2584f), global0.d), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-2539f, global0.e.x, arg_1))))))) - -1544f);
    let var_1 = _wgslsmith_mult_u32(global0.a, _wgslsmith_mult_u32(~4294967295u, 1u)) ^ 14801u;
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, 491f, -846f) * _wgslsmith_f_op_vec4_f32(global0.e + global0.e)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(599f, 1251f, arg_0, -141f))))));
    var var_3 = global0.b.x;
    return 1u;
}

fn func_1(arg_0: i32, arg_1: vec3<u32>) -> Struct_1 {
    let var_0 = true;
    global1 = 855f;
    let var_1 = vec2<u32>(func_2(global0.d, false) << (1u % 32u), abs(~u_input.a.x) >> (~u_input.a.x % 32u)) << (~_wgslsmith_div_vec2_u32((vec2<u32>(arg_1.x, 0u) >> (u_input.d.xy % vec2<u32>(32u))) & arg_1.zx, abs(countOneBits(vec2<u32>(1u, 64562u)))) % vec2<u32>(32u));
    global0 = Struct_1(~(countOneBits(_wgslsmith_add_u32(3339u, var_1.x)) << (abs(22115u) % 32u)), ~vec4<i32>(global0.b.x, 25183i << (global0.a % 32u), reverseBits(global0.b.x ^ global0.b.x), -48497i), true, global0.d, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(730f, -564f, var_0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(179f)) - 1359f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.e.x)), _wgslsmith_f_op_f32(floor(-542f)))));
    global1 = _wgslsmith_f_op_f32(-global0.d);
    return Struct_1(u_input.a.x, global0.b, true, 1076f, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1150f, -765f, global0.e.x, global0.d)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.e.x, global0.e.x, global0.d, global0.e.x))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global0.e)), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(global0.e + vec4<f32>(global0.e.x, global0.e.x, -1958f, global0.d)))), all(vec2<bool>(true, true))))));
}

fn func_3(arg_0: Struct_2) -> Struct_1 {
    var var_0 = arg_0.e.b.wxx;
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c.d));
    let var_1 = true;
    var var_2 = vec3<bool>(false | !(_wgslsmith_f_op_f32(step(global0.e.x, global0.d)) != -1824f), all(vec4<bool>(all(select(vec3<bool>(var_1, true, true), vec3<bool>(false, arg_0.c.c, var_1), true)), true | arg_0.e.c, true, all(vec2<bool>(false, false)))), all(!(!select(vec3<bool>(false, false, true), vec3<bool>(false, var_1, var_1), vec3<bool>(arg_0.e.c, arg_0.c.c, true)))));
    global0 = arg_0.c;
    return arg_0.e;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global0.e) * vec4<f32>(537f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.e.x), _wgslsmith_f_op_f32(-303f - global0.e.x)), 427f, _wgslsmith_f_op_f32(abs(-2015f)))), abs((u_input.c & global0.b.x) | (i32(-1i) * -39313i)) & 0i, func_3(Struct_2(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(global0.e, vec4<f32>(global0.e.x, global0.e.x, -693f, 414f)))), firstTrailingBit(-global0.b.x), func_1(-1i & u_input.c, vec3<u32>(1u, u_input.b.x, 1u)), u_input.d.wzy, func_1(firstTrailingBit(-22271i), ~u_input.d.zwy))), u_input.d.xwx, func_3(Struct_2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(2814f, global0.d, global0.d, global0.e.x)), _wgslsmith_div_vec4_f32(global0.e, vec4<f32>(global0.e.x, global0.d, -957f, global0.e.x))), u_input.c, func_1(-global0.b.x, _wgslsmith_sub_vec3_u32(u_input.d.wyz, vec3<u32>(global0.a, global0.a, u_input.a.x))), ~vec3<u32>(global0.a, 91556u, 15944u), Struct_1(firstTrailingBit(0u), vec4<i32>(-34663i, global0.b.x, 0i, -9093i), true, -133f, _wgslsmith_f_op_vec4_f32(global0.e + vec4<f32>(global0.e.x, 1219f, -634f, 420f))))));
    let var_1 = Struct_2(vec4<f32>(var_0.e.e.x, func_3(Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(773f, -471f, var_0.e.d, 524f)), var_0.e.b.x | -1i, var_0.c, u_input.d.zzz, Struct_1(41667u, vec4<i32>(global0.b.x, -1i, -1i, var_0.c.b.x), global0.c, -1000f, var_0.c.e))).d, _wgslsmith_f_op_f32(-var_0.c.d), global0.e.x), ~global0.b.x, var_0.e, _wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(global0.a, _wgslsmith_sub_u32(u_input.d.x, 1u)), 8716u, _wgslsmith_div_u32(~4294967295u, 39006u)), u_input.d.xwz), Struct_1(~var_0.e.a, global0.b, false, 1f, _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(-1000f + var_0.e.d), _wgslsmith_f_op_f32(-511f * -367f), var_0.c.e.x, global0.e.x)))));
    let var_2 = firstLeadingBit(~(~(var_1.d.x >> (var_1.c.a % 32u)))) == global0.a;
    let var_3 = var_1;
    let var_4 = var_1.e;
    var var_5 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1333f, var_4.e.x)));
    let var_6 = func_2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(var_3.a.x)))), var_3.e.c);
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mult_vec4_i32(reverseBits(-var_0.c.b), firstTrailingBit(var_1.c.b) & ~var_3.e.b), -vec3<i32>(countOneBits(-1i), -_wgslsmith_div_i32(10430i, 1i), _wgslsmith_dot_vec4_i32(-var_1.e.b, var_3.e.b)), var_6 ^ ~27505u, _wgslsmith_sub_vec3_u32(~(var_0.d >> (min(var_1.d, var_1.d) % vec3<u32>(32u))), var_0.d), var_1.c.b.xxz & vec3<i32>(13138i, countOneBits(2642i), -24081i));
}

