struct Struct_1 {
    a: vec3<i32>,
    b: vec3<f32>,
    c: i32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec2<u32>,
    c: vec4<i32>,
    d: Struct_1,
    e: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: f32,
    d: f32,
    e: vec2<i32>,
}

struct Struct_4 {
    a: vec2<i32>,
    b: bool,
    c: Struct_3,
}

struct Struct_5 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec2<f32>(960f, 562f), vec2<u32>(10005u, 0u), vec4<i32>(2147483647i, 1i, 19686i, 45889i), Struct_1(vec3<i32>(1i, i32(-2147483648), 1i), vec3<f32>(-1449f, -931f, 1340f), 1i), false);

var<private> global1: Struct_4;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: bool, arg_1: vec4<u32>, arg_2: Struct_4) -> f32 {
    global0 = Struct_2(_wgslsmith_f_op_vec2_f32(-global1.c.a.b.yy), global0.b, global0.c ^ -global0.c, Struct_1(arg_2.c.a.a, _wgslsmith_f_op_vec3_f32(abs(global0.d.b)), countOneBits(31512i)), select(all(!(!vec3<bool>(global1.b, global1.b, arg_2.b))), global1.c.b, true));
    var var_0 = global0.d;
    let var_1 = Struct_3(Struct_1(-abs(~global0.c.xwx), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(global0.d.b.x, global1.c.a.b.x, 568f), vec3<f32>(arg_2.c.c, global1.c.c, -2547f))) + global1.c.a.b)), -2147483647i), !arg_0, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-216f, _wgslsmith_f_op_f32(ceil(-1000f)))) + global1.c.c), -153f), global1.c.d, _wgslsmith_sub_vec2_i32(-global1.c.e, var_0.a.xy));
    let var_2 = Struct_1(_wgslsmith_add_vec3_i32(-(~(-var_0.a)), _wgslsmith_mult_vec3_i32(arg_2.c.a.a, ~vec3<i32>(var_0.c, 54503i, global1.c.a.a.x))), vec3<f32>(var_0.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1035f))), global0.a.x), max(-25536i, -63132i) >> ((_wgslsmith_clamp_u32(_wgslsmith_mult_u32(u_input.a.x, arg_1.x), 22839u, 4294967295u) << (4294967295u % 32u)) % 32u));
    var var_3 = vec4<i32>(-1i, 20031i, global1.a.x, var_1.e.x) & ~_wgslsmith_add_vec4_i32(vec4<i32>(~var_0.a.x, _wgslsmith_sub_i32(-2147483647i, var_2.c), arg_2.a.x, _wgslsmith_div_i32(-2147483647i, var_2.c)), min(global0.c, vec4<i32>(var_2.c, global1.a.x, 2147483647i, 1i)));
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global1.c.a.b.x)) - 1607f), _wgslsmith_div_f32(var_1.a.b.x, _wgslsmith_f_op_f32(floor(1400f)))));
}

