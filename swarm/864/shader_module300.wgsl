struct Struct_1 {
    a: u32,
    b: f32,
    c: vec4<u32>,
    d: vec4<bool>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: vec2<bool>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
}

struct Struct_4 {
    a: Struct_2,
    b: f32,
    c: vec3<f32>,
    d: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec3<i32>,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec3<u32>,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec2<i32>) -> u32 {
    let var_0 = ~arg_0;
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -148f);
    var_1 = _wgslsmith_f_op_f32(-384f + _wgslsmith_f_op_f32(-231f + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -553f), _wgslsmith_f_op_f32(floor(384f))))))));
    var var_2 = !select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), true), vec3<bool>(true, true, true)), false), select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false)), select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), true)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true)), !(!(u_input.b.x <= u_input.c.x)));
    var var_3 = 17354u & firstLeadingBit(abs(_wgslsmith_clamp_u32(~u_input.e.x, 1693u, _wgslsmith_div_u32(u_input.e.x, u_input.e.x))));
    return _wgslsmith_sub_u32(u_input.e.x, _wgslsmith_mult_u32(~0u, ~(u_input.e.x & u_input.e.x))) & 21597u;
}

fn func_2(arg_0: vec4<u32>, arg_1: vec4<i32>, arg_2: f32) -> Struct_2 {
    let var_0 = true;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1000f)) + 1000f);
    let var_2 = vec2<bool>((-_wgslsmith_div_i32(arg_1.x, arg_1.x) > 29048i) | true, select(func_3(vec2<i32>(arg_1.x, -2147483647i)) ^ 1u, ~max(arg_0.x, u_input.e.x), true) < _wgslsmith_mult_u32(~u_input.e.x, 12336u));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(1243f)), _wgslsmith_f_op_f32(floor(879f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2 + -1060f))))) >= arg_2;
    var var_4 = Struct_3(Struct_1(u_input.e.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -464f) + arg_2), _wgslsmith_f_op_f32(arg_2 - -1000f))), arg_0 >> (~arg_0 % vec4<u32>(32u)), select(select(vec4<bool>(false, var_2.x, var_0, var_2.x), vec4<bool>(var_0, var_0, true, var_2.x), true), select(!vec4<bool>(false, var_2.x, var_0, true), select(vec4<bool>(false, var_2.x, var_0, false), vec4<bool>(true, var_0, true, false), vec4<bool>(true, var_2.x, false, var_0)), true || var_2.x), !(!vec4<bool>(false, true, false, var_0)))), -arg_1.x);
    return Struct_2(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-958f, 505f))))), var_4.a, select(var_2, select(var_2, select(var_4.a.d.xw, select(var_4.a.d.xx, vec2<bool>(var_0, true), var_4.a.d.x), !var_4.a.d.zy), any(!var_2)), select(select(var_2, select(var_4.a.d.yx, vec2<bool>(false, var_2.x), vec2<bool>(true, true)), var_2.x), select(!vec2<bool>(var_0, false), var_4.a.d.xy, !var_2), !(var_2.x | true))), Struct_1(var_4.a.a, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(184f + 1071f), _wgslsmith_f_op_f32(-arg_2))), vec4<u32>(~31434u, u_input.e.x, ~(~u_input.e.x), _wgslsmith_add_u32(u_input.e.x, arg_0.x)), vec4<bool>(true, select(true, any(var_4.a.d), true), select(-332f > arg_2, false, !var_2.x), var_4.a.d.x)));
}

fn func_1(arg_0: i32) -> Struct_2 {
    let var_0 = func_2(vec4<u32>(~0u, ~_wgslsmith_mod_u32(1u, u_input.e.x) ^ 1u, 0u, ~u_input.e.x), countOneBits(~vec4<i32>(u_input.a, abs(arg_0), arg_0, select(-22776i, u_input.b.x, false))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-615f - _wgslsmith_f_op_f32(round(219f))) - _wgslsmith_f_op_f32(f32(-1f) * -1058f)))));
    let var_1 = -17477i;
    var var_2 = select(vec3<bool>(var_0.b.d.x, ~arg_0 < 1i, true), vec3<bool>(var_0.b.d.x, true, all(!select(var_0.b.d, vec4<bool>(var_0.c.x, var_0.d.d.x, var_0.b.d.x, var_0.d.d.x), false))), var_0.b.d.x);
    let var_3 = 4294967295u;
    var var_4 = func_2(~var_0.d.c, vec4<i32>(firstLeadingBit(-arg_0 & abs(u_input.b.x)), _wgslsmith_add_i32(u_input.d, 1i), u_input.c.x ^ reverseBits(arg_0), ~_wgslsmith_div_i32(countOneBits(arg_0), _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 0i, -2147483647i, arg_0), vec4<i32>(2147483647i, arg_0, 2374i, arg_0)))), _wgslsmith_f_op_f32(select(-2233f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.b.b), _wgslsmith_div_f32(1000f, var_0.b.b)))), false & !any(var_0.b.d.wzx))));
    return var_0;
}

