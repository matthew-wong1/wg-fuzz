struct Struct_1 {
    a: bool,
    b: bool,
    c: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: vec3<bool>,
    d: i32,
    e: i32,
}

struct Struct_3 {
    a: bool,
    b: u32,
    c: Struct_2,
    d: vec4<u32>,
}

struct Struct_4 {
    a: i32,
    b: bool,
    c: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 21> = array<i32, 21>(0i, -26503i, i32(-2147483648), -8568i, i32(-2147483648), i32(-2147483648), 19943i, 1i, i32(-2147483648), 0i, 0i, 1i, 28000i, 1i, 0i, i32(-2147483648), -48799i, -30344i, 1i, 1i, i32(-2147483648));

var<private> global1: Struct_4 = Struct_4(0i, false, 2126f);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
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

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool, arg_1: vec4<u32>, arg_2: bool) -> i32 {
    var var_0 = vec2<bool>(all(select(select(select(vec4<bool>(false, true, arg_2, arg_0), vec4<bool>(true, false, false, true), arg_2), select(vec4<bool>(arg_0, true, global1.b, arg_0), vec4<bool>(false, arg_2, arg_2, arg_2), false), any(vec3<bool>(false, arg_0, arg_0))), select(vec4<bool>(arg_2, true, true, global1.b), select(vec4<bool>(global1.b, false, true, global1.b), vec4<bool>(arg_2, true, true, arg_2), false), all(vec3<bool>(false, arg_2, arg_0))), true)), any(vec3<bool>(!all(vec3<bool>(global1.b, false, false)), true, true)));
    var var_1 = Struct_2(Struct_1(true, global1.b, firstLeadingBit(vec4<i32>(38740i, global0[_wgslsmith_index_u32(1u, 21u)] & -69304i, -2147483647i, _wgslsmith_mult_i32(u_input.a, global0[_wgslsmith_index_u32(arg_1.x, 21u)])))), select(vec4<bool>(arg_0, false, false, arg_0 && var_0.x), select(select(select(vec4<bool>(global1.b, false, false, var_0.x), vec4<bool>(var_0.x, false, false, true), true), select(vec4<bool>(arg_2, true, false, true), vec4<bool>(global1.b, false, global1.b, true), vec4<bool>(false, true, arg_0, global1.b)), vec4<bool>(global1.b, arg_2, false, false)), vec4<bool>(any(vec2<bool>(global1.b, arg_0)), true, global1.b, false), !select(vec4<bool>(false, true, false, global1.b), vec4<bool>(arg_0, true, arg_2, false), vec4<bool>(global1.b, arg_2, true, var_0.x))), !select(vec4<bool>(false, var_0.x, arg_0, true), select(vec4<bool>(global1.b, true, false, false), vec4<bool>(true, var_0.x, arg_0, arg_2), var_0.x), !arg_0)), vec3<bool>(arg_0, any(select(vec4<bool>(arg_0, true, false, false), vec4<bool>(arg_2, arg_2, arg_0, true), all(vec2<bool>(arg_2, false)))), true), firstTrailingBit(abs(~_wgslsmith_div_i32(-1144i, -23383i))), _wgslsmith_div_i32(-_wgslsmith_dot_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(arg_1.x, 21u)], u_input.a), vec2<i32>(-19713i, -1i)) << (arg_1.x % 32u), -global0[_wgslsmith_index_u32(~(arg_1.x ^ 0u), 21u)]));
    global0 = array<i32, 21>();
    global0 = array<i32, 21>();
    global0 = array<i32, 21>();
    return global0[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_mod_u32(_wgslsmith_sub_u32(arg_1.x ^ arg_1.x, ~5205u) & min(4294967295u, _wgslsmith_div_u32(35362u, arg_1.x)), select(_wgslsmith_dot_vec2_u32(arg_1.zw, vec2<u32>(14713u, 85834u) << (arg_1.wy % vec2<u32>(32u))), ~arg_1.x, _wgslsmith_f_op_f32(-1348f - global1.c) <= -511f))), 21u)];
}

fn func_2(arg_0: vec2<f32>) -> i32 {
    global0 = array<i32, 21>();
    global1 = Struct_4(_wgslsmith_add_i32(-u_input.a | countOneBits(~global0[_wgslsmith_index_u32(4294967295u, 21u)]), 1i), select(any(vec4<bool>(global1.b, global1.b, true, !global1.b)), global1.b | (u_input.a > _wgslsmith_clamp_i32(global0[_wgslsmith_index_u32(106668u, 21u)], 27025i, 0i)), !global1.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.c))));
    var var_0 = Struct_1(false, global1.b, _wgslsmith_mod_vec4_i32(~(-(vec4<i32>(-2147483647i, global1.a, -2147483647i, global0[_wgslsmith_index_u32(35888u, 21u)]) & vec4<i32>(-1i, global0[_wgslsmith_index_u32(0u, 21u)], global1.a, global0[_wgslsmith_index_u32(25347u, 21u)]))), vec4<i32>(global1.a >> (_wgslsmith_div_u32(1u, 55638u) % 32u), ~38321i, reverseBits(2147483647i) & countOneBits(global0[_wgslsmith_index_u32(1u, 21u)]), select(global1.a, _wgslsmith_sub_i32(3036i, u_input.a), u_input.a >= 119i))));
    var_0 = Struct_1(func_3(var_0.a, vec4<u32>(~80693u, _wgslsmith_div_u32(84742u, 4294967295u), _wgslsmith_div_u32(67204u, 10115u), ~0u), global1.b) <= abs(firstTrailingBit(1i)), true | any(vec4<bool>(var_0.a, true, false, var_0.a)), vec4<i32>(firstLeadingBit(min(global0[_wgslsmith_index_u32(1u, 21u)], -2147483647i)), u_input.a, 2214i, max(countOneBits(select(20855i, 31435i, false)), _wgslsmith_dot_vec2_i32(var_0.c.yx, _wgslsmith_clamp_vec2_i32(var_0.c.wx, var_0.c.ww, vec2<i32>(var_0.c.x, global1.a))))));
    var var_1 = Struct_3(!(true && global1.b), 8746u, Struct_2(Struct_1(false, global1.b, vec4<i32>(abs(-1i), 1i, 0i, -2147483647i)), !vec4<bool>(true, all(vec2<bool>(var_0.b, var_0.b)), var_0.b, true), vec3<bool>(-896f >= _wgslsmith_f_op_f32(arg_0.x + 333f), var_0.a, all(select(vec3<bool>(var_0.b, global1.b, var_0.a), vec3<bool>(global1.b, global1.b, true), vec3<bool>(false, var_0.b, global1.b)))), global1.a >> (min(1u, ~0u) % 32u), ~_wgslsmith_dot_vec2_i32(vec2<i32>(global1.a, u_input.a), ~var_0.c.yx)), _wgslsmith_mult_vec4_u32(~vec4<u32>(1u, ~0u, reverseBits(25309u), 1u), _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u), ~(~vec4<u32>(4294967295u, 3830u, 69333u, 1u)))));
    return u_input.a;
}

