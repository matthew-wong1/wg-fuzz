struct Struct_1 {
    a: vec4<bool>,
    b: bool,
    c: i32,
    d: f32,
    e: bool,
}

struct Struct_2 {
    a: bool,
    b: i32,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<i32>,
    c: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec4<f32>,
    d: vec2<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 1> = array<Struct_1, 1>(Struct_1(vec4<bool>(true, true, false, false), true, 27775i, -1003f, false));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: u32, arg_1: vec3<bool>, arg_2: Struct_3) -> f32 {
    global0 = array<Struct_1, 1>();
    return arg_2.b.d;
}

fn func_2(arg_0: vec2<u32>, arg_1: u32, arg_2: Struct_3) -> Struct_1 {
    global0 = array<Struct_1, 1>();
    let var_0 = Struct_2(true, -28697i, Struct_1(arg_2.b.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2202f)) < arg_2.b.d, 72426i, _wgslsmith_f_op_f32(484f - _wgslsmith_f_op_f32(func_3(_wgslsmith_mult_u32(arg_0.x, 1u), select(vec3<bool>(true, arg_2.b.b, false), vec3<bool>(false, arg_2.c.e.b, false), true), Struct_3(arg_2.c.e.d, global0[_wgslsmith_index_u32(0u, 1u)], arg_2.c)))), !any(vec4<bool>(true, true, true, true))), Struct_1(arg_2.c.e.a, any(arg_2.c.c.a.yzy) & select(any(vec3<bool>(arg_2.c.e.a.x, arg_2.b.b, arg_2.b.a.x)), true, false), arg_2.c.c.c, _wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.c.d.d + 422f))), true), global0[_wgslsmith_index_u32(reverseBits(31170u), 1u)]);
    let var_1 = ~(5899u & _wgslsmith_dot_vec2_u32(firstTrailingBit(arg_0), min(arg_0, arg_0) | ~vec2<u32>(1u, arg_0.x)));
    let var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.d.d, _wgslsmith_f_op_f32(trunc(var_0.c.d)), arg_2.a, -2215f)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_2.c.e.d, _wgslsmith_f_op_f32(abs(arg_2.c.e.d)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.c.c.d * 520f)), _wgslsmith_div_f32(-798f, _wgslsmith_f_op_f32(step(-779f, arg_2.c.e.d)))))));
    var var_3 = false;
    return arg_2.b;
}

fn func_4(arg_0: Struct_3, arg_1: bool, arg_2: vec2<u32>) -> Struct_3 {
    let var_0 = Struct_2(true, arg_0.b.c, func_2(~arg_2, arg_2.x, arg_0), func_2(vec2<u32>(arg_2.x, abs(arg_2.x)) & arg_2, ~(~23242u), Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(325f * arg_0.c.c.d) + _wgslsmith_f_op_f32(-arg_0.b.d)), Struct_1(vec4<bool>(arg_1, arg_1, false, false), !arg_1, func_2(vec2<u32>(8055u, 29500u), 4294967295u, Struct_3(-1615f, Struct_1(arg_0.b.a, arg_0.b.e, u_input.b, arg_0.a, false), Struct_2(true, arg_0.c.c.c, global0[_wgslsmith_index_u32(0u, 1u)], arg_0.c.c, Struct_1(vec4<bool>(arg_1, arg_1, false, true), true, 0i, arg_0.c.e.d, true)))).c, arg_0.c.d.d, !arg_1), Struct_2(arg_0.c.a, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, 2147483647i, u_input.c), vec3<i32>(arg_0.b.c, arg_0.c.d.c, arg_0.c.c.c)), Struct_1(arg_0.b.a, arg_0.c.e.b, -12495i, arg_0.b.d, false), func_2(arg_2, 23737u, arg_0), func_2(vec2<u32>(4294967295u, 1u), 20510u, Struct_3(arg_0.a, arg_0.c.e, Struct_2(true, arg_0.c.d.c, global0[_wgslsmith_index_u32(32859u, 1u)], global0[_wgslsmith_index_u32(97184u, 1u)], arg_0.b)))))), Struct_1(arg_0.c.c.a, !func_2(vec2<u32>(arg_2.x, 1u), ~arg_2.x, Struct_3(arg_0.b.d, Struct_1(vec4<bool>(arg_0.b.a.x, arg_0.c.a, arg_0.b.e, arg_0.b.b), arg_0.c.d.a.x, 45915i, 726f, true), arg_0.c)).b, 1i, arg_0.c.c.d, !any(func_2(vec2<u32>(arg_2.x, arg_2.x), arg_2.x, Struct_3(arg_0.a, Struct_1(vec4<bool>(arg_0.b.b, true, arg_1, arg_1), false, arg_0.c.e.c, arg_0.b.d, true), Struct_2(arg_1, u_input.b, Struct_1(arg_0.b.a, true, -2147483647i, arg_0.a, arg_0.b.b), Struct_1(arg_0.c.c.a, true, arg_0.b.c, 619f, false), Struct_1(arg_0.b.a, true, -14057i, arg_0.c.e.d, arg_1)))).a.yyz)));
    var var_1 = _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_0.c.e.d, _wgslsmith_f_op_f32(-var_0.d.d), 1546f, 540f)));
    var var_2 = 22007i;
    let var_3 = Struct_2(true, _wgslsmith_div_i32(_wgslsmith_sub_i32(-8485i, ~var_0.d.c) << (19955u % 32u), min(~(~(-6064i)), var_0.b)), func_2(abs(arg_2), 1u << (reverseBits(_wgslsmith_dot_vec2_u32(arg_2, arg_2)) % 32u), Struct_3(var_1.x, func_2(arg_2, firstLeadingBit(arg_2.x), Struct_3(-632f, var_0.c, Struct_2(arg_0.b.a.x, arg_0.c.d.c, var_0.c, arg_0.c.d, Struct_1(vec4<bool>(false, true, false, arg_0.c.e.e), var_0.d.e, -78683i, -1000f, arg_1)))), Struct_2(any(vec2<bool>(arg_0.c.e.e, false)), -var_0.d.c, Struct_1(vec4<bool>(arg_0.c.a, arg_1, true, false), arg_0.c.a, arg_0.b.c, 544f, var_0.d.a.x), global0[_wgslsmith_index_u32(6885u, 1u)], Struct_1(arg_0.c.d.a, arg_0.c.c.a.x, arg_0.c.b, var_0.e.d, true)))), func_2(arg_2 >> ((max(arg_2, arg_2) | vec2<u32>(arg_2.x, arg_2.x)) % vec2<u32>(32u)), _wgslsmith_add_u32(arg_2.x, min(arg_2.x, _wgslsmith_add_u32(arg_2.x, arg_2.x))), arg_0), Struct_1(vec4<bool>(true, true & arg_0.c.a, !all(arg_0.c.c.a.ywy), !any(arg_0.c.d.a.xxy)), arg_1, var_0.d.c, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(179f - -453f), var_0.c.d)), -2035f)), true));
    let var_4 = arg_0.b.e;
    return arg_0;
}

