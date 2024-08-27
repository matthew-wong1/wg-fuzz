struct Struct_1 {
    a: vec2<f32>,
    b: vec3<i32>,
    c: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: Struct_1,
    d: vec3<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<bool>,
    c: i32,
    d: u32,
    e: f32,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
    d: Struct_1,
    e: i32,
}

struct Struct_5 {
    a: vec3<f32>,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: bool) -> vec4<i32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_0.a.x, 2732f, global0.a.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a.x, global0.a.x, global0.a.x)) * vec3<f32>(1502f, 1000f, 1169f)))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a.x, arg_0.a.x, 1000f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(347f, -2262f, -538f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a.x, -360f, 259f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1066f, 402f, global0.a.x))), arg_0.c))))));
    var var_1 = Struct_3(Struct_2(arg_0, global0.c, Struct_1(_wgslsmith_f_op_vec2_f32(arg_0.a * vec2<f32>(-1134f, global0.a.x)), -_wgslsmith_mod_vec3_i32(arg_0.b, vec3<i32>(global0.b.x, 2147483647i, -27175i)), !arg_0.c), max(vec3<i32>(-u_input.a.x, _wgslsmith_clamp_i32(u_input.a.x, global0.b.x, -1i), abs(u_input.a.x)), global0.b)), !(!select(vec4<bool>(false, arg_0.c.x, arg_1, arg_0.c.x), vec4<bool>(false, arg_0.c.x, false, true), !vec4<bool>(arg_0.c.x, false, true, false))), arg_0.b.x, ~1u, arg_0.a.x);
    var var_2 = Struct_4(Struct_1(vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1277f - var_0.x))), _wgslsmith_f_op_f32(select(var_0.x, global0.a.x, all(var_1.b)))), arg_0.b, vec3<bool>(!arg_0.c.x, true, !select(arg_1, var_1.b.x, false))), arg_0, _wgslsmith_clamp_i32(0i, var_1.a.d.x, -(~firstLeadingBit(-2147483647i))), Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-arg_0.a), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-515f, var_0.x)))), var_0.yz), ~vec3<i32>(-78789i, 1i, arg_0.b.x), select(select(select(vec3<bool>(true, false, false), var_1.b.zzz, true), !vec3<bool>(false, arg_0.c.x, true), true), !vec3<bool>(var_1.b.x, arg_0.c.x, arg_0.c.x), any(arg_0.c))), ~(-reverseBits(reverseBits(0i))));
    global0 = Struct_1(vec2<f32>(-1000f, var_2.b.a.x), vec3<i32>(~1i, arg_0.b.x, -81443i), vec3<bool>(true && var_1.a.a.c.x, var_2.a.a.x < var_1.e, all(select(var_1.b, vec4<bool>(false, global0.c.x, var_1.b.x, false), var_1.b))));
    global0 = var_2.b;
    return vec4<i32>(_wgslsmith_div_i32(16591i, -6481i), global0.b.x >> (reverseBits(_wgslsmith_add_u32(~1u, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 35627u, var_1.d), vec3<u32>(var_1.d, var_1.d, 4294967295u)))) % 32u), ~62992i, -1i);
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_4, arg_2: u32, arg_3: vec3<i32>) -> vec3<i32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1576f, arg_1.d.a.x, -1116f, 660f)) - _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a.x, arg_1.b.a.x, global0.a.x, 1880f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(554f, -897f, 591f, arg_1.d.a.x) + vec4<f32>(-1618f, arg_1.a.a.x, 620f, 1752f)))))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.a.a.x, -311f, 959f, 210f))) * _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1427f, -509f, 356f, 2102f), vec4<f32>(global0.a.x, -1021f, global0.a.x, global0.a.x)))))), vec4<f32>(_wgslsmith_f_op_f32(-global0.a.x), _wgslsmith_f_op_f32(f32(-1f) * -1984f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_1.b.a.x), 2250f)), global0.a.x)));
    let var_1 = _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(-arg_1.a.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global0.a.x)) - var_0.x) * arg_1.b.a.x), global0.a.x)));
    let var_2 = reverseBits(~(_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 28580u, arg_2, 0u), ~vec4<u32>(arg_2, 4294967295u, 1u, arg_2)) ^ _wgslsmith_mod_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(47984u, arg_2, 20950u, arg_2), vec4<u32>(arg_2, arg_2, 4633u, 0u)), _wgslsmith_mod_vec4_u32(vec4<u32>(arg_2, arg_2, 0u, arg_2), vec4<u32>(arg_2, arg_2, arg_2, 2407u)))));
    var var_3 = _wgslsmith_mult_u32(_wgslsmith_div_u32(1u, 64525u), 59032u);
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_1.x, global0.a.x, 878f, arg_1.b.a.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_1.x, 1000f, 1478f)))), vec4<f32>(var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -320f) + _wgslsmith_f_op_f32(-413f + -954f)), _wgslsmith_f_op_f32(max(var_0.x, arg_1.b.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -254f)), select(!(!vec4<bool>(global0.c.x, false, true, true)), vec4<bool>(all(vec2<bool>(true, false)), !arg_1.b.c.x, false, false), true))));
    return ~(-(~arg_0.zwz));
}

