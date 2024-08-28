struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: i32,
    d: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: vec4<f32>,
    d: i32,
    e: vec4<bool>,
}

struct Struct_4 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: bool,
    e: Struct_1,
}

struct Struct_5 {
    a: u32,
    b: i32,
    c: bool,
    d: Struct_3,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec3<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
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

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec4<bool>, arg_2: vec4<bool>, arg_3: Struct_3) -> bool {
    global0 = !(!select(select(select(vec2<bool>(false, true), arg_1.zz, arg_3.e.x), vec2<bool>(arg_3.e.x, global0.x), global0.x), !arg_2.yx, (-8901i <= arg_0.x) && false));
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(arg_3.b.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.b.c)))), arg_3.c.x) * 312f);
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(arg_3.b.c)))), _wgslsmith_f_op_f32(ceil(1061f))));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(arg_3.c.ww - _wgslsmith_f_op_vec2_f32(trunc(arg_3.c.yz)))))));
    var_1 = _wgslsmith_f_op_vec2_f32(-arg_3.c.xz);
    return _wgslsmith_f_op_f32(ceil(-2836f)) >= _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x * 379f) * 1990f)));
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_5(~(~countOneBits(countOneBits(0u))), _wgslsmith_mult_i32(firstLeadingBit(-1i), u_input.a.x), any(vec2<bool>(global0.x, func_3(vec2<i32>(-18265i, u_input.a.x), !vec4<bool>(global0.x, global0.x, false, true), vec4<bool>(global0.x, true, true, false), Struct_3(1220f, Struct_1(vec3<i32>(72355i, u_input.a.x, -32440i), global0.x, -1117f), vec4<f32>(1000f, -334f, -1151f, -832f), u_input.a.x, vec4<bool>(global0.x, global0.x, global0.x, true))))), Struct_3(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-347f - 1306f))), Struct_1(reverseBits(vec3<i32>(u_input.a.x, 18260i, u_input.a.x)), true, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-2049f + 1000f)))), vec4<f32>(_wgslsmith_f_op_f32(round(1199f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1962f) + 1151f), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-598f, 1612f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -549f), _wgslsmith_f_op_f32(498f + 290f)))), u_input.a.x, !vec4<bool>(all(vec4<bool>(true, false, global0.x, true)), global0.x, false, !global0.x)), Struct_3(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -582f))))), Struct_1(u_input.a.ywz, !any(vec3<bool>(global0.x, false, global0.x)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1052f, -1000f) + _wgslsmith_f_op_f32(trunc(215f)))), vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_mult_i32(_wgslsmith_div_i32(44946i, u_input.a.x), -2147483647i), !(!(!vec4<bool>(true, global0.x, global0.x, true)))));
    global0 = vec2<bool>(func_3(u_input.a.yx, var_0.e.e, vec4<bool>((global0.x && global0.x) | (var_0.a >= var_0.a), global0.x, var_0.d.b.b, all(vec2<bool>(true, true))), var_0.d), var_0.a == min(var_0.a, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 40390u), min(vec2<u32>(1u, 38352u), vec2<u32>(4294967295u, var_0.a)))));
    let var_1 = Struct_3(var_0.d.c.x, var_0.e.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(var_0.e.c))))), -max(~1i, _wgslsmith_dot_vec3_i32(u_input.a.xxz, var_0.d.b.a)), select(!select(!vec4<bool>(var_0.e.b.b, true, global0.x, var_0.e.e.x), vec4<bool>(global0.x, var_0.c, true, false), vec4<bool>(var_0.d.b.b, var_0.c, true, var_0.d.b.b)), var_0.d.e, vec4<bool>(true, (var_0.c & false) & global0.x, !var_0.d.b.b, false)));
    let var_2 = Struct_4(Struct_1(reverseBits(var_1.b.a | vec3<i32>(9091i, u_input.a.x, 60839i)), any(var_0.d.e.xy), var_1.a), var_1.b.b, Struct_1(var_1.b.a, true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(var_0.d.b.c, 606f)), -436f)) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(302f * -597f))))), any(var_1.e.xwx), Struct_1(_wgslsmith_mult_vec3_i32(reverseBits(var_0.d.b.a) ^ -vec3<i32>(u_input.a.x, -2147483647i, 1i), var_0.d.b.a), var_0.d.b.a.x == _wgslsmith_dot_vec2_i32(u_input.a.xy, vec2<i32>(-41350i, 0i)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a * var_0.e.a)), var_1.a))));
    let var_3 = _wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(65639u, 58975u, var_0.a, 1u), reverseBits(vec4<u32>(66608u, 4294967295u, var_0.a, var_0.a)), ~vec4<u32>(33497u, 0u, var_0.a, 9086u)) << (countOneBits(~vec4<u32>(var_0.a, var_0.a, 27428u, var_0.a)) % vec4<u32>(32u)), ~abs(vec4<u32>(var_0.a, var_0.a, 4294967295u, var_0.a)) >> (_wgslsmith_sub_vec4_u32(~vec4<u32>(1u, var_0.a, 51659u, 1u), _wgslsmith_add_vec4_u32(vec4<u32>(54271u, var_0.a, var_0.a, 0u), vec4<u32>(0u, var_0.a, 57510u, var_0.a))) % vec4<u32>(32u))), min(~(max(vec4<u32>(4294967295u, var_0.a, var_0.a, 1u), vec4<u32>(4294967295u, var_0.a, 11285u, 0u)) & vec4<u32>(4294967295u, var_0.a, 4294967295u, 4294967295u)), vec4<u32>(8874u, ~(~var_0.a), ~(~13956u), ~(~7246u))));
    return var_2.c;
}

