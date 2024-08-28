struct Struct_1 {
    a: u32,
    b: f32,
    c: i32,
    d: vec3<i32>,
    e: i32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 11>;

var<private> global1: array<i32, 2>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: bool, arg_1: vec2<bool>, arg_2: vec4<f32>) -> i32 {
    let var_0 = Struct_1(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(firstTrailingBit(~vec2<u32>(27656u, 1u)), vec2<u32>(1u, 1u)), 1u << (~4294967295u % 32u)), _wgslsmith_f_op_f32(arg_2.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.x + arg_2.x) * -1360f)), global1[_wgslsmith_index_u32(46766u, 2u)], vec3<i32>(firstTrailingBit(_wgslsmith_clamp_i32(-2147483647i, ~global1[_wgslsmith_index_u32(14818u, 2u)], i32(-1i) * -12147i)), global1[_wgslsmith_index_u32(4294967295u, 2u)], countOneBits(-reverseBits(72230i))), _wgslsmith_dot_vec4_i32((vec4<i32>(-1i, global1[_wgslsmith_index_u32(1u, 2u)], -1i, 17858i) << (~vec4<u32>(26054u, 4294967295u, 4294967295u, 64413u) % vec4<u32>(32u))) ^ vec4<i32>(_wgslsmith_dot_vec2_i32(u_input.b.wx, vec2<i32>(-10066i, -1i)), firstLeadingBit(u_input.a), u_input.a, u_input.b.x ^ 11035i), u_input.b));
    let var_1 = select(vec2<bool>(all(vec3<bool>(false || arg_1.x, arg_0, arg_0)), all(vec4<bool>(false, all(vec2<bool>(arg_1.x, true)), !arg_0, true))), !arg_1, vec2<bool>(true, arg_0));
    global0 = array<Struct_1, 11>();
    let var_2 = ~vec2<u32>(15906u, ~(~select(var_0.a, 44528u, arg_1.x)));
    var var_3 = Struct_2(select(select(vec4<bool>(true, true, !arg_0, all(vec2<bool>(true, false))), select(vec4<bool>(arg_0, false, false, true), vec4<bool>(false, var_1.x, arg_0, arg_0), !vec4<bool>(arg_1.x, arg_1.x, true, true)), vec4<bool>(!var_1.x, select(arg_0, false, false), true, false)), !select(!vec4<bool>(false, arg_0, arg_0, arg_0), !vec4<bool>(false, arg_1.x, false, var_1.x), !arg_0), vec4<bool>(~var_2.x != (5680u >> (var_0.a % 32u)), !(184f > var_0.b), !any(vec3<bool>(arg_1.x, arg_1.x, arg_1.x)), arg_1.x)), _wgslsmith_f_op_f32(-arg_2.x));
    return var_0.c;
}

fn func_2(arg_0: Struct_1, arg_1: u32, arg_2: Struct_2) -> Struct_2 {
    var var_0 = arg_2;
    var var_1 = u_input.b;
    global0 = array<Struct_1, 11>();
    let var_2 = _wgslsmith_mult_vec3_i32(countOneBits(vec3<i32>(-1i) * -u_input.b.yzz) >> (vec3<u32>(_wgslsmith_mod_u32(~arg_0.a, ~arg_0.a), ~26260u, abs(arg_0.a)) % vec3<u32>(32u)), countOneBits(-vec3<i32>(var_1.x, _wgslsmith_div_i32(var_1.x, -6307i), func_3(var_0.a.x, vec2<bool>(arg_2.a.x, false), vec4<f32>(-1172f, var_0.b, arg_2.b, arg_0.b)))));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1055f * 488f))) + -1000f) + 899f) + -1437f);
    return Struct_2(!var_0.a, 784f);
}

fn func_4(arg_0: Struct_2) -> vec4<bool> {
    global0 = array<Struct_1, 11>();
    let var_0 = vec4<i32>(i32(-1i) * -546i, abs(6316i) ^ -func_3(arg_0.a.x, select(vec2<bool>(true, arg_0.a.x), arg_0.a.xy, arg_0.a.x), vec4<f32>(arg_0.b, arg_0.b, arg_0.b, arg_0.b)), -11410i, i32(-1i) * -2147483647i);
    global1 = array<i32, 2>();
    let var_1 = _wgslsmith_add_vec3_u32(abs(~firstTrailingBit(~vec3<u32>(32106u, 5620u, 4294967295u))), vec3<u32>(1u, 1u, 1u));
    global1 = array<i32, 2>();
    return !select(select(!vec4<bool>(arg_0.a.x, arg_0.a.x, true, arg_0.a.x), vec4<bool>(arg_0.a.x, !arg_0.a.x, true & arg_0.a.x, !arg_0.a.x), vec4<bool>(arg_0.a.x & arg_0.a.x, !arg_0.a.x, true, arg_0.a.x)), !(!arg_0.a), vec4<bool>(arg_0.a.x, true == all(arg_0.a.xw), false, true));
}

