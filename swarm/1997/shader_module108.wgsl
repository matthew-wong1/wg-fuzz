struct Struct_1 {
    a: bool,
    b: vec3<u32>,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec2<u32>,
    c: vec2<f32>,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: u32,
    d: vec2<i32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: i32,
    d: vec4<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 9>;

var<private> global1: array<bool, 4> = array<bool, 4>(true, true, false, true);

var<private> global2: array<vec3<f32>, 11>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
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

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<u32>, arg_1: u32, arg_2: vec3<f32>, arg_3: Struct_4) -> vec4<f32> {
    let var_0 = Struct_4(arg_3.a);
    var var_1 = var_0;
    let var_2 = _wgslsmith_div_u32(arg_3.a.b.x, var_1.a.b.x);
    var_1 = var_0;
    global0 = array<vec4<i32>, 9>();
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(769f, arg_2.x, arg_2.x, -902f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.x, 1387f, -697f, arg_2.x)))))));
}

fn func_4(arg_0: vec4<bool>, arg_1: bool, arg_2: vec4<f32>) -> vec2<bool> {
    global2 = array<vec3<f32>, 11>();
    var var_0 = Struct_2(Struct_1(any(!select(vec4<bool>(true, false, arg_0.x, true), vec4<bool>(false, true, false, arg_1), vec4<bool>(arg_1, arg_0.x, true, arg_0.x))), ~(~abs(u_input.b.zww)), !global1[_wgslsmith_index_u32(countOneBits(~u_input.c), 4u)]), Struct_1(_wgslsmith_clamp_u32(u_input.b.x & 43270u, 33093u, _wgslsmith_sub_u32(u_input.b.x, u_input.e)) < 4294967295u, _wgslsmith_mult_vec3_u32(u_input.b.xzy, ~select(vec3<u32>(1u, 9714u, u_input.b.x), vec3<u32>(0u, 50921u, u_input.e), arg_0.zxz)), arg_0.x == global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(91889u, _wgslsmith_dot_vec2_u32(u_input.b.xw, vec2<u32>(13296u, u_input.b.x))), 4u)]), Struct_1(false, abs(_wgslsmith_sub_vec3_u32(u_input.b.xzz >> (u_input.b.wxz % vec3<u32>(32u)), ~vec3<u32>(u_input.b.x, u_input.c, u_input.e))), !all(arg_0)), Struct_1(select(true, any(vec2<bool>(true, true)), !arg_1), _wgslsmith_div_vec3_u32(firstTrailingBit(u_input.b.wxz) >> (~u_input.b.xzx % vec3<u32>(32u)), reverseBits(_wgslsmith_div_vec3_u32(u_input.b.xww, u_input.b.xwy))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(arg_2.x)))) < _wgslsmith_f_op_f32(sign(arg_2.x))));
    var_0 = Struct_2(var_0.a, Struct_1(any(vec4<bool>(false, any(vec2<bool>(arg_0.x, arg_1)), all(arg_0.zx), select(arg_1, true, global1[_wgslsmith_index_u32(1u, 4u)]))), var_0.b.b, global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(~7518u, var_0.b.b.x << (var_0.a.b.x % 32u)) | var_0.b.b.x, 4u)]), Struct_1(true, vec3<u32>(4294967295u, var_0.d.b.x, _wgslsmith_mult_u32(_wgslsmith_add_u32(1u, u_input.b.x), ~4206u)), false), Struct_1(any(arg_0), firstTrailingBit(var_0.d.b), true));
    let var_1 = Struct_4(Struct_1((var_0.d.b.x > var_0.d.b.x) || all(vec2<bool>(arg_0.x, true)), vec3<u32>(_wgslsmith_div_u32(62526u, u_input.e), var_0.d.b.x, ~23201u) << (var_0.a.b % vec3<u32>(32u)), true));
    var var_2 = arg_2.x;
    return select(!select(vec2<bool>(true, arg_0.x), select(arg_0.ww, arg_0.zy, false), vec2<bool>(true, var_1.a.c)), !vec2<bool>(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.e, var_0.c.b.x), 4u)], any(arg_0)), select(arg_0.xz, select(vec2<bool>(false, false), arg_0.yz, arg_1), arg_0.yy));
}

