struct Struct_1 {
    a: vec3<bool>,
    b: bool,
    c: u32,
    d: vec2<bool>,
    e: i32,
}

struct Struct_2 {
    a: i32,
    b: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_2(arg_0: i32, arg_1: Struct_2) -> Struct_2 {
    var var_0 = 0u;
    var_0 = _wgslsmith_dot_vec3_u32(vec3<u32>(countOneBits(max(11206u, 49509u)), 1u, 30357u), vec3<u32>(1u, 1u, 1u)) >> (1u % 32u);
    var_0 = ~1u;
    var var_1 = Struct_2(0i, _wgslsmith_sub_i32(max(1i, arg_0), 0i));
    var var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(1877f))));
    return Struct_2(1i, 1i);
}

fn func_3(arg_0: u32, arg_1: vec3<f32>, arg_2: Struct_2, arg_3: Struct_2) -> i32 {
    let var_0 = ~_wgslsmith_div_u32(abs(35083u), arg_0);
    let var_1 = Struct_1(vec3<bool>(true, true, true), all(vec3<bool>(true, true, true)), arg_0, select(vec2<bool>(false, true), select(vec2<bool>(all(vec3<bool>(true, true, true)), true), !select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false)), select(vec2<bool>(true, true), vec2<bool>(true, true), any(vec4<bool>(false, true, false, true)))), select(select(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false)), vec2<bool>(true, true), true), select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, false), false), true), true)), max(0i, -min(1i, arg_3.b)));
    let var_2 = Struct_1(select(select(var_1.a, vec3<bool>(true, var_1.a.x, true), var_1.a.x), select(var_1.a, select(var_1.a, vec3<bool>(false, var_1.a.x, var_1.b), vec3<bool>(var_1.d.x, var_1.a.x, var_1.b)), var_1.a), vec3<bool>(var_1.b, !var_1.b, all(!var_1.a.yz))), var_1.b, 7443u, select(vec2<bool>(false, select(!var_1.a.x, var_1.d.x, arg_1.x >= arg_1.x)), !select(vec2<bool>(true, false), vec2<bool>(var_1.a.x, false), select(var_1.a.yx, vec2<bool>(true, false), vec2<bool>(var_1.b, false))), true), var_1.e);
    var var_3 = ~(-vec2<i32>((var_2.e & 0i) >> (_wgslsmith_dot_vec2_u32(vec2<u32>(43047u, 4294967295u), vec2<u32>(arg_0, 1u)) % 32u), var_2.e));
    var_3 = u_input.d.yx;
    return 2147483647i;
}

