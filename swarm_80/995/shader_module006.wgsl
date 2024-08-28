struct Struct_1 {
    a: vec3<f32>,
    b: i32,
    c: vec3<bool>,
    d: i32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: bool,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_1,
    c: f32,
}

struct Struct_4 {
    a: Struct_3,
    b: i32,
    c: Struct_3,
    d: vec2<bool>,
    e: u32,
}

struct Struct_5 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec4<u32>,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec2<i32>(0i, 6614i), Struct_1(vec3<f32>(1013f, 331f, 392f), -1i, vec3<bool>(true, true, false), i32(-2147483648)), true);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2(arg_0: i32, arg_1: vec2<bool>, arg_2: bool) -> Struct_3 {
    let var_0 = global0.b;
    let var_1 = ~31920u;
    global0 = Struct_2(-(max(global0.a << (u_input.b.xz % vec2<u32>(32u)), global0.a) << (abs(_wgslsmith_div_vec2_u32(u_input.b.xy, vec2<u32>(1u, u_input.c.x))) % vec2<u32>(32u))), global0.b, true);
    var var_2 = _wgslsmith_f_op_f32(global0.b.a.x * 394f);
    let var_3 = Struct_3(_wgslsmith_mod_vec3_i32(firstLeadingBit(-vec3<i32>(-34717i, global0.a.x, global0.a.x)), firstTrailingBit(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a, -1i, var_0.b), vec3<i32>(var_0.d, var_0.b, u_input.e)) >> (~vec3<u32>(var_1, u_input.c.x, u_input.c.x) % vec3<u32>(32u)))), Struct_1(vec3<f32>(var_0.a.x, _wgslsmith_f_op_f32(f32(-1f) * -1017f), global0.b.a.x), _wgslsmith_mult_i32(arg_0 << (select(0u, u_input.c.x, arg_2) % 32u), 7254i), global0.b.c, _wgslsmith_dot_vec2_i32(countOneBits(global0.a), global0.a)), -701f);
    return Struct_3(var_3.a << (countOneBits(vec3<u32>(u_input.c.x, select(u_input.d.x, 1u, var_0.c.x), ~var_1)) % vec3<u32>(32u)), global0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_0.a.x)) - _wgslsmith_f_op_f32(round(var_3.c)))))));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_3) -> vec3<f32> {
    let var_0 = arg_1.c;
    var var_1 = func_2(arg_1.a.x, !select(!arg_0.b.c.zz, vec2<bool>(select(false, true, global0.c), arg_0.c), !arg_1.b.c.x), true);
    var var_2 = Struct_4(Struct_3(vec3<i32>(select(~53845i, arg_0.a.x, true), _wgslsmith_add_i32(u_input.e, 1i), 0i & (arg_1.b.b << (u_input.d.x % 32u))), func_2(u_input.e, vec2<bool>(arg_1.a.x <= 10790i, func_2(1i, vec2<bool>(arg_1.b.c.x, false), global0.b.c.x).b.c.x), true).b, -1350f), _wgslsmith_dot_vec2_i32(arg_1.a.xy, ~(vec2<i32>(-1i) * -vec2<i32>(global0.a.x, 8095i))), func_2(13889i, func_2(_wgslsmith_mult_i32(u_input.a, 1i), var_1.b.c.yy, var_1.b.c.x).b.c.zx, arg_1.b.c.x), !vec2<bool>(true, (arg_1.b.d ^ 48881i) < ~var_1.b.d), 0u);
    var var_3 = Struct_3(var_1.a, var_2.a.b, _wgslsmith_f_op_f32(-874f + _wgslsmith_f_op_f32(-func_2(max(46835i, -7192i), global0.b.c.xz, func_2(2147483647i, arg_0.b.c.xx, global0.c).b.c.x).c)));
    let var_4 = var_2.e;
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(global0.b.a, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-669f, global0.b.a.x, var_0) * vec3<f32>(var_2.c.b.a.x, var_0, -316f)), _wgslsmith_f_op_vec3_f32(sign(global0.b.a))), arg_0.c)), _wgslsmith_f_op_vec3_f32(-arg_1.b.a), true != !(26404u < var_2.e))));
}

