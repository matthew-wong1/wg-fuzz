struct Struct_1 {
    a: bool,
    b: f32,
    c: vec4<bool>,
    d: vec4<u32>,
    e: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 9> = array<Struct_1, 9>(Struct_1(false, -658f, vec4<bool>(true, true, false, true), vec4<u32>(40706u, 4294967295u, 20535u, 32534u), 0u), Struct_1(false, -2365f, vec4<bool>(true, true, true, false), vec4<u32>(30160u, 1u, 45200u, 4294967295u), 57477u), Struct_1(true, -112f, vec4<bool>(true, true, false, true), vec4<u32>(4294967295u, 4294967295u, 0u, 33429u), 7097u), Struct_1(true, 446f, vec4<bool>(true, true, true, true), vec4<u32>(1u, 49901u, 65381u, 0u), 1u), Struct_1(true, 1127f, vec4<bool>(false, true, false, false), vec4<u32>(1u, 31360u, 54608u, 15944u), 55127u), Struct_1(true, 1376f, vec4<bool>(true, false, true, false), vec4<u32>(3624u, 1u, 1u, 1u), 0u), Struct_1(true, 1000f, vec4<bool>(false, false, false, true), vec4<u32>(4294967295u, 20297u, 58471u, 4294967295u), 36651u), Struct_1(true, 372f, vec4<bool>(false, true, true, false), vec4<u32>(31187u, 28629u, 67363u, 1u), 0u), Struct_1(true, 610f, vec4<bool>(false, true, false, true), vec4<u32>(0u, 0u, 2763u, 26112u), 60597u));

var<private> global1: Struct_1 = Struct_1(true, 1179f, vec4<bool>(true, true, false, true), vec4<u32>(40419u, 18525u, 0u, 103685u), 21455u);

var<private> global2: Struct_1 = Struct_1(true, -684f, vec4<bool>(false, true, true, true), vec4<u32>(6052u, 4294967295u, 53360u, 4294967295u), 55020u);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_1, arg_1: u32) -> vec4<u32> {
    let var_0 = false;
    var var_1 = global0[_wgslsmith_index_u32(arg_0.e, 9u)];
    let var_2 = _wgslsmith_dot_vec4_u32(var_1.d, firstTrailingBit(_wgslsmith_div_vec4_u32(countOneBits(global1.d), firstLeadingBit(_wgslsmith_clamp_vec4_u32(var_1.d, global2.d, vec4<u32>(0u, arg_1, 0u, global2.e))))));
    let var_3 = firstLeadingBit(select(~vec2<i32>(u_input.a, u_input.a), vec2<i32>(0i, -49266i) & (vec2<i32>(u_input.a, u_input.a) << (vec2<u32>(0u, global1.d.x) % vec2<u32>(32u))), any(vec4<bool>(true, true, true, arg_0.a))) ^ vec2<i32>(-7794i, -79025i));
    global1 = Struct_1((arg_0.a | (global1.b > global1.b)) & global1.c.x, _wgslsmith_div_f32(-330f, -764f), !vec4<bool>(_wgslsmith_f_op_f32(var_1.b + -496f) <= global2.b, false, true, !all(vec3<bool>(arg_0.c.x, false, var_0))), ~(~_wgslsmith_mult_vec4_u32(_wgslsmith_add_vec4_u32(global1.d, global1.d), global2.d)), firstLeadingBit(30426u));
    return arg_0.d;
}

