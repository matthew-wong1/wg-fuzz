struct Struct_1 {
    a: vec2<u32>,
    b: f32,
    c: vec4<u32>,
    d: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: vec4<i32>,
    b: u32,
    c: vec2<u32>,
    d: u32,
    e: Struct_3,
}

struct Struct_5 {
    a: vec4<f32>,
    b: i32,
    c: i32,
    d: bool,
    e: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 28>;

var<private> global1: vec2<f32>;

var<private> global2: vec4<i32> = vec4<i32>(2147483647i, i32(-2147483648), 26875i, 1i);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_3) -> u32 {
    var var_0 = Struct_1(_wgslsmith_mod_vec2_u32(vec2<u32>(43609u, u_input.c >> (38419u % 32u)) & ~(vec2<u32>(u_input.a, 16699u) ^ vec2<u32>(45504u, u_input.a)), ~vec2<u32>(_wgslsmith_mult_u32(0u, 0u), countOneBits(u_input.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global1.x)) - 290f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(328f - arg_0.a) + _wgslsmith_f_op_f32(trunc(arg_0.a))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_0.a)) - -2242f))), ~firstLeadingBit(select(~vec4<u32>(4294967295u, 0u, 10685u, u_input.a), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.c) >> (vec4<u32>(u_input.c, u_input.a, u_input.c, u_input.a) % vec4<u32>(32u)), false)), select(firstLeadingBit(_wgslsmith_sub_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(-18992i, -57375i, global2.x), vec3<i32>(0i, global2.x, 2147483647i)), vec3<i32>(2006i, u_input.b, global2.x))), ~vec3<i32>(1i, -38477i, u_input.b) >> (_wgslsmith_mult_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.c, 242u, 52834u), vec3<u32>(4294967295u, 4294967295u, u_input.c)), _wgslsmith_add_vec3_u32(vec3<u32>(0u, u_input.c, u_input.a), vec3<u32>(31903u, 0u, u_input.c))) % vec3<u32>(32u)), false));
    global2 = vec4<i32>(var_0.d.x, _wgslsmith_div_i32(global2.x, 34719i), ~(global2.x >> (max(u_input.a, reverseBits(4294967295u)) % 32u)), _wgslsmith_mult_i32(global2.x, -1i));
    let var_1 = var_0.b;
    let var_2 = all(vec3<bool>(all(vec3<bool>(true, all(vec2<bool>(false, false)), true)), !(!any(vec3<bool>(false, false, false))), true && any(vec2<bool>(false, false))));
    global1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.b), _wgslsmith_f_op_f32(min(1123f, arg_0.a)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(-931f)))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-578f - -534f), 105f))));
    return ~4294967295u;
}

fn func_2() -> Struct_1 {
    let var_0 = abs(vec3<i32>(_wgslsmith_dot_vec3_i32(select(global2.wyy, global2.wxw, vec3<bool>(false, true, true)), select(global2.wyx, global2.xxy, vec3<bool>(false, true, true))), -1i, global2.x)) >> (vec3<u32>(~func_3(Struct_3(-831f)), u_input.c, ~0u) % vec3<u32>(32u));
    var var_1 = true;
    var var_2 = vec4<u32>(firstLeadingBit(u_input.c), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, ~4294967295u), ~(_wgslsmith_div_vec2_u32(vec2<u32>(1u, u_input.a), vec2<u32>(4294967295u, u_input.a)) & abs(vec2<u32>(u_input.c, 1u)))), u_input.a, u_input.a);
    global1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, global1.x)), _wgslsmith_f_op_vec2_f32(vec2<f32>(169f, global1.x) - vec2<f32>(380f, -1959f))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1783f, 743f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(global1.x, 379f) + vec2<f32>(349f, 1507f))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, global1.x)), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-373f, global1.x), vec2<f32>(global1.x, 498f)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.x, 851f) * vec2<f32>(global1.x, global1.x)))) * _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(133f, global1.x)))))))));
    global1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(global1.x, global1.x), vec2<f32>(global1.x, 275f))) * _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1903f, global1.x)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(global1.x, global1.x), vec2<f32>(global1.x, global1.x))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-420f, global1.x)))) * vec2<f32>(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-147f + -1000f)))));
    return global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~(~max(var_2.zw, var_2.zy)), var_2.xx) | 7818u, 28u)];
}

