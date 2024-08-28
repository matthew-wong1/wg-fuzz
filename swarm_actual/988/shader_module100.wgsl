struct Struct_1 {
    a: bool,
    b: u32,
    c: vec3<f32>,
    d: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
}

struct Struct_3 {
    a: u32,
    b: vec2<f32>,
}

struct Struct_4 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 15> = array<f32, 15>(-263f, 169f, -1196f, 794f, 102f, -801f, 500f, -457f, 441f, 1289f, -488f, 476f, -1490f, 470f, -667f);

var<private> global1: f32;

var<private> global2: vec4<u32>;

var<private> global3: array<f32, 7>;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: Struct_4, arg_1: vec3<bool>, arg_2: vec4<i32>) -> u32 {
    let var_0 = Struct_2(Struct_1(arg_1.x, max(global2.x, ~global2.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global3[_wgslsmith_index_u32(74070u, 7u)], 765f, global0[_wgslsmith_index_u32(u_input.b.x, 15u)]) * vec3<f32>(783f, 1000f, 1431f)))), vec4<i32>(arg_2.x, _wgslsmith_add_i32(select(0i, u_input.c.x, false), -u_input.c.x), 1i, arg_2.x)), Struct_1(arg_1.x, 21645u, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1285f, 1520f, 448f))))), ~_wgslsmith_add_vec4_i32(arg_2, arg_2) ^ arg_2), global0[_wgslsmith_index_u32(global2.x | u_input.b.x, 15u)]);
    var var_1 = vec4<bool>(arg_1.x, !(!var_0.a.a), any(!select(select(vec4<bool>(true, false, arg_1.x, arg_1.x), vec4<bool>(true, true, var_0.b.a, true), var_0.a.a), !vec4<bool>(var_0.b.a, false, true, false), var_0.a.a)), any(select(vec2<bool>(!var_0.a.a, all(arg_1)), select(arg_1.zz, arg_1.zx, !arg_1.zz), var_0.b.a || (arg_1.x == arg_1.x))));
    let var_2 = vec4<u32>(~(arg_0.a.x >> (var_0.a.b % 32u)), reverseBits(4294967295u), arg_0.a.x, 0u);
    let var_3 = !(!vec3<bool>(true, all(vec3<bool>(arg_1.x, true, false)), true));
    let var_4 = arg_1.x;
    return ~(~reverseBits(countOneBits(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, var_0.a.b, var_2.x), global2.wxy))));
}

fn func_2(arg_0: Struct_4, arg_1: Struct_3) -> Struct_1 {
    global0 = array<f32, 15>();
    var var_0 = Struct_1(all(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true))), _wgslsmith_add_u32(abs(func_3(arg_0, vec3<bool>(true, true, false), vec4<i32>(u_input.c.x, u_input.c.x, -34181i, 31202i))), u_input.b.x), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.b.x, arg_1.b.x, global3[_wgslsmith_index_u32(1u, 7u)]) + vec3<f32>(global3[_wgslsmith_index_u32(20072u, 7u)], 816f, global0[_wgslsmith_index_u32(u_input.b.x, 15u)])))))), vec4<i32>(u_input.a, abs(-u_input.a), i32(-1i) * -14363i, _wgslsmith_sub_i32(u_input.a, -11219i)));
    let var_1 = 1u;
    let var_2 = !select(!vec4<bool>(301f > var_0.c.x, 1u > u_input.b.x, false || var_0.a, all(vec2<bool>(false, true))), select(vec4<bool>(!var_0.a, var_0.a, true, all(vec2<bool>(true, true))), vec4<bool>(true, arg_0.a.x == 61100u, select(true, true, var_0.a), true), select(!vec4<bool>(false, false, var_0.a, var_0.a), select(vec4<bool>(true, true, var_0.a, var_0.a), vec4<bool>(var_0.a, false, true, var_0.a), var_0.a), false)), !vec4<bool>(any(vec3<bool>(var_0.a, var_0.a, var_0.a)), all(vec3<bool>(false, false, var_0.a)), any(vec2<bool>(true, true)), true));
    var var_3 = var_2.xyz;
    return Struct_1(954f <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(658f * var_0.c.x) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(arg_0.a.x, 7u)]) * var_0.c.x)), ~(_wgslsmith_dot_vec3_u32(arg_0.a.zxy ^ vec3<u32>(8776u, var_1, var_1), vec3<u32>(u_input.b.x, global2.x, global2.x)) & 0u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(exp2(var_0.c)))), var_0.c)), var_0.d);
}

