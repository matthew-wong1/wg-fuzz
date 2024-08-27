struct Struct_1 {
    a: vec2<f32>,
    b: f32,
    c: u32,
    d: vec2<f32>,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_1,
    c: vec3<u32>,
    d: Struct_1,
    e: vec4<bool>,
}

struct Struct_4 {
    a: bool,
    b: vec3<u32>,
    c: bool,
    d: i32,
    e: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: vec3<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 11>;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3() -> f32 {
    let var_0 = vec3<i32>(u_input.d, u_input.d, u_input.a);
    let var_1 = vec3<u32>(u_input.c.x, _wgslsmith_mod_u32(u_input.c.x, ~_wgslsmith_add_u32(~u_input.c.x, ~u_input.c.x)), _wgslsmith_clamp_u32(firstTrailingBit(abs(u_input.c.x)), 1u, 30870u));
    let var_2 = Struct_2(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.c.x, ~(~u_input.c.x) >> (max(var_1.x, abs(6396u)) % 32u), ~var_1.x), 11u)], vec4<i32>(~(-u_input.a), 26559i << (~_wgslsmith_dot_vec3_u32(var_1, vec3<u32>(6936u, u_input.c.x, 0u)) % 32u), u_input.b.x, u_input.a));
    var var_3 = Struct_4(any(select(!select(vec3<bool>(var_2.a.e, false, var_2.a.e), vec3<bool>(var_2.a.e, true, var_2.a.e), vec3<bool>(var_2.a.e, var_2.a.e, false)), vec3<bool>(var_2.a.e, !var_2.a.e, true), all(!vec4<bool>(false, var_2.a.e, var_2.a.e, true)))), ~vec3<u32>(0u, _wgslsmith_add_u32(abs(var_1.x), firstLeadingBit(1u)), ~(4294967295u >> (var_1.x % 32u))), !all(select(select(vec2<bool>(true, var_2.a.e), vec2<bool>(var_2.a.e, false), vec2<bool>(var_2.a.e, var_2.a.e)), vec2<bool>(true, true), select(vec2<bool>(var_2.a.e, false), vec2<bool>(var_2.a.e, true), vec2<bool>(false, true)))), -2147483647i, Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.a.a.x, 345f, -1836f, var_2.a.a.x))))), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_2.a.d, vec2<f32>(var_2.a.d.x, var_2.a.d.x))), 1481f, select(_wgslsmith_mod_u32(0u, 4294967295u), var_2.a.c, var_2.a.e), var_2.a.a, var_2.a.e), _wgslsmith_sub_vec3_u32(~var_1, ~vec3<u32>(1u, var_2.a.c, var_2.a.c)) << (~(vec3<u32>(var_2.a.c, var_1.x, 83353u) << (vec3<u32>(0u, 22636u, u_input.c.x) % vec3<u32>(32u))) % vec3<u32>(32u)), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2199f), _wgslsmith_f_op_f32(min(var_2.a.d.x, var_2.a.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.a.a.x + var_2.a.b) + _wgslsmith_f_op_f32(-var_2.a.d.x)), ~(~u_input.c.x), _wgslsmith_f_op_vec2_f32(var_2.a.d * vec2<f32>(var_2.a.b, 1221f)), 1i <= (u_input.d | 2147483647i)), select(!select(vec4<bool>(var_2.a.e, false, var_2.a.e, false), vec4<bool>(false, var_2.a.e, var_2.a.e, var_2.a.e), vec4<bool>(var_2.a.e, false, var_2.a.e, false)), vec4<bool>(true, !var_2.a.e, true, true), select(!vec4<bool>(var_2.a.e, true, true, false), vec4<bool>(false, false, var_2.a.e, var_2.a.e), select(vec4<bool>(false, true, var_2.a.e, false), vec4<bool>(var_2.a.e, true, true, false), var_2.a.e)))));
    var var_4 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-128f, var_2.a.b)))), var_2.a.b, firstTrailingBit(var_2.a.c) ^ (1u << ((var_2.a.c | var_2.a.c) % 32u)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-var_3.e.d.a), _wgslsmith_f_op_vec2_f32(select(var_3.e.d.a, vec2<f32>(-581f, var_2.a.a.x), vec2<bool>(var_2.a.e, var_3.c))))), _wgslsmith_f_op_vec2_f32(ceil(var_3.e.a.wz))), true), -abs(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, 2147483647i, -2147483647i, u_input.b.x), u_input.b) & var_2.b));
    return _wgslsmith_f_op_f32(-var_3.e.d.a.x);
}

