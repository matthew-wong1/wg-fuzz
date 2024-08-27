struct Struct_1 {
    a: vec2<bool>,
    b: vec4<i32>,
    c: vec3<u32>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: i32,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<u32>,
    c: vec4<f32>,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec3<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(Struct_1(vec2<bool>(false, true), vec4<i32>(i32(-2147483648), -24616i, 1i, 1i), vec3<u32>(10406u, 4294967295u, 59915u), 951f));

var<private> global1: Struct_1 = Struct_1(vec2<bool>(true, true), vec4<i32>(-630i, i32(-2147483648), 1i, 0i), vec3<u32>(1u, 1u, 72716u), 1687f);

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: vec4<i32>, arg_1: vec2<i32>, arg_2: u32) -> f32 {
    global0 = Struct_3(global0.a);
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(597f, global1.d)), _wgslsmith_f_op_f32(step(1045f, global1.d)))) * 1000f), 1051f)));
    var var_1 = 14478u;
    let var_2 = i32(-1i) * -44350i;
    let var_3 = Struct_4(Struct_3(global0.a), _wgslsmith_sub_vec2_u32(~firstTrailingBit(abs(vec2<u32>(u_input.c, global1.c.x))), global0.a.c.zx), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-571f, var_0, var_0, var_0), vec4<f32>(163f, global0.a.d, 197f, -1861f))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(340f, 990f, global0.a.d, global1.d) * vec4<f32>(global0.a.d, global0.a.d, -379f, 1909f)))) + vec4<f32>(594f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global0.a.d))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2039f) - _wgslsmith_f_op_f32(f32(-1f) * -1322f)), _wgslsmith_f_op_f32(-global0.a.d))), vec4<bool>(all(!vec3<bool>(global1.a.x, global0.a.a.x, global1.a.x)), true, all(global1.a), true));
    return _wgslsmith_f_op_f32(-854f * 312f);
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: vec3<i32>) -> bool {
    var var_0 = Struct_3(Struct_1(vec2<bool>(any(!global0.a.a), any(select(global0.a.a, global0.a.a, global0.a.a))), global1.b, max(vec3<u32>(_wgslsmith_sub_u32(20070u, u_input.e.x), ~global1.c.x, select(arg_1.c.x, global1.c.x, global1.a.x)), vec3<u32>(47526u, u_input.c, u_input.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2210f, -2466f)) + _wgslsmith_f_op_f32(sign(global1.d)))));
    let var_1 = Struct_2(Struct_1(select(var_0.a.a, vec2<bool>(all(vec3<bool>(global1.a.x, false, var_0.a.a.x)), arg_1.c.x < 935u), select(global0.a.a, !global1.a, any(vec4<bool>(false, global1.a.x, var_0.a.a.x, var_0.a.a.x)))), arg_1.b, ~global1.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.a.d)))), vec4<bool>(true, false, arg_1.a.x, !var_0.a.a.x), var_0.a.b.x);
    var var_2 = global1.a.x;
    var_2 = var_0.a.a.x;
    var var_3 = global1.b.x;
    return global0.a.a.x;
}

fn func_4(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: bool) -> Struct_1 {
    let var_0 = select(!select(select(vec4<bool>(true, true, true, arg_0.a.x), select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, false), arg_2), select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, arg_0.a.x, arg_2), vec4<bool>(arg_2, false, global0.a.a.x, false))), select(vec4<bool>(true, arg_2, false, true), !vec4<bool>(false, arg_2, true, global1.a.x), any(vec3<bool>(false, global0.a.a.x, true))), !select(vec4<bool>(true, global0.a.a.x, false, false), vec4<bool>(global1.a.x, false, arg_2, global0.a.a.x), vec4<bool>(arg_2, arg_2, global1.a.x, false))), vec4<bool>(true, true, true, true), arg_0.a.x);
    let var_1 = Struct_4(Struct_3(global0.a), _wgslsmith_div_vec2_u32(vec2<u32>(1u, 4294967295u & global0.a.c.x), ~firstLeadingBit(global1.c.xy)) | ~u_input.e, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global1.d, global1.d, 1174f, 529f), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global1.d, -446f, global0.a.d, arg_0.d)))))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(arg_0.d, -326f, arg_0.d, global0.a.d), vec4<f32>(global0.a.d, 425f, global1.d, arg_0.d)) + vec4<f32>(global1.d, global1.d, global1.d, global0.a.d)), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-169f, global1.d, -1262f, global0.a.d)))))), select(vec4<bool>(all(vec2<bool>(global0.a.a.x, false)), true, true, 4294967295u > arg_0.c.x), vec4<bool>(any(vec2<bool>(true, false)), func_3(vec3<f32>(-905f, global1.d, global1.d), Struct_1(arg_0.a, vec4<i32>(-20713i, global1.b.x, arg_1.x, 0i), vec3<u32>(12358u, u_input.d.x, arg_0.c.x), arg_0.d), global0.a.b.zx, global0.a.b.yzw), all(var_0), arg_0.b.x >= 2147483647i), !var_0))), !(!(!var_0)));
    var var_2 = global0.a.d;
    var var_3 = !(!vec4<bool>(false, true, true & all(var_0.xwx), global1.a.x));
    let var_4 = _wgslsmith_f_op_f32(-735f * _wgslsmith_f_op_f32(max(605f, 875f)));
    return global0.a;
}

