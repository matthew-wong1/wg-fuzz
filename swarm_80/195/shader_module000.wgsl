struct Struct_1 {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec4<u32>,
    d: vec3<f32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec3<u32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: u32,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: i32,
    d: i32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: i32) -> u32 {
    var var_0 = Struct_1(firstLeadingBit(_wgslsmith_mult_vec2_u32(vec2<u32>(0u, ~global0.b.x), global0.b.xz & ~global0.b.wy)), vec4<u32>(max(1u, global0.a.x) << (30198u % 32u), ~global0.c.x ^ abs(1u), global0.b.x, max(7711u, 4294967295u)) ^ global0.b, max(~((vec4<u32>(global0.c.x, global0.b.x, global0.c.x, global0.b.x) << (vec4<u32>(8613u, 46185u, 1u, global0.c.x) % vec4<u32>(32u))) ^ vec4<u32>(global0.b.x, global0.b.x, global0.a.x, global0.c.x)), ~(~(~vec4<u32>(4343u, 36242u, global0.a.x, 73091u)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(global0.d, vec3<f32>(global0.d.x, 621f, global0.d.x))))));
    global0 = Struct_1(~global0.c.yz, var_0.c, ~_wgslsmith_div_vec4_u32(vec4<u32>(~27914u, _wgslsmith_mod_u32(1u, 65981u), global0.c.x, var_0.c.x), var_0.b), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(735f, -541f)), _wgslsmith_f_op_f32(ceil(-1549f)), _wgslsmith_div_f32(-868f, _wgslsmith_f_op_f32(f32(-1f) * -862f)))));
    var_0 = Struct_1(firstLeadingBit(vec2<u32>(1u, _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(58637u, 10158u, var_0.c.x, var_0.b.x), var_0.b), 11046u, 1u))), ~global0.b, vec4<u32>(global0.a.x, max(_wgslsmith_div_u32(4294967295u >> (global0.a.x % 32u), global0.b.x), var_0.b.x), reverseBits(~(var_0.a.x ^ 1u)), _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(44647u, var_0.c.x, global0.a.x, 43948u), var_0.c), 1u) >> (~(~var_0.c.x) % 32u)), vec3<f32>(-425f, _wgslsmith_f_op_f32(1839f * global0.d.x), 184f));
    var var_1 = Struct_2(~vec3<u32>(firstTrailingBit(~var_0.a.x), firstLeadingBit(var_0.c.x), 10266u), global0.b.wwz | vec3<u32>(~4294967295u, ~_wgslsmith_add_u32(var_0.c.x, var_0.a.x), 1u), Struct_1(var_0.a, global0.b | global0.c, vec4<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(global0.b.wxz, var_0.c.yxw, var_0.c.xzz), abs(var_0.c.zww)), abs(2459u), var_0.c.x, global0.a.x), _wgslsmith_f_op_vec3_f32(global0.d * var_0.d)), Struct_1(_wgslsmith_sub_vec2_u32(vec2<u32>(_wgslsmith_add_u32(14573u, global0.b.x), _wgslsmith_dot_vec2_u32(global0.a, var_0.b.zz)), var_0.b.xw), global0.c, ~_wgslsmith_sub_vec4_u32(global0.b, ~vec4<u32>(var_0.a.x, var_0.a.x, 20363u, 2127u)), var_0.d));
    var var_2 = select(vec4<bool>(true | (_wgslsmith_clamp_u32(0u, 1u, var_0.c.x) != (global0.a.x | var_1.a.x)), !(all(vec4<bool>(true, true, true, true)) && false), !(all(vec3<bool>(true, true, true)) & true), true), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, any(vec4<bool>(false, false, true, true))), vec4<bool>(true, true, true, true)), !vec4<bool>(-49422i != u_input.b, any(vec2<bool>(true, true)), all(vec4<bool>(true, true, false, true)), all(vec3<bool>(false, true, false))), !all(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global0.d.x * -148f))) - var_0.d.x) >= _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(1762f)), _wgslsmith_f_op_f32(-1651f - 154f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.d.x) * _wgslsmith_f_op_f32(653f - 1230f))));
    return max(var_1.a.x, 0u);
}

