struct Struct_1 {
    a: vec4<bool>,
    b: vec2<u32>,
    c: vec4<i32>,
    d: vec3<u32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: u32,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec2<f32>,
    c: vec3<bool>,
    d: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 335f;

var<private> global1: array<Struct_1, 11>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: vec3<f32>, arg_1: vec2<bool>, arg_2: vec2<bool>, arg_3: Struct_3) -> vec3<u32> {
    let var_0 = ~45656u;
    var var_1 = -46457i << (~_wgslsmith_mult_u32(countOneBits(countOneBits(u_input.b)), ~countOneBits(arg_3.d)) % 32u);
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_3.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x))))) - arg_0.x);
    let var_2 = vec3<i32>(1i, 1i, -countOneBits(~_wgslsmith_div_i32(-1i, -2147483647i)));
    let var_3 = arg_3.c.x;
    return _wgslsmith_mult_vec3_u32(_wgslsmith_mod_vec3_u32(_wgslsmith_mult_vec3_u32(~firstTrailingBit(arg_3.a.wzy), vec3<u32>(55832u << (var_0 % 32u), ~var_0, countOneBits(u_input.a))), arg_3.a.wyw), arg_3.a.zzx);
}

fn func_2(arg_0: bool, arg_1: vec2<f32>, arg_2: Struct_1) -> Struct_1 {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1225f), arg_1.x, -1000f);
    var var_1 = -select(arg_2.c.wwz, ~(arg_2.c.wzz << (func_3(vec3<f32>(var_0.x, var_0.x, var_0.x), vec2<bool>(true, false), vec2<bool>(true, false), Struct_3(vec4<u32>(1u, 27156u, arg_2.d.x, u_input.c.x), vec2<f32>(-1897f, -948f), arg_2.a.xxx, 29952u)) % vec3<u32>(32u))), false);
    var_0 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(2267f, 296f, arg_1.x))))));
    let var_2 = ~vec4<i32>(~_wgslsmith_mult_i32(1i, -50591i), -9586i, _wgslsmith_dot_vec4_i32(arg_2.c, arg_2.c) | -(~var_1.x), arg_2.c.x);
    let var_3 = Struct_2(select(vec3<i32>(firstLeadingBit(_wgslsmith_add_i32(-2147483647i, arg_2.c.x)), var_2.x, _wgslsmith_sub_i32(firstLeadingBit(-2147483647i), 1i)), vec3<i32>(-_wgslsmith_dot_vec2_i32(vec2<i32>(var_1.x, var_1.x), arg_2.c.yy), _wgslsmith_mult_i32(-var_2.x, ~2147483647i), ~(~34855i)), arg_2.a.x), global1[_wgslsmith_index_u32(~_wgslsmith_sub_u32(firstTrailingBit(u_input.a), firstTrailingBit(select(61188u, arg_2.d.x, arg_0))), 11u)], arg_2.b.x);
    return Struct_1(!(!(!var_3.b.a)), u_input.c, ~abs(-firstLeadingBit(vec4<i32>(-1i, -2147483647i, var_1.x, -1i))), abs(~select(vec3<u32>(18118u, var_3.b.b.x, var_3.b.d.x), vec3<u32>(1u, u_input.b, 0u), var_3.b.a.xyw)) >> (vec3<u32>(_wgslsmith_mult_u32(arg_2.d.x >> (u_input.b % 32u), abs(arg_2.d.x)), _wgslsmith_dot_vec2_u32(vec2<u32>(15472u, u_input.a), min(vec2<u32>(39765u, 4294967295u), u_input.c)), ~u_input.a) % vec3<u32>(32u)));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1) -> u32 {
    return func_2(true, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(1859f, -479f), vec2<f32>(-220f, 295f)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(602f, 1000f))), vec2<f32>(807f, -128f)), !(!vec2<bool>(arg_0.b.a.x, true)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 139f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-850f, 384f))))), func_2(((arg_0.b.a.x || arg_0.b.a.x) | all(arg_0.b.a.yxz)) & arg_0.b.a.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-194f, 644f), _wgslsmith_div_vec2_f32(vec2<f32>(273f, -1336f), vec2<f32>(1656f, -1139f))) * _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-447f, 374f)))))), global1[_wgslsmith_index_u32(~u_input.b, 11u)])).b.x;
}