fn func_1(arg_0: vec2<u32>, arg_1: bool, arg_2: f32, arg_3: bool) -> Struct_1 {
    let var_0 = func_3(7397u, _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(step(1419f, -1197f)), _wgslsmith_f_op_f32(abs(1387f)), -210f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-1047f, arg_2, -1207f), vec3<f32>(-526f, arg_2, arg_2)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2, 536f, arg_2))) + _wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_2, -1187f, -666f), vec3<f32>(arg_2, -2161f, arg_2)))))), func_2(firstTrailingBit(u_input.c.x), Struct_2(_wgslsmith_add_i32(u_input.d.x, u_input.c.x), u_input.d.x)), func_2(1i, func_2(-17063i, Struct_2(min(0i, -20678i), u_input.a))));
    var var_1 = vec3<bool>(_wgslsmith_f_op_f32(step(arg_2, _wgslsmith_f_op_f32(max(arg_2, -667f)))) < arg_2, false, any(!(!(!vec2<bool>(arg_1, arg_1)))));
    var var_2 = Struct_1(!vec3<bool>(all(select(vec4<bool>(arg_1, arg_1, arg_3, false), vec4<bool>(true, false, true, false), vec4<bool>(true, arg_3, arg_1, true))), true, select(var_0, u_input.b, false) > max(-1i, -46945i)), false, _wgslsmith_sub_u32(select(arg_0.x, ~min(12757u, arg_0.x), all(!vec3<bool>(false, false, arg_3))), abs(firstTrailingBit(~arg_0.x))), vec2<bool>(!(u_input.d.x > var_0) | arg_1, arg_1), -41163i);
    let var_3 = u_input.c.zz;
    let var_4 = !var_2.d;
    return Struct_1(select(var_2.a, var_2.a, var_1.x), false, ~0u, vec2<bool>(any(select(var_1.zx, var_1.yx, arg_1)), any(!select(var_2.a, var_2.a, var_2.a))), _wgslsmith_dot_vec2_i32(abs(~abs(var_3)), u_input.d.zx));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool, arg_3: f32) -> bool {
    let var_0 = vec2<bool>(any(select(!vec4<bool>(true, true, arg_2, arg_1.d.x), select(vec4<bool>(false, false, false, false), !vec4<bool>(arg_0.a.x, true, arg_2, arg_1.a.x), arg_1.b), select(!vec4<bool>(false, arg_1.b, false, true), select(vec4<bool>(arg_0.b, arg_0.d.x, arg_2, arg_0.d.x), vec4<bool>(arg_2, arg_0.b, false, arg_0.b), false), vec4<bool>(arg_2, arg_1.d.x, arg_1.d.x, arg_2)))), !(!arg_1.b) | any(arg_1.a));
    let var_1 = _wgslsmith_f_op_f32(sign(arg_3));
    let var_2 = _wgslsmith_div_f32(-1395f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_1 - -1000f))));
    let var_3 = select(~max(vec2<u32>(11112u, arg_0.c | 33225u), vec2<u32>(~arg_1.c, 1u)), min(~(~(~vec2<u32>(1u, 39227u))), _wgslsmith_clamp_vec2_u32(abs(~vec2<u32>(arg_1.c, arg_0.c)), firstLeadingBit(vec2<u32>(1u, 4294967295u)) << (vec2<u32>(arg_1.c, 28834u) % vec2<u32>(32u)), ~_wgslsmith_div_vec2_u32(vec2<u32>(arg_0.c, arg_1.c), vec2<u32>(arg_1.c, 0u)))), true);
    let var_4 = func_2(-2147483647i, Struct_2(-1i, _wgslsmith_dot_vec3_i32(u_input.d, abs(u_input.c.wxz)) >> (var_3.x % 32u)));
    return !all(vec4<bool>(true, false, false, 10148u < firstLeadingBit(var_3.x)));
}

