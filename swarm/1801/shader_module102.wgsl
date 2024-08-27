struct Struct_1 {
    a: bool,
    b: i32,
    c: u32,
    d: f32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec2<f32>,
    c: f32,
    d: vec4<i32>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<i32>,
    c: Struct_1,
    d: u32,
    e: vec2<f32>,
}

struct Struct_4 {
    a: bool,
    b: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: f32, arg_1: Struct_1) -> vec3<u32> {
    global0 = _wgslsmith_div_f32(-932f, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(arg_0, arg_0))));
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_0))) - _wgslsmith_f_op_f32(-arg_1.d));
    global0 = arg_1.d;
    var var_0 = Struct_4(arg_1.a, _wgslsmith_add_u32(_wgslsmith_clamp_u32(arg_1.c, 19399u, min(arg_1.c, u_input.a)) << (_wgslsmith_add_u32(1u, min(arg_1.c, 24980u)) % 32u), ~4294967295u ^ abs(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.c, 1u, arg_1.c), vec3<u32>(1u, 2552u, u_input.a)))));
    var_0 = Struct_4(!(!arg_1.a), u_input.a);
    return min(~_wgslsmith_clamp_vec3_u32(~vec3<u32>(51999u, 13243u, var_0.b) >> (~vec3<u32>(1181u, 61799u, arg_1.c) % vec3<u32>(32u)), select(vec3<u32>(arg_1.c, 39718u, arg_1.c), firstTrailingBit(vec3<u32>(76849u, 0u, 0u)), any(vec3<bool>(var_0.a, arg_1.a, var_0.a))), vec3<u32>(43455u >> (var_0.b % 32u), _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.b, 111714u), vec2<u32>(arg_1.c, 27649u)), _wgslsmith_div_u32(var_0.b, 39592u))), _wgslsmith_mod_vec3_u32(_wgslsmith_div_vec3_u32(_wgslsmith_clamp_vec3_u32(min(vec3<u32>(var_0.b, var_0.b, 36105u), vec3<u32>(arg_1.c, 0u, 1u)), vec3<u32>(var_0.b, u_input.a, var_0.b) & vec3<u32>(u_input.a, 1u, var_0.b), ~vec3<u32>(u_input.a, var_0.b, 8024u)), abs(vec3<u32>(var_0.b, arg_1.c, var_0.b))), vec3<u32>(arg_1.c, u_input.a, 70343u)));
}

fn func_2(arg_0: vec2<u32>) -> vec3<i32> {
    var var_0 = _wgslsmith_clamp_vec3_u32(select(firstLeadingBit(abs(vec3<u32>(41549u, arg_0.x, 47282u))), _wgslsmith_add_vec3_u32(func_3(_wgslsmith_f_op_f32(step(-1935f, 361f)), Struct_1(false, 13610i, 1u, -1547f)), _wgslsmith_div_vec3_u32(~vec3<u32>(arg_0.x, u_input.a, u_input.a), abs(vec3<u32>(0u, 51494u, arg_0.x)))), !any(vec3<bool>(false, false, false))), _wgslsmith_add_vec3_u32(vec3<u32>(arg_0.x, ~_wgslsmith_mult_u32(22938u, u_input.a), firstLeadingBit(~24907u)), ~min(~vec3<u32>(19633u, 26033u, arg_0.x), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, 14075u, 6929u), vec3<u32>(22159u, 0u, 5524u)))), vec3<u32>(1u, ~firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.x, 4294967295u, 0u), vec3<u32>(arg_0.x, u_input.a, arg_0.x))), _wgslsmith_add_u32(64029u, ~arg_0.x) >> (~_wgslsmith_add_u32(71354u, arg_0.x) % 32u)));
    let var_1 = select(vec3<bool>(false, any(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), true)), true), vec3<bool>(!(all(vec2<bool>(true, false)) | true), !(!all(vec3<bool>(true, false, false))), ((88793u << (u_input.a % 32u)) <= ~4294967295u) | (any(vec4<bool>(true, false, true, false)) && select(false, true, true))), true);
    let var_2 = Struct_1(true, select((i32(-1i) * -2147483647i) ^ _wgslsmith_dot_vec4_i32(-vec4<i32>(0i, -21205i, -2147483647i, -1i), vec4<i32>(76108i, -52257i, -11179i, 1i)), _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 31964i) >> (vec2<u32>(var_0.x, 30040u) % vec2<u32>(32u)), ~vec2<i32>(0i, 1i)), min(0i >> (0u % 32u), _wgslsmith_mult_i32(0i, -2147483647i))), true), 47606u, _wgslsmith_f_op_f32(1000f * -2337f));
    var var_3 = vec4<bool>(var_2.a, !(!select(var_2.a, true, false)), ~var_2.b < 15431i, true);
    var_3 = select(select(!(!vec4<bool>(var_1.x, true, true, var_1.x)), !(!(!vec4<bool>(false, var_3.x, var_1.x, true))), vec4<bool>(all(var_1.yz), true, true, !var_2.a | true)), select(!select(select(vec4<bool>(var_3.x, true, var_2.a, var_3.x), vec4<bool>(var_2.a, false, false, false), vec4<bool>(var_3.x, var_3.x, var_3.x, false)), vec4<bool>(true, true, true, true), true), select(select(!vec4<bool>(true, false, var_2.a, var_3.x), vec4<bool>(true, true, true, true), any(vec2<bool>(var_1.x, false))), !(!vec4<bool>(var_2.a, false, var_3.x, true)), !var_1.x), select(!vec4<bool>(var_2.a, var_2.a, true, true), !vec4<bool>(true, var_3.x, var_2.a, true), select(vec4<bool>(false, var_1.x, true, true), select(vec4<bool>(var_1.x, var_2.a, true, var_1.x), vec4<bool>(true, true, false, var_1.x), vec4<bool>(var_3.x, false, var_2.a, true)), vec4<bool>(var_1.x, false, true, false)))), var_1.x);
    return _wgslsmith_div_vec3_i32(vec3<i32>(_wgslsmith_clamp_i32(var_2.b, var_2.b, _wgslsmith_sub_i32(var_2.b, 1i) | (var_2.b << (1u % 32u))), 0i, -_wgslsmith_sub_i32(max(var_2.b, var_2.b), -2147483647i)), ~_wgslsmith_add_vec3_i32(_wgslsmith_mod_vec3_i32(firstLeadingBit(vec3<i32>(0i, 1i, 52373i)), _wgslsmith_sub_vec3_i32(vec3<i32>(var_2.b, var_2.b, var_2.b), vec3<i32>(-8087i, 1i, var_2.b))), vec3<i32>(1i, 0i, -51279i)));
}

