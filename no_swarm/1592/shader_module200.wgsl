struct Struct_1 {
    a: bool,
    b: bool,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec3<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<f32>,
    c: bool,
    d: vec2<f32>,
}

struct Struct_4 {
    a: vec4<bool>,
    b: Struct_3,
    c: u32,
    d: i32,
    e: Struct_1,
}

struct Struct_5 {
    a: Struct_4,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec3<i32>,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(false, true, true);

var<private> global1: Struct_2;

var<private> global2: Struct_5 = Struct_5(Struct_4(vec4<bool>(true, true, true, false), Struct_3(Struct_1(false, false, 1963u), vec4<f32>(-659f, -202f, -665f, -752f), true, vec2<f32>(-1081f, 888f)), 19721u, -1i, Struct_1(false, false, 0u)));

var<private> global3: Struct_5 = Struct_5(Struct_4(vec4<bool>(true, false, true, false), Struct_3(Struct_1(false, false, 60127u), vec4<f32>(2136f, 320f, -521f, 303f), false, vec2<f32>(-796f, 1042f)), 34083u, 19205i, Struct_1(true, true, 12379u)));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> bool {
    global3 = Struct_5(Struct_4(vec4<bool>(-35i < global2.a.d, global2.a.b.a.a, !(!global1.a.a), true), global3.a.b, global1.c.x, u_input.c.x, global3.a.b.a));
    global3 = Struct_5(Struct_4(!select(!vec4<bool>(false, global2.a.b.a.a, global1.a.a, global3.a.a.x), global3.a.a, !global3.a.a), global3.a.b, _wgslsmith_dot_vec2_u32(global1.c.yx, firstTrailingBit(global1.c.yy)), select(-2147483647i, _wgslsmith_mod_i32(global2.a.d, 2147483647i), global1.a.b), Struct_1(!global2.a.a.x, _wgslsmith_f_op_f32(exp2(global1.b)) > -1351f, _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.b, global3.a.b.a.c, global3.a.e.c, 25344u), ~vec4<u32>(65617u, 0u, 8277u, global1.a.c)))));
    let var_0 = vec4<i32>(-83202i >> (_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 75828u, 48943u, global1.a.c), vec4<u32>(global1.d.c, global1.a.c, u_input.b, 59527u)) % 32u), global2.a.d, _wgslsmith_sub_i32(countOneBits(20363i), global2.a.d), 2147483647i) ^ vec4<i32>(abs(-4882i), global3.a.d, 1i, 2147483647i);
    var var_1 = Struct_3(Struct_1(any(vec2<bool>(false, true)), all(select(global2.a.a, vec4<bool>(false, true, global1.a.a, global3.a.a.x), vec4<bool>(global0.x, global1.a.a, global3.a.b.a.b, false))) | true, ~min(_wgslsmith_dot_vec4_u32(vec4<u32>(17290u, global1.c.x, global2.a.e.c, 0u), vec4<u32>(global2.a.e.c, 60013u, 69426u, global3.a.e.c)), global1.a.c)), global3.a.b.b, false, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(global2.a.b.d * vec2<f32>(global2.a.b.d.x, 236f)), global3.a.b.d))) - vec2<f32>(-731f, -1534f)));
    var var_2 = global2.a.b;
    return any(vec4<bool>(all(global3.a.a.xx), global0.x, var_1.a.a, global0.x));
}