fn func_2() -> Struct_1 {
    global0 = Struct_1(vec2<u32>(~68063u, global0.b.x << (global0.a.x % 32u)), vec4<u32>(global0.b.x, 4410u, _wgslsmith_add_u32(func_3(u_input.a), 1u), ~15276u), _wgslsmith_div_vec4_u32(abs(global0.b), ~(~vec4<u32>(1u, 1u, 8747u, 20207u)) >> (global0.c % vec4<u32>(32u))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(802f)))) - _wgslsmith_div_f32(global0.d.x, _wgslsmith_div_f32(1000f, global0.d.x))), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f - global0.d.x), _wgslsmith_f_op_f32(global0.d.x + 1012f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-434f - global0.d.x), _wgslsmith_f_op_f32(exp2(global0.d.x)))), -961f));
    global0 = Struct_1(countOneBits(_wgslsmith_add_vec2_u32(vec2<u32>(_wgslsmith_dot_vec3_u32(global0.c.xyy, vec3<u32>(global0.b.x, 4294967295u, global0.b.x)), _wgslsmith_clamp_u32(global0.b.x, 1u, global0.b.x)), vec2<u32>(global0.c.x, global0.b.x))), _wgslsmith_add_vec4_u32(vec4<u32>(~global0.a.x, func_3(u_input.a), global0.c.x, ~global0.a.x), select(_wgslsmith_add_vec4_u32(vec4<u32>(53546u, 9135u, 0u, 4294967295u), global0.c), ~(~global0.c), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), false))), global0.c, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(global0.d)) + _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(global0.d, vec3<f32>(global0.d.x, global0.d.x, 795f))) - vec3<f32>(global0.d.x, global0.d.x, global0.d.x)), global0.d))));
    global0 = Struct_1(_wgslsmith_add_vec2_u32(global0.c.wy, ~vec2<u32>(global0.c.x, max(global0.c.x, 4294967295u))), _wgslsmith_sub_vec4_u32(vec4<u32>(7491u, _wgslsmith_dot_vec2_u32(~global0.c.zw, global0.b.xw), 4294967295u, 1u), global0.c), global0.b, _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(225f, 738f, global0.d.x)) - vec3<f32>(global0.d.x, -690f, global0.d.x)))), global0.d)));
    let var_0 = all(!select(vec3<bool>(true, all(vec4<bool>(true, true, false, true)), true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)));
    var var_1 = u_input.b;
    return Struct_1(vec2<u32>(global0.a.x, ~1u ^ ~firstTrailingBit(1074u)), global0.b, vec4<u32>(global0.b.x, global0.c.x, firstLeadingBit(1u), 56296u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-global0.d.x), _wgslsmith_f_op_f32(step(global0.d.x, 1000f)), _wgslsmith_f_op_f32(-global0.d.x)))));
}

