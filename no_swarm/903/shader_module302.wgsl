struct Struct_1 {
    a: vec2<f32>,
    b: vec2<u32>,
    c: f32,
    d: vec3<f32>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: vec2<u32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 5>;

var<private> global1: vec3<i32> = vec3<i32>(i32(-2147483648), 1i, 2147483647i);

var<private> global2: u32;

var<private> global3: array<vec3<bool>, 18>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: Struct_2, arg_1: u32, arg_2: Struct_2, arg_3: Struct_1) -> vec3<f32> {
    return vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1028f, arg_0.c.a.x) + -393f), 1038f)))), 1f, 1591f);
}

fn func_2(arg_0: vec3<bool>, arg_1: vec3<bool>, arg_2: f32, arg_3: vec2<u32>) -> vec2<u32> {
    var var_0 = vec3<i32>(-31692i, u_input.a, ~(~0i) & ~u_input.d.x);
    var var_1 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(-global0[_wgslsmith_index_u32(61631u, 5u)]), ~vec2<u32>(arg_3.x << (1u % 32u), arg_3.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(arg_2))))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(289f, 1013f, 1089f)), _wgslsmith_f_op_vec3_f32(func_3(Struct_2(Struct_1(global0[_wgslsmith_index_u32(1u, 5u)], arg_3, arg_2, vec3<f32>(arg_2, 451f, -918f), vec2<u32>(5842u, arg_3.x)), true, Struct_1(global0[_wgslsmith_index_u32(0u, 5u)], arg_3, 245f, vec3<f32>(823f, 224f, -481f), arg_3)), ~arg_3.x, Struct_2(Struct_1(global0[_wgslsmith_index_u32(arg_3.x, 5u)], arg_3, -592f, vec3<f32>(-521f, arg_2, -340f), arg_3), true, Struct_1(vec2<f32>(104f, arg_2), vec2<u32>(arg_3.x, 45566u), 691f, vec3<f32>(138f, -177f, -711f), arg_3)), Struct_1(vec2<f32>(arg_2, -941f), vec2<u32>(arg_3.x, arg_3.x), 472f, vec3<f32>(1399f, arg_2, arg_2), arg_3))))), firstLeadingBit(vec2<u32>(arg_3.x, arg_3.x) & _wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, arg_3.x), arg_3))), true, Struct_1(_wgslsmith_f_op_vec2_f32(global0[_wgslsmith_index_u32(25281u, 5u)] - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2, arg_2)) * _wgslsmith_f_op_vec3_f32(func_3(Struct_2(Struct_1(global0[_wgslsmith_index_u32(46421u, 5u)], arg_3, -285f, vec3<f32>(arg_2, arg_2, arg_2), vec2<u32>(arg_3.x, 0u)), arg_1.x, Struct_1(global0[_wgslsmith_index_u32(1u, 5u)], vec2<u32>(arg_3.x, arg_3.x), -763f, vec3<f32>(-273f, arg_2, arg_2), vec2<u32>(arg_3.x, arg_3.x))), 4294967295u, Struct_2(Struct_1(vec2<f32>(arg_2, -1721f), vec2<u32>(arg_3.x, 7853u), -740f, vec3<f32>(1000f, arg_2, arg_2), arg_3), arg_1.x, Struct_1(vec2<f32>(1248f, -627f), arg_3, arg_2, vec3<f32>(-238f, arg_2, arg_2), vec2<u32>(4468u, 0u))), Struct_1(global0[_wgslsmith_index_u32(28444u, 5u)], arg_3, -388f, vec3<f32>(arg_2, arg_2, arg_2), vec2<u32>(78785u, 60179u)))).xz)), arg_3, _wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2, arg_2, arg_2))))), ~select(countOneBits(arg_3), vec2<u32>(arg_3.x, arg_3.x), arg_1.x)));
    var var_2 = _wgslsmith_sub_vec3_i32(~_wgslsmith_mod_vec3_i32(~vec3<i32>(var_0.x, -11441i, -36087i), vec3<i32>(1i, 2147483647i, global1.x) | vec3<i32>(1i, -54047i, var_0.x)), vec3<i32>(_wgslsmith_mult_i32(0i, _wgslsmith_add_i32(var_0.x, u_input.c)), ~_wgslsmith_clamp_i32(42852i, var_0.x, 0i), 1i >> ((arg_3.x | 2965u) % 32u))) >> (vec3<u32>(arg_3.x, arg_3.x, abs(arg_3.x)) % vec3<u32>(32u));
    var var_3 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(global0[_wgslsmith_index_u32(arg_3.x, 5u)])) - global0[_wgslsmith_index_u32(~arg_3.x, 5u)]))), vec2<u32>(~(~arg_3.x), var_1.a.b.x), _wgslsmith_f_op_vec3_f32(func_3(Struct_2(Struct_1(var_1.a.a, vec2<u32>(arg_3.x, var_1.a.e.x), 824f, var_1.c.d, arg_3), var_1.b, var_1.a), 45658u, Struct_2(Struct_1(vec2<f32>(-107f, 1096f), arg_3, arg_2, vec3<f32>(var_1.c.d.x, arg_2, -498f), var_1.c.b), !var_1.b, var_1.a), Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(1399f, arg_2) + vec2<f32>(1444f, 1325f)), arg_3, _wgslsmith_f_op_f32(arg_2 + 234f), _wgslsmith_f_op_vec3_f32(-var_1.a.d), select(arg_3, var_1.a.e, vec2<bool>(true, true))))).x, _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(max(var_1.c.d, _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2, var_1.a.a.x, arg_2)))))), _wgslsmith_add_vec2_u32(max(vec2<u32>(arg_3.x, 0u), var_1.c.e) >> (vec2<u32>(1u, var_1.a.e.x) % vec2<u32>(32u)), vec2<u32>(_wgslsmith_clamp_u32(arg_3.x, 0u, arg_3.x), 1u))), var_1.b, Struct_1(_wgslsmith_f_op_vec2_f32(trunc(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(reverseBits(26414u), _wgslsmith_dot_vec3_u32(vec3<u32>(25798u, arg_3.x, 0u), vec3<u32>(4294967295u, 4294967295u, 4294967295u))), 5u)])), _wgslsmith_div_vec2_u32(select(var_1.a.e, var_1.c.e & vec2<u32>(6718u, arg_3.x), all(vec2<bool>(true, arg_1.x))), var_1.a.b), arg_2, vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(-967f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(140f)), -1570f)), 581f), select(abs(arg_3), _wgslsmith_clamp_vec2_u32(var_1.c.b, _wgslsmith_mult_vec2_u32(vec2<u32>(1u, arg_3.x), vec2<u32>(arg_3.x, var_1.c.e.x)), ~arg_3), vec2<bool>(select(arg_1.x, arg_0.x, arg_0.x), true))));
    global0 = array<vec2<f32>, 5>();
    return vec2<u32>(~_wgslsmith_div_u32(~abs(var_1.a.b.x), arg_3.x << (arg_3.x % 32u)), _wgslsmith_mod_u32(27948u, 42264u));
}