fn func_1(arg_0: Struct_2) -> Struct_4 {
    global0 = array<i32, 21>();
    global0 = array<i32, 21>();
    global1 = Struct_4(_wgslsmith_dot_vec4_i32(arg_0.a.c, abs(select(abs(vec4<i32>(-25621i, arg_0.d, global0[_wgslsmith_index_u32(34113u, 21u)], global1.a)), -arg_0.a.c, !arg_0.b))), !(func_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.c, -1514f) * vec2<f32>(global1.c, -435f))) > global0[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_mod_u32(4294967295u, 4294967295u)), 21u)]), _wgslsmith_f_op_f32(global1.c + 1469f));
    let var_0 = global1.c;
    let var_1 = vec4<bool>(all(vec3<bool>(true, false, 226f < _wgslsmith_f_op_f32(trunc(-1055f)))), false || arg_0.a.a, true, true);
    return Struct_4(_wgslsmith_mult_i32(global1.a, arg_0.a.c.x), true, _wgslsmith_f_op_f32(-global1.c));
}

fn func_4(arg_0: Struct_4, arg_1: Struct_2, arg_2: f32, arg_3: Struct_2) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-global1.c), _wgslsmith_f_op_f32(-arg_2)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.c, arg_2) + vec2<f32>(arg_0.c, -1425f))), !(!arg_1.b.zz))) - vec2<f32>(arg_0.c, global1.c)));
    let var_1 = Struct_3(select(true, all(vec3<bool>(global1.b, global1.b, arg_1.a.a)) && (!arg_1.a.a != (arg_3.a.b || false)), any(select(vec4<bool>(true, arg_0.b, true, arg_3.c.x), vec4<bool>(arg_1.a.a, false, arg_1.b.x, arg_1.a.b), select(vec4<bool>(false, true, true, true), arg_3.b, vec4<bool>(arg_3.c.x, arg_0.b, true, global1.b))))), _wgslsmith_div_u32(~(~_wgslsmith_mult_u32(78976u, 0u)), abs(4294967295u)), arg_1, vec4<u32>(1u, _wgslsmith_sub_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 54844u, 60803u), vec3<u32>(1u, 0u, 0u)), max(4294967295u, 31263u)), 1u), 0u, ~_wgslsmith_mult_u32(max(8763u, 1u), _wgslsmith_mod_u32(28287u, 1u))));
    let var_2 = vec2<bool>(false, !(false | !any(vec4<bool>(arg_0.b, true, false, true))));
    global1 = Struct_4(25307i, !(-39000i >= (~var_1.c.e ^ arg_0.a)), arg_2);
    var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -102f)), func_1(Struct_2(Struct_1(false, !arg_1.c.x, firstTrailingBit(var_1.c.a.c)), select(!vec4<bool>(global1.b, global1.b, var_2.x, arg_0.b), arg_1.b, !arg_3.b.x), vec3<bool>(true, var_1.c.c.x, false), _wgslsmith_dot_vec4_i32(-arg_3.a.c, max(vec4<i32>(-2147483647i, 1i, -2147483647i, arg_0.a), vec4<i32>(var_1.c.a.c.x, global0[_wgslsmith_index_u32(0u, 21u)], global0[_wgslsmith_index_u32(42072u, 21u)], global0[_wgslsmith_index_u32(var_1.b, 21u)]))), -1i ^ -arg_1.e)).c);
    return arg_3;
}

fn func_5(arg_0: Struct_2, arg_1: i32) -> Struct_1 {
    let var_0 = arg_0.c.yy;
    var var_1 = Struct_3(arg_0.a.a || all(vec2<bool>(select(true, global1.b, arg_0.b.x), func_1(arg_0).b)), ~(~min(_wgslsmith_div_u32(1u, 4294967295u), ~0u)), arg_0, max(_wgslsmith_mult_vec4_u32(~(~vec4<u32>(78796u, 0u, 16889u, 18969u)), vec4<u32>(firstTrailingBit(4294967295u), 1u, 0u, 1u)), reverseBits(firstTrailingBit(vec4<u32>(26892u, 17920u, 1u, 20837u)))));
    var var_2 = !func_4(Struct_4(_wgslsmith_div_i32(global1.a, reverseBits(global0[_wgslsmith_index_u32(45542u, 21u)])), true, -679f), Struct_2(arg_0.a, vec4<bool>(true, !global1.b, !global1.b, false), !vec3<bool>(global1.b, var_1.a, arg_0.b.x), func_3(true, _wgslsmith_div_vec4_u32(vec4<u32>(1u, var_1.b, var_1.b, 0u), vec4<u32>(4294967295u, var_1.b, var_1.d.x, var_1.d.x)), true), -(global1.a | global1.a)), -1000f, var_1.c).c;
    var var_3 = var_1.d.wz;
    var var_4 = Struct_3(!(!(global1.c < 328f)), _wgslsmith_add_u32(~_wgslsmith_mult_u32(1u, 20882u), ~(~var_1.b)) & abs(86114u), Struct_2(arg_0.a, !arg_0.b, select(!(!arg_0.b.wwz), !arg_0.c, var_2.x), _wgslsmith_mult_i32(_wgslsmith_add_i32(min(var_1.c.d, -16604i), _wgslsmith_sub_i32(arg_0.a.c.x, -46832i)), arg_1), global0[_wgslsmith_index_u32(2635u >> (_wgslsmith_clamp_u32(1u, abs(var_3.x), 0u) % 32u), 21u)]), var_1.d);
    return var_1.c.a;
}

