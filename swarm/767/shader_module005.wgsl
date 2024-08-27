struct Struct_1 {
    a: f32,
    b: vec4<u32>,
    c: bool,
    d: i32,
}

struct Struct_2 {
    a: f32,
    b: vec4<u32>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: f32,
    c: vec3<f32>,
    d: vec2<bool>,
    e: vec2<bool>,
}

struct Struct_4 {
    a: vec4<bool>,
    b: bool,
    c: f32,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 20>;

var<private> global1: Struct_3;

var<private> global2: array<Struct_4, 10> = array<Struct_4, 10>(Struct_4(vec4<bool>(true, true, false, true), true, 1000f, vec2<u32>(32595u, 4294967295u)), Struct_4(vec4<bool>(true, true, true, false), true, 121f, vec2<u32>(87130u, 4294967295u)), Struct_4(vec4<bool>(false, true, true, false), true, 736f, vec2<u32>(6481u, 4294967295u)), Struct_4(vec4<bool>(true, true, false, true), false, 849f, vec2<u32>(1u, 372u)), Struct_4(vec4<bool>(true, true, true, true), false, 524f, vec2<u32>(62292u, 38915u)), Struct_4(vec4<bool>(false, true, true, true), true, -1000f, vec2<u32>(58617u, 69277u)), Struct_4(vec4<bool>(false, false, false, false), true, -1212f, vec2<u32>(4294967295u, 19014u)), Struct_4(vec4<bool>(true, false, true, false), false, -948f, vec2<u32>(4294967295u, 13208u)), Struct_4(vec4<bool>(true, true, false, true), true, -1000f, vec2<u32>(13152u, 40346u)), Struct_4(vec4<bool>(false, true, true, true), true, 1168f, vec2<u32>(70755u, 0u)));

var<private> global3: array<bool, 5>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool, arg_1: vec4<u32>) -> f32 {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(floor(-448f)), ~(~(~firstTrailingBit(arg_1))));
    var var_1 = global2[_wgslsmith_index_u32(arg_1.x, 10u)];
    var var_2 = Struct_2(var_0.a, ~vec4<u32>(24620u, var_1.d.x, 68024u, 61352u));
    var_2 = Struct_2(-1000f, select(select(arg_1, _wgslsmith_add_vec4_u32(countOneBits(vec4<u32>(arg_1.x, 0u, 4294967295u, 4294967295u)), abs(arg_1)), select(vec4<bool>(var_1.a.x, false, false, global3[_wgslsmith_index_u32(arg_1.x, 5u)]), !vec4<bool>(arg_0, true, true, global1.d.x), vec4<bool>(false, true, var_1.b, global1.e.x))), arg_1, !select(vec4<bool>(arg_0, var_1.b, arg_0, false), !var_1.a, select(vec4<bool>(var_1.a.x, global1.e.x, global1.e.x, global1.e.x), vec4<bool>(global3[_wgslsmith_index_u32(50592u, 5u)], arg_0, false, false), vec4<bool>(global1.d.x, true, arg_0, false)))));
    var var_3 = 35165u;
    return _wgslsmith_f_op_f32(f32(-1f) * -290f);
}

fn func_4(arg_0: vec4<f32>, arg_1: bool, arg_2: Struct_4) -> vec3<i32> {
    let var_0 = vec4<bool>(!(!arg_2.a.x), !arg_2.b, true, true);
    return vec3<i32>(countOneBits(-_wgslsmith_clamp_i32(34267i, -2147483647i, -19918i)) | (~(-2147483647i) >> (_wgslsmith_dot_vec2_u32(abs(global1.a), global1.a) % 32u)), _wgslsmith_div_i32(46588i, -1i), -countOneBits(1i));
}