fn func_4(arg_0: u32, arg_1: Struct_1) -> vec3<u32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-261f, _wgslsmith_f_op_f32(exp2(global1.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(arg_1.b, arg_1.b), vec2<f32>(1802f, -1059f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(global1.x, 383f), vec2<f32>(global1.x, 675f)))) - vec2<f32>(_wgslsmith_f_op_f32(801f * arg_1.b), _wgslsmith_f_op_f32(-global1.x))))));
    let var_1 = true;
    let var_2 = _wgslsmith_f_op_vec2_f32(abs(var_0));
    let var_3 = -firstLeadingBit(-vec4<i32>(global2.x, -1i, global2.x, 6207i) >> (_wgslsmith_add_vec4_u32(arg_1.c, vec4<u32>(arg_0, 64512u, arg_0, arg_1.a.x)) % vec4<u32>(32u))) | max(-vec4<i32>(30048i, -2147483647i, u_input.b, global2.x) << (arg_1.c % vec4<u32>(32u)), vec4<i32>(arg_1.d.x, -1i, _wgslsmith_div_i32(0i | global2.x, u_input.b ^ u_input.b), ~(-u_input.b)));
    let var_4 = all(!(!(!select(vec4<bool>(true, true, var_1, true), vec4<bool>(false, var_1, false, var_1), vec4<bool>(false, var_1, var_1, var_1)))));
    return ~firstLeadingBit(vec3<u32>(arg_1.c.x, ~3551u, 16087u & arg_0) << (vec3<u32>(~49594u, 1u, 33721u) % vec3<u32>(32u)));
}

fn func_1() -> i32 {
    let var_0 = _wgslsmith_div_f32(630f, -153f);
    let var_1 = Struct_3(_wgslsmith_f_op_f32(select(var_0, _wgslsmith_f_op_f32(-var_0), !select(all(vec3<bool>(true, true, true)), true, false))));
    global0 = array<Struct_1, 28>();
    let var_2 = select(select(~(~vec3<u32>(16603u, 0u, u_input.c)), _wgslsmith_mult_vec3_u32(func_4(u_input.c, func_2()), _wgslsmith_sub_vec3_u32(vec3<u32>(1u, 0u, u_input.c), vec3<u32>(8032u, 27996u, 55738u))), vec3<bool>(true && any(vec4<bool>(false, true, false, false)), false, true)), vec3<u32>(32093u, _wgslsmith_sub_u32(1u, u_input.a), u_input.c), vec3<bool>(true, true, select(true, true, true)));
    let var_3 = func_2();
    return ~countOneBits(15847i);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 28>();
    global2 = _wgslsmith_clamp_vec4_i32(select(~reverseBits(vec4<i32>(-57116i, -8428i, global2.x, -2147483647i)), -vec4<i32>(u_input.b, u_input.b, 36577i, global2.x) & (vec4<i32>(global2.x, -70349i, global2.x, u_input.b) | vec4<i32>(global2.x, 32530i, -2942i, global2.x)), vec4<bool>(true, true, true, true)) >> (((~vec4<u32>(u_input.c, 80746u, 0u, u_input.a) ^ ~vec4<u32>(u_input.a, u_input.a, 0u, u_input.a)) << (~(~vec4<u32>(u_input.c, u_input.c, u_input.a, u_input.a)) % vec4<u32>(32u))) % vec4<u32>(32u)), firstLeadingBit(max(-_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b, 34448i, -39074i, global2.x), vec4<i32>(global2.x, u_input.b, 0i, global2.x)), vec4<i32>(-1i, -72664i, global2.x | -18189i, func_1()))), firstLeadingBit(~(~_wgslsmith_add_vec4_i32(vec4<i32>(-40050i, global2.x, global2.x, global2.x), vec4<i32>(2147483647i, u_input.b, global2.x, global2.x)))));
    var var_0 = u_input.c;
    global1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(-1893f, global1.x), global1.x)));
    var var_1 = Struct_4(vec4<i32>(reverseBits(global2.x), select(_wgslsmith_mult_i32(_wgslsmith_sub_i32(global2.x, global2.x), -8395i), select(_wgslsmith_mod_i32(u_input.b, -1i), global2.x, true), all(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), true))), _wgslsmith_sub_i32(max(max(2147483647i, 1i), ~u_input.b), -1i), _wgslsmith_add_i32(_wgslsmith_div_i32(global2.x, -u_input.b), _wgslsmith_dot_vec4_i32(vec4<i32>(global2.x, 2147483647i, global2.x, 15097i), vec4<i32>(u_input.b, u_input.b, 2147483647i, -16584i)))), 4294967295u, _wgslsmith_mod_vec2_u32(select(~vec2<u32>(u_input.c, u_input.a), vec2<u32>(6625u, u_input.c), all(vec4<bool>(false, false, true, false))), ~_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.c, u_input.c), vec2<u32>(4294967295u, u_input.a))) & vec2<u32>(1u, _wgslsmith_sub_u32(23722u & u_input.c, ~4294967295u)), ~u_input.a, Struct_3(_wgslsmith_f_op_f32(exp2(global1.x))));
    var_0 = firstLeadingBit(4294967295u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_u32(~abs(var_1.c), var_1.c) & u_input.a, global1.x);
}