fn func_1(arg_0: Struct_2, arg_1: i32) -> vec4<bool> {
    var var_0 = Struct_2(select(arg_0.a, arg_0.a, arg_0.a.x), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(arg_0.b)))));
    var_0 = Struct_2(vec4<bool>(arg_0.a.x, true, true, false), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1079f - arg_0.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b)))));
    global1 = array<i32, 2>();
    global0 = array<Struct_1, 11>();
    let var_1 = _wgslsmith_mod_i32(_wgslsmith_div_i32(2147483647i, -u_input.b.x), -(_wgslsmith_mod_i32(84588i, arg_1) << (_wgslsmith_mod_u32(~0u, ~47141u) % 32u)));
    return !select(var_0.a, !func_4(func_2(Struct_1(47426u, var_0.b, u_input.a, u_input.b.yxy, u_input.b.x), 11922u, Struct_2(vec4<bool>(var_0.a.x, arg_0.a.x, true, false), 346f))), arg_0.a.x);
}

fn func_5(arg_0: vec4<bool>, arg_1: vec3<bool>) -> Struct_1 {
    let var_0 = vec3<bool>(true | !((arg_0.x | arg_0.x) || any(vec2<bool>(arg_1.x, true))), true, !arg_0.x);
    global0 = array<Struct_1, 11>();
    global0 = array<Struct_1, 11>();
    var var_1 = Struct_1(1u, _wgslsmith_div_f32(-179f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(499f, 2154f)) + 521f) - _wgslsmith_f_op_f32(541f - _wgslsmith_f_op_f32(f32(-1f) * -206f)))), max(_wgslsmith_mult_i32(min(-1i, global1[_wgslsmith_index_u32(0u, 2u)]) >> (~0u % 32u), ~_wgslsmith_clamp_i32(0i, global1[_wgslsmith_index_u32(45308u, 2u)], u_input.a)), _wgslsmith_add_i32(firstTrailingBit(_wgslsmith_sub_i32(global1[_wgslsmith_index_u32(4294967295u, 2u)], 1i)), select(_wgslsmith_mod_i32(u_input.b.x, -1i), _wgslsmith_mult_i32(-16944i, global1[_wgslsmith_index_u32(1u, 2u)]), arg_1.x))), vec3<i32>(1i, _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(u_input.b, u_input.b), u_input.b), 0i) ^ ~(u_input.b.yyw << (_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 4294967295u, 1u), vec3<u32>(1u, 1u, 1u)) % vec3<u32>(32u))), u_input.b.x);
    var var_2 = Struct_2(vec4<bool>(true, true, !(!(!arg_0.x)), !func_4(Struct_2(arg_0, var_1.b)).x || (arg_0.x && true)), var_1.b);
    return Struct_1(~_wgslsmith_add_u32(~4294967295u, 28207u) | _wgslsmith_dot_vec3_u32(abs(~vec3<u32>(var_1.a, 0u, var_1.a)), _wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(var_1.a, var_1.a, 2726u), vec3<u32>(var_1.a, var_1.a, 18617u)), vec3<u32>(var_1.a, 1u, 1u))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.b) * var_2.b) * _wgslsmith_f_op_f32(237f * _wgslsmith_div_f32(-1390f, var_2.b))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b) + _wgslsmith_f_op_f32(1030f + var_2.b)), 1189f)))), _wgslsmith_clamp_i32(-_wgslsmith_sub_i32(1i, -global1[_wgslsmith_index_u32(0u, 2u)]), reverseBits(reverseBits(~global1[_wgslsmith_index_u32(9846u, 2u)])), _wgslsmith_add_i32(~var_1.d.x, _wgslsmith_dot_vec3_i32(var_1.d, vec3<i32>(29368i, -2147483647i, -1i))) | u_input.b.x), vec3<i32>(_wgslsmith_sub_i32(u_input.a >> (22304u % 32u), _wgslsmith_dot_vec4_i32(vec4<i32>(55412i, 1i, -1i, global1[_wgslsmith_index_u32(var_1.a, 2u)]), u_input.b)), _wgslsmith_div_i32(var_1.e | global1[_wgslsmith_index_u32(3810u, 2u)], -36184i), firstLeadingBit(2147483647i)) ^ (var_1.d >> (select(reverseBits(vec3<u32>(4294967295u, var_1.a, var_1.a)), reverseBits(vec3<u32>(0u, var_1.a, 1303u)), any(vec4<bool>(var_0.x, true, var_0.x, arg_0.x))) % vec3<u32>(32u))), -2147483647i);
}