fn func_1(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: Struct_1) -> f32 {
    global1 = func_4(arg_0, ~vec2<i32>(-11364i, arg_1.x), func_3(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global1.d))), _wgslsmith_f_op_f32(func_2(global0.a.b, vec2<i32>(2147483647i, global1.b.x), ~arg_0.c.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.d), _wgslsmith_f_op_f32(func_2(vec4<i32>(u_input.b, arg_0.b.x, 1i, 2147483647i), arg_2.b.ww, 0u)))), global0.a, vec2<i32>(arg_0.b.x, -32776i), arg_1));
    let var_0 = Struct_3(Struct_1(global1.a, ~abs(vec4<i32>(arg_0.b.x, 12954i, 50198i, 69557i)), global0.a.c, _wgslsmith_f_op_f32(f32(-1f) * -992f)));
    var var_1 = Struct_4(var_0, arg_0.c.yy, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1000f, arg_0.d, global0.a.d, 202f), vec4<f32>(var_0.a.d, -1638f, 1473f, -1000f))))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(arg_2.d * global0.a.d), 679f, global0.a.d, -850f) + _wgslsmith_f_op_vec4_f32(vec4<f32>(1021f, -192f, global1.d, 1235f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.d, var_0.a.d, -360f, arg_0.d))))), vec4<bool>(any(select(select(vec3<bool>(global0.a.a.x, arg_0.a.x, global1.a.x), vec3<bool>(arg_2.a.x, false, global0.a.a.x), vec3<bool>(true, global1.a.x, true)), !vec3<bool>(global0.a.a.x, false, false), any(vec2<bool>(global0.a.a.x, global0.a.a.x)))), arg_2.a.x & any(select(vec4<bool>(arg_0.a.x, global0.a.a.x, false, global1.a.x), vec4<bool>(global1.a.x, var_0.a.a.x, var_0.a.a.x, arg_2.a.x), vec4<bool>(true, global0.a.a.x, arg_2.a.x, global0.a.a.x))), func_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.d, global1.d, -146f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.d, var_0.a.d, 808f))), Struct_1(vec2<bool>(arg_0.a.x, true), ~vec4<i32>(31442i, -19580i, -2147483647i, -1i), vec3<u32>(arg_0.c.x, 4294967295u, 4294967295u), _wgslsmith_f_op_f32(-global1.d)), _wgslsmith_mult_vec2_i32(vec2<i32>(-1i, -2147483647i), max(vec2<i32>(arg_0.b.x, arg_1.x), vec2<i32>(2147483647i, global1.b.x))), _wgslsmith_clamp_vec3_i32(firstTrailingBit(vec3<i32>(92962i, -3121i, -2147483647i)), _wgslsmith_sub_vec3_i32(vec3<i32>(-14546i, 821i, -1i), vec3<i32>(arg_0.b.x, global1.b.x, arg_0.b.x)), var_0.a.b.wwy)), !(~global0.a.b.x < (42069i >> (1u % 32u)))));
    let var_2 = Struct_1(select(vec2<bool>(true, true), !func_4(func_4(Struct_1(vec2<bool>(global1.a.x, global0.a.a.x), vec4<i32>(1i, global0.a.b.x, global1.b.x, u_input.a), vec3<u32>(var_0.a.c.x, var_1.a.a.c.x, u_input.d.x), var_1.a.a.d), global0.a.b.xy, true), -var_1.a.a.b.xx, arg_2.a.x).a, var_1.d.x), (~arg_0.b | select(-vec4<i32>(global0.a.b.x, arg_0.b.x, global0.a.b.x, arg_1.x), min(vec4<i32>(73256i, arg_2.b.x, global0.a.b.x, var_1.a.a.b.x), vec4<i32>(global1.b.x, arg_1.x, global0.a.b.x, -16714i)), any(vec2<bool>(false, arg_2.a.x)))) >> ((_wgslsmith_div_vec4_u32(vec4<u32>(48862u, var_0.a.c.x, var_1.a.a.c.x, 12723u), select(vec4<u32>(var_0.a.c.x, var_1.a.a.c.x, arg_2.c.x, arg_2.c.x), vec4<u32>(0u, 9854u, 4294967295u, 4294967295u), vec4<bool>(arg_0.a.x, true, true, false))) | ~(~vec4<u32>(u_input.e.x, 59859u, global1.c.x, 6562u))) % vec4<u32>(32u)), arg_2.c, _wgslsmith_f_op_f32(func_2(_wgslsmith_sub_vec4_i32(select(-arg_0.b, var_1.a.a.b, !var_0.a.a.x), ~_wgslsmith_mod_vec4_i32(vec4<i32>(-1871i, 2147483647i, -53248i, 24236i), vec4<i32>(-26622i, 21164i, var_1.a.a.b.x, var_0.a.b.x))), abs(min(vec2<i32>(0i, arg_2.b.x), arg_1.xx)), _wgslsmith_div_u32(1u, global1.c.x ^ _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.a.c.x, var_1.a.a.c.x), var_0.a.c.yx)))));
    var var_3 = Struct_2(func_4(Struct_1(!select(global1.a, vec2<bool>(true, true), var_1.a.a.a.x), var_1.a.a.b, arg_2.c, _wgslsmith_f_op_f32(-1000f + var_1.a.a.d)), arg_2.b.yy, !var_0.a.a.x), vec4<bool>(!arg_2.a.x & false, false, arg_0.a.x, !(reverseBits(-14418i) == max(-1i, arg_2.b.x))), arg_2.b.x);
    return _wgslsmith_f_op_f32(round(func_4(Struct_1(!vec2<bool>(global1.a.x, global1.a.x), _wgslsmith_mod_vec4_i32(min(global0.a.b, var_0.a.b), arg_0.b), select(arg_2.c, u_input.d, var_3.b.yxw) | vec3<u32>(u_input.e.x, 41039u, var_0.a.c.x), var_0.a.d), vec2<i32>(countOneBits(~var_3.a.b.x), -8477i), select(global1.a.x, true, !(!var_1.d.x))).d));
}

