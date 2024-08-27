struct Struct_1 {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec3<bool>,
    d: vec2<f32>,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: vec3<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<i32>,
    c: i32,
    d: vec2<bool>,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 26> = array<i32, 26>(i32(-2147483648), -42648i, -10098i, 1i, 0i, 16799i, -24088i, 46045i, -1i, -1i, -48794i, 1179i, 0i, i32(-2147483648), -13366i, 14452i, i32(-2147483648), -16535i, -1i, 2147483647i, -9769i, 2147483647i, i32(-2147483648), 2147483647i, 34083i, 2147483647i);

var<private> global1: Struct_2;

var<private> global2: array<vec2<u32>, 28>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_3, arg_1: vec3<u32>) -> vec4<f32> {
    global1 = Struct_2(Struct_1(global1.a.a, vec2<u32>(arg_1.x, _wgslsmith_mod_u32(abs(arg_0.a.b.x), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.x, arg_0.a.b.x, 1u, 37170u), global1.b))), select(select(vec3<bool>(false, arg_0.d.x, false), vec3<bool>(arg_0.d.x, false, false), vec3<bool>(arg_0.d.x, arg_0.a.c.x, global1.d.c.x)), arg_0.a.c, !arg_0.d.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(arg_0.a.d, global1.a.d, vec2<bool>(false, arg_0.a.c.x))), vec2<f32>(-1000f, global1.d.e))), _wgslsmith_f_op_f32(min(-339f, _wgslsmith_f_op_f32(-276f + _wgslsmith_div_f32(arg_0.a.e, -297f))))), global1.b, global1.c, Struct_1(vec3<i32>(u_input.b, -_wgslsmith_mult_i32(-43707i, arg_0.c), ~(i32(-1i) * -2147483647i)), ~abs(min(vec2<u32>(36230u, 103345u), vec2<u32>(arg_0.a.b.x, arg_0.a.b.x))), vec3<bool>(false, !(u_input.c >= u_input.c), 1u < ~arg_1.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-886f, 656f) + vec2<f32>(global1.c.x, 106f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1113f, 1000f))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(946f, arg_0.a.e)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a.e, arg_0.a.e)))), -487f));
    global2 = array<vec2<u32>, 28>();
    let var_0 = firstTrailingBit(~(-(~vec3<i32>(0i, global0[_wgslsmith_index_u32(4294967295u, 26u)], 2147483647i))));
    global1 = Struct_2(Struct_1(arg_0.a.a, countOneBits(~global2[_wgslsmith_index_u32(arg_0.a.b.x | 30492u, 28u)]), !arg_0.a.c, vec2<f32>(1000f, _wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(abs(global1.c.x))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_0.a.e * _wgslsmith_div_f32(-718f, global1.c.x))))), ~max(global1.b, global1.b), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(abs(global1.c)))), global1.a);
    global2 = array<vec2<u32>, 28>();
    return _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(536f)), global1.d.d.x, -581f, _wgslsmith_f_op_f32(max(-305f, global1.d.d.x))) * vec4<f32>(-318f, _wgslsmith_f_op_f32(step(arg_0.a.e, -464f)), 581f, 1304f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-arg_0.a.d.x), _wgslsmith_f_op_f32(-global1.d.e), _wgslsmith_div_f32(arg_0.a.e, -2258f))), true)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_0.a.d.x, arg_0.a.e, arg_0.a.d.x, -749f), vec4<f32>(114f, arg_0.a.d.x, arg_0.a.d.x, global1.d.d.x)))) + vec4<f32>(_wgslsmith_div_f32(637f, global1.d.e), arg_0.a.e, _wgslsmith_f_op_f32(step(global1.c.x, arg_0.a.d.x)), _wgslsmith_f_op_f32(-global1.c.x))))));
}

