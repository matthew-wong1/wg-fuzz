struct Struct_1 {
    a: bool,
    b: vec4<i32>,
    c: vec4<u32>,
    d: vec2<f32>,
}

struct Struct_2 {
    a: u32,
    b: vec2<f32>,
    c: vec3<bool>,
    d: u32,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct Struct_4 {
    a: Struct_2,
    b: bool,
    c: vec2<bool>,
    d: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
    d: vec2<u32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: u32,
    d: u32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<vec2<f32>, 7>;

var<private> global2: Struct_3;

var<private> global3: array<bool, 14>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> i32 {
    global2 = Struct_3(!global2.a);
    global0 = 40828u;
    var var_0 = Struct_2(u_input.e.x, vec2<f32>(-1519f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(682f)))) - -1485f)), global2.a.yzz, u_input.d.x, Struct_1(true, _wgslsmith_clamp_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), -vec4<i32>(0i, u_input.b.x, 2147483647i, -45199i), reverseBits(vec4<i32>(-13071i, u_input.b.x, -10547i, u_input.a))), select(u_input.e, ~firstLeadingBit(u_input.e), !vec4<bool>(global2.a.x, false, false, global3[_wgslsmith_index_u32(21576u, 14u)])), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global1[_wgslsmith_index_u32(u_input.d.x, 7u)] - global1[_wgslsmith_index_u32(u_input.d.x, 7u)]))))));
    return _wgslsmith_add_i32(var_0.e.b.x, reverseBits(-2957i));
}

fn func_4(arg_0: i32, arg_1: vec4<i32>, arg_2: Struct_3, arg_3: vec4<bool>) -> f32 {
    global1 = array<vec2<f32>, 7>();
    let var_0 = Struct_1((-_wgslsmith_dot_vec2_i32(arg_1.zx, u_input.b) >= firstLeadingBit(2147483647i)) || true, abs(-vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-28493i, arg_0), vec2<i32>(0i, -55177i)), firstLeadingBit(-8372i), u_input.a | -2711i, u_input.c)), vec4<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.e.x, 11736u), u_input.e.wy), 9644u | _wgslsmith_add_u32(u_input.d.x, u_input.d.x), 31976u, u_input.e.x ^ 1u), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(~22688u, _wgslsmith_dot_vec4_u32(vec4<u32>(15468u, u_input.e.x, 24958u, 71418u), vec4<u32>(1u, u_input.d.x, u_input.e.x, u_input.e.x))), 7u)]) * _wgslsmith_f_op_vec2_f32(global1[_wgslsmith_index_u32(u_input.d.x, 7u)] - vec2<f32>(_wgslsmith_f_op_f32(max(-1000f, 471f)), _wgslsmith_f_op_f32(sign(150f))))));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(global1[_wgslsmith_index_u32(18342u, 7u)] - global1[_wgslsmith_index_u32(1u, 7u)]))));
    let var_2 = Struct_3(vec4<bool>(false, false, all(vec4<bool>(any(arg_3.wwz), true, any(vec4<bool>(arg_2.a.x, false, global3[_wgslsmith_index_u32(0u, 14u)], true)), global2.a.x)), !(!(var_0.d.x != var_1.x))));
    var var_3 = vec2<u32>(1u, abs(10399u));
    return -1003f;
}

