struct Struct_1 {
    a: bool,
    b: vec4<i32>,
    c: vec4<bool>,
    d: vec3<bool>,
    e: vec4<f32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: f32,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: vec3<i32>,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(17116u, Struct_1(true, vec4<i32>(-8676i, -1i, 2147483647i, -34574i), vec4<bool>(true, true, false, false), vec3<bool>(true, false, true), vec4<f32>(1716f, 929f, 555f, 1000f)));

var<private> global1: vec4<bool>;

var<private> global2: vec3<bool> = vec3<bool>(false, false, false);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_2(arg_0: Struct_3, arg_1: vec4<bool>, arg_2: Struct_1, arg_3: Struct_1) -> vec2<u32> {
    var var_0 = max(4294967295u, _wgslsmith_sub_u32(~(~20195u), _wgslsmith_dot_vec4_u32(~_wgslsmith_add_vec4_u32(vec4<u32>(global0.a, 0u, global0.a, 16785u), vec4<u32>(0u, 33312u, arg_0.a, arg_0.a)), reverseBits(vec4<u32>(1u, 77086u, arg_0.a, global0.a)))));
    var_0 = 1u;
    var_0 = 1u;
    var_0 = 1u;
    var var_1 = Struct_1(arg_0.b.d.x, ~arg_2.b >> (vec4<u32>(35130u, ~abs(global0.a), arg_0.a, ~countOneBits(72685u)) % vec4<u32>(32u)), select(!vec4<bool>(arg_0.a != 55443u, arg_2.a, any(global0.b.c), false), !arg_2.c, select(true, !arg_0.b.c.x, !arg_2.a)), select(arg_2.d, arg_3.d, vec3<bool>(true, true, global0.b.d.x)), vec4<f32>(-1748f, -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global0.b.e.x))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_3.e.x, arg_2.e.x))));
    return ~(~(~reverseBits(vec2<u32>(56558u, 840u)))) << (~vec2<u32>(4294967295u, ~_wgslsmith_sub_u32(arg_0.a, 8583u)) % vec2<u32>(32u));
}