fn func_4(arg_0: vec3<f32>) -> vec2<bool> {
    var var_0 = Struct_4(Struct_3(_wgslsmith_mod_vec3_i32(vec3<i32>(firstTrailingBit(global0.b.b), abs(u_input.e), _wgslsmith_clamp_i32(global0.b.b, u_input.e, 1i)), vec3<i32>(0i, _wgslsmith_div_i32(2147483647i, u_input.a), _wgslsmith_dot_vec2_i32(global0.a, vec2<i32>(58099i, global0.a.x)))), global0.b, global0.b.a.x), 1i, Struct_3(select((vec3<i32>(-1i, u_input.a, u_input.e) << (vec3<u32>(1u, u_input.c.x, 0u) % vec3<u32>(32u))) >> (u_input.b % vec3<u32>(32u)), func_2(_wgslsmith_add_i32(-10525i, global0.a.x), !vec2<bool>(global0.b.c.x, false), u_input.d.x > 40340u).a, func_2(global0.a.x & 13075i, global0.b.c.zx, true).b.c), func_2(1i, global0.b.c.xy, global0.c).b, global0.b.a.x), vec2<bool>(global0.b.c.x, !all(select(vec2<bool>(global0.c, false), global0.b.c.xx, vec2<bool>(global0.c, true)))), u_input.c.x & _wgslsmith_mult_u32(4294967295u, ~(u_input.c.x << (u_input.d.x % 32u))));
    let var_1 = ~_wgslsmith_mult_u32(~(~_wgslsmith_div_u32(2061u, u_input.c.x)), select(4294967295u, firstLeadingBit(firstLeadingBit(var_0.e)), global0.c && (u_input.d.x >= 81779u)));
    var_0 = Struct_4(Struct_3(select(var_0.a.a, _wgslsmith_div_vec3_i32(var_0.a.a, vec3<i32>(var_0.a.b.b, 62426i, 1i)), var_0.c.b.c), global0.b, _wgslsmith_f_op_f32(global0.b.a.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global0.b.a.x, global0.b.a.x)) * _wgslsmith_f_op_f32(arg_0.x - var_0.a.c)))), 2147483647i, func_2(_wgslsmith_clamp_i32(1i, u_input.a, -13991i), func_2(-(i32(-1i) * -54546i), vec2<bool>(var_0.d.x, true), false).b.c.zx, _wgslsmith_div_u32(_wgslsmith_add_u32(0u, u_input.c.x), _wgslsmith_div_u32(u_input.d.x, u_input.c.x)) < abs(~52934u)), select(select(vec2<bool>(false, u_input.d.x < 1u), var_0.c.b.c.xx, true), func_2(firstLeadingBit(_wgslsmith_div_i32(var_0.c.b.d, u_input.e)), vec2<bool>(any(var_0.a.b.c), true), false).b.c.zz, !var_0.d.x), ~(~0u) ^ reverseBits(_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(17612u, var_0.e), vec2<u32>(var_0.e, var_1)), ~var_0.e)));
    let var_2 = 9445u;
    return select(vec2<bool>(true, 1000f > _wgslsmith_f_op_f32(step(913f, 1969f))), !var_0.c.b.c.yz, true);
}

fn func_5(arg_0: vec4<f32>, arg_1: Struct_5, arg_2: vec3<i32>, arg_3: vec2<bool>) -> u32 {
    global0 = Struct_2(vec2<i32>(-u_input.e >> (666u % 32u), arg_2.x), Struct_1(func_2(min(-2147483647i, -1231i), !arg_3, true).b.a, reverseBits(i32(-1i) * -33437i), global0.b.c, -24610i), (0u >> (firstLeadingBit(~u_input.d.x) % 32u)) > u_input.c.x);
    var var_0 = true;
    let var_1 = Struct_3(~(~vec3<i32>(-1i, 13595i, min(u_input.a, -34632i))), global0.b, -766f);
    global0 = Struct_2(_wgslsmith_div_vec2_i32(~(-global0.a), reverseBits(~vec2<i32>(global0.b.d, arg_2.x))), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(arg_1.a.a.x + _wgslsmith_f_op_f32(sign(510f))), _wgslsmith_f_op_f32(ceil(global0.b.a.x)), global0.b.a.x), arg_2.x, func_2(-global0.b.b, !vec2<bool>(global0.c, var_1.b.c.x), func_4(_wgslsmith_f_op_vec3_f32(trunc(arg_1.a.a))).x).b.c, 0i), false);
    var var_2 = arg_1;
    return 62345u & u_input.b.x;
}

