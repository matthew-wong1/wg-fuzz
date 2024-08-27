struct Struct_1 {
    a: i32,
    b: vec4<bool>,
    c: vec3<bool>,
    d: i32,
    e: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> bool {
    var var_0 = Struct_1(~(-2147483647i), vec4<bool>(all(vec3<bool>(false, true, true)), firstLeadingBit(u_input.a) != ~1u, false, true), vec3<bool>(true, true, true), -107434i, -1000f);
    var_0 = Struct_1(var_0.a, vec4<bool>(var_0.b.x, all(vec3<bool>(false, all(vec2<bool>(false, true)), var_0.b.x)), false, ((u_input.a << (u_input.a % 32u)) << (63103u % 32u)) >= ~(4294967295u ^ u_input.a)), var_0.b.zzw, var_0.d, _wgslsmith_div_f32(_wgslsmith_f_op_f32(545f * var_0.e), _wgslsmith_div_f32(var_0.e, 361f)));
    var var_1 = var_0.b;
    var_1 = !var_0.b;
    var_1 = var_0.b;
    return any(vec2<bool>(any(var_1.wxy), false));
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1) -> vec3<u32> {
    var var_0 = vec2<i32>(-(~1i), _wgslsmith_mod_i32(arg_1.d, 0i));
    var var_1 = -1000f;
    var_1 = -693f;
    var var_2 = _wgslsmith_f_op_f32(step(-326f, _wgslsmith_div_f32(arg_1.e, 193f)));
    let var_3 = vec3<bool>(arg_1.c.x, all(vec4<bool>(any(arg_1.c.zz), true, !(!arg_2.c.x), false)), all(!select(arg_2.b.wxz, select(vec3<bool>(arg_2.c.x, arg_0, arg_2.b.x), vec3<bool>(false, arg_0, true), true), true)));
    return _wgslsmith_mult_vec3_u32(vec3<u32>(_wgslsmith_div_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.a, u_input.a, u_input.a), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)), u_input.a), u_input.a), ~(~abs(u_input.a)), _wgslsmith_add_u32(88514u, _wgslsmith_mod_u32(u_input.a, 1u)) ^ u_input.a), vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, 39666u), vec3<u32>(0u, 1u, u_input.a)) ^ _wgslsmith_sub_u32(u_input.a, ~u_input.a), min(27065u & _wgslsmith_div_u32(4294967295u, u_input.a), 1u), ~(4294967295u & (u_input.a & u_input.a))));
}

fn func_2(arg_0: Struct_1, arg_1: u32, arg_2: bool) -> u32 {
    let var_0 = arg_0;
    let var_1 = _wgslsmith_div_vec2_u32(~vec2<u32>(39195u, u_input.a), vec2<u32>(_wgslsmith_dot_vec3_u32((vec3<u32>(u_input.a, 0u, 74942u) & vec3<u32>(64551u, u_input.a, arg_1)) | _wgslsmith_div_vec3_u32(vec3<u32>(41569u, 4294967295u, u_input.a), vec3<u32>(52687u, 0u, 4294967295u)), func_4(func_3(), var_0, Struct_1(-1i, vec4<bool>(true, arg_2, true, false), vec3<bool>(var_0.b.x, var_0.c.x, var_0.c.x), var_0.a, var_0.e))), _wgslsmith_dot_vec2_u32(~(vec2<u32>(arg_1, arg_1) & vec2<u32>(arg_1, u_input.a)), select(vec2<u32>(arg_1, 91488u) & vec2<u32>(48964u, 57179u), firstTrailingBit(vec2<u32>(u_input.a, u_input.a)), false))));
    let var_2 = firstTrailingBit(_wgslsmith_mult_u32(select(u_input.a, _wgslsmith_mult_u32(_wgslsmith_div_u32(u_input.a, 1u), var_1.x), select(!arg_0.c.x, true, true)), ~45759u));
    var var_3 = arg_0;
    let var_4 = ~(~(~vec4<u32>(var_2, u_input.a, var_1.x, 17449u)));
    return 1u & (_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u | var_4.x, 4294967295u, 21436u), var_4.xwz) ^ var_2);
}

