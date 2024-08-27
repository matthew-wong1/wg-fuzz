struct Struct_1 {
    a: vec3<i32>,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_1,
    c: vec3<bool>,
    d: vec2<i32>,
    e: vec4<bool>,
}

struct Struct_4 {
    a: vec2<bool>,
    b: Struct_2,
}

struct Struct_5 {
    a: f32,
    b: u32,
    c: Struct_4,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec3<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec3<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<f32, 10> = array<f32, 10>(565f, -1220f, -1490f, 1048f, -342f, 587f, -1389f, 1681f, 701f, -1000f);

var<private> global2: f32 = 1111f;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32) -> u32 {
    var var_0 = select(vec4<bool>(true, any(vec3<bool>(true, false, false)) & true, any(vec4<bool>(any(vec4<bool>(true, false, false, true)), true, all(vec3<bool>(false, true, true)), true)), true), vec4<bool>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_0))) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-2016f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2173f) - -1000f) <= _wgslsmith_f_op_f32(floor(463f)), any(vec3<bool>(true, true, true)), any(select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, false), true), true))), vec4<bool>(true, true, true, true));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global0.b))) + global1[_wgslsmith_index_u32(13207u, 10u)]);
    global1 = array<f32, 10>();
    global0 = Struct_1(select(vec3<i32>(_wgslsmith_sub_i32(25278i, global0.a.x), -global0.a.x, -select(global0.a.x, 1i, true)), global0.a, all(vec4<bool>(var_0.x, 39562i == global0.a.x, select(true, var_0.x, var_0.x), var_0.x))), _wgslsmith_div_f32(var_1, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.b - var_1), _wgslsmith_f_op_f32(f32(-1f) * -826f)))));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -667f), _wgslsmith_f_op_f32(-816f * -351f), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(4294967295u, 10u)] - var_1)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-544f, -435f, global1[_wgslsmith_index_u32(u_input.d.x, 10u)])) - _wgslsmith_f_op_vec3_f32(vec3<f32>(450f, var_1, -705f) + vec3<f32>(var_1, 420f, 1000f)))))));
    return u_input.d.x >> (_wgslsmith_clamp_u32(51060u, 3328u, ~(~(u_input.d.x >> (u_input.a % 32u)))) % 32u);
}

fn func_4(arg_0: Struct_5, arg_1: Struct_5) -> vec2<bool> {
    global1 = array<f32, 10>();
    var var_0 = ~vec3<u32>(_wgslsmith_add_u32(_wgslsmith_sub_u32(select(arg_0.b, u_input.a, false), min(arg_0.b, 36014u)), ~u_input.a), u_input.a, min(_wgslsmith_sub_u32(select(0u, 0u, true), ~1u), _wgslsmith_mod_u32(63510u, arg_0.b) >> (u_input.a % 32u)));
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f - -1011f) - 386f), global1[_wgslsmith_index_u32(~arg_0.b | 4294967295u, 10u)]);
    var var_2 = countOneBits(~arg_0.c.b.a.a.yz);
    var var_3 = vec2<i32>(-1i) * -vec2<i32>(-1i, min(_wgslsmith_dot_vec3_i32(global0.a, u_input.c), u_input.c.x));
    return vec2<bool>(true, any(!(!vec4<bool>(arg_1.c.a.x, false, arg_1.c.a.x, true))) | !(!arg_0.c.a.x | true));
}

fn func_2(arg_0: vec2<f32>, arg_1: i32) -> Struct_4 {
    return Struct_4(func_4(Struct_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-941f)) - global0.b), u_input.a, Struct_4(select(vec2<bool>(true, false), vec2<bool>(false, false), false), Struct_2(Struct_1(vec3<i32>(-1i, global0.a.x, 78922i), arg_0.x)))), Struct_5(global1[_wgslsmith_index_u32(47607u, 10u)], u_input.d.x >> (func_3(1000f) % 32u), Struct_4(select(vec2<bool>(true, true), vec2<bool>(false, false), true), Struct_2(Struct_1(vec3<i32>(arg_1, -2147483647i, u_input.c.x), -1000f))))), Struct_2(Struct_1((vec3<i32>(40909i, global0.a.x, -2147483647i) >> (u_input.d % vec3<u32>(32u))) << ((u_input.d | u_input.d) % vec3<u32>(32u)), _wgslsmith_div_f32(_wgslsmith_div_f32(global0.b, 1483f), _wgslsmith_f_op_f32(sign(global1[_wgslsmith_index_u32(4294967295u, 10u)]))))));
}

fn func_5(arg_0: Struct_5, arg_1: Struct_3) -> u32 {
    let var_0 = Struct_4(func_4(Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0.c.b.a.b))), ~u_input.d.x, func_2(vec2<f32>(-2183f, -637f), ~(-26276i))), arg_0), func_2(arg_1.a.zy, _wgslsmith_mult_i32(-36534i, 30218i)).b);
    global0 = Struct_1(~firstLeadingBit(-vec3<i32>(global0.a.x, 2147483647i, arg_1.b.a.x) << ((vec3<u32>(1u, 4294967295u, 1u) >> (u_input.d % vec3<u32>(32u))) % vec3<u32>(32u))), arg_0.a);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(-477f, var_0.b.a.b)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1046f)));
    global1 = array<f32, 10>();
    global1 = array<f32, 10>();
    return reverseBits(_wgslsmith_div_u32(arg_0.b, 0u));
}