fn func_2(arg_0: f32, arg_1: f32, arg_2: Struct_4) -> bool {
    let var_0 = arg_2.a;
    global2 = array<vec3<f32>, 11>();
    let var_1 = select(!select(select(vec2<bool>(false, var_0.c), select(vec2<bool>(false, arg_2.a.a), vec2<bool>(false, global1[_wgslsmith_index_u32(1u, 4u)]), vec2<bool>(true, true)), true), select(select(vec2<bool>(false, arg_2.a.c), vec2<bool>(true, var_0.c), false), !vec2<bool>(true, global1[_wgslsmith_index_u32(var_0.b.x, 4u)]), !vec2<bool>(false, global1[_wgslsmith_index_u32(var_0.b.x, 4u)])), true), !func_4(select(select(vec4<bool>(false, true, arg_2.a.c, global1[_wgslsmith_index_u32(var_0.b.x, 4u)]), vec4<bool>(var_0.c, global1[_wgslsmith_index_u32(arg_2.a.b.x, 4u)], true, var_0.c), vec4<bool>(true, false, true, arg_2.a.c)), vec4<bool>(true, var_0.a, global1[_wgslsmith_index_u32(var_0.b.x, 4u)], var_0.c), select(vec4<bool>(var_0.a, false, var_0.c, var_0.c), vec4<bool>(global1[_wgslsmith_index_u32(var_0.b.x, 4u)], global1[_wgslsmith_index_u32(u_input.c, 4u)], arg_2.a.c, true), vec4<bool>(global1[_wgslsmith_index_u32(u_input.e, 4u)], var_0.c, arg_2.a.a, var_0.c))), false, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(vec2<u32>(4294967295u, 1u), u_input.b.x, vec3<f32>(179f, 1021f, 468f), Struct_4(Struct_1(global1[_wgslsmith_index_u32(var_0.b.x, 4u)], var_0.b, var_0.c)))) + vec4<f32>(-648f, -589f, arg_1, 271f))), !func_4(!vec4<bool>(global1[_wgslsmith_index_u32(arg_2.a.b.x, 4u)], global1[_wgslsmith_index_u32(18174u, 4u)], global1[_wgslsmith_index_u32(54721u, 4u)], arg_2.a.a), true, vec4<f32>(_wgslsmith_f_op_f32(abs(-323f)), _wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(min(arg_0, -1182f)), 1485f)).x);
    global2 = array<vec3<f32>, 11>();
    var var_2 = vec4<u32>(_wgslsmith_div_u32(1u, ~_wgslsmith_add_u32(20126u & u_input.b.x, ~1u)), 1u, 56662u, ~2397u);
    return !any(var_1);
}

fn func_5(arg_0: f32, arg_1: Struct_1, arg_2: Struct_4) -> vec4<f32> {
    global1 = array<bool, 4>();
    global1 = array<bool, 4>();
    var var_0 = ~vec4<i32>(_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(-vec3<i32>(24611i, u_input.d.x, u_input.a.x), _wgslsmith_clamp_vec3_i32(vec3<i32>(0i, -20730i, u_input.d.x), vec3<i32>(u_input.a.x, u_input.d.x, -17029i), vec3<i32>(u_input.a.x, 0i, 57518i))), 15323i), -54854i, u_input.d.x, u_input.d.x);
    var var_1 = Struct_1(false, u_input.b.wzy, false);
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(vec2<u32>(u_input.e, 13705u), arg_1.b.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec4_f32(func_3(arg_2.a.b.zy, var_1.b.x, vec3<f32>(arg_0, arg_0, -2752f), Struct_4(Struct_1(true, var_1.b, arg_1.c)))).zwz * _wgslsmith_f_op_vec3_f32(-global2[_wgslsmith_index_u32(arg_1.b.x, 11u)])) + vec3<f32>(arg_0, _wgslsmith_f_op_f32(sign(112f)), 1453f)), arg_2)));
    return vec4<f32>(arg_0, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(-470f)))), arg_0, -678f);
}

