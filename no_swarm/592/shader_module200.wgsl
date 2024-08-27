struct Struct_1 {
    a: f32,
    b: vec4<u32>,
    c: u32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec2<i32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: vec3<u32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 2>;

var<private> global1: array<i32, 4> = array<i32, 4>(1i, 2147483647i, -55725i, 89763i);

var<private> global2: Struct_2 = Struct_2(false, Struct_1(-1000f, vec4<u32>(4294967295u, 4294967295u, 1u, 16088u), 50935u), vec2<i32>(2147483647i, 0i), Struct_1(907f, vec4<u32>(0u, 4294967295u, 13060u, 4294967295u), 37577u));

var<private> global3: Struct_2 = Struct_2(true, Struct_1(-837f, vec4<u32>(37562u, 4294967295u, 55737u, 1u), 4294967295u), vec2<i32>(-1i, -1i), Struct_1(-530f, vec4<u32>(75211u, 26841u, 0u, 28029u), 0u));

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec4<f32>) -> f32 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(sign(364f)), vec4<u32>(~15895u, 0u, global3.b.b.x, global2.b.c << (global3.d.b.x % 32u)), max(~global2.b.b.x, 4294967295u));
    let var_1 = vec3<bool>(true, false, !select(min(1u, var_0.c) == _wgslsmith_dot_vec4_u32(var_0.b, vec4<u32>(global3.b.c, global2.d.b.x, global3.b.c, 133575u)), _wgslsmith_add_u32(u_input.b, 13192u) != reverseBits(28363u), false));
    let var_2 = 1i;
    var_0 = global2.d;
    let var_3 = global2.d;
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(347f)) * _wgslsmith_f_op_f32(-global2.d.a))));
}

fn func_4(arg_0: Struct_2, arg_1: f32, arg_2: Struct_1) -> vec2<i32> {
    global3 = arg_0;
    global3 = Struct_2(any(vec2<bool>(true, true)), Struct_1(_wgslsmith_f_op_f32(-global3.d.a), firstLeadingBit(max(abs(vec4<u32>(u_input.d, global3.b.b.x, 69079u, 5266u)), global2.d.b)), global2.d.c), _wgslsmith_add_vec2_i32(vec2<i32>(-46891i, min(arg_0.c.x, _wgslsmith_clamp_i32(global2.c.x, global2.c.x, -54953i))), max(-global2.c, max(arg_0.c, vec2<i32>(1i, 1i))) | vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(global3.c.x, 0i, global2.c.x, -524i), vec4<i32>(global1[_wgslsmith_index_u32(global3.d.c, 4u)], global1[_wgslsmith_index_u32(global2.b.c, 4u)], global1[_wgslsmith_index_u32(u_input.b, 4u)], u_input.a.x)), 5193i)), Struct_1(-1030f, ~firstTrailingBit(vec4<u32>(0u, 0u, u_input.b, 16120u) << (global2.b.b % vec4<u32>(32u))), countOneBits(_wgslsmith_dot_vec2_u32(arg_2.b.yx & vec2<u32>(arg_2.c, 4294967295u), ~arg_0.b.b.xw))));
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-777f * -1000f));
    global3 = Struct_2(any(select(!select(vec4<bool>(false, global2.a, false, global2.a), vec4<bool>(true, true, arg_0.a, true), false), select(!vec4<bool>(true, true, global2.a, arg_0.a), select(vec4<bool>(global2.a, true, arg_0.a, global2.a), vec4<bool>(true, true, global3.a, arg_0.a), false), vec4<bool>(global3.a, arg_0.a, global2.a, false)), select(vec4<bool>(false, arg_0.a, false, arg_0.a), !vec4<bool>(false, global2.a, global3.a, global2.a), select(vec4<bool>(global3.a, global2.a, true, true), vec4<bool>(global2.a, global3.a, global3.a, false), arg_0.a)))), Struct_1(_wgslsmith_f_op_f32(ceil(148f)), ~global2.b.b, firstTrailingBit(reverseBits(u_input.b))), _wgslsmith_div_vec2_i32(vec2<i32>(-1i) * -arg_0.c, vec2<i32>(-(1i ^ u_input.c.x), _wgslsmith_dot_vec3_i32(~u_input.a, u_input.a ^ vec3<i32>(1i, 1i, -17557i)))), global2.b);
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2897f * 489f) - arg_0.b.a)))), _wgslsmith_f_op_f32(-arg_1), global3.d.a, 1000f);
    return ~(-global3.c);
}