fn func_2(arg_0: f32, arg_1: u32) -> Struct_2 {
    global1 = Struct_2(global1.d, _wgslsmith_f_op_f32(-1959f - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-2038f, 670f) * global1.b)))), ~((countOneBits(vec3<u32>(global3.a.e.c, global2.a.b.a.c, global3.a.e.c)) ^ global1.c) ^ abs(vec3<u32>(global2.a.e.c, global2.a.c, global1.c.x) ^ vec3<u32>(global1.d.c, 0u, 37806u))), Struct_1(true, true, ~arg_1));
    var var_0 = Struct_4(global3.a.a, Struct_3(Struct_1(!(u_input.b < u_input.e.x), true, _wgslsmith_dot_vec4_u32(vec4<u32>(global3.a.e.c, 10701u, arg_1, u_input.b), vec4<u32>(global3.a.e.c, global3.a.b.a.c, 0u, global2.a.e.c) << (vec4<u32>(arg_1, arg_1, global3.a.e.c, 0u) % vec4<u32>(32u)))), vec4<f32>(289f, _wgslsmith_f_op_f32(min(-2201f, _wgslsmith_f_op_f32(global1.b - global3.a.b.d.x))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global3.a.b.b.x))), global3.a.b.d.x), all(!global0.xz), global3.a.b.d), 49343u, ~(-1943i), Struct_1(global1.d.a, any(global3.a.a.zxz), max(min(~u_input.e.x, 1u), _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, 47735u, global1.a.c), vec3<u32>(u_input.e.x, 4294967295u, 1u), vec3<u32>(4294967295u, global1.d.c, 70849u)), reverseBits(vec3<u32>(arg_1, global2.a.c, 4294967295u))))));
    var var_1 = Struct_4(vec4<bool>(true, true, global3.a.e.b, global0.x), global3.a.b, ~0u, _wgslsmith_sub_i32(global2.a.d, -7472i), Struct_1(true && func_3(), select(global2.a.b.c, any(global2.a.a.xx), !func_3()), global2.a.b.a.c));
    let var_2 = Struct_1(!global3.a.b.a.a, any(vec2<bool>(select(!global1.d.b, !global3.a.e.a, false), false)), firstTrailingBit(firstLeadingBit(global1.a.c)));
    let var_3 = vec3<u32>(global3.a.b.a.c, select(_wgslsmith_dot_vec3_u32(~(vec3<u32>(arg_1, global1.a.c, var_0.e.c) << (vec3<u32>(arg_1, 0u, var_0.c) % vec3<u32>(32u))), ~vec3<u32>(9887u, 4294967295u, global2.a.b.a.c)), 43768u, false), ~global1.c.x);
    return Struct_2(Struct_1(_wgslsmith_dot_vec4_i32(-vec4<i32>(var_1.d, 0i, u_input.a.x, global2.a.d), reverseBits(u_input.a)) == countOneBits(var_1.d & var_0.d), (~global2.a.c ^ var_1.e.c) <= ~var_0.e.c, ~(~var_1.c)), _wgslsmith_f_op_f32(-arg_0), global1.c, global1.a);
}

fn func_4(arg_0: vec2<u32>, arg_1: i32, arg_2: Struct_2) -> Struct_2 {
    var var_0 = arg_2.c.xy;
    let var_1 = false;
    global1 = arg_2;
    let var_2 = arg_2.c.xx;
    let var_3 = Struct_2(global1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -582f) + -1000f)), vec3<u32>(~_wgslsmith_dot_vec4_u32(~vec4<u32>(var_0.x, global3.a.e.c, arg_2.d.c, global2.a.b.a.c), min(vec4<u32>(var_0.x, 16281u, var_2.x, arg_0.x), vec4<u32>(13616u, var_2.x, arg_0.x, global3.a.b.a.c))), _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global1.a.c, 4294967295u, arg_2.c.x), arg_2.c), firstLeadingBit(14100u)), max(u_input.b, global1.a.c)), Struct_1(true, _wgslsmith_sub_u32(18074u, arg_2.a.c ^ 25832u) != ~64567u, _wgslsmith_mult_u32(var_2.x, var_0.x)));
    return Struct_2(global1.d, _wgslsmith_f_op_f32(global2.a.b.b.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(234f))) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global1.b * global3.a.b.b.x))))), max(vec3<u32>(var_2.x, ~select(43552u, 85841u, true), var_2.x), ~(~vec3<u32>(var_3.d.c, 19908u, global1.d.c) & _wgslsmith_mod_vec3_u32(var_3.c, var_3.c))), func_2(global3.a.b.d.x, abs(max(global1.c.x, 0u) | _wgslsmith_clamp_u32(45770u, global3.a.e.c, 0u))).d);
}

