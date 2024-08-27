struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: u32,
}

struct Struct_4 {
    a: vec3<f32>,
    b: i32,
}

struct Struct_5 {
    a: vec4<f32>,
    b: Struct_3,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec4<u32>,
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

var<private> global0: Struct_4 = Struct_4(vec3<f32>(288f, -1000f, -296f), 24205i);

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: bool, arg_1: Struct_1) -> bool {
    var var_0 = vec3<f32>(-1474f, global0.a.x, global0.a.x);
    let var_1 = Struct_4(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, -689f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -762f, -154f)))))), _wgslsmith_mult_i32(u_input.b.x, abs(i32(-1i) * -1i)));
    let var_2 = all(!select(vec3<bool>(1025f != global0.a.x, arg_0, arg_0), select(vec3<bool>(true, false, arg_0), vec3<bool>(false, true, false), all(vec2<bool>(arg_0, arg_0))), all(!vec2<bool>(true, arg_0))));
    let var_3 = !vec3<bool>(all(vec2<bool>(var_2, true)), all(select(!vec2<bool>(var_2, false), vec2<bool>(arg_0, false), vec2<bool>(arg_0, arg_0))), true);
    var var_4 = ~(-u_input.b.ywz);
    return arg_1.a == 4294967295u;
}

fn func_4(arg_0: bool, arg_1: vec2<u32>, arg_2: i32) -> f32 {
    global0 = Struct_4(_wgslsmith_f_op_vec3_f32(global0.a + _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global0.a.x, 2060f, -465f)))))))), 2147483647i);
    let var_0 = (((u_input.a ^ 34352u) ^ arg_1.x) & firstLeadingBit(~37552u)) >> (u_input.c.x % 32u);
    global0 = Struct_4(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(854f, global0.a.x)), -1000f, true))), _wgslsmith_div_f32(global0.a.x, _wgslsmith_f_op_f32(global0.a.x + global0.a.x)), global0.a.x), ~(~countOneBits(u_input.b.x)));
    let var_1 = ~arg_1;
    let var_2 = vec2<bool>(true, true);
    return _wgslsmith_div_f32(391f, -499f);
}

fn func_2(arg_0: bool, arg_1: bool, arg_2: Struct_3, arg_3: vec4<u32>) -> Struct_3 {
    global0 = Struct_4(vec3<f32>(global0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global0.a.x, -1876f, arg_1))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(func_3(true, arg_2.a), ~vec2<u32>(16127u, arg_2.c), min(u_input.b.x, 2147483647i))) * _wgslsmith_f_op_f32(f32(-1f) * -863f))), 1i);
    global0 = Struct_4(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(vec3<f32>(global0.a.x, global0.a.x, -141f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(global0.a)))))), _wgslsmith_dot_vec3_i32(-(~(~vec3<i32>(0i, 4572i, global0.b))), firstLeadingBit(abs(vec3<i32>(arg_2.b, 1i, -10547i)))));
    let var_0 = global0.a.x;
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a.x, -1046f, 1098f, 784f) + vec4<f32>(global0.a.x, -243f, 686f, global0.a.x)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-936f, global0.a.x, global0.a.x, global0.a.x) + vec4<f32>(1000f, global0.a.x, 543f, global0.a.x))))));
    var var_2 = false;
    return arg_2;
}

