struct Struct_1 {
    a: bool,
    b: bool,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: vec2<i32>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_2,
    c: Struct_2,
    d: vec3<bool>,
    e: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
    d: vec4<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec2<u32> = vec2<u32>(4294967295u, 1u);

var<private> global2: vec3<i32> = vec3<i32>(40791i, 2147483647i, 1967i);

var<private> global3: bool;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3() -> f32 {
    let var_0 = global0.b;
    global0 = Struct_1(global0.b, true || !all(select(vec3<bool>(false, true, global0.b), vec3<bool>(global0.a, global0.a, false), vec3<bool>(false, false, false))));
    let var_1 = Struct_2(u_input.e.zxy, Struct_1(any(vec2<bool>(true, true)), true), abs(_wgslsmith_div_vec2_i32(vec2<i32>(2147483647i, 2147483647i), -u_input.a)) ^ _wgslsmith_div_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(2147483647i, global2.x), vec2<i32>(u_input.a.x, global2.x)) >> (vec2<u32>(1u, 1u) % vec2<u32>(32u)), _wgslsmith_sub_vec2_i32(global2.yx, ~global2.zz)));
    let var_2 = var_1.b;
    let var_3 = -var_1.c.x;
    return 344f;
}

fn func_2(arg_0: u32, arg_1: i32) -> vec2<f32> {
    return _wgslsmith_f_op_vec2_f32(vec2<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3()))) * _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-749f, 1361f) + vec2<f32>(-1569f, 205f))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -982f))), vec2<f32>(1f, 1f))));
}

fn func_1(arg_0: vec2<i32>, arg_1: bool, arg_2: u32) -> Struct_1 {
    let var_0 = false;
    let var_1 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1899f, _wgslsmith_f_op_f32(f32(-1f) * -563f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-149f, -420f))), vec2<bool>(any(vec2<bool>(arg_1, true)), u_input.c <= 66400u)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(func_2(_wgslsmith_div_u32(85682u, u_input.e.x), -arg_0.x)))) - _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-445f, -1759f))))))));
    var var_2 = firstTrailingBit(select(vec4<i32>(-_wgslsmith_dot_vec2_i32(arg_0, vec2<i32>(-2147483647i, arg_0.x)), reverseBits(~arg_0.x), 1i, 2147483647i), reverseBits(reverseBits(u_input.d)), false));
    global3 = var_0;
    var var_3 = var_2.x;
    return Struct_1(true, !((global0.a & false) && true) | global0.b);
}

fn func_4(arg_0: Struct_2, arg_1: vec3<f32>) -> Struct_1 {
    let var_0 = Struct_2(vec3<u32>(_wgslsmith_dot_vec2_u32(firstLeadingBit(u_input.e.zx), _wgslsmith_mod_vec2_u32(vec2<u32>(14333u, 24489u), u_input.e.yz)), countOneBits(global1.x | 0u), arg_0.a.x) & (~(~vec3<u32>(u_input.e.x, 52803u, global1.x)) | _wgslsmith_mod_vec3_u32(select(u_input.e.zzw, arg_0.a, true), ~vec3<u32>(89236u, 0u, arg_0.a.x))), arg_0.b, vec2<i32>(_wgslsmith_dot_vec2_i32(countOneBits(global2.yz), _wgslsmith_clamp_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(global2.x, global2.x), arg_0.c), global2.yx, -global2.zy)), -12962i));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) - arg_1.x);
    var var_2 = u_input.e.xyw;
    var var_3 = true;
    let var_4 = _wgslsmith_mod_vec3_u32(var_0.a, vec3<u32>(~_wgslsmith_sub_u32(0u, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(global1.x, 18931u))), var_2.x, 27367u));
    return Struct_1(all(vec3<bool>(true, arg_0.b.b, true)), false | !(!all(vec2<bool>(global0.b, true))));
}