fn func_1(arg_0: Struct_1) -> Struct_4 {
    var var_0 = func_5(Struct_5(global0.b, ~(~1u), func_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(1u, 10u)], -1000f) - vec2<f32>(global0.b, -316f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.b, 142f))), 0i)), Struct_3(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(62997u, 10u)]), -2194f), global0.b, _wgslsmith_f_op_f32(-1314f + _wgslsmith_f_op_f32(global0.b - global1[_wgslsmith_index_u32(1u, 10u)]))), arg_0, !vec3<bool>(true, 4294967295u == u_input.a, false), _wgslsmith_div_vec2_i32(vec2<i32>(1i, 1i), countOneBits(~vec2<i32>(u_input.b.x, -76926i))), !select(select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, true)), vec4<bool>(true, false, false, false), true)));
    let var_1 = func_2(vec2<f32>(func_2(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1000f, global1[_wgslsmith_index_u32(u_input.a, 10u)]), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(arg_0.b, global0.b), vec2<f32>(global0.b, 732f))), any(vec2<bool>(false, false)))), -24371i).b.a.b, _wgslsmith_f_op_f32(1411f - -1605f)), global0.a.x | ~(~_wgslsmith_div_i32(u_input.c.x, global0.a.x))).b.a.b;
    var var_2 = Struct_3(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-var_1), 260f, arg_0.b), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_0.b, global1[_wgslsmith_index_u32(u_input.d.x, 10u)], var_1), vec3<f32>(-422f, 390f, 919f), true))), vec3<bool>(true, true, true))), vec3<f32>(_wgslsmith_f_op_f32(-var_1), global0.b, _wgslsmith_f_op_f32(f32(-1f) * -172f)), vec3<bool>(_wgslsmith_clamp_i32(u_input.c.x, 715i, u_input.c.x) < (u_input.c.x << (4294967295u % 32u)), !(arg_0.a.x <= global0.a.x), true))), arg_0, vec3<bool>(true, true, true), vec2<i32>(arg_0.a.x, -global0.a.x) << (~(vec2<u32>(u_input.d.x, u_input.d.x) | (vec2<u32>(u_input.d.x, u_input.d.x) << (u_input.d.yz % vec2<u32>(32u)))) % vec2<u32>(32u)), select(vec4<bool>(true, true, true, true), !vec4<bool>(false, any(vec3<bool>(false, false, false)), true, u_input.a != u_input.a), vec4<bool>(false, true, false, any(vec3<bool>(true, true, true)))));
    let var_3 = !var_2.e.x;
    global2 = -1450f;
    return Struct_4(!vec2<bool>(var_2.e.x, var_3), func_2(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_1, 876f))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(var_2.a.zx + var_2.a.yx), var_2.a.zx), var_2.c.x)), -11552i).b);
}

fn func_6(arg_0: Struct_4, arg_1: i32, arg_2: vec2<i32>, arg_3: Struct_2) -> StorageBuffer {
    global2 = _wgslsmith_f_op_f32(round(arg_3.a.b));
    var var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-533f))), _wgslsmith_f_op_f32(466f - _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(0u, 10u)] * global1[_wgslsmith_index_u32(u_input.d.x, 10u)]))) + _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global0.b, 1981f, arg_3.a.b)))))))), arg_3.a, !(!(!select(vec3<bool>(false, arg_0.a.x, arg_0.a.x), vec3<bool>(false, false, true), vec3<bool>(arg_0.a.x, false, false)))), reverseBits(-countOneBits(u_input.b)) << (u_input.d.xx % vec2<u32>(32u)), !vec4<bool>(arg_3.a.a.x < ~u_input.b.x, _wgslsmith_mod_u32(31783u, 35804u) < (1u << (u_input.a % 32u)), true, false));
    let var_1 = max(-firstLeadingBit(countOneBits(u_input.c)), min(vec3<i32>(-arg_3.a.a.x, ~7350i, global0.a.x), _wgslsmith_div_vec3_i32(arg_0.b.a.a, vec3<i32>(1i, 0i, arg_3.a.a.x))) & func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.a.xy)), -arg_3.a.a.x << (max(u_input.d.x, u_input.a) % 32u)).b.a.a);
    global1 = array<f32, 10>();
    global0 = var_0.b;
    return StorageBuffer(vec4<i32>(select(func_2(vec2<f32>(global1[_wgslsmith_index_u32(4294967295u, 10u)], var_0.b.b), 1i).b.a.a.x ^ (-1i ^ arg_1), _wgslsmith_sub_i32(u_input.b.x, -35277i), select(var_0.e.x & var_0.e.x, false, false)), min(-2147483647i, 1i), _wgslsmith_dot_vec3_i32(~arg_0.b.a.a, var_0.b.a), 2147483647i), max(u_input.d.x, func_3(_wgslsmith_div_f32(arg_3.a.b, arg_0.b.a.b))) & ~func_3(779f), ~vec3<u32>(~u_input.a ^ _wgslsmith_mult_u32(u_input.d.x, 9195u), 1u << (_wgslsmith_dot_vec3_u32(u_input.d, u_input.d) % 32u), u_input.a), ~(-19521i));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_6(func_1(Struct_1(_wgslsmith_mod_vec3_i32(vec3<i32>(-39304i, 47045i, 3588i), global0.a | global0.a), _wgslsmith_f_op_f32(round(global1[_wgslsmith_index_u32(9434u, 10u)])))), reverseBits(firstTrailingBit(-1i)), _wgslsmith_mult_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(~global0.a.x, u_input.b.x & u_input.b.x), ~_wgslsmith_div_vec2_i32(vec2<i32>(u_input.b.x, u_input.b.x), vec2<i32>(u_input.b.x, -42332i))), u_input.c.zy), Struct_2(Struct_1(vec3<i32>(-25139i, global0.a.x, -u_input.b.x), global0.b)));
}

