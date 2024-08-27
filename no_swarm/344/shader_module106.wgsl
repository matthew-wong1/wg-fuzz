struct Struct_1 {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec4<bool>,
    d: f32,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: array<i32, 22>;

var<private> global2: Struct_1 = Struct_1(vec3<i32>(-35568i, 1i, 18798i), vec2<u32>(0u, 1u), vec4<bool>(false, true, false, true), -1507f, vec4<bool>(false, false, false, true));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
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

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: vec3<u32>) -> vec4<bool> {
    let var_0 = Struct_1(vec3<i32>(-32276i, abs(~firstLeadingBit(-1i)), -(~(-17753i))), ~min(global2.b, ~_wgslsmith_mod_vec2_u32(vec2<u32>(arg_3.x, 28343u), arg_3.zx)), global2.e, _wgslsmith_div_f32(global2.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1780f)) + _wgslsmith_f_op_f32(abs(884f)))), global2.c);
    let var_1 = arg_0;
    global0 = select(vec2<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.d + var_0.d)) != var_1.d, true), var_0.e.wz, global2.c.x);
    global1 = array<i32, 22>();
    var var_2 = select(!(!global2.c.xw), select(!vec2<bool>(var_0.e.x, var_0.c.x), select(arg_0.e.xx, !select(vec2<bool>(var_0.c.x, false), vec2<bool>(true, true), var_0.c.x), var_1.e.x), var_1.e.xy), arg_1.e.zx);
    return vec4<bool>(_wgslsmith_f_op_f32(-arg_0.d) >= _wgslsmith_f_op_f32(arg_0.d * var_0.d), !global0.x, !var_0.e.x, _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, var_1.a.x, -1453i), vec3<i32>(var_1.a.x, -1i, -2147483647i) & vec3<i32>(arg_0.a.x, 0i, -6952i)), -68760i) >= (-global1[_wgslsmith_index_u32(arg_3.x, 22u)] >> (~(~58400u) % 32u)));
}

fn func_4(arg_0: vec4<bool>, arg_1: vec3<i32>, arg_2: f32) -> vec3<i32> {
    global1 = array<i32, 22>();
    let var_0 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(vec2<f32>(arg_2, -579f), vec2<f32>(-260f, 200f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2, global2.d)) * _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global2.d, arg_2)))))));
    let var_1 = Struct_1(vec3<i32>(-21962i, _wgslsmith_add_i32(_wgslsmith_sub_i32(46768i, arg_1.x) >> (59740u % 32u), arg_1.x), -2147483647i), vec2<u32>(global2.b.x, _wgslsmith_div_u32(~23640u, min(global2.b.x | 0u, 4294967295u))), vec4<bool>(any(func_3(Struct_1(arg_1, vec2<u32>(60544u, 29121u), arg_0, var_0.x, vec4<bool>(true, true, false, false)), Struct_1(u_input.a, global2.b, global2.c, arg_2, vec4<bool>(true, global2.c.x, global0.x, arg_0.x)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-710f, -790f, arg_2), vec3<f32>(global2.d, arg_2, var_0.x))), ~vec3<u32>(83146u, global2.b.x, global2.b.x))), true, arg_0.x, false), _wgslsmith_f_op_f32(floor(global2.d)), !arg_0);
    let var_2 = Struct_1(var_1.a, ~max(vec2<u32>(~var_1.b.x, ~26631u), vec2<u32>(global2.b.x, _wgslsmith_mult_u32(global2.b.x, var_1.b.x))), !vec4<bool>(!var_1.c.x, !arg_0.x, 1371f == var_1.d, false), 306f, !vec4<bool>(true, true, true, !(global2.a.x > -1i)));
    global0 = !arg_0.xz;
    return ~(vec3<i32>(arg_1.x >> (min(37930u, 54794u) % 32u), arg_1.x, var_2.a.x) >> (vec3<u32>(var_1.b.x, 1u, var_1.b.x) % vec3<u32>(32u)));
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1(abs(~func_4(func_3(Struct_1(global2.a, vec2<u32>(global2.b.x, global2.b.x), vec4<bool>(global0.x, global0.x, false, global0.x), global2.d, vec4<bool>(global0.x, global0.x, false, true)), Struct_1(global2.a, vec2<u32>(global2.b.x, 34678u), global2.c, -1181f, global2.c), vec3<f32>(521f, 945f, 1960f), vec3<u32>(4294967295u, global2.b.x, 1u)), vec3<i32>(global2.a.x, global1[_wgslsmith_index_u32(global2.b.x, 22u)], -44213i), global2.d)), reverseBits(~(~global2.b)), !global2.e, _wgslsmith_f_op_f32(-1120f - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -2492f)))), select(select(vec4<bool>(true, global0.x, global2.c.x & true, any(vec3<bool>(global2.e.x, global2.c.x, true))), !global2.e, vec4<bool>(false, global2.a.x >= 1599i, false, true)), global2.c, firstLeadingBit(i32(-1i) * -1i) > _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(-281i, -2147483647i, global2.a.x), u_input.a), vec3<i32>(global1[_wgslsmith_index_u32(global2.b.x, 22u)], u_input.a.x, global1[_wgslsmith_index_u32(0u, 22u)]))));
    var var_1 = var_0;
    global1 = array<i32, 22>();
    global2 = var_0;
    var var_2 = vec4<u32>(~(~(_wgslsmith_clamp_u32(var_0.b.x, var_1.b.x, 33206u) & global2.b.x)), ~_wgslsmith_add_u32(abs(4294967295u), var_1.b.x) | _wgslsmith_mod_u32(global2.b.x, ~var_0.b.x), 0u, _wgslsmith_add_u32(43823u & ~var_0.b.x, 4294967295u));
    return var_0;
}