fn func_2(arg_0: u32) -> vec2<f32> {
    let var_0 = -6585i;
    let var_1 = !(!global0[_wgslsmith_index_u32(global2.b.c, 2u)]);
    var var_2 = Struct_2(false, global2.b, func_4(Struct_2(firstTrailingBit(-2147483647i) > -29244i, global2.d, global2.c >> (select(global2.d.b.xw, global3.b.b.yx, var_1.zy) % vec2<u32>(32u)), Struct_1(_wgslsmith_f_op_f32(-global3.d.a), _wgslsmith_mod_vec4_u32(global3.d.b, vec4<u32>(arg_0, arg_0, global2.d.b.x, global3.b.c)), firstLeadingBit(83718u))), _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-138f, global3.b.a, global3.d.a, global2.d.a)))), global3.b), global2.d);
    global3 = Struct_2(global2.d.c > _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(1u, global3.b.c), vec2<u32>(0u, 1u)), ~vec2<u32>(var_2.b.c, 1u) >> (_wgslsmith_mult_vec2_u32(vec2<u32>(var_2.d.b.x, var_2.d.b.x), global2.b.b.yx) % vec2<u32>(32u))), var_2.d, select(global2.c, reverseBits(select(abs(vec2<i32>(-43412i, var_2.c.x)), countOneBits(vec2<i32>(-15842i, 19792i)), !var_2.a)), -(~global3.c.x) < global3.c.x), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -524f) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2.d.a, 1497f))), var_2.d.b, reverseBits(28328u)));
    global2 = Struct_2(all(vec4<bool>(var_2.d.c != 4294967295u, any(vec2<bool>(global2.a, false)) || select(true, true, var_1.x), any(global0[_wgslsmith_index_u32(1u, 2u)]), false)), Struct_1(var_2.b.a, firstLeadingBit(select(vec4<u32>(7900u, 0u, global3.b.c, u_input.d), reverseBits(vec4<u32>(18111u, 7869u, 0u, 12951u)), vec4<bool>(global2.a, true, true, false))), ~_wgslsmith_add_u32(~arg_0, global2.d.b.x << (94622u % 32u))), u_input.a.zx, Struct_1(_wgslsmith_f_op_f32(-var_2.b.a), var_2.d.b, global3.d.b.x));
    return _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(var_2.b.a - -1483f), global3.d.a)));
}

fn func_1(arg_0: f32, arg_1: i32) -> Struct_2 {
    global0 = array<vec3<bool>, 2>();
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.b.a, arg_0) * vec2<f32>(-332f, global3.b.a)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_2(~u_input.d)) + _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, arg_0))))))));
    global0 = array<vec3<bool>, 2>();
    let var_1 = arg_0;
    let var_2 = Struct_1(-516f, ~global2.b.b, _wgslsmith_mod_u32(reverseBits(0u), u_input.d));
    return Struct_2(true, Struct_1(797f, ~vec4<u32>(0u, 52815u, 0u, var_2.c) | vec4<u32>(var_2.b.x, var_2.c, ~var_2.b.x, select(29167u, u_input.d, false)), ~firstTrailingBit(40803u)), ~(~u_input.a.yy) << ((global3.d.b.wy ^ ~global3.d.b.wx) % vec2<u32>(32u)), global3.d);
}

fn func_5(arg_0: Struct_2) -> vec2<f32> {
    var var_0 = global3.c & global2.c;
    var var_1 = arg_0.d;
    var_1 = func_1(530f, select(arg_0.c.x, ~u_input.a.x, arg_0.a)).d;
    let var_2 = arg_0.b;
    global3 = func_1(global3.d.a, global1[_wgslsmith_index_u32(reverseBits(func_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.a, arg_0.b.a)), 1i).d.b.x), 4u)]);
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.b.a, global2.b.a)) - vec2<f32>(_wgslsmith_f_op_f32(-arg_0.d.a), -587f)), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global3.b.a, 402f))), vec2<f32>(_wgslsmith_f_op_f32(max(2543f, var_1.a)), arg_0.d.a)))));
}

