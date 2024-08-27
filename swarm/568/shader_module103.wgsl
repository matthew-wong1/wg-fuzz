struct Struct_1 {
    a: bool,
    b: f32,
    c: vec2<i32>,
    d: i32,
    e: vec4<f32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: f32,
    c: Struct_1,
    d: u32,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: u32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec4<f32>;

var<private> global2: Struct_1;

var<private> global3: array<bool, 25>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3() -> f32 {
    var var_0 = global0.a;
    var var_1 = select(select(select(!(!vec2<bool>(global0.a, global0.a)), vec2<bool>(global2.a | global3[_wgslsmith_index_u32(u_input.d, 25u)], true), all(vec2<bool>(true, global0.a))), vec2<bool>(select(false, global0.a, u_input.c.x <= u_input.c.x), global3[_wgslsmith_index_u32(6845u, 25u)] & global0.a), !select(vec2<bool>(false, global3[_wgslsmith_index_u32(u_input.d, 25u)]), vec2<bool>(global0.a, false), true)), vec2<bool>(global3[_wgslsmith_index_u32(select(9712u ^ u_input.d, reverseBits(6088u), global2.a), 25u)] != false, (1372f <= _wgslsmith_f_op_f32(ceil(global2.e.x))) || select(global2.a && global3[_wgslsmith_index_u32(u_input.a, 25u)], global0.a, global2.a || global2.a)), !select(!select(vec2<bool>(true, true), vec2<bool>(global2.a, false), global2.a), vec2<bool>(global2.c.x >= u_input.b.x, true), true));
    let var_2 = global2.d & (global2.c.x ^ ~_wgslsmith_dot_vec3_i32(vec3<i32>(global0.c.x, u_input.b.x, 18691i), ~vec3<i32>(u_input.b.x, global0.d, global2.c.x)));
    let var_3 = Struct_2(vec4<bool>(true, _wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, 0u, u_input.d, u_input.a), _wgslsmith_add_vec4_u32(vec4<u32>(41186u, u_input.d, 0u, u_input.d), vec4<u32>(4294967295u, 13516u, 24386u, 4294967295u))) >= u_input.a, false, any(select(vec2<bool>(global2.a, global0.a), select(vec2<bool>(false, global3[_wgslsmith_index_u32(48005u, 25u)]), vec2<bool>(global3[_wgslsmith_index_u32(u_input.a, 25u)], var_1.x), false), global2.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global0.e.x - 191f), -437f))))), Struct_1(!all(!vec4<bool>(true, true, false, global2.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.e.x)), firstTrailingBit(vec2<i32>(global0.d, var_2)) & vec2<i32>(_wgslsmith_add_i32(u_input.c.x, 2147483647i), ~u_input.c.x), _wgslsmith_dot_vec2_i32(global2.c, vec2<i32>(global0.c.x, -1i >> (u_input.d % 32u))), vec4<f32>(global2.b, _wgslsmith_f_op_f32(select(618f, global0.e.x, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1196f)), _wgslsmith_div_f32(1242f, _wgslsmith_f_op_f32(min(1114f, global1.x))))), u_input.d, Struct_1(!(!select(true, global3[_wgslsmith_index_u32(u_input.a, 25u)], global2.a)), global1.x, abs(countOneBits(vec2<i32>(global2.d, var_2))), _wgslsmith_dot_vec3_i32(vec3<i32>(global0.c.x >> (602u % 32u), global2.c.x, 1i), max(-vec3<i32>(global0.d, 2147483647i, global2.d), select(vec3<i32>(u_input.c.x, 2147483647i, var_2), vec3<i32>(-2147483647i, 47166i, -37233i), vec3<bool>(true, global3[_wgslsmith_index_u32(1u, 25u)], global0.a)))), vec4<f32>(global2.b, _wgslsmith_f_op_f32(ceil(global2.b)), 633f, _wgslsmith_f_op_f32(global2.b + _wgslsmith_f_op_f32(-global1.x)))));
    let var_4 = abs(_wgslsmith_div_u32(~var_3.d, _wgslsmith_div_u32(var_3.d >> ((0u ^ u_input.a) % 32u), 72676u << (reverseBits(u_input.a) % 32u))));
    return 1058f;
}