fn func_4(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: Struct_2, arg_3: vec2<f32>) -> Struct_2 {
    var var_0 = func_2(Struct_4(firstTrailingBit(_wgslsmith_div_vec4_u32(abs(vec4<u32>(4294967295u, 1u, 4294967295u, 56634u)), ~vec4<u32>(0u, 6939u, arg_2.a.b, 1u)))), Struct_3(u_input.b.x, arg_1.xx)).c;
    global1 = arg_3.x;
    var var_1 = arg_2;
    var var_2 = var_1.b.b;
    var var_3 = Struct_3(arg_2.b.b, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(152f, 1244f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(arg_1.xx, arg_0.a.c.xy, vec2<bool>(true, arg_2.a.a)))))));
    return Struct_2(Struct_1(all(vec3<bool>(true, true, true)), ~(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 36702u, var_1.a.b, 4294967295u), vec4<u32>(0u, 74389u, 1u, 4294967295u))), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(max(var_0.x, -339f)), _wgslsmith_f_op_f32(floor(var_3.b.x)), _wgslsmith_f_op_f32(-1000f + -563f)), vec3<f32>(global3[_wgslsmith_index_u32(~arg_2.a.b, 7u)], func_2(Struct_4(vec4<u32>(1u, 4294967295u, var_3.a, var_1.b.b)), Struct_3(61911u, arg_2.b.c.yz)).c.x, 758f))), arg_0.a.d), var_1.a, -1654f);
}