fn func_2() -> Struct_5 {
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(exp2(global0.a)), -vec3<i32>(-15132i, ~0i, global0.b.x), vec3<bool>(true, global0.c.x, !select(true, global0.c.x, true))), vec3<bool>(false, global0.c.x, global0.a.x != 572f), Struct_1(global0.a, func_4(func_3(Struct_1(vec2<f32>(global0.a.x, global0.a.x), vec3<i32>(u_input.a.x, global0.b.x, 34568i), global0.c), global0.c.x), Struct_4(Struct_1(vec2<f32>(global0.a.x, -147f), global0.b, vec3<bool>(true, global0.c.x, global0.c.x)), Struct_1(global0.a, global0.b, vec3<bool>(true, false, true)), _wgslsmith_mod_i32(global0.b.x, -24705i), Struct_1(global0.a, vec3<i32>(global0.b.x, 0i, global0.b.x), global0.c), -37340i >> (1u % 32u)), ~(~0u), vec3<i32>(~(-2147483647i), -u_input.a.x, u_input.a.x)), !vec3<bool>(any(vec3<bool>(global0.c.x, global0.c.x, global0.c.x)), any(vec2<bool>(true, false)), select(true, global0.c.x, global0.c.x))), vec3<i32>(abs(abs(-34888i)), -3559i, 0i));
    var_0 = Struct_2(var_0.a, var_0.b, Struct_1(vec2<f32>(var_0.a.a.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(931f))))), _wgslsmith_add_vec3_i32(abs(countOneBits(vec3<i32>(-46903i, 6708i, -38558i))), reverseBits(vec3<i32>(global0.b.x, global0.b.x, u_input.a.x))), !(!vec3<bool>(true, true, var_0.a.c.x))), ~var_0.a.b);
    var var_1 = Struct_4(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(global0.a)))), global0.b, vec3<bool>(false, select(-30298i >= var_0.a.b.x, true, false), !(true | var_0.b.x))), Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(select(var_0.a.a.x, -826f, var_0.b.x)), _wgslsmith_div_f32(var_0.a.a.x, var_0.c.a.x)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.a.x, -1000f))), _wgslsmith_div_vec3_i32(vec3<i32>(0i, _wgslsmith_dot_vec2_i32(u_input.a, global0.b.yx), 1i ^ global0.b.x), var_0.c.b), global0.c), _wgslsmith_clamp_i32(~firstTrailingBit(global0.b.x), 15615i, abs(u_input.a.x)), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 2337f))), vec3<i32>(_wgslsmith_clamp_i32(_wgslsmith_mult_i32(u_input.a.x, global0.b.x), _wgslsmith_div_i32(18328i, var_0.a.b.x), -u_input.a.x), global0.b.x, -u_input.a.x), vec3<bool>(all(select(vec4<bool>(true, global0.c.x, var_0.b.x, false), vec4<bool>(false, var_0.a.c.x, var_0.c.c.x, true), vec4<bool>(var_0.a.c.x, false, true, var_0.b.x))), any(!vec4<bool>(var_0.a.c.x, true, global0.c.x, global0.c.x)), var_0.c.c.x)), 0i);
    var var_2 = !(!var_0.b.zx);
    var_1 = Struct_4(var_0.c, Struct_1(global0.a, _wgslsmith_div_vec3_i32(vec3<i32>(~var_1.e, ~u_input.a.x, var_1.e), vec3<i32>(-7704i, u_input.a.x, global0.b.x) ^ var_0.a.b), var_1.b.c), _wgslsmith_sub_i32(reverseBits(i32(-1i) * -2147483647i), abs(u_input.a.x)), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(max(-786f, -369f)), _wgslsmith_f_op_f32(select(global0.a.x, 440f, var_1.a.c.x)))), ~(-vec3<i32>(global0.b.x, var_0.d.x, var_0.c.b.x) << (abs(vec3<u32>(0u, 17455u, 1u)) % vec3<u32>(32u))), vec3<bool>(true, var_0.a.c.x & global0.c.x, !var_0.a.c.x)), -(42772i >> (_wgslsmith_div_u32(~1u, firstTrailingBit(37672u)) % 32u)));
    return Struct_5(vec3<f32>(_wgslsmith_f_op_f32(abs(-721f)), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.a.a.x * global0.a.x), _wgslsmith_f_op_f32(max(812f, var_1.d.a.x))), 409f)), var_0.a.a.x), vec4<u32>(1u, 1u, 1u, 1u));
}