fn func_2(arg_0: u32, arg_1: f32) -> Struct_4 {
    let var_0 = ~func_4(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(249f * global1.b), _wgslsmith_f_op_f32(-550f + 440f), _wgslsmith_f_op_f32(step(arg_1, -512f)), _wgslsmith_f_op_f32(global1.c.x + 864f)))), _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(f32(-1f) * -2056f)) >= _wgslsmith_f_op_f32(global1.b + _wgslsmith_f_op_f32(-524f + arg_1)), Struct_4(!vec4<bool>(true, global3[_wgslsmith_index_u32(41678u, 5u)], true, true), true, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_3(global3[_wgslsmith_index_u32(global1.a.x, 5u)], vec4<u32>(55375u, 33522u, u_input.a.x, u_input.a.x))), _wgslsmith_f_op_f32(-global1.b), true)), vec2<u32>(firstLeadingBit(9951u), 4294967295u)));
    let var_1 = reverseBits(~(~vec3<i32>(var_0.x, var_0.x, 65510i) & vec3<i32>(-2147483647i, -37473i, -53539i)) | _wgslsmith_clamp_vec3_i32(var_0, ~(~var_0), var_0));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(trunc(global1.c.x)), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, reverseBits(24746u), ~17579u), max(_wgslsmith_mod_vec4_u32(vec4<u32>(arg_0, u_input.a.x, 22240u, global1.a.x), vec4<u32>(70794u, arg_0, u_input.a.x, 37331u)), vec4<u32>(0u, arg_0, 10037u, 45981u)), vec4<u32>(global1.a.x, _wgslsmith_div_u32(arg_0, u_input.a.x), 22777u, u_input.a.x)), select(!(_wgslsmith_f_op_f32(step(global1.b, -905f)) < _wgslsmith_f_op_f32(max(-675f, -471f))), all(vec3<bool>(true, global3[_wgslsmith_index_u32(arg_0, 5u)], true)) & all(select(vec2<bool>(false, global1.d.x), vec2<bool>(false, false), global3[_wgslsmith_index_u32(0u, 5u)])), (true | global1.d.x) || global1.d.x), _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(~max(var_0.xx, vec2<i32>(var_0.x, var_1.x)), vec2<i32>(0i, 1i)), var_1.yy));
    let var_3 = ~(-(~vec3<i32>(var_1.x ^ var_0.x, var_0.x ^ var_1.x, ~var_1.x)));
    global1 = Struct_3(_wgslsmith_mult_vec2_u32(vec2<u32>(~26747u, _wgslsmith_add_u32(~4294967295u, u_input.a.x >> (var_2.b.x % 32u))), countOneBits(vec2<u32>(u_input.a.x << (arg_0 % 32u), _wgslsmith_mult_u32(8133u, arg_0)))), arg_1, _wgslsmith_f_op_vec3_f32(-global1.c), select(global1.d, global0[_wgslsmith_index_u32(~(~_wgslsmith_mult_u32(4294967295u, arg_0)), 20u)], any(select(vec2<bool>(var_2.c, false), !vec2<bool>(global3[_wgslsmith_index_u32(63176u, 5u)], false), global0[_wgslsmith_index_u32(countOneBits(u_input.a.x), 20u)]))), global0[_wgslsmith_index_u32(~47908u, 20u)]);
    return Struct_4(select(vec4<bool>(!any(vec4<bool>(true, true, true, global1.e.x)), false, true, true), vec4<bool>(!(!global1.d.x), true, !any(vec4<bool>(true, global3[_wgslsmith_index_u32(9856u, 5u)], false, var_2.c)), global3[_wgslsmith_index_u32(~arg_0, 5u)]), (arg_0 | _wgslsmith_sub_u32(0u, arg_0)) != _wgslsmith_dot_vec2_u32(global1.a, ~vec2<u32>(var_2.b.x, 1u))), var_1.x < var_3.x, -1414f, global1.a);
}