fn func_5(arg_0: Struct_2, arg_1: vec4<u32>) -> Struct_2 {
    global2 = vec4<u32>(_wgslsmith_add_u32(~_wgslsmith_clamp_u32(arg_1.x, 0u, global2.x), 73689u), countOneBits(~4160u), global2.x >> (_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(arg_1, vec4<u32>(62270u, arg_0.b.b, arg_1.x, global2.x)), 21918u) % 32u), func_4(arg_0, _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(384f, 400f, global0[_wgslsmith_index_u32(arg_0.b.b, 15u)]) - arg_0.a.c))), arg_0, _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.b.c.x, 1700f))).b.b) >> ((abs(~(~arg_1)) ^ vec4<u32>(0u, u_input.b.x, 30858u, arg_1.x)) % vec4<u32>(32u));
    var var_0 = _wgslsmith_mod_vec2_u32(_wgslsmith_mult_vec2_u32((u_input.b ^ abs(vec2<u32>(arg_1.x, 11778u))) & u_input.b, vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 20726u, 4294967295u), global2.zzx ^ vec3<u32>(u_input.b.x, 4294967295u, 0u)), global2.x)), min((arg_1.wy ^ global2.wz) << ((vec2<u32>(global2.x, 1u) >> (_wgslsmith_clamp_vec2_u32(global2.yx, arg_1.yw, u_input.b) % vec2<u32>(32u))) % vec2<u32>(32u)), arg_1.xy << (~u_input.b % vec2<u32>(32u))));
    var_0 = min(u_input.b, abs(vec2<u32>(global2.x, abs(~global2.x))));
    var var_1 = select(~(_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, global2.x), arg_1.ww) ^ arg_1.xx) & (arg_1.wz << (vec2<u32>(49754u, ~4294967295u) % vec2<u32>(32u))), abs(abs(~_wgslsmith_mult_vec2_u32(vec2<u32>(global2.x, 0u), vec2<u32>(38064u, arg_0.a.b)))), true);
    let var_2 = global0[_wgslsmith_index_u32(~(~_wgslsmith_div_u32(4294967295u, countOneBits(arg_0.b.b))), 15u)];
    return Struct_2(arg_0.b, func_4(Struct_2(func_4(Struct_2(Struct_1(arg_0.b.a, 17706u, arg_0.a.c, arg_0.b.d), arg_0.a, 1161f), vec3<f32>(global0[_wgslsmith_index_u32(57844u, 15u)], -906f, global3[_wgslsmith_index_u32(global2.x, 7u)]), arg_0, arg_0.b.c.yz).b, arg_0.b, _wgslsmith_f_op_f32(870f + _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4294967295u, 15u)]))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(arg_0.a.c, vec3<f32>(1384f, arg_0.b.c.x, arg_0.c), true)) * vec3<f32>(global0[_wgslsmith_index_u32(1u, 15u)], global3[_wgslsmith_index_u32(0u, 7u)], global3[_wgslsmith_index_u32(global2.x, 7u)]))), func_4(func_4(func_4(arg_0, arg_0.a.c, Struct_2(Struct_1(true, 36773u, vec3<f32>(global3[_wgslsmith_index_u32(var_1.x, 7u)], global0[_wgslsmith_index_u32(var_1.x, 15u)], global0[_wgslsmith_index_u32(var_0.x, 15u)]), arg_0.a.d), Struct_1(true, arg_1.x, vec3<f32>(global3[_wgslsmith_index_u32(0u, 7u)], -1000f, arg_0.a.c.x), vec4<i32>(u_input.c.x, 15655i, arg_0.a.d.x, arg_0.b.d.x)), -589f), vec2<f32>(-1432f, global3[_wgslsmith_index_u32(0u, 7u)])), vec3<f32>(-248f, 574f, global3[_wgslsmith_index_u32(arg_1.x, 7u)]), Struct_2(Struct_1(arg_0.b.a, arg_1.x, arg_0.a.c, vec4<i32>(arg_0.a.d.x, u_input.c.x, 1i, 70179i)), Struct_1(true, 1u, vec3<f32>(-782f, -873f, global0[_wgslsmith_index_u32(var_0.x, 15u)]), arg_0.b.d), global0[_wgslsmith_index_u32(var_1.x, 15u)]), vec2<f32>(global3[_wgslsmith_index_u32(arg_1.x, 7u)], global3[_wgslsmith_index_u32(arg_0.a.b, 7u)])), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(arg_0.b.c, vec3<f32>(global3[_wgslsmith_index_u32(arg_1.x, 7u)], 255f, global3[_wgslsmith_index_u32(global2.x, 7u)])) - _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.a.c.x, global0[_wgslsmith_index_u32(arg_1.x, 15u)], arg_0.a.c.x) - arg_0.b.c)), arg_0, arg_0.a.c.zy), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(arg_0.b.c.x + 238f), _wgslsmith_f_op_f32(min(-1162f, arg_0.a.c.x))) + arg_0.a.c.yx)).a, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_sub_u32(1u & global2.x, _wgslsmith_dot_vec3_u32(arg_1.wxy, vec3<u32>(arg_0.a.b, u_input.b.x, u_input.b.x))), u_input.b.x, var_0.x), 15u)] * _wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(func_3(Struct_4(vec4<u32>(var_0.x, global2.x, arg_1.x, u_input.b.x)), select(vec3<bool>(arg_0.b.a, arg_0.a.a, false), vec3<bool>(true, false, arg_0.a.a), arg_0.a.a), ~arg_0.a.d), 15u)]))));
}