fn func_5(arg_0: i32, arg_1: vec4<u32>) -> vec2<u32> {
    var var_0 = Struct_3(~vec4<u32>(~19016u, reverseBits(arg_1.x), 1u, arg_1.x) ^ ~vec4<u32>(47107u, ~0u, _wgslsmith_mod_u32(arg_1.x, 0u), _wgslsmith_clamp_u32(u_input.a, arg_1.x, 49218u)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)), select(select(vec3<bool>(false, select(false, false, false), true), vec3<bool>(true, true, true), any(select(vec2<bool>(true, false), vec2<bool>(false, true), true))), select(vec3<bool>(true, any(vec3<bool>(false, false, true)), true), select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false)), vec3<bool>(true, true, true)), false), ~u_input.a);
    var_0 = Struct_3(_wgslsmith_div_vec4_u32(countOneBits(select(arg_1, vec4<u32>(var_0.d, 1u, 22563u, 4u) >> (var_0.a % vec4<u32>(32u)), vec4<bool>(false, false, false, true))), vec4<u32>(~1u, ~_wgslsmith_mult_u32(arg_1.x, 18102u), ~func_4(Struct_2(vec3<i32>(47050i, -2147483647i, arg_0), Struct_1(vec4<bool>(var_0.c.x, var_0.c.x, var_0.c.x, false), vec2<u32>(u_input.a, arg_1.x), vec4<i32>(41209i, 45128i, 0i, 2147483647i), arg_1.wxy), 96405u), Struct_1(vec4<bool>(var_0.c.x, var_0.c.x, false, var_0.c.x), u_input.c, vec4<i32>(arg_0, 4538i, -1i, arg_0), vec3<u32>(u_input.a, 1566u, u_input.c.x))), u_input.c.x)), var_0.b, select(!(!vec3<bool>(true, var_0.c.x, true)), var_0.c, any(select(vec4<bool>(var_0.c.x, var_0.c.x, false, false), func_2(var_0.c.x, vec2<f32>(var_0.b.x, 1071f), global1[_wgslsmith_index_u32(var_0.d, 11u)]).a, select(vec4<bool>(var_0.c.x, true, var_0.c.x, var_0.c.x), vec4<bool>(var_0.c.x, var_0.c.x, true, var_0.c.x), vec4<bool>(true, true, var_0.c.x, var_0.c.x))))), _wgslsmith_div_u32(_wgslsmith_mult_u32(~123933u, var_0.d), _wgslsmith_div_u32(~(~0u), ~max(var_0.d, 1u))));
    var var_1 = Struct_3(_wgslsmith_sub_vec4_u32(abs(vec4<u32>(~1u, arg_1.x, ~1u, u_input.c.x & u_input.b)), vec4<u32>(var_0.d, func_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b.x, var_0.b.x, -1531f)), vec2<bool>(var_0.c.x, false), vec2<bool>(var_0.c.x, false), Struct_3(arg_1, vec2<f32>(var_0.b.x, var_0.b.x), var_0.c, var_0.a.x)).x, min(~19322u, var_0.d), ~_wgslsmith_mult_u32(9637u, 0u))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(var_0.b, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(var_0.b, var_0.b)) * _wgslsmith_f_op_vec2_f32(-var_0.b))))), var_0.c, ~(~u_input.b));
    let var_2 = _wgslsmith_f_op_f32(select(var_0.b.x, var_1.b.x, !(_wgslsmith_clamp_i32(arg_0, arg_0, _wgslsmith_add_i32(-47251i, arg_0)) < min(arg_0, func_2(var_0.c.x, var_0.b, global1[_wgslsmith_index_u32(var_1.d, 11u)]).c.x))));
    var var_3 = Struct_3(vec4<u32>(~(~u_input.c.x), 0u, 72624u, arg_1.x) >> (vec4<u32>(abs(func_4(Struct_2(vec3<i32>(arg_0, arg_0, arg_0), global1[_wgslsmith_index_u32(u_input.c.x, 11u)], var_1.d), global1[_wgslsmith_index_u32(83765u, 11u)])), var_0.a.x | arg_1.x, 1u, ~arg_1.x | 1u) % vec4<u32>(32u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(var_0.b.x + var_1.b.x), var_1.b.x) * var_0.b)), var_0.c, var_1.a.x);
    return vec2<u32>(_wgslsmith_div_u32(0u, 27770u), abs(abs(~func_2(var_0.c.x, var_1.b, global1[_wgslsmith_index_u32(var_3.a.x, 11u)]).b.x)));
}

fn func_1() -> Struct_1 {
    let var_0 = 4294967295u;
    global1 = array<Struct_1, 11>();
    global1 = array<Struct_1, 11>();
    var var_1 = Struct_1(!select(vec4<bool>(true, all(vec2<bool>(true, true)), true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), any(vec4<bool>(false, false, true, true))), true), func_5(-2147483647i, vec4<u32>(func_4(Struct_2(vec3<i32>(0i, 2147483647i, 32465i), global1[_wgslsmith_index_u32(4294967295u, 11u)], u_input.b), func_2(false, vec2<f32>(-1369f, 593f), global1[_wgslsmith_index_u32(4294967295u, 11u)])), 54877u, 0u, u_input.a)), vec4<i32>(func_2(true, _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-222f, -1000f), vec2<f32>(-1000f, -1000f))), func_2(u_input.c.x <= 71312u, vec2<f32>(-104f, 176f), global1[_wgslsmith_index_u32(var_0 & u_input.a, 11u)])).c.x, countOneBits(max(~(-2830i), -1i)), -2147483647i, abs(-select(32253i, -1127i, false))), ~(~_wgslsmith_mult_vec3_u32(~vec3<u32>(var_0, u_input.c.x, 4294967295u), _wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, var_0, u_input.b), vec3<u32>(4294967295u, var_0, 4294967295u)))));
    global0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1635f * -114f), 1433f);
    return func_2(true, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 142f) + _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1269f, 1097f)))))), Struct_1(var_1.a, _wgslsmith_clamp_vec2_u32(countOneBits(var_1.b), abs(~var_1.d.zz), var_1.b), vec4<i32>(var_1.c.x, -(~(-1i)), var_1.c.x, -_wgslsmith_mult_i32(var_1.c.x, 2147483647i)), _wgslsmith_div_vec3_u32(countOneBits(vec3<u32>(4294967295u, var_1.b.x, u_input.c.x)), vec3<u32>(u_input.c.x, 1u, var_0) | abs(var_1.d))));
}