fn func_5(arg_0: f32, arg_1: Struct_4, arg_2: i32, arg_3: Struct_4) -> f32 {
    let var_0 = Struct_2(687f, countOneBits(~(~(~vec4<u32>(arg_1.d.x, 0u, global1.a.x, 1u)))));
    var var_1 = vec4<i32>(-reverseBits(min(-1i, -arg_2)), arg_2, arg_2, ~arg_2);
    var_1 = ~_wgslsmith_mult_vec4_i32(vec4<i32>((arg_2 ^ var_1.x) >> ((arg_1.d.x << (4294967295u % 32u)) % 32u), arg_2, select(var_1.x, arg_2, arg_3.a.x), 64749i), reverseBits(~vec4<i32>(1i, 37584i, 1i, var_1.x)));
    var var_2 = var_0;
    var var_3 = func_2(_wgslsmith_dot_vec4_u32(max(var_2.b, ~vec4<u32>(51628u, var_0.b.x, 4294967295u, 3906u)), select(vec4<u32>(1u, arg_3.d.x, arg_1.d.x, var_2.b.x) ^ vec4<u32>(7368u, 4294967295u, 0u, arg_1.d.x), var_0.b, true)) ^ 23403u, -1126f);
    return var_0.a;
}

fn func_6(arg_0: vec3<f32>) -> Struct_1 {
    let var_0 = vec3<f32>(-829f, arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(global1.b, _wgslsmith_f_op_f32(1133f - global1.c.x))))));
    let var_1 = vec2<i32>(firstTrailingBit(_wgslsmith_dot_vec3_i32(select(select(vec3<i32>(-2147483647i, -1i, 0i), vec3<i32>(-371i, 55041i, -6351i), vec3<bool>(global3[_wgslsmith_index_u32(1u, 5u)], true, true)), countOneBits(vec3<i32>(-2147483647i, 32067i, -31070i)), !vec3<bool>(global3[_wgslsmith_index_u32(u_input.a.x, 5u)], global3[_wgslsmith_index_u32(0u, 5u)], global3[_wgslsmith_index_u32(27442u, 5u)])), vec3<i32>(0i, max(16128i, 19639i), 53976i))), -1565i);
    global2 = array<Struct_4, 10>();
    var var_2 = select(select(vec3<bool>(true, (1455f <= global1.b) & true, true), select(vec3<bool>(!global1.e.x, true, global3[_wgslsmith_index_u32(~u_input.a.x, 5u)]), !(!vec3<bool>(global1.d.x, global1.e.x, true)), !func_2(global1.a.x, arg_0.x).a.xwy), false), vec3<bool>(countOneBits(u_input.a.x) >= _wgslsmith_add_u32(firstTrailingBit(u_input.a.x), abs(global1.a.x)), false, global3[_wgslsmith_index_u32(~global1.a.x, 5u)]), vec3<bool>(any(!vec2<bool>(true, global3[_wgslsmith_index_u32(u_input.a.x, 5u)])), global3[_wgslsmith_index_u32(abs(u_input.a.x) >> (u_input.a.x % 32u), 5u)], !all(vec4<bool>(false, global1.e.x, global1.d.x, false))));
    var var_3 = Struct_1(-181f, ~vec4<u32>(_wgslsmith_mult_u32(global1.a.x, global1.a.x ^ global1.a.x), u_input.a.x, 27951u, ~global1.a.x), true, max(_wgslsmith_add_i32(var_1.x, var_1.x), 1i));
    return Struct_1(-902f, min(~(var_3.b ^ vec4<u32>(31298u, 4294967295u, 600u, global1.a.x)), ~_wgslsmith_sub_vec4_u32(vec4<u32>(12056u, 0u, 104910u, u_input.a.x), var_3.b)) | vec4<u32>(~0u, _wgslsmith_mult_u32(u_input.a.x, _wgslsmith_add_u32(0u, 36527u)), 1u, _wgslsmith_mod_u32(var_3.b.x, _wgslsmith_dot_vec3_u32(u_input.a, var_3.b.yzy))), _wgslsmith_div_i32(~_wgslsmith_mult_i32(var_1.x, var_3.d), var_1.x) > var_3.d, -2147483647i);
}