fn func_1(arg_0: Struct_1, arg_1: i32, arg_2: vec3<i32>, arg_3: f32) -> vec2<u32> {
    global0 = func_2();
    var var_0 = global0.d;
    var_0 = arg_0.d;
    let var_1 = Struct_2(vec3<u32>(global0.b.x, ~_wgslsmith_dot_vec4_u32(~vec4<u32>(0u, 5312u, 1u, arg_0.c.x), ~vec4<u32>(45374u, arg_0.c.x, global0.a.x, 21685u)), 4294967295u | reverseBits(global0.b.x)), vec3<u32>(~(~global0.c.x) ^ ~(~4294967295u), ~1075u, abs(global0.c.x)), func_2(), Struct_1(_wgslsmith_div_vec2_u32(arg_0.a ^ arg_0.c.zz, ~countOneBits(global0.b.ww)), _wgslsmith_mult_vec4_u32(~max(vec4<u32>(40905u, 57049u, 42324u, 1u), vec4<u32>(arg_0.c.x, global0.c.x, 24884u, arg_0.a.x)), ~vec4<u32>(arg_0.a.x, arg_0.b.x, arg_0.c.x, 4294967295u)), countOneBits(~global0.b), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-452f, var_0.x, global0.d.x)))));
    var var_2 = 112i;
    return func_2().a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -(~_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, u_input.a, u_input.b, u_input.a), vec4<i32>(-2147483647i, u_input.a, u_input.a, u_input.b)), firstLeadingBit(vec4<i32>(-1i, 0i, 53086i, u_input.a))), vec4<i32>(-46531i << (0u % 32u), ~1i, firstTrailingBit(u_input.a), u_input.b)));
    var_0 = _wgslsmith_dot_vec2_i32(~reverseBits(_wgslsmith_mod_vec2_i32(-vec2<i32>(8063i, u_input.b), -vec2<i32>(u_input.a, -58695i))), _wgslsmith_div_vec2_i32(vec2<i32>(-min(40148i, 0i), u_input.b), vec2<i32>(_wgslsmith_add_i32(~40320i, -2689i), max(-u_input.a, u_input.a))));
    let var_1 = select(~(~(-vec2<i32>(-14193i, 7879i)) << (func_1(Struct_1(global0.c.xx, vec4<u32>(16280u, global0.c.x, global0.c.x, 1u), vec4<u32>(global0.a.x, global0.c.x, 1u, 8755u), global0.d), u_input.b, vec3<i32>(u_input.a, 71474i, u_input.b), _wgslsmith_f_op_f32(-global0.d.x)) % vec2<u32>(32u))), vec2<i32>(u_input.a >> (~abs(global0.a.x) % 32u), -abs(55794i)), !(!vec2<bool>(all(vec4<bool>(false, false, false, true)), false)));
    var_0 = min(u_input.b & _wgslsmith_div_i32(u_input.b, ~(-16616i)), firstTrailingBit(var_1.x));
    global0 = Struct_1(global0.b.xy, _wgslsmith_clamp_vec4_u32(firstTrailingBit(vec4<u32>(14100u, 1u, 47398u, global0.a.x)), vec4<u32>(reverseBits(4294967295u), _wgslsmith_dot_vec2_u32(vec2<u32>(2071u, global0.a.x), vec2<u32>(4294967295u, 4294967295u)), ~global0.a.x, min(global0.a.x, global0.c.x)), ~_wgslsmith_add_vec4_u32(vec4<u32>(1u, 4294967295u, 0u, global0.b.x), global0.b)) << (vec4<u32>(_wgslsmith_sub_u32(global0.b.x, 35035u), _wgslsmith_dot_vec3_u32(min(vec3<u32>(69949u, global0.b.x, 4294967295u), global0.b.wwy), vec3<u32>(global0.c.x, global0.c.x, 4294967295u)), global0.b.x & _wgslsmith_clamp_u32(4294967295u, 46020u, 29419u), ~(~78790u)) % vec4<u32>(32u)), func_2().c, global0.d);
    let var_2 = Struct_3(global0.d.x, global0.c.x, global0.d.x);
    global0 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec4_i32(_wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_1.x, -39156i, u_input.a, var_1.x), vec4<i32>(var_1.x, var_1.x, var_1.x, var_1.x), vec4<i32>(u_input.b, var_1.x, var_1.x, var_1.x)), -vec4<i32>(var_1.x, 2147483647i, u_input.b, u_input.b)), -(vec4<i32>(9096i, u_input.b, var_1.x, 2147483647i) >> (vec4<u32>(106u, global0.b.x, 0u, global0.c.x) % vec4<u32>(32u)))), vec4<i32>(-27930i, select(-63529i | u_input.a, firstLeadingBit(var_1.x), true), countOneBits(abs(var_1.x)), var_1.x)), vec3<i32>(_wgslsmith_sub_i32(_wgslsmith_mod_i32(-12852i, -u_input.a), ~(~(-1i))), var_1.x, abs(~var_1.x | countOneBits(u_input.a))), _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(reverseBits(-vec4<i32>(u_input.b, -2147483647i, var_1.x, 0i)), vec4<i32>(_wgslsmith_mult_i32(u_input.a, u_input.a), var_1.x, var_1.x, _wgslsmith_div_i32(var_1.x, u_input.a))), abs(~(~u_input.a))), u_input.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global0.d.x, 1407f, global0.d.x, global0.d.x)))))))));
}