fn func_2() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(round(-931f)), -1000f, 1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1248f + -1052f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1000f, 682f, global3[_wgslsmith_index_u32(0u, 14u)])))))));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1f)) + _wgslsmith_f_op_f32(func_4(func_3(), _wgslsmith_clamp_vec4_i32(_wgslsmith_mult_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.b.x, u_input.a, -1i, u_input.c), vec4<i32>(2147483647i, -2147483647i, 57280i, u_input.c)), ~vec4<i32>(1i, -2147483647i, u_input.a, u_input.b.x)), vec4<i32>(u_input.b.x, 4480i, _wgslsmith_mod_i32(u_input.c, u_input.a), u_input.a | 56678i), vec4<i32>(select(u_input.b.x, u_input.a, true), -2147483647i, _wgslsmith_clamp_i32(u_input.a, -2147483647i, u_input.c), firstLeadingBit(0i))), Struct_3(global2.a), select(global2.a, select(!vec4<bool>(global3[_wgslsmith_index_u32(u_input.e.x, 14u)], true, global3[_wgslsmith_index_u32(30502u, 14u)], true), !global2.a, vec4<bool>(global2.a.x, global2.a.x, true, global2.a.x)), global3[_wgslsmith_index_u32((4294967295u ^ u_input.e.x) & 1u, 14u)]))));
    var var_2 = Struct_2(107002u, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(u_input.e, ~u_input.e), 7u)], global2.a.zxy, _wgslsmith_dot_vec4_u32(u_input.e, vec4<u32>(~4294967295u, reverseBits(u_input.e.x), abs(40182u << (u_input.e.x % 32u)), firstTrailingBit(~u_input.d.x))), Struct_1(!global2.a.x, abs(vec4<i32>(0i, abs(54047i), _wgslsmith_clamp_i32(-28375i, u_input.c, 18912i), _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 52600i, u_input.a, 0i), vec4<i32>(u_input.b.x, -5960i, 0i, u_input.c)))), u_input.e, vec2<f32>(var_1, var_1)));
    let var_3 = var_2.d;
    global2 = Struct_3(global2.a);
    return Struct_1(true, abs(var_2.e.b), _wgslsmith_sub_vec4_u32(countOneBits(~u_input.e << (select(vec4<u32>(0u, 42249u, var_2.e.c.x, u_input.e.x), vec4<u32>(30281u, var_2.a, u_input.e.x, var_2.e.c.x), false) % vec4<u32>(32u))), var_2.e.c), vec2<f32>(var_2.e.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -244f) - 1000f)));
}

fn func_5(arg_0: Struct_1, arg_1: vec2<u32>) -> Struct_3 {
    let var_0 = false;
    let var_1 = select(vec4<bool>(arg_0.a, arg_0.d.x == _wgslsmith_f_op_f32(f32(-1f) * -192f), global2.a.x, global3[_wgslsmith_index_u32(4294967295u ^ arg_1.x, 14u)]), select(select(vec4<bool>(!arg_0.a, !arg_0.a, global2.a.x, !var_0), select(select(vec4<bool>(arg_0.a, global3[_wgslsmith_index_u32(1931u, 14u)], global3[_wgslsmith_index_u32(28590u, 14u)], true), global2.a, vec4<bool>(var_0, true, var_0, true)), global2.a, !global2.a), global2.a), select(select(!global2.a, select(vec4<bool>(true, global2.a.x, global2.a.x, global2.a.x), global2.a, vec4<bool>(global2.a.x, true, var_0, false)), !vec4<bool>(arg_0.a, true, true, arg_0.a)), select(select(global2.a, global2.a, global2.a), vec4<bool>(arg_0.a, global3[_wgslsmith_index_u32(u_input.d.x, 14u)], true, arg_0.a), select(vec4<bool>(true, true, false, true), vec4<bool>(arg_0.a, global2.a.x, true, global3[_wgslsmith_index_u32(4294967295u, 14u)]), vec4<bool>(true, false, false, global2.a.x))), vec4<bool>(false, arg_0.a, all(vec3<bool>(arg_0.a, arg_0.a, false)), true)), true), select(vec4<bool>(true, true, !global3[_wgslsmith_index_u32(u_input.d.x, 14u)] || global3[_wgslsmith_index_u32(u_input.e.x, 14u)], any(vec4<bool>(arg_0.a, arg_0.a, arg_0.a, global2.a.x))), vec4<bool>(!arg_0.a, all(vec2<bool>(true, arg_0.a)), false, any(!global2.a.zx)), global2.a));
    global2 = Struct_3(vec4<bool>(!var_0, true, false, !(-292f != arg_0.d.x)));
    var var_2 = vec3<u32>(1u, _wgslsmith_sub_u32(min(_wgslsmith_mod_u32(19096u >> (arg_1.x % 32u), ~28740u), countOneBits(~12959u)), arg_0.c.x), 0u);
    let var_3 = Struct_4(Struct_2(var_2.x, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(654f, arg_0.d.x)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1130f, arg_0.d.x) - _wgslsmith_f_op_vec2_f32(vec2<f32>(1170f, -236f) + vec2<f32>(-117f, -586f))), vec2<bool>(all(vec4<bool>(var_1.x, global2.a.x, true, true)), !var_1.x))), global2.a.yzy, ~(~(~arg_1.x)), func_2()), true, vec2<bool>(false, all(vec3<bool>(false, all(vec3<bool>(true, true, var_1.x)), false))), Struct_2(_wgslsmith_dot_vec4_u32(vec4<u32>(~u_input.e.x, abs(arg_0.c.x), max(arg_0.c.x, arg_0.c.x), countOneBits(1u)), ~_wgslsmith_clamp_vec4_u32(arg_0.c, u_input.e, u_input.e)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1198f, _wgslsmith_f_op_f32(sign(arg_0.d.x)))), select(!var_1.wyx, !vec3<bool>(false, var_0, true), var_1.x), _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.e.x, u_input.e.x), func_2().c.ww), ~u_input.e.x), Struct_1(true, vec4<i32>(_wgslsmith_clamp_i32(-1i, 1i, u_input.b.x), i32(-1i) * -1i, _wgslsmith_add_i32(u_input.b.x, arg_0.b.x), -1i), vec4<u32>(_wgslsmith_div_u32(11210u, 1u), ~10580u, arg_0.c.x, abs(u_input.e.x)), global1[_wgslsmith_index_u32(18163u, 7u)])));
    return Struct_3(global2.a);
}