fn func_5(arg_0: Struct_5, arg_1: vec3<f32>, arg_2: vec3<u32>) -> vec2<f32> {
    var var_0 = false;
    var var_1 = Struct_2(Struct_1(arg_0.a.xz, vec3<i32>(-global0.b.x, ~func_4(vec4<i32>(-15837i, -11767i, 1i, 13034i), Struct_4(Struct_1(arg_0.a.xy, vec3<i32>(u_input.a.x, global0.b.x, u_input.a.x), global0.c), Struct_1(arg_0.a.yx, vec3<i32>(0i, global0.b.x, global0.b.x), global0.c), 5610i, Struct_1(global0.a, vec3<i32>(global0.b.x, -2147483647i, 1i), global0.c), global0.b.x), 15923u, vec3<i32>(u_input.a.x, 2147483647i, 1i)).x, -2147483647i), select(select(select(vec3<bool>(global0.c.x, global0.c.x, false), global0.c, false), vec3<bool>(true, true, true), vec3<bool>(global0.c.x, false, false)), select(global0.c, select(vec3<bool>(true, true, true), vec3<bool>(false, global0.c.x, true), vec3<bool>(true, global0.c.x, global0.c.x)), true), vec3<bool>(global0.c.x, !global0.c.x, global0.b.x > -9308i))), global0.c, Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(arg_1.yz * arg_1.zx), arg_1.xy, arg_0.b.x == arg_0.b.x))), vec3<i32>(~u_input.a.x, u_input.a.x, u_input.a.x), select(select(!vec3<bool>(global0.c.x, false, false), select(global0.c, global0.c, false), all(vec3<bool>(global0.c.x, global0.c.x, true))), global0.c, !(!vec3<bool>(global0.c.x, global0.c.x, true)))), vec3<i32>(_wgslsmith_mult_i32(min(_wgslsmith_div_i32(u_input.a.x, 0i), firstLeadingBit(global0.b.x)), global0.b.x), func_4(vec4<i32>(-1i) * -vec4<i32>(global0.b.x, 1i, 2147483647i, global0.b.x), Struct_4(Struct_1(vec2<f32>(-929f, arg_1.x), global0.b, global0.c), Struct_1(vec2<f32>(arg_0.a.x, 1000f), vec3<i32>(u_input.a.x, global0.b.x, global0.b.x), global0.c), 1i | global0.b.x, Struct_1(arg_1.xy, global0.b, vec3<bool>(true, false, true)), _wgslsmith_dot_vec3_i32(global0.b, vec3<i32>(1i, -29893i, -7698i))), arg_0.b.x, vec3<i32>(7945i, global0.b.x, _wgslsmith_dot_vec2_i32(vec2<i32>(global0.b.x, -36035i), vec2<i32>(global0.b.x, u_input.a.x)))).x, _wgslsmith_dot_vec3_i32(vec3<i32>(i32(-1i) * -13580i, global0.b.x, _wgslsmith_dot_vec2_i32(u_input.a, vec2<i32>(global0.b.x, -2147483647i))), global0.b)));
    var var_2 = abs(vec4<i32>(~abs(min(42801i, 16431i)), global0.b.x ^ -max(global0.b.x, u_input.a.x), u_input.a.x, ~30708i));
    var_2 = vec4<i32>(global0.b.x, 0i, min(var_2.x, var_2.x), i32(-1i) * -2147483647i);
    global0 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1125f, _wgslsmith_f_op_f32(abs(global0.a.x)))))), firstTrailingBit(-vec3<i32>(global0.b.x, 36945i, i32(-1i) * -15451i)), select(vec3<bool>(true, true, true), vec3<bool>(var_1.a.c.x, global0.c.x, !var_1.a.c.x), select(vec3<bool>(false, true, -1i > var_1.a.b.x), select(select(var_1.a.c, global0.c, global0.c.x), vec3<bool>(false, false, true), select(var_1.c.c, global0.c, var_1.b.x)), select(var_1.a.c, vec3<bool>(true, var_1.a.c.x, var_1.c.c.x), select(var_1.c.c.x, false, global0.c.x)))));
    return _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, arg_0.a.x));
}