fn func_1(arg_0: u32, arg_1: vec2<f32>) -> vec2<u32> {
    global2 = array<Struct_4, 10>();
    var var_0 = _wgslsmith_div_u32(_wgslsmith_sub_u32(93947u, max(56989u, _wgslsmith_div_u32(u_input.a.x, 13869u) << (3280u % 32u))), firstLeadingBit(1486u));
    var var_1 = func_6(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global1.c.x * 500f))), _wgslsmith_f_op_f32(func_5(_wgslsmith_f_op_f32(-global1.c.x), global2[_wgslsmith_index_u32(u_input.a.x << (4294967295u % 32u), 10u)], _wgslsmith_dot_vec4_i32(vec4<i32>(-4609i, 0i, 2147483647i, -59396i), vec4<i32>(22704i, -1648i, -3254i, -10592i)), func_2(arg_0, global1.b))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(func_5(-2199f, Struct_4(vec4<bool>(false, true, global1.e.x, false), global1.e.x, arg_1.x, u_input.a.yz), -1i, Struct_4(vec4<bool>(global1.e.x, global1.e.x, true, true), false, -1000f, vec2<u32>(16714u, 21852u)))))))));
    var var_2 = var_1.b;
    let var_3 = func_6(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(310f, 1203f, var_1.a), vec3<f32>(var_1.a, global1.c.x, -293f)), _wgslsmith_f_op_vec3_f32(global1.c - vec3<f32>(var_1.a, arg_1.x, -448f)), any(vec3<bool>(true, global3[_wgslsmith_index_u32(0u, 5u)], global3[_wgslsmith_index_u32(0u, 5u)])))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global1.c + global1.c))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(sign(global1.c)))))));
    return firstLeadingBit(var_1.b.wx);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.b, 1092f, _wgslsmith_f_op_f32(f32(-1f) * -512f), 1314f)) + _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(504f, -259f, 1943f, 368f), vec4<f32>(global1.b, -2141f, global1.b, global1.c.x)) - vec4<f32>(839f, -598f, -1000f, -334f))))));
    let var_1 = _wgslsmith_f_op_f32(min(var_0.x, -343f));
    var var_2 = Struct_3(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a.x, global1.a.x), firstTrailingBit(_wgslsmith_mod_vec2_u32(vec2<u32>(0u, 4294967295u), global1.a)) ^ func_1(~12293u, var_0.zy)), _wgslsmith_f_op_f32(func_3(global3[_wgslsmith_index_u32(firstTrailingBit(u_input.a.x), 5u)], select(vec4<u32>(global1.a.x, 4294967295u, 0u, u_input.a.x), countOneBits(vec4<u32>(global1.a.x, u_input.a.x, 1u, 66130u)), true || global3[_wgslsmith_index_u32(4691u, 5u)]) << (abs(firstLeadingBit(vec4<u32>(global1.a.x, global1.a.x, 0u, 1u))) % vec4<u32>(32u)))), vec3<f32>(func_2(global1.a.x ^ countOneBits(23466u), var_1).c, _wgslsmith_f_op_f32(trunc(var_1)), -1000f), vec2<bool>(any(func_2(global1.a.x, global1.b).a.yx) || global1.e.x, false), !global0[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_mod_u32(_wgslsmith_mod_u32(4294967295u, 5993u), u_input.a.x | 53287u)), 20u)]);
    let var_3 = vec3<bool>(all(vec3<bool>(true, true, any(vec2<bool>(false, global1.d.x)))), global3[_wgslsmith_index_u32(_wgslsmith_add_u32(~var_2.a.x, ~33517u), 5u)], !func_6(_wgslsmith_f_op_vec3_f32(global1.c * _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(158f, -1597f, var_2.c.x))))).c);
    global0 = array<vec2<bool>, 20>();
    let var_4 = func_2(~max(countOneBits(global1.a.x), ~27133u), _wgslsmith_f_op_f32(-138f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -190f), _wgslsmith_f_op_f32(select(var_0.x, var_1, var_3.x)))), _wgslsmith_f_op_f32(-1968f - -456f))));
    var var_5 = global3[_wgslsmith_index_u32(55588u, 5u)];
    global0 = array<vec2<bool>, 20>();
    let x = u_input.a;
    s_output = StorageBuffer(var_2.a.x);
}