fn func_4(arg_0: Struct_1) -> vec4<bool> {
    let var_0 = global2.c.x;
    global1 = Struct_1(any(select(!global2.c, vec4<bool>(true, true, any(vec4<bool>(true, global1.a, false, arg_0.c.x)), arg_0.c.x), !(!vec4<bool>(arg_0.a, global2.c.x, global1.c.x, global1.a)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b)))), vec4<bool>(any(global1.c), any(select(global2.c, select(vec4<bool>(arg_0.a, false, arg_0.a, false), vec4<bool>(false, true, global2.c.x, arg_0.a), global1.c), true)), all(vec3<bool>(global1.a, true || arg_0.a, any(global1.c.xxw))), all(vec4<bool>(1u <= global2.e, any(global1.c), false | global1.a, !global2.a))), ~vec4<u32>(global2.e, ~global1.e, ~(~0u), 30070u), firstLeadingBit(global2.e));
    global2 = Struct_1(true, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(-1564f)))))), vec4<bool>(!select(true, arg_0.c.x, global1.c.x), false, global2.a | any(arg_0.c.zyy), false), ~vec4<u32>(global1.d.x, firstTrailingBit(~arg_0.d.x), 4294967295u, arg_0.e & global2.e), ~0u | func_3(global0[_wgslsmith_index_u32(min(23833u, 0u), 9u)], _wgslsmith_clamp_u32(global1.e, global2.d.x, 4294967295u) & (1u & global2.e)).x);
    let var_1 = Struct_1(!arg_0.a, global1.b, select(!select(!global1.c, !global1.c, select(vec4<bool>(false, true, global2.c.x, true), global2.c, arg_0.c)), vec4<bool>(all(!vec4<bool>(global2.a, true, false, true)), false, !all(vec4<bool>(true, global2.a, arg_0.c.x, true)), !all(vec3<bool>(global1.a, global2.c.x, arg_0.a))), true), global1.d, ~(arg_0.e | 1u) | 54046u);
    let var_2 = Struct_1(true, _wgslsmith_f_op_f32(global1.b * global2.b), select(!global1.c, vec4<bool>(global1.c.x, !var_1.c.x, false, any(vec3<bool>(global2.a, var_1.a, true))), global1.c), vec4<u32>(110729u, firstLeadingBit(global2.e), global2.e, ~88379u) ^ abs(var_1.d), ~arg_0.e);
    return vec4<bool>(true, global1.c.x, select(var_1.a, all(vec3<bool>(true, false, true)), var_2.a) & (min(~0u, 4294967295u) <= (_wgslsmith_mod_u32(global2.e, arg_0.d.x) >> (_wgslsmith_clamp_u32(0u, 12748u, 6553u) % 32u))), false);
}

fn func_2(arg_0: Struct_1, arg_1: vec2<i32>) -> vec2<bool> {
    let var_0 = Struct_1(select(all(vec2<bool>(true, false)), global2.a, _wgslsmith_f_op_f32(-global2.b) <= _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(297f, arg_0.b))))), -444f, func_4(Struct_1(false, _wgslsmith_div_f32(global1.b, 1f), vec4<bool>(!global1.a, arg_0.a != arg_0.c.x, global2.c.x, false), func_3(arg_0, countOneBits(global1.e)), ~global1.d.x)), ~(~firstLeadingBit(_wgslsmith_div_vec4_u32(vec4<u32>(arg_0.d.x, 0u, 14474u, arg_0.e), global1.d))), ~global1.e);
    global1 = var_0;
    var var_1 = 1u;
    var var_2 = Struct_1(arg_0.c.x, _wgslsmith_f_op_f32(-var_0.b), vec4<bool>(all(vec3<bool>(global1.a || arg_0.c.x, false, any(var_0.c.xw))), !func_4(Struct_1(true, -634f, vec4<bool>(arg_0.c.x, false, true, false), arg_0.d, var_0.e)).x, arg_0.a || false, !global2.a), firstLeadingBit(vec4<u32>(~global2.e, ~var_0.e, 27720u, ~_wgslsmith_mod_u32(global2.d.x, global2.d.x))), 1u);
    var var_3 = var_0;
    return vec2<bool>(arg_0.a, arg_1.x < (-(~arg_1.x) ^ abs(arg_1.x)));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<f32>, arg_3: Struct_1) -> Struct_1 {
    var var_0 = 2701f;
    var var_1 = vec3<bool>(true, global2.a, !func_2(arg_1, select(vec2<i32>(u_input.a, u_input.a) << (vec2<u32>(arg_3.d.x, 35016u) % vec2<u32>(32u)), ~vec2<i32>(29966i, -2147483647i), !vec2<bool>(false, arg_3.c.x))).x);
    global0 = array<Struct_1, 9>();
    var_1 = vec3<bool>(global2.c.x, u_input.a < _wgslsmith_dot_vec3_i32(vec3<i32>(~(-48512i), ~u_input.a, _wgslsmith_clamp_i32(-2147483647i, 2147483647i, -1i)), countOneBits(vec3<i32>(-1i, u_input.a, u_input.a))), any(global1.c));
    global0 = array<Struct_1, 9>();
    return Struct_1(any(global2.c.zx), 1943f, arg_3.c, _wgslsmith_mult_vec4_u32(abs(arg_1.d), select(vec4<u32>(17926u, global2.d.x, 12621u, global1.d.x), arg_1.d, true)) >> (_wgslsmith_clamp_vec4_u32(~vec4<u32>(4294967295u, global1.d.x, arg_3.d.x, global2.d.x), firstLeadingBit(_wgslsmith_clamp_vec4_u32(vec4<u32>(global1.e, 1u, 0u, 53895u), global2.d, arg_3.d)), ~(~global1.d)) % vec4<u32>(32u)), min(abs(arg_1.e), global1.d.x));
}

