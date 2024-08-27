struct Struct_1 {
    a: vec2<u32>,
    b: vec3<i32>,
    c: vec2<u32>,
    d: vec4<i32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: i32,
    c: vec4<u32>,
    d: Struct_1,
    e: i32,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: vec2<f32>,
    b: i32,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec3<i32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: Struct_1;

var<private> global2: vec4<bool>;

var<private> global3: Struct_1;

var<private> global4: vec4<i32> = vec4<i32>(1i, 6727i, 1i, -7359i);

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec2<i32>, arg_1: f32, arg_2: Struct_1, arg_3: Struct_4) -> i32 {
    global1 = arg_2;
    let var_0 = !(!vec4<bool>(true, true, reverseBits(1i) >= arg_2.d.x, -1278f <= _wgslsmith_f_op_f32(-global0.x)));
    let var_1 = global0.xyw;
    var var_2 = false;
    global2 = !select(select(!select(vec4<bool>(global2.x, true, false, var_0.x), var_0, var_0), !vec4<bool>(global2.x, var_0.x, true, global2.x), (58741u > u_input.d) & any(var_0)), !select(vec4<bool>(true, true, false, global2.x), !var_0, vec4<bool>(false, global2.x, var_0.x, false)), !vec4<bool>(true, true, false, global2.x | global2.x));
    return global1.d.x;
}

fn func_2() -> Struct_1 {
    global4 = ~_wgslsmith_add_vec4_i32(vec4<i32>(2147483647i ^ global4.x, _wgslsmith_add_i32(~u_input.b, global3.d.x | -32656i), global1.b.x, func_3(vec2<i32>(-2147483647i, global4.x), global0.x, Struct_1(vec2<u32>(global3.a.x, u_input.c), vec3<i32>(-2147483647i, 79950i, u_input.b), vec2<u32>(13474u, 4294967295u), vec4<i32>(1i, -2147483647i, u_input.a.x, -9552i)), Struct_4(global0.zx, 0i, Struct_1(vec2<u32>(global1.a.x, u_input.c), global4.yyx, global3.c, u_input.a)))), ~(-global3.d ^ (u_input.a >> (vec4<u32>(0u, 68547u, u_input.c, global1.c.x) % vec4<u32>(32u)))));
    var var_0 = Struct_4(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0.wx) - _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global0.x, 1347f))))))), max(1i, -_wgslsmith_mult_i32(global4.x, 0i) ^ min(-2147483647i, -13523i)), Struct_1(vec2<u32>(abs(2375u), min(global1.c.x, 52465u)) ^ _wgslsmith_mod_vec2_u32(global3.a, global3.c), vec3<i32>(31315i, u_input.b, u_input.a.x), ~(~global3.c), global1.d));
    var var_1 = Struct_4(vec2<f32>(global0.x, var_0.a.x), func_3(min(firstTrailingBit(firstTrailingBit(vec2<i32>(global1.d.x, global4.x))), global4.ww), -699f, var_0.c, Struct_4(vec2<f32>(global0.x, _wgslsmith_f_op_f32(965f + 1262f)), 0i, var_0.c)), Struct_1(~global1.a, -(~vec3<i32>(var_0.b, 27711i, 0i)), ~vec2<u32>(var_0.c.c.x, 39475u) & abs(global3.c), _wgslsmith_clamp_vec4_i32(~firstLeadingBit(global1.d), abs(~var_0.c.d), _wgslsmith_div_vec4_i32(vec4<i32>(global1.b.x, -7800i, var_0.c.b.x, 32456i) ^ global3.d, -u_input.a))));
    global4 = global1.d;
    return var_1.c;
}

fn func_1(arg_0: vec2<i32>, arg_1: f32, arg_2: i32) -> vec2<f32> {
    global3 = Struct_1(global3.c, ~global4.wzx, _wgslsmith_mod_vec2_u32(~_wgslsmith_div_vec2_u32(~vec2<u32>(global3.a.x, global1.a.x), vec2<u32>(1u, global3.c.x)), _wgslsmith_clamp_vec2_u32(vec2<u32>(_wgslsmith_add_u32(global3.c.x, 1u), ~14283u), abs(global3.a), global1.a)), ~(~vec4<i32>(global4.x, i32(-1i) * -1i, min(arg_0.x, u_input.a.x), 56300i)));
    global1 = func_2();
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global0.x + _wgslsmith_f_op_f32(sign(1393f))), 1000f, global2.x)) - _wgslsmith_f_op_f32(abs(498f))), -164f);
    var var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-2141f, 274f, false)), _wgslsmith_div_f32(arg_1, global0.x))), _wgslsmith_f_op_f32(arg_1 - _wgslsmith_f_op_f32(min(-2273f, 198f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(928f)))), false));
    let var_2 = true;
    return _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1052f, -1185f), vec2<f32>(global0.x, -1774f), vec2<bool>(true, true))), vec2<f32>(arg_1, -395f))) + global0.yz)));
}