fn func_5(arg_0: f32, arg_1: vec3<i32>, arg_2: Struct_1, arg_3: u32) -> vec4<f32> {
    let var_0 = arg_2;
    var var_1 = arg_2;
    var var_2 = var_0.c.x;
    let var_3 = reverseBits(arg_1);
    var_2 = select(false, false, true);
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(544f, 731f, arg_2.d, global2.d))))) * vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(552f * _wgslsmith_f_op_f32(-551f + 204f)) + -314f), func_2().d, arg_0, _wgslsmith_f_op_f32(abs(var_0.d))));
}

fn func_6(arg_0: vec4<f32>, arg_1: bool, arg_2: vec4<bool>, arg_3: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_div_f32(global2.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1333f))));
    var var_1 = _wgslsmith_f_op_vec4_f32(exp2(arg_0));
    global1 = array<i32, 22>();
    let var_2 = Struct_1(reverseBits(max(-(~vec3<i32>(global2.a.x, u_input.a.x, global2.a.x)), u_input.a)), arg_3.b, func_2().c, var_1.x, func_2().c);
    global0 = var_2.c.zw;
    return Struct_1(vec3<i32>(select(_wgslsmith_div_i32(-69183i, i32(-1i) * -1i), _wgslsmith_mult_i32(_wgslsmith_add_i32(var_2.a.x, 57118i), -global2.a.x), true), -abs(arg_3.a.x << (48531u % 32u)), global1[_wgslsmith_index_u32(arg_3.b.x, 22u)]), abs(vec2<u32>(abs(_wgslsmith_sub_u32(arg_3.b.x, arg_3.b.x)), _wgslsmith_mod_u32(var_2.b.x, ~global2.b.x))), arg_2, _wgslsmith_f_op_f32(-1716f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_2.d - -950f))))), var_2.c);
}