fn func_5(arg_0: Struct_1, arg_1: i32, arg_2: Struct_5) -> vec4<i32> {
    let var_0 = select(all(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), !select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, true)), vec4<bool>(true, true, true, true))), all(!(!select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false)))), any(vec2<bool>(true, true)));
    let var_1 = _wgslsmith_sub_vec3_i32(vec3<i32>(1i, i32(-1i) * -(~u_input.b.x), -_wgslsmith_dot_vec4_i32(select(vec4<i32>(arg_1, arg_1, -33407i, -2147483647i), vec4<i32>(arg_2.b.b, 0i, arg_2.b.b, global0.b), false), vec4<i32>(arg_2.b.b, arg_2.b.b, -11620i, -35018i))), firstLeadingBit(firstLeadingBit(select(vec3<i32>(-26593i, arg_2.b.b, -2952i), -vec3<i32>(-29119i, arg_2.b.b, arg_2.b.b), vec3<bool>(false, true, false)))));
    global0 = Struct_4(_wgslsmith_f_op_vec3_f32(arg_2.a.zww - vec3<f32>(_wgslsmith_f_op_f32(-549f + arg_2.a.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.a.x), _wgslsmith_f_op_f32(global0.a.x * global0.a.x)), 1810f)), 0i | abs(_wgslsmith_dot_vec4_i32(u_input.b, ~u_input.b)));
    var var_2 = var_1.zz;
    var_2 = countOneBits(vec2<i32>(2687i, ~max(-arg_1, _wgslsmith_dot_vec3_i32(vec3<i32>(global0.b, var_1.x, 9283i), vec3<i32>(1i, 1i, arg_1)))));
    return select(vec4<i32>(-2147483647i, -1701i, var_1.x, _wgslsmith_sub_i32(min(-9850i, arg_2.b.b), ~var_2.x)) | vec4<i32>(i32(-1i) * -7901i, -_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, var_1.x), vec2<i32>(18573i, var_1.x)), _wgslsmith_add_i32(-1i, var_2.x << (arg_2.b.a.a % 32u)), 15409i), u_input.b, vec4<bool>(!(!var_0 && true), firstLeadingBit(global0.b) >= _wgslsmith_mod_i32(-arg_1, -global0.b), var_0, true));
}

fn func_6(arg_0: vec4<i32>, arg_1: Struct_4, arg_2: Struct_2, arg_3: bool) -> Struct_4 {
    let var_0 = global0.a.x;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a.x) + arg_1.a.x))));
    let var_2 = global0.b;
    global0 = Struct_4(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a.x, -1346f, arg_1.a.x)) + vec3<f32>(1091f, -2059f, 1111f)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1696f, 888f, 651f), vec3<f32>(169f, arg_1.a.x, var_1)))))), 2147483647i);
    let var_3 = func_2(true, select(any(vec2<bool>(all(vec4<bool>(arg_3, arg_3, false, false)), !arg_3)), false, false), func_2(false, arg_3, func_2((arg_3 || false) || (arg_1.b < global0.b), all(vec4<bool>(arg_3, arg_3, arg_3, arg_3)), Struct_3(func_2(arg_3, arg_3, Struct_3(Struct_1(63990u), 23984i, u_input.a), vec4<u32>(1u, 54239u, 46635u, arg_2.b.a)).a, u_input.b.x, u_input.a), u_input.c << (countOneBits(u_input.c) % vec4<u32>(32u))), u_input.c), u_input.c);
    return Struct_4(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global0.a.x, _wgslsmith_f_op_f32(floor(1081f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a.x))))), arg_0.x);
}

fn func_1() -> vec4<f32> {
    var var_0 = false;
    global0 = func_6(max(func_5(Struct_1(4294967295u), _wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(global0.b, 11602i, 43133i, 1i)), -vec4<i32>(-1i, u_input.b.x, u_input.b.x, 1i)), Struct_5(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1220f, 1347f, global0.a.x, global0.a.x))), func_2(false, true, Struct_3(Struct_1(u_input.c.x), global0.b, 0u), vec4<u32>(u_input.c.x, 4294967295u, u_input.a, u_input.a)), 630f)), u_input.b), Struct_4(_wgslsmith_f_op_vec3_f32(exp2(global0.a)), _wgslsmith_mult_i32(u_input.b.x, -10389i)), Struct_2(func_2(any(select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), true)), abs(56109u) != u_input.c.x, func_2(true, any(vec2<bool>(false, true)), func_2(true, false, Struct_3(Struct_1(56967u), -52114i, u_input.a), u_input.c), u_input.c), firstLeadingBit(vec4<u32>(u_input.a, 34874u, 4662u, u_input.c.x))).a, Struct_1(abs(min(22548u, 1u))), func_2(!(global0.a.x <= -892f), false, func_2(true, u_input.a < 25477u, Struct_3(Struct_1(0u), u_input.b.x, 6722u), min(u_input.c, vec4<u32>(u_input.c.x, u_input.c.x, 4294967295u, 1u))), reverseBits(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, 4294967295u, 4294967295u, u_input.c.x), vec4<u32>(61880u, 4294967295u, 1u, 0u), u_input.c))).a), false);
    global0 = Struct_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(global0.a.x)), _wgslsmith_f_op_f32(-global0.a.x), global0.a.x)), -6196i);
    var var_1 = Struct_4(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a.x) + _wgslsmith_div_f32(global0.a.x, global0.a.x)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global0.a.x * -489f), _wgslsmith_f_op_f32(f32(-1f) * -575f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global0.a.x)))), global0.a)), _wgslsmith_mod_i32(2147483647i, countOneBits(global0.b)));
    var var_2 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(var_1.a.x)), _wgslsmith_f_op_f32(ceil(601f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global0.a.x))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -570f), _wgslsmith_f_op_f32(-var_1.a.x)))))));
    return _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-464f, _wgslsmith_f_op_f32(f32(-1f) * -397f), -463f, _wgslsmith_f_op_f32(abs(var_1.a.x))))))));
}

