struct Struct_1 {
    a: f32,
    b: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: vec4<bool>,
    b: vec4<bool>,
    c: u32,
    d: vec3<i32>,
    e: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<Struct_1, 4>;

var<private> global2: vec2<u32> = vec2<u32>(0u, 1u);

var<private> global3: u32 = 30477u;

var<private> global4: vec4<f32>;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3() -> u32 {
    global1 = array<Struct_1, 4>();
    var var_0 = max(global2.x, max(~(~(1u & global2.x)), _wgslsmith_sub_u32(_wgslsmith_mod_u32(global2.x, global2.x), _wgslsmith_clamp_u32(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(42807u, 102609u, global2.x, global2.x), vec4<u32>(4294967295u, global2.x, 4294967295u, global2.x)), _wgslsmith_dot_vec2_u32(vec2<u32>(global2.x, global2.x), vec2<u32>(4294967295u, global2.x))))));
    global1 = array<Struct_1, 4>();
    let var_1 = Struct_2(Struct_1(global4.x, !vec4<bool>(true, all(vec3<bool>(false, true, false)), all(vec4<bool>(true, true, true, true)), true)), _wgslsmith_f_op_vec3_f32(max(global4.wzy, vec3<f32>(_wgslsmith_f_op_f32(global4.x - -1023f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global4.x, global4.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(262f - -230f), 719f)))));
    let var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + 303f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(global4.x)), _wgslsmith_f_op_f32(step(var_1.b.x, 1262f)))))))));
    return abs(~(global2.x ^ ~25175u));
}

fn func_2() -> Struct_1 {
    var var_0 = firstLeadingBit(_wgslsmith_sub_vec2_i32(_wgslsmith_mod_vec2_i32(min(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, 1i)), _wgslsmith_mult_vec2_i32(vec2<i32>(16057i, u_input.a), vec2<i32>(-30710i, u_input.a))) >> (~(~vec2<u32>(5567u, 18510u)) % vec2<u32>(32u)), -(~(-vec2<i32>(u_input.a, u_input.a)))));
    var var_1 = vec4<f32>(-412f, 429f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global4.x + -352f))), global4.x, true)), _wgslsmith_f_op_f32(floor(-2776f)));
    let var_2 = ~_wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_add_u32(global2.x, func_3()), min(1u, 0u), global2.x), vec3<u32>(select(~global2.x, 1u, select(true, false, false)), (0u >> (0u % 32u)) << (_wgslsmith_mult_u32(0u, global2.x) % 32u), firstLeadingBit(1u)));
    var var_3 = Struct_1(_wgslsmith_f_op_f32(var_1.x * 619f), select(select(vec4<bool>(true, true, true, true), !select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, false)), true), vec4<bool>(!(0i == var_0.x), true, any(vec4<bool>(true, true, true, true)), !all(vec2<bool>(true, false))), select(vec4<bool>(true, global2.x <= global2.x, true, -5095i <= var_0.x), vec4<bool>(true, true, any(vec4<bool>(true, true, false, true)), false), !(2950i >= u_input.a))));
    var_0 = vec2<i32>(u_input.a, _wgslsmith_sub_i32(1i, _wgslsmith_dot_vec2_i32(select(_wgslsmith_div_vec2_i32(vec2<i32>(var_0.x, var_0.x), vec2<i32>(var_0.x, var_0.x)), -vec2<i32>(var_0.x, u_input.a), !vec2<bool>(var_3.b.x, false)), ~vec2<i32>(u_input.a, 23243i))));
    return Struct_1(var_1.x, vec4<bool>(all(select(var_3.b.wx, select(vec2<bool>(var_3.b.x, var_3.b.x), var_3.b.xz, vec2<bool>(false, var_3.b.x)), any(var_3.b))), select(var_3.b.x || false, !any(var_3.b), true), any(vec3<bool>(var_3.b.x, false, false)) && true, all(select(select(vec4<bool>(false, true, false, var_3.b.x), var_3.b, var_3.b), select(var_3.b, var_3.b, var_3.b.x), false))));
}