fn func_1() -> vec4<bool> {
    let var_0 = _wgslsmith_mod_i32(0i, -11855i);
    let var_1 = func_5(func_4(Struct_2(Struct_1(all(vec4<bool>(true, true, false, false)), _wgslsmith_dot_vec2_u32(vec2<u32>(global2.x, u_input.b.x), u_input.b), vec3<f32>(global3[_wgslsmith_index_u32(global2.x, 7u)], global0[_wgslsmith_index_u32(4294967295u, 15u)], global3[_wgslsmith_index_u32(1u, 7u)]), vec4<i32>(-2147483647i, u_input.c.x, var_0, -23093i)), func_2(Struct_4(vec4<u32>(4294967295u, 24778u, u_input.b.x, 86204u)), Struct_3(1u, vec2<f32>(1773f, global3[_wgslsmith_index_u32(0u, 7u)]))), _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(global2.x, 7u)])), _wgslsmith_f_op_vec3_f32(vec3<f32>(-976f, func_2(Struct_4(vec4<u32>(4294967295u, 0u, global2.x, global2.x)), Struct_3(global2.x, vec2<f32>(global0[_wgslsmith_index_u32(4294967295u, 15u)], global3[_wgslsmith_index_u32(63083u, 7u)]))).c.x, _wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(1u, 15u)], 1034f))) - vec3<f32>(func_2(Struct_4(vec4<u32>(global2.x, 44403u, global2.x, global2.x)), Struct_3(u_input.b.x, vec2<f32>(1000f, global0[_wgslsmith_index_u32(23277u, 15u)]))).c.x, _wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(0u, 15u)])), _wgslsmith_f_op_f32(f32(-1f) * -499f))), Struct_2(func_2(Struct_4(vec4<u32>(31594u, 4294967295u, global2.x, global2.x)), Struct_3(global2.x, vec2<f32>(global0[_wgslsmith_index_u32(global2.x, 15u)], 1203f))), func_2(Struct_4(vec4<u32>(48534u, 7951u, 4294967295u, 4294967295u)), Struct_3(global2.x, vec2<f32>(global3[_wgslsmith_index_u32(1u, 7u)], -1123f))), _wgslsmith_div_f32(-1000f, 1000f)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(933f, global0[_wgslsmith_index_u32(21268u, 15u)]), vec2<f32>(global0[_wgslsmith_index_u32(global2.x, 15u)], global3[_wgslsmith_index_u32(35212u, 7u)]))) * vec2<f32>(1950f, global3[_wgslsmith_index_u32(1u, 7u)])), _wgslsmith_f_op_vec2_f32(vec2<f32>(310f, global0[_wgslsmith_index_u32(global2.x, 15u)]) * vec2<f32>(global3[_wgslsmith_index_u32(9076u, 7u)], global0[_wgslsmith_index_u32(global2.x, 15u)])))), ~(~(~vec4<u32>(4294967295u, 55361u, 0u, 61448u) >> (_wgslsmith_div_vec4_u32(vec4<u32>(20449u, 60504u, 32617u, 12772u), vec4<u32>(43994u, 32904u, 4294967295u, 7712u)) % vec4<u32>(32u)))));
    var var_2 = vec3<f32>(global3[_wgslsmith_index_u32(u_input.b.x, 7u)], _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.b.x, ~var_1.a.b), 7u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(732f, _wgslsmith_f_op_f32(-924f * global0[_wgslsmith_index_u32(~global2.x, 15u)])))));
    var var_3 = Struct_3(~(~global2.x | _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(var_1.b.b, var_1.b.b, u_input.b.x), vec3<u32>(58394u, 24367u, var_1.a.b)), global2.wxx & vec3<u32>(var_1.b.b, 4294967295u, u_input.b.x))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-var_1.b.c.zz))));
    let var_4 = var_1.a.a;
    return select(!vec4<bool>(var_1.b.a, ~var_1.a.d.x < u_input.a, !(!var_1.b.a), true), !vec4<bool>(var_1.a.a, true, var_1.b.a, false), vec4<bool>(var_4, !var_1.a.a & var_1.b.a, !var_1.a.a, func_5(Struct_2(var_1.a, Struct_1(false, 59966u, var_1.b.c, var_1.b.d), 1248f), ~vec4<u32>(31120u, 1u, var_1.b.b, 1u)).b.a || true));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 15>();
    var var_0 = max(~(reverseBits(global2.x) | ~global2.x), 4987u) >> (u_input.b.x % 32u);
    var var_1 = Struct_2(Struct_1(any(func_1()), func_5(Struct_2(Struct_1(true, 102991u, vec3<f32>(global3[_wgslsmith_index_u32(global2.x, 7u)], global0[_wgslsmith_index_u32(u_input.b.x, 15u)], -143f), vec4<i32>(u_input.c.x, u_input.a, u_input.c.x, -17680i)), func_4(Struct_2(Struct_1(false, global2.x, vec3<f32>(global0[_wgslsmith_index_u32(u_input.b.x, 15u)], global3[_wgslsmith_index_u32(1u, 7u)], 1645f), vec4<i32>(2147483647i, -1i, -21323i, -1i)), Struct_1(false, 42291u, vec3<f32>(global3[_wgslsmith_index_u32(global2.x, 7u)], global3[_wgslsmith_index_u32(1u, 7u)], -939f), vec4<i32>(u_input.c.x, u_input.a, -41369i, u_input.c.x)), global3[_wgslsmith_index_u32(4294967295u, 7u)]), vec3<f32>(607f, global3[_wgslsmith_index_u32(global2.x, 7u)], -1000f), Struct_2(Struct_1(true, 75575u, vec3<f32>(-1137f, 463f, 600f), vec4<i32>(-2147483647i, u_input.a, u_input.a, u_input.c.x)), Struct_1(true, u_input.b.x, vec3<f32>(1833f, 230f, global3[_wgslsmith_index_u32(u_input.b.x, 7u)]), vec4<i32>(u_input.c.x, -2147483647i, u_input.c.x, 2147483647i)), 558f), vec2<f32>(global3[_wgslsmith_index_u32(u_input.b.x, 7u)], 297f)).a, -300f), vec4<u32>(global2.x, u_input.b.x, 28254u, global2.x) >> (~vec4<u32>(global2.x, global2.x, global2.x, u_input.b.x) % vec4<u32>(32u))).b.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(356f, global3[_wgslsmith_index_u32(11309u, 7u)], 1795f), vec3<f32>(global3[_wgslsmith_index_u32(u_input.b.x, 7u)], -1258f, global0[_wgslsmith_index_u32(u_input.b.x, 15u)]))) - vec3<f32>(247f, global3[_wgslsmith_index_u32(37651u, 7u)], global0[_wgslsmith_index_u32(38063u, 15u)]))), vec4<i32>(abs(1i), 5402i, u_input.c.x, min(~u_input.c.x, ~1i))), func_2(Struct_4(select(countOneBits(vec4<u32>(u_input.b.x, global2.x, 0u, 0u)), select(vec4<u32>(50244u, global2.x, u_input.b.x, global2.x), vec4<u32>(10302u, 0u, 4294967295u, 47139u), true), vec4<bool>(true, true, true, true))), Struct_3(59028u, _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(681f, global0[_wgslsmith_index_u32(global2.x, 15u)]))))))), 2233f);
    var var_2 = !var_1.a.a;
    let var_3 = var_1.a.c.zy;
    let var_4 = Struct_3(_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_sub_u32(u_input.b.x, 4294967295u), ~var_1.a.b) ^ (u_input.b ^ _wgslsmith_mod_vec2_u32(vec2<u32>(1u, var_1.a.b), vec2<u32>(4294967295u, global2.x))), _wgslsmith_sub_vec2_u32(firstLeadingBit(~vec2<u32>(68555u, 0u)), vec2<u32>(countOneBits(115261u), 77595u ^ u_input.b.x))), var_1.a.c.xz);
    var_0 = 54803u;
    var var_5 = u_input.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(~1u, _wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(~(~vec4<u32>(global2.x, var_1.b.b, 4294967295u, var_4.a)), vec4<u32>(global2.x, var_1.a.b, ~0u, 1u)), ~vec4<u32>(var_4.a, var_1.a.b, global2.x, _wgslsmith_dot_vec3_u32(vec3<u32>(var_4.a, 30118u, global2.x), global2.xxx))), global2.zyy | ~global2.zzz);
}

