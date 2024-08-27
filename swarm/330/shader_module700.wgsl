struct Struct_1 {
    a: vec2<i32>,
    b: vec2<f32>,
    c: vec4<i32>,
    d: vec3<bool>,
    e: vec4<i32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: f32,
    c: f32,
    d: f32,
    e: bool,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec3<bool>,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_3,
    d: Struct_1,
    e: f32,
}

struct Struct_5 {
    a: Struct_1,
    b: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 9> = array<bool, 9>(true, false, false, true, true, true, false, true, false);

var<private> global1: array<Struct_4, 29>;

var<private> global2: Struct_2;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: u32, arg_1: f32, arg_2: vec3<bool>) -> vec2<f32> {
    global1 = array<Struct_4, 29>();
    global2 = Struct_2(vec2<bool>(arg_2.x, true), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1), -825f), _wgslsmith_f_op_f32(abs(150f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.b + _wgslsmith_f_op_f32(-arg_1)) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1107f + global2.b))))), !arg_2.x && !global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(47401u, arg_0, 0u), vec3<u32>(arg_0, 39679u, arg_0)), firstLeadingBit(vec3<u32>(u_input.b, u_input.b, arg_0))), 9u)]);
    let var_0 = Struct_4(Struct_2(select(select(!global2.a, !vec2<bool>(arg_2.x, false), vec2<bool>(arg_2.x, arg_2.x)), !vec2<bool>(false, global0[_wgslsmith_index_u32(36586u, 9u)]), abs(u_input.b) > 4294967295u), _wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(arg_1 + _wgslsmith_f_op_f32(-global2.d)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-308f - _wgslsmith_f_op_f32(f32(-1f) * -1931f)) * _wgslsmith_f_op_f32(global2.c + _wgslsmith_f_op_f32(1006f + global2.b))), _wgslsmith_f_op_f32(f32(-1f) * -837f), all(vec3<bool>(false, true, !arg_2.x))), Struct_1(vec2<i32>(~reverseBits(u_input.a.x), _wgslsmith_mod_i32(u_input.a.x, ~u_input.a.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1, 435f) * vec2<f32>(-662f, global2.d)))) + _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.d, global2.d))))), -_wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a.x, -1i, 19269i, 9194i), vec4<i32>(15026i, 15469i, 1i, u_input.a.x)), vec4<i32>(-18954i, u_input.a.x, u_input.a.x, u_input.a.x)), arg_2, vec4<i32>(-25183i, u_input.a.x, u_input.a.x, u_input.a.x)), Struct_3(~(~min(vec4<u32>(0u, arg_0, 8991u, 1u), vec4<u32>(36924u, 0u, u_input.b, u_input.b))), arg_2, Struct_1(vec2<i32>(10821i, 1i), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, -903f) * vec2<f32>(global2.c, -150f)), _wgslsmith_div_vec2_f32(vec2<f32>(global2.b, -402f), vec2<f32>(364f, -730f))), min(_wgslsmith_clamp_vec4_i32(vec4<i32>(0i, u_input.a.x, u_input.a.x, u_input.a.x), vec4<i32>(2147483647i, 19841i, u_input.a.x, -1939i), vec4<i32>(u_input.a.x, u_input.a.x, 29071i, u_input.a.x)), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, -1i, 29093i), vec4<i32>(-45221i, u_input.a.x, 0i, u_input.a.x))), select(arg_2, vec3<bool>(arg_2.x, global2.a.x, global0[_wgslsmith_index_u32(107532u, 9u)]), false), ~vec4<i32>(1i, u_input.a.x, u_input.a.x, u_input.a.x) | _wgslsmith_div_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 0i), vec4<i32>(u_input.a.x, -1i, 27022i, 74054i)))), Struct_1(vec2<i32>(_wgslsmith_div_i32(u_input.a.x, u_input.a.x), _wgslsmith_dot_vec2_i32(abs(vec2<i32>(u_input.a.x, 1i)), vec2<i32>(52639i, u_input.a.x))), vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(-297f)))), -417f), vec4<i32>(-1i, countOneBits(-u_input.a.x), _wgslsmith_dot_vec3_i32(u_input.a, u_input.a), 11584i), !(!arg_2), select((vec4<i32>(20094i, 0i, -14575i, 4358i) << (vec4<u32>(arg_0, 27438u, u_input.b, 5659u) % vec4<u32>(32u))) << (vec4<u32>(4294967295u, arg_0, 99039u, 0u) % vec4<u32>(32u)), vec4<i32>(-u_input.a.x, u_input.a.x, u_input.a.x, -1i), select(!vec4<bool>(true, arg_2.x, true, global2.e), select(vec4<bool>(global0[_wgslsmith_index_u32(71950u, 9u)], global0[_wgslsmith_index_u32(4294967295u, 9u)], arg_2.x, false), vec4<bool>(true, false, arg_2.x, global2.a.x), true), !global0[_wgslsmith_index_u32(arg_0, 9u)]))), _wgslsmith_f_op_f32(-713f + 366f));
    var var_1 = false;
    var var_2 = all(select(vec3<bool>(true | (-19701i <= var_0.d.a.x), global0[_wgslsmith_index_u32(~1u & _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 4294967295u, arg_0, var_0.c.a.x), vec4<u32>(96791u, var_0.c.a.x, var_0.c.a.x, var_0.c.a.x)), 9u)], !(!var_0.a.a.x)), vec3<bool>(!(true == global2.a.x), !global0[_wgslsmith_index_u32(arg_0, 9u)], true), arg_2.x));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(413f, 607f)))) - vec2<f32>(349f, _wgslsmith_f_op_f32(ceil(-1214f)))));
}