fn func_4(arg_0: vec3<bool>, arg_1: vec3<bool>, arg_2: Struct_2) -> Struct_1 {
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_2.c.d.xy) - _wgslsmith_f_op_vec2_f32(global0[_wgslsmith_index_u32(arg_2.a.b.x, 5u)] - global0[_wgslsmith_index_u32(4294967295u, 5u)])))), vec2<u32>(arg_2.c.b.x, 61184u), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-193f))))), vec3<f32>(436f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_2.a.d.x)) * 1000f), _wgslsmith_div_f32(-1393f, 205f)), vec2<u32>(50278u, 2074u)), arg_1.x, Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(548f, arg_2.c.d.x), _wgslsmith_f_op_vec2_f32(select(global0[_wgslsmith_index_u32(arg_2.c.e.x, 5u)], arg_2.c.d.yy, arg_0.x)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1868f, arg_2.c.a.x), vec2<f32>(154f, -1909f))) - _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(arg_2.c.a.x, arg_2.a.d.x))))), ~_wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(1u, 0u), arg_2.c.e), _wgslsmith_sub_vec2_u32(arg_2.c.b, vec2<u32>(arg_2.a.b.x, arg_2.c.e.x))), _wgslsmith_f_op_f32(-456f - arg_2.c.d.x), vec3<f32>(2359f, arg_2.a.a.x, arg_2.a.d.x), _wgslsmith_sub_vec2_u32(firstTrailingBit(arg_2.a.e), abs(vec2<u32>(arg_2.a.e.x, 53946u)))));
    let var_1 = Struct_2(Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.a.c, arg_2.c.a.x) * vec2<f32>(303f, -867f))), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(2011f, -1023f)))), arg_2.c.e, -704f, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1325f, var_0.a.a.x, 805f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -1000f, var_0.c.d.x) - vec3<f32>(arg_2.c.d.x, arg_2.c.c, arg_2.c.d.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_2.c.d * vec3<f32>(arg_2.a.d.x, 727f, var_0.a.c)))), max(var_0.c.e, vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.a.b.x, var_0.c.e.x, 1u, 6690u), vec4<u32>(58354u, 16352u, arg_2.c.b.x, var_0.c.e.x)), firstTrailingBit(4294967295u)))), all(select(vec3<bool>(var_0.b, !arg_2.b, false), select(vec3<bool>(true, true, true), !vec3<bool>(arg_0.x, false, var_0.b), false), !global3[_wgslsmith_index_u32(var_0.a.b.x | 1u, 18u)])), Struct_1(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(global0[_wgslsmith_index_u32(8695u, 5u)], vec2<f32>(770f, var_0.a.d.x))) - _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1000f, arg_2.a.d.x)))))), arg_2.a.b, -179f, vec3<f32>(arg_2.a.d.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -421f))), 111f), ~max(arg_2.a.b & vec2<u32>(var_0.a.e.x, arg_2.a.e.x), vec2<u32>(var_0.a.b.x, arg_2.c.b.x))));
    global2 = var_1.c.e.x;
    global0 = array<vec2<f32>, 5>();
    var var_2 = Struct_1(var_0.c.d.zx, ~(~var_0.a.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(465f * var_0.c.c))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-var_1.a.d))), _wgslsmith_div_vec2_u32(arg_2.a.b, _wgslsmith_div_vec2_u32(var_1.c.b, vec2<u32>(var_1.a.b.x, arg_2.c.e.x) << (var_0.c.e % vec2<u32>(32u)))));
    return var_0.a;
}