fn func_5(arg_0: f32, arg_1: Struct_1, arg_2: Struct_2, arg_3: Struct_1) -> Struct_1 {
    let var_0 = arg_1.c;
    var var_1 = select(any(!(!select(vec4<bool>(false, false, arg_3.a.x, arg_3.d.x), vec4<bool>(arg_1.d.x, arg_1.d.x, arg_3.d.x, arg_3.a.x), arg_1.d.x))), !select(arg_1.d.x, !arg_3.a.x, all(!vec4<bool>(arg_3.b, arg_1.b, true, false))), arg_1.d.x);
    var var_2 = _wgslsmith_add_i32(reverseBits(abs(u_input.b) & _wgslsmith_clamp_i32(1i, _wgslsmith_add_i32(arg_3.e, u_input.d.x), 1i)), 40931i);
    var_2 = reverseBits(firstTrailingBit(_wgslsmith_add_i32(abs(0i), ~arg_1.e)) << (firstTrailingBit(select(_wgslsmith_div_u32(4294967295u, arg_3.c), arg_3.c, false)) % 32u));
    let var_3 = func_1(firstLeadingBit(_wgslsmith_add_vec2_u32(abs(vec2<u32>(var_0, 14312u) << (vec2<u32>(var_0, arg_3.c) % vec2<u32>(32u))), _wgslsmith_add_vec2_u32(firstTrailingBit(vec2<u32>(arg_3.c, 4294967295u)), _wgslsmith_clamp_vec2_u32(vec2<u32>(arg_3.c, 4294967295u), vec2<u32>(arg_1.c, 23384u), vec2<u32>(1u, var_0))))), arg_3.c < (arg_1.c ^ _wgslsmith_mod_u32(_wgslsmith_mod_u32(78704u, arg_1.c), max(arg_3.c, 4294967295u))), 1133f, !(2365u < _wgslsmith_div_u32(arg_3.c, _wgslsmith_sub_u32(var_0, 60620u))));
    return func_1(abs(vec2<u32>(1u, ~30966u) & reverseBits(~vec2<u32>(49578u, var_0))), false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_0)) * _wgslsmith_f_op_f32(max(arg_0, arg_0))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(797f * arg_0))) + arg_0), !any(!func_1(vec2<u32>(arg_3.c, 44339u), var_3.b, -163f, arg_3.d.x).d));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(_wgslsmith_f_op_f32(-972f + -948f), Struct_1(vec3<bool>(!(u_input.d.x > 29482i), func_4(func_1(vec2<u32>(45570u, 0u), false, -2671f, false), func_1(vec2<u32>(4294967295u, 0u), false, -1379f, true), false, _wgslsmith_f_op_f32(185f - -1200f)), true), true, ~_wgslsmith_div_u32(1u, ~0u), vec2<bool>(true, true), func_3(1u >> (select(29556u, 50799u, true) % 32u), vec3<f32>(1f, 1f, 1f), Struct_2(func_1(vec2<u32>(1u, 4294967295u), true, -1004f, false).e, firstLeadingBit(u_input.b)), Struct_2(u_input.c.x, -8281i))), func_2(u_input.d.x, Struct_2(abs(-2147483647i & u_input.d.x), 1i | u_input.b)), Struct_1(vec3<bool>(false, all(func_1(vec2<u32>(1u, 12475u), true, 610f, false).a), true), func_1(_wgslsmith_sub_vec2_u32(vec2<u32>(0u, 29465u), _wgslsmith_div_vec2_u32(vec2<u32>(5681u, 1u), vec2<u32>(4294967295u, 1u))), func_1(~vec2<u32>(37666u, 0u), true, -1498f, true).b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -293f)), true).b, 16204u, func_1(firstTrailingBit(~vec2<u32>(89818u, 1u)), true != func_1(vec2<u32>(0u, 1u), true, 407f, true).b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(223f))), true).d, max(abs(u_input.c.x) >> (0u % 32u), ~1i)));
    var_0 = func_1(reverseBits(vec2<u32>(~(~var_0.c), 73746u)), false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -259f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-850f, 426f))))), var_0.d.x);
    var var_1 = min(_wgslsmith_sub_vec3_u32(max(countOneBits(_wgslsmith_mult_vec3_u32(vec3<u32>(1u, 18769u, 9917u), vec3<u32>(var_0.c, var_0.c, 4294967295u))), vec3<u32>(~var_0.c, _wgslsmith_sub_u32(var_0.c, var_0.c), ~var_0.c)), countOneBits(vec3<u32>(_wgslsmith_mult_u32(var_0.c, 32610u), ~var_0.c, firstLeadingBit(var_0.c)))), firstTrailingBit(_wgslsmith_div_vec3_u32(vec3<u32>(1u, var_0.c, ~0u), _wgslsmith_clamp_vec3_u32(vec3<u32>(1u, var_0.c, 4294967295u), vec3<u32>(0u, var_0.c, var_0.c), ~vec3<u32>(56278u, 4294967295u, var_0.c)))));
    var var_2 = select(var_0.b, all(vec3<bool>(false, true, true)), func_1(~(var_1.xz << (~vec2<u32>(var_1.x, var_0.c) % vec2<u32>(32u))), false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-849f + 520f)) - _wgslsmith_f_op_f32(-334f + _wgslsmith_div_f32(-365f, -101f))), var_0.b).a.x);
    var var_3 = ~(~select(~var_1.xy ^ select(vec2<u32>(var_0.c, var_1.x), var_1.yx, var_0.a.xy), abs(var_1.yz), var_0.d));
    let var_4 = func_2(~1i, Struct_2(countOneBits(-func_2(15791i, Struct_2(-14399i, var_0.e)).b), -2147483647i << (min(0u, _wgslsmith_add_u32(87597u, 42943u)) % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(min(-669f, _wgslsmith_f_op_f32(-218f + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(-1000f, 1324f))))))));
}