fn func_6(arg_0: f32, arg_1: Struct_1, arg_2: Struct_2) -> vec4<f32> {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_0)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -791f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.b + arg_1.b) - -841f))) > _wgslsmith_f_op_f32(floor(func_5(!vec4<bool>(false, arg_2.a.x, true, arg_2.a.x), vec3<bool>(false, func_4(arg_2).x, any(arg_2.a))).b));
    var var_1 = vec3<i32>(_wgslsmith_dot_vec3_i32(arg_1.d >> (~abs(vec3<u32>(arg_1.a, 20464u, 55063u)) % vec3<u32>(32u)), abs(~vec3<i32>(u_input.a, 42329i, 19199i))), ~(-global1[_wgslsmith_index_u32(16738u, 2u)] & func_3(global1[_wgslsmith_index_u32(arg_1.a, 2u)] <= -1i, vec2<bool>(true, true), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_2.b, arg_0, arg_2.b, -1000f))))), u_input.b.x);
    let var_2 = 1i;
    var_1 = _wgslsmith_sub_vec3_i32(vec3<i32>(var_2, 86669i, ~var_1.x) ^ _wgslsmith_mult_vec3_i32(_wgslsmith_sub_vec3_i32(~u_input.b.yxw, _wgslsmith_clamp_vec3_i32(vec3<i32>(global1[_wgslsmith_index_u32(1u, 2u)], var_2, 56199i), u_input.b.xxz, u_input.b.zzw)), ~(-vec3<i32>(var_1.x, 5260i, 2147483647i))), _wgslsmith_add_vec3_i32(vec3<i32>(-2147483647i << (arg_1.a % 32u), _wgslsmith_mod_i32(32636i, -6179i), -11990i) << (vec3<u32>(~1u, 17879u, min(arg_1.a, arg_1.a)) % vec3<u32>(32u)), -u_input.b.yxw));
    var var_3 = arg_1.b;
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(-195f, arg_2.b, -1000f, -1000f) - vec4<f32>(571f, 375f, -1000f, 472f)))) * vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), arg_0, -731f, -384f)), vec4<f32>(arg_1.b, _wgslsmith_div_f32(arg_2.b, _wgslsmith_f_op_f32(arg_2.b + arg_1.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -688f)), -324f)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 11>();
    let var_0 = 1i;
    var var_1 = vec3<u32>(~1u, ~(0u >> (1u % 32u)), select(~countOneBits(4294967295u), ~(~78096u), any(vec3<bool>(true, true, true))));
    global1 = array<i32, 2>();
    let var_2 = _wgslsmith_f_op_vec4_f32(func_6(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(650f)), -1101f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-692f - -436f) + _wgslsmith_f_op_f32(1212f * 1292f)))), func_5(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), any(vec4<bool>(false, true, false, false))), select(func_1(Struct_2(vec4<bool>(false, true, true, true), -833f), u_input.a), func_1(Struct_2(vec4<bool>(false, false, true, true), -828f), var_0), vec4<bool>(true, true, true, true)), any(func_2(Struct_1(21561u, 877f, u_input.b.x, vec3<i32>(var_0, 1i, 1i), 0i), 76002u, Struct_2(vec4<bool>(true, false, true, false), -1485f)).a.wyz)), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false)), vec3<bool>(true, any(vec4<bool>(true, true, false, false)), true), vec3<bool>(true, true, true))), func_2(Struct_1(53408u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1466f, 1563f)) * _wgslsmith_f_op_f32(floor(-1000f))), _wgslsmith_mult_i32(_wgslsmith_div_i32(global1[_wgslsmith_index_u32(var_1.x, 2u)], u_input.a), u_input.a), func_5(vec4<bool>(true, true, true, false), vec3<bool>(true, true, true)).d | u_input.b.zxz, ~(u_input.b.x & global1[_wgslsmith_index_u32(27567u, 2u)])), 6263u << ((1u ^ var_1.x) % 32u), func_2(Struct_1(firstLeadingBit(49310u), _wgslsmith_f_op_f32(round(742f)), firstLeadingBit(var_0), _wgslsmith_add_vec3_i32(u_input.b.zwz, vec3<i32>(u_input.a, u_input.b.x, global1[_wgslsmith_index_u32(var_1.x, 2u)])), global1[_wgslsmith_index_u32(~var_1.x, 2u)]), (23417u >> (0u % 32u)) >> (1u % 32u), func_2(Struct_1(var_1.x, -850f, global1[_wgslsmith_index_u32(1u, 2u)], u_input.b.xww, u_input.b.x), max(var_1.x, var_1.x), Struct_2(vec4<bool>(true, true, true, true), -312f))))));
    var var_3 = _wgslsmith_add_i32(~_wgslsmith_dot_vec3_i32(abs(u_input.b.wwz), abs(~vec3<i32>(25154i, 1i, 1i))), var_0);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.x - -163f) + _wgslsmith_f_op_f32(var_2.x + 347f))))), ~14483i, vec4<u32>(_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(var_1.zx, vec2<u32>(var_1.x, var_1.x) & vec2<u32>(3296u, 1u)), firstLeadingBit(abs(var_1.x))), func_5(vec4<bool>(true, true, true, true), vec3<bool>(true, true, true)).a, firstTrailingBit(_wgslsmith_sub_u32(22241u, var_1.x)) << (_wgslsmith_clamp_u32(50122u << (var_1.x % 32u), var_1.x, _wgslsmith_sub_u32(0u, var_1.x)) % 32u), min(_wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(var_1.x, var_1.x)), ~var_1.yz), firstLeadingBit(26946u))));
}