fn func_6(arg_0: i32, arg_1: Struct_1, arg_2: u32, arg_3: vec4<f32>) -> Struct_4 {
    var var_0 = _wgslsmith_add_i32(i32(-1i) * -_wgslsmith_dot_vec4_i32(arg_1.c, arg_1.c & arg_1.c), -2147483647i);
    let var_1 = _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global1.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1297f - global1.c) - _wgslsmith_f_op_f32(f32(-1f) * -1489f)) * _wgslsmith_f_op_f32(-arg_3.x)), -1000f, arg_3.x)));
    let var_2 = ~_wgslsmith_dot_vec4_u32(~(_wgslsmith_mod_vec4_u32(vec4<u32>(8223u, 35884u, 0u, arg_2), vec4<u32>(arg_2, 15372u, arg_2, arg_2)) >> (vec4<u32>(0u, 69198u, 66552u, arg_2) % vec4<u32>(32u))), ~(~firstTrailingBit(vec4<u32>(4294967295u, 0u, 24624u, 0u))));
    var_0 = arg_0;
    var var_3 = func_4(Struct_4(1i, (!arg_1.b && false) != true, _wgslsmith_div_f32(-1378f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(348f * var_1.x))))), func_4(Struct_4(_wgslsmith_div_i32(func_4(Struct_4(23168i, arg_1.b, -929f), Struct_2(Struct_1(false, true, vec4<i32>(arg_0, 44786i, 1i, global1.a)), vec4<bool>(false, false, global1.b, arg_1.a), vec3<bool>(false, arg_1.b, false), global1.a, 1i), arg_3.x, Struct_2(arg_1, vec4<bool>(false, global1.b, global1.b, global1.b), vec3<bool>(arg_1.a, true, false), -52335i, -1i)).e, ~arg_0), arg_1.a, global1.c), Struct_2(Struct_1(global1.b | arg_1.b, global1.b, _wgslsmith_clamp_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(var_2, 21u)], 2147483647i, arg_0, u_input.a), arg_1.c, vec4<i32>(arg_0, u_input.a, arg_0, -2147483647i))), !func_4(Struct_4(5975i, global1.b, -1000f), Struct_2(arg_1, vec4<bool>(true, global1.b, true, true), vec3<bool>(global1.b, arg_1.a, global1.b), 38976i, 26865i), 1000f, Struct_2(Struct_1(arg_1.b, false, arg_1.c), vec4<bool>(global1.b, true, arg_1.a, false), vec3<bool>(global1.b, arg_1.b, global1.b), global1.a, 85188i)).b, !(!vec3<bool>(global1.b, false, false)), -11047i, 9160i), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-860f - var_1.x))))), Struct_2(arg_1, select(func_4(Struct_4(2147483647i, false, 2001f), Struct_2(Struct_1(true, global1.b, arg_1.c), vec4<bool>(true, false, false, global1.b), vec3<bool>(global1.b, true, arg_1.b), global1.a, global0[_wgslsmith_index_u32(var_2, 21u)]), var_1.x, Struct_2(Struct_1(true, false, arg_1.c), vec4<bool>(true, global1.b, false, true), vec3<bool>(global1.b, global1.b, true), 47158i, 1i)).b, func_4(Struct_4(28880i, arg_1.a, global1.c), Struct_2(Struct_1(false, false, arg_1.c), vec4<bool>(false, true, global1.b, global1.b), vec3<bool>(arg_1.b, true, global1.b), global1.a, 55284i), global1.c, Struct_2(Struct_1(arg_1.b, global1.b, vec4<i32>(global0[_wgslsmith_index_u32(4294967295u, 21u)], global1.a, 0i, 11103i)), vec4<bool>(arg_1.b, global1.b, true, global1.b), vec3<bool>(true, false, global1.b), 0i, 2147483647i)).b, any(vec4<bool>(true, global1.b, arg_1.a, false))), func_4(func_1(Struct_2(arg_1, vec4<bool>(global1.b, global1.b, false, global1.b), vec3<bool>(global1.b, global1.b, arg_1.b), 1i, global0[_wgslsmith_index_u32(6454u, 21u)])), Struct_2(Struct_1(true, true, vec4<i32>(global1.a, -2147483647i, 32933i, u_input.a)), vec4<bool>(arg_1.a, global1.b, arg_1.a, global1.b), vec3<bool>(global1.b, arg_1.b, false), 2147483647i, 2147483647i), _wgslsmith_div_f32(543f, global1.c), func_4(Struct_4(arg_1.c.x, arg_1.a, -667f), Struct_2(Struct_1(arg_1.b, global1.b, vec4<i32>(76158i, 0i, -2147483647i, arg_0)), vec4<bool>(arg_1.b, global1.b, global1.b, global1.b), vec3<bool>(true, arg_1.b, true), -23835i, arg_1.c.x), global1.c, Struct_2(Struct_1(true, arg_1.b, arg_1.c), vec4<bool>(global1.b, false, false, false), vec3<bool>(arg_1.a, false, true), arg_0, arg_0))).b.wyw, u_input.a, ~_wgslsmith_dot_vec2_i32(arg_1.c.yw, arg_1.c.yz))), -1436f, Struct_2(arg_1, vec4<bool>(global1.b, false, false, true), vec3<bool>(!global1.b, all(!vec4<bool>(global1.b, false, global1.b, global1.b)), !(!global1.b)), _wgslsmith_div_i32(~_wgslsmith_sub_i32(u_input.a, -14977i), arg_1.c.x), func_1(Struct_2(arg_1, vec4<bool>(true, arg_1.b, true, arg_1.a), !vec3<bool>(true, false, arg_1.a), arg_0 & arg_0, -60249i)).a)).a;
    return func_1(Struct_2(func_5(Struct_2(arg_1, func_4(Struct_4(arg_1.c.x, false, var_1.x), Struct_2(arg_1, vec4<bool>(var_3.b, true, false, arg_1.b), vec3<bool>(global1.b, false, var_3.a), var_3.c.x, arg_1.c.x), arg_3.x, Struct_2(arg_1, vec4<bool>(global1.b, false, false, arg_1.a), vec3<bool>(true, arg_1.b, global1.b), -38791i, u_input.a)).b, vec3<bool>(true, true, true), firstLeadingBit(u_input.a), arg_0), ~global1.a), vec4<bool>(func_5(func_4(Struct_4(-1i, global1.b, -988f), Struct_2(arg_1, vec4<bool>(true, true, global1.b, arg_1.a), vec3<bool>(var_3.a, true, false), 2977i, -59396i), global1.c, Struct_2(arg_1, vec4<bool>(arg_1.b, arg_1.a, var_3.a, false), vec3<bool>(true, var_3.b, global1.b), 0i, 2147483647i)), abs(u_input.a)).b, true, !var_3.a, true), !func_4(Struct_4(-44430i, global1.b, global1.c), func_4(Struct_4(0i, var_3.a, -941f), Struct_2(Struct_1(true, var_3.b, vec4<i32>(14379i, var_3.c.x, global1.a, 0i)), vec4<bool>(false, false, false, var_3.b), vec3<bool>(true, global1.b, global1.b), global1.a, arg_0), arg_3.x, Struct_2(Struct_1(true, false, var_3.c), vec4<bool>(false, arg_1.b, global1.b, false), vec3<bool>(var_3.b, var_3.a, var_3.a), var_3.c.x, arg_1.c.x)), _wgslsmith_f_op_f32(exp2(var_1.x)), Struct_2(Struct_1(var_3.a, true, var_3.c), vec4<bool>(false, false, false, false), vec3<bool>(false, true, true), -1i, global1.a)).c, -(~(i32(-1i) * -1i)), ~(_wgslsmith_mult_i32(-1i, var_3.c.x) ^ (-17896i >> (var_2 % 32u)))));
}