fn func_4(arg_0: Struct_2, arg_1: vec4<bool>) -> Struct_1 {
    let var_0 = Struct_3(Struct_1(4294967295u, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -692f), _wgslsmith_f_op_f32(-arg_0.d.b)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_0.b.b)) - _wgslsmith_f_op_f32(-arg_0.a.x))), min(_wgslsmith_sub_vec4_u32(arg_0.d.c, vec4<u32>(u_input.e.x, 4294967295u, arg_0.b.a, arg_0.b.a)), func_1(-57268i).b.c), vec4<bool>(true, ~4294967295u < arg_0.d.a, true, true)), u_input.b.x);
    var var_1 = 1u;
    let var_2 = Struct_4(Struct_2(vec2<f32>(_wgslsmith_f_op_f32(min(arg_0.b.b, -316f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.b) + _wgslsmith_f_op_f32(109f * var_0.a.b))), func_2(reverseBits(vec4<u32>(arg_0.b.a, var_0.a.c.x, 40113u, var_0.a.c.x)), vec4<i32>(~45277i, 2530i >> (arg_0.b.a % 32u), 3272i, 1i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.d.b) * arg_0.d.b)).b, vec2<bool>(func_2(vec4<u32>(u_input.e.x, arg_0.b.a, arg_0.b.c.x, 0u), vec4<i32>(1i, 0i, var_0.b, 2147483647i), _wgslsmith_f_op_f32(-arg_0.b.b)).b.d.x, arg_1.x), Struct_1(abs(0u) >> (~u_input.e.x % 32u), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(826f * arg_0.d.b))), var_0.a.c, !arg_0.d.d)), 222f, _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_0.a.b, -2192f, -813f), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.d.b, -384f, arg_0.d.b) - vec3<f32>(-396f, arg_0.b.b, arg_0.a.x))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_0.a.b, arg_0.d.b, arg_0.b.b))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_0.b.b, arg_0.b.b, arg_0.a.x), vec3<f32>(-978f, arg_0.a.x, var_0.a.b), arg_0.d.d.x))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.b.b, -1000f, arg_0.d.b)))), 0u & ~(~u_input.e.x));
    let var_3 = (_wgslsmith_mod_vec4_i32(countOneBits(countOneBits(u_input.b)), -vec4<i32>(-7643i, -25130i, 26679i, 33165i)) << (~func_1(reverseBits(-2147483647i)).d.c % vec4<u32>(32u))) ^ u_input.b;
    let var_4 = ~vec3<u32>(~var_2.d ^ ~u_input.e.x, max(_wgslsmith_div_u32(52947u, 37791u), ~4294967295u), ~var_0.a.c.x ^ ~var_0.a.c.x) & (_wgslsmith_mod_vec3_u32(vec3<u32>(func_1(1272i).d.c.x, 1u, var_0.a.a), vec3<u32>(var_2.a.b.c.x, var_2.d | 4294967295u, 1u)) >> (var_0.a.c.yyx % vec3<u32>(32u)));
    return Struct_1(arg_0.b.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.b)), abs(countOneBits(_wgslsmith_clamp_vec4_u32(arg_0.d.c, arg_0.b.c, arg_0.b.c)) << (~select(var_0.a.c, vec4<u32>(5122u, arg_0.d.a, var_4.x, var_0.a.a), var_0.a.d) % vec4<u32>(32u))), func_1(-16437i).d.d);
}