fn func_6(arg_0: vec2<f32>, arg_1: u32, arg_2: u32, arg_3: i32) -> Struct_1 {
    global1 = array<i32, 4>();
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_vec2_f32(func_5(Struct_2(global2.a, global2.d, vec2<i32>(arg_3, global1[_wgslsmith_index_u32(1u, 4u)]), Struct_1(global2.b.a, vec4<u32>(3137u, u_input.d, 30202u, global3.d.c), global2.d.c)))).x, _wgslsmith_f_op_f32(select(-526f, global2.b.a, false)))) + global3.b.a) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -537f))) - 120f), arg_0.x)));
    global3 = Struct_2(select(all(!vec4<bool>(global2.a, global2.a, false, global2.a)), false, global3.a), func_1(780f, ~(~_wgslsmith_mult_i32(2147483647i, 0i))).b, max(-(~vec2<i32>(arg_3, -14547i)), vec2<i32>(u_input.c.x, arg_3) << (global3.d.b.zy % vec2<u32>(32u))), Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.b.a), _wgslsmith_f_op_f32(func_1(-660f, 22856i).b.a + _wgslsmith_f_op_f32(-214f - global3.d.a))), vec4<u32>(arg_2, ~(~4294967295u), _wgslsmith_mod_u32(arg_2, ~u_input.d), ~(~61655u)), ~(~0u)));
    var var_1 = vec4<bool>(true, global2.a, !((u_input.c.x ^ global3.c.x) > max(func_4(Struct_2(true, global2.b, global2.c, Struct_1(global3.b.a, global3.d.b, 4294967295u)), arg_0.x, Struct_1(global2.b.a, vec4<u32>(global2.d.c, global3.b.c, 39577u, 4294967295u), 1u)).x, -50401i)), select(global2.a, select(false, true, global2.a), global2.a));
    global1 = array<i32, 4>();
    return Struct_1(_wgslsmith_f_op_f32(func_3(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 128f, 736f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-751f, global3.d.a)), 1867f)))), vec4<u32>(1u, global3.d.b.x, 1u, global3.d.b.x) | global2.b.b, _wgslsmith_clamp_u32(countOneBits(1u), ~11254u, 4294967295u));
}