fn func_1(arg_0: vec2<u32>, arg_1: u32, arg_2: vec2<bool>, arg_3: u32) -> f32 {
    let var_0 = ~4294967295u ^ arg_0.x;
    let var_1 = func_4(!vec3<bool>(arg_2.x, any(select(arg_2, arg_2, false)), true), select(!(!vec3<bool>(arg_2.x, arg_2.x, arg_2.x)), select(vec3<bool>(false, false, any(vec4<bool>(arg_2.x, arg_2.x, true, arg_2.x))), vec3<bool>(true, any(vec4<bool>(true, arg_2.x, true, false)), arg_2.x || false), vec3<bool>(arg_2.x, false, 12007i > u_input.a)), true), Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0[_wgslsmith_index_u32(arg_3, 5u)])), vec2<u32>(4294967295u ^ arg_3, ~75123u), _wgslsmith_f_op_f32(step(1527f, _wgslsmith_f_op_f32(2134f + 369f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(472f, -1470f, -1751f))), func_2(global3[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, arg_1), 18u)], global3[_wgslsmith_index_u32(~29072u, 18u)], -697f, reverseBits(vec2<u32>(arg_1, 0u)))), true, Struct_1(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(398f, 238f)))), max(_wgslsmith_div_vec2_u32(vec2<u32>(arg_3, arg_3), vec2<u32>(66230u, 4294967295u)), ~arg_0), _wgslsmith_f_op_f32(f32(-1f) * -1464f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1005f, 657f, 1302f), vec3<f32>(-656f, -153f, 878f), vec3<bool>(true, arg_2.x, arg_2.x))) + vec3<f32>(1f, 1f, 1f)), ~_wgslsmith_add_vec2_u32(vec2<u32>(0u, 14002u), arg_0))));
    var var_2 = firstLeadingBit(reverseBits(~(_wgslsmith_mult_vec2_u32(var_1.e, arg_0) ^ vec2<u32>(0u, var_1.e.x))));
    let var_3 = Struct_1(vec2<f32>(var_1.a.x, var_1.c), countOneBits(var_1.e), var_1.d.x, var_1.d, _wgslsmith_sub_vec2_u32(arg_0, var_1.e));
    global0 = array<vec2<f32>, 5>();
    return _wgslsmith_f_op_f32(-var_1.c);
}

