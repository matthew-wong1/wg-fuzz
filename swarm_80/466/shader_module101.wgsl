struct Struct_1 {
    a: i32,
    b: f32,
    c: vec4<u32>,
    d: vec2<f32>,
    e: vec3<u32>,
}

struct Struct_2 {
    a: bool,
    b: u32,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> vec2<f32> {
    var var_0 = _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b.x, ~(~36308u), max(74457u, _wgslsmith_mod_u32(countOneBits(35612u), _wgslsmith_sub_u32(u_input.b.x, 22289u)))), max(vec3<u32>(u_input.b.x, _wgslsmith_dot_vec2_u32(select(vec2<u32>(4294967295u, u_input.b.x), vec2<u32>(u_input.b.x, 4294967295u), vec2<bool>(true, true)), vec2<u32>(u_input.b.x, 1u)), ~u_input.b.x), vec3<u32>(u_input.b.x, u_input.b.x, _wgslsmith_add_u32(u_input.b.x, 4294967295u))));
    var var_1 = reverseBits(_wgslsmith_add_vec3_u32(select(~vec3<u32>(var_0.x, 46153u, var_0.x), reverseBits(vec3<u32>(var_0.x, 22566u, var_0.x)), select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(true, false, false))), vec3<u32>(_wgslsmith_mod_u32(var_0.x, 3829u), u_input.b.x, var_0.x)) & ~(vec3<u32>(u_input.b.x, 120448u, var_0.x) | ~vec3<u32>(28950u, 1u, 37072u)));
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1f, 776f))) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1551f * 138f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1549f + -461f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1000f, -1316f), vec2<f32>(471f, 1076f))))), vec2<bool>(all(vec2<bool>(true, true)), !any(vec2<bool>(false, true))))));
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_1(select(~u_input.a << (~(~u_input.b.x) % 32u), ~(-_wgslsmith_clamp_i32(21655i, u_input.a, u_input.a)), _wgslsmith_mult_i32(~u_input.a, u_input.a) <= _wgslsmith_mod_i32(-1069i | u_input.a, ~u_input.a)), -964f, select(vec4<u32>(30147u, 11234u, u_input.b.x, ~0u), ~(~(~vec4<u32>(u_input.b.x, u_input.b.x, 1u, u_input.b.x))), any(vec2<bool>(any(vec2<bool>(true, true)), false))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(284f, 853f) * vec2<f32>(507f, 818f)), _wgslsmith_f_op_vec2_f32(func_3())), vec2<f32>(_wgslsmith_f_op_f32(1244f * 1028f), _wgslsmith_f_op_f32(f32(-1f) * -570f))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1326f - 887f)), _wgslsmith_div_f32(_wgslsmith_f_op_vec2_f32(func_3()).x, _wgslsmith_f_op_f32(665f + 1531f))), true)), ~vec3<u32>(15270u, ~u_input.b.x, u_input.b.x));
    var_0 = Struct_1(max(_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(var_0.a, u_input.a, 1i, 2147483647i), vec4<i32>(-79600i, -2147483647i, 1i, var_0.a)), -vec4<i32>(u_input.a, 1i, u_input.a, var_0.a)), reverseBits(countOneBits(u_input.a))), var_0.d.x, reverseBits(firstTrailingBit(var_0.c)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(var_0.d + vec2<f32>(3213f, var_0.b)))))), vec2<f32>(var_0.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1000f)) * var_0.b))), firstTrailingBit(abs(var_0.c.zww << (vec3<u32>(4294967295u, var_0.e.x, 0u) % vec3<u32>(32u)))));
    var var_1 = 634f;
    let var_2 = Struct_2(false, abs(var_0.e.x), vec3<i32>(-2147483647i, u_input.a, u_input.a));
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b) * -1232f))), _wgslsmith_div_f32(var_0.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_0.d.x, var_0.b)) - _wgslsmith_f_op_f32(step(358f, -1540f)))), _wgslsmith_f_op_f32(-var_0.b));
    return Struct_1(~var_2.c.x, -703f, ~(vec4<u32>(var_0.c.x, 58956u, var_2.b, var_0.c.x) | ~var_0.c), vec2<f32>(308f, var_0.d.x), _wgslsmith_clamp_vec3_u32(abs(var_0.c.xyw) & ~vec3<u32>(var_0.c.x, u_input.b.x, 4294967295u), abs(firstTrailingBit(_wgslsmith_div_vec3_u32(var_0.c.xyz, vec3<u32>(var_2.b, 1u, u_input.b.x)))), var_0.e));
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: i32) -> bool {
    var var_0 = func_2();
    var_0 = func_2();
    var_0 = Struct_1(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_2, -2147483647i, -arg_2, var_0.a), abs(reverseBits(vec4<i32>(u_input.a, -1i, u_input.a, 2147483647i) >> (arg_0.c % vec4<u32>(32u))))), arg_0.b, _wgslsmith_div_vec4_u32(~abs(abs(vec4<u32>(u_input.b.x, u_input.b.x, 40392u, 0u))), ~(~_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, u_input.b.x, var_0.c.x, 97120u), vec4<u32>(var_0.c.x, 15479u, 4294967295u, 58902u), vec4<u32>(arg_1, 1u, arg_0.c.x, arg_1)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(1290f - 1009f), -548f), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(421f, var_0.d.x), vec2<f32>(arg_0.d.x, arg_0.b), vec2<bool>(true, true))))))), vec3<u32>(_wgslsmith_div_u32(~var_0.e.x, 62684u), 7334u >> (~arg_0.c.x % 32u), 1u));
    var_0 = arg_0;
    let var_1 = Struct_2(true, 1u, firstTrailingBit(~(~(-vec3<i32>(2147483647i, arg_0.a, arg_0.a)))));
    return true;
}

