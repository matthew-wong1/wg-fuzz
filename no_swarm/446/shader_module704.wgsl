struct Struct_1 {
    a: f32,
    b: f32,
    c: u32,
    d: vec4<i32>,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
}

struct Struct_3 {
    a: f32,
    b: vec3<i32>,
}

struct Struct_4 {
    a: Struct_3,
    b: i32,
    c: f32,
}

struct Struct_5 {
    a: Struct_2,
    b: u32,
    c: u32,
    d: Struct_4,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: vec4<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 11>;

var<private> global1: array<i32, 31>;

var<private> global2: array<f32, 3> = array<f32, 3>(1112f, 2064f, -372f);

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: f32) -> f32 {
    global1 = array<i32, 31>();
    let var_0 = vec2<u32>(abs(u_input.b.x), _wgslsmith_clamp_u32(arg_1 | _wgslsmith_dot_vec2_u32(reverseBits(u_input.d.ww), ~u_input.a), 1u, u_input.a.x));
    var var_1 = Struct_4(Struct_3(arg_0.b, max(u_input.c.xxw, -_wgslsmith_mult_vec3_i32(vec3<i32>(arg_0.d.x, global1[_wgslsmith_index_u32(var_0.x, 31u)], global1[_wgslsmith_index_u32(0u, 31u)]), vec3<i32>(u_input.c.x, arg_0.d.x, global1[_wgslsmith_index_u32(0u, 31u)])))), firstLeadingBit(_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(u_input.c.yyy & vec3<i32>(2147483647i, u_input.c.x, 0i), -u_input.c.yzy), ~(-1i >> (arg_0.c % 32u)))), arg_0.b);
    var_1 = Struct_4(Struct_3(_wgslsmith_f_op_f32(-var_1.c), vec3<i32>(u_input.c.x, _wgslsmith_clamp_i32(u_input.c.x, global1[_wgslsmith_index_u32(81258u, 31u)], u_input.c.x) << (firstTrailingBit(1u) % 32u), arg_0.d.x)), var_1.b, _wgslsmith_f_op_f32(select(-2013f, _wgslsmith_f_op_f32(arg_0.b * _wgslsmith_f_op_f32(f32(-1f) * -509f)), ~(arg_0.c ^ u_input.a.x) > ~(1u ^ var_0.x))));
    var var_2 = Struct_2(global0[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(firstLeadingBit(~23758u), 0u, ~(~arg_1)), 11u)], arg_0, arg_1);
    return var_2.b.b;
}

fn func_2(arg_0: Struct_4) -> Struct_5 {
    var var_0 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_1(global2[_wgslsmith_index_u32(u_input.d.x, 3u)], -1141f, 0u, u_input.c, global2[_wgslsmith_index_u32(u_input.a.x, 3u)]), u_input.b.x, global2[_wgslsmith_index_u32(24658u, 3u)])) - _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(80878u, 3u)]))), _wgslsmith_f_op_f32(-arg_0.a.a)), _wgslsmith_f_op_f32(func_3(global0[_wgslsmith_index_u32(1u, 11u)], 0u ^ u_input.d.x, _wgslsmith_f_op_f32(-arg_0.a.a))), 4294967295u, vec4<i32>(_wgslsmith_mod_i32(global1[_wgslsmith_index_u32(u_input.b.x, 31u)], _wgslsmith_clamp_i32(-1i, -arg_0.b, -1i)), ~u_input.c.x, countOneBits(1i), 0i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(global0[_wgslsmith_index_u32(u_input.b.x, 11u)], ~u_input.a.x, _wgslsmith_f_op_f32(step(arg_0.a.a, _wgslsmith_f_op_f32(f32(-1f) * -287f))))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1466f) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2[_wgslsmith_index_u32(4294967295u, 3u)], arg_0.a.a)))));
    let var_1 = Struct_3(arg_0.c, vec3<i32>(u_input.c.x, 1i, u_input.c.x));
    var var_2 = vec2<f32>(346f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-2585f, -347f))), var_0.b))));
    let var_3 = min(reverseBits(var_1.b.x), firstLeadingBit(var_1.b.x)) << (1u % 32u);
    global0 = array<Struct_1, 11>();
    return Struct_5(Struct_2(global0[_wgslsmith_index_u32(11053u, 11u)], Struct_1(var_0.b, _wgslsmith_f_op_f32(abs(-914f)), 63194u, var_0.d, _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.e, global2[_wgslsmith_index_u32(36632u, 3u)]) + 1000f)), var_0.c), u_input.d.x, select(firstTrailingBit(_wgslsmith_sub_u32(31940u, var_0.c & 0u)), 65723u, true), Struct_4(var_1, _wgslsmith_add_i32(var_3, var_1.b.x), _wgslsmith_f_op_f32(f32(-1f) * -153f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(1000f, var_2.x))), _wgslsmith_f_op_vec2_f32(vec2<f32>(620f, arg_0.a.a) - vec2<f32>(-578f, -369f)))))));
}

