struct Struct_1 {
    a: vec2<bool>,
    b: f32,
    c: i32,
    d: f32,
    e: vec4<bool>,
}

struct Struct_2 {
    a: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: vec3<u32>,
    d: i32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 25>;

var<private> global1: array<u32, 26> = array<u32, 26>(44327u, 4294967295u, 0u, 4294967295u, 4294967295u, 4294967295u, 4294967295u, 44292u, 4363u, 4294967295u, 42274u, 44902u, 39511u, 4294967295u, 1u, 1u, 1u, 95563u, 1u, 62198u, 2629u, 11241u, 1u, 1u, 20318u, 1u);

var<private> global2: array<vec4<i32>, 12> = array<vec4<i32>, 12>(vec4<i32>(i32(-2147483648), 8696i, 19033i, -41997i), vec4<i32>(-9332i, i32(-2147483648), 0i, 14308i), vec4<i32>(0i, 679i, 2147483647i, 12150i), vec4<i32>(-80096i, 1i, 66502i, -43121i), vec4<i32>(0i, -6017i, -32698i, 0i), vec4<i32>(-15377i, 18192i, 0i, 2147483647i), vec4<i32>(42791i, -1i, 12358i, 17527i), vec4<i32>(-1i, 72811i, -26577i, 2798i), vec4<i32>(-1i, -2613i, 1i, -1i), vec4<i32>(1i, -1i, -9136i, -30372i), vec4<i32>(2147483647i, 1i, -19575i, -17657i), vec4<i32>(-10884i, 1i, -14964i, -24338i));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: vec2<i32>) -> vec2<i32> {
    var var_0 = select(select(arg_0.e.xxw, select(arg_0.e.yzy, !(!arg_0.e.zzy), !arg_0.a.x), vec3<bool>(all(!arg_0.e.zzz), any(!arg_0.e.wyy), (u_input.a.x | 1u) < (u_input.b.x >> (u_input.d % 32u)))), select(arg_0.e.xxx, arg_0.e.xxx, arg_0.e.wyw), arg_0.a.x);
    var var_1 = -13278i <= arg_0.c;
    global0 = array<Struct_1, 25>();
    var var_2 = Struct_2(all(arg_0.e.yz));
    global0 = array<Struct_1, 25>();
    return vec2<i32>(~2147483647i, -1i);
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_1) -> u32 {
    let var_0 = ~(~min(_wgslsmith_add_u32(~u_input.d, _wgslsmith_add_u32(global1[_wgslsmith_index_u32(0u, 26u)], global1[_wgslsmith_index_u32(30642u, 26u)])), max(_wgslsmith_dot_vec4_u32(u_input.a, u_input.a), firstTrailingBit(66279u))));
    let var_1 = !(!arg_1.e.x);
    var var_2 = Struct_1(arg_1.a, 2261f, _wgslsmith_dot_vec2_i32(-((u_input.c >> (u_input.b.yx % vec2<u32>(32u))) << (~u_input.b.yx % vec2<u32>(32u))), vec2<i32>(max(arg_1.c, arg_0.x) >> (var_0 % 32u), ~(-2147483647i) ^ ~arg_1.c)), _wgslsmith_f_op_f32(min(arg_1.b, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(arg_1.d)), -224f)), _wgslsmith_f_op_f32(min(139f, _wgslsmith_f_op_f32(-arg_1.b))), select(true, true, var_1))))), arg_1.e);
    global1 = array<u32, 26>();
    var var_3 = var_2.e;
    return firstLeadingBit(_wgslsmith_div_u32(max(~(~4294967295u), 1u), ~90387u));
}