fn func_4(arg_0: vec2<f32>, arg_1: i32) -> vec2<u32> {
    global0 = array<bool, 9>();
    let var_0 = ~(~(-_wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, -2147483647i, u_input.a.x, 57325i), _wgslsmith_sub_vec4_i32(vec4<i32>(-12427i, u_input.a.x, 0i, 32596i), vec4<i32>(arg_1, arg_1, -2147483647i, -51234i)), vec4<i32>(2147483647i, u_input.a.x, u_input.a.x, u_input.a.x) ^ vec4<i32>(arg_1, 39980i, -1i, 37792i))));
    let var_1 = select((max(_wgslsmith_mult_vec4_i32(vec4<i32>(32039i, arg_1, u_input.a.x, var_0.x), vec4<i32>(u_input.a.x, 2147483647i, arg_1, arg_1)), var_0 & vec4<i32>(u_input.a.x, 18296i, var_0.x, 1i)) >> (_wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.b, 29660u, u_input.b, 47799u), max(vec4<u32>(27419u, u_input.b, u_input.b, u_input.b), vec4<u32>(1u, u_input.b, 27949u, u_input.b))) % vec4<u32>(32u))) | var_0, vec4<i32>(-_wgslsmith_add_i32(var_0.x, 2147483647i), ~1i, ~_wgslsmith_mult_i32(var_0.x, arg_1), -_wgslsmith_mult_i32(-20754i, 3042i)) ^ vec4<i32>(_wgslsmith_sub_i32(0i, 2147483647i), i32(-1i) * -var_0.x, 22296i, -2475i), any(select(select(select(vec3<bool>(false, true, global2.a.x), vec3<bool>(false, true, true), vec3<bool>(global2.a.x, false, global2.e)), vec3<bool>(true, true, true), !vec3<bool>(global0[_wgslsmith_index_u32(u_input.b, 9u)], global0[_wgslsmith_index_u32(1u, 9u)], true)), !(!vec3<bool>(false, global2.e, false)), vec3<bool>(-113f != global2.c, any(vec4<bool>(global0[_wgslsmith_index_u32(5896u, 9u)], false, true, true)), true))));
    global2 = Struct_2(vec2<bool>(true, true), -698f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(626f)) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.d), _wgslsmith_f_op_f32(-global2.c)))), -1064f, global0[_wgslsmith_index_u32(~u_input.b, 9u)]);
    let var_2 = global2.c;
    return reverseBits(max(abs(~vec2<u32>(u_input.b, u_input.b) | vec2<u32>(7249u, 4294967295u)), ~vec2<u32>(~88039u, 1u)));
}