fn func_2(arg_0: vec2<bool>, arg_1: u32, arg_2: u32) -> u32 {
    let var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f))) + vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1002f * -176f) - 252f), -523f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + 492f)))), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, u_input.c.x) | ~vec2<u32>(0u, u_input.c.x), vec2<u32>(u_input.c.x, 24475u) << ((vec2<u32>(0u, 12314u) << (vec2<u32>(arg_2, arg_2) % vec2<u32>(32u))) % vec2<u32>(32u))), firstLeadingBit(u_input.c.yx)), 11u)], _wgslsmith_mult_vec3_u32(abs(vec3<u32>(56657u, abs(u_input.c.x), arg_2)), _wgslsmith_mult_vec3_u32(select(vec3<u32>(arg_1, u_input.c.x, arg_2), u_input.c, false), firstLeadingBit(u_input.c)) | min(_wgslsmith_mult_vec3_u32(vec3<u32>(44986u, u_input.c.x, 1u), u_input.c), _wgslsmith_sub_vec3_u32(u_input.c, vec3<u32>(u_input.c.x, 4294967295u, 0u)))), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(20637u, ~_wgslsmith_add_u32(0u, max(arg_1, arg_2))), 11u)], select(!vec4<bool>(arg_0.x, false & arg_0.x, arg_0.x, all(vec2<bool>(false, true))), vec4<bool>(any(select(vec3<bool>(arg_0.x, arg_0.x, arg_0.x), vec3<bool>(true, arg_0.x, arg_0.x), vec3<bool>(true, true, false))), any(select(vec3<bool>(arg_0.x, arg_0.x, false), vec3<bool>(true, false, arg_0.x), vec3<bool>(arg_0.x, arg_0.x, true))), any(!arg_0), _wgslsmith_f_op_f32(floor(-329f)) <= -581f), !vec4<bool>(select(false, arg_0.x, true), any(vec3<bool>(true, arg_0.x, false)), arg_0.x != arg_0.x, any(vec4<bool>(true, false, false, arg_0.x)))));
    global0 = array<Struct_1, 11>();
    let var_1 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(var_0.d.d + var_0.d.d), var_0.b.a.x, 4294967295u, vec2<f32>(_wgslsmith_f_op_f32(trunc(291f)), _wgslsmith_f_op_f32(f32(-1f) * -555f)), var_0.d.e | arg_0.x), vec4<i32>(42446i | u_input.b.x, firstTrailingBit(14436i), u_input.d, ~(~2147483647i << (arg_1 % 32u))));
    var var_2 = global0[_wgslsmith_index_u32(~arg_1 >> (_wgslsmith_div_u32(_wgslsmith_clamp_u32(select(arg_1, 1u, true), ~60068u, abs(1u)) ^ ~0u, _wgslsmith_sub_u32(min(~var_0.b.c, ~u_input.c.x), 1u & _wgslsmith_div_u32(var_1.a.c, arg_1))) % 32u), 11u)];
    let var_3 = vec2<f32>(124f, 1644f);
    return ~7519u;
}

fn func_1() -> Struct_2 {
    var var_0 = -(~u_input.a);
    global0 = array<Struct_1, 11>();
    var_0 = u_input.a << (func_2(!vec2<bool>(any(vec2<bool>(false, true)), all(vec4<bool>(false, true, false, false))), firstLeadingBit(~select(u_input.c.x, u_input.c.x, true)), _wgslsmith_dot_vec2_u32(~_wgslsmith_clamp_vec2_u32(vec2<u32>(22845u, u_input.c.x), u_input.c.yz, vec2<u32>(51916u, u_input.c.x)), ~_wgslsmith_sub_vec2_u32(vec2<u32>(114260u, 0u), vec2<u32>(u_input.c.x, 91186u)))) % 32u);
    var_0 = u_input.a;
    var var_1 = global0[_wgslsmith_index_u32(171242u, 11u)];
    return Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.d.x, 1116f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.d.x + 1499f))), ~min(~var_1.c, 1u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1413f, 511f))))), all(vec4<bool>(select(var_1.e, var_1.e, true), any(vec4<bool>(var_1.e, true, true, var_1.e)), true, true))), _wgslsmith_add_vec4_i32(u_input.b, u_input.b) << (countOneBits(max(vec4<u32>(u_input.c.x, var_1.c, 95u, u_input.c.x), countOneBits(vec4<u32>(0u, u_input.c.x, 21369u, 1u)))) % vec4<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    global0 = array<Struct_1, 11>();
    var var_1 = var_0.b.wz;
    var var_2 = var_0.b.xw;
    var_1 = abs(u_input.b.xy);
    let var_3 = Struct_4(false, min(_wgslsmith_div_vec3_u32(vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.a.c, 4294967295u, 14251u), vec3<u32>(3966u, var_0.a.c, 4294967295u)), ~u_input.c.x, 34443u), select(vec3<u32>(u_input.c.x, 1u, var_0.a.c) | u_input.c, ~u_input.c, func_1().a.e)), u_input.c), false, ~var_2.x, Struct_3(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0.a.a.x, var_0.a.d.x, var_0.a.b, var_0.a.a.x), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(585f, 497f, var_0.a.b, var_0.a.d.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.d.x, var_0.a.b, var_0.a.b, var_0.a.b)))))), var_0.a, ~abs(select(vec3<u32>(32941u, var_0.a.c, var_0.a.c), vec3<u32>(u_input.c.x, var_0.a.c, var_0.a.c), vec3<bool>(false, true, true))), func_1().a, vec4<bool>(true, any(select(vec2<bool>(var_0.a.e, var_0.a.e), vec2<bool>(false, var_0.a.e), vec2<bool>(false, var_0.a.e))), true, all(select(vec2<bool>(var_0.a.e, true), vec2<bool>(var_0.a.e, var_0.a.e), vec2<bool>(var_0.a.e, false))))));
    var var_4 = var_0.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -297f)), ~vec3<u32>(firstLeadingBit(1u), var_4.c, firstTrailingBit(~9803u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.a.x, var_4.d.x, 221f))))), var_4.c);
}

