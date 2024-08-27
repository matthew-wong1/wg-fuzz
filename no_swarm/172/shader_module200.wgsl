struct Struct_1 {
    a: i32,
    b: vec4<bool>,
    c: u32,
    d: i32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: Struct_1,
    d: u32,
    e: vec2<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<bool>,
    c: vec2<bool>,
}

struct Struct_4 {
    a: f32,
    b: bool,
    c: vec4<f32>,
}

struct Struct_5 {
    a: vec2<bool>,
    b: vec2<f32>,
    c: bool,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: vec4<f32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
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

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32, arg_1: f32, arg_2: Struct_1) -> bool {
    return !all(select(vec3<bool>(any(arg_2.b), true, true), select(vec3<bool>(true, arg_2.b.x, arg_2.b.x), arg_2.b.yxz, vec3<bool>(arg_2.b.x, arg_2.b.x, false)), arg_2.b.wyx));
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_div_u32(u_input.c.x, u_input.b.x);
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -144f) + 1f))), -2004f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(587f)) * _wgslsmith_f_op_f32(919f + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1000f - 861f), _wgslsmith_f_op_f32(sign(-241f)), true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(210f)), -810f, all(vec4<bool>(true, false, true, true)))))) + -937f));
    var var_2 = Struct_5(vec2<bool>(all(vec4<bool>(true, true, true, true)), false), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(var_1.x - -1600f), _wgslsmith_f_op_f32(ceil(-363f)))), true, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.ww)));
    var var_3 = Struct_1(u_input.a, !vec4<bool>(func_3(_wgslsmith_f_op_f32(f32(-1f) * -2595f), var_1.x, Struct_1(-84924i, vec4<bool>(var_2.c, false, true, true), u_input.c.x, 38579i)), false, var_2.a.x, true), _wgslsmith_mod_u32(~40088u, u_input.b.x), u_input.a);
    var_0 = ~u_input.b.x;
    return Struct_1(0i, vec4<bool>(any(select(!vec2<bool>(var_3.b.x, var_3.b.x), var_3.b.zy, var_3.b.yz)), var_2.c != !(!var_3.b.x), func_3(-3091f, 133f, Struct_1(~u_input.d, var_3.b, u_input.c.x, ~var_3.d)), all(!vec2<bool>(var_3.b.x, var_2.c)) | func_3(_wgslsmith_f_op_f32(-var_1.x), 580f, Struct_1(u_input.d, var_3.b, 0u, u_input.d))), ~(u_input.c.x & ~1u), var_3.d);
}

fn func_1(arg_0: f32) -> Struct_2 {
    return Struct_2(!select(vec2<bool>(all(vec3<bool>(false, false, true)), true), vec2<bool>(true, true), true), func_2(), Struct_1(u_input.a, !select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), true), ~24949u, min(_wgslsmith_dot_vec2_i32(~vec2<i32>(-29773i, -50240i), firstLeadingBit(vec2<i32>(u_input.d, 9448i))), -u_input.a)), 1u, _wgslsmith_clamp_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(2147483647i, 1i), abs(vec2<i32>(u_input.a, u_input.d))), ~vec2<i32>(u_input.d, -1i), select(abs(vec2<i32>(-5844i, u_input.a)), vec2<i32>(25336i, u_input.a), select(vec2<bool>(true, true), vec2<bool>(false, true), false))) & _wgslsmith_div_vec2_i32(~(-vec2<i32>(u_input.d, -35686i)), vec2<i32>(u_input.a, max(1i, u_input.d))));
}