fn func_4(arg_0: Struct_5, arg_1: u32) -> vec4<u32> {
    global2 = array<f32, 3>();
    var var_0 = _wgslsmith_add_i32(~28993i, ~(_wgslsmith_sub_i32(global1[_wgslsmith_index_u32(0u, 31u)] >> (arg_0.c % 32u), _wgslsmith_div_i32(0i, -27614i)) & u_input.c.x));
    var var_1 = arg_0.d.a;
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(floor(arg_0.d.a.a)), 122f, _wgslsmith_f_op_f32(min(arg_0.d.a.a, _wgslsmith_f_op_f32(arg_0.d.c + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a))))), -626f);
    let var_3 = select(vec4<bool>(_wgslsmith_f_op_f32(exp2(var_2.x)) >= _wgslsmith_f_op_f32(exp2(var_1.a)), true, any(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true))), false), !vec4<bool>(all(vec4<bool>(false, false, true, false)), true, true, all(vec3<bool>(true, true, true))), !(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true))));
    return u_input.d;
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_5, arg_2: i32) -> Struct_3 {
    var var_0 = _wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(~abs(u_input.d), _wgslsmith_mult_vec4_u32(abs(vec4<u32>(u_input.d.x, arg_1.b, u_input.d.x, 4294967295u)) ^ ~vec4<u32>(arg_1.c, arg_1.a.c, arg_1.c, 29143u), func_4(func_2(Struct_4(arg_1.d.a, 14217i, 175f)), 44951u))), vec4<u32>(4294967295u, ~_wgslsmith_mult_u32(4294967295u ^ arg_1.b, _wgslsmith_sub_u32(arg_1.b, 18943u)), 1u, 28995u >> (reverseBits(arg_1.a.a.c) % 32u)));
    global1 = array<i32, 31>();
    let var_1 = 476f;
    var var_2 = !vec2<bool>(!(true || all(vec4<bool>(false, false, true, true))), any(vec2<bool>(true, all(vec4<bool>(false, false, true, false)))));
    return func_2(Struct_4(func_2(arg_1.d).d.a, arg_0.x | u_input.c.x, global2[_wgslsmith_index_u32(u_input.a.x << (((var_0.x << (u_input.d.x % 32u)) << (var_0.x % 32u)) % 32u), 3u)])).d.a;
}

fn func_5(arg_0: Struct_3, arg_1: vec3<i32>, arg_2: i32) -> Struct_3 {
    let var_0 = true;
    global2 = array<f32, 3>();
    global0 = array<Struct_1, 11>();
    global0 = array<Struct_1, 11>();
    var var_1 = vec4<bool>(false, any(!vec4<bool>(!var_0, true, any(vec4<bool>(true, var_0, false, true)), true)), true, !var_0);
    return Struct_3(global2[_wgslsmith_index_u32(u_input.a.x, 3u)], _wgslsmith_add_vec3_i32(_wgslsmith_sub_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.c.x, arg_2, -2147483647i), vec3<i32>(-10398i, 3400i, -7522i)), arg_0.b & vec3<i32>(global1[_wgslsmith_index_u32(1u, 31u)], global1[_wgslsmith_index_u32(47788u, 31u)], arg_1.x)) << ((~vec3<u32>(0u, u_input.a.x, u_input.a.x) ^ vec3<u32>(0u, u_input.a.x, u_input.a.x)) % vec3<u32>(32u)), ~(-(~arg_1))));
}