fn func_4(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: Struct_2, arg_3: Struct_1) -> Struct_4 {
    global3 = _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, ~_wgslsmith_clamp_u32(0u, 43082u, global2.x)), min(~(~vec2<u32>(global2.x, 1u)), vec2<u32>(global2.x, 18506u << (global2.x % 32u))), vec2<u32>(35927u, _wgslsmith_dot_vec2_u32(vec2<u32>(83674u, global2.x), ~vec2<u32>(global2.x, 29815u)))), countOneBits(firstLeadingBit(_wgslsmith_div_vec2_u32(vec2<u32>(global2.x, 33644u), vec2<u32>(global2.x, global2.x))) >> (reverseBits(~vec2<u32>(global2.x, 4294967295u)) % vec2<u32>(32u))));
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(264f, global4.x, -1000f))) * _wgslsmith_f_op_vec3_f32(-arg_0.b))) + _wgslsmith_f_op_vec3_f32(-arg_0.b));
    let var_1 = select(vec3<bool>(!(arg_0.b.x != var_0.x), true, -(~u_input.a) < (u_input.a | _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, u_input.a, u_input.a, -2147483647i), vec4<i32>(u_input.a, 17608i, u_input.a, 6537i)))), !select(select(vec3<bool>(false, false, arg_1.x), func_2().b.wyy, !arg_3.b.wwz), !vec3<bool>(false, true, arg_0.a.b.x), arg_1.x), false);
    global4 = vec4<f32>(_wgslsmith_f_op_f32(trunc(arg_3.a)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(175f)))), _wgslsmith_f_op_f32(step(-2247f, -3018f)), 1569f);
    var var_2 = Struct_1(-154f, func_2().b);
    return Struct_4(arg_0);
}

fn func_5(arg_0: u32, arg_1: Struct_4, arg_2: i32) -> vec2<u32> {
    let var_0 = !vec4<bool>(any(vec2<bool>(all(arg_1.a.a.b.xyx), func_4(arg_1.a, vec2<bool>(true, arg_1.a.a.b.x), Struct_2(arg_1.a.a, vec3<f32>(global4.x, 989f, 1473f)), arg_1.a.a).a.a.b.x)), reverseBits(90147u) > _wgslsmith_mod_u32(global2.x << (arg_0 % 32u), global2.x), select(true, any(vec2<bool>(true, arg_1.a.a.b.x)), all(vec4<bool>(arg_1.a.a.b.x, false, false, true))), true);
    global2 = ~(~_wgslsmith_mod_vec2_u32(vec2<u32>(global2.x, 1u) & vec2<u32>(arg_0, 0u), vec2<u32>(global2.x, arg_0)) >> (_wgslsmith_mult_vec2_u32(select(vec2<u32>(0u, arg_0), vec2<u32>(4294967295u, 6766u), false) | abs(vec2<u32>(73933u, arg_0)), ~(~vec2<u32>(global2.x, arg_0))) % vec2<u32>(32u)));
    global2 = min(~max(~vec2<u32>(19249u, 0u) & ~vec2<u32>(arg_0, global2.x), (vec2<u32>(4294967295u, 10274u) & vec2<u32>(74955u, global2.x)) | vec2<u32>(45744u, 1u)), abs(min(~(~vec2<u32>(23478u, 59046u)), _wgslsmith_add_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(1u, 22542u), vec2<u32>(global2.x, 53097u)), _wgslsmith_sub_vec2_u32(vec2<u32>(arg_0, 0u), vec2<u32>(44331u, 23358u))))));
    global1 = array<Struct_1, 4>();
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1183f, _wgslsmith_div_f32(func_2().a, _wgslsmith_f_op_f32(select(-1000f, global4.x, !arg_1.a.a.b.x)))));
    return firstLeadingBit(_wgslsmith_mult_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(~global2.x, global2.x), vec2<u32>(1u, ~arg_0)), vec2<u32>(global2.x, 12338u)));
}