fn func_2(arg_0: u32) -> Struct_1 {
    global1 = array<u32, 26>();
    var var_0 = -184f;
    global0 = array<Struct_1, 25>();
    var var_1 = vec4<bool>(true & select(true, all(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false))), false), all(vec4<bool>(true, true, true, true)), true, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(-870f)))) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-2637f))));
    let var_2 = select(u_input.a, vec4<u32>(4294967295u, 1u, u_input.d, ~1u), var_1.x | false);
    return global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(4294967295u, u_input.b.x, ~global1[_wgslsmith_index_u32(func_4(-func_3(Struct_1(var_1.zx, 1100f, -7626i, -700f, vec4<bool>(false, var_1.x, var_1.x, true)), u_input.c), global0[_wgslsmith_index_u32(0u, 25u)]), 26u)]), 25u)];
}

fn func_5(arg_0: i32, arg_1: Struct_1, arg_2: Struct_2, arg_3: Struct_2) -> vec2<f32> {
    var var_0 = Struct_2(func_2(_wgslsmith_clamp_u32(func_4(-vec2<i32>(arg_1.c, arg_0), func_2(4294967295u)), 53436u, u_input.d)).a.x);
    var var_1 = Struct_2(arg_1.a.x);
    var_1 = arg_2;
    var_0 = Struct_2(true);
    var var_2 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_1.d), _wgslsmith_f_op_f32(abs(arg_1.d))))), _wgslsmith_f_op_f32(f32(-1f) * -951f)), func_2(~(~min(0u, 1u))).b);
    return _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1000f))))));
}

fn func_6(arg_0: vec2<f32>) -> i32 {
    let var_0 = 8248i;
    global0 = array<Struct_1, 25>();
    var var_1 = vec4<i32>(u_input.c.x, ~(-2147483647i), -_wgslsmith_add_i32(var_0, var_0), _wgslsmith_clamp_i32(1i, var_0, 1i));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(964f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_0.x)) + 1169f) + arg_0.x)));
    global2 = array<vec4<i32>, 12>();
    return 20687i;
}

fn func_7(arg_0: i32, arg_1: Struct_1, arg_2: vec4<f32>, arg_3: Struct_1) -> u32 {
    let var_0 = vec2<bool>(!(!arg_3.e.x), any(vec4<bool>(true, false, false, all(vec3<bool>(arg_1.a.x, true, arg_1.a.x)))));
    let var_1 = arg_1.b;
    global2 = array<vec4<i32>, 12>();
    let var_2 = -arg_0;
    global0 = array<Struct_1, 25>();
    return ~max(0u, max(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 4294967295u), u_input.b.xy) ^ ~4294967295u, firstLeadingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(31343u, 26u)], u_input.d), vec2<u32>(4294967295u, global1[_wgslsmith_index_u32(27822u, 26u)])))));
}

fn func_1(arg_0: vec4<bool>, arg_1: vec2<i32>, arg_2: vec4<i32>) -> Struct_2 {
    var var_0 = global0[_wgslsmith_index_u32(func_7(func_6(_wgslsmith_f_op_vec2_f32(func_5(arg_1.x, func_2(~1u), Struct_2(arg_0.x), Struct_2(all(vec2<bool>(false, false)))))), Struct_1(select(vec2<bool>(global1[_wgslsmith_index_u32(7615u, 26u)] == 1u, !arg_0.x), !arg_0.zz, vec2<bool>(false, true)), -981f, arg_2.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-503f * _wgslsmith_f_op_f32(select(1000f, -1678f, true))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -489f), _wgslsmith_f_op_f32(717f - -582f))), any(!vec3<bool>(arg_0.x, arg_0.x, false)))), vec4<bool>(!func_2(0u).a.x, arg_0.x, ~4294967295u <= (u_input.a.x | 0u), true)), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)))), Struct_1(select(select(arg_0.wz, select(arg_0.zx, vec2<bool>(arg_0.x, arg_0.x), arg_0.zz), select(vec2<bool>(arg_0.x, false), arg_0.xy, arg_0.x)), arg_0.xx, all(arg_0.zzx) & arg_0.x), -540f, arg_1.x, _wgslsmith_f_op_vec2_f32(func_5(select(_wgslsmith_div_i32(1i, u_input.c.x), ~arg_2.x, select(false, false, arg_0.x)), global0[_wgslsmith_index_u32(abs(max(u_input.a.x, u_input.b.x)), 25u)], Struct_2(arg_0.x), Struct_2(true))).x, !select(select(arg_0, arg_0, vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x)), arg_0, vec4<bool>(false, arg_0.x, arg_0.x, false)))), 25u)];
    var var_1 = Struct_2(any(vec3<bool>(true, true, all(select(vec2<bool>(true, false), var_0.e.xz, vec2<bool>(arg_0.x, true))))));
    let var_2 = vec3<i32>(_wgslsmith_mult_i32(var_0.c, -7123i), -arg_2.x, -(~(~(-49240i))));
    let var_3 = _wgslsmith_add_i32(func_3(Struct_1(!select(var_0.a, arg_0.yz, var_0.a.x), 1f, -_wgslsmith_dot_vec4_i32(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 26u)], 26u)], 12u)], vec4<i32>(4985i, var_2.x, 61251i, arg_1.x)), var_0.b, vec4<bool>(true, var_1.a != var_0.e.x, var_0.a.x || false, !var_0.a.x)), ~(~func_3(Struct_1(var_0.a, 2647f, 2147483647i, var_0.d, var_0.e), var_2.zy))).x, var_2.x);
    global2 = array<vec4<i32>, 12>();
    return Struct_2(var_0.e.x);
}