fn func_1(arg_0: vec2<bool>) -> Struct_1 {
    global1 = global0[_wgslsmith_index_u32(0u, 9u)];
    var var_0 = global2.d.wz;
    var var_1 = func_5(Struct_1(all(!func_2(Struct_1(global2.c.x, 1595f, global1.c, global2.d, var_0.x), vec2<i32>(u_input.a, u_input.a))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-488f + 685f), _wgslsmith_f_op_f32(step(global2.b, global1.b)))))), select(!global1.c, !global1.c, global2.c), min(global1.d, _wgslsmith_mod_vec4_u32(global2.d, global2.d)), global1.d.x), global0[_wgslsmith_index_u32(global2.d.x, 9u)], vec2<f32>(_wgslsmith_f_op_f32(abs(global2.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b))), global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32((_wgslsmith_clamp_u32(global2.e, 4294967295u, 70178u) >> (abs(370u) % 32u)) >> (global1.d.x % 32u), 1u, global1.e), 9u)]);
    let var_2 = func_5(global0[_wgslsmith_index_u32(~63370u, 9u)], func_5(func_5(func_5(global0[_wgslsmith_index_u32(60957u, 9u)], Struct_1(true, global2.b, vec4<bool>(true, arg_0.x, false, true), var_1.d, global2.d.x), vec2<f32>(-2296f, var_1.b), Struct_1(global1.a, -2538f, vec4<bool>(global2.a, global1.c.x, true, var_1.a), vec4<u32>(4294967295u, var_1.d.x, 4294967295u, 1u), 10864u)), Struct_1(func_2(global0[_wgslsmith_index_u32(1u, 9u)], vec2<i32>(1i, u_input.a)).x, global2.b, global2.c, func_5(global0[_wgslsmith_index_u32(global1.e, 9u)], Struct_1(false, var_1.b, vec4<bool>(var_1.a, false, global2.c.x, global2.a), vec4<u32>(1u, var_1.e, var_0.x, var_0.x), 4294967295u), vec2<f32>(1187f, var_1.b), global0[_wgslsmith_index_u32(15390u, 9u)]).d, ~var_0.x), vec2<f32>(_wgslsmith_f_op_f32(1221f - 1495f), global2.b), func_5(Struct_1(true, global1.b, vec4<bool>(global1.c.x, true, false, global1.a), var_1.d, 27489u), Struct_1(false, global1.b, var_1.c, vec4<u32>(var_0.x, var_1.d.x, 0u, var_0.x), global1.e), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-693f, -402f)), Struct_1(true, -2256f, global1.c, var_1.d, 4294967295u))), Struct_1((false || global1.a) & false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1170f))), !vec4<bool>(global2.a, global1.c.x, false, var_1.c.x), firstTrailingBit(var_1.d), 20211u), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -321f), _wgslsmith_f_op_f32(385f + global1.b)), Struct_1(var_1.c.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-289f - global1.b), -1000f), global1.c, reverseBits(firstLeadingBit(var_1.d)), global1.d.x >> (_wgslsmith_sub_u32(4294967295u, global2.e) % 32u))), vec2<f32>(var_1.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b)), _wgslsmith_f_op_f32(-424f - _wgslsmith_f_op_f32(1113f + global2.b)))), Struct_1(!any(global1.c), -1139f, var_1.c, vec4<u32>(var_1.d.x, global2.d.x & 39406u, _wgslsmith_div_u32(global2.d.x, 0u), _wgslsmith_clamp_u32(0u, global1.e, 9354u)) | vec4<u32>(var_0.x, var_1.d.x, ~global2.d.x, ~1u), 0u));
    let var_3 = global0[_wgslsmith_index_u32(var_2.e, 9u)];
    return func_5(func_5(Struct_1(true, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1271f * 1000f), global1.b)), !var_2.c, ~vec4<u32>(24484u, 1u, global1.e, 56743u), _wgslsmith_mult_u32(func_3(Struct_1(global2.a, -361f, global2.c, global1.d, var_3.d.x), 24234u).x, 36376u)), var_2, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1645f, global1.b)))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global1.b, var_3.b)))))), var_2), global0[_wgslsmith_index_u32(14583u, 9u)], vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_1.b)) * var_2.b)), 197f), Struct_1(var_3.a, 2691f, !vec4<bool>(false, any(var_3.c), u_input.a < u_input.a, true), _wgslsmith_add_vec4_u32(~var_2.d, ~min(vec4<u32>(8095u, var_3.e, global1.e, 1u), vec4<u32>(23297u, 1u, var_1.d.x, global2.e))), 4294967295u));
}

