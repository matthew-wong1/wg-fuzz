struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: f32,
    b: u32,
    c: bool,
    d: vec4<bool>,
    e: vec3<u32>,
}

struct Struct_3 {
    a: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec4<u32>,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: f32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(163f, 546f, 519f);

var<private> global1: bool = false;

var<private> global2: Struct_1 = Struct_1(1042f);

var<private> global3: u32;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> vec2<bool> {
    var var_0 = select(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, all(vec2<bool>(true, false)), any(vec4<bool>(true, true, true, true))), select(select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, true)), select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, true)), true)), vec4<bool>(any(vec3<bool>(false, true, true)), (_wgslsmith_add_i32(23661i, -42134i) & u_input.e.x) >= 2147483647i, all(vec3<bool>(true, true, true)), true), all(!vec2<bool>(true, any(vec3<bool>(false, true, false)))));
    var var_1 = ~(-46684i);
    var var_2 = abs(abs(_wgslsmith_add_vec2_i32(_wgslsmith_div_vec2_i32(countOneBits(u_input.e), abs(u_input.e)), vec2<i32>(120661i, 51881i))));
    return select(!vec2<bool>(var_0.x || all(vec2<bool>(var_0.x, true)), global0.x <= global0.x), !select(!var_0.yw, vec2<bool>(var_0.x, select(var_0.x, var_0.x, var_0.x)), vec2<bool>(true, 172f <= global0.x)), !(!vec2<bool>(false, global2.a == global0.x)));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: bool) -> f32 {
    var var_0 = Struct_2(_wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(1f * -779f)), ~_wgslsmith_mult_u32(4294967295u, firstTrailingBit(4294967295u) >> (u_input.a.x % 32u)), arg_2, vec4<bool>(true, all(arg_1) && false, true, select(arg_2, _wgslsmith_add_i32(u_input.e.x, 1i) == (u_input.e.x & 20570i), !arg_1.x)), u_input.a.xyx);
    var var_1 = -_wgslsmith_mod_i32(-_wgslsmith_add_i32(-2147483647i >> (var_0.e.x % 32u), firstLeadingBit(1i)), u_input.e.x);
    global2 = arg_0;
    let var_2 = global0.xx;
    return -150f;
}

fn func_2() -> u32 {
    global0 = vec3<f32>(_wgslsmith_f_op_f32(func_4(Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_div_f32(global2.a, -1000f))), vec2<bool>(true, (0i != u_input.e.x) | true), any(func_3()))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(global0.x)))))), -274f)), _wgslsmith_f_op_f32(ceil(global0.x)));
    let var_0 = _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(global2.a, _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(498f, 562f))), false)), _wgslsmith_f_op_f32(408f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -281f)))), global0.x);
    return ~u_input.a.x & u_input.a.x;
}

fn func_5(arg_0: u32, arg_1: u32, arg_2: vec4<i32>, arg_3: Struct_3) -> Struct_1 {
    let var_0 = arg_2.x;
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-2304f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(405f)), -180f), 1f) * _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(684f, global0.x, global0.x)))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.a, global0.x, 984f))))))));
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) - _wgslsmith_f_op_f32(func_4(Struct_1(global2.a), vec2<bool>(true, true), all(select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true)))))));
}