fn func_3(arg_0: Struct_2, arg_1: vec2<u32>, arg_2: Struct_2, arg_3: vec2<u32>) -> u32 {
    let var_0 = arg_2;
    var var_1 = select(_wgslsmith_sub_vec4_u32(~(vec4<u32>(arg_1.x, 0u, 45356u, arg_3.x) & ~vec4<u32>(10029u, arg_1.x, 0u, 46569u)), _wgslsmith_sub_vec4_u32(abs(firstLeadingBit(vec4<u32>(arg_3.x, 0u, arg_3.x, arg_3.x))), ~_wgslsmith_mod_vec4_u32(vec4<u32>(15607u, global0.a, arg_1.x, arg_3.x), vec4<u32>(23676u, global0.a, arg_3.x, arg_3.x)))), vec4<u32>(arg_1.x, 1147u, _wgslsmith_dot_vec4_u32(abs(vec4<u32>(arg_1.x, 20352u, arg_3.x, 32188u)) | ~vec4<u32>(arg_3.x, global0.a, 4294967295u, global0.a), _wgslsmith_add_vec4_u32(~vec4<u32>(arg_3.x, arg_1.x, arg_3.x, arg_3.x), _wgslsmith_add_vec4_u32(vec4<u32>(arg_3.x, 62815u, 60251u, 0u), vec4<u32>(36499u, 4294967295u, 4294967295u, 1u)))), ~abs(abs(global0.a))), vec4<bool>(false, !any(global0.b.c) == true, (-global0.b.b.x ^ global0.b.b.x) <= u_input.a, true));
    global2 = arg_0.a;
    var var_2 = Struct_2(vec3<bool>(!(global0.b.c.x != true), false, !(!(arg_1.x > global0.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(998f))));
    let var_3 = ~(~firstLeadingBit(firstTrailingBit(~vec2<u32>(89563u, 1017u))));
    return ~_wgslsmith_mult_u32(func_2(Struct_3(global0.a, Struct_1(global1.x, vec4<i32>(39733i, -28947i, 2147483647i, -20005i), global0.b.c, arg_0.a, vec4<f32>(arg_0.b, 201f, arg_2.b, var_0.b))), global0.b.c, Struct_1(false, vec4<i32>(40530i, 2147483647i, 3657i, 6087i) & global0.b.b, select(global0.b.c, global0.b.c, false), vec3<bool>(global1.x, arg_2.a.x, var_0.a.x), global0.b.e), Struct_1(var_0.b <= -1997f, -global0.b.b, global0.b.c, vec3<bool>(global0.b.a, arg_0.a.x, true), vec4<f32>(var_2.b, arg_2.b, var_2.b, -1050f))).x, var_1.x);
}

fn func_1(arg_0: i32, arg_1: vec2<f32>) -> Struct_3 {
    let var_0 = ~global0.b.b.xw << (vec2<u32>(global0.a, 22026u) % vec2<u32>(32u));
    var var_1 = vec2<u32>(func_3(Struct_2(global1.wyw, 1000f), vec2<u32>(global0.a, ~(global0.a & global0.a)), Struct_2(global1.yzx, _wgslsmith_f_op_f32(abs(global0.b.e.x))), ~abs(func_2(Struct_3(global0.a, global0.b), vec4<bool>(false, false, false, global0.b.c.x), global0.b, Struct_1(global1.x, global0.b.b, global0.b.c, global1.xyy, vec4<f32>(2008f, 1135f, global0.b.e.x, arg_1.x))))), global0.a);
    global2 = global1.wzz;
    var var_2 = Struct_1(!global0.b.d.x, ~(~_wgslsmith_mod_vec4_i32(reverseBits(vec4<i32>(0i, -2147483647i, 2147483647i, arg_0)), -vec4<i32>(arg_0, 0i, arg_0, 42696i))), global0.b.c, !select(global1.zyw, vec3<bool>(global0.b.a, true, global0.b.c.x), vec3<bool>(global1.x == global0.b.d.x, !global0.b.c.x, true)), global0.b.e);
    var var_3 = vec3<u32>(var_1.x, firstTrailingBit(func_2(Struct_3(23659u ^ var_1.x, Struct_1(true, vec4<i32>(1i, 9275i, -51486i, arg_0), var_2.c, vec3<bool>(var_2.d.x, global1.x, var_2.c.x), var_2.e)), !select(vec4<bool>(false, var_2.a, global1.x, false), var_2.c, vec4<bool>(global0.b.d.x, true, true, global2.x)), global0.b, Struct_1(true, _wgslsmith_div_vec4_i32(vec4<i32>(14677i, -1i, 306i, -6169i), global0.b.b), vec4<bool>(global1.x, true, true, var_2.d.x), global1.wwz, _wgslsmith_f_op_vec4_f32(round(var_2.e)))).x), _wgslsmith_add_u32(var_1.x, ~global0.a));
    return Struct_3(53210u, global0.b);
}

fn func_4(arg_0: f32, arg_1: Struct_3) -> Struct_2 {
    var var_0 = Struct_2(vec3<bool>(true, global2.x, global1.x), global0.b.e.x);
    let var_1 = func_2(func_1(-2147483647i, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-543f, -696f))) - _wgslsmith_div_vec2_f32(vec2<f32>(var_0.b, 1000f), vec2<f32>(160f, 1622f))) - _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(arg_1.b.e.yy, global0.b.e.zz))))), !vec4<bool>(any(vec3<bool>(global1.x, global1.x, false)), any(vec4<bool>(true, arg_1.b.d.x, var_0.a.x, var_0.a.x)) || global0.b.d.x, true, global1.x), Struct_1(false, vec4<i32>(-1i) * -arg_1.b.b, select(arg_1.b.c, arg_1.b.c, !vec4<bool>(global1.x, true, global2.x, arg_1.b.c.x)), var_0.a, vec4<f32>(var_0.b, global0.b.e.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(-602f, -503f, global1.x)))), var_0.b)), func_1(firstTrailingBit(arg_1.b.b.x), global0.b.e.ww).b);
    global2 = func_1(_wgslsmith_sub_i32(-2147483647i, arg_1.b.b.x) | _wgslsmith_add_i32(_wgslsmith_mod_i32(global0.b.b.x, _wgslsmith_div_i32(2147483647i, global0.b.b.x)), 1i), _wgslsmith_f_op_vec2_f32(sign(global0.b.e.wx))).b.c.zwz;
    var var_2 = vec2<bool>(arg_1.b.d.x, global2.x);
    var var_3 = func_1(_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_clamp_i32(u_input.a, global0.b.b.x, global0.b.b.x), firstTrailingBit(-68441i), -37135i, arg_1.b.b.x), vec4<i32>(_wgslsmith_div_i32(arg_1.b.b.x, 1i), 1i, reverseBits(arg_1.b.b.x), u_input.a << (1u % 32u))), -_wgslsmith_div_i32(u_input.a, 19711i) ^ -_wgslsmith_mod_i32(-2147483647i, -14978i)), vec2<f32>(_wgslsmith_f_op_f32(503f * 607f), var_0.b)).b;
    return Struct_2(vec3<bool>(12966u <= arg_1.a, 285f > _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(var_3.e.x)))), var_2.x | true), global0.b.e.x);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec4<bool>, arg_3: bool) -> vec4<f32> {
    let var_0 = func_1(arg_0.b.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global0.b.e.wz * vec2<f32>(716f, 648f)) * _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-841f, -1212f)))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(arg_0.e.yx))))).b;
    let var_1 = global0.b;
    global0 = Struct_3(global0.a, global0.b);
    var var_2 = all(!select(select(vec3<bool>(global1.x, global0.b.d.x, arg_1.a.x), vec3<bool>(arg_3, arg_1.a.x, arg_0.c.x), arg_0.d.x), vec3<bool>(true, all(var_1.c), !global0.b.a), var_1.d.x));
    global2 = vec3<bool>(arg_3, false, !(!all(!vec3<bool>(false, var_1.c.x, global0.b.c.x))));
    return arg_0.e;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_3(global0.a & 4294967295u, Struct_1(true, -(vec4<i32>(u_input.a, 1i, u_input.a, -81797i) ^ vec4<i32>(global0.b.b.x, 70833i, u_input.a, -35329i)), global0.b.c, global0.b.c.wzy, _wgslsmith_f_op_vec4_f32(func_5(Struct_1(true && global0.b.d.x, global0.b.b, !vec4<bool>(false, true, global2.x, false), select(global1.yyw, vec3<bool>(true, false, global0.b.d.x), global0.b.a), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.b.e.x, 731f, 398f, 2322f) - vec4<f32>(global0.b.e.x, global0.b.e.x, -925f, 457f))), func_4(_wgslsmith_f_op_f32(global0.b.e.x * 429f), func_1(-2147483647i, global0.b.e.zw)), !func_1(global0.b.b.x, vec2<f32>(global0.b.e.x, 1000f)).b.c, true))));
    global2 = select(!vec3<bool>(global1.x, global0.a < (global0.a << (global0.a % 32u)), func_4(global0.b.e.x, func_1(global0.b.b.x, vec2<f32>(global0.b.e.x, global0.b.e.x))).a.x), vec3<bool>(true, select(global2.x, !global1.x, any(global1.zww)), (global0.b.b.x << (62808u % 32u)) >= -10004i), global0.b.d);
    global1 = select(vec4<bool>(!(!(!global1.x)), !select(all(vec2<bool>(true, global1.x)), global0.b.d.x, global0.b.b.x >= 24344i), !(false == (false || global1.x)), all(!select(vec3<bool>(global0.b.a, global0.b.d.x, true), global1.wyw, vec3<bool>(true, global2.x, false)))), !global0.b.c, vec4<bool>(any(func_1(global0.b.b.x, vec2<f32>(880f, global0.b.e.x)).b.c) || !(global1.x | true), func_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.b.e.x), -274f), func_1(reverseBits(u_input.a), func_1(u_input.a, global0.b.e.xw).b.e.wy)).a.x, u_input.a < _wgslsmith_div_i32(24063i, max(1i, 1i)), true));
    var var_0 = ~firstLeadingBit(countOneBits(_wgslsmith_div_vec2_u32(~vec2<u32>(global0.a, global0.a), vec2<u32>(global0.a, 31525u) | vec2<u32>(global0.a, 1u))));
    var var_1 = Struct_3(firstLeadingBit(46419u), Struct_1(((u_input.a > 8603i) | false) && !(!global2.x), _wgslsmith_add_vec4_i32(~global0.b.b, ~firstTrailingBit(global0.b.b)), global0.b.c, global1.xxx, _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-368f, global0.b.e.x, global0.b.e.x, -2026f), global0.b.e), global0.b.e) + _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(global0.b.e, vec4<f32>(1136f, global0.b.e.x, global0.b.e.x, -136f), vec4<bool>(false, global0.b.a, global0.b.c.x, true))))))));
    var_1 = Struct_3(~(~(~reverseBits(global0.a))), Struct_1(select(_wgslsmith_dot_vec2_u32(vec2<u32>(34055u, 0u), vec2<u32>(0u, global0.a)) > global0.a, func_4(524f, func_1(global0.b.b.x, var_1.b.e.yw)).a.x, any(vec4<bool>(var_1.b.a, global1.x, true, global1.x))), func_1(1i, var_1.b.e.xx).b.b, var_1.b.c, select(vec3<bool>(var_1.a >= var_1.a, global0.b.a, true), !vec3<bool>(true, false, var_1.b.a), true), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-var_1.b.e), var_1.b.e)), _wgslsmith_f_op_vec4_f32(-global0.b.e), !var_1.b.c.x | global1.x))));
    var var_2 = vec2<bool>(all(global0.b.c.xx), any(!(!global0.b.d.zy)));
    var_1 = Struct_3(countOneBits(min(var_1.a, global0.a)), Struct_1(!(!global0.b.c.x), ~vec4<i32>(~var_1.b.b.x, _wgslsmith_mult_i32(-9746i, -28519i), -2147483647i, -33994i), var_1.b.c, func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(757f, global0.b.e.x, false))), func_1(~global0.b.b.x, _wgslsmith_f_op_vec2_f32(vec2<f32>(-408f, -105f) * vec2<f32>(-235f, -263f)))).a, _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(exp2(var_1.b.e.x)), _wgslsmith_f_op_f32(1051f - var_1.b.e.x), _wgslsmith_f_op_f32(floor(-1295f)), -638f)))));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.b.e.x, _wgslsmith_f_op_vec4_f32(func_5(var_1.b, Struct_2(func_4(1000f, func_1(-1i, var_1.b.e.ww)).a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_1.b.e.x)) * _wgslsmith_f_op_f32(f32(-1f) * -762f))), !global0.b.c, func_1(_wgslsmith_div_i32(_wgslsmith_add_i32(var_1.b.b.x, global0.b.b.x), u_input.a), vec2<f32>(_wgslsmith_f_op_f32(round(-940f)), 346f)).b.c.x)).zw, vec3<i32>(_wgslsmith_sub_i32(-2147483647i, var_1.b.b.x), -2147483647i, global0.b.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_1.b.e.x, global0.b.e.x)))), var_1.b.b.x);
}