fn func_4(arg_0: Struct_3, arg_1: f32, arg_2: vec4<f32>, arg_3: vec4<f32>) -> vec3<i32> {
    let var_0 = select(global1.a.c.yz, !select(vec2<bool>(!global1.a.c.x, any(arg_0.a.c)), vec2<bool>(true, true), arg_0.d), 682f < arg_3.x);
    var var_1 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~select(max(vec2<u32>(0u, global1.b.x), global2[_wgslsmith_index_u32(~1u, 28u)]), firstTrailingBit(~vec2<u32>(9838u, 22021u)), select(!global1.a.c.x, true, false)), global2[_wgslsmith_index_u32(firstLeadingBit(4294967295u), 28u)]), 28u)];
    var var_2 = _wgslsmith_sub_i32(reverseBits(arg_0.b.x) << (0u % 32u), (i32(-1i) * -countOneBits(-2147483647i)) << (u_input.a % 32u));
    let var_3 = Struct_2(Struct_1(vec3<i32>(arg_0.c, 1i, ~0i ^ _wgslsmith_mult_i32(u_input.c, -28433i)), ~(~arg_0.a.b << (global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(617u, global1.d.b.x), 28u)] % vec2<u32>(32u))), select(global1.d.c, arg_0.a.c, vec3<bool>(global1.a.c.x, any(vec2<bool>(arg_0.a.c.x, var_0.x)), 13927i <= global1.d.a.x)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(arg_0.a.d, arg_3.xz)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(3297f, 1350f) - vec2<f32>(arg_3.x, arg_0.a.d.x))), _wgslsmith_f_op_vec2_f32(-arg_0.a.d)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(496f, arg_3.x, var_0.x))) * _wgslsmith_f_op_f32(abs(global1.a.d.x)))), _wgslsmith_sub_vec4_u32(~(global1.b << (~vec4<u32>(var_1.x, 0u, 1u, global1.b.x) % vec4<u32>(32u))), abs(min(global1.b, ~vec4<u32>(11562u, 86230u, var_1.x, u_input.a)))), _wgslsmith_f_op_vec3_f32(-global1.c), arg_0.a);
    var var_4 = vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -666f), _wgslsmith_f_op_f32(f32(-1f) * -1403f), _wgslsmith_div_f32(537f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(-549f + 261f)))));
    return (arg_0.a.a >> (global1.b.yyz % vec3<u32>(32u))) << (var_3.b.zxy % vec3<u32>(32u));
}

fn func_2(arg_0: bool, arg_1: vec3<u32>, arg_2: vec4<u32>) -> vec2<bool> {
    var var_0 = vec2<u32>(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(4294967295u, u_input.a, min(~12002u, 0u)), firstTrailingBit(_wgslsmith_sub_u32(firstTrailingBit(36388u), 1u))), 0u);
    var var_1 = vec3<i32>(_wgslsmith_dot_vec3_i32(func_4(Struct_3(global1.d, global1.d.a.zx, global0[_wgslsmith_index_u32(0u, 26u)], global1.d.c.zy), _wgslsmith_div_f32(597f, _wgslsmith_f_op_f32(global1.a.d.x - global1.c.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.a.e, global1.d.e, global1.a.d.x, global1.c.x) - _wgslsmith_f_op_vec4_f32(func_3(Struct_3(Struct_1(global1.d.a, arg_2.wx, global1.d.c, global1.d.d, global1.d.d.x), global1.a.a.zx, 63366i, global1.a.c.yy), arg_2.wyz))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.c.x, -1424f, -1511f, 1706f) + vec4<f32>(-341f, -1052f, 1204f, -1296f)))), reverseBits(vec3<i32>(-28700i, u_input.b, ~1i))), (i32(-1i) * -14908i) << (_wgslsmith_dot_vec2_u32(arg_2.zz, min(vec2<u32>(0u, var_0.x), global1.b.yx)) % 32u), ~(firstTrailingBit(_wgslsmith_mod_i32(27527i, global1.d.a.x)) << (1u % 32u)));
    let var_2 = Struct_2(global1.d, vec4<u32>(81002u, u_input.a, ~abs(_wgslsmith_mod_u32(39573u, 23988u)), global1.d.b.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec4_f32(func_3(Struct_3(Struct_1(vec3<i32>(-34067i, 0i, global1.d.a.x), arg_1.xy, vec3<bool>(arg_0, global1.a.c.x, global1.d.c.x), vec2<f32>(global1.a.e, -162f), 697f), -vec2<i32>(2945i, global1.a.a.x), i32(-1i) * -27735i, vec2<bool>(arg_0, arg_0)), ~_wgslsmith_sub_vec3_u32(arg_1, global1.b.yyz))).xxz), global1.a);
    let var_3 = Struct_3(Struct_1(~max(-vec3<i32>(-33358i, var_1.x, 4760i), -global1.a.a), arg_2.yw, select(!select(vec3<bool>(false, global1.d.c.x, arg_0), vec3<bool>(false, var_2.d.c.x, true), global1.a.c), vec3<bool>(true, var_2.d.c.x, true), -686f > _wgslsmith_f_op_f32(-var_2.c.x)), vec2<f32>(global1.a.e, _wgslsmith_f_op_f32(var_2.a.d.x + global1.d.d.x)), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(global1.d.e)), _wgslsmith_f_op_f32(var_2.c.x * 419f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_3(Struct_3(var_2.a, vec2<i32>(global1.a.a.x, u_input.b), -2147483647i, global1.d.c.zx), vec3<u32>(16693u, var_0.x, 30341u))).x - _wgslsmith_f_op_f32(trunc(-453f))))), ~(-select(vec2<i32>(global0[_wgslsmith_index_u32(arg_2.x, 26u)], u_input.b), _wgslsmith_clamp_vec2_i32(global1.a.a.yx, vec2<i32>(var_2.d.a.x, global1.a.a.x), global1.a.a.yy), true)), -_wgslsmith_mod_i32(~(-15538i), firstLeadingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(global1.b.x, 26u)], u_input.b, var_1.x), vec3<i32>(-33113i, -2147483647i, global0[_wgslsmith_index_u32(4294967295u, 26u)])))), vec2<bool>(firstLeadingBit(reverseBits(1u)) != ~(arg_2.x & arg_1.x), all(select(select(vec4<bool>(var_2.d.c.x, arg_0, arg_0, arg_0), vec4<bool>(var_2.d.c.x, true, false, var_2.a.c.x), var_2.a.c.x), !vec4<bool>(false, var_2.d.c.x, var_2.a.c.x, false), arg_0 | arg_0))));
    var var_4 = var_3.a;
    return !var_4.c.xx;
}