fn func_6(arg_0: vec2<u32>, arg_1: Struct_3) -> f32 {
    global0 = array<Struct_1, 11>();
    let var_0 = func_2(Struct_4(func_1(vec4<i32>(u_input.c.x, _wgslsmith_add_i32(68351i, -24493i), arg_1.b.x ^ -34768i, _wgslsmith_clamp_i32(-40132i, u_input.c.x, arg_1.b.x)), func_2(Struct_4(arg_1, 1i, arg_1.a)), countOneBits(~u_input.c.x)), ~(-(arg_1.b.x & 2147483647i)), arg_1.a)).a.a;
    var var_1 = func_2(Struct_4(func_1(-(~u_input.c), func_2(Struct_4(arg_1, 1i, var_0.e)), -19721i), countOneBits(select(i32(-1i) * -1i, 2456i, select(true, false, false))), _wgslsmith_f_op_f32(var_0.b + global2[_wgslsmith_index_u32(~countOneBits(u_input.d.x), 3u)]))).a.a;
    global1 = array<i32, 31>();
    var var_2 = true;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_1(var_0.d, Struct_5(Struct_2(Struct_1(-1273f, var_0.a, var_0.c, vec4<i32>(0i, -36020i, 1i, global1[_wgslsmith_index_u32(arg_0.x, 31u)]), -2081f), Struct_1(arg_1.a, -371f, 4294967295u, vec4<i32>(var_1.d.x, -1i, var_1.d.x, -2147483647i), 1609f), arg_0.x), var_0.c, 1u, Struct_4(arg_1, 0i, 869f), vec2<f32>(-300f, global2[_wgslsmith_index_u32(var_0.c, 3u)])), var_1.d.x).a)) - _wgslsmith_div_f32(arg_1.a, _wgslsmith_f_op_f32(-var_0.e))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = all(!vec4<bool>(!any(vec3<bool>(true, false, false)), !(806u <= u_input.d.x), (global1[_wgslsmith_index_u32(1u, 31u)] != -13715i) & (1u <= u_input.d.x), true));
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(1u, 3u)] * 519f))))), _wgslsmith_f_op_f32(func_6(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.b.x, u_input.a.x), vec2<u32>(4294967295u, u_input.b.x)), func_5(func_1(u_input.c, Struct_5(Struct_2(global0[_wgslsmith_index_u32(u_input.a.x, 11u)], Struct_1(global2[_wgslsmith_index_u32(34479u, 3u)], -215f, u_input.d.x, vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, -46760i), -1000f), 75074u), 0u, u_input.b.x, Struct_4(Struct_3(global2[_wgslsmith_index_u32(50683u, 3u)], vec3<i32>(-1i, 0i, u_input.c.x)), u_input.c.x, global2[_wgslsmith_index_u32(u_input.a.x, 3u)]), vec2<f32>(-203f, global2[_wgslsmith_index_u32(u_input.b.x, 3u)])), global1[_wgslsmith_index_u32(u_input.d.x, 31u)]), u_input.c.wzy, 0i))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(~_wgslsmith_add_u32(9863u, 26820u), 3u)]) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(1483f, global2[_wgslsmith_index_u32(u_input.b.x, 3u)])), global2[_wgslsmith_index_u32(4294967295u, 3u)])))), -1664f);
    let var_2 = (countOneBits(max(~u_input.d.x, ~u_input.b.x)) ^ u_input.b.x) >> (~(~u_input.b.x) % 32u);
    global1 = array<i32, 31>();
    global1 = array<i32, 31>();
    var var_3 = Struct_2(Struct_1(var_1.x, var_1.x, 4294967295u, -_wgslsmith_add_vec4_i32(max(vec4<i32>(global1[_wgslsmith_index_u32(4294967295u, 31u)], -2147483647i, 1i, 14102i), vec4<i32>(u_input.c.x, global1[_wgslsmith_index_u32(26503u, 31u)], u_input.c.x, u_input.c.x)), _wgslsmith_mod_vec4_i32(u_input.c, u_input.c)), global2[_wgslsmith_index_u32(3781u, 3u)]), global0[_wgslsmith_index_u32((u_input.b.x ^ u_input.a.x) ^ abs(0u), 11u)], var_2);
    let x = u_input.a;
    s_output = StorageBuffer(abs(-(firstLeadingBit(vec3<i32>(var_3.a.d.x, u_input.c.x, global1[_wgslsmith_index_u32(24089u, 31u)])) & vec3<i32>(17639i, 0i, var_3.a.d.x))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(0u, 3u)])) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1382f, global2[_wgslsmith_index_u32(0u, 3u)], false)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-375f * 2825f) - _wgslsmith_f_op_f32(-var_1.x)) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.x, -195f) + _wgslsmith_f_op_f32(abs(global2[_wgslsmith_index_u32(43163u, 3u)])))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -335f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(var_3.b.e, var_1.x)), _wgslsmith_f_op_f32(-var_3.b.a))), 761f), reverseBits(var_3.b.d.x));
}