fn func_2(arg_0: bool) -> f32 {
    let var_0 = u_input.a;
    var var_1 = _wgslsmith_f_op_vec4_f32(min(global2.e, vec4<f32>(-1443f, _wgslsmith_f_op_f32(func_3()), _wgslsmith_div_f32(global1.x, global2.e.x), _wgslsmith_f_op_f32(-1000f - -996f))));
    var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global2.e.x)) * -353f) - global0.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-944f)) + global1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-1486f, -1703f))))));
    global3 = array<bool, 25>();
    var var_2 = vec2<bool>(all(select(vec2<bool>(true, !arg_0), select(select(vec2<bool>(arg_0, arg_0), vec2<bool>(arg_0, false), vec2<bool>(true, arg_0)), !vec2<bool>(true, arg_0), all(vec2<bool>(true, arg_0))), vec2<bool>(global0.a, true))), false);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1765f)));
}

fn func_4(arg_0: f32, arg_1: vec4<bool>) -> i32 {
    var var_0 = global0.a;
    global3 = array<bool, 25>();
    var var_1 = Struct_1(false, -796f, global2.c << (abs(~vec2<u32>(u_input.a, u_input.d) | ~vec2<u32>(u_input.a, u_input.d)) % vec2<u32>(32u)), ~(~(-(~u_input.c.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-356f, _wgslsmith_f_op_f32(744f - -717f), _wgslsmith_f_op_f32(round(-340f)), _wgslsmith_f_op_f32(global0.e.x * 296f))))));
    let var_2 = Struct_2(select(select(!arg_1, arg_1, any(select(arg_1.ywz, vec3<bool>(global2.a, global3[_wgslsmith_index_u32(u_input.a, 25u)], global3[_wgslsmith_index_u32(1182u, 25u)]), arg_1.x))), arg_1, !(!vec4<bool>(global2.a, true, true, global3[_wgslsmith_index_u32(u_input.a, 25u)]))), 205f, Struct_1(select(true, any(select(arg_1.zw, vec2<bool>(global2.a, arg_1.x), arg_1.xw)), !(!global0.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-1709f, -961f), -789f, global3[_wgslsmith_index_u32(u_input.d, 25u)]))), global2.c, -1i, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(var_1.e))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global0.e)))), max(u_input.a, u_input.d), Struct_1(true, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(-767f)))))), var_1.c, -2147483647i, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1000f, 1490f, arg_0, var_1.b)))))));
    let var_3 = arg_1.wyw;
    return _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(-(var_1.c & vec2<i32>(u_input.c.x, global2.d)), firstTrailingBit(vec2<i32>(_wgslsmith_sub_i32(-26789i, var_2.c.c.x), abs(2147483647i)))), _wgslsmith_mod_vec2_i32(~vec2<i32>(var_1.d, u_input.b.x), ~u_input.b) >> (~(~_wgslsmith_add_vec2_u32(vec2<u32>(var_2.d, u_input.d), vec2<u32>(34866u, var_2.d))) % vec2<u32>(32u)));
}

