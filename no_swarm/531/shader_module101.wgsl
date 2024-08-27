struct Struct_1 {
    a: i32,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_4 {
    a: vec3<f32>,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<f32>,
    c: vec4<i32>,
    d: u32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -516f;

var<private> global1: array<Struct_1, 6>;

var<private> global2: array<vec4<i32>, 11> = array<vec4<i32>, 11>(vec4<i32>(0i, 0i, -6776i, -1i), vec4<i32>(24243i, 0i, 25623i, -1i), vec4<i32>(0i, -30796i, -35280i, -1739i), vec4<i32>(14955i, -50643i, -1i, 11702i), vec4<i32>(-939i, 17509i, 1i, 0i), vec4<i32>(40161i, 3310i, 15810i, i32(-2147483648)), vec4<i32>(-8934i, -45114i, -46176i, -812i), vec4<i32>(60032i, i32(-2147483648), -1i, 1i), vec4<i32>(-58320i, 1i, 2147483647i, 0i), vec4<i32>(62137i, i32(-2147483648), i32(-2147483648), i32(-2147483648)), vec4<i32>(2147483647i, 7249i, 0i, 14577i));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2() -> Struct_1 {
    global1 = array<Struct_1, 6>();
    global1 = array<Struct_1, 6>();
    global2 = array<vec4<i32>, 11>();
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(264f, -495f, -1800f, 793f), vec4<f32>(870f, 1783f, -219f, -229f), false))))))));
    global1 = array<Struct_1, 6>();
    return global1[_wgslsmith_index_u32(42634u, 6u)];
}

fn func_3() -> i32 {
    let var_0 = Struct_2(Struct_1(_wgslsmith_mult_i32(u_input.e, -(~u_input.e)), u_input.e), !select(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true), vec2<bool>(true, true)), Struct_1(u_input.e, (_wgslsmith_add_i32(u_input.e, u_input.e) & 0i) >> (u_input.d % 32u)), Struct_1(firstLeadingBit(select(~u_input.e, ~20285i, true)), u_input.e), Struct_1(u_input.e, u_input.e));
    var var_1 = ~vec4<i32>(-50175i, _wgslsmith_mod_i32(-_wgslsmith_dot_vec4_i32(global2[_wgslsmith_index_u32(u_input.a, 11u)], vec4<i32>(-1i, var_0.d.b, var_0.a.b, u_input.e)), 6944i), _wgslsmith_dot_vec2_i32(~vec2<i32>(u_input.e, u_input.e) ^ countOneBits(vec2<i32>(var_0.c.b, -1i)), _wgslsmith_mult_vec2_i32(firstTrailingBit(vec2<i32>(var_0.d.a, -54832i)), _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.e, var_0.d.a), vec2<i32>(u_input.e, u_input.e)))), ~_wgslsmith_mult_i32(_wgslsmith_mult_i32(-12419i, var_0.a.b), -64772i));
    var var_2 = Struct_4(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-229f, 1000f, -277f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(662f)), _wgslsmith_f_op_f32(trunc(1545f)), _wgslsmith_f_op_f32(ceil(-987f)))))), vec4<u32>(~0u, ~(~28785u), _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.b, 4294967295u), u_input.c.yy << (u_input.c.zx % vec2<u32>(32u))), reverseBits(u_input.c.zz)), ~(~4294967295u)));
    let var_3 = reverseBits(u_input.e) | _wgslsmith_mult_i32(u_input.e, -41608i);
    var var_4 = var_0.e.a;
    return 0i;
}

fn func_4(arg_0: i32, arg_1: Struct_3, arg_2: Struct_2, arg_3: Struct_3) -> Struct_3 {
    let var_0 = vec2<i32>(0i, arg_3.a.a.a | ~arg_3.b);
    global2 = array<vec4<i32>, 11>();
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1379f));
    var var_2 = arg_3.a;
    let var_3 = func_2();
    return Struct_3(Struct_2(func_2(), vec2<bool>(arg_3.a.b.x, arg_2.b.x), func_2(), func_2(), Struct_1(firstTrailingBit(-2147483647i), -func_3())), var_0.x, func_2(), func_2());
}

