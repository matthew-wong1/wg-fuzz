struct Struct_1 {
    a: bool,
    b: vec4<bool>,
    c: vec4<i32>,
    d: vec3<f32>,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec3<u32>, 5>;

var<private> global2: vec2<i32> = vec2<i32>(-2429i, 17479i);

var<private> global3: Struct_1;

var<private> global4: Struct_1 = Struct_1(false, vec4<bool>(false, true, true, true), vec4<i32>(2147483647i, -14592i, -46654i, 2147483647i), vec3<f32>(-1443f, 593f, -1830f), 86220i);

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: vec3<i32>, arg_1: vec4<bool>, arg_2: u32, arg_3: f32) -> vec3<f32> {
    var var_0 = vec4<f32>(global4.d.x, -130f, _wgslsmith_f_op_f32(-global0.d.x), 1111f);
    var_0 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(-167f, _wgslsmith_f_op_f32(max(-308f, global0.d.x)), _wgslsmith_f_op_f32(-global4.d.x), 2631f) * _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-633f, -615f, global4.d.x, global3.d.x))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global3.d.x, 349f, arg_3, -1472f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, 330f, -640f, 198f)))) * _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1422f, 540f, 483f, global3.d.x) * vec4<f32>(-373f, -829f, -225f, -1436f)))))))));
    var var_1 = (global4.d.x != -596f) & false;
    global0 = Struct_1(global0.a, vec4<bool>(any(vec4<bool>(any(global0.b.zzx), true, true, false)), true, true, true), _wgslsmith_add_vec4_i32(vec4<i32>(-(i32(-1i) * -1i), (1i >> (0u % 32u)) >> (firstTrailingBit(arg_2) % 32u), 45031i, ~global3.c.x), _wgslsmith_div_vec4_i32(global4.c >> (vec4<u32>(arg_2, 1u, 31818u, 4294967295u) % vec4<u32>(32u)), _wgslsmith_clamp_vec4_i32(global0.c, global4.c, global3.c)) & firstLeadingBit(countOneBits(vec4<i32>(-14369i, 0i, global2.x, 32418i)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1080f, 1218f, global0.d.x) - global3.d) + _wgslsmith_f_op_vec3_f32(vec3<f32>(global4.d.x, 1000f, var_0.x) * global4.d)) - vec3<f32>(_wgslsmith_div_f32(arg_3, -1122f), -739f, _wgslsmith_f_op_f32(-global0.d.x))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(501f, global0.d.x, var_0.x))))), global4.c.x);
    global1 = array<vec3<u32>, 5>();
    return _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(var_0.wyx)), _wgslsmith_f_op_vec3_f32(-var_0.xzz), _wgslsmith_f_op_f32(-var_0.x) > _wgslsmith_f_op_f32(global0.d.x - _wgslsmith_f_op_f32(select(-959f, _wgslsmith_f_op_f32(-arg_3), global3.b.x)))));
}

fn func_2() -> f32 {
    let var_0 = Struct_1(!(!global0.a), vec4<bool>(global3.a, global0.b.x & global0.b.x, false, global4.a), ~_wgslsmith_mod_vec4_i32(~firstLeadingBit(vec4<i32>(global0.c.x, 0i, 62i, global2.x)), _wgslsmith_sub_vec4_i32(vec4<i32>(global3.e, global0.c.x, 1i, global4.c.x), -vec4<i32>(-5895i, u_input.c.x, 18074i, u_input.c.x))), global3.d, global4.e);
    let var_1 = var_0.c.wx ^ vec2<i32>(26503i, _wgslsmith_dot_vec4_i32(countOneBits(u_input.c), ~var_0.c));
    let var_2 = Struct_1(!var_0.a, vec4<bool>(true, select(any(select(vec3<bool>(true, var_0.a, global4.a), vec3<bool>(true, true, false), true)), all(!global3.b.xx), global3.b.x | global4.b.x), false, select(global0.a, global0.b.x, global4.a)), countOneBits(~(-(global3.c >> (vec4<u32>(u_input.b, u_input.b, 7618u, 95934u) % vec4<u32>(32u))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(global0.d, _wgslsmith_f_op_vec3_f32(var_0.d * vec3<f32>(470f, global3.d.x, 636f)), global4.b.xwy)), _wgslsmith_f_op_vec3_f32(func_3(global0.c.wzx ^ vec3<i32>(-16161i, -2147483647i, 1i), !var_0.b, abs(u_input.b), global4.d.x)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.d + _wgslsmith_f_op_vec3_f32(-global3.d)) - global0.d)), countOneBits(countOneBits(~countOneBits(1i))));
    global3 = Struct_1(var_0.b.x, vec4<bool>(true, var_2.a, var_2.b.x, global4.a || select(true, -701f >= global0.d.x, !global0.b.x)), select(var_0.c, var_2.c, var_2.c.x <= u_input.a), _wgslsmith_f_op_vec3_f32(-var_2.d), reverseBits(abs(_wgslsmith_add_i32(var_0.e | global0.e, -7840i))));
    let var_3 = countOneBits(select(vec2<u32>(25973u, 4294967295u), vec2<u32>(select(72350u, ~14487u, !global4.a), ~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.b), vec2<u32>(u_input.b, u_input.b))), _wgslsmith_f_op_f32(var_2.d.x * _wgslsmith_f_op_f32(f32(-1f) * -1097f)) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d.x))));
    return _wgslsmith_f_op_f32(1866f - _wgslsmith_f_op_f32(global3.d.x - global3.d.x));
}