fn func_2() -> u32 {
    let var_0 = global0.c;
    global0 = Struct_2(vec2<f32>(842f, _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(global0.e, vec4<u32>(0u, 27060u, 32375u, global0.b.x), Struct_4(var_0.zz, false, Struct_3(global0.d, global0.e, global0.a.x, -1668f, var_0.zx)))), 3042f), 1176f)), abs(global0.b), ~(~countOneBits(abs(vec4<i32>(-2147483647i, global1.a.x, -2207i, global1.c.a.a.x)))), global0.d, true);
    global1 = Struct_4(min(global1.c.e, vec2<i32>(global0.c.x, 88058i)), ~4294967295u != select(~u_input.a.x << (global0.b.x % 32u), abs(~48841u), global1.b), global1.c);
    global0 = Struct_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(-895f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-745f - global0.d.b.x) * _wgslsmith_f_op_f32(414f + global1.c.c))) * _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -775f), _wgslsmith_f_op_f32(-598f - global0.a.x)), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global0.d.b.x, 2587f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.a.x, -1953f) + global1.c.a.b.yy))))), vec2<u32>(u_input.a.x, ~global0.b.x), vec4<i32>(countOneBits(-countOneBits(global1.c.a.c)), -global1.c.e.x, _wgslsmith_sub_i32(0i, _wgslsmith_mod_i32(abs(global0.d.c), var_0.x ^ 1i)), global0.c.x), Struct_1(-global0.d.a ^ -_wgslsmith_mult_vec3_i32(global0.d.a, vec3<i32>(var_0.x, var_0.x, -2147483647i)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global1.c.a.b.x, -2076f, global1.c.c)))), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global0.d.b.x, global0.a.x, global0.a.x)))), var_0.x), any(select(!(!vec4<bool>(global1.b, global1.b, global1.b, global0.e)), !select(vec4<bool>(true, false, global1.b, global0.e), vec4<bool>(global0.e, true, global1.b, true), true), select(select(vec4<bool>(true, global0.e, false, false), vec4<bool>(true, global0.e, global1.b, true), vec4<bool>(true, false, false, global0.e)), !vec4<bool>(true, global0.e, false, global0.e), select(vec4<bool>(true, true, global1.c.b, global0.e), vec4<bool>(global1.c.b, global1.c.b, true, global0.e), vec4<bool>(true, false, global0.e, global0.e))))));
    global0 = Struct_2(global1.c.a.b.zz, ~u_input.a.zy, vec4<i32>(var_0.x, ~global1.a.x, _wgslsmith_mult_i32(~_wgslsmith_mod_i32(global0.d.a.x, var_0.x), -(~1i)), -2147483647i), global1.c.a, !all(!(!vec4<bool>(global1.b, global1.c.b, false, true))));
    return global0.b.x;
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: vec2<u32>) -> u32 {
    var var_0 = Struct_5(vec2<bool>(false, global1.b));
    global1 = Struct_4(min(vec2<i32>(1i, 37667i), vec2<i32>(global1.a.x, _wgslsmith_clamp_i32(1i, global1.c.a.a.x, arg_1.c)) << ((arg_3 & global0.b) % vec2<u32>(32u))), true, global1.c);
    global1 = Struct_4(abs(global1.a), !(global1.b || (var_0.a.x | true)), Struct_3(arg_1, true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.b.x + global0.a.x))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * global0.a.x))), ~vec2<i32>(37502i, global1.c.a.a.x)));
    var var_1 = vec4<i32>(~_wgslsmith_add_i32(arg_2.x, -4110i), global1.c.a.a.x, _wgslsmith_clamp_i32(_wgslsmith_sub_i32(arg_2.x, global1.c.a.a.x) << (36988u % 32u), 1i, _wgslsmith_clamp_i32(-10061i, -arg_1.c, ~(-26751i))), ~(-40915i)) >> (firstLeadingBit(vec4<u32>(arg_3.x, global0.b.x, ~4294967295u, abs(_wgslsmith_clamp_u32(global0.b.x, 4294967295u, 1397u)))) % vec4<u32>(32u));
    var var_2 = Struct_1(abs(arg_2.ywz), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(global0.d.b - _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-430f, global0.d.b.x, -950f), vec3<f32>(-313f, -1286f, -1039f)))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(vec3<f32>(1000f, arg_1.b.x, global0.d.b.x), vec3<f32>(arg_1.b.x, -387f, 590f)))), select(true, false, global0.e) != global0.e)) - vec3<f32>(-1000f, -1087f, arg_1.b.x)), -abs(arg_2.x));
    return _wgslsmith_div_u32(39974u, _wgslsmith_mod_u32(func_2(), ~(~arg_0)));
}