fn func_2() -> vec2<u32> {
    let var_0 = _wgslsmith_mod_i32(-37473i, u_input.a.x);
    global1 = array<Struct_4, 29>();
    global2 = Struct_2(!select(select(vec2<bool>(true, true), !vec2<bool>(true, global0[_wgslsmith_index_u32(u_input.b, 9u)]), true), select(!global2.a, vec2<bool>(true, true), global0[_wgslsmith_index_u32(u_input.b, 9u)] | false), true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f * -1017f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(-164f, global2.b)))), _wgslsmith_f_op_f32(-439f - 199f), _wgslsmith_add_u32(max(0u, 1u), select(u_input.b, _wgslsmith_add_u32(4294967295u, u_input.b), true)) >= countOneBits(_wgslsmith_clamp_u32(68715u, u_input.b, ~46090u)));
    global0 = array<bool, 9>();
    let var_1 = ~_wgslsmith_add_vec2_u32(select(vec2<u32>(4294967295u, 2023u), abs(vec2<u32>(u_input.b, 4294967295u)), !vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.b, 9u)])) >> (~(~vec2<u32>(4294967295u, u_input.b)) % vec2<u32>(32u)), vec2<u32>(u_input.b, u_input.b));
    return func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(vec2<f32>(global2.b, 2525f), vec2<f32>(-1717f, global2.d)))) * _wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 34405u, 16889u), vec3<u32>(4294967295u, var_1.x, 4294967295u)), -643f, !vec3<bool>(true, global2.a.x, global0[_wgslsmith_index_u32(0u, 9u)]))))), _wgslsmith_dot_vec3_i32(select(abs(u_input.a) ^ -u_input.a, u_input.a, false), countOneBits(abs(vec3<i32>(-2147483647i, 33444i, 0i))) & -u_input.a));
}

fn func_5(arg_0: vec3<i32>, arg_1: vec2<u32>, arg_2: vec2<f32>) -> Struct_3 {
    var var_0 = Struct_5(Struct_1(u_input.a.zx, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-arg_2))))), _wgslsmith_mod_vec4_i32(abs(~vec4<i32>(-2147483647i, -24814i, 0i, -1i)), vec4<i32>(~2147483647i, _wgslsmith_div_i32(arg_0.x, u_input.a.x), firstLeadingBit(arg_0.x), ~(-1i))), !vec3<bool>(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.b, 1u, u_input.b), 9u)], global0[_wgslsmith_index_u32(arg_1.x, 9u)] & false, true), _wgslsmith_add_vec4_i32(~vec4<i32>(arg_0.x, 0i, u_input.a.x, -1i), _wgslsmith_sub_vec4_i32(vec4<i32>(0i, u_input.a.x, arg_0.x, u_input.a.x), vec4<i32>(-1i, u_input.a.x, u_input.a.x, -2147483647i))) << (_wgslsmith_mod_vec4_u32(firstLeadingBit(vec4<u32>(u_input.b, 4294967295u, 0u, u_input.b)), vec4<u32>(u_input.b, 56961u, 1u, arg_1.x)) % vec4<u32>(32u))), u_input.b >> (~arg_1.x % 32u));
    let var_1 = !(!(!global2.a));
    global1 = array<Struct_4, 29>();
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -803f) * var_0.a.b.x);
    global2 = Struct_2(select(!var_1, select(vec2<bool>(var_0.a.d.x, var_0.a.d.x), var_0.a.d.xy, vec2<bool>(false, any(vec4<bool>(true, false, var_0.a.d.x, false)))), vec2<bool>(global0[_wgslsmith_index_u32(~(~var_0.b), 9u)], global2.e)), _wgslsmith_f_op_f32(var_0.a.b.x + _wgslsmith_f_op_f32(-arg_2.x)), _wgslsmith_f_op_vec2_f32(func_3(func_2().x ^ var_0.b, _wgslsmith_f_op_f32(-arg_2.x), var_0.a.d)).x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1070f)))), 1f)), true);
    return Struct_3(min(~firstTrailingBit(vec4<u32>(u_input.b, var_0.b, 4294967295u, 49833u)), firstLeadingBit(~vec4<u32>(arg_1.x, 6271u, var_0.b, 51255u))), select(var_0.a.d, select(vec3<bool>(all(vec2<bool>(global2.a.x, var_1.x)), all(vec3<bool>(true, true, global2.a.x)), global0[_wgslsmith_index_u32(0u, 9u)] || false), !var_0.a.d, true), ~abs(u_input.a.x) == ~arg_0.x), var_0.a);
}