fn func_1(arg_0: Struct_1, arg_1: f32, arg_2: vec2<f32>, arg_3: Struct_1) -> Struct_1 {
    let var_0 = firstLeadingBit(90745u);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(933f, arg_2.x)) * _wgslsmith_f_op_f32(trunc(arg_1)))))));
    var var_2 = arg_0;
    return Struct_1(arg_0.b.x, var_2.b, _wgslsmith_mult_vec4_i32(vec4<i32>(reverseBits(2147483647i), _wgslsmith_dot_vec3_i32(~arg_3.c.www, u_input.c.yzx), arg_3.e, _wgslsmith_sub_i32(51758i, -arg_0.e)), global0.c), _wgslsmith_f_op_vec3_f32(select(var_2.d, arg_0.d, vec3<bool>(all(select(vec3<bool>(global3.b.x, arg_3.b.x, false), global0.b.xyx, false)), true, !(2863i >= global2.x)))), var_2.c.x);
}

fn func_4(arg_0: u32, arg_1: Struct_1) -> Struct_1 {
    let var_0 = Struct_1(true, vec4<bool>(true, global0.a, _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(global4.d.x - -195f)) == _wgslsmith_f_op_f32(select(-411f, _wgslsmith_f_op_f32(min(global3.d.x, 1259f)), false)), true), vec4<i32>(0i, global4.c.x, -29170i, -2147483647i) >> (max(vec4<u32>(arg_0, 4916u, 34745u, 0u) | ~vec4<u32>(arg_0, 1u, 72348u, 14455u), ~vec4<u32>(arg_0, u_input.b, 36642u, 4170u) >> (_wgslsmith_sub_vec4_u32(vec4<u32>(arg_0, u_input.b, arg_0, u_input.b), vec4<u32>(2803u, 1u, 19074u, arg_0)) % vec4<u32>(32u))) % vec4<u32>(32u)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -236f)), global4.d.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(global4.d.x)), -1055f)))), abs(global4.c.x));
    let var_1 = vec2<u32>(115817u, _wgslsmith_mod_u32(u_input.b, _wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(u_input.b, arg_0)), _wgslsmith_mod_vec2_u32(vec2<u32>(37003u, 1u), vec2<u32>(u_input.b, arg_0) ^ vec2<u32>(arg_0, arg_0)))));
    let var_2 = _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(firstTrailingBit(_wgslsmith_dot_vec4_i32(global4.c, global3.c)), global0.e, abs(arg_1.c.x), -1i), min(vec4<i32>(global0.c.x & -2147483647i, 53772i, arg_1.e, _wgslsmith_sub_i32(0i, u_input.c.x)), firstTrailingBit(-global0.c))), ~var_0.c);
    global4 = func_1(func_1(func_1(func_1(func_1(arg_1, var_0.d.x, global4.d.yy, var_0), global4.d.x, _wgslsmith_f_op_vec2_f32(-vec2<f32>(1134f, var_0.d.x)), func_1(Struct_1(false, vec4<bool>(false, false, global3.a, arg_1.b.x), vec4<i32>(global0.c.x, global0.e, 0i, -8920i), vec3<f32>(global3.d.x, 846f, arg_1.d.x), 88088i), arg_1.d.x, global0.d.xx, Struct_1(true, vec4<bool>(arg_1.b.x, var_0.b.x, global0.a, var_0.a), var_0.c, global4.d, var_2))), _wgslsmith_f_op_f32(883f + _wgslsmith_f_op_f32(step(-860f, global4.d.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(global0.d.xx, vec2<f32>(-591f, arg_1.d.x))), var_0), -782f, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-global3.d.x), arg_1.d.x), vec2<f32>(_wgslsmith_f_op_f32(select(-841f, -1093f, false)), global4.d.x), select(!global4.b.wz, var_0.b.yw, vec2<bool>(true, true)))), var_0), _wgslsmith_f_op_f32(-arg_1.d.x), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1523f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global0.d.x), _wgslsmith_div_f32(181f, 316f), false))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.d.x, arg_1.d.x), arg_1.d.yz, true)))), any(!var_0.b.yxx))), func_1(func_1(arg_1, _wgslsmith_f_op_f32(min(-1000f, var_0.d.x)), _wgslsmith_f_op_vec2_f32(-arg_1.d.zx), Struct_1(false, global4.b, global4.c, _wgslsmith_f_op_vec3_f32(-global3.d), u_input.c.x)), arg_1.d.x, global0.d.yz, Struct_1(false, var_0.b, min(global0.c, _wgslsmith_div_vec4_i32(global3.c, u_input.c)), vec3<f32>(_wgslsmith_f_op_f32(-arg_1.d.x), _wgslsmith_f_op_f32(step(-2238f, global4.d.x)), -1000f), ~(-61993i))));
    var var_3 = func_1(arg_1, _wgslsmith_div_f32(global4.d.x, _wgslsmith_f_op_f32(round(-333f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.d.xz)), arg_1);
    return arg_1;
}