fn func_1(arg_0: u32, arg_1: Struct_1, arg_2: Struct_4) -> vec2<bool> {
    global0 = _wgslsmith_f_op_f32(arg_1.d * arg_1.d);
    global0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1630f + arg_1.d)))))));
    var var_0 = vec4<u32>(arg_1.c, u_input.a, arg_0, abs(1u));
    var var_1 = func_2(_wgslsmith_sub_vec2_u32(abs(var_0.xy), ~_wgslsmith_sub_vec2_u32(_wgslsmith_mult_vec2_u32(var_0.yy, vec2<u32>(43039u, var_0.x)), max(var_0.zy, var_0.zz))));
    var var_2 = arg_1.d;
    return !(!(!select(!vec2<bool>(false, arg_2.a), select(vec2<bool>(false, false), vec2<bool>(true, true), arg_2.a), arg_2.a)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(!select(func_1(87454u, Struct_1(true, 0i, 1u, -1094f), Struct_4(true, u_input.a)), !select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true)), any(vec3<bool>(true, true, true))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(ceil(-224f)), 453f) + vec2<f32>(1f, 1f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(408f * -808f)), 1130f, true || all(vec4<bool>(true, false, true, false)))) * 680f), ~firstTrailingBit(vec4<i32>(11275i, 0i, 4196i, ~(-26051i))), Struct_1(true, 1i, 70136u, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -979f), _wgslsmith_f_op_f32(sign(798f)))));
    let var_1 = func_1(_wgslsmith_add_u32(1u ^ ~(~var_0.e.c), 0u), var_0.e, Struct_4(true, abs(var_0.e.c))).x;
    var var_2 = ~(~((_wgslsmith_dot_vec4_i32(var_0.d, vec4<i32>(40176i, 1i, 1i, -14174i)) & ~var_0.d.x) | var_0.e.b));
    let var_3 = Struct_3(Struct_1(var_1, _wgslsmith_mult_i32(firstLeadingBit(var_0.e.b), 0i), 4294967295u, -251f), ~var_0.d.zy, Struct_1(any(select(vec4<bool>(var_0.a.x, var_0.e.a, var_1, true), select(vec4<bool>(true, var_0.a.x, var_1, false), vec4<bool>(true, var_0.e.a, true, var_1), var_1), vec4<bool>(true, var_1, var_1, true))), -2147483647i, _wgslsmith_div_u32(var_0.e.c >> (~u_input.a % 32u), ~_wgslsmith_sub_u32(u_input.a, var_0.e.c)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(1000f)), -669f)), 1163u, vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(var_0.e.d, _wgslsmith_f_op_f32(-var_0.e.d)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-141f - -1034f) * var_0.b.x))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, var_0.e.d) * _wgslsmith_f_op_f32(297f * 1192f))))));
    var_2 = abs(var_0.d.x);
    let var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.e.d, 677f)), _wgslsmith_f_op_f32(round(1313f)))));
    let var_5 = vec2<u32>(4294967295u ^ _wgslsmith_div_u32(min(1u, var_0.e.c) | ~u_input.a, ~1u), var_3.a.c);
    var_0 = Struct_2(select(vec2<bool>(any(select(vec4<bool>(var_1, false, var_1, true), vec4<bool>(var_0.e.a, var_1, false, false), vec4<bool>(false, false, false, false))), false), select(!(!var_0.a), !var_0.a, var_0.a), vec2<bool>(true, var_0.e.a)), vec2<f32>(_wgslsmith_f_op_f32(-142f + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_4.x)))), _wgslsmith_f_op_f32(min(var_3.e.x, 1190f))), _wgslsmith_f_op_f32(exp2(var_0.c)), (var_0.d ^ ~(~var_0.d)) << (firstTrailingBit(~(vec4<u32>(1u, 48072u, 4294967295u, var_5.x) << (vec4<u32>(4294967295u, u_input.a, 4294967295u, var_3.d) % vec4<u32>(32u)))) % vec4<u32>(32u)), var_3.c);
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, vec3<u32>(abs(1u), 1u, var_0.e.c));
}