fn func_1(arg_0: bool, arg_1: vec3<f32>, arg_2: u32, arg_3: vec2<i32>) -> vec3<i32> {
    let var_0 = arg_1.x;
    let var_1 = true;
    var var_2 = -(u_input.a.x ^ ((arg_3.x | _wgslsmith_mult_i32(arg_3.x, 0i)) | ~2147483647i));
    global0 = array<bool, 9>();
    var var_3 = func_5(vec3<i32>(arg_3.x, 0i, -abs(arg_3.x)), ~(vec2<u32>(firstTrailingBit(arg_2), ~u_input.b) >> (func_2() % vec2<u32>(32u))), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(-global2.c))), -1091f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-1361f, -1900f), arg_1.x))))));
    return _wgslsmith_mod_vec3_i32(_wgslsmith_add_vec3_i32(~u_input.a ^ u_input.a, vec3<i32>(-39055i, _wgslsmith_dot_vec4_i32(vec4<i32>(0i, 2147483647i, -1i, u_input.a.x), max(vec4<i32>(0i, -1i, arg_3.x, arg_3.x), vec4<i32>(var_3.c.a.x, u_input.a.x, 12782i, arg_3.x))), _wgslsmith_mult_i32(0i ^ arg_3.x, _wgslsmith_mult_i32(var_3.c.c.x, 1i)))), ~vec3<i32>(countOneBits(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_3.x, 78602i), vec2<i32>(arg_3.x, -2147483647i))), 8128i, u_input.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mult_vec3_i32(_wgslsmith_clamp_vec3_i32(func_1(true, _wgslsmith_f_op_vec3_f32(vec3<f32>(global2.b, global2.d, global2.b) * vec3<f32>(global2.d, -1478f, global2.c)), u_input.b, reverseBits(u_input.a.yx)), ~u_input.a, vec3<i32>(u_input.a.x, -20796i, ~(~1i))), _wgslsmith_add_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.a.x, -22215i, 2147483647i), func_1(global0[_wgslsmith_index_u32(u_input.b, 9u)], vec3<f32>(-750f, -603f, -1099f), u_input.b, vec2<i32>(u_input.a.x, u_input.a.x))) ^ _wgslsmith_sub_vec3_i32(~u_input.a, reverseBits(u_input.a)), reverseBits(vec3<i32>(-1i) * -u_input.a)));
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1f, 1f, 1f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global2.c, 656f, global2.b))) - vec3<f32>(global2.d, global2.b, global2.b)), !(!vec3<bool>(false, global2.e, global0[_wgslsmith_index_u32(33890u, 9u)])))))) + _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global2.b, 437f, global2.b), vec3<f32>(global2.d, global2.b, global2.c), vec3<bool>(global0[_wgslsmith_index_u32(u_input.b, 9u)], global2.a.x, false)))))))));
    var var_2 = select(u_input.a | u_input.a, ~u_input.a, global0[_wgslsmith_index_u32(4294967295u, 9u)]);
    let var_3 = _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(var_2.yx, u_input.a.zz), _wgslsmith_dot_vec4_i32(~abs(vec4<i32>(var_0.x, 2147483647i, 1i, u_input.a.x) << (vec4<u32>(52544u, u_input.b, 17027u, u_input.b) % vec4<u32>(32u))), abs(vec4<i32>(var_2.x, -u_input.a.x, ~(-56025i), var_2.x >> (73251u % 32u)))));
    var_2 = u_input.a;
    global2 = Struct_2(global2.a, _wgslsmith_f_op_f32(396f + _wgslsmith_f_op_f32(-global2.d)), var_1.x, var_1.x, !global0[_wgslsmith_index_u32(6963u, 9u)]);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(var_0.x, _wgslsmith_sub_i32(-var_3, -var_3), abs(86466i), reverseBits(_wgslsmith_mod_i32(max(var_3, -40437i), -2147483647i))));
}