fn func_5(arg_0: vec4<i32>, arg_1: vec3<f32>) -> Struct_1 {
    global3 = array<bool, 25>();
    var var_0 = u_input.d;
    global2 = Struct_1(~max(40854u, _wgslsmith_add_u32(u_input.a, 1u)) <= _wgslsmith_mult_u32(~u_input.a, ~u_input.d), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_3()), 1411f, _wgslsmith_sub_u32(4294967295u, u_input.d) > ~46037u)))), vec2<i32>(_wgslsmith_mod_i32(max(-2147483647i, global2.c.x), -global0.d) ^ _wgslsmith_div_i32(2147483647i, i32(-1i) * -6861i), min(max(arg_0.x, _wgslsmith_clamp_i32(arg_0.x, u_input.b.x, arg_0.x)), global0.c.x)), _wgslsmith_sub_i32(abs(u_input.b.x), _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(31531i, 29140i), _wgslsmith_mult_vec2_i32(vec2<i32>(global2.c.x, arg_0.x), global2.c)), ~vec2<i32>(u_input.b.x, arg_0.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.e.x, 267f, 265f, 1038f))))));
    var var_1 = Struct_1(all(!select(select(vec2<bool>(true, global3[_wgslsmith_index_u32(u_input.a, 25u)]), vec2<bool>(false, false), global2.a), vec2<bool>(false, global2.a), !global0.a)), 584f, u_input.b, ~u_input.b.x << (abs(~(u_input.a & 0u)) % 32u), _wgslsmith_f_op_vec4_f32(-global2.e));
    var var_2 = Struct_1(false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(199f)) * _wgslsmith_div_f32(global0.b, _wgslsmith_f_op_f32(1160f - global0.b)))), vec2<i32>(global0.c.x, var_1.d), ~arg_0.x, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-158f))), global1.x, _wgslsmith_f_op_f32(global1.x - global2.b), _wgslsmith_f_op_f32(-global2.e.x)));
    return Struct_1(!(_wgslsmith_sub_u32(max(u_input.a, 4294967295u), 24313u) > _wgslsmith_div_u32(u_input.d, 62381u << (u_input.a % 32u))), arg_1.x, select(vec2<i32>(var_2.d, var_2.d) ^ ((global0.c & var_2.c) >> ((vec2<u32>(0u, u_input.d) | vec2<u32>(4294967295u, 0u)) % vec2<u32>(32u))), select(~var_2.c, select(~vec2<i32>(-2147483647i, -22604i), vec2<i32>(17636i, 39415i) >> (vec2<u32>(1u, 0u) % vec2<u32>(32u)), var_2.a), !vec2<bool>(true, var_2.a)), select(vec2<bool>(!var_2.a, true), select(select(vec2<bool>(var_2.a, true), vec2<bool>(global0.a, true), true), !vec2<bool>(var_2.a, var_2.a), global0.a), select(vec2<bool>(false, global2.a), select(vec2<bool>(true, var_2.a), vec2<bool>(var_2.a, true), true), !var_2.a))), 0i, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(114f + _wgslsmith_div_f32(680f, global0.b))), _wgslsmith_f_op_f32(-492f * _wgslsmith_f_op_f32(arg_1.x + arg_1.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global1.x, 1409f)) - _wgslsmith_f_op_f32(-global0.e.x)))), arg_1.x));
}

fn func_1(arg_0: vec4<bool>, arg_1: i32) -> Struct_1 {
    global1 = _wgslsmith_f_op_vec4_f32(global2.e * _wgslsmith_f_op_vec4_f32(step(global2.e, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global0.e))))));
    let var_0 = false;
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(317f, -177f, global1.x, _wgslsmith_f_op_f32(ceil(1211f)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(global0.e * global0.e))) - global2.e)));
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global2.e));
    var var_1 = Struct_1(global3[_wgslsmith_index_u32(~_wgslsmith_mult_u32(u_input.d | ~u_input.d, 39188u), 25u)], -1215f, u_input.c, -_wgslsmith_mult_i32(~_wgslsmith_mod_i32(global2.c.x, 5175i), -1i), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-720f, global2.b, _wgslsmith_f_op_f32(round(1346f)), _wgslsmith_f_op_f32(-global2.b))), _wgslsmith_f_op_vec4_f32(sign(global0.e)), select(arg_0, arg_0, all(arg_0.xzz)))));
    return func_5(-vec4<i32>(0i, func_4(_wgslsmith_f_op_f32(func_2(true)), !vec4<bool>(arg_0.x, global3[_wgslsmith_index_u32(u_input.d, 25u)], true, true)), -7110i, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_1, 1i, global0.c.x), -vec3<i32>(global0.c.x, 31455i, -1i))), _wgslsmith_f_op_vec3_f32(max(var_1.e.wyw, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(ceil(var_1.b)), global0.e.x, -182f), _wgslsmith_f_op_vec3_f32(ceil(global1.yyw)), arg_0.wwy)))));
}