fn func_6(arg_0: bool, arg_1: i32, arg_2: vec2<f32>) -> Struct_1 {
    var var_0 = max(vec4<u32>(68269u << (1u % 32u), 18945u, min(1u, 0u), func_2().b.x), vec4<u32>(min(_wgslsmith_dot_vec2_u32(~vec2<u32>(44442u, 4294967295u), countOneBits(vec2<u32>(49282u, 16108u))), ~1u), countOneBits(~firstTrailingBit(4294967295u)), _wgslsmith_dot_vec4_u32(vec4<u32>(24116u, 0u, 1u, 0u), select(vec4<u32>(0u, 0u, 0u, 14437u), vec4<u32>(27769u, 0u, 1u, 8629u), vec4<bool>(true, arg_0, false, true))) >> (_wgslsmith_mult_u32(25231u, ~4294967295u) % 32u), 1u));
    global0 = Struct_1(_wgslsmith_f_op_vec2_f32(func_5(Struct_5(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a.x, global0.a.x, arg_2.x)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a.x, -225f, arg_2.x))), vec4<u32>(~49428u, countOneBits(var_0.x), var_0.x, var_0.x)), vec3<f32>(_wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_f_op_f32(arg_2.x + _wgslsmith_f_op_f32(step(403f, -1106f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-1066f, global0.a.x)), 1050f)), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, var_0.x, 4294967295u), var_0.xzz, vec3<u32>(1u, var_0.x, 20552u)) | var_0.wxw)), vec3<i32>(~func_4(vec4<i32>(1i, 23569i, 0i, 1i), Struct_4(Struct_1(vec2<f32>(arg_2.x, 1000f), vec3<i32>(2147483647i, global0.b.x, -1i), vec3<bool>(global0.c.x, arg_0, global0.c.x)), Struct_1(arg_2, global0.b, vec3<bool>(true, false, false)), u_input.a.x, Struct_1(arg_2, vec3<i32>(global0.b.x, u_input.a.x, u_input.a.x), global0.c), arg_1), _wgslsmith_mult_u32(var_0.x, var_0.x), -vec3<i32>(arg_1, -9500i, arg_1)).x, countOneBits(-arg_1), _wgslsmith_sub_i32(_wgslsmith_add_i32(~global0.b.x, abs(global0.b.x)), -(i32(-1i) * -53054i))), !global0.c);
    let var_1 = _wgslsmith_dot_vec2_u32(~(vec2<u32>(4294967295u, abs(var_0.x)) >> (vec2<u32>(~11438u, ~6171u) % vec2<u32>(32u))), var_0.yx);
    let var_2 = !vec4<bool>(_wgslsmith_sub_i32(firstTrailingBit(0i), 11268i) != _wgslsmith_sub_i32(abs(global0.b.x), global0.b.x), arg_0, !(firstLeadingBit(var_0.x) == (var_0.x | 10015u)), any(select(vec3<bool>(global0.c.x, true, global0.c.x), global0.c, global0.c)) || !(!global0.c.x));
    let var_3 = func_2();
    return Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-func_2().a.x), _wgslsmith_f_op_vec2_f32(func_5(Struct_5(var_3.a, vec4<u32>(var_0.x, var_3.b.x, 1u, var_3.b.x)), vec3<f32>(678f, -1000f, global0.a.x), vec3<u32>(var_1, var_3.b.x, 8119u) & vec3<u32>(var_1, var_3.b.x, var_1))).x)), vec3<i32>(-countOneBits(global0.b.x) >> ((~1u >> (1u % 32u)) % 32u), u_input.a.x, arg_1), !select(var_2.yxw, vec3<bool>(-19212i == u_input.a.x, true, true), all(!vec2<bool>(arg_0, global0.c.x))));
}