fn func_1(arg_0: u32, arg_1: i32, arg_2: Struct_4) -> u32 {
    let var_0 = vec4<bool>((all(vec3<bool>(global1.c.b, false, global0.e)) || global1.b) | (((i32(-1i) * -1289i) ^ arg_2.c.e.x) == 11370i), any(!(!(!vec2<bool>(false, global1.c.b)))), false, func_4(func_2(), Struct_1(vec3<i32>(-4298i, -1i, arg_2.a.x), vec3<f32>(-1163f, 618f, global1.c.a.b.x), 1i), countOneBits(countOneBits(global0.c)), _wgslsmith_div_vec2_u32(vec2<u32>(31365u, u_input.a.x), _wgslsmith_mult_vec2_u32(global0.b, u_input.a.xy))) < ~1u);
    let var_1 = _wgslsmith_sub_u32(arg_0 >> (~40105u % 32u), _wgslsmith_dot_vec4_u32(~(~(~vec4<u32>(1057u, u_input.a.x, 0u, global0.b.x))), ~_wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, u_input.a.x, u_input.a.x, 1u), vec4<u32>(arg_0, 0u, 4294967295u, global0.b.x)), vec4<u32>(0u, u_input.a.x, 55024u, arg_0))));
    global0 = Struct_2(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_2.c.a.b.xz)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(419f, global1.c.c))))), min(vec2<u32>(~var_1, ~1u) | countOneBits(vec2<u32>(17778u, 24695u)), vec2<u32>(~4294967295u, var_1)), vec4<i32>(8635i, _wgslsmith_clamp_i32(arg_2.c.a.a.x, -2147483647i, firstLeadingBit(firstLeadingBit(-41765i))), 0i, global0.c.x), global0.d, var_0.x);
    var var_2 = global0.d;
    global0 = Struct_2(_wgslsmith_f_op_vec2_f32(abs(global0.a)), global0.b, vec4<i32>(abs(arg_2.a.x), -1i ^ arg_2.c.a.c, _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(select(global1.c.a.a, var_2.a, true), var_2.a, global1.c.a.a), select(_wgslsmith_mult_vec3_i32(vec3<i32>(global1.c.e.x, arg_1, 0i), vec3<i32>(arg_1, 2147483647i, 2147483647i)), vec3<i32>(global0.c.x, global1.c.e.x, 1i), var_0.xwz)), firstTrailingBit(2147483647i)), arg_2.c.a, arg_2.b);
    return max(_wgslsmith_dot_vec2_u32(u_input.a.zy, vec2<u32>(0u, var_1)), firstTrailingBit(_wgslsmith_clamp_u32(~1u, 1674u, 1u)));
}