fn func_4(arg_0: Struct_3, arg_1: vec4<i32>, arg_2: vec4<i32>, arg_3: Struct_4) -> vec4<u32> {
    var var_0 = arg_3.b;
    var_0 = false;
    var var_1 = Struct_3(func_1(690f), func_1(_wgslsmith_f_op_f32(-arg_3.a)).c.b.yzy, arg_0.a.a);
    var_1 = arg_0;
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(arg_3.c.xy)) - _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_3.c.wy - vec2<f32>(-1455f, -1048f))))))));
    return vec4<u32>(4294967295u, 4294967295u, ~(~firstTrailingBit(func_2().c)), ~arg_0.a.b.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(u_input.b, func_4(Struct_3(func_1(-950f), func_1(2054f).c.b.wwx, vec2<bool>(select(false, false, false), true)), -(vec4<i32>(u_input.a, u_input.d, u_input.a, 2147483647i) >> (~vec4<u32>(0u, 0u, u_input.c.x, 4294967295u) % vec4<u32>(32u))), _wgslsmith_div_vec4_i32(-vec4<i32>(u_input.d, u_input.d, u_input.a, -2147483647i), ~vec4<i32>(u_input.d, 966i, 0i, u_input.a)) << (~(u_input.b >> (u_input.b % vec4<u32>(32u))) % vec4<u32>(32u)), Struct_4(570f, all(vec4<bool>(true, true, true, true)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(vec4<f32>(1442f, -524f, -625f, 795f), vec4<f32>(1272f, 292f, 163f, 887f)))))), select(!func_1(_wgslsmith_f_op_f32(f32(-1f) * -376f)).b.b, func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-559f, -134f)))).c.b, !select(func_1(-1000f).c.b, select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, true), false), func_1(146f).a.x)));
    let var_1 = -256f;
    var var_2 = Struct_4(1021f, -2147483647i < reverseBits(-_wgslsmith_sub_i32(u_input.d, u_input.d)), vec4<f32>(_wgslsmith_f_op_f32(abs(var_1)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(var_1)), 606f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_1, 600f))), _wgslsmith_f_op_f32(-var_1)));
    var var_3 = func_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-207f)) - _wgslsmith_div_f32(var_2.c.x, var_1)))))).c;
    let var_4 = _wgslsmith_div_vec3_u32(vec3<u32>(1u, 26933u, ~(~(var_3.c << (4294967295u % 32u)))), var_0.wyy);
    let var_5 = Struct_1(_wgslsmith_add_i32(i32(-1i) * -1i, ~u_input.a), vec4<bool>(func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1529f, 311f)) + _wgslsmith_f_op_f32(round(var_2.c.x))), 708f, func_2()), _wgslsmith_mult_i32(-1i, 1i << (var_4.x % 32u)) <= _wgslsmith_dot_vec2_i32(vec2<i32>(-18638i, var_3.d), max(vec2<i32>(-1i, var_3.a), vec2<i32>(var_3.d, var_3.a))), !var_2.b, var_3.b.x), ~4025u, 10983i);
    let var_6 = firstLeadingBit(vec3<u32>(4294967295u, 4427u, var_5.c));
    var_3 = func_2();
    var_3 = Struct_1(_wgslsmith_sub_i32(_wgslsmith_mod_i32(i32(-1i) * -38862i, -20438i) >> (var_6.x % 32u), var_3.a), var_5.b, ~(~112584u), 1i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -783f), var_2.c.zxy, vec4<f32>(_wgslsmith_f_op_f32(min(1073f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-430f, var_1))))), var_2.a, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(var_2.c.x, _wgslsmith_div_f32(var_1, var_2.a))), _wgslsmith_f_op_f32(select(-2364f, _wgslsmith_f_op_f32(f32(-1f) * -847f), var_2.b || false)))), _wgslsmith_f_op_f32(floor(182f))), _wgslsmith_add_vec3_i32(vec3<i32>(max(_wgslsmith_clamp_i32(var_5.d, var_5.d, -11426i), countOneBits(-1i)), _wgslsmith_sub_i32(0i, min(-1i, -2147483647i)), var_3.d), _wgslsmith_sub_vec3_i32(-_wgslsmith_sub_vec3_i32(vec3<i32>(2103i, var_5.a, 39002i), vec3<i32>(-5785i, 7000i, u_input.d)), vec3<i32>(2147483647i, ~(-6980i), u_input.a))));
}