fn func_1(arg_0: vec3<i32>, arg_1: bool, arg_2: Struct_5, arg_3: f32) -> vec3<i32> {
    global0 = Struct_1(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1284f, _wgslsmith_f_op_f32(arg_3 + arg_2.a.x))))), arg_0, !(!global0.c));
    var var_0 = -1691i;
    let var_1 = arg_2;
    let var_2 = func_6(global0.c.x, _wgslsmith_sub_i32(1i, _wgslsmith_mult_i32(20621i, 1i)), _wgslsmith_f_op_vec2_f32(func_5(func_2(), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(trunc(892f)), -1174f, _wgslsmith_f_op_f32(-2943f + var_1.a.x)))), ~arg_2.b.wyy)));
    let var_3 = u_input.a.x;
    return vec3<i32>(var_2.b.x, -firstTrailingBit(0i), arg_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a.x, -1302f, 560f))))), countOneBits(vec4<u32>(~143636u & _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 7447u, 47071u), vec3<u32>(33720u, 1u, 109978u)), 1u >> (_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(3024u, 0u)) % 32u), ~42975u >> (_wgslsmith_mod_u32(0u, 22341u) % 32u), ~(~4294967295u))));
    global0 = Struct_1(global0.a, -(_wgslsmith_div_vec3_i32(vec3<i32>(1i, u_input.a.x, global0.b.x), vec3<i32>(-3234i, 15931i, 1i) ^ global0.b) | _wgslsmith_mult_vec3_i32(func_1(global0.b, true, var_0, global0.a.x), vec3<i32>(global0.b.x, global0.b.x, -1i) ^ global0.b)), global0.c);
    var var_1 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(1i, global0.b.x ^ (reverseBits(-9648i) ^ (-7637i << (var_0.b.x % 32u)))), ~_wgslsmith_clamp_u32(reverseBits(var_0.b.x), var_0.b.x | var_0.b.x, ~1488u), var_0.b, _wgslsmith_f_op_f32(min(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.x - _wgslsmith_f_op_f32(-var_0.a.x))))));
}