fn func_1(arg_0: vec4<u32>) -> Struct_2 {
    let var_0 = u_input.a;
    var var_1 = func_5(func_2(), _wgslsmith_sub_vec2_u32(min(vec2<u32>(arg_0.x, max(u_input.d.x, u_input.e.x)), vec2<u32>(1u, u_input.e.x)), ~abs(vec2<u32>(u_input.e.x, 50539u))));
    global3 = array<bool, 14>();
    global2 = Struct_3(!func_5(Struct_1(global3[_wgslsmith_index_u32(68926u, 14u)], -vec4<i32>(-10349i, -3027i, var_0, u_input.c), func_2().c, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-308f, 1465f))), arg_0.yw).a);
    global1 = array<vec2<f32>, 7>();
    return Struct_2(arg_0.x, _wgslsmith_f_op_vec2_f32(-global1[_wgslsmith_index_u32(80322u, 7u)]), vec3<bool>(all(var_1.a.zww) | (any(vec3<bool>(var_1.a.x, false, false)) | false), !global2.a.x, global3[_wgslsmith_index_u32(u_input.d.x, 14u)]), _wgslsmith_add_u32(~(~u_input.e.x), ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.e.x, 19695u, 48626u, 33985u), ~vec4<u32>(u_input.e.x, arg_0.x, u_input.e.x, arg_0.x))), Struct_1(false, _wgslsmith_sub_vec4_i32(reverseBits(vec4<i32>(var_0, 2147483647i, -13792i, 3751i)) >> (arg_0 % vec4<u32>(32u)), ~vec4<i32>(u_input.c, -24849i, -2147483647i, u_input.c)), ~vec4<u32>(_wgslsmith_mult_u32(u_input.e.x, 0u), select(10920u, 1u, false), 15274u, arg_0.x), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(168f, 445f)) - _wgslsmith_f_op_f32(572f + -314f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(-2331f - 421f)))));
}

fn func_6(arg_0: Struct_4) -> StorageBuffer {
    var var_0 = arg_0.a.e.b.x;
    let var_1 = !global2.a.x;
    global1 = array<vec2<f32>, 7>();
    let var_2 = func_2();
    let var_3 = ~(~abs(vec3<i32>(func_1(vec4<u32>(72810u, 38948u, 38379u, 0u)).e.b.x, 1i, i32(-1i) * -10970i)));
    return StorageBuffer(_wgslsmith_mod_vec3_i32(abs(-(~arg_0.a.e.b.zyw)), vec3<i32>(abs(2147483647i), -33526i | func_3(), _wgslsmith_dot_vec3_i32(abs(vec3<i32>(u_input.c, var_3.x, var_3.x)), -vec3<i32>(var_3.x, -1i, -20528i)))), arg_0.a.e.d.x, _wgslsmith_div_u32(8115u, ~(var_2.c.x | (u_input.e.x | 4294967295u))), ~arg_0.d.d, u_input.e.zyx);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_6(Struct_4(func_1(vec4<u32>(41486u, 1732u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.e.x, u_input.d.x), vec2<u32>(u_input.e.x, 4294967295u)), u_input.d.x)), any(global2.a.wx), global2.a.zx, func_1(u_input.e)));
}