fn func_5(arg_0: u32, arg_1: vec3<f32>, arg_2: i32) -> Struct_4 {
    let var_0 = Struct_4(Struct_3(global0.a), u_input.d.xx, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1550f, 178f, -574f, arg_1.x) - vec4<f32>(global1.d, arg_1.x, 1239f, global0.a.d)))))))), !vec4<bool>(false, true, arg_1.x <= _wgslsmith_f_op_f32(f32(-1f) * -1000f), true));
    let var_1 = Struct_2(global0.a, vec4<bool>(global0.a.a.x, any(select(var_0.d.yxz, vec3<bool>(global1.a.x, var_0.d.x, false), select(var_0.d.xxw, vec3<bool>(global0.a.a.x, global1.a.x, true), true))), var_0.a.a.a.x && true, func_4(func_4(func_4(Struct_1(vec2<bool>(true, var_0.d.x), global0.a.b, vec3<u32>(u_input.e.x, u_input.d.x, u_input.e.x), 1825f), global0.a.b.zz, var_0.d.x), -global0.a.b.yy, all(var_0.d)), -_wgslsmith_mod_vec2_i32(vec2<i32>(global0.a.b.x, -1i), vec2<i32>(global1.b.x, global1.b.x)), ~(-82106i) != (-65332i ^ u_input.a)).a.x), _wgslsmith_dot_vec4_i32(-(vec4<i32>(global1.b.x, arg_2, global1.b.x, global1.b.x) >> (vec4<u32>(var_0.b.x, u_input.e.x, 0u, 0u) % vec4<u32>(32u))), _wgslsmith_add_vec4_i32(-(~var_0.a.a.b), vec4<i32>(var_0.a.a.b.x, select(global0.a.b.x, 1i, global0.a.a.x), -global0.a.b.x, global1.b.x))));
    var var_2 = 0u;
    let var_3 = Struct_2(func_4(func_4(var_1.a, vec2<i32>(~u_input.b, -1i), global1.a.x & select(false, global1.a.x, var_0.d.x)), global1.b.wy, var_1.b.x), vec4<bool>(false, var_0.a.a.a.x, true, !(!var_1.a.a.x)), ~_wgslsmith_sub_i32(u_input.a, var_1.c));
    let var_4 = 17598i;
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(global0.a.c.x << ((~_wgslsmith_mult_u32(global1.c.x, 33137u) ^ 1u) % 32u), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)), _wgslsmith_f_op_f32(func_1(Struct_1(vec2<bool>(global0.a.a.x, global1.a.x), countOneBits(vec4<i32>(0i, 1i, global1.b.x, u_input.a)), vec3<u32>(0u, 90497u, 4294967295u) & vec3<u32>(50528u, 23686u, global0.a.c.x), _wgslsmith_f_op_f32(global1.d * global1.d)), global1.b.zyw & ~vec3<i32>(global0.a.b.x, global1.b.x, 59234i), Struct_1(select(global0.a.a, global0.a.a, false), vec4<i32>(-5573i, u_input.a, 1i, 2038i) ^ global0.a.b, global0.a.c, -323f))), 426f), ~global1.b.x);
    let var_1 = var_0.c.x;
    global1 = var_0.a.a;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d.yz & u_input.e);
}