fn func_8(arg_0: Struct_1, arg_1: Struct_2) -> Struct_1 {
    let var_0 = select(arg_0.e.xxz, func_2(_wgslsmith_dot_vec4_u32(~u_input.a, vec4<u32>(21092u, u_input.b.x, global1[_wgslsmith_index_u32(0u, 26u)], 4294967295u)) & u_input.d).e.zzz, !vec3<bool>(!any(vec3<bool>(arg_1.a, false, arg_0.e.x)), all(!arg_0.a), 332f != _wgslsmith_f_op_f32(arg_0.b * -458f)));
    let var_1 = func_2((u_input.b.x >> ((~global1[_wgslsmith_index_u32(0u, 26u)] | ~u_input.a.x) % 32u)) << (countOneBits(~(~u_input.b.x)) % 32u));
    global1 = array<u32, 26>();
    let var_2 = 1u;
    global1 = array<u32, 26>();
    return func_2(max(_wgslsmith_div_u32(abs(global1[_wgslsmith_index_u32(7326u, 26u)]), func_4(vec2<i32>(arg_0.c, -1i), var_1)), var_2) ^ ((reverseBits(1u) >> (~u_input.b.x % 32u)) >> (global1[_wgslsmith_index_u32(~56331u & (var_2 | 7524u), 26u)] % 32u)));
}