fn func_1(arg_0: u32) -> u32 {
    var var_0 = !vec2<bool>(!(!global0.x), (_wgslsmith_sub_u32(arg_0, arg_0) | reverseBits(1u)) >= 72511u);
    var var_1 = func_2();
    let var_2 = Struct_4(Struct_1(~u_input.a.xxy, var_0.x, func_2().c), all(select(vec2<bool>(var_0.x & var_1.b, global0.x), vec2<bool>(u_input.a.x >= u_input.a.x, true), any(!vec4<bool>(var_0.x, global0.x, false, false)))), func_2(), true, func_2());
    let var_3 = u_input.a;
    let var_4 = Struct_1(u_input.a.wxw, any(select(select(select(vec3<bool>(var_1.b, var_0.x, false), vec3<bool>(true, var_1.b, true), global0.x), !vec3<bool>(true, var_2.c.b, true), true), vec3<bool>(true, false, all(vec4<bool>(var_1.b, var_0.x, var_1.b, true))), vec3<bool>(true, false & var_2.d, true))), -567f);
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~_wgslsmith_dot_vec4_u32(~(~_wgslsmith_mult_vec4_u32(vec4<u32>(3172u, 31261u, 90438u, 18439u), vec4<u32>(10159u, 67437u, 38126u, 1u))), vec4<u32>(1u, ~(~34919u), 4294967295u, func_1(3568u)));
    var var_1 = !select(select(select(!vec4<bool>(global0.x, global0.x, global0.x, false), vec4<bool>(true, true, false, global0.x), true), select(select(vec4<bool>(true, global0.x, global0.x, false), vec4<bool>(true, true, global0.x, true), vec4<bool>(global0.x, global0.x, true, global0.x)), select(vec4<bool>(global0.x, false, false, false), vec4<bool>(true, global0.x, global0.x, true), vec4<bool>(false, true, false, global0.x)), !vec4<bool>(false, global0.x, false, global0.x)), select(vec4<bool>(global0.x, false, true, true), vec4<bool>(true, true, global0.x, false), vec4<bool>(global0.x, false, true, global0.x))), vec4<bool>(true, true, all(vec2<bool>(global0.x, global0.x)), global0.x), !vec4<bool>(global0.x, true, true, true));
    var_1 = !vec4<bool>(all(select(select(vec4<bool>(var_1.x, global0.x, global0.x, var_1.x), vec4<bool>(global0.x, false, var_1.x, false), vec4<bool>(var_1.x, global0.x, false, var_1.x)), !vec4<bool>(false, false, var_1.x, global0.x), !global0.x)), false, -(u_input.a.x ^ u_input.a.x) > u_input.a.x, true);
    var_1 = select(!vec4<bool>(true, true, global0.x, true), select(vec4<bool>(true, var_1.x, var_1.x && true, global0.x), vec4<bool>(true, true, true, true), false), vec4<bool>(var_1.x, var_1.x, all(select(!vec4<bool>(global0.x, global0.x, var_1.x, var_1.x), !vec4<bool>(var_1.x, global0.x, true, global0.x), !vec4<bool>(false, true, var_1.x, true))), all(!vec2<bool>(global0.x, false))));
    var_0 = min(34600u, ~max(1u, 1u));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_dot_vec3_u32(~vec3<u32>(2296u, 4294967295u, 1u) | firstTrailingBit(vec3<u32>(1680u, 4294967295u, 1u)), _wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 0u, 4294967295u), vec3<u32>(4294967295u, 58899u, 1u)) << (select(vec3<u32>(46852u, 31285u, 43474u), vec3<u32>(1u, 60586u, 58912u), false) % vec3<u32>(32u))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(529f, func_2().c, select(false, global0.x, var_1.x)))), 872f, !any(select(vec4<bool>(true, global0.x, true, global0.x), vec4<bool>(true, var_1.x, true, var_1.x), true)))), vec3<i32>(10925i, u_input.a.x, -_wgslsmith_sub_i32(_wgslsmith_sub_i32(u_input.a.x, u_input.a.x), 43902i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-456f, -660f))) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(2429f, -313f))))) * _wgslsmith_f_op_f32(ceil(-498f))));
}