fn func_1(arg_0: Struct_3, arg_1: bool) -> i32 {
    var var_0 = func_2(!global1.d.c.x, ~(~(~_wgslsmith_div_vec3_u32(global1.b.xyw, vec3<u32>(4294967295u, 1u, global1.b.x)))), global1.b);
    global1 = Struct_2(arg_0.a, ~vec4<u32>(0u, arg_0.a.b.x, abs(min(119059u, 4294967295u)), 1u), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.c.x - arg_0.a.e), _wgslsmith_f_op_f32(max(194f, arg_0.a.d.x))) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(534f, -269f))), 713f, -299f), Struct_1(arg_0.a.a, abs(firstTrailingBit(~global1.d.b)), select(select(vec3<bool>(false, true, var_0.x), !arg_0.a.c, select(arg_0.a.c, vec3<bool>(false, arg_1, global1.d.c.x), true)), select(select(global1.d.c, arg_0.a.c, var_0.x), select(vec3<bool>(global1.a.c.x, true, false), vec3<bool>(global1.a.c.x, global1.d.c.x, false), arg_0.a.c.x), true), all(select(global1.a.c.zx, global1.a.c.yx, var_0.x))), vec2<f32>(arg_0.a.d.x, 876f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_0.a.e)))))));
    var var_1 = Struct_2(Struct_1(arg_0.a.a, _wgslsmith_sub_vec2_u32(arg_0.a.b, _wgslsmith_mod_vec2_u32(countOneBits(vec2<u32>(114027u, 1u)), ~vec2<u32>(global1.b.x, 4294967295u))), arg_0.a.c, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global1.a.d)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-685f * -885f))), vec4<u32>(4294967295u, global1.b.x, arg_0.a.b.x, 1u), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-247f, arg_0.a.d.x, -509f))), Struct_1(_wgslsmith_mod_vec3_i32(arg_0.a.a, select(vec3<i32>(u_input.c, arg_0.b.x, 0i), vec3<i32>(-55028i, 0i, arg_0.b.x), global1.d.c)) >> (vec3<u32>(~u_input.a, ~4294967295u, 0u) % vec3<u32>(32u)), (~vec2<u32>(4294967295u, 62795u) ^ _wgslsmith_mult_vec2_u32(global1.d.b, vec2<u32>(arg_0.a.b.x, 1u))) >> (global2[_wgslsmith_index_u32(arg_0.a.b.x, 28u)] % vec2<u32>(32u)), !global1.d.c, vec2<f32>(-1463f, global1.a.e), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-482f - _wgslsmith_f_op_f32(max(-564f, 2182f))) - global1.c.x)));
    global2 = array<vec2<u32>, 28>();
    var var_2 = Struct_2(arg_0.a, max(select(~var_1.b, vec4<u32>(~arg_0.a.b.x, 4294967295u, 4294967295u, ~global1.d.b.x), !select(vec4<bool>(false, var_1.d.c.x, true, arg_1), vec4<bool>(arg_0.a.c.x, true, false, var_1.d.c.x), var_1.d.c.x)), firstLeadingBit(var_1.b)), vec3<f32>(_wgslsmith_div_f32(var_1.d.d.x, _wgslsmith_f_op_f32(-1425f - 1000f)), global1.d.e, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-330f)) * _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(179f, global1.a.d.x), _wgslsmith_f_op_f32(max(arg_0.a.e, global1.a.d.x)))))), Struct_1(global1.a.a, global1.b.wy & _wgslsmith_div_vec2_u32(reverseBits(global2[_wgslsmith_index_u32(4294967295u, 28u)]), vec2<u32>(4294967295u, 1u)), vec3<bool>(false, global1.d.b.x != _wgslsmith_mult_u32(21923u, global1.a.b.x), false), _wgslsmith_f_op_vec2_f32(global1.c.zy - _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(round(var_1.d.d))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(931f * arg_0.a.e)))));
    return -(~_wgslsmith_div_i32(-u_input.c, _wgslsmith_div_i32(arg_0.b.x, -1i)) >> (_wgslsmith_dot_vec3_u32(var_1.b.yxz, vec3<u32>(min(11053u, 0u), ~1u, 8128u)) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    let var_1 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(657f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-993f)) - _wgslsmith_f_op_f32(round(-285f))))), _wgslsmith_f_op_f32(-global1.a.d.x)), _wgslsmith_f_op_f32(global1.a.d.x - -541f));
    let var_2 = Struct_1(vec3<i32>(global0[_wgslsmith_index_u32(global1.b.x, 26u)], select(reverseBits(global1.a.a.x), u_input.b >> (global1.a.b.x % 32u), global1.d.c.x), reverseBits(23446i) & func_1(Struct_3(global1.a, vec2<i32>(global0[_wgslsmith_index_u32(u_input.a, 26u)], global0[_wgslsmith_index_u32(3812u, 26u)]), global0[_wgslsmith_index_u32(60791u, 26u)], vec2<bool>(false, false)), true)) >> (select(global1.b.xzy, vec3<u32>(38438u ^ global1.d.b.x, countOneBits(global1.b.x), ~4294967295u), vec3<bool>(false, var_0, var_0)) % vec3<u32>(32u)), ~vec2<u32>(_wgslsmith_mod_u32(56479u, global1.b.x) << (_wgslsmith_dot_vec3_u32(global1.b.xyy, vec3<u32>(global1.d.b.x, 37267u, u_input.a)) % 32u), 1u), select(select(!(!global1.d.c), !vec3<bool>(var_0, var_0, true), false), !vec3<bool>(func_2(var_0, vec3<u32>(u_input.a, u_input.a, 4294967295u), global1.b).x, false, any(global1.d.c)), !vec3<bool>(true, var_0 == var_0, all(vec4<bool>(var_0, global1.d.c.x, true, true)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, _wgslsmith_f_op_f32(select(global1.a.e, var_1.x, -170f > global1.c.x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-955f, 651f) + _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(global1.d.d.x, var_1.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x - -1098f))));
    let var_3 = -abs(-vec3<i32>(reverseBits(global0[_wgslsmith_index_u32(49425u, 26u)]), firstTrailingBit(68212i), -117i));
    let var_4 = true;
    let var_5 = -24160i;
    var var_6 = _wgslsmith_f_op_vec2_f32(var_2.d * _wgslsmith_div_vec2_f32(vec2<f32>(global1.d.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_1.x, -1000f)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(global1.a.e, _wgslsmith_f_op_f32(global1.c.x + var_2.d.x)) + _wgslsmith_f_op_vec2_f32(global1.a.d - vec2<f32>(global1.a.d.x, -1508f)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(var_5, var_5), global1.b);
}