fn func_1(arg_0: Struct_3) -> u32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(func_5(arg_0.c.x, Struct_1(func_2(_wgslsmith_f_op_f32(select(-829f, arg_0.c.x, false)), _wgslsmith_f_op_f32(-arg_0.c.x), Struct_4(Struct_1(global1[_wgslsmith_index_u32(arg_0.a, 4u)], vec3<u32>(31171u, arg_0.b.x, u_input.c), global1[_wgslsmith_index_u32(1u, 4u)]))), ~vec3<u32>(arg_0.a, max(71207u, 42901u), ~0u), global1[_wgslsmith_index_u32(~select(~4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.e, arg_0.b.x, arg_0.b.x, u_input.e), u_input.b), false && global1[_wgslsmith_index_u32(4294967295u, 4u)]), 4u)]), Struct_4(Struct_1(!func_4(vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 4u)], global1[_wgslsmith_index_u32(arg_0.a, 4u)], false, false), global1[_wgslsmith_index_u32(arg_0.a, 4u)], vec4<f32>(-339f, 1263f, arg_0.c.x, -1562f)).x, ~vec3<u32>(0u, arg_0.a, 19683u) << (countOneBits(vec3<u32>(u_input.e, u_input.b.x, arg_0.b.x)) % vec3<u32>(32u)), !(global1[_wgslsmith_index_u32(4294967295u, 4u)] || false)))));
    let var_1 = ~(~_wgslsmith_add_u32(~arg_0.a, ~(~arg_0.a)));
    global0 = array<vec4<i32>, 9>();
    let var_2 = arg_0;
    let var_3 = any(vec2<bool>(false, global1[_wgslsmith_index_u32(reverseBits(min(_wgslsmith_add_u32(arg_0.a, 917u), 1u)), 4u)]));
    return 17605u;
}

fn func_6(arg_0: vec4<bool>, arg_1: Struct_3, arg_2: vec4<f32>, arg_3: i32) -> Struct_2 {
    var var_0 = arg_0.x;
    let var_1 = _wgslsmith_f_op_f32(round(606f));
    let var_2 = arg_1;
    var_0 = all(!select(arg_0.yxy, !select(arg_0.wyz, arg_0.zzz, global1[_wgslsmith_index_u32(62222u, 4u)]), !(!arg_0.x)));
    var var_3 = Struct_2(Struct_1(all(arg_0.zxy), _wgslsmith_sub_vec3_u32(firstTrailingBit(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.e, u_input.e, u_input.e), vec3<u32>(u_input.b.x, 13259u, 1u))), ~u_input.b.xyx | u_input.b.xwx), arg_1.a == min(firstLeadingBit(arg_1.b.x), 4294967295u)), Struct_1(all(select(arg_0.xy, !arg_0.zy, select(arg_0.zz, arg_0.wz, vec2<bool>(arg_0.x, global1[_wgslsmith_index_u32(var_2.b.x, 4u)])))), ~u_input.b.xyy, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.b.zwx, select(~u_input.b.wxx, vec3<u32>(u_input.e, arg_1.a, 28571u), select(global1[_wgslsmith_index_u32(0u, 4u)], false, false))), 4u)]), Struct_1(true, vec3<u32>(4294967295u, _wgslsmith_mult_u32(var_2.a, arg_1.b.x) | 1u, ~u_input.c), !func_2(_wgslsmith_div_f32(var_1, -1560f), -218f, Struct_4(Struct_1(false, u_input.b.xwy, global1[_wgslsmith_index_u32(var_2.b.x, 4u)])))), Struct_1(true, u_input.b.www, _wgslsmith_div_u32(arg_1.a, _wgslsmith_dot_vec4_u32(u_input.b, u_input.b)) <= 51926u));
    return Struct_2(var_3.a, Struct_1(true, u_input.b.xxw, !all(!arg_0.xy)), var_3.a, Struct_1(true, abs(vec3<u32>(_wgslsmith_mult_u32(5857u, 1u), firstLeadingBit(0u), func_1(arg_1))), arg_0.x));
}