fn func_1(arg_0: Struct_3, arg_1: vec4<f32>) -> vec3<bool> {
    global2 = Struct_1(_wgslsmith_f_op_f32(114f + global0.x));
    let var_0 = ~vec3<u32>(0u, _wgslsmith_mod_u32(select(u_input.a.x << (arg_0.a % 32u), 1u, false), 1u), _wgslsmith_mult_u32(u_input.a.x, ~firstTrailingBit(0u)));
    let var_1 = func_5(var_0.x, _wgslsmith_dot_vec2_u32(var_0.yz, ~var_0.yz) ^ _wgslsmith_mod_u32(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(arg_0.a, 4294967295u, var_0.x), ~var_0.x), func_2() << (~0u % 32u)), vec4<i32>(-2147483647i, 2147483647i, -(~(-13516i)), u_input.e.x), Struct_3(_wgslsmith_sub_u32(max(abs(1u), 4294967295u), _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.a, u_input.a.x, arg_0.a), u_input.c.yzx))));
    global1 = !(!(!any(vec3<bool>(true, true, true))));
    var var_2 = vec3<u32>(var_0.x, u_input.a.x, u_input.d) ^ (_wgslsmith_div_vec3_u32(~vec3<u32>(0u, 23441u, 48307u), var_0 >> (min(u_input.a.zww, u_input.c.zwy) % vec3<u32>(32u))) & vec3<u32>(countOneBits(~u_input.b), _wgslsmith_dot_vec2_u32(max(vec2<u32>(4294967295u, var_0.x), var_0.xz), vec2<u32>(31605u, u_input.d)), ~abs(var_0.x)));
    return vec3<bool>(false, func_3().x == true, true);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = false | all(select(func_1(Struct_3(u_input.b), _wgslsmith_f_op_vec4_f32(vec4<f32>(359f, 1549f, global0.x, -629f) * vec4<f32>(global2.a, 699f, 1002f, global2.a))), vec3<bool>(true, true, true), true));
    var var_0 = any(!(!func_3()));
    var var_1 = select(vec4<bool>(!(global2.a >= global2.a) && !select(true, false, false), true, _wgslsmith_add_u32(~u_input.a.x, u_input.b) > (_wgslsmith_clamp_u32(u_input.c.x, 1u, 4294967295u) << (1u % 32u)), !func_3().x), vec4<bool>(all(!select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, false))), -2147483647i != u_input.e.x, any(vec3<bool>(true, true, true)), false), select(!select(select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, true), false), vec4<bool>(true, true, true, true), u_input.e.x != u_input.e.x), vec4<bool>(_wgslsmith_mult_u32(50215u, u_input.c.x) > u_input.c.x, true, any(vec2<bool>(true, true)), true), !(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false)))));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(vec4<f32>(-1052f, 1108f, global0.x, 621f), vec4<f32>(460f, 1491f, global0.x, -447f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1477f, global0.x, 283f, 2002f) + vec4<f32>(987f, global2.a, global2.a, global2.a))))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-455f, global2.a, -1272f, global0.x))), vec4<f32>(global0.x, 449f, global2.a, _wgslsmith_f_op_f32(-global0.x)), true))));
    var var_3 = Struct_2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global0.x)) - var_2.x)), -639f)), 0u, any(vec3<bool>(var_1.x & all(vec3<bool>(false, false, var_1.x)), false, true)), vec4<bool>(func_1(Struct_3(reverseBits(u_input.d)), vec4<f32>(-1772f, _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(min(701f, 792f)), _wgslsmith_f_op_f32(global0.x - 426f))).x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_2.x))) > var_2.x, all(select(vec2<bool>(var_1.x, false), !var_1.zx, u_input.e.x <= u_input.e.x)), var_1.x), u_input.a.wxz);
    global1 = !var_3.d.x;
    let var_4 = 2299f;
    global2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-768f, _wgslsmith_f_op_f32(select(-115f, -562f, true))) + _wgslsmith_f_op_f32(var_4 * var_2.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global0.x, _wgslsmith_div_f32(-431f, 117f))))));
    let var_5 = Struct_2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_4) - _wgslsmith_f_op_f32(f32(-1f) * -1000f))))), 0u, select(any(var_3.d.xxw), !var_3.d.x, var_3.c), vec4<bool>(var_1.x, true, var_3.d.x, true), ~(~var_3.e));
    let x = u_input.a;
    s_output = StorageBuffer(-vec2<i32>(u_input.e.x, ~2147483647i), var_5.e, _wgslsmith_f_op_f32(select(-291f, var_2.x, true)), var_2.xy);
}