fn func_6(arg_0: Struct_1) -> Struct_3 {
    let var_0 = ~min(~(~(vec2<u32>(arg_0.d.x, u_input.a) ^ vec2<u32>(3083u, u_input.b))), vec2<u32>(u_input.b, 4444u));
    global1 = array<Struct_1, 11>();
    global0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1223f))));
    let var_1 = Struct_3(_wgslsmith_sub_vec4_u32(abs(vec4<u32>(~25146u, ~arg_0.b.x, 4294967295u, abs(4294967295u))), (_wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.x, u_input.b, 42072u, 1u), vec4<u32>(arg_0.b.x, 0u, 0u, 82239u), vec4<u32>(30860u, 0u, var_0.x, 4294967295u)) << (~vec4<u32>(var_0.x, 1u, arg_0.d.x, arg_0.d.x) % vec4<u32>(32u))) ^ firstLeadingBit(vec4<u32>(17670u, 4294967295u, u_input.a, u_input.a) << (vec4<u32>(arg_0.d.x, 9667u, 29203u, var_0.x) % vec4<u32>(32u)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(488f - -213f) * _wgslsmith_f_op_f32(f32(-1f) * -1578f)), -655f) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-929f, 1000f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(283f, 1000f), vec2<f32>(565f, 1458f)))))), arg_0.a.wxw, u_input.b);
    global1 = array<Struct_1, 11>();
    return Struct_3(_wgslsmith_mult_vec4_u32(abs(~firstLeadingBit(vec4<u32>(var_0.x, u_input.c.x, 4294967295u, arg_0.b.x))), var_1.a), var_1.b, func_2(true, vec2<f32>(var_1.b.x, var_1.b.x), global1[_wgslsmith_index_u32(~79553u, 11u)]).a.yww, var_1.d);
}

fn func_7(arg_0: Struct_3, arg_1: vec3<u32>) -> StorageBuffer {
    var var_0 = arg_0;
    var_0 = Struct_3(~_wgslsmith_sub_vec4_u32(var_0.a, vec4<u32>(83811u, func_1().d.x, 26460u, var_0.d)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(282f * 1167f)))), _wgslsmith_f_op_f32(func_6(Struct_1(vec4<bool>(true, arg_0.c.x, true, arg_0.c.x), var_0.a.xy, vec4<i32>(0i, 27618i, 0i, 66149i), vec3<u32>(0u, 1u, 0u))).b.x * arg_0.b.x)), vec3<bool>(true, !(!all(vec2<bool>(arg_0.c.x, true))), arg_0.c.x), var_0.a.x);
    let var_1 = func_1();
    var_0 = func_6(Struct_1(!(!vec4<bool>(var_1.a.x, var_1.a.x, arg_0.c.x, false)), vec2<u32>(func_2(true, _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-461f, -962f), vec2<f32>(-773f, 307f))), Struct_1(var_1.a, vec2<u32>(arg_0.a.x, u_input.c.x), vec4<i32>(var_1.c.x, var_1.c.x, var_1.c.x, -1i), vec3<u32>(var_1.b.x, arg_1.x, var_0.a.x))).d.x, 32801u), ~func_1().c, arg_0.a.xwz));
    var var_2 = Struct_1(var_1.a, max(~_wgslsmith_sub_vec2_u32(vec2<u32>(arg_1.x, 5290u), max(u_input.c, u_input.c)), arg_1.yz), vec4<i32>(reverseBits(-55836i), ~(-_wgslsmith_mod_i32(var_1.c.x, -57790i)), var_1.c.x, -31461i), arg_1);
    return StorageBuffer(_wgslsmith_f_op_vec2_f32(arg_0.b * _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(arg_0.b.x, 300f), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.b.x, -1097f) + arg_0.b)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !any(vec3<bool>(true, true, true));
    global1 = array<Struct_1, 11>();
    let var_1 = global1[_wgslsmith_index_u32(u_input.c.x, 11u)];
    global1 = array<Struct_1, 11>();
    let var_2 = vec4<u32>(var_1.d.x, _wgslsmith_dot_vec3_u32(abs(var_1.d), ~vec3<u32>(u_input.b, 28044u, u_input.b)) >> (_wgslsmith_clamp_u32(0u | var_1.b.x, u_input.a, u_input.a) % 32u), 4294967295u, _wgslsmith_div_u32(u_input.a, abs(4294967295u)));
    let x = u_input.a;
    s_output = func_7(func_6(func_1()), ~(~var_2.zwy));
}