fn func_7(arg_0: Struct_5, arg_1: vec4<i32>, arg_2: Struct_4) -> vec4<bool> {
    let var_0 = false;
    let var_1 = ~u_input.c.zx;
    var var_2 = u_input.b | -u_input.b;
    let var_3 = Struct_2(func_2(all(!select(vec4<bool>(false, true, false, true), vec4<bool>(var_0, var_0, var_0, false), vec4<bool>(var_0, false, var_0, true))), !(1000f > arg_0.a.x), Struct_3(Struct_1(var_1.x >> (var_1.x % 32u)), arg_0.b.b, var_1.x), countOneBits(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.c.x, u_input.a, var_1.x, arg_0.b.a.a), vec4<u32>(0u, u_input.c.x, 8401u, u_input.c.x) >> (u_input.c % vec4<u32>(32u))))).a, arg_0.b.a, arg_0.b.a);
    let var_4 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2.a.x, -614f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1000f), global0.a.x)))) - arg_0.c)));
    return select(!vec4<bool>(func_3(var_0, Struct_1(4294967295u)), any(!vec2<bool>(false, var_0)), true, true), vec4<bool>(true, any(!select(vec2<bool>(true, true), vec2<bool>(var_0, var_0), var_0)), true, true), any(vec3<bool>(_wgslsmith_f_op_f32(f32(-1f) * -682f) >= _wgslsmith_f_op_f32(var_4 * global0.a.x), var_0, var_0)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<bool>(!(!all(vec2<bool>(true, true))), any(vec3<bool>(select(global0.b > global0.b, true, true), !(26291u > u_input.c.x), false)), all(vec3<bool>(true, true, true)) || true, _wgslsmith_f_op_f32(min(global0.a.x, -179f)) < global0.a.x);
    var var_1 = func_7(Struct_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_1()) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a.x, global0.a.x, global0.a.x, global0.a.x)))), func_2(all(select(vec3<bool>(var_0.x, var_0.x, true), vec3<bool>(var_0.x, true, var_0.x), var_0.ywy)), var_0.x, func_2(var_0.x & true, var_0.x, Struct_3(Struct_1(29197u), -33905i, 0u), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c.x, u_input.a, 30338u, 0u), vec4<u32>(10471u, u_input.c.x, 5660u, 0u))), vec4<u32>(_wgslsmith_mult_u32(u_input.c.x, u_input.a), firstTrailingBit(u_input.a), u_input.a, ~u_input.a)), global0.a.x), _wgslsmith_sub_vec4_i32(~u_input.b, func_5(Struct_1(u_input.c.x), _wgslsmith_mult_i32(firstLeadingBit(u_input.b.x), 0i), Struct_5(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1000f, global0.a.x, 1136f, 1304f))), Struct_3(Struct_1(u_input.c.x), global0.b, u_input.a), _wgslsmith_f_op_f32(global0.a.x + -884f)))), Struct_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a.x, 485f, 1541f)), -_wgslsmith_mod_i32(global0.b, u_input.b.x >> (u_input.a % 32u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(global0.a.zz)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(282f, global0.a.x))))));
}