fn func_6(arg_0: vec4<u32>, arg_1: Struct_4, arg_2: f32, arg_3: vec4<f32>) -> vec2<f32> {
    return _wgslsmith_f_op_vec3_f32(func_3(Struct_2(~global0.a, global0.b, arg_1.d.x), Struct_3(_wgslsmith_mod_vec3_i32(-_wgslsmith_mod_vec3_i32(vec3<i32>(2512i, 26676i, arg_1.c.b.d), vec3<i32>(-2147483647i, -46765i, global0.a.x)), -_wgslsmith_div_vec3_i32(vec3<i32>(-2147483647i, u_input.e, 9610i), vec3<i32>(global0.b.b, -28529i, u_input.a))), global0.b, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global0.b.a.x)))))))).yz;
}

fn func_1() -> Struct_5 {
    var var_0 = Struct_4(Struct_3(vec3<i32>(global0.b.b, u_input.a, countOneBits(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, u_input.a, 2147483647i), vec3<i32>(u_input.e, -45512i, 40563i)))), global0.b, 916f), _wgslsmith_clamp_i32(i32(-1i) * -1i, _wgslsmith_add_i32(u_input.e, global0.a.x << (18854u % 32u)), u_input.a), func_2(_wgslsmith_mod_i32(firstTrailingBit(-u_input.e), i32(-1i) * -2147483647i), select(!select(vec2<bool>(global0.b.c.x, false), global0.b.c.yy, true), !global0.b.c.zz, select(global0.c, !global0.b.c.x, !global0.b.c.x)), true), !select(!(!global0.b.c.yy), global0.b.c.zz, global0.b.c.yz), u_input.b.x);
    var var_1 = _wgslsmith_f_op_vec2_f32(func_6(vec4<u32>(~0u, func_5(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.b.a.x, var_0.a.b.a.x, global0.b.a.x, var_0.c.c) * vec4<f32>(var_0.a.b.a.x, global0.b.a.x, -443f, 1884f)))), Struct_5(Struct_1(vec3<f32>(global0.b.a.x, global0.b.a.x, var_0.c.b.a.x), global0.a.x, vec3<bool>(var_0.c.b.c.x, false, var_0.c.b.c.x), 44222i)), vec3<i32>(~u_input.e, _wgslsmith_dot_vec3_i32(var_0.a.a, vec3<i32>(1i, 24398i, -42547i)), global0.a.x), func_4(_wgslsmith_f_op_vec3_f32(func_3(Struct_2(vec2<i32>(global0.a.x, -1i), Struct_1(global0.b.a, -1i, vec3<bool>(global0.c, true, global0.c), 44573i), var_0.d.x), Struct_3(var_0.c.a, Struct_1(global0.b.a, var_0.b, var_0.a.b.c, var_0.b), -666f))))), u_input.b.x, var_0.e & _wgslsmith_sub_u32(4294967295u >> (var_0.e % 32u), 33502u)), Struct_4(Struct_3(var_0.c.a, Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(621f, var_0.a.b.a.x, var_0.a.c) * vec3<f32>(-388f, var_0.c.c, 1049f)), ~(-17345i), func_2(global0.a.x, var_0.a.b.c.yz, var_0.d.x).b.c, -7508i), func_2(global0.b.d, vec2<bool>(true, var_0.d.x), global0.b.c.x).c), 1i, var_0.c, global0.b.c.zx, _wgslsmith_sub_u32(var_0.e, u_input.d.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.c.b.a.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.b.a.x, 1000f, var_0.c.c, var_0.c.b.a.x)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.b.a.x, var_0.c.c, 818f, 1041f) * vec4<f32>(-250f, var_0.a.c, var_0.a.b.a.x, -894f))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.b.a.x, var_0.c.b.a.x, 1303f, -509f) + vec4<f32>(-421f, -1025f, -509f, -692f)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(2527f, global0.b.a.x, 652f, -518f))))), select(var_0.d.x, false || var_0.a.b.c.x, global0.b.c.x == var_0.d.x))))));
    var var_2 = var_0.e;
    return Struct_5(func_2(1i, select(!vec2<bool>(global0.b.c.x, true), vec2<bool>(var_0.e > 4294967295u, global0.b.c.x & var_0.d.x), true), var_0.c.b.c.x).b);
}