fn func_1(arg_0: vec2<f32>, arg_1: vec3<bool>) -> u32 {
    let var_0 = Struct_4(func_4(Struct_3(_wgslsmith_f_op_f32(step(-389f, _wgslsmith_f_op_f32(-arg_0.x))), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 22470u, 54779u, 125122u), ~vec4<u32>(10u, 4294967295u, 4294967295u, 65899u)), 1u)], Struct_2(!arg_1.x, _wgslsmith_div_i32(u_input.c, u_input.a.x), Struct_1(vec4<bool>(true, arg_1.x, false, false), arg_1.x, 0i, -500f, arg_1.x), func_2(vec2<u32>(4294967295u, 4294967295u), 394u, Struct_3(-966f, global0[_wgslsmith_index_u32(24070u, 1u)], Struct_2(arg_1.x, u_input.b, global0[_wgslsmith_index_u32(4900u, 1u)], Struct_1(vec4<bool>(arg_1.x, true, arg_1.x, false), arg_1.x, u_input.c, -1707f, false), Struct_1(vec4<bool>(arg_1.x, false, arg_1.x, arg_1.x), true, u_input.c, 1349f, arg_1.x)))), func_2(vec2<u32>(62268u, 0u), 92231u, Struct_3(arg_0.x, global0[_wgslsmith_index_u32(0u, 1u)], Struct_2(arg_1.x, u_input.b, global0[_wgslsmith_index_u32(21192u, 1u)], Struct_1(vec4<bool>(arg_1.x, arg_1.x, false, false), false, u_input.d, 505f, arg_1.x), global0[_wgslsmith_index_u32(0u, 1u)]))))), true, vec2<u32>(max(1u, 1u), 4294967295u)), u_input.a, u_input.c);
    var var_1 = reverseBits(vec2<i32>(i32(-1i) * -firstTrailingBit(7742i), -var_0.c));
    var var_2 = func_4(Struct_3(var_0.a.c.c.d, Struct_1(var_0.a.b.a, all(vec4<bool>(true, arg_1.x, false, arg_1.x)), var_0.a.b.c, var_0.a.a, !var_0.a.c.a), func_4(func_4(func_4(Struct_3(-104f, var_0.a.b, var_0.a.c), arg_1.x, vec2<u32>(24365u, 40498u)), arg_1.x, ~vec2<u32>(26025u, 0u)), _wgslsmith_dot_vec3_i32(var_0.b.xyy, u_input.a.zww) != ~(-2147483647i), vec2<u32>(~69639u, 59659u)).c), false, ~_wgslsmith_mult_vec2_u32(select(~vec2<u32>(56235u, 45002u), ~vec2<u32>(44952u, 4294967295u), select(arg_1.xy, vec2<bool>(false, false), var_0.a.b.a.x)), ~firstTrailingBit(vec2<u32>(48182u, 60384u))));
    let var_3 = Struct_3(func_4(Struct_3(-1000f, global0[_wgslsmith_index_u32(~1u, 1u)], var_0.a.c), false, ~_wgslsmith_clamp_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(4294967295u, 1u), vec2<u32>(1u, 0u)) >> (vec2<u32>(1u, 1u) % vec2<u32>(32u))).c.c.d, Struct_1(var_0.a.b.a, _wgslsmith_f_op_f32(min(-2126f, var_0.a.a)) < _wgslsmith_f_op_f32(min(-905f, arg_0.x)), var_0.a.b.c, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.a) + -340f))), !(all(vec2<bool>(false, false)) & false)), func_4(func_4(Struct_3(_wgslsmith_f_op_f32(trunc(-1706f)), var_2.c.c, var_0.a.c), !func_2(vec2<u32>(10542u, 40773u), 4294967295u, var_0.a).a.x, _wgslsmith_div_vec2_u32(vec2<u32>(1u, 1u), ~vec2<u32>(36872u, 0u))), all(var_2.b.a), vec2<u32>(1u, 1u)).c);
    var_1 = countOneBits(-(~select(u_input.a.xy, vec2<i32>(var_2.b.c, 37176i), vec2<bool>(var_3.c.d.b, true))));
    return _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(select(reverseBits(~vec4<u32>(0u, 40182u, 1u, 6232u)), vec4<u32>(41673u, 1u, 37264u, ~0u), select(all(vec3<bool>(true, false, true)), var_2.c.e.e, all(vec3<bool>(arg_1.x, true, true)))), ~vec4<u32>(_wgslsmith_mod_u32(53670u, 1u), 1u, 72423u, 53683u)), 1u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 1>();
    let var_0 = min(abs(~abs(vec4<u32>(1u, 1u, 1u, 1u))), vec4<u32>(_wgslsmith_mod_u32(_wgslsmith_add_u32(4294967295u, func_1(vec2<f32>(-336f, 738f), vec3<bool>(true, false, true))), 1u), 68011u, _wgslsmith_add_u32(~1u, 1u) << (func_1(vec2<f32>(-1447f, -679f), select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), true)) % 32u), 107371u));
    let var_1 = select(~vec3<u32>(var_0.x, 4294967295u, 15750u), ~(_wgslsmith_div_vec3_u32(vec3<u32>(48459u, 24806u, 30855u), vec3<u32>(var_0.x, 39060u, 0u)) ^ _wgslsmith_div_vec3_u32(var_0.yxx, var_0.zyz)), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true))) | vec3<u32>(~var_0.x, ~_wgslsmith_mod_u32(var_0.x, var_0.x) & ~var_0.x, 0u);
    let var_2 = _wgslsmith_clamp_vec2_i32(~countOneBits(u_input.a.wx), u_input.a.zy, min(~vec2<i32>(u_input.c, -2147483647i), firstLeadingBit(firstLeadingBit(vec2<i32>(0i, u_input.b)))) & -u_input.a.zy);
    let var_3 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -919f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-586f - -1597f))), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(671f, -188f))) * func_4(func_4(func_4(Struct_3(-576f, Struct_1(vec4<bool>(false, false, false, false), true, u_input.d, -224f, true), Struct_2(false, -1i, Struct_1(vec4<bool>(true, true, false, false), false, u_input.c, 1104f, false), global0[_wgslsmith_index_u32(4294967295u, 1u)], global0[_wgslsmith_index_u32(1u, 1u)])), false, var_1.zz), all(vec3<bool>(true, false, false)), vec2<u32>(62453u, var_0.x) & var_1.xy), true, var_0.yw).c.c.d)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec2_i32(u_input.a.yx, abs(var_2)), ~vec2<i32>(var_2.x << (var_1.x % 32u), max(-2459i, -1i)) | (-(vec2<i32>(var_2.x, var_2.x) >> (var_0.xx % vec2<u32>(32u))) & ~(~u_input.a.zw)), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3)) + _wgslsmith_f_op_f32(func_3(_wgslsmith_div_u32(var_1.x, 1u), vec3<bool>(true, true, true), Struct_3(var_3, global0[_wgslsmith_index_u32(var_1.x, 1u)], Struct_2(false, 42908i, global0[_wgslsmith_index_u32(var_1.x, 1u)], Struct_1(vec4<bool>(true, true, true, false), true, -1i, var_3, true), global0[_wgslsmith_index_u32(0u, 1u)]))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-104f + _wgslsmith_f_op_f32(-100f - -349f)) * _wgslsmith_f_op_f32(1f + 1470f)), -2142f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_3)) * _wgslsmith_f_op_f32(func_3(1u, vec3<bool>(false, false, true), Struct_3(var_3, global0[_wgslsmith_index_u32(0u, 1u)], Struct_2(true, u_input.c, Struct_1(vec4<bool>(false, false, false, false), false, u_input.c, -2753f, true), global0[_wgslsmith_index_u32(var_0.x, 1u)], Struct_1(vec4<bool>(true, false, false, true), true, 28768i, 434f, true)))))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_3, var_3, false)) + 335f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_3, var_3) + vec2<f32>(-450f, 819f)))) * vec2<f32>(-563f, _wgslsmith_f_op_f32(-var_3)))), var_1.x);
}

