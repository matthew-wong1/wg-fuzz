struct Struct_1 {
    a: bool,
    b: vec4<i32>,
    c: vec4<bool>,
    d: vec3<bool>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_2,
    c: i32,
    d: vec4<f32>,
}

struct Struct_4 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: u32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: i32) -> vec4<i32> {
    var var_0 = firstTrailingBit(_wgslsmith_mult_u32(86445u, ~4294967295u));
    var_0 = 1u;
    var var_1 = Struct_2(958f, Struct_1(_wgslsmith_f_op_f32(-1206f + _wgslsmith_f_op_f32(618f - 1394f)) >= _wgslsmith_f_op_f32(round(-1215f)), ~(-vec4<i32>(arg_1, arg_1, arg_0.b.x, -2147483647i)), arg_0.c, select(select(select(arg_0.d, vec3<bool>(arg_0.a, true, arg_0.d.x), vec3<bool>(false, arg_0.d.x, arg_0.a)), arg_0.c.xzw, vec3<bool>(arg_0.a, arg_0.d.x, true)), !(!vec3<bool>(false, true, arg_0.a)), arg_0.c.zww)));
    var_1 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(324f - _wgslsmith_f_op_f32(var_1.a - var_1.a))), Struct_1(!any(vec3<bool>(true, var_1.b.c.x, false)), vec4<i32>(countOneBits(countOneBits(u_input.a)), firstTrailingBit(53887i), ~_wgslsmith_mult_i32(0i, u_input.a), u_input.a), !select(vec4<bool>(arg_0.a, false, false, true), vec4<bool>(false, true, var_1.b.d.x, arg_0.d.x), vec4<bool>(true, true, true, var_1.b.a)), vec3<bool>(true, all(select(var_1.b.d.xy, var_1.b.d.xz, arg_0.d.xx)), !arg_0.a)));
    return _wgslsmith_mod_vec4_i32(arg_0.b >> (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u)), var_1.b.b);
}

fn func_4(arg_0: Struct_4, arg_1: Struct_1) -> vec4<bool> {
    let var_0 = arg_1.c.x;
    let var_1 = var_0;
    let var_2 = arg_1.b;
    let var_3 = -1028f;
    let var_4 = ~(~35774u);
    return arg_1.c;
}