fn func_7(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: i32) -> Struct_2 {
    global1 = array<i32, 4>();
    let var_0 = select(~(~(~_wgslsmith_mod_vec2_i32(arg_0.yx, vec2<i32>(global2.c.x, global2.c.x)))), -vec2<i32>(firstTrailingBit(firstLeadingBit(-23196i)), _wgslsmith_div_i32(global3.c.x, _wgslsmith_mult_i32(-13474i, arg_0.x))), select(!vec2<bool>(true, arg_1.a), vec2<bool>(!(arg_1.d.a != 1295f), global2.a), !(!(!global3.a))));
    let var_1 = min(global3.d.b, ~_wgslsmith_sub_vec4_u32(_wgslsmith_clamp_vec4_u32(select(arg_1.d.b, arg_1.b.b, global2.a), global2.b.b, global2.b.b), global3.d.b));
    global3 = func_1(_wgslsmith_f_op_f32(func_6(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.d.a, 272f) + vec2<f32>(788f, -3557f))), _wgslsmith_div_u32(arg_1.b.c >> (110754u % 32u), min(global2.d.b.x, 16026u)), ~var_1.x, arg_0.x).a + global2.d.a), (_wgslsmith_dot_vec2_i32(~var_0, -global3.c) >> (global3.d.b.x % 32u)) >> (67097u % 32u));
    global0 = array<vec3<bool>, 2>();
    return func_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global2.b.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_5(Struct_2(false, Struct_1(-352f, var_1, 4294967295u), global3.c, global3.d))).x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-498f + -512f))), ~(global2.c.x << (var_1.x % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_7(u_input.c.wzz, Struct_2(global2.a, global2.b, _wgslsmith_clamp_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(2147483647i, global3.c.x), vec2<i32>(-2147483647i, 39120i) & u_input.c.xy), vec2<i32>(_wgslsmith_clamp_i32(31336i, global2.c.x, global1[_wgslsmith_index_u32(global2.b.c, 4u)]), global3.c.x), abs(vec2<i32>(32568i, global1[_wgslsmith_index_u32(4294967295u, 4u)]))), func_6(_wgslsmith_f_op_vec2_f32(func_5(func_1(global3.d.a, 56034i))), global3.d.b.x, u_input.d, func_1(-313f, _wgslsmith_div_i32(-2603i, global3.c.x)).c.x)), 23760i);
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(381f, func_6(vec2<f32>(global2.d.a, 447f), 1627u, 0u, 59815i).a)))), -814f) - global3.b.a);
    var var_1 = _wgslsmith_dot_vec4_i32(vec4<i32>(-1i) * -u_input.c, min(-(u_input.c | u_input.c), vec4<i32>(-(~global2.c.x), ~(-19719i), ~global2.c.x, 14085i)));
    global0 = array<vec3<bool>, 2>();
    let var_2 = _wgslsmith_f_op_vec2_f32(func_5(func_1(global2.b.a, 877i))).x;
    let var_3 = _wgslsmith_sub_vec2_i32(vec2<i32>(~(~2147483647i), global1[_wgslsmith_index_u32(reverseBits(_wgslsmith_mult_u32(global3.d.c, firstLeadingBit(0u))), 4u)]), reverseBits(vec2<i32>(u_input.c.x, _wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(2147483647i, -1i, 11527i)), vec3<i32>(global1[_wgslsmith_index_u32(47493u, 4u)], -1i, global1[_wgslsmith_index_u32(1u, 4u)])))));
    global3 = Struct_2(true, func_6(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, global3.d.a) - _wgslsmith_f_op_vec2_f32(max(vec2<f32>(global2.b.a, 1046f), vec2<f32>(var_0, -204f)))))), 1u & abs(u_input.b), 4294967295u, global2.c.x), (global2.c & (vec2<i32>(global3.c.x, 1i) ^ ~vec2<i32>(1i, 0i))) ^ _wgslsmith_clamp_vec2_i32(abs(vec2<i32>(1i, global3.c.x)), max(~vec2<i32>(1i, var_3.x), vec2<i32>(1i, global1[_wgslsmith_index_u32(42128u, 4u)]) & global2.c), global3.c), func_6(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1026f, -814f) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2, -523f) * vec2<f32>(global2.b.a, 699f)))), u_input.b, max(127595u, 4970u) >> (global3.d.c % 32u), _wgslsmith_div_i32(-414i, 1i)));
    global3 = Struct_2(_wgslsmith_div_i32(2147483647i, _wgslsmith_div_i32(~(-15022i), global3.c.x)) != 2147483647i, Struct_1(global2.d.a, _wgslsmith_mod_vec4_u32(global3.b.b, func_7(vec3<i32>(global3.c.x, 0i, u_input.c.x), func_1(global3.d.a, global1[_wgslsmith_index_u32(60556u, 4u)]), ~2147483647i).b.b), (52854u >> (select(36317u, u_input.b, true) % 32u)) << (~_wgslsmith_add_u32(global2.b.c, 0u) % 32u)), global3.c, func_6(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(vec2<f32>(global3.d.a, -695f), vec2<f32>(-1882f, global2.d.a)))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(global3.d.a, -815f) + vec2<f32>(global2.d.a, -775f)), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global3.b.a, 1034f))))), func_7(u_input.c.zxw, func_1(global2.d.a, -8020i), var_3.x).a)), 0u, 16707u, _wgslsmith_mod_i32(-1i, func_7(vec3<i32>(global3.c.x, global1[_wgslsmith_index_u32(4294967295u, 4u)], var_3.x), func_7(vec3<i32>(-1i, var_3.x, 1i), Struct_2(false, Struct_1(1084f, global3.d.b, 37984u), global2.c, global2.d), u_input.c.x), 2147483647i | global3.c.x).c.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec4_u32(~_wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(global3.b.b, vec4<u32>(global2.d.c, 0u, 11743u, u_input.d)), ~vec4<u32>(global2.b.c, u_input.b, u_input.b, 0u)), select(_wgslsmith_div_vec4_u32(global2.d.b, vec4<u32>(0u, global3.b.b.x, 21246u, 4294967295u)), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b, global2.b.c, global3.b.b.x, 0u), ~global2.d.b), vec4<bool>(u_input.a.x == u_input.a.x, global2.a | true, global3.a || false, select(true, global2.a, true)))), u_input.c.zwy, _wgslsmith_add_vec3_u32(countOneBits(firstTrailingBit(~global2.d.b.zxx)), firstTrailingBit(firstLeadingBit(global3.d.b.xwz))), global3.b.b.yyw);
}