fn func_1() -> vec3<bool> {
    let var_0 = vec4<i32>(-16634i, 1i, abs(_wgslsmith_mod_i32(~1i, -24973i)), _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(2147483647i, 6515i, 1i, -2147483647i)), _wgslsmith_div_vec4_i32(vec4<i32>(7571i, 13523i, 16777i, 1i), select(vec4<i32>(18401i, 0i, 1i, -18766i), vec4<i32>(-21374i, 9906i, 30717i, -2533i), true)))) ^ vec4<i32>(i32(-1i) * -(~(-2147483647i)), _wgslsmith_sub_i32(~(-1i), -2147483647i), 1i, max(~(-3402i), 4081i));
    var var_1 = var_0;
    var_1 = vec4<i32>((-16898i & var_1.x) >> (min(u_input.a ^ func_2(Struct_1(-2913i, vec4<bool>(true, true, true, true), vec3<bool>(false, false, true), -2147483647i, 612f), u_input.a, true), ~1u) % 32u), _wgslsmith_div_i32(-26402i, ~var_0.x), _wgslsmith_dot_vec2_i32(var_0.wx, _wgslsmith_mod_vec2_i32(vec2<i32>(var_0.x, -1i), var_1.ww)), 1i);
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(800f)))), -1104f, _wgslsmith_f_op_f32(f32(-1f) * -2084f));
    let var_3 = firstTrailingBit(-vec3<i32>(-1i, ~0i, _wgslsmith_clamp_i32(var_1.x, var_0.x, _wgslsmith_dot_vec3_i32(var_0.xyw, vec3<i32>(-2147483647i, var_0.x, var_1.x)))));
    return vec3<bool>(true, true, true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(2147483647i >> (firstTrailingBit(15589u) % 32u), vec4<bool>(any(vec2<bool>(true, true)), true, u_input.a >= 7566u, all(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), any(vec3<bool>(true, false, false))))), func_1(), 23949i, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(605f, -535f)) - 1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -132f) * _wgslsmith_f_op_f32(trunc(-498f))))));
    let var_1 = u_input.a;
    var_0 = Struct_1(var_0.a | var_0.d, vec4<bool>(false, var_0.b.x, var_0.c.x, any(select(select(var_0.b, var_0.b, vec4<bool>(true, var_0.c.x, var_0.c.x, var_0.b.x)), vec4<bool>(var_0.b.x, true, true, true), func_1().x))), !vec3<bool>(var_0.c.x | !var_0.c.x, !var_0.b.x, true), -1i, 538f);
    var_0 = Struct_1(~(-_wgslsmith_clamp_i32(-10838i, var_0.d, -6310i) >> (_wgslsmith_mod_u32(0u, var_1) % 32u)), !(!select(vec4<bool>(false, true, var_0.c.x, false), vec4<bool>(var_0.c.x, false, var_0.b.x, var_0.b.x), vec4<bool>(true, var_0.b.x, var_0.b.x, var_0.b.x))), !vec3<bool>(var_0.b.x, true, func_1().x), firstTrailingBit(_wgslsmith_div_i32(reverseBits(var_0.d) & abs(var_0.a), -var_0.a)), _wgslsmith_div_f32(-369f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.e, _wgslsmith_f_op_f32(step(var_0.e, var_0.e))) * 121f)));
    var_0 = Struct_1(_wgslsmith_add_i32(~6636i, 14198i), select(!(!select(vec4<bool>(true, true, var_0.c.x, var_0.c.x), vec4<bool>(true, var_0.b.x, true, var_0.c.x), vec4<bool>(false, false, var_0.c.x, var_0.b.x))), vec4<bool>(true, any(vec2<bool>(true, true)), 1i == -var_0.a, !var_0.b.x), vec4<bool>(!var_0.c.x, false, func_1().x, _wgslsmith_add_i32(0i, 2322i) == var_0.a)), var_0.c, i32(-1i) * -2147483647i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(3077f)), var_0.e))));
    let var_2 = Struct_1(var_0.a, var_0.b, select(func_1(), vec3<bool>(!var_0.c.x, false, false), var_0.c.x), -_wgslsmith_div_i32(min(-2147483647i, var_0.a), -48869i) ^ -19579i, var_0.e);
    let var_3 = (var_2.e <= var_0.e) | var_2.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_i32(i32(-1i) * -var_0.d, countOneBits(~var_0.a)), vec2<f32>(275f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_2.e))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-2773f, 912f) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1593f, 543f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(984f, var_0.e)))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -268f), _wgslsmith_f_op_f32(178f + -2727f)), var_3))));
}