fn func_2(arg_0: bool) -> Struct_3 {
    let var_0 = u_input.a;
    var var_1 = Struct_1(true, -((vec4<i32>(u_input.a, -2147483647i, 1i, -20955i) & vec4<i32>(u_input.a, var_0, 0i, -1i)) | vec4<i32>(-47686i, u_input.a, 0i, 2147483647i)) ^ _wgslsmith_div_vec4_i32(~(-vec4<i32>(2147483647i, u_input.a, 21139i, var_0)), -(~vec4<i32>(-1i, var_0, u_input.a, u_input.a))), func_4(Struct_4(reverseBits(-2147483647i)), Struct_1(true & (arg_0 & true), max(abs(vec4<i32>(u_input.a, var_0, var_0, 0i)), func_3(Struct_1(arg_0, vec4<i32>(var_0, var_0, var_0, u_input.a), vec4<bool>(false, arg_0, true, arg_0), vec3<bool>(arg_0, arg_0, false)), -43944i)), vec4<bool>(true, true, true, true), !(!vec3<bool>(arg_0, false, arg_0)))), vec3<bool>(arg_0, false, arg_0));
    var_1 = Struct_1(select(true, all(vec3<bool>(!arg_0, true, true)), select(true, any(var_1.c), all(select(vec2<bool>(var_1.d.x, false), var_1.c.xw, var_1.d.zy)))), var_1.b, !(!vec4<bool>(var_1.c.x, false, var_1.a, false)), var_1.d);
    let var_2 = Struct_4(u_input.a);
    var var_3 = vec4<bool>((_wgslsmith_f_op_f32(round(-1691f)) < -1907f) || var_1.d.x, (~1u >> (_wgslsmith_div_u32(_wgslsmith_div_u32(62535u, 38237u), select(50154u, 1u, var_1.d.x)) % 32u)) >= ~_wgslsmith_dot_vec3_u32(~vec3<u32>(22623u, 4294967295u, 20881u), vec3<u32>(1u, 1u, 1u)), arg_0, var_1.c.x);
    return Struct_3(~(~(~vec4<u32>(4294967295u, 1u, 9675u, 1u))), Struct_2(1573f, Struct_1(any(var_1.d) || any(var_3.ww), abs(func_3(Struct_1(true, var_1.b, vec4<bool>(var_3.x, true, var_3.x, var_1.a), vec3<bool>(true, true, false)), var_1.b.x)), func_4(var_2, Struct_1(var_1.a, var_1.b, var_1.c, vec3<bool>(arg_0, var_1.a, false))), vec3<bool>(false, true, false || var_1.a))), max(_wgslsmith_mult_i32(select(var_1.b.x, var_1.b.x, arg_0), ~u_input.a) & -25195i, _wgslsmith_dot_vec3_i32(abs(vec3<i32>(var_1.b.x, -2147483647i, u_input.a)), vec3<i32>(u_input.a, var_1.b.x, -79074i) & (var_1.b.yww | var_1.b.xwy))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2156f, 1226f, _wgslsmith_f_op_f32(-1118f - 307f), -452f)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -226f, 202f, 707f))))));
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_sub_u32(~(abs(_wgslsmith_clamp_u32(1u, 27912u, 4294967295u)) ^ ~(84143u >> (1u % 32u))), ~(~(~countOneBits(1u))));
    var var_1 = ~max(vec4<u32>(1u, var_0 | 4294967295u, _wgslsmith_mod_u32(9509u, 16232u), _wgslsmith_mult_u32(1u, 1u)), reverseBits(vec4<u32>(34081u, 4294967295u, var_0, var_0))) >> (vec4<u32>(4294967295u, var_0, var_0, ~1u) % vec4<u32>(32u));
    let var_2 = ~_wgslsmith_div_vec3_u32(vec3<u32>(~(~0u), var_1.x, 1u), ~vec3<u32>(var_1.x, 1u, 4294967295u));
    var var_3 = func_2(all(vec4<bool>(true, true, !(-1i != u_input.a), any(vec3<bool>(true, true, true)))));
    var_1 = vec4<u32>(max(~(~44639u), ~4294967295u), ~8426u, _wgslsmith_dot_vec3_u32(~vec3<u32>(firstTrailingBit(2647u), reverseBits(var_0), _wgslsmith_mod_u32(var_0, 42541u)), _wgslsmith_mod_vec3_u32(var_2, ~(~vec3<u32>(0u, 1u, 27310u)))), ~(var_3.a.x | var_2.x));
    return func_2(var_3.b.b.d.x).b.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~max(~abs(vec3<u32>(1u, 1u, 4454u)), countOneBits(vec3<u32>(1u, 1u, 1u)));
    var_0 = ~(~countOneBits(firstTrailingBit(_wgslsmith_add_vec3_u32(vec3<u32>(26858u, var_0.x, var_0.x), vec3<u32>(var_0.x, var_0.x, var_0.x)))));
    let var_1 = func_1();
    var_0 = vec3<u32>(0u, ~(~(~var_0.x)), countOneBits(~(~0u)));
    var var_2 = Struct_2(1f, var_1);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec3_u32(_wgslsmith_add_vec3_u32(~(~vec3<u32>(5799u, var_0.x, var_0.x)), _wgslsmith_mult_vec3_u32(~vec3<u32>(var_0.x, 29375u, 4294967295u), vec3<u32>(20456u, 0u, var_0.x) | vec3<u32>(4294967295u, 4294967295u, 4294967295u))), ~(~_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, 4294967295u, var_0.x), vec3<u32>(41890u, var_0.x, 4294967295u)))), var_2.a, (var_0.x ^ ~(~27881u)) >> (countOneBits(var_0.x >> (abs(var_0.x) % 32u)) % 32u), vec4<u32>(var_0.x, ~4294967295u, 1u, 71934u));
}