fn func_9(arg_0: Struct_1, arg_1: u32) -> vec2<f32> {
    var var_0 = func_7(func_2(_wgslsmith_mult_u32(global1[_wgslsmith_index_u32(u_input.a.x << (13311u % 32u), 26u)] ^ _wgslsmith_clamp_u32(arg_1, 0u, arg_1), _wgslsmith_sub_u32(~global1[_wgslsmith_index_u32(u_input.b.x, 26u)], select(4294967295u, 18050u, arg_0.e.x)))).c, global0[_wgslsmith_index_u32(countOneBits(~14247u) | global1[_wgslsmith_index_u32(func_7(_wgslsmith_mult_i32(u_input.c.x, u_input.c.x), global0[_wgslsmith_index_u32(max(min(arg_1, arg_1), ~arg_1), 25u)], _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(vec4<f32>(arg_0.b, arg_0.b, 1000f, 1000f), vec4<f32>(530f, 2902f, arg_0.d, 117f)))), arg_0), 26u)], 25u)], _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(2248f, arg_0.b)), -1031f, _wgslsmith_f_op_f32(f32(-1f) * -107f), _wgslsmith_f_op_f32(max(711f, arg_0.b))))), Struct_1(vec2<bool>(true, true), _wgslsmith_f_op_f32(f32(-1f) * -1000f), u_input.c.x, -2788f, vec4<bool>(-649f < _wgslsmith_f_op_f32(arg_0.b * arg_0.d), true && arg_0.a.x, false, all(!vec4<bool>(false, arg_0.e.x, false, true)))));
    global0 = array<Struct_1, 25>();
    let var_1 = func_1(vec4<bool>(!all(arg_0.e.wxz), true, true, (_wgslsmith_f_op_f32(select(arg_0.b, 422f, false)) <= _wgslsmith_f_op_f32(-880f * -437f)) & true), _wgslsmith_clamp_vec2_i32(max(u_input.c, -firstLeadingBit(u_input.c)), -(~max(u_input.c, u_input.c)), vec2<i32>(~(i32(-1i) * -1i), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c.x, u_input.c.x), max(vec2<i32>(13673i, arg_0.c), u_input.c)))), -abs(global2[_wgslsmith_index_u32(4294967295u, 12u)]));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_0.b, _wgslsmith_f_op_f32(func_2(~u_input.d).d - _wgslsmith_f_op_f32(max(-990f, _wgslsmith_f_op_f32(exp2(arg_0.b))))))));
    var var_3 = _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(-u_input.c, vec2<i32>(func_2(4294967295u).c, _wgslsmith_dot_vec2_i32(u_input.c, vec2<i32>(38299i, arg_0.c)))) << (4294967295u % 32u), i32(-1i) * -arg_0.c);
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(261f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_0.d + -110f))))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<u32, 26>();
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_9(func_8(global0[_wgslsmith_index_u32(reverseBits(18721u), 25u)], func_1(vec4<bool>(true, true, false, true), -u_input.c, ~vec4<i32>(u_input.c.x, u_input.c.x, -2147483647i, u_input.c.x))), countOneBits(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.d, 26u)], 26u)] ^ _wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(u_input.a.x, 19443u, u_input.a.x, 62680u))))));
    let var_1 = Struct_1(func_8(func_8(func_2(countOneBits(global1[_wgslsmith_index_u32(1u, 26u)])), func_1(vec4<bool>(true, true, true, true), func_3(Struct_1(vec2<bool>(false, true), 796f, -6135i, var_0.x, vec4<bool>(true, true, false, true)), vec2<i32>(2147483647i, -49928i)), global2[_wgslsmith_index_u32(14099u, 12u)])), Struct_2(func_1(vec4<bool>(false, false, false, false), ~u_input.c, _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.c.x, -2147483647i, -11758i, 2147483647i), vec4<i32>(u_input.c.x, 0i, -25802i, u_input.c.x))).a)).a, func_8(global0[_wgslsmith_index_u32(u_input.a.x, 25u)], Struct_2(all(func_2(1u).e))).b, min(select(func_8(global0[_wgslsmith_index_u32(4294967295u, 25u)], Struct_2(true)).c << (u_input.d % 32u), 42125i, true), u_input.c.x), _wgslsmith_f_op_f32(-255f * 1115f), !(!func_2(0u >> (global1[_wgslsmith_index_u32(26869u, 26u)] % 32u)).e));
    let var_2 = var_1.a.x;
    global1 = array<u32, 26>();
    global2 = array<vec4<i32>, 12>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(171f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.d))), u_input.a, ~(~min(vec3<u32>(0u, u_input.d, u_input.d), u_input.b)) & u_input.a.zyw, _wgslsmith_dot_vec2_i32(u_input.c, min(vec2<i32>(u_input.c.x << (48611u % 32u), min(-1i, var_1.c)), abs(~vec2<i32>(-1i, var_1.c)))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1352f - 2175f) + _wgslsmith_f_op_f32(min(var_1.d, -1000f))) * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-681f + var_0.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b) * _wgslsmith_div_f32(var_0.x, var_1.b)) - _wgslsmith_f_op_vec2_f32(func_9(Struct_1(vec2<bool>(true, var_2), var_0.x, u_input.c.x, var_1.d, vec4<bool>(true, true, var_1.e.x, var_1.a.x)), abs(0u))).x), var_0.x, var_1.b));
}