fn func_1(arg_0: vec3<bool>) -> vec4<f32> {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(global4.x, _wgslsmith_f_op_f32(select(-1528f, global4.x, true)))), _wgslsmith_f_op_f32(ceil(global4.x)))), global4.x) - _wgslsmith_f_op_f32(-global4.x));
    let var_1 = Struct_1(1021f, vec4<bool>(any(!vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x)), arg_0.x, arg_0.x, ((-140f >= global4.x) || arg_0.x) && true));
    var var_2 = abs(func_5(~(~global2.x), func_4(Struct_2(func_2(), _wgslsmith_f_op_vec3_f32(-global4.xzz)), vec2<bool>(true, all(vec2<bool>(false, var_1.b.x))), Struct_2(Struct_1(global4.x, vec4<bool>(arg_0.x, arg_0.x, false, false)), vec3<f32>(global4.x, 927f, 566f)), var_1), -1i));
    var_2 = ~(~countOneBits(~_wgslsmith_add_vec2_u32(vec2<u32>(var_2.x, 4294967295u), vec2<u32>(var_2.x, 34276u))));
    global1 = array<Struct_1, 4>();
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_1.a + 1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a) - 1346f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a)), _wgslsmith_f_op_f32(281f - -1098f)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-129f, 442f, var_1.a, -574f)))))));
}

fn func_6(arg_0: vec4<f32>, arg_1: i32) -> vec2<f32> {
    global3 = global2.x;
    let var_0 = Struct_3(func_4(Struct_2(global1[_wgslsmith_index_u32(4294967295u << (global2.x % 32u), 4u)], arg_0.xwx), func_4(func_4(Struct_2(Struct_1(global4.x, vec4<bool>(true, true, true, false)), global4.yzw), vec2<bool>(true, true), Struct_2(global1[_wgslsmith_index_u32(global2.x, 4u)], arg_0.yww), Struct_1(-316f, vec4<bool>(true, true, true, true))).a, vec2<bool>(false, any(vec4<bool>(false, false, true, false))), func_4(func_4(Struct_2(global1[_wgslsmith_index_u32(global2.x, 4u)], vec3<f32>(global4.x, 1465f, 1000f)), vec2<bool>(false, false), Struct_2(global1[_wgslsmith_index_u32(1u, 4u)], vec3<f32>(-1239f, -1340f, arg_0.x)), Struct_1(1133f, vec4<bool>(false, true, true, true))).a, select(vec2<bool>(true, false), vec2<bool>(false, false), false), func_4(Struct_2(Struct_1(-1713f, vec4<bool>(false, false, false, true)), global4.xxz), vec2<bool>(false, false), Struct_2(global1[_wgslsmith_index_u32(global2.x, 4u)], arg_0.yzy), global1[_wgslsmith_index_u32(global2.x, 4u)]).a, Struct_1(-941f, vec4<bool>(true, false, true, true))).a, Struct_1(_wgslsmith_f_op_f32(-arg_0.x), func_4(Struct_2(global1[_wgslsmith_index_u32(global2.x, 4u)], vec3<f32>(arg_0.x, global4.x, arg_0.x)), vec2<bool>(false, false), Struct_2(Struct_1(-306f, vec4<bool>(false, false, false, false)), vec3<f32>(global4.x, arg_0.x, -126f)), Struct_1(arg_0.x, vec4<bool>(false, false, false, false))).a.a.b)).a.a.b.yx, Struct_2(func_4(func_4(Struct_2(global1[_wgslsmith_index_u32(global2.x, 4u)], global4.zwy), vec2<bool>(false, false), Struct_2(global1[_wgslsmith_index_u32(69270u, 4u)], vec3<f32>(-355f, global4.x, -575f)), Struct_1(global4.x, vec4<bool>(true, false, false, false))).a, vec2<bool>(true, false), Struct_2(global1[_wgslsmith_index_u32(4294967295u, 4u)], vec3<f32>(arg_0.x, 420f, -382f)), Struct_1(global4.x, vec4<bool>(true, false, true, true))).a.a, global4.yxx), func_2()).a.a);
    var var_1 = global1[_wgslsmith_index_u32(abs(~select(global2.x ^ 29643u, abs(global2.x), !var_0.a.b.x) << (4980u % 32u)), 4u)];
    global4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_0.a.a, 1f, -157f, -512f)))));
    global2 = ~(~firstTrailingBit(vec2<u32>(max(global2.x, 5969u), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, global2.x), vec2<u32>(global2.x, 117001u)))));
    return _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_0.xy * arg_0.yz) + arg_0.xz))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-777f - 907f) + _wgslsmith_f_op_f32(round(281f))), _wgslsmith_div_f32(-150f, _wgslsmith_div_f32(global4.x, var_1.a)))));
}