fn func_5(arg_0: vec4<i32>, arg_1: i32, arg_2: u32, arg_3: Struct_2) -> Struct_2 {
    global1 = Struct_4(global0.d.a.zx, arg_3.e, Struct_3(Struct_1(-select(arg_3.d.a, vec3<i32>(global0.d.c, arg_1, arg_1), false), vec3<f32>(_wgslsmith_f_op_f32(global0.d.b.x * global1.c.d), _wgslsmith_f_op_f32(trunc(518f)), _wgslsmith_f_op_f32(max(1841f, global1.c.d))), -2147483647i), true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -196f)), _wgslsmith_f_op_f32(func_3(global0.e, _wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(34904u, u_input.a.x, 1u, 17910u), vec4<u32>(63291u, global0.b.x, arg_3.b.x, arg_3.b.x), vec4<u32>(4294967295u, 4294967295u, arg_3.b.x, u_input.a.x)), ~vec4<u32>(u_input.a.x, 19684u, 4294967295u, arg_3.b.x)), Struct_4(vec2<i32>(arg_1, global1.c.a.a.x), true, Struct_3(global0.d, false, -862f, 506f, arg_3.c.ww)))), firstTrailingBit(vec2<i32>(-1i) * -arg_3.c.yw)));
    let var_0 = arg_3.d;
    let var_1 = _wgslsmith_dot_vec2_i32(firstTrailingBit(~firstTrailingBit(arg_3.c.ww | global0.d.a.zx)), reverseBits(firstLeadingBit(var_0.a.yx)));
    let var_2 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(vec3<f32>(var_0.b.x, var_0.b.x, global1.c.a.b.x), vec3<f32>(_wgslsmith_f_op_f32(-global0.d.b.x), _wgslsmith_f_op_f32(trunc(1633f)), 525f))));
    global0 = arg_3;
    return Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -607f)) + _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(var_2.yz - vec2<f32>(var_0.b.x, 1202f))))) + vec2<f32>(_wgslsmith_f_op_f32(-global1.c.c), _wgslsmith_f_op_f32(-587f + -780f))), u_input.a.zx, vec4<i32>(global0.c.x, (max(-1090i, global1.a.x) ^ (global1.a.x >> (92325u % 32u))) ^ _wgslsmith_dot_vec3_i32(select(arg_0.zyx, vec3<i32>(global1.c.a.c, -1i, global1.c.e.x), vec3<bool>(global1.c.b, arg_3.e, true)), arg_0.wzw), -7177i & firstTrailingBit(-1i), global0.c.x), Struct_1(vec3<i32>(min(abs(1i), 39783i << (global0.b.x % 32u)), -1i, _wgslsmith_div_i32(_wgslsmith_div_i32(var_0.a.x, global1.a.x), firstTrailingBit(global0.d.a.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1846f, var_0.b.x, 1128f), vec3<f32>(var_2.x, arg_3.a.x, var_2.x), global0.e)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.x, -697f, -979f) - vec3<f32>(-400f, arg_3.a.x, 118f)))), -28337i), global1.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(~vec3<i32>(global1.c.e.x & _wgslsmith_mod_i32(global1.c.a.a.x, -2147483647i), 0i, _wgslsmith_dot_vec4_i32(global0.c ^ vec4<i32>(global0.c.x, global1.c.e.x, global1.a.x, 2147483647i), -global0.c)), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(global1.c.d - 654f), global0.a.x, global1.c.c) + _wgslsmith_f_op_vec3_f32(-global0.d.b)), -19165i);
    global0 = func_5(global0.c, var_0.a.x, 3230u | u_input.a.x, Struct_2(_wgslsmith_f_op_vec2_f32(select(global0.d.b.yy, _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b.x, -1245f)), select(select(vec2<bool>(global1.b, global1.b), vec2<bool>(true, true), global1.b), select(vec2<bool>(false, true), vec2<bool>(global1.c.b, global1.b), vec2<bool>(global0.e, global1.b)), select(vec2<bool>(global1.b, false), vec2<bool>(global0.e, global0.e), global0.e)))), vec2<u32>(min(firstLeadingBit(4294967295u), func_1(1u, var_0.c, Struct_4(vec2<i32>(55632i, -2147483647i), global0.e, global1.c))), 41120u), ~vec4<i32>(_wgslsmith_div_i32(0i, -72685i), reverseBits(40698i), _wgslsmith_div_i32(global1.c.e.x, global0.c.x), global1.c.e.x), global1.c.a, all(vec2<bool>(global1.c.b, false)) & global0.e));
    var var_1 = Struct_1(-(~(vec3<i32>(global0.c.x, -1i, var_0.c) | var_0.a)) ^ ~(-(vec3<i32>(global1.c.e.x, -27808i, global0.c.x) | vec3<i32>(global0.d.a.x, global1.c.a.a.x, -1i))), global1.c.a.b, -11269i);
    let var_2 = Struct_3(Struct_1(_wgslsmith_sub_vec3_i32(~global1.c.a.a, var_0.a ^ (global1.c.a.a << (u_input.a % vec3<u32>(32u)))), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(trunc(var_0.b.x)), global0.d.b.x, -130f))), -abs(-1i)), !(!all(vec2<bool>(global0.e, true))) || global1.c.b, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.b.x, _wgslsmith_f_op_f32(step(var_1.b.x, _wgslsmith_f_op_f32(round(global0.d.b.x)))))), func_5(max(_wgslsmith_mod_vec4_i32(-vec4<i32>(var_1.a.x, var_1.a.x, global1.a.x, global1.c.a.a.x), global0.c), ~vec4<i32>(-5718i, var_0.a.x, global0.d.a.x, -34204i)), _wgslsmith_mult_i32(~1i, -24726i), firstLeadingBit(14939u), func_5(global0.c ^ func_5(vec4<i32>(var_1.a.x, var_0.a.x, global0.c.x, global1.c.a.a.x), var_1.c, u_input.a.x, Struct_2(global1.c.a.b.yy, u_input.a.yz, global0.c, Struct_1(var_1.a, vec3<f32>(global0.a.x, global1.c.d, -494f), 2147483647i), global0.e)).c, var_0.c, func_1(4294967295u & u_input.a.x, global1.a.x, Struct_4(global0.d.a.xy, global1.b, Struct_3(global1.c.a, global0.e, var_1.b.x, var_0.b.x, var_1.a.yz))), Struct_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(1257f, -1023f) - vec2<f32>(986f, -1238f)), vec2<u32>(0u, u_input.a.x), func_5(global0.c, global1.c.a.a.x, global0.b.x, Struct_2(var_0.b.yy, vec2<u32>(57614u, 1u), vec4<i32>(32604i, global1.c.a.c, global1.c.a.c, global1.c.e.x), global1.c.a, true)).c, Struct_1(vec3<i32>(-1i, 17837i, -3306i), var_0.b, -2147483647i), all(vec3<bool>(global1.c.b, global0.e, global0.e))))).a.x, vec2<i32>(func_5(vec4<i32>(-7484i, global0.c.x, global0.d.c, -85642i) | global0.c, ~14645i, global0.b.x, Struct_2(vec2<f32>(537f, global0.d.b.x), global0.b, global0.c, Struct_1(vec3<i32>(-1i, 2147483647i, global0.c.x), vec3<f32>(-148f, 306f, -1152f), 62610i), global0.e)).c.x ^ 30946i, -2147483647i));
    global0 = func_5(~(~global0.c), var_0.c, _wgslsmith_div_u32(~(~0u), ~4016u), Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(global1.c.a.b.xy, _wgslsmith_f_op_vec2_f32(-var_2.a.b.yz))), firstTrailingBit(reverseBits(vec2<u32>(37868u, u_input.a.x))) ^ ~countOneBits(global0.b), vec4<i32>(2147483647i, ~1i, 2147483647i, var_1.c), func_5(max(select(vec4<i32>(var_0.a.x, -2147483647i, var_0.c, global0.c.x), global0.c, vec4<bool>(var_2.b, true, var_2.b, var_2.b)), global0.c), _wgslsmith_mult_i32(global0.c.x, ~var_2.e.x), func_1(global0.b.x, _wgslsmith_clamp_i32(1i, global1.a.x, -37150i), Struct_4(vec2<i32>(-14243i, var_1.a.x), var_2.b, Struct_3(Struct_1(var_2.a.a, var_0.b, -3733i), false, 276f, 1000f, var_2.a.a.yz))), func_5(vec4<i32>(0i, var_2.e.x, var_0.c, 1i), select(global1.c.a.c, 33948i, global1.c.b), u_input.a.x | u_input.a.x, func_5(global0.c, -2147483647i, 82778u, Struct_2(vec2<f32>(var_1.b.x, var_0.b.x), global0.b, global0.c, var_2.a, true)))).d, all(!(!vec3<bool>(global1.c.b, var_2.b, global1.c.b)))));
    var var_3 = 1000f;
    var var_4 = -_wgslsmith_div_vec4_i32(abs(vec4<i32>(1i | global1.a.x, 16627i, _wgslsmith_add_i32(1i, var_2.a.a.x), firstTrailingBit(var_2.a.c))), vec4<i32>(min(reverseBits(var_0.c), abs(global1.a.x)), 19691i, ~(~(-53121i)), 2147483647i));
    var var_5 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(var_0.b, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0.a.x, 714f, -1103f), vec3<f32>(global0.a.x, var_1.b.x, -1522f), vec3<bool>(true, false, global1.c.b))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-227f, var_0.b.x, var_0.b.x))))), var_2.b || global1.b))));
    let var_6 = Struct_4(-(var_1.a.zy & (vec2<i32>(-1i) * -var_2.a.a.yz)), !global1.b, var_2);
    let x = u_input.a;
    s_output = StorageBuffer(0i, ~(~vec2<u32>(~1u, ~u_input.a.x)));
}