fn func_6(arg_0: Struct_2, arg_1: Struct_1) -> bool {
    global0 = arg_0.e;
    let var_0 = select(-(~_wgslsmith_mod_vec3_i32(vec3<i32>(arg_1.c.x, arg_1.d, -2147483647i), ~vec3<i32>(arg_0.c.d, arg_0.e.c.x, global0.c.x))), vec3<i32>(1i, _wgslsmith_dot_vec4_i32(min(abs(vec4<i32>(31040i, arg_1.c.x, -1i, u_input.b.x)), _wgslsmith_div_vec4_i32(vec4<i32>(52461i, -1i, -1i, global0.d), vec4<i32>(-1i, 1i, global0.c.x, global0.d))), -_wgslsmith_sub_vec4_i32(vec4<i32>(global0.d, -1i, global2.d, -30640i), vec4<i32>(0i, 20226i, 13473i, 62799i))), -1i), select(!any(arg_0.a), false, true));
    global3 = array<bool, 25>();
    global1 = global2.e;
    global1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global2.b))) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global1.x + -330f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_0.b, 687f)))), arg_1.e.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_1.b))) * _wgslsmith_f_op_f32(-1478f * _wgslsmith_div_f32(432f, -331f)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(global2.e)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 448f, arg_1.b, arg_1.b))))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-global2.e), _wgslsmith_f_op_vec4_f32(arg_0.e.e + _wgslsmith_f_op_vec4_f32(global2.e * vec4<f32>(arg_0.b, 1307f, -1268f, 1000f))), global3[_wgslsmith_index_u32(arg_0.d, 25u)]))));
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~_wgslsmith_add_u32(~u_input.d, 16605u);
    var var_1 = 2147483647i;
    let var_2 = Struct_2(!(!(!select(vec4<bool>(true, global3[_wgslsmith_index_u32(80686u, 25u)], global0.a, false), vec4<bool>(false, true, global3[_wgslsmith_index_u32(u_input.a, 25u)], global0.a), true))), _wgslsmith_f_op_f32(114f + 1000f), Struct_1(global2.a == (~(-44973i) >= u_input.b.x), -1154f, vec2<i32>(-_wgslsmith_sub_i32(u_input.b.x, global2.d), ~reverseBits(u_input.b.x)), firstLeadingBit(global0.d), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(global0.e.x)), _wgslsmith_f_op_f32(sign(-1742f)), global1.x, 1f) - global0.e)), reverseBits(~1u) & ~_wgslsmith_add_u32(_wgslsmith_add_u32(74615u, 0u), u_input.a), Struct_1(func_6(Struct_2(select(vec4<bool>(global0.a, false, global0.a, false), vec4<bool>(false, global3[_wgslsmith_index_u32(0u, 25u)], global3[_wgslsmith_index_u32(u_input.d, 25u)], true), vec4<bool>(global2.a, true, true, true)), -1007f, func_1(vec4<bool>(true, false, true, false), -1i), 0u << (1u % 32u), func_5(vec4<i32>(1i, -49152i, 46344i, 57115i), global2.e.yzw)), func_1(select(vec4<bool>(true, global2.a, global3[_wgslsmith_index_u32(u_input.a, 25u)], global0.a), vec4<bool>(true, global2.a, true, true), global0.a), -4614i << (0u % 32u))), _wgslsmith_f_op_f32(max(global0.b, -1000f)), ~(-vec2<i32>(u_input.b.x, 2147483647i)), global0.d, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b)), global1.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(abs(global1.x))), _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(-global2.e.x)))));
    let var_3 = _wgslsmith_sub_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(select(1u, 0u, false), ~1u) & vec2<u32>(var_2.d, u_input.d)) ^ ~select(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.d, var_2.d), vec2<u32>(1u, var_2.d), vec2<u32>(var_2.d, var_2.d)) << (countOneBits(vec2<u32>(4294967295u, 4294967295u)) % vec2<u32>(32u)), vec2<u32>(1u, var_2.d), var_2.a.xw);
    var var_4 = 0u;
    var var_5 = var_2.e;
    let var_6 = vec4<i32>(~_wgslsmith_mult_i32(_wgslsmith_mod_i32(0i, reverseBits(u_input.b.x)), i32(-1i) * -var_5.c.x), _wgslsmith_mod_i32(u_input.c.x, _wgslsmith_dot_vec3_i32(vec3<i32>(~global2.c.x, _wgslsmith_dot_vec2_i32(global2.c, var_2.e.c), abs(-2147483647i)), vec3<i32>(_wgslsmith_clamp_i32(-2147483647i, 2147483647i, -52401i), global0.c.x, -2147483647i))), ~select(_wgslsmith_dot_vec4_i32(vec4<i32>(-5327i, 0i, global0.c.x, u_input.b.x), vec4<i32>(u_input.b.x, u_input.c.x, 19171i, 2147483647i)), min(~(-33046i), ~9848i), !var_5.a), _wgslsmith_mod_i32(1i, global2.c.x));
    var_1 = -_wgslsmith_mult_i32(var_5.d, var_6.x);
    global2 = Struct_1(any(vec3<bool>(true, var_5.a & true, func_6(var_2, var_2.c))), _wgslsmith_f_op_f32(func_2(func_6(Struct_2(vec4<bool>(var_5.a, true, global3[_wgslsmith_index_u32(u_input.a, 25u)], true), global0.e.x, Struct_1(true, -334f, vec2<i32>(-2147483647i, 6578i), global0.c.x, var_2.c.e), var_2.d, Struct_1(global0.a, -1612f, vec2<i32>(0i, 18436i), 1i, vec4<f32>(-301f, 1638f, 281f, -123f))), func_1(vec4<bool>(var_5.a, var_5.a, var_2.c.a, false), -1i)) & true)), ~abs(-(~vec2<i32>(var_6.x, -1i))), func_1(select(select(var_2.a, select(var_2.a, vec4<bool>(var_2.a.x, var_5.a, var_5.a, global0.a), global0.a), vec4<bool>(var_2.c.a, false, true, var_2.e.a)), !vec4<bool>(true, global2.a, global0.a, var_5.a), !select(var_2.a, var_2.a, vec4<bool>(var_2.a.x, false, true, global0.a))), _wgslsmith_add_i32(_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(u_input.c, u_input.c), _wgslsmith_mod_i32(1i, 12090i)), 6054i)).d, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(global0.e, _wgslsmith_f_op_vec4_f32(min(var_2.e.e, global0.e)), !var_5.a)), vec4<f32>(global1.x, _wgslsmith_f_op_f32(sign(var_5.e.x)), 1502f, global1.x), vec4<bool>(all(var_2.a.xww), func_5(var_6, global0.e.xwy).a, any(vec2<bool>(var_5.a, true)), global0.a))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(var_2.e.e + var_5.e), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-401f, global2.b, 1213f, global2.b))))))));
    let x = u_input.a;
    s_output = StorageBuffer(~abs(vec3<u32>(~6288u, ~u_input.a, _wgslsmith_clamp_u32(29762u, 4294967295u, 4294967295u))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -109f)) + global1.x), u_input.d, -abs(vec4<i32>(var_6.x, abs(u_input.c.x), var_5.c.x, 1i)));
}