fn func_7(arg_0: vec2<f32>) -> vec3<i32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.x, global4.x));
    var_0 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(step(global4.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)))), -1037f), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(206f, var_0.x) + func_4(Struct_2(global1[_wgslsmith_index_u32(global2.x, 4u)], global4.yyz), vec2<bool>(false, false), Struct_2(Struct_1(arg_0.x, vec4<bool>(false, false, false, true)), global4.yxy), Struct_1(-742f, vec4<bool>(true, false, false, false))).a.b.yz)), _wgslsmith_f_op_vec2_f32(-func_4(func_4(Struct_2(global1[_wgslsmith_index_u32(global2.x, 4u)], global4.yzz), vec2<bool>(false, false), Struct_2(global1[_wgslsmith_index_u32(103310u, 4u)], vec3<f32>(var_0.x, -1132f, arg_0.x)), Struct_1(arg_0.x, vec4<bool>(false, false, false, false))).a, vec2<bool>(true, false), func_4(Struct_2(global1[_wgslsmith_index_u32(0u, 4u)], global4.zzy), vec2<bool>(true, true), Struct_2(Struct_1(430f, vec4<bool>(false, false, false, true)), global4.wzw), global1[_wgslsmith_index_u32(31229u, 4u)]).a, Struct_1(var_0.x, vec4<bool>(true, false, false, false))).a.b.xy)));
    let var_1 = ~(min((vec2<i32>(-1i, -21132i) ^ vec2<i32>(u_input.a, u_input.a)) ^ _wgslsmith_mod_vec2_i32(vec2<i32>(0i, -1i), vec2<i32>(u_input.a, u_input.a)), ~select(vec2<i32>(0i, u_input.a), vec2<i32>(u_input.a, u_input.a), false)) & (abs(vec2<i32>(u_input.a, 16328i) >> (vec2<u32>(14433u, global2.x) % vec2<u32>(32u))) << (abs(vec2<u32>(16065u, global2.x)) % vec2<u32>(32u))));
    let var_2 = global4.yzw;
    global1 = array<Struct_1, 4>();
    return -(_wgslsmith_div_vec3_i32(~abs(vec3<i32>(1i, var_1.x, 24944i)), vec3<i32>(-1i, _wgslsmith_clamp_i32(var_1.x, var_1.x, var_1.x), _wgslsmith_div_i32(0i, -2147483647i))) & _wgslsmith_clamp_vec3_i32(min(abs(vec3<i32>(u_input.a, var_1.x, 60334i)), select(vec3<i32>(u_input.a, u_input.a, -1i), vec3<i32>(var_1.x, -24695i, -12418i), true)), min(_wgslsmith_add_vec3_i32(vec3<i32>(var_1.x, u_input.a, u_input.a), vec3<i32>(32402i, -29360i, var_1.x)), max(vec3<i32>(-1i, var_1.x, var_1.x), vec3<i32>(-23992i, -31650i, 0i))), select(vec3<i32>(-2147483647i, u_input.a, 15655i), vec3<i32>(-1i, var_1.x, var_1.x), true) >> (select(vec3<u32>(global2.x, global2.x, global2.x), vec3<u32>(4294967295u, global2.x, global2.x), true) % vec3<u32>(32u))));
}