fn func_5(arg_0: Struct_1, arg_1: f32, arg_2: vec2<u32>, arg_3: i32) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(arg_1 * arg_1), _wgslsmith_f_op_f32(abs(arg_1)), _wgslsmith_f_op_f32(-arg_1), -1077f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(vec4<f32>(1517f, arg_1, -715f, -2609f), vec4<f32>(arg_1, 863f, -1418f, arg_1))))))));
    let var_1 = Struct_3(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(sign(260f)), _wgslsmith_f_op_f32(f32(-1f) * -293f), arg_1, _wgslsmith_f_op_f32(func_3())), vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0.x + -652f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_1)) - _wgslsmith_f_op_f32(-294f * -200f)), 378f, -1372f))), Struct_2(_wgslsmith_mult_vec3_u32(abs(vec3<u32>(1u, u_input.b, 4294967295u)), vec3<u32>(arg_2.x, 0u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.e.x, 25348u, 1u), vec3<u32>(global1.x, 0u, u_input.c)))), arg_0, u_input.d.ww), Struct_2(~_wgslsmith_clamp_vec3_u32(vec3<u32>(global1.x, 4294967295u, global1.x), ~vec3<u32>(4294967295u, arg_2.x, 52170u), u_input.e.xzw), arg_0, vec2<i32>(-39414i, 1i) & u_input.d.yx), vec3<bool>(global0.b && any(select(vec3<bool>(false, false, arg_0.a), vec3<bool>(arg_0.b, global0.b, arg_0.a), vec3<bool>(false, false, global0.b))), !any(vec2<bool>(arg_0.a, arg_0.b)), false), global1.x);
    let var_2 = ~(arg_2 | _wgslsmith_mult_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(4131u, arg_2.x), u_input.e.xy) | (vec2<u32>(1u, 1u) << (u_input.e.zy % vec2<u32>(32u))), arg_2));
    let var_3 = func_1(vec2<i32>(-31690i, _wgslsmith_clamp_i32(14424i, var_1.b.c.x, 0i)), true, ~_wgslsmith_dot_vec2_u32(var_1.c.a.yx, _wgslsmith_div_vec2_u32(u_input.e.wy, ~u_input.e.yx))).a;
    global0 = var_1.c.b;
    return var_1.b;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = ~u_input.e.wz;
    var var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-181f, 1176f, -267f, -515f), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-667f, -215f, -1016f, 137f), vec4<f32>(-251f, -641f, 1212f, -900f))))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(914f, -1184f, -167f, -1414f)))))), func_5(func_4(Struct_2(u_input.e.yww, func_1(u_input.d.yw, global0.a, global1.x), vec2<i32>(9266i, u_input.a.x)), vec3<f32>(_wgslsmith_f_op_f32(-325f - -3412f), -554f, _wgslsmith_f_op_f32(f32(-1f) * -1106f))), _wgslsmith_f_op_f32(751f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1029f + 574f) * _wgslsmith_f_op_f32(select(1000f, -1263f, true)))), abs(u_input.e.xz), global2.x), func_5(func_4(Struct_2(u_input.e.yxx, Struct_1(false, global0.a), _wgslsmith_add_vec2_i32(vec2<i32>(global2.x, u_input.a.x), vec2<i32>(0i, 0i))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(854f, -152f, 156f) + vec3<f32>(-543f, -622f, 109f)), vec3<f32>(-663f, 1307f, 2137f)))), -825f, ~(~u_input.e.yz), _wgslsmith_mult_i32(u_input.d.x, _wgslsmith_div_i32(31069i, u_input.a.x) ^ ~global2.x)), vec3<bool>(true, false, true), _wgslsmith_dot_vec3_u32(vec3<u32>(global1.x, 1u | u_input.b, u_input.e.x), firstTrailingBit(u_input.e.xwx)));
    let var_1 = ~vec2<u32>(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(36222u, 36794u, 372u, 4294967295u)), countOneBits(~u_input.e)), abs(88345u & ~global1.x));
    var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) - var_0.a.x), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_0.a.x + -377f))), _wgslsmith_div_f32(-1816f, var_0.a.x), _wgslsmith_f_op_f32(-var_0.a.x)), var_0.a, global0.a)), var_0.c, var_0.b, var_0.d, func_5(var_0.c.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.x) + var_0.a.x), var_0.b.a.zx, ~firstTrailingBit(var_0.c.c.x)).a.x & 12390u);
    global0 = func_1(firstLeadingBit(var_0.b.c), false, 99157u);
    var var_2 = ~select(vec3<u32>(_wgslsmith_mult_u32(u_input.c, var_1.x) & abs(8992u), ~global1.x & var_0.b.a.x, var_1.x), vec3<u32>(~1u, _wgslsmith_add_u32(~var_1.x, var_1.x | 30252u), ~_wgslsmith_mult_u32(74780u, 1u)), true);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(var_1.x, 0u >> (~(var_2.x << (47164u % 32u)) % 32u), global1.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(-1000f * -145f), var_0.d.x)), var_0.a.x, var_0.a.x) + _wgslsmith_f_op_vec3_f32(-var_0.a.yzy)));
}