fn func_7(arg_0: Struct_1) -> Struct_1 {
    let var_0 = 0u;
    let var_1 = arg_0;
    global1 = array<i32, 22>();
    var var_2 = vec4<f32>(global2.d, _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(595f)) - var_1.d), _wgslsmith_f_op_f32(min(714f, _wgslsmith_f_op_f32(-811f * -447f)))), arg_0.d), 216f, -456f);
    global0 = global2.e.yx;
    return Struct_1(-(global2.a >> (reverseBits(~vec3<u32>(var_0, var_1.b.x, 4294967295u)) % vec3<u32>(32u))), var_1.b >> ((vec2<u32>(4294967295u, ~21162u) & select(var_1.b, vec2<u32>(1u, global2.b.x) << (vec2<u32>(global2.b.x, 38462u) % vec2<u32>(32u)), func_6(vec4<f32>(arg_0.d, 315f, -240f, -1099f), global0.x, vec4<bool>(false, global0.x, true, false), Struct_1(vec3<i32>(var_1.a.x, global2.a.x, -2147483647i), var_1.b, global2.e, 1000f, global2.e)).e.yx)) % vec2<u32>(32u)), vec4<bool>(false, !all(!vec2<bool>(true, arg_0.e.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -902f), global2.d) >= _wgslsmith_f_op_f32(1000f * 418f), arg_0.e.x), _wgslsmith_f_op_f32(global2.d * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(251f * global2.d)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_5(arg_0.d, u_input.a, Struct_1(var_1.a, vec2<u32>(global2.b.x, arg_0.b.x), var_1.e, var_2.x, var_1.c), 1u)).x))), func_6(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, var_2.x, var_2.x, 1277f) - vec4<f32>(var_2.x, var_1.d, var_2.x, -192f)), _wgslsmith_div_vec4_f32(vec4<f32>(418f, arg_0.d, global2.d, global2.d), vec4<f32>(var_1.d, global2.d, 375f, 410f))) + vec4<f32>(_wgslsmith_f_op_f32(step(global2.d, -345f)), _wgslsmith_f_op_f32(365f - arg_0.d), var_1.d, -448f)), max(_wgslsmith_sub_u32(15864u, arg_0.b.x), 1u) >= 8796u, select(vec4<bool>(false, true, all(global2.c), arg_0.e.x), global2.c, _wgslsmith_f_op_f32(-var_1.d) >= 418f), func_6(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global2.d, arg_0.d, var_1.d, -1667f))))), var_1.e.x, var_1.e, arg_0)).c);
}

fn func_8(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_2.d, _wgslsmith_f_op_f32(f32(-1f) * -513f)) - -596f);
    let var_1 = 37421u;
    global2 = func_7(Struct_1(arg_2.a, vec2<u32>(32106u, func_6(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.d, 944f, global2.d, arg_2.d)), false, arg_1.c, Struct_1(arg_1.a, vec2<u32>(var_1, var_1), arg_0.e, arg_0.d, arg_0.e)).b.x), !vec4<bool>(global0.x & arg_2.e.x, all(vec2<bool>(false, arg_2.c.x)), arg_0.e.x | arg_0.e.x, true), _wgslsmith_f_op_f32(-arg_0.d), vec4<bool>(arg_0.e.x, func_2().e.x, global2.e.x || (45140u < global2.b.x), global0.x)));
    let var_2 = _wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(~1u, 0u, _wgslsmith_clamp_u32(86172u, 48261u, 4294967295u), _wgslsmith_add_u32(var_1, 1131u)) ^ ~_wgslsmith_div_vec4_u32(vec4<u32>(0u, 15148u, 0u, var_1), vec4<u32>(arg_2.b.x, arg_1.b.x, arg_2.b.x, 10859u)), reverseBits(_wgslsmith_mult_vec4_u32(vec4<u32>(0u, arg_0.b.x, arg_2.b.x, arg_1.b.x), vec4<u32>(63908u, arg_0.b.x, 59952u, 55431u))) >> (~_wgslsmith_div_vec4_u32(vec4<u32>(arg_0.b.x, global2.b.x, 0u, 29289u), vec4<u32>(arg_2.b.x, arg_2.b.x, arg_0.b.x, arg_0.b.x)) % vec4<u32>(32u))), vec4<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(61448u, 1u), arg_1.b) & _wgslsmith_mult_u32(abs(arg_1.b.x), 23712u), 74904u, arg_2.b.x, arg_1.b.x));
    global2 = Struct_1(-select(-(arg_1.a >> (vec3<u32>(0u, 34750u, global2.b.x) % vec3<u32>(32u))), vec3<i32>(-6794i, -77425i, global2.a.x), any(select(vec4<bool>(arg_0.e.x, false, false, global2.e.x), arg_2.c, arg_2.c))), ~firstTrailingBit(_wgslsmith_mod_vec2_u32(arg_2.b, arg_0.b) >> (~arg_1.b % vec2<u32>(32u))), select(vec4<bool>(arg_2.e.x, global2.c.x, true, arg_2.b.x >= ~arg_1.b.x), func_6(_wgslsmith_f_op_vec4_f32(-vec4<f32>(125f, -1279f, 414f, global2.d)), func_2().e.x, arg_1.c, Struct_1(reverseBits(arg_2.a), vec2<u32>(1u, 39312u), func_7(arg_1).e, _wgslsmith_f_op_f32(select(arg_1.d, arg_2.d, arg_2.e.x)), func_7(arg_0).c)).c, arg_1.c), _wgslsmith_f_op_f32(arg_0.d + -1000f), !vec4<bool>(!all(vec4<bool>(true, false, true, arg_0.e.x)), arg_2.e.x, !(arg_2.d <= 499f), true));
    return arg_0;
}