fn func_5(arg_0: f32, arg_1: Struct_1) -> Struct_1 {
    global0 = func_4(u_input.b, Struct_1(all(global0.b.yzz), vec4<bool>(true, func_1(arg_1, _wgslsmith_f_op_f32(ceil(-2207f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.d.x, global3.d.x) - global4.d.zx), arg_1).a, global3.b.x, arg_1.b.x), select(min(vec4<i32>(-18293i, global0.c.x, -2147483647i, global3.e), arg_1.c), vec4<i32>(abs(global0.c.x), global3.c.x >> (u_input.b % 32u), global4.e, global4.e), true), _wgslsmith_f_op_vec3_f32(abs(global4.d)), ~global3.c.x & _wgslsmith_dot_vec4_i32(-vec4<i32>(arg_1.e, global0.e, -27289i, 1i), arg_1.c)));
    var var_0 = Struct_1(global3.b.x, vec4<bool>((true || (false & global4.b.x)) & (u_input.b == ~u_input.b), !func_1(func_4(53961u, arg_1), _wgslsmith_f_op_f32(arg_1.d.x * arg_0), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.d.x, -638f)), Struct_1(true, global4.b, global3.c, arg_1.d, global0.c.x)).a, !global0.a | (global3.a & (0i >= global3.c.x)), true), vec4<i32>(_wgslsmith_clamp_i32(abs(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.c.x, global0.e, global0.e, 0i), vec4<i32>(-22675i, 39527i, -1i, arg_1.c.x))), 14102i, u_input.c.x), global0.c.x, -21464i, 0i), func_1(func_4(countOneBits(1u), arg_1), _wgslsmith_f_op_f32(global4.d.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4.d.x + 1766f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global4.d.yz) + global0.d.yx), arg_1).d, global0.e);
    let var_1 = Struct_1(global3.b.x | true, select(func_1(arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4.d.x * 605f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global0.d.zx * global0.d.xz)), arg_1).b, global3.b, true), arg_1.c, _wgslsmith_f_op_vec3_f32(select(var_0.d, func_1(func_1(func_4(u_input.b, arg_1), _wgslsmith_f_op_f32(f32(-1f) * -1086f), global4.d.yy, Struct_1(true, vec4<bool>(global0.b.x, false, true, arg_1.a), u_input.c, vec3<f32>(1386f, global0.d.x, global3.d.x), global2.x)), 368f, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global0.d.zx - global3.d.zx) - _wgslsmith_div_vec2_f32(vec2<f32>(-715f, global3.d.x), var_0.d.yx)), Struct_1(global0.a, select(vec4<bool>(true, global4.b.x, false, true), global4.b, false), vec4<i32>(global0.e, 0i, 28212i, global2.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(118f, global0.d.x, global3.d.x)), -29779i)).d, func_1(Struct_1(!global4.a, global3.b, vec4<i32>(var_0.e, global0.c.x, global0.e, var_0.c.x), vec3<f32>(global0.d.x, global4.d.x, var_0.d.x), arg_1.e & -1i), func_1(arg_1, -192f, global0.d.xy, arg_1).d.x, vec2<f32>(_wgslsmith_f_op_f32(select(var_0.d.x, arg_1.d.x, var_0.b.x)), _wgslsmith_f_op_f32(select(arg_0, 2494f, global3.a))), Struct_1(func_1(arg_1, 308f, arg_1.d.zx, Struct_1(var_0.b.x, vec4<bool>(global0.a, true, global0.a, false), global4.c, arg_1.d, global3.c.x)).a, vec4<bool>(false, global0.a, global4.b.x, global0.b.x), u_input.c, arg_1.d, var_0.e)).b.zxx)), ~0i);
    var var_2 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global3.d.x, 943f, func_4(1u << (u_input.b % 32u), arg_1).d.x, 437f), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(arg_1.d.x * arg_1.d.x), _wgslsmith_f_op_f32(f32(-1f) * -654f), _wgslsmith_f_op_f32(arg_0 - 1000f), _wgslsmith_f_op_f32(exp2(global0.d.x))))), vec4<bool>(false, global3.b.x | func_1(var_1, 1271f, var_1.d.yz, Struct_1(global3.b.x, vec4<bool>(false, global4.a, arg_1.a, false), vec4<i32>(global3.e, global4.c.x, var_0.e, -18399i), vec3<f32>(var_0.d.x, var_0.d.x, global3.d.x), 31062i)).b.x, any(arg_1.b) && any(global4.b), true)))));
    var_0 = func_4(u_input.b, func_1(func_4(59028u, var_1), -937f, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(var_1.d.yz)) - func_4(~4294967295u, Struct_1(var_1.b.x, vec4<bool>(global3.b.x, false, false, true), u_input.c, var_1.d, -2147483647i)).d.xz), func_1(arg_1, _wgslsmith_f_op_f32(679f + _wgslsmith_f_op_f32(select(var_0.d.x, -1879f, global3.a))), _wgslsmith_f_op_vec2_f32(-global0.d.zy), Struct_1(any(arg_1.b), vec4<bool>(var_1.a, false, var_0.a, true), ~var_0.c, vec3<f32>(-1318f, arg_0, global4.d.x), u_input.c.x))));
    return func_4(u_input.b, func_1(var_1, _wgslsmith_f_op_vec3_f32(func_3(_wgslsmith_mod_vec3_i32(vec3<i32>(var_0.c.x, 2147483647i, 5049i), min(global3.c.zxw, vec3<i32>(4535i, global4.e, -2147483647i))), select(var_0.b, select(global0.b, var_1.b, true), true), firstLeadingBit(4294967295u), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(var_0.d.x, 1496f)))))).x, vec2<f32>(_wgslsmith_div_f32(1189f, global4.d.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-626f, var_2.x)) - arg_1.d.x)), Struct_1(select(false, var_0.b.x, false), arg_1.b, global4.c, _wgslsmith_f_op_vec3_f32(-vec3<f32>(global4.d.x, -834f, 1301f)), global4.e)));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = Struct_1(all(vec4<bool>(any(select(global0.b, vec4<bool>(global0.b.x, true, false, true), global0.b)), any(!vec4<bool>(true, global4.a, global0.b.x, global0.b.x)), ~37038i < (global2.x & global0.c.x), !global4.a)), global4.b, (vec4<i32>(u_input.c.x, 24758i, -1i, global0.e) << ((select(vec4<u32>(u_input.b, u_input.b, 4757u, u_input.b), vec4<u32>(u_input.b, u_input.b, 7600u, u_input.b), global3.b.x) << (vec4<u32>(4294967295u, 4294967295u, u_input.b, u_input.b) % vec4<u32>(32u))) % vec4<u32>(32u))) | (abs(countOneBits(u_input.c)) | vec4<i32>(0i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c.x, -11037i), vec2<i32>(-22452i, 1i)), global4.c.x, global3.e)), vec3<f32>(_wgslsmith_f_op_f32(-global0.d.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.d.x * global0.d.x)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(212f - 373f)))), 705f), -32518i);
    global4 = Struct_1(global0.b.x | global0.a, vec4<bool>(all(vec2<bool>(!global0.b.x, any(global4.b.wzx))), _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, 1u, u_input.b, u_input.b), vec4<u32>(u_input.b, u_input.b, 1u, u_input.b)), ~vec4<u32>(1u, 1u, 33932u, u_input.b)) > ~(~0u), false, true), -vec4<i32>(global2.x >> (~u_input.b % 32u), i32(-1i) * -global2.x, ~firstTrailingBit(-28982i), -57128i), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.d.x, global3.d.x, 575f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(global4.d.x, global4.d.x, global3.d.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(global4.d, global4.d))))) - global3.d), 11320i);
    let var_0 = _wgslsmith_mult_vec2_i32(global4.c.zx, ~_wgslsmith_mult_vec2_i32(vec2<i32>(_wgslsmith_mult_i32(-1i, global2.x), 7488i), vec2<i32>(reverseBits(17117i), _wgslsmith_div_i32(47305i, global0.e))));
    global0 = func_5(global4.d.x, func_4(u_input.b, func_1(Struct_1(!global4.b.x, global4.b, global4.c >> (vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b) % vec4<u32>(32u)), vec3<f32>(global4.d.x, -596f, global3.d.x), _wgslsmith_add_i32(global3.e, global3.c.x)), 965f, global4.d.yy, Struct_1(!global0.b.x, select(global3.b, vec4<bool>(false, true, true, global4.a), true), u_input.c, global0.d, -2147483647i))));
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_4(1u, Struct_1(false, vec4<bool>(false, global0.a, global3.a, global0.a), global4.c, vec3<f32>(-354f, global3.d.x, 135f), u_input.c.x)).d.xy * vec2<f32>(func_4(1u, Struct_1(false, global3.b, u_input.c, global0.d, -46673i)).d.x, _wgslsmith_f_op_f32(trunc(-1841f)))) - _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(global4.d.yz, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-381f, global3.d.x), global3.d.zx, false)))))) - vec2<f32>(852f, _wgslsmith_f_op_f32(round(285f))));
    global1 = array<vec3<u32>, 5>();
    global3 = Struct_1(true, func_5(_wgslsmith_f_op_f32(func_2()), func_5(-1407f, Struct_1(1u < u_input.b, global0.b, -vec4<i32>(35851i, 53229i, global3.c.x, -2147483647i), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global4.d.x, -551f, global0.d.x)), -1i))).b, global4.c, _wgslsmith_f_op_vec3_f32(-global3.d), -1i);
    let var_2 = _wgslsmith_mod_vec2_u32(_wgslsmith_mult_vec2_u32((select(vec2<u32>(u_input.b, 11053u), vec2<u32>(u_input.b, u_input.b), global3.b.x) << (abs(vec2<u32>(u_input.b, u_input.b)) % vec2<u32>(32u))) | ~vec2<u32>(1u, 1u), vec2<u32>(u_input.b << (u_input.b % 32u), u_input.b << (u_input.b % 32u)) >> (vec2<u32>(u_input.b, _wgslsmith_sub_u32(22430u, u_input.b)) % vec2<u32>(32u))), ~(firstLeadingBit(vec2<u32>(0u, u_input.b) & vec2<u32>(u_input.b, u_input.b)) & (vec2<u32>(u_input.b, 1u) << (~vec2<u32>(1u, 22298u) % vec2<u32>(32u)))));
    let var_3 = vec2<bool>(!func_4(abs(var_2.x) << (var_2.x % 32u), Struct_1(true, func_5(-797f, Struct_1(true, vec4<bool>(global3.a, global0.a, false, global3.b.x), vec4<i32>(global3.c.x, -35944i, global3.e, -1i), global3.d, 1i)).b, global4.c << (vec4<u32>(4294967295u, var_2.x, u_input.b, var_2.x) % vec4<u32>(32u)), _wgslsmith_f_op_vec3_f32(-global0.d), -1i)).b.x, global4.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(1i, var_0.x, _wgslsmith_mod_i32(7031i, -(global3.c.x | -2147483647i))));
}