fn func_5(arg_0: vec3<u32>, arg_1: vec3<f32>) -> u32 {
    var var_0 = Struct_2(func_4(!select(!global3[_wgslsmith_index_u32(1u, 18u)], global3[_wgslsmith_index_u32(abs(35774u), 18u)], select(global3[_wgslsmith_index_u32(arg_0.x, 18u)], vec3<bool>(true, false, true), false)), !global3[_wgslsmith_index_u32(0u & ~arg_0.x, 18u)], Struct_2(func_4(!global3[_wgslsmith_index_u32(65215u, 18u)], vec3<bool>(true, true, true), Struct_2(Struct_1(arg_1.yx, vec2<u32>(arg_0.x, arg_0.x), 250f, arg_1, arg_0.zy), true, Struct_1(global0[_wgslsmith_index_u32(arg_0.x, 5u)], arg_0.yy, arg_1.x, vec3<f32>(arg_1.x, -609f, arg_1.x), arg_0.yz))), true, func_4(global3[_wgslsmith_index_u32(~arg_0.x, 18u)], !global3[_wgslsmith_index_u32(26319u, 18u)], Struct_2(Struct_1(vec2<f32>(-1061f, arg_1.x), arg_0.zz, -160f, arg_1, arg_0.zx), false, Struct_1(vec2<f32>(arg_1.x, arg_1.x), vec2<u32>(arg_0.x, 4294967295u), 471f, vec3<f32>(arg_1.x, arg_1.x, arg_1.x), vec2<u32>(arg_0.x, 1u)))))), true, func_4(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), global3[_wgslsmith_index_u32(~arg_0.x, 18u)]), !vec3<bool>(true, true, all(vec3<bool>(true, false, false))), Struct_2(func_4(vec3<bool>(true, true, true), vec3<bool>(true, true, false), Struct_2(Struct_1(arg_1.xx, arg_0.xy, 1353f, arg_1, arg_0.zy), true, Struct_1(vec2<f32>(1000f, arg_1.x), vec2<u32>(4294967295u, 4294967295u), -804f, vec3<f32>(arg_1.x, -632f, 946f), arg_0.yz))), true, Struct_1(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(2042f, arg_1.x))), ~arg_0.xy, -1212f, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1563f, arg_1.x, arg_1.x)), ~vec2<u32>(0u, 35126u)))));
    return 8917u;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec3<bool>, 18>();
    global0 = array<vec2<f32>, 5>();
    let var_0 = firstLeadingBit(u_input.d);
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    let var_2 = func_5(vec3<u32>(~(~0u >> (0u % 32u)), ~(~4294967295u), ~(select(0u, 4294967295u, false) | countOneBits(51115u))), vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(327f))))), _wgslsmith_f_op_f32(func_1(~vec2<u32>(1u, 4294967295u), 0u, vec2<bool>(1i < global1.x, any(vec2<bool>(true, false))), ~74179u)), _wgslsmith_f_op_f32(func_1(~vec2<u32>(1u, 1u), max(1u, ~7447u), select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false)), vec2<bool>(true, true), vec2<bool>(true, false)), abs(1506u)))));
    global3 = array<vec3<bool>, 18>();
    global3 = array<vec3<bool>, 18>();
    var var_3 = !(!vec2<bool>(all(vec4<bool>(false, false, false, false)), all(vec4<bool>(true, false, false, false))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(floor(-382f)), 306f), ~var_2 << (reverseBits(0u) % 32u), _wgslsmith_sub_vec2_u32(vec2<u32>(32631u, 50486u), vec2<u32>(var_2, var_2)) << (vec2<u32>(var_2, 25152u >> (min(0u, 0u) % 32u)) % vec2<u32>(32u)), var_0);
}