fn func_1(arg_0: i32) -> StorageBuffer {
    global0 = vec2<bool>(!(global2.b.x >= global2.b.x), false);
    let var_0 = select(true, !(!global2.c.x), select(global2.d <= _wgslsmith_f_op_f32(-global2.d), true & global0.x, global0.x)) & !all(global2.c.zz);
    let var_1 = -531f;
    let var_2 = func_8(func_7(func_6(_wgslsmith_f_op_vec4_f32(func_5(-1000f, global2.a, func_2(), global2.b.x ^ 30619u)), true, select(vec4<bool>(global0.x, global2.c.x, false, false), func_3(Struct_1(vec3<i32>(global1[_wgslsmith_index_u32(global2.b.x, 22u)], 1i, -3199i), global2.b, global2.e, -1216f, global2.c), Struct_1(global2.a, vec2<u32>(global2.b.x, 34303u), global2.c, 344f, vec4<bool>(false, global0.x, true, var_0)), vec3<f32>(818f, var_1, var_1), vec3<u32>(50134u, 1u, global2.b.x)), var_0), Struct_1(firstTrailingBit(u_input.a), _wgslsmith_mult_vec2_u32(global2.b, global2.b), global2.c, _wgslsmith_f_op_f32(var_1 + var_1), global2.c))), Struct_1(~(~abs(vec3<i32>(arg_0, global2.a.x, 0i))), vec2<u32>(abs(12927u), global2.b.x), select(vec4<bool>(!global0.x, true, func_7(Struct_1(u_input.a, vec2<u32>(11724u, global2.b.x), global2.c, -1000f, vec4<bool>(false, false, global2.c.x, false))).c.x, global2.e.x), global2.c, reverseBits(u_input.a.x) <= ~(-2147483647i)), global2.d, vec4<bool>(true, true, any(!vec3<bool>(false, global0.x, var_0)), false)), Struct_1(vec3<i32>(1i, global2.a.x, ~countOneBits(-1i)), vec2<u32>(global2.b.x, global2.b.x), vec4<bool>(any(vec4<bool>(global2.e.x, global2.e.x, false, false)), false, global0.x, func_6(vec4<f32>(var_1, var_1, -602f, -319f), true, func_7(Struct_1(vec3<i32>(global2.a.x, 17645i, global2.a.x), global2.b, global2.e, 354f, vec4<bool>(var_0, true, var_0, var_0))).e, func_2()).c.x), func_6(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, 884f, global2.d, var_1)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.d, global2.d, -775f, var_1))), !func_2().e.x, select(vec4<bool>(false, global2.c.x, true, var_0), func_2().c, global2.c), Struct_1(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b, -20777i, arg_0), vec3<i32>(global1[_wgslsmith_index_u32(global2.b.x, 22u)], -39293i, -47387i)), countOneBits(vec2<u32>(4294967295u, 0u)), vec4<bool>(false, global0.x, global0.x, global2.c.x), global2.d, vec4<bool>(global2.e.x, true, global2.e.x, global2.c.x))).d, !vec4<bool>(all(vec2<bool>(false, false)), true, true, true)));
    let var_3 = Struct_1(global2.a, vec2<u32>(firstLeadingBit(~(~80889u)), (global2.b.x << ((37233u >> (var_2.b.x % 32u)) % 32u)) << (~(~var_2.b.x) % 32u)), vec4<bool>(all(vec4<bool>(func_2().e.x, true, !var_0, var_1 != global2.d)), true, all(!vec4<bool>(true, true, var_0, global0.x)), global0.x), _wgslsmith_f_op_f32(-global2.d), !(!vec4<bool>(var_2.e.x, global0.x, global2.d <= 1000f, u_input.a.x == u_input.a.x)));
    return StorageBuffer(arg_0, var_2.a, func_6(vec4<f32>(448f, -1000f, var_1, var_1), true, !func_6(_wgslsmith_f_op_vec4_f32(-vec4<f32>(656f, 334f, var_2.d, var_3.d)), false, vec4<bool>(var_0, var_3.e.x, global0.x, var_2.c.x), func_2()).e, var_2).b.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0.x;
    global0 = vec2<bool>(true, all(!vec4<bool>(true, false, select(global2.e.x, global2.c.x, false), !global0.x)));
    let x = u_input.a;
    s_output = func_1(~(-u_input.b));
}