fn func_1() -> f32 {
    var var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-299f + 148f)))))), _wgslsmith_f_op_f32(268f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-586f - -1000f)) - _wgslsmith_f_op_f32(f32(-1f) * -1760f)))));
    var var_1 = !(!select(true, true, func_4(func_2(), 0u, u_input.a)));
    var var_2 = u_input.b.x;
    var_2 = firstLeadingBit(4294967295u);
    var var_3 = _wgslsmith_add_u32(_wgslsmith_clamp_u32(firstLeadingBit(u_input.b.x), ~firstLeadingBit(u_input.b.x), countOneBits(_wgslsmith_sub_u32(u_input.b.x | 0u, abs(u_input.b.x)))), u_input.b.x & (u_input.b.x << (countOneBits(42176u) % 32u)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(978f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(161f, -244f))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1()))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(-243f)))));
    let var_1 = 0u;
    var var_2 = Struct_2(true, firstTrailingBit(~_wgslsmith_mult_u32(min(4294967295u, 61447u), var_1)), ~vec3<i32>(func_2().a, firstTrailingBit(-24467i), ~(-u_input.a)));
    var var_3 = Struct_1(-4802i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0.x, var_0.x, var_2.a))))), (vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(var_2.b, 1u, var_1), vec3<u32>(u_input.b.x, 27063u, var_1)), ~u_input.b.x, ~var_2.b, 10225u) << (select(~vec4<u32>(0u, 17893u, 0u, 10376u), ~vec4<u32>(45192u, var_1, 54104u, u_input.b.x), true) % vec4<u32>(32u))) & (func_2().c | firstTrailingBit(func_2().c)), vec2<f32>(_wgslsmith_f_op_f32(-1460f + _wgslsmith_f_op_f32(func_1())), var_0.x), _wgslsmith_add_vec3_u32(_wgslsmith_clamp_vec3_u32(~abs(vec3<u32>(var_2.b, 39820u, 47153u)), max(vec3<u32>(4294967295u, 56582u, var_1), vec3<u32>(1u, 14100u, 46075u)) ^ ~vec3<u32>(u_input.b.x, 0u, 48685u), _wgslsmith_clamp_vec3_u32(vec3<u32>(95685u, 15672u, 59227u), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b.x, 4294967295u, 30781u), vec3<u32>(24284u, 14537u, u_input.b.x)), vec3<u32>(u_input.b.x, var_1, 4294967295u) | vec3<u32>(u_input.b.x, var_2.b, 82144u))), vec3<u32>(_wgslsmith_mult_u32(0u, u_input.b.x), firstTrailingBit(_wgslsmith_sub_u32(var_1, 1u)), 0u)));
    var_2 = Struct_2(true, var_1, _wgslsmith_add_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(29838i, 5921i, -21956i), var_2.c), var_2.c) | var_2.c);
    var var_4 = select(vec3<i32>(var_3.a, _wgslsmith_dot_vec2_i32(var_2.c.zz, vec2<i32>(_wgslsmith_mult_i32(u_input.a, var_3.a), var_3.a)), _wgslsmith_div_i32(-1i, -6173i)), abs(-(var_2.c & vec3<i32>(var_2.c.x, var_2.c.x, -1i))), var_2.a);
    var_2 = Struct_2(true, u_input.b.x, -vec3<i32>(_wgslsmith_mod_i32(38795i, -10447i), var_3.a, -30679i) << (var_3.e % vec3<u32>(32u)));
    var_3 = Struct_1(-2147483647i, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(-var_0.x)) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_3.d.x - var_0.x))), 1525f))), vec4<u32>(39244u, var_1, var_3.c.x, min(var_3.c.x, var_1)), vec2<f32>(var_3.b, var_3.b), ~(~(var_3.c.zww >> (firstLeadingBit(vec3<u32>(4294967295u, u_input.b.x, var_2.b)) % vec3<u32>(32u)))));
    var_3 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(-230f);
}