fn func_8(arg_0: bool, arg_1: Struct_5, arg_2: Struct_1, arg_3: vec3<f32>) -> Struct_3 {
    let var_0 = true;
    let var_1 = global4.x;
    let var_2 = (i32(-1i) * -14198i) ^ ~u_input.a;
    let var_3 = func_4(func_4(func_4(func_4(Struct_2(Struct_1(arg_2.a, arg_1.b), arg_3), vec2<bool>(true, true), func_4(Struct_2(arg_2, global4.yzw), arg_1.b.xy, Struct_2(Struct_1(arg_2.a, vec4<bool>(false, arg_1.a.x, arg_1.a.x, false)), arg_3), arg_2).a, global1[_wgslsmith_index_u32(func_3(), 4u)]).a, vec2<bool>(arg_1.e == -2147483647i, 4294967295u < arg_1.c), func_4(Struct_2(global1[_wgslsmith_index_u32(9317u, 4u)], arg_3), arg_2.b.wz, func_4(Struct_2(Struct_1(724f, vec4<bool>(false, var_0, arg_1.b.x, arg_0)), vec3<f32>(global4.x, arg_3.x, 436f)), vec2<bool>(var_0, arg_1.b.x), Struct_2(global1[_wgslsmith_index_u32(global2.x, 4u)], vec3<f32>(579f, -607f, -1000f)), Struct_1(446f, arg_2.b)).a, func_4(Struct_2(global1[_wgslsmith_index_u32(arg_1.c, 4u)], vec3<f32>(-113f, 337f, 568f)), arg_1.a.yz, Struct_2(arg_2, vec3<f32>(arg_2.a, arg_3.x, -1647f)), global1[_wgslsmith_index_u32(global2.x, 4u)]).a.a).a, Struct_1(global4.x, vec4<bool>(arg_0, true, true, false))).a, select(func_2().b.yy, arg_1.b.xz, arg_2.b.x | !arg_1.a.x), Struct_2(func_4(Struct_2(arg_2, arg_3), !arg_2.b.xy, Struct_2(Struct_1(-1226f, vec4<bool>(false, true, false, false)), vec3<f32>(arg_2.a, 544f, 407f)), func_4(Struct_2(arg_2, vec3<f32>(-499f, 1283f, -1366f)), arg_1.b.wy, Struct_2(arg_2, vec3<f32>(377f, arg_2.a, global4.x)), Struct_1(-2707f, arg_1.b)).a.a).a.a, _wgslsmith_f_op_vec3_f32(arg_3 + vec3<f32>(-442f, 528f, -1000f))), arg_2).a, func_4(func_4(Struct_2(func_4(Struct_2(Struct_1(-1000f, arg_2.b), vec3<f32>(arg_2.a, arg_3.x, 273f)), vec2<bool>(false, arg_2.b.x), Struct_2(Struct_1(arg_2.a, vec4<bool>(arg_0, var_0, arg_1.b.x, arg_2.b.x)), vec3<f32>(global4.x, arg_3.x, global4.x)), Struct_1(-463f, arg_1.b)).a.a, vec3<f32>(global4.x, -1038f, -503f)), !(!arg_1.b.xw), Struct_2(global1[_wgslsmith_index_u32(~global2.x, 4u)], _wgslsmith_f_op_vec3_f32(-arg_3)), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(7623u, arg_1.c), countOneBits(vec2<u32>(global2.x, 46799u))), 4u)]).a, arg_1.a.zw, Struct_2(arg_2, _wgslsmith_f_op_vec3_f32(-global4.wxx)), global1[_wgslsmith_index_u32(~(~(~global2.x)), 4u)]).a.a.b.zy, func_4(func_4(Struct_2(Struct_1(-167f, arg_2.b), _wgslsmith_f_op_vec3_f32(arg_3 + global4.xzx)), arg_1.a.yz, func_4(Struct_2(Struct_1(arg_3.x, vec4<bool>(arg_2.b.x, arg_0, var_0, var_0)), arg_3), vec2<bool>(true, arg_1.b.x), Struct_2(Struct_1(arg_2.a, arg_2.b), arg_3), func_4(Struct_2(arg_2, vec3<f32>(1000f, 324f, arg_2.a)), arg_1.a.yy, Struct_2(Struct_1(-863f, arg_2.b), global4.wxx), global1[_wgslsmith_index_u32(8323u, 4u)]).a.a).a, Struct_1(arg_2.a, vec4<bool>(true, true, true, true))).a, vec2<bool>(true, !arg_0), Struct_2(func_4(Struct_2(global1[_wgslsmith_index_u32(4294967295u, 4u)], vec3<f32>(arg_3.x, arg_3.x, arg_3.x)), select(arg_1.b.xy, arg_1.b.yy, true), func_4(Struct_2(Struct_1(-1265f, vec4<bool>(true, true, false, false)), vec3<f32>(-170f, arg_3.x, -1064f)), arg_2.b.zz, Struct_2(Struct_1(985f, arg_2.b), vec3<f32>(-575f, -589f, global4.x)), Struct_1(arg_3.x, vec4<bool>(false, arg_1.b.x, arg_1.b.x, var_0))).a, func_2()).a.a, vec3<f32>(_wgslsmith_f_op_f32(sign(-1000f)), _wgslsmith_f_op_f32(arg_3.x + global4.x), -1000f)), arg_2).a, func_4(func_4(Struct_2(Struct_1(480f, arg_2.b), _wgslsmith_f_op_vec3_f32(-arg_3)), vec2<bool>(true, true), func_4(func_4(Struct_2(Struct_1(-319f, arg_1.a), vec3<f32>(arg_3.x, global4.x, 1000f)), arg_2.b.yy, Struct_2(Struct_1(arg_2.a, vec4<bool>(false, true, var_0, arg_0)), arg_3), Struct_1(-1000f, arg_2.b)).a, !vec2<bool>(var_0, false), func_4(Struct_2(arg_2, arg_3), arg_1.b.xx, Struct_2(arg_2, vec3<f32>(global4.x, arg_2.a, -860f)), arg_2).a, func_2()).a, Struct_1(_wgslsmith_f_op_f32(step(global4.x, 1519f)), !vec4<bool>(arg_0, true, var_0, true))).a, vec2<bool>(all(arg_1.a.yxx), ~(-2147483647i) > u_input.a), func_4(func_4(func_4(Struct_2(arg_2, global4.xxx), vec2<bool>(arg_1.b.x, arg_0), Struct_2(global1[_wgslsmith_index_u32(arg_1.c, 4u)], arg_3), arg_2).a, arg_2.b.zw, func_4(Struct_2(arg_2, vec3<f32>(-1000f, -2324f, arg_2.a)), arg_2.b.yw, Struct_2(Struct_1(global4.x, vec4<bool>(arg_1.b.x, arg_1.a.x, var_0, false)), arg_3), Struct_1(-1371f, vec4<bool>(true, false, true, true))).a, func_2()).a, arg_1.b.xy, func_4(Struct_2(global1[_wgslsmith_index_u32(4294967295u, 4u)], vec3<f32>(arg_3.x, -1000f, 622f)), func_4(Struct_2(Struct_1(-1469f, vec4<bool>(arg_0, arg_0, false, true)), arg_3), vec2<bool>(arg_0, true), Struct_2(global1[_wgslsmith_index_u32(50604u, 4u)], arg_3), arg_2).a.a.b.zw, Struct_2(arg_2, global4.yzw), func_4(Struct_2(Struct_1(arg_2.a, vec4<bool>(arg_0, arg_1.b.x, arg_1.b.x, var_0)), arg_3), arg_1.a.yz, Struct_2(arg_2, arg_3), arg_2).a.a).a, global1[_wgslsmith_index_u32(~0u, 4u)]).a, Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(arg_3.x, global4.x)))), arg_1.b)).a.a).a;
    global0 = arg_2.b.x;
    return Struct_3(Struct_1(arg_2.a, vec4<bool>(_wgslsmith_f_op_f32(f32(-1f) * -470f) != _wgslsmith_f_op_f32(global4.x * global4.x), arg_0, true, _wgslsmith_sub_u32(62199u, global2.x) < firstLeadingBit(global2.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = abs(global2.x);
    let var_0 = func_8(true, Struct_5(!vec4<bool>(all(vec3<bool>(false, true, false)), true, true, any(vec4<bool>(false, true, true, true))), vec4<bool>(true, true, true, true), ~_wgslsmith_dot_vec3_u32(vec3<u32>(global2.x, 11128u, 24100u), ~vec3<u32>(1u, global2.x, 0u)), func_7(_wgslsmith_f_op_vec2_f32(func_6(_wgslsmith_f_op_vec4_f32(func_1(vec3<bool>(false, true, true))), u_input.a))), ~(~u_input.a)), global1[_wgslsmith_index_u32(global2.x, 4u)], _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(global4.wxw, _wgslsmith_f_op_vec3_f32(select(global4.zxw, global4.xwx, vec3<bool>(true, false, false)))))), global4.yxz)));
    var var_1 = Struct_2(func_4(func_4(Struct_2(func_2(), _wgslsmith_div_vec3_f32(global4.wyy, vec3<f32>(var_0.a.a, -165f, 314f))), var_0.a.b.zy, Struct_2(var_0.a, _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1000f, var_0.a.a, global4.x), global4.www))), Struct_1(_wgslsmith_f_op_f32(round(var_0.a.a)), func_8(var_0.a.b.x, Struct_5(var_0.a.b, var_0.a.b, 27829u, vec3<i32>(-10230i, u_input.a, 29688i), u_input.a), global1[_wgslsmith_index_u32(9967u, 4u)], global4.yyw).a.b)).a, !vec2<bool>(true, !var_0.a.b.x), Struct_2(func_4(Struct_2(Struct_1(2407f, var_0.a.b), vec3<f32>(global4.x, -2147f, global4.x)), vec2<bool>(var_0.a.b.x, false), Struct_2(Struct_1(1262f, var_0.a.b), vec3<f32>(1995f, global4.x, 1062f)), Struct_1(-905f, var_0.a.b)).a.a, _wgslsmith_f_op_vec3_f32(ceil(global4.zzw))), var_0.a).a.a, _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-global4.yyw), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(-349f, global4.x, global4.x) + _wgslsmith_f_op_vec3_f32(vec3<f32>(global4.x, -1000f, -680f) * vec3<f32>(801f, var_0.a.a, 1000f))), global4.xwx)))));
    var var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-822f * 1572f)));
    let var_3 = var_0;
    let var_4 = true;
    let var_5 = func_8(true, Struct_5(vec4<bool>(all(vec2<bool>(true, var_0.a.b.x)), true, !var_3.a.b.x, firstTrailingBit(21068u) <= global2.x), vec4<bool>(true, !(!var_0.a.b.x), all(var_0.a.b), false | func_8(var_1.a.b.x, Struct_5(var_1.a.b, var_0.a.b, 33585u, vec3<i32>(1i, u_input.a, u_input.a), u_input.a), var_0.a, vec3<f32>(var_1.b.x, -408f, global4.x)).a.b.x), global2.x, select(countOneBits(firstLeadingBit(vec3<i32>(-38495i, 75755i, 15944i))), _wgslsmith_mod_vec3_i32(-vec3<i32>(-1i, 7297i, u_input.a), vec3<i32>(u_input.a, 0i, -24692i)), all(!vec2<bool>(true, var_0.a.b.x))), u_input.a), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_vec2_f32(func_6(vec4<f32>(-367f, var_0.a.a, -625f, 908f), u_input.a)).x * -971f), vec4<bool>(var_3.a.b.x | !var_0.a.b.x, var_4, !(!var_4), var_1.a.b.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(global4.x * _wgslsmith_f_op_f32(round(var_3.a.a))), -1890f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(561f + -271f), _wgslsmith_f_op_f32(-var_1.a.a)))));
    var var_6 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(1946f, 834f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_vec4_f32(func_1(var_0.a.b.wzx)).x)) - -1449f));
    var var_7 = Struct_2(Struct_1(1160f, func_2().b), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(462f, var_0.a.a) - var_0.a.a), _wgslsmith_f_op_f32(sign(-545f)), _wgslsmith_f_op_f32(select(940f, -952f, true))))));
    let x = u_input.a;
    s_output = StorageBuffer(~(-27289i), _wgslsmith_f_op_f32(step(-962f, var_5.a.a)), _wgslsmith_f_op_f32(max(var_3.a.a, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1997f * var_3.a.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -112f)))))));
}