fn func_7(arg_0: vec4<u32>, arg_1: Struct_5, arg_2: Struct_4) -> Struct_2 {
    let var_0 = all(vec2<bool>(false, !global0.b.c.x));
    let var_1 = _wgslsmith_mult_u32(1u, arg_0.x);
    global0 = Struct_2(vec2<i32>(4262i, arg_2.c.b.d), global0.b, var_0);
    return Struct_2(-vec2<i32>(_wgslsmith_add_i32(arg_2.c.a.x, 0i), -2680i) >> (max(countOneBits(abs(arg_0.wx)), _wgslsmith_clamp_vec2_u32(u_input.c.yw, ~u_input.b.xz, abs(vec2<u32>(arg_0.x, 4294967295u)))) % vec2<u32>(32u)), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(596f - _wgslsmith_f_op_f32(474f - global0.b.a.x)), 406f, arg_2.c.b.a.x), _wgslsmith_div_i32(_wgslsmith_mult_i32(-55386i, 27180i & arg_2.c.a.x), -6880i), arg_1.a.c, _wgslsmith_sub_i32(1532i, _wgslsmith_mod_i32(global0.b.d << (var_1 % 32u), arg_1.a.b))), !var_0);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_2(vec2<i32>(global0.a.x & ~global0.a.x, _wgslsmith_mod_i32(min(global0.a.x, _wgslsmith_div_i32(-2147483647i, 2147483647i)), -u_input.a)), global0.b, ~(~u_input.b.x) == u_input.c.x);
    let var_0 = vec2<f32>(1370f, _wgslsmith_f_op_f32(global0.b.a.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b.a.x))));
    let var_1 = ~(~u_input.c.xxy);
    global0 = func_7(~u_input.c, func_1(), Struct_4(Struct_3(vec3<i32>(global0.a.x, -2147483647i, u_input.a) << (_wgslsmith_mod_vec3_u32(u_input.c.yww, vec3<u32>(9958u, 51642u, u_input.c.x)) % vec3<u32>(32u)), global0.b, _wgslsmith_f_op_f32(trunc(global0.b.a.x))), -21898i, func_2(u_input.a, select(vec2<bool>(global0.b.c.x, false), vec2<bool>(global0.c, global0.b.c.x), true), global0.c), global0.b.c.zy, _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, 10171u), var_1.zy) >> ((var_1.zy ^ vec2<u32>(56u, 1u)) % vec2<u32>(32u)), ~vec2<u32>(u_input.d.x, u_input.c.x))));
    global0 = Struct_2(_wgslsmith_add_vec2_i32(vec2<i32>(func_7(u_input.c, func_1(), Struct_4(Struct_3(vec3<i32>(u_input.e, global0.b.d, u_input.e), global0.b, 552f), -1i, Struct_3(vec3<i32>(-2147483647i, -62560i, 476i), Struct_1(global0.b.a, u_input.a, vec3<bool>(global0.b.c.x, true, false), u_input.a), -731f), vec2<bool>(global0.b.c.x, global0.b.c.x), 35652u)).b.b, _wgslsmith_mod_i32(6825i, max(-59808i, -1i))), func_7(vec4<u32>(_wgslsmith_mult_u32(var_1.x, 1u), 0u, _wgslsmith_mult_u32(var_1.x, 0u), ~0u), Struct_5(global0.b), Struct_4(func_2(u_input.a, global0.b.c.xx, global0.c), 0i, Struct_3(vec3<i32>(u_input.a, -2147483647i, -1i), global0.b, var_0.x), global0.b.c.yy, 4294967295u)).a), func_7(vec4<u32>(112861u, ~1u, 10101u, 32360u), Struct_5(Struct_1(_wgslsmith_div_vec3_f32(global0.b.a, global0.b.a), global0.b.b, global0.b.c, global0.a.x)), Struct_4(func_2(_wgslsmith_mult_i32(global0.a.x, global0.a.x), !vec2<bool>(global0.b.c.x, false), global0.c), global0.a.x, Struct_3(vec3<i32>(global0.a.x, -1i, -6379i) << (u_input.d % vec3<u32>(32u)), func_7(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 40013u), Struct_5(global0.b), Struct_4(Struct_3(vec3<i32>(59280i, 1i, u_input.a), global0.b, var_0.x), u_input.a, Struct_3(vec3<i32>(-1i, u_input.a, 47276i), Struct_1(global0.b.a, 3510i, vec3<bool>(global0.b.c.x, true, global0.c), 8943i), global0.b.a.x), global0.b.c.yy, 4294967295u)).b, _wgslsmith_f_op_f32(global0.b.a.x * 149f)), !global0.b.c.yz, ~u_input.b.x)).b, true);
    let x = u_input.a;
    s_output = StorageBuffer(19038u >> (~var_1.x % 32u), ~_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(var_1.yz, var_1.yx), vec2<u32>(24767u, u_input.c.x) << (vec2<u32>(var_1.x, 38926u) % vec2<u32>(32u))), var_1.zy), func_1().a.d);
}