fn func_5(arg_0: u32, arg_1: Struct_1, arg_2: bool, arg_3: vec2<bool>) -> u32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.b + arg_1.b) * arg_1.b), -1359f), vec2<f32>(func_4(func_2(arg_1.c, u_input.b, 1365f), arg_1.d).b, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -921f), -995f, !arg_1.d.x))))) + _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_1.b)) * _wgslsmith_f_op_f32(-arg_1.b)), _wgslsmith_f_op_f32(arg_1.b - _wgslsmith_f_op_f32(-arg_1.b))), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_div_f32(arg_1.b, arg_1.b), _wgslsmith_f_op_f32(round(2451f))))))));
    let var_1 = Struct_4(func_2(max(~vec4<u32>(21753u, u_input.e.x, 66839u, 33355u), arg_1.c) & (_wgslsmith_sub_vec4_u32(vec4<u32>(0u, 9164u, 1u, 43127u), arg_1.c) >> ((arg_1.c | vec4<u32>(24852u, arg_0, arg_1.a, 63200u)) % vec4<u32>(32u))), u_input.b, _wgslsmith_f_op_f32(arg_1.b - var_0.x)), var_0.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-568f, arg_1.b, -688f))), vec3<f32>(2303f, -1910f, 1000f))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -570f, var_0.x) - vec3<f32>(-1288f, var_0.x, -844f)) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_1.b, arg_1.b, arg_1.b), vec3<f32>(arg_1.b, arg_1.b, 2234f), arg_3.x)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.b, var_0.x, var_0.x) + vec3<f32>(arg_1.b, arg_1.b, 2387f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.b, var_0.x, 224f))))), arg_0);
    var var_2 = _wgslsmith_f_op_f32(258f + arg_1.b);
    let var_3 = vec4<bool>(!(arg_1.d.x && arg_2), !(0i <= _wgslsmith_sub_i32(-1i ^ u_input.b.x, firstLeadingBit(u_input.a))), !arg_1.d.x, true);
    var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(606f + func_4(var_1.a, vec4<bool>(var_1.a.d.d.x, arg_3.x, var_1.a.c.x, var_3.x)).b))), _wgslsmith_f_op_f32(-arg_1.b)));
    return firstTrailingBit(~u_input.e.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~vec2<u32>(func_5(u_input.e.x, func_4(func_1(u_input.d), select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true))), true, vec2<bool>(true, true)), func_4(Struct_2(vec2<f32>(-885f, -317f), Struct_1(5737u, -610f, vec4<u32>(u_input.e.x, u_input.e.x, u_input.e.x, u_input.e.x), vec4<bool>(false, false, false, false)), vec2<bool>(true, false), Struct_1(1u, -1155f, vec4<u32>(1625u, u_input.e.x, 4294967295u, u_input.e.x), vec4<bool>(false, true, false, true))), select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, false))).c.x << (u_input.e.x % 32u));
    let var_1 = Struct_1(1u, _wgslsmith_f_op_f32(1204f * _wgslsmith_f_op_f32(floor(871f))), _wgslsmith_mod_vec4_u32(firstTrailingBit(~min(vec4<u32>(59723u, u_input.e.x, 89184u, 1u), vec4<u32>(1u, u_input.e.x, var_0.x, 5932u))), select(~select(vec4<u32>(0u, 1u, u_input.e.x, 4294967295u), vec4<u32>(var_0.x, 0u, 1996u, 33951u), vec4<bool>(false, false, true, false)), ~(~vec4<u32>(u_input.e.x, 4294967295u, 4294967295u, 88904u)), vec4<bool>(true, func_1(u_input.a).c.x, all(vec2<bool>(false, true)), true))), !select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, true))), vec4<bool>(true, true, true, true), vec4<bool>(true, true, any(vec4<bool>(true, false, true, false)), true)));
    var var_2 = var_1.d;
    let var_3 = u_input.c.x;
    var var_4 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1000f))), var_1.b));
    let var_5 = ~func_2(var_1.c, vec4<i32>(u_input.b.x, 0i, _wgslsmith_mod_i32(~(-37169i), -25171i), var_3), 1397f).b.c.wxy;
    var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -179f));
    var var_6 = _wgslsmith_f_op_f32(max(1000f, _wgslsmith_f_op_f32(-func_2(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, 1u, var_1.c.x, var_0.x), var_1.c), u_input.b, _wgslsmith_div_f32(var_1.b, var_1.b)).b.b)));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(u_input.b.yw), ~vec3<u32>(var_1.c.x, var_0.x, 0u), ~countOneBits(var_1.c.xxz), u_input.b.x >> (~(~22972u) % 32u), var_0.x);
}