fn func_4(arg_0: bool, arg_1: vec2<f32>, arg_2: Struct_4, arg_3: Struct_2) -> Struct_3 {
    var var_0 = global1.b;
    global3 = arg_2.c;
    global4 = vec4<i32>(-1i) * -vec4<i32>(global4.x, _wgslsmith_mult_i32(~global3.b.x, 16590i), abs(-1i), abs(arg_2.b ^ 0i));
    var var_1 = 605f;
    global2 = select(!vec4<bool>(~28538i != ~arg_3.d.b.x, !(!global2.x), global4.x > (u_input.a.x & arg_2.b), global2.x), vec4<bool>(any(vec3<bool>(global1.c.x < 4294967295u, true, false)), global2.x, true, all(select(global2.wxw, vec3<bool>(true, false, false), global1.a.x <= 0u))), vec4<bool>(true, _wgslsmith_f_op_f32(-2139f - global0.x) == arg_1.x, global2.x, global2.x));
    return Struct_3(arg_2.a.x);
}

fn func_5(arg_0: Struct_3, arg_1: i32) -> vec4<bool> {
    let var_0 = Struct_4(global0.zx, func_2().b.x, Struct_1(_wgslsmith_mod_vec2_u32(global1.c, abs(vec2<u32>(u_input.c, 32082u))), reverseBits(vec3<i32>(1i & global1.d.x, arg_1, ~arg_1)), _wgslsmith_add_vec2_u32((global3.a >> (vec2<u32>(global3.c.x, u_input.c) % vec2<u32>(32u))) | select(global3.c, global1.c, global2.yy), ~(global3.c >> (vec2<u32>(global3.a.x, global3.c.x) % vec2<u32>(32u)))), func_2().d));
    global0 = vec4<f32>(arg_0.a, -994f, var_0.a.x, _wgslsmith_f_op_f32(abs(186f)));
    var var_1 = func_2();
    let var_2 = 1u;
    var var_3 = func_4(true, _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_1(vec2<i32>(global3.d.x, -2147483647i), var_0.a.x, u_input.a.x)).x)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-arg_0.a), -2533f) + _wgslsmith_f_op_vec2_f32(min(vec2<f32>(global0.x, arg_0.a), _wgslsmith_f_op_vec2_f32(global0.yx * vec2<f32>(448f, var_0.a.x)))))), Struct_4(global0.zz, -_wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(global1.b, global1.b), 2147483647i | arg_1), var_0.c), Struct_2(_wgslsmith_clamp_vec4_i32(abs(select(vec4<i32>(arg_1, var_0.b, arg_1, -36793i), var_0.c.d, global2.x)), global3.d, func_2().d), global3.b.x, _wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.c.a.x, 1u, ~1u, 74336u), vec4<u32>(32717u, _wgslsmith_sub_u32(global1.a.x, 63889u), var_1.a.x >> (12681u % 32u), 1u), ~(vec4<u32>(u_input.c, u_input.d, 27875u, 1u) | vec4<u32>(40127u, 4294967295u, 1u, global1.c.x))), func_2(), 2147483647i >> ((0u >> (reverseBits(global3.c.x) % 32u)) % 32u)));
    return !(!(!vec4<bool>(true, false, var_1.a.x >= var_1.c.x, global2.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = !select(!select(vec4<bool>(global2.x, global2.x, false, true), select(vec4<bool>(true, global2.x, global2.x, global2.x), vec4<bool>(global2.x, false, false, false), vec4<bool>(false, global2.x, false, true)), !vec4<bool>(true, global2.x, global2.x, global2.x)), func_5(func_4(!global2.x, _wgslsmith_f_op_vec2_f32(func_1(vec2<i32>(26123i, -21334i), -1199f, 22719i)), Struct_4(global0.ww, u_input.a.x, Struct_1(vec2<u32>(4170u, 63134u), vec3<i32>(global4.x, global3.b.x, global1.d.x), global3.a, global1.d)), Struct_2(vec4<i32>(global4.x, 9767i, -2147483647i, -32985i), global3.b.x, vec4<u32>(u_input.d, 34186u, global1.a.x, global1.a.x), Struct_1(global3.a, vec3<i32>(global3.d.x, global1.b.x, -2147483647i), vec2<u32>(u_input.c, u_input.d), global1.d), -26119i)), min(-8014i, ~u_input.a.x)), select(!select(vec4<bool>(global2.x, global2.x, global2.x, true), vec4<bool>(global2.x, true, global2.x, global2.x), global2.x), select(func_5(Struct_3(global0.x), 0i), select(vec4<bool>(global2.x, true, global2.x, true), vec4<bool>(global2.x, global2.x, global2.x, true), vec4<bool>(true, global2.x, global2.x, false)), global2.x), true));
    let var_0 = global0.x;
    let var_1 = 11999u ^ _wgslsmith_mult_u32(100901u, firstTrailingBit(global3.a.x & ~4294967295u));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_vec2_f32(func_1(countOneBits(~vec2<i32>(global4.x, 2147483647i)), _wgslsmith_f_op_f32(f32(-1f) * -1371f), _wgslsmith_add_i32(global3.b.x, global3.d.x & global4.x))).x)));
    global4 = -_wgslsmith_sub_vec4_i32(vec4<i32>(_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(global3.d.xy, vec2<i32>(global3.b.x, 0i)), ~global1.d.x), _wgslsmith_clamp_i32(-14156i, 1i, _wgslsmith_mod_i32(global3.d.x, global4.x)), 1i, countOneBits(-11178i)), -(~(global1.d ^ vec4<i32>(33663i, global4.x, global4.x, global1.b.x))));
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(-1088f, -690f)), _wgslsmith_f_op_f32(select(356f, global0.x, func_5(Struct_3(global0.x), -2147483647i).x)), _wgslsmith_f_op_f32(func_4(true, global0.zz, Struct_4(global0.xx, u_input.a.x, Struct_1(vec2<u32>(var_1, var_1), vec3<i32>(0i, global4.x, global4.x), global3.a, vec4<i32>(2147483647i, -28127i, global1.d.x, global3.b.x))), Struct_2(vec4<i32>(23400i, global3.d.x, global3.b.x, -7151i), -1i, vec4<u32>(1u, global1.c.x, var_1, global3.c.x), Struct_1(vec2<u32>(var_1, var_1), vec3<i32>(-10649i, -35898i, global3.d.x), vec2<u32>(global3.c.x, global1.a.x), global3.d), 78828i)).a + _wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(639f)), _wgslsmith_f_op_f32(-global0.x))))) - vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global0.x, -122f, any(vec4<bool>(global2.x, false, global2.x, true)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1537f * 1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(global0.x)), global0.x, any(global2.xwz)))), global0.x, 1580f));
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, _wgslsmith_f_op_f32(f32(-1f) * -125f), 659f, global0.x) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global0.x, global0.x, 2097f, 1039f))))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, _wgslsmith_f_op_f32(trunc(global0.x)), _wgslsmith_f_op_f32(floor(-574f)), global0.x))));
    let x = u_input.a;
    s_output = StorageBuffer(~(vec4<u32>(global1.a.x, 0u, var_1, _wgslsmith_mod_u32(4294967295u, global3.c.x)) & firstTrailingBit(vec4<u32>(var_1, 0u, u_input.d, 8318u) >> (vec4<u32>(4294967295u, 1u, 27742u, global1.c.x) % vec4<u32>(32u)))), 1u, global3.d.zzy, vec3<u32>(~(~global1.c.x & _wgslsmith_dot_vec4_u32(vec4<u32>(var_1, var_1, 4294967295u, 87713u), vec4<u32>(global1.c.x, 1u, u_input.d, global3.a.x))), abs(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(13015u, var_1, u_input.c, 4294967295u)), vec4<u32>(var_1, var_1, 10842u, 17240u) << (vec4<u32>(31505u, var_1, 1u, 40384u) % vec4<u32>(32u)))), ~1u));
}