fn func_7(arg_0: Struct_4, arg_1: f32) -> Struct_4 {
    let var_0 = 1418f;
    let var_1 = func_4(func_1(Struct_2(func_5(func_4(Struct_4(-2147483647i, global1.b, arg_0.c), Struct_2(Struct_1(arg_0.b, true, vec4<i32>(global1.a, 2147483647i, -8461i, global1.a)), vec4<bool>(false, arg_0.b, arg_0.b, false), vec3<bool>(true, false, false), 1i, 2147483647i), arg_1, Struct_2(Struct_1(arg_0.b, false, vec4<i32>(-2147483647i, global1.a, 2147483647i, -49345i)), vec4<bool>(global1.b, false, global1.b, arg_0.b), vec3<bool>(arg_0.b, global1.b, false), 40479i, 16810i)), firstTrailingBit(-1i)), !vec4<bool>(false, global1.b, false, false), vec3<bool>(true, arg_0.b && global1.b, func_5(Struct_2(Struct_1(global1.b, false, vec4<i32>(2147483647i, global0[_wgslsmith_index_u32(41959u, 21u)], arg_0.a, global1.a)), vec4<bool>(false, false, true, true), vec3<bool>(true, arg_0.b, global1.b), global1.a, -41341i), u_input.a).a), arg_0.a, ~0i | (5312i ^ global1.a))), func_4(Struct_4(arg_0.a, global1.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c))), Struct_2(Struct_1(true, true, vec4<i32>(42173i, 1525i, 1i, -2147483647i)), !(!vec4<bool>(true, false, arg_0.b, arg_0.b)), !func_4(arg_0, Struct_2(Struct_1(false, arg_0.b, vec4<i32>(5408i, global1.a, arg_0.a, -4312i)), vec4<bool>(true, arg_0.b, true, false), vec3<bool>(true, false, false), u_input.a, 39053i), arg_1, Struct_2(Struct_1(false, true, vec4<i32>(-32410i, u_input.a, -4897i, arg_0.a)), vec4<bool>(false, true, global1.b, global1.b), vec3<bool>(false, false, global1.b), -25248i, arg_0.a)).b.xyx, _wgslsmith_sub_i32(~global0[_wgslsmith_index_u32(69857u, 21u)], 8479i), _wgslsmith_dot_vec3_i32(vec3<i32>(global1.a, arg_0.a, -85576i), vec3<i32>(46767i, -18343i, global0[_wgslsmith_index_u32(9882u, 21u)])) & _wgslsmith_div_i32(-31444i, global0[_wgslsmith_index_u32(0u, 21u)])), arg_0.c, Struct_2(Struct_1(global1.c <= var_0, !arg_0.b, vec4<i32>(arg_0.a, arg_0.a, global0[_wgslsmith_index_u32(1u, 21u)], global1.a)), vec4<bool>(true, true, true, global1.b), vec3<bool>(true, true, arg_0.b | false), global1.a, global0[_wgslsmith_index_u32(19361u, 21u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(126f))) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_0.c), 1f, global1.b)))), Struct_2(Struct_1(true, false, abs(~vec4<i32>(-1i, global0[_wgslsmith_index_u32(4294967295u, 21u)], 2147483647i, 2069i))), vec4<bool>(!(!global1.b), arg_0.b, var_0 >= _wgslsmith_f_op_f32(global1.c + 934f), global1.b), select(select(vec3<bool>(arg_0.b, false, arg_0.b), vec3<bool>(arg_0.b, global1.b, false), !vec3<bool>(arg_0.b, false, arg_0.b)), !vec3<bool>(false, global1.b, false), true), ((u_input.a & -11867i) << (~62864u % 32u)) ^ 2147483647i, _wgslsmith_add_i32(1004i, (-2147483647i & u_input.a) ^ _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, 2147483647i), vec2<i32>(arg_0.a, -1709i))))).b;
    let var_2 = reverseBits(_wgslsmith_clamp_i32((i32(-1i) * -global1.a) | ((38595i ^ global1.a) ^ _wgslsmith_clamp_i32(global1.a, u_input.a, global1.a)), -30765i, firstTrailingBit(-global0[_wgslsmith_index_u32(90038u, 21u)] | reverseBits(0i))));
    global0 = array<i32, 21>();
    global1 = Struct_4(-291i, all(!var_1.zw) | true, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-func_1(func_4(Struct_4(-20313i, arg_0.b, 627f), Struct_2(Struct_1(var_1.x, global1.b, vec4<i32>(0i, arg_0.a, var_2, -26945i)), var_1, vec3<bool>(arg_0.b, global1.b, false), arg_0.a, -10142i), global1.c, Struct_2(Struct_1(false, global1.b, vec4<i32>(38491i, 2147483647i, global1.a, var_2)), vec4<bool>(arg_0.b, true, true, true), vec3<bool>(global1.b, true, global1.b), 2147483647i, -2147483647i))).c), func_1(Struct_2(func_4(arg_0, Struct_2(Struct_1(true, true, vec4<i32>(global0[_wgslsmith_index_u32(59367u, 21u)], 2147483647i, -22211i, 2147483647i)), var_1, vec3<bool>(arg_0.b, true, true), arg_0.a, global0[_wgslsmith_index_u32(1u, 21u)]), arg_1, Struct_2(Struct_1(true, true, vec4<i32>(-12443i, global0[_wgslsmith_index_u32(1u, 21u)], global1.a, arg_0.a)), var_1, vec3<bool>(false, global1.b, true), 2971i, u_input.a)).a, !vec4<bool>(true, false, global1.b, global1.b), var_1.xxz, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, global0[_wgslsmith_index_u32(54028u, 21u)], var_2, var_2), vec4<i32>(2147483647i, -2147483647i, u_input.a, u_input.a)), 35332i)).c));
    return func_6(min(_wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(-vec3<i32>(var_2, var_2, 1i), vec3<i32>(global0[_wgslsmith_index_u32(108926u, 21u)], var_2, 13131i) << (vec3<u32>(0u, 0u, 14554u) % vec3<u32>(32u))), func_6(16262i, Struct_1(var_1.x, var_1.x, vec4<i32>(u_input.a, global1.a, u_input.a, 2147483647i)), 1u, vec4<f32>(642f, -1005f, 258f, 186f)).a << (countOneBits(0u) % 32u)), 0i), func_4(Struct_4(-1i, var_1.x, global1.c), func_4(arg_0, Struct_2(Struct_1(true, var_1.x, vec4<i32>(arg_0.a, -18932i, global0[_wgslsmith_index_u32(24476u, 21u)], 2147483647i)), var_1, !var_1.zwy, -var_2, reverseBits(u_input.a)), _wgslsmith_f_op_f32(f32(-1f) * -120f), Struct_2(Struct_1(true, false, vec4<i32>(u_input.a, global1.a, 0i, arg_0.a)), func_4(Struct_4(u_input.a, var_1.x, -977f), Struct_2(Struct_1(true, true, vec4<i32>(global0[_wgslsmith_index_u32(0u, 21u)], global1.a, arg_0.a, arg_0.a)), vec4<bool>(global1.b, arg_0.b, true, true), var_1.zwz, u_input.a, u_input.a), var_0, Struct_2(Struct_1(true, true, vec4<i32>(1151i, u_input.a, var_2, -67205i)), var_1, var_1.xyx, -19305i, -1i)).b, select(vec3<bool>(arg_0.b, false, true), vec3<bool>(var_1.x, false, false), vec3<bool>(true, var_1.x, global1.b)), 1i, 1i)), _wgslsmith_f_op_f32(floor(-948f)), func_4(arg_0, func_4(Struct_4(10877i, true, arg_1), func_4(arg_0, Struct_2(Struct_1(global1.b, true, vec4<i32>(arg_0.a, u_input.a, arg_0.a, global0[_wgslsmith_index_u32(66544u, 21u)])), vec4<bool>(arg_0.b, true, true, arg_0.b), vec3<bool>(false, arg_0.b, arg_0.b), 42314i, global1.a), arg_0.c, Struct_2(Struct_1(true, true, vec4<i32>(24879i, var_2, global1.a, arg_0.a)), var_1, vec3<bool>(true, global1.b, arg_0.b), 0i, 23503i)), arg_0.c, Struct_2(Struct_1(false, var_1.x, vec4<i32>(global0[_wgslsmith_index_u32(4294967295u, 21u)], 1i, u_input.a, global0[_wgslsmith_index_u32(37653u, 21u)])), var_1, var_1.www, 1628i, 2147483647i)), _wgslsmith_f_op_f32(f32(-1f) * -376f), func_4(Struct_4(-1i, arg_0.b, arg_1), Struct_2(Struct_1(true, var_1.x, vec4<i32>(-1i, -1i, global0[_wgslsmith_index_u32(0u, 21u)], global0[_wgslsmith_index_u32(1u, 21u)])), var_1, vec3<bool>(true, true, false), u_input.a, 49873i), _wgslsmith_f_op_f32(step(1095f, arg_1)), func_4(arg_0, Struct_2(Struct_1(false, false, vec4<i32>(arg_0.a, -21040i, 66308i, var_2)), var_1, var_1.wzx, -2147483647i, global1.a), 380f, Struct_2(Struct_1(true, global1.b, vec4<i32>(0i, -21365i, -2147483647i, global1.a)), var_1, vec3<bool>(true, global1.b, true), -1i, global0[_wgslsmith_index_u32(16463u, 21u)]))))).a, firstLeadingBit(115684u), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0), arg_1), -1529f, global1.c, _wgslsmith_f_op_f32(-146f - -2028f)))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_7(func_6(select(firstTrailingBit(u_input.a >> (0u % 32u)), _wgslsmith_div_i32(1i, global1.a), true), func_5(func_4(func_1(Struct_2(Struct_1(true, global1.b, vec4<i32>(u_input.a, -48709i, global0[_wgslsmith_index_u32(22425u, 21u)], 13773i)), vec4<bool>(global1.b, true, true, global1.b), vec3<bool>(global1.b, true, global1.b), global1.a, -2147483647i)), Struct_2(Struct_1(false, global1.b, vec4<i32>(2147483647i, global0[_wgslsmith_index_u32(1u, 21u)], global0[_wgslsmith_index_u32(13162u, 21u)], global0[_wgslsmith_index_u32(24282u, 21u)])), vec4<bool>(false, false, true, global1.b), vec3<bool>(true, global1.b, global1.b), 37681i, 19233i), _wgslsmith_f_op_f32(-729f * 744f), Struct_2(Struct_1(false, global1.b, vec4<i32>(global0[_wgslsmith_index_u32(4294967295u, 21u)], global1.a, -1i, 17283i)), vec4<bool>(global1.b, true, false, false), vec3<bool>(global1.b, global1.b, false), global1.a, 2147483647i)), max(func_2(vec2<f32>(global1.c, global1.c)), -global1.a)), ~1u, vec4<f32>(func_1(func_4(Struct_4(-2147483647i, global1.b, global1.c), Struct_2(Struct_1(false, global1.b, vec4<i32>(global0[_wgslsmith_index_u32(16007u, 21u)], -1i, -1i, 1i)), vec4<bool>(global1.b, global1.b, true, global1.b), vec3<bool>(false, global1.b, false), u_input.a, u_input.a), global1.c, Struct_2(Struct_1(false, global1.b, vec4<i32>(global0[_wgslsmith_index_u32(4294967295u, 21u)], 12540i, -2147483647i, global1.a)), vec4<bool>(global1.b, global1.b, global1.b, global1.b), vec3<bool>(true, false, global1.b), global1.a, -2147483647i))).c, _wgslsmith_f_op_f32(select(-133f, 1000f, true)), -1918f, global1.c)), 1205f);
    let var_0 = func_4(Struct_4(~global1.a, true, -1141f), Struct_2(Struct_1(global1.b, func_5(Struct_2(Struct_1(true, global1.b, vec4<i32>(-1i, global0[_wgslsmith_index_u32(12013u, 21u)], global1.a, global1.a)), vec4<bool>(false, global1.b, global1.b, true), vec3<bool>(true, global1.b, global1.b), 27189i, -1i), _wgslsmith_clamp_i32(u_input.a, -1i, u_input.a)).a, -(~vec4<i32>(10494i, u_input.a, global1.a, global0[_wgslsmith_index_u32(56073u, 21u)]))), !(!vec4<bool>(global1.b, global1.b, global1.b, false)), func_4(func_6(u_input.a, func_5(Struct_2(Struct_1(global1.b, global1.b, vec4<i32>(u_input.a, 0i, -8360i, 2147483647i)), vec4<bool>(global1.b, true, false, global1.b), vec3<bool>(false, true, global1.b), -2147483647i, global0[_wgslsmith_index_u32(1u, 21u)]), global1.a), 36421u, vec4<f32>(126f, global1.c, global1.c, global1.c)), func_4(Struct_4(global1.a, true, global1.c), func_4(Struct_4(-2147483647i, true, 2317f), Struct_2(Struct_1(global1.b, true, vec4<i32>(global0[_wgslsmith_index_u32(14743u, 21u)], -10023i, 63360i, 31130i)), vec4<bool>(global1.b, global1.b, global1.b, false), vec3<bool>(global1.b, global1.b, true), global0[_wgslsmith_index_u32(16716u, 21u)], 2147483647i), global1.c, Struct_2(Struct_1(global1.b, global1.b, vec4<i32>(global0[_wgslsmith_index_u32(4294967295u, 21u)], 8018i, -2147483647i, 1i)), vec4<bool>(false, false, true, global1.b), vec3<bool>(false, global1.b, global1.b), u_input.a, -2147483647i)), _wgslsmith_f_op_f32(trunc(496f)), func_4(Struct_4(-5032i, false, -797f), Struct_2(Struct_1(true, global1.b, vec4<i32>(global0[_wgslsmith_index_u32(1u, 21u)], 2147483647i, 0i, global1.a)), vec4<bool>(true, global1.b, global1.b, true), vec3<bool>(true, true, false), 19475i, 7663i), global1.c, Struct_2(Struct_1(global1.b, global1.b, vec4<i32>(global0[_wgslsmith_index_u32(42400u, 21u)], -10155i, u_input.a, global0[_wgslsmith_index_u32(1u, 21u)])), vec4<bool>(global1.b, global1.b, global1.b, global1.b), vec3<bool>(global1.b, global1.b, true), u_input.a, global1.a))), func_6(~1881i, Struct_1(global1.b, global1.b, vec4<i32>(global1.a, 32519i, 2147483647i, -2147483647i)), ~4431u, _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global1.c, -1111f, -1000f, global1.c)))).c, func_4(Struct_4(global1.a, global1.b, global1.c), func_4(Struct_4(global1.a, global1.b, global1.c), Struct_2(Struct_1(false, true, vec4<i32>(-2147483647i, global1.a, 1i, global1.a)), vec4<bool>(false, true, false, true), vec3<bool>(false, global1.b, true), -1i, u_input.a), global1.c, Struct_2(Struct_1(global1.b, true, vec4<i32>(5799i, 0i, global1.a, global0[_wgslsmith_index_u32(1u, 21u)])), vec4<bool>(false, global1.b, global1.b, global1.b), vec3<bool>(global1.b, false, global1.b), global1.a, u_input.a)), _wgslsmith_f_op_f32(-global1.c), func_4(Struct_4(global1.a, true, -113f), Struct_2(Struct_1(false, global1.b, vec4<i32>(-9777i, global0[_wgslsmith_index_u32(67662u, 21u)], global1.a, -11501i)), vec4<bool>(true, false, false, false), vec3<bool>(global1.b, true, false), global1.a, 2341i), global1.c, Struct_2(Struct_1(global1.b, true, vec4<i32>(global0[_wgslsmith_index_u32(1u, 21u)], global1.a, 30742i, global0[_wgslsmith_index_u32(4294967295u, 21u)])), vec4<bool>(global1.b, false, true, true), vec3<bool>(global1.b, false, false), -1i, global1.a)))).c, global1.a, 0i), global1.c, func_4(func_6(~(~2147483647i), func_4(func_1(Struct_2(Struct_1(true, global1.b, vec4<i32>(21334i, global0[_wgslsmith_index_u32(4294967295u, 21u)], u_input.a, 0i)), vec4<bool>(false, true, false, false), vec3<bool>(global1.b, false, global1.b), 1i, 56047i)), Struct_2(Struct_1(true, global1.b, vec4<i32>(global1.a, u_input.a, global0[_wgslsmith_index_u32(34759u, 21u)], -16941i)), vec4<bool>(false, global1.b, true, global1.b), vec3<bool>(global1.b, global1.b, global1.b), global0[_wgslsmith_index_u32(0u, 21u)], u_input.a), -533f, Struct_2(Struct_1(true, global1.b, vec4<i32>(global1.a, -47444i, global0[_wgslsmith_index_u32(71965u, 21u)], u_input.a)), vec4<bool>(false, true, global1.b, true), vec3<bool>(global1.b, false, global1.b), global1.a, u_input.a)).a, 4294967295u, vec4<f32>(_wgslsmith_f_op_f32(1249f * 1811f), global1.c, global1.c, global1.c)), Struct_2(Struct_1(!global1.b, true, -vec4<i32>(u_input.a, global1.a, -1i, u_input.a)), vec4<bool>(global1.b, global1.b, false, true), func_4(Struct_4(1i, false, 615f), func_4(Struct_4(global1.a, true, -144f), Struct_2(Struct_1(global1.b, global1.b, vec4<i32>(global1.a, u_input.a, -2147483647i, u_input.a)), vec4<bool>(false, global1.b, global1.b, global1.b), vec3<bool>(false, global1.b, false), 4422i, global0[_wgslsmith_index_u32(30219u, 21u)]), global1.c, Struct_2(Struct_1(false, global1.b, vec4<i32>(2147483647i, global0[_wgslsmith_index_u32(1u, 21u)], -2147483647i, global1.a)), vec4<bool>(false, global1.b, global1.b, false), vec3<bool>(false, global1.b, false), global0[_wgslsmith_index_u32(38584u, 21u)], global1.a)), -403f, func_4(Struct_4(u_input.a, false, global1.c), Struct_2(Struct_1(global1.b, true, vec4<i32>(55i, u_input.a, 24080i, -2147483647i)), vec4<bool>(global1.b, global1.b, global1.b, false), vec3<bool>(true, true, false), 64281i, 0i), global1.c, Struct_2(Struct_1(global1.b, global1.b, vec4<i32>(1i, 1i, global1.a, u_input.a)), vec4<bool>(global1.b, global1.b, global1.b, global1.b), vec3<bool>(true, false, global1.b), 1i, u_input.a))).c, global0[_wgslsmith_index_u32(~1u, 21u)] & (-2147483647i & global1.a), ~(-34989i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1427f, -226f)))), Struct_2(func_5(Struct_2(Struct_1(global1.b, true, vec4<i32>(global1.a, 0i, global0[_wgslsmith_index_u32(19168u, 21u)], u_input.a)), vec4<bool>(true, global1.b, global1.b, true), vec3<bool>(false, global1.b, global1.b), -37863i, 5409i), _wgslsmith_clamp_i32(global1.a, 1i, -84004i)), vec4<bool>(true, true, func_6(u_input.a, Struct_1(false, global1.b, vec4<i32>(-35640i, 35906i, -30511i, 2147483647i)), 8563u, vec4<f32>(global1.c, -1253f, -1279f, global1.c)).b, all(vec3<bool>(false, true, true))), select(vec3<bool>(global1.b, global1.b, false), func_4(Struct_4(0i, global1.b, global1.c), Struct_2(Struct_1(global1.b, false, vec4<i32>(0i, global0[_wgslsmith_index_u32(27436u, 21u)], 2147483647i, 0i)), vec4<bool>(global1.b, global1.b, true, false), vec3<bool>(global1.b, global1.b, true), -58062i, -23679i), global1.c, Struct_2(Struct_1(global1.b, false, vec4<i32>(1i, 0i, global1.a, -2147483647i)), vec4<bool>(global1.b, global1.b, false, global1.b), vec3<bool>(global1.b, false, true), global1.a, u_input.a)).c, vec3<bool>(global1.b, false, global1.b)), func_3(func_4(Struct_4(u_input.a, true, 1165f), Struct_2(Struct_1(true, global1.b, vec4<i32>(-2147483647i, global0[_wgslsmith_index_u32(1215u, 21u)], -21315i, u_input.a)), vec4<bool>(false, false, true, false), vec3<bool>(global1.b, true, global1.b), global0[_wgslsmith_index_u32(1u, 21u)], u_input.a), global1.c, Struct_2(Struct_1(global1.b, true, vec4<i32>(u_input.a, 25565i, 1i, u_input.a)), vec4<bool>(global1.b, global1.b, global1.b, global1.b), vec3<bool>(global1.b, global1.b, global1.b), -2750i, -1i)).a.a, vec4<u32>(0u, 10215u, 56557u, 37602u), any(vec3<bool>(global1.b, global1.b, false))), func_1(func_4(Struct_4(-28740i, true, 101f), Struct_2(Struct_1(global1.b, global1.b, vec4<i32>(global0[_wgslsmith_index_u32(4294967295u, 21u)], -6473i, u_input.a, -50112i)), vec4<bool>(global1.b, false, global1.b, false), vec3<bool>(global1.b, false, false), u_input.a, 3860i), 877f, Struct_2(Struct_1(true, global1.b, vec4<i32>(-13976i, 2147483647i, u_input.a, global0[_wgslsmith_index_u32(10613u, 21u)])), vec4<bool>(global1.b, global1.b, false, global1.b), vec3<bool>(global1.b, global1.b, global1.b), u_input.a, u_input.a))).a)));
    var var_1 = vec4<u32>(abs(19074u), abs(_wgslsmith_clamp_u32(~(~28143u), countOneBits(80763u), _wgslsmith_div_u32(124012u, 19668u))), 1u, 1u);
    var var_2 = Struct_2(func_5(Struct_2(func_5(var_0, ~u_input.a), select(vec4<bool>(false, var_0.a.a, global1.b, global1.b), select(var_0.b, var_0.b, var_0.b), vec4<bool>(var_0.b.x, global1.b, true, global1.b)), var_0.c, _wgslsmith_mult_i32(_wgslsmith_clamp_i32(9173i, global1.a, 2147483647i), global1.a), -1i ^ u_input.a), var_0.e), var_0.b, func_4(Struct_4(-u_input.a, all(select(var_0.c, var_0.b.xxz, vec3<bool>(global1.b, global1.b, global1.b))), -253f), Struct_2(Struct_1(true, true, var_0.a.c), vec4<bool>(func_7(Struct_4(-31195i, false, -195f), global1.c).b, false, func_1(var_0).b, true), !(!vec3<bool>(true, global1.b, var_0.c.x)), _wgslsmith_mod_i32(func_7(Struct_4(global0[_wgslsmith_index_u32(30243u, 21u)], true, -227f), 1694f).a, global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(var_1.x, var_1.x), 21u)]), _wgslsmith_sub_i32(-32740i, _wgslsmith_sub_i32(-32562i, -7289i))), -1000f, var_0).c, 2147483647i, abs(var_0.e));
    var var_3 = var_0;
    let var_4 = -6138i;
    var var_5 = func_1(func_4(func_1(Struct_2(Struct_1(false, global1.b, var_2.a.c), !vec4<bool>(var_0.a.a, global1.b, var_2.b.x, false), var_0.c, firstLeadingBit(-31901i), _wgslsmith_add_i32(u_input.a, 1i))), Struct_2(func_4(Struct_4(var_4, true, global1.c), var_0, _wgslsmith_f_op_f32(global1.c - global1.c), func_4(Struct_4(var_0.a.c.x, var_0.c.x, 1000f), var_0, -307f, Struct_2(Struct_1(var_3.b.x, true, vec4<i32>(global0[_wgslsmith_index_u32(var_1.x, 21u)], -13371i, var_3.d, u_input.a)), vec4<bool>(var_3.b.x, true, var_3.a.b, global1.b), var_3.c, 1i, 1i))).a, vec4<bool>(func_7(Struct_4(u_input.a, var_2.c.x, global1.c), global1.c).b, !var_2.c.x, true, all(vec2<bool>(global1.b, var_0.c.x))), var_3.b.zxw, global1.a, -1i), global1.c, Struct_2(func_5(func_4(Struct_4(-4773i, var_0.b.x, global1.c), Struct_2(Struct_1(global1.b, global1.b, vec4<i32>(-51119i, var_3.a.c.x, var_2.d, var_0.d)), var_2.b, var_2.c, 8919i, u_input.a), 1618f, var_0), _wgslsmith_dot_vec3_i32(var_2.a.c.wxy, vec3<i32>(6259i, 34951i, 28280i))), vec4<bool>(global1.b, !var_3.a.b, true, true), !(!var_3.c), ~global0[_wgslsmith_index_u32(~4294967295u, 21u)], _wgslsmith_add_i32(func_6(2147483647i, var_3.a, 0u, vec4<f32>(-806f, global1.c, -1641f, -403f)).a, 1i))));
    let var_6 = Struct_4(global0[_wgslsmith_index_u32(var_1.x, 21u)], !(var_5.c == var_5.c), 1000f);
    let x = u_input.a;
    s_output = StorageBuffer(global1.c, _wgslsmith_f_op_f32(-146f + 163f), global1.c);
}