fn func_6(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec2<bool>) -> vec3<f32> {
    var var_0 = Struct_1(all(arg_3), _wgslsmith_f_op_f32(arg_2.b + -1104f), global2.c, _wgslsmith_mult_vec4_u32(global2.d, ~(~(vec4<u32>(arg_2.e, 1u, 84059u, arg_2.e) & global1.d))), min(~arg_1.d.x, arg_2.d.x));
    let var_1 = u_input.a;
    let var_2 = Struct_1(_wgslsmith_dot_vec3_u32(arg_2.d.xxz, ~_wgslsmith_mod_vec3_u32(arg_1.d.zwx, var_0.d.xzw)) != _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(arg_2.d.yyx ^ vec3<u32>(47940u, global1.e, 4294967295u), arg_2.d.xwz), global2.d.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2.b, arg_2.b))), func_1(vec2<bool>(!global1.a, true)).b), global2.c, vec4<u32>(arg_1.e, _wgslsmith_add_u32(4294967295u, ~(~arg_2.e)), _wgslsmith_add_u32(arg_2.d.x, firstLeadingBit(0u)) & ~arg_1.d.x, firstTrailingBit(global2.d.x)), ~min(~min(global2.d.x, arg_2.d.x), ~func_3(Struct_1(var_0.a, 744f, vec4<bool>(global1.a, arg_0.x, global2.c.x, global1.a), vec4<u32>(4294967295u, 41430u, 0u, 32288u), global1.d.x), 17682u).x));
    var var_3 = global0[_wgslsmith_index_u32(~0u, 9u)];
    var var_4 = ~max(~var_3.d, _wgslsmith_sub_vec4_u32(arg_2.d, var_0.d));
    return vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -387f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global2.b), _wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.b) * _wgslsmith_f_op_f32(f32(-1f) * -435f)))), var_3.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.b, global1.b, -1325f) - vec3<f32>(584f, global2.b, global2.b))), _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.b, global1.b, 288f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.b, global2.b, global2.b))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_6(vec2<bool>(true, global1.c.x), global0[_wgslsmith_index_u32(8919u, 9u)], func_1(vec2<bool>(false, global1.a)), global1.c.xw)) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(474f, 1665f, global1.b)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.b, global1.b, 533f) + vec3<f32>(global2.b, global2.b, -809f))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(-1494f)), _wgslsmith_f_op_f32(f32(-1f) * -403f), _wgslsmith_f_op_f32(floor(global1.b))))));
    let var_1 = ~(~vec3<u32>(~0u, firstLeadingBit(global1.d.x), abs(1u)));
    var var_2 = func_1(func_5(global0[_wgslsmith_index_u32(global2.e, 9u)], func_5(func_5(func_1(global2.c.wx), global0[_wgslsmith_index_u32(~var_1.x, 9u)], _wgslsmith_f_op_vec2_f32(-var_0.yy), func_1(global1.c.yz)), global0[_wgslsmith_index_u32(var_1.x, 9u)], var_0.zy, func_5(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(global1.e, global2.d.x), 9u)], Struct_1(true, global1.b, vec4<bool>(global2.a, global2.a, true, true), vec4<u32>(0u, 1u, global2.d.x, 5137u), 4294967295u), _wgslsmith_div_vec2_f32(vec2<f32>(-1000f, var_0.x), var_0.yz), global0[_wgslsmith_index_u32(min(24518u, 33839u), 9u)])), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(global1.b, 106f)))), Struct_1(true, global1.b, func_4(Struct_1(global2.c.x, global1.b, global1.c, global2.d, 36066u)), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(var_1.x, 0u, 1u, var_1.x), vec4<u32>(37188u, 4294967295u, var_1.x, var_1.x), global1.d), max(global2.d.x, 1u))).c.yz);
    var_2 = func_5(func_1(!select(func_5(Struct_1(global1.a, 1499f, global1.c, global1.d, var_1.x), Struct_1(false, var_0.x, global2.c, vec4<u32>(global1.d.x, 42255u, 49623u, 0u), 88309u), vec2<f32>(var_0.x, global2.b), global0[_wgslsmith_index_u32(global1.d.x, 9u)]).c.zx, select(vec2<bool>(global1.c.x, true), global2.c.xw, false), true)), Struct_1(_wgslsmith_f_op_f32(-var_0.x) >= -793f, 1044f, func_1(!var_2.c.zw).c, firstTrailingBit(_wgslsmith_div_vec4_u32(~vec4<u32>(4294967295u, global2.d.x, var_2.d.x, 79193u), global1.d >> (vec4<u32>(global2.e, var_2.d.x, 15887u, global1.d.x) % vec4<u32>(32u)))), func_3(func_5(Struct_1(global1.a, global1.b, global1.c, vec4<u32>(4294967295u, 3311u, 16418u, 2927u), var_1.x), Struct_1(false, global2.b, vec4<bool>(false, false, false, var_2.c.x), vec4<u32>(109947u, 1u, 1u, 6845u), 13635u), var_0.xx, func_5(Struct_1(var_2.c.x, var_2.b, vec4<bool>(false, true, true, var_2.c.x), vec4<u32>(5785u, 10276u, 20599u, 11132u), 42033u), global0[_wgslsmith_index_u32(global1.d.x, 9u)], vec2<f32>(global1.b, var_0.x), Struct_1(global2.a, 2125f, var_2.c, global2.d, 1016u))), func_3(global0[_wgslsmith_index_u32(4294967295u, 9u)], var_1.x).x ^ 21885u).x), _wgslsmith_f_op_vec2_f32(-var_0.xy), Struct_1(!global2.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.b)), select(!func_5(global0[_wgslsmith_index_u32(2460u, 9u)], Struct_1(var_2.a, var_0.x, vec4<bool>(true, global1.a, var_2.a, global2.a), vec4<u32>(var_2.d.x, var_2.e, global1.d.x, 0u), 2261u), var_0.zz, Struct_1(false, -482f, global1.c, vec4<u32>(global1.d.x, global1.e, var_1.x, 18702u), global1.d.x)).c, func_5(Struct_1(false, -319f, var_2.c, global1.d, global1.d.x), Struct_1(false, var_0.x, global1.c, vec4<u32>(var_1.x, 11550u, global2.d.x, var_1.x), var_1.x), _wgslsmith_f_op_vec2_f32(-var_0.zy), func_1(vec2<bool>(global2.c.x, true))).c, vec4<bool>(true, global2.c.x & var_2.c.x, var_2.c.x, true)), _wgslsmith_div_vec4_u32(~vec4<u32>(global2.e, 16056u, 4294967295u, 88912u), var_2.d >> (vec4<u32>(global1.e, global1.d.x, var_2.d.x, 35285u) % vec4<u32>(32u))) | global2.d, 6805u));
    let var_3 = -vec3<i32>(firstTrailingBit(-17165i), -2147483647i, 1i);
    var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.b, -234f, -1103f)) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1614f, global1.b, var_0.x)), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(246f, 210f, var_2.b), vec3<f32>(271f, -109f, 1398f))))) * _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global1.b, 263f, 219f), vec3<f32>(-1000f, 852f, 2564f)))))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.b, -1420f, -1000f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-716f, 1340f, global1.b) - vec3<f32>(var_2.b, 873f, 113f))) - vec3<f32>(-1000f, _wgslsmith_div_f32(-524f, 255f), -770f)), vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(1116f, var_2.b, true)), _wgslsmith_div_f32(global1.b, global1.b), global2.c.x || true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.b * -1096f)), 899f))));
    var_2 = Struct_1(select(!(true || (var_3.x < u_input.a)), all(global2.c.yx), _wgslsmith_mult_i32(_wgslsmith_mod_i32(-19597i, var_3.x), _wgslsmith_add_i32(u_input.a, var_3.x)) >= select(var_3.x, 2147483647i, !global2.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_2.b)) + 1000f)), global2.c, abs(vec4<u32>(_wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(32829u, global1.e)), vec2<u32>(21494u, 45521u)), 15373u | global2.d.x, func_5(func_5(global0[_wgslsmith_index_u32(15397u, 9u)], global0[_wgslsmith_index_u32(var_1.x, 9u)], vec2<f32>(1203f, -146f), global0[_wgslsmith_index_u32(1u, 9u)]), global0[_wgslsmith_index_u32(func_1(vec2<bool>(var_2.a, true)).e, 9u)], _wgslsmith_f_op_vec2_f32(-var_0.yy), func_5(global0[_wgslsmith_index_u32(1u, 9u)], global0[_wgslsmith_index_u32(var_2.e, 9u)], var_0.yz, Struct_1(true, global2.b, vec4<bool>(var_2.c.x, false, true, var_2.c.x), vec4<u32>(1u, 77883u, 1u, 1u), global1.d.x))).d.x, select(6910u, firstLeadingBit(var_1.x), false))), 39036u);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(~_wgslsmith_mod_u32(~1u, firstTrailingBit(4294967295u)), 29991u, ~var_2.e, 21362u), u_input.a, abs((firstTrailingBit(var_3.x) << (global1.d.x % 32u)) ^ var_3.x), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(242f, 650f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global2.b, -968f)))))));
}