fn func_7(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_2, arg_3: f32) -> Struct_2 {
    global2 = array<vec3<f32>, 11>();
    let var_0 = Struct_2(arg_0.a, func_6(select(select(select(vec4<bool>(arg_1.c.a, false, true, global1[_wgslsmith_index_u32(arg_2.a.b.x, 4u)]), vec4<bool>(true, false, global1[_wgslsmith_index_u32(33912u, 4u)], true), false), !vec4<bool>(arg_2.a.a, arg_2.a.a, true, arg_2.a.a), all(vec2<bool>(false, global1[_wgslsmith_index_u32(arg_1.b.b.x, 4u)]))), !(!vec4<bool>(true, global1[_wgslsmith_index_u32(32522u, 4u)], true, false)), true), Struct_3(0u, abs(arg_0.d.b.xy ^ vec2<u32>(arg_0.c.b.x, arg_0.c.b.x)), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_3, 1342f))))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-959f, arg_3, arg_3, -276f)) - _wgslsmith_div_vec4_f32(vec4<f32>(1406f, arg_3, -123f, -1508f), vec4<f32>(arg_3, arg_3, arg_3, -283f))), _wgslsmith_f_op_vec4_f32(func_3(func_6(vec4<bool>(global1[_wgslsmith_index_u32(1u, 4u)], false, arg_2.a.c, false), Struct_3(arg_0.b.b.x, arg_1.c.b.xx, vec2<f32>(arg_3, -312f)), vec4<f32>(880f, 849f, 917f, -165f), u_input.d.x).c.b.xz, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.d.b.x, arg_1.b.b.x, 19319u, 4294967295u), u_input.b), _wgslsmith_f_op_vec3_f32(round(global2[_wgslsmith_index_u32(45683u, 11u)])), Struct_4(arg_2.a))))), 17241i).c, func_6(select(select(select(vec4<bool>(false, arg_2.a.c, arg_2.b.a, true), vec4<bool>(false, arg_2.b.a, true, true), true), !vec4<bool>(true, arg_2.c.a, true, arg_0.b.c), select(true, arg_2.b.a, global1[_wgslsmith_index_u32(1u, 4u)])), select(select(vec4<bool>(global1[_wgslsmith_index_u32(arg_0.a.b.x, 4u)], global1[_wgslsmith_index_u32(7911u, 4u)], arg_2.b.c, false), vec4<bool>(global1[_wgslsmith_index_u32(0u, 4u)], true, global1[_wgslsmith_index_u32(arg_2.d.b.x, 4u)], arg_0.a.c), vec4<bool>(arg_1.c.c, true, arg_0.d.a, global1[_wgslsmith_index_u32(arg_2.d.b.x, 4u)])), select(vec4<bool>(arg_2.a.a, global1[_wgslsmith_index_u32(82799u, 4u)], arg_2.d.a, arg_1.a.a), vec4<bool>(false, arg_0.a.a, global1[_wgslsmith_index_u32(arg_0.b.b.x, 4u)], true), arg_0.a.a), any(vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 4u)], global1[_wgslsmith_index_u32(4294967295u, 4u)], arg_0.c.c, arg_2.a.a))), select(arg_2.c.b.x < 46452u, func_2(-562f, arg_3, Struct_4(arg_2.b)), arg_2.a.c)), Struct_3(_wgslsmith_dot_vec4_u32(u_input.b, _wgslsmith_mod_vec4_u32(vec4<u32>(22086u, arg_2.c.b.x, 1u, 1u), u_input.b)), vec2<u32>(71232u, 4712u), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-431f, -1024f)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(418f, 1055f), vec2<f32>(-395f, 1000f), false)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_3, 608f, arg_3, arg_3))) - vec4<f32>(arg_3, -1027f, arg_3, 271f))), -24091i).d, Struct_1((u_input.b.x <= reverseBits(arg_2.c.b.x)) && all(!vec2<bool>(arg_1.a.c, arg_1.d.c)), arg_1.c.b, !arg_1.d.c));
    let var_1 = func_6(select(!(!(!vec4<bool>(arg_0.d.c, arg_0.b.c, arg_1.d.c, var_0.a.a))), vec4<bool>(!var_0.d.c, true, false, !var_0.c.c), !(!all(vec3<bool>(true, arg_1.a.a, arg_2.b.a)))), Struct_3(_wgslsmith_mod_u32(~23447u, 4294967295u), _wgslsmith_sub_vec2_u32(abs(vec2<u32>(arg_0.a.b.x, var_0.c.b.x)) ^ var_0.d.b.zx, arg_0.b.b.zz), vec2<f32>(-1623f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_5(arg_3, Struct_1(arg_0.a.c, arg_0.b.b, true), Struct_4(Struct_1(false, arg_0.a.b, arg_2.d.a)))).x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(sign(645f)), _wgslsmith_f_op_f32(f32(-1f) * -2019f), _wgslsmith_f_op_f32(sign(arg_3)), -977f))), 1i);
    var var_2 = Struct_2(Struct_1(select(var_0.b.c, true, var_1.b.c), _wgslsmith_mod_vec3_u32(select(arg_1.c.b, min(vec3<u32>(var_1.c.b.x, 7433u, 9113u), arg_1.c.b), !vec3<bool>(false, var_1.b.a, var_1.b.a)), ~arg_0.d.b), var_1.d.b.x < 1u), func_6(select(!(!vec4<bool>(arg_1.d.c, var_0.b.c, var_1.c.c, false)), !vec4<bool>(true, false, arg_2.c.a, var_1.c.c), !(!vec4<bool>(false, false, true, arg_0.d.c))), Struct_3(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 1u), _wgslsmith_add_vec2_u32(arg_2.b.b.zy, var_1.b.b.yx)), ~vec2<u32>(arg_2.b.b.x, u_input.e), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-616f, arg_3))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1211f, arg_3, -1206f, -566f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3, -321f, arg_3, 1899f) * vec4<f32>(arg_3, arg_3, arg_3, -464f))) * vec4<f32>(arg_3, _wgslsmith_f_op_f32(f32(-1f) * -678f), _wgslsmith_f_op_f32(-arg_3), arg_3)), ~u_input.d.x).c, arg_2.d, Struct_1(true, min(arg_0.c.b, arg_0.b.b), true));
    let var_3 = arg_1.c.c;
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<f32>(692f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-211f)))), _wgslsmith_f_op_f32(f32(-1f) * -567f))));
    let var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(348f, var_0.x, 1088f, -551f)))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, _wgslsmith_f_op_f32(-var_0.x), -404f, _wgslsmith_f_op_f32(f32(-1f) * -867f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1948f, 347f, var_0.x, var_0.x))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, -340f, var_0.x, var_0.x) * vec4<f32>(var_0.x, 1321f, -650f, 368f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x)))) * _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(533f, 446f, var_0.x, -1000f)))))));
    global0 = array<vec4<i32>, 9>();
    var var_2 = !(!vec4<bool>(all(!vec2<bool>(true, global1[_wgslsmith_index_u32(u_input.b.x, 4u)])), select(true, true, global1[_wgslsmith_index_u32(max(42488u, 125604u), 4u)]), true, -u_input.d.x < _wgslsmith_clamp_i32(u_input.a.x, -20113i, u_input.d.x)));
    var var_3 = vec2<i32>(~2147483647i, ~u_input.d.x);
    let var_4 = Struct_4(Struct_1(true, _wgslsmith_sub_vec3_u32(_wgslsmith_clamp_vec3_u32(~u_input.b.yxz, ~u_input.b.yzz, abs(u_input.b.xyz)), ~_wgslsmith_clamp_vec3_u32(u_input.b.xww, u_input.b.xxw, u_input.b.wzz)), all(var_2.yxz)));
    let var_5 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(-var_1.x)), var_1.x);
    var var_6 = func_7(func_6(!(!select(vec4<bool>(true, false, var_4.a.a, false), vec4<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 4u)], global1[_wgslsmith_index_u32(var_4.a.b.x, 4u)], var_4.a.c, false), global1[_wgslsmith_index_u32(35405u, 4u)])), Struct_3(func_1(Struct_3(50620u, u_input.b.zx, vec2<f32>(375f, -905f))), var_4.a.b.zy, var_1.ww), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_1 - _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1152f, var_5, var_5, 1150f), vec4<f32>(-204f, var_5, var_1.x, var_1.x))))), var_3.x), func_6(select(!vec4<bool>(var_4.a.c, var_2.x, var_4.a.c, true), !vec4<bool>(false, var_2.x, var_2.x, var_2.x), !(!vec4<bool>(false, true, true, var_2.x))), Struct_3(~(~u_input.b.x), ~(~u_input.b.xw), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_1.x, var_1.x))))), _wgslsmith_f_op_vec4_f32(var_1 - _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-var_1)))), _wgslsmith_mod_i32(var_3.x, ~var_3.x)), Struct_2(var_4.a, var_4.a, Struct_1(all(func_4(vec4<bool>(var_4.a.c, true, true, false), false, vec4<f32>(var_5, 288f, var_1.x, var_5))), ~vec3<u32>(u_input.e, var_4.a.b.x, var_4.a.b.x), global1[_wgslsmith_index_u32(1u, 4u)]), var_4.a), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_5 - _wgslsmith_f_op_f32(trunc(1491f))) - var_1.x), var_5));
    let x = u_input.a;
    s_output = StorageBuffer(~abs(u_input.b.x), vec4<f32>(220f, var_5, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(var_5)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -662f)) - _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-232f, var_5))))), var_3.x, u_input.b, _wgslsmith_f_op_f32(450f * -419f));
}