fn func_1(arg_0: Struct_2) -> Struct_1 {
    global1 = func_4(vec2<u32>(global1.a.c, 1u), u_input.d, func_2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_0.b, global1.b, true))))), _wgslsmith_div_u32(~(~global1.c.x), _wgslsmith_add_u32(12838u, u_input.b))));
    let var_0 = global2.a.b.d.x;
    global1 = arg_0;
    let var_1 = global3.a.b;
    var var_2 = Struct_5(Struct_4(!global3.a.a, global2.a.b, _wgslsmith_clamp_u32(~func_4(vec2<u32>(u_input.b, global3.a.c), 0i, arg_0).c.x, _wgslsmith_add_u32(50436u, 0u), ~global1.d.c << (~4294967295u % 32u)), reverseBits(_wgslsmith_dot_vec4_i32(vec4<i32>(-22033i, 9789i, -1i, global2.a.d), -vec4<i32>(u_input.d, global3.a.d, u_input.d, -37534i))), arg_0.d));
    return global3.a.b.a;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = Struct_5(Struct_4(select(select(vec4<bool>(true, false, true, false), !global2.a.a, !vec4<bool>(false, false, false, global1.d.a)), select(select(vec4<bool>(false, global0.x, global0.x, global2.a.b.c), global2.a.a, global1.d.b), select(global2.a.a, vec4<bool>(false, global3.a.b.a.b, global1.a.a, false), global3.a.a), global2.a.e.b), select(select(global3.a.a, vec4<bool>(true, global3.a.a.x, false, false), global2.a.a.x), select(global2.a.a, global3.a.a, false), global2.a.a)), global2.a.b, _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.b, global3.a.b.a.c), vec2<u32>(global2.a.b.a.c, global3.a.c)) ^ (u_input.e << (u_input.e % vec2<u32>(32u))), global1.c.yx), u_input.a.x, func_1(Struct_2(global2.a.b.a, global3.a.b.b.x, _wgslsmith_div_vec3_u32(vec3<u32>(51833u, global2.a.c, global1.d.c), global1.c), global2.a.e))));
    let var_0 = Struct_5(global2.a);
    global2 = Struct_5(Struct_4(var_0.a.a, Struct_3(func_2(_wgslsmith_f_op_f32(1453f * global2.a.b.d.x), _wgslsmith_dot_vec2_u32(global1.c.xz, global1.c.zx)).d, vec4<f32>(547f, global3.a.b.b.x, _wgslsmith_f_op_f32(335f + global2.a.b.b.x), 1f), firstLeadingBit(global2.a.e.c) >= 0u, var_0.a.b.b.xy), 0u, -244i, func_2(199f, ~reverseBits(0u)).a));
    global1 = func_4(vec2<u32>(abs(func_4(~global1.c.zz, _wgslsmith_clamp_i32(4480i, global3.a.d, 0i), func_2(1447f, 0u)).a.c), firstTrailingBit(~(~global2.a.e.c))), _wgslsmith_div_i32(1i, -14258i) ^ (-28778i << ((_wgslsmith_sub_u32(4294967295u, var_0.a.c) << (~70297u % 32u)) % 32u)), Struct_2(Struct_1(var_0.a.a.x, var_0.a.b.c, _wgslsmith_mult_u32(4294967295u, u_input.e.x >> (global2.a.b.a.c % 32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global2.a.b.b.x, _wgslsmith_f_op_f32(global1.b + -1132f), global1.d.b))), global1.c, Struct_1(!global2.a.b.a.b, !any(global2.a.a), func_2(_wgslsmith_f_op_f32(141f - 189f), global1.a.c >> (var_0.a.b.a.c % 32u)).a.c)));
    global3 = Struct_5(var_0.a);
    var var_1 = Struct_3(Struct_1(func_4(vec2<u32>(1678u, ~global2.a.b.a.c), ~47450i, Struct_2(Struct_1(global3.a.b.c, false, global2.a.e.c), -1498f, global1.c, Struct_1(true, true, global1.a.c))).d.b, all(global2.a.a), _wgslsmith_mult_u32(~select(0u, 0u, true), _wgslsmith_add_u32(4294967295u << (global1.a.c % 32u), ~1u))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(global2.a.b.b * _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global1.b, -203f, 524f, var_0.a.b.d.x), global3.a.b.b))))), false, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1354f, -368f)) * vec2<f32>(750f, 2051f))));
    let x = u_input.a;
    s_output = StorageBuffer(global1.c.xy);
}