fn func_1(arg_0: bool, arg_1: Struct_1) -> Struct_3 {
    global1 = array<Struct_1, 6>();
    var var_0 = Struct_4(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1606f, -1000f, -710f)))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-500f * 1568f), _wgslsmith_f_op_f32(select(-1212f, -216f, arg_0)), -229f)), arg_0)), _wgslsmith_mod_vec4_u32(u_input.c, vec4<u32>(u_input.c.x & u_input.a, 4294967295u, u_input.b, ~select(24333u, 63759u, true))));
    var var_1 = arg_0;
    var_1 = select(!any(select(!vec3<bool>(arg_0, arg_0, false), select(vec3<bool>(false, true, false), vec3<bool>(false, arg_0, false), true), vec3<bool>(arg_0, arg_0, true))), false, !arg_0);
    global0 = -931f;
    return func_4(1i << (_wgslsmith_div_u32(firstTrailingBit(var_0.b.x), min(u_input.a >> (var_0.b.x % 32u), ~1u)) % 32u), Struct_3(Struct_2(arg_1, vec2<bool>(arg_0, true & arg_0), arg_1, arg_1, func_2()), ~(-func_3()), func_2(), Struct_1(arg_1.b, _wgslsmith_div_i32(2147483647i, -48486i) >> (u_input.d % 32u))), Struct_2(func_2(), select(vec2<bool>(arg_0, !arg_0), select(vec2<bool>(arg_0, arg_0), select(vec2<bool>(arg_0, false), vec2<bool>(arg_0, true), vec2<bool>(arg_0, arg_0)), !vec2<bool>(false, arg_0)), any(select(vec2<bool>(arg_0, arg_0), vec2<bool>(true, false), vec2<bool>(arg_0, true)))), Struct_1(_wgslsmith_dot_vec4_i32(global2[_wgslsmith_index_u32(var_0.b.x, 11u)], _wgslsmith_mult_vec4_i32(global2[_wgslsmith_index_u32(u_input.a, 11u)], vec4<i32>(arg_1.b, -36163i, u_input.e, arg_1.a))), 37598i), func_2(), Struct_1(~1i, reverseBits(-2147483647i))), Struct_3(Struct_2(func_2(), vec2<bool>(true, true), Struct_1(0i, ~0i), Struct_1(0i, 1i), arg_1), 12838i, global1[_wgslsmith_index_u32(var_0.b.x, 6u)], func_2()));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(!all(!select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, true))), global1[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.d, 57626u), 6u)]);
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(2176f - -810f), _wgslsmith_f_op_f32(f32(-1f) * -514f), _wgslsmith_f_op_f32(ceil(1544f))), vec3<f32>(_wgslsmith_f_op_f32(floor(399f)), -1078f, _wgslsmith_f_op_f32(sign(-511f)))))));
    let var_2 = vec4<u32>(u_input.a, ~(min(~u_input.d, u_input.a) << (_wgslsmith_add_u32(~u_input.a, u_input.d ^ u_input.a) % 32u)), u_input.b << (u_input.d % 32u), ~1u);
    let var_3 = ~(~(~1u)) >> (~u_input.d % 32u);
    global0 = _wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1380f - var_1.x)))) + var_1.x));
    let var_4 = func_1(all(vec4<bool>(!any(vec3<bool>(true, var_0.a.b.x, true)), func_4(min(var_0.d.a, 1i), Struct_3(Struct_2(Struct_1(-1i, var_0.b), vec2<bool>(true, var_0.a.b.x), var_0.c, Struct_1(u_input.e, u_input.e), Struct_1(var_0.b, var_0.d.b)), -1i, Struct_1(var_0.b, -13111i), global1[_wgslsmith_index_u32(60541u, 6u)]), func_1(false, Struct_1(var_0.a.d.a, u_input.e)).a, Struct_3(Struct_2(var_0.a.d, vec2<bool>(true, false), Struct_1(u_input.e, var_0.d.a), Struct_1(var_0.a.d.b, var_0.a.e.a), global1[_wgslsmith_index_u32(4294967295u, 6u)]), 2147483647i, Struct_1(u_input.e, var_0.c.b), global1[_wgslsmith_index_u32(var_3, 6u)])).a.b.x, false, (var_3 >= 101607u) | true)), Struct_1(i32(-1i) * -1i, abs(u_input.e))).a;
    var var_5 = !vec3<bool>(var_0.a.b.x, false, false);
    global2 = array<vec4<i32>, 11>();
    var_5 = !select(!(!vec3<bool>(true, var_5.x, true)), select(vec3<bool>(func_4(u_input.e, var_0, Struct_2(global1[_wgslsmith_index_u32(var_3, 6u)], var_5.xy, global1[_wgslsmith_index_u32(u_input.b, 6u)], Struct_1(u_input.e, -1i), var_4.c), Struct_3(Struct_2(Struct_1(-31735i, 1i), var_4.b, var_4.c, Struct_1(0i, -33005i), var_4.d), 1i, Struct_1(var_4.e.b, -46326i), global1[_wgslsmith_index_u32(1u, 6u)])).a.b.x, var_4.b.x, !var_0.a.b.x), !vec3<bool>(var_0.a.b.x, var_5.x, var_5.x), select(select(vec3<bool>(var_0.a.b.x, true, var_5.x), vec3<bool>(true, false, true), vec3<bool>(false, true, var_5.x)), vec3<bool>(false, false, var_5.x), !var_5.x)), var_5.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(var_1.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(870f)))), var_1.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 728f, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(var_1.x, var_1.x))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(var_1.x))))) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(860f, _wgslsmith_f_op_f32(f32(-1f) * -1023f), _wgslsmith_f_op_f32(f32(-1f) * -866f), var_1.x), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1000f, var_1.x, var_1.x, var_1.x))), var_0.a.b.x))), vec4<i32>(~(-_wgslsmith_clamp_i32(var_0.c.a, 1i, var_4.c.b)), _wgslsmith_sub_i32(~var_4.e.b, -52025i) | u_input.e, u_input.e, _wgslsmith_div_i32(func_2().a, ~(-1i & u_input.e))), ~1u ^ _wgslsmith_mult_u32(~u_input.c.x, u_input.b), var_1);
}

