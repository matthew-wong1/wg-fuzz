struct Struct_1 {
    a: bool,
    b: vec3<u32>,
    c: f32,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: Struct_2,
}

struct Struct_4 {
    a: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -53458i;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_1) -> vec2<f32> {
    global0 = 17238i;
    global0 = -31673i;
    let var_0 = ~vec4<u32>(1u, ~arg_0.b.d.b.x, ~(u_input.b ^ arg_1.b.x) | 1u, arg_0.b.c.x);
    var var_1 = Struct_2(arg_0.c.a, arg_1, vec3<u32>(countOneBits(_wgslsmith_sub_u32(arg_0.c.a.b.x, 102715u) ^ _wgslsmith_mult_u32(var_0.x, 0u)), countOneBits(55842u & arg_1.b.x) & select(42671u, abs(arg_0.c.c.x), any(vec2<bool>(false, arg_1.d))), ~19585u), arg_0.c.d);
    var_1 = arg_0.b;
    return _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(arg_1.c)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_0.c.d.c)))))));
}

fn func_4(arg_0: i32, arg_1: vec2<f32>, arg_2: i32) -> u32 {
    global0 = countOneBits(select(-1i, -1i, 0u <= u_input.a.x));
    let var_0 = min(u_input.c, arg_0);
    var var_1 = false;
    var_1 = true;
    let var_2 = _wgslsmith_mult_u32(~_wgslsmith_add_u32(max(5720u, countOneBits(0u)), _wgslsmith_dot_vec4_u32(vec4<u32>(39623u, 1u, u_input.a.x, u_input.b) & vec4<u32>(u_input.b, 46377u, u_input.a.x, u_input.a.x), ~vec4<u32>(0u, u_input.b, u_input.b, u_input.a.x))), ~4294967295u);
    return min(~u_input.d.x, 35558u);
}

fn func_2(arg_0: vec4<i32>) -> bool {
    var var_0 = u_input.d;
    let var_1 = _wgslsmith_sub_vec4_u32(select(max(min(vec4<u32>(var_0.x, var_0.x, 32763u, var_0.x), vec4<u32>(40530u, var_0.x, 37509u, var_0.x)), reverseBits(vec4<u32>(1u, var_0.x, var_0.x, var_0.x))), abs(vec4<u32>(0u, 4294967295u, u_input.b, var_0.x) | vec4<u32>(u_input.d.x, 4294967295u, u_input.a.x, 4294967295u)), select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true)))) >> (firstTrailingBit(vec4<u32>(var_0.x, ~u_input.a.x, 1u, var_0.x | 0u)) % vec4<u32>(32u)), vec4<u32>(1u, var_0.x, func_4(_wgslsmith_sub_i32(u_input.c ^ -61524i, _wgslsmith_div_i32(-32935i, 13091i)), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(func_3(Struct_3(arg_0.x, Struct_2(Struct_1(false, vec3<u32>(var_0.x, var_0.x, u_input.b), -741f, true), Struct_1(false, vec3<u32>(65254u, 48857u, u_input.d.x), 167f, false), vec3<u32>(4294967295u, u_input.d.x, var_0.x), Struct_1(false, vec3<u32>(u_input.d.x, var_0.x, 1u), -1000f, false)), Struct_2(Struct_1(true, u_input.d, -1000f, true), Struct_1(false, vec3<u32>(24998u, u_input.d.x, u_input.b), 1112f, false), vec3<u32>(u_input.d.x, var_0.x, u_input.b), Struct_1(false, u_input.d, 1440f, true))), Struct_1(false, vec3<u32>(u_input.a.x, u_input.d.x, 5468u), 1724f, false))), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(913f, 354f))))), countOneBits(-1i)), ~var_0.x));
    let var_2 = vec4<i32>(u_input.c, arg_0.x, -41467i, _wgslsmith_div_i32(u_input.c, u_input.c)) | arg_0;
    var var_3 = !(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-627f, 662f))) + _wgslsmith_f_op_f32(f32(-1f) * -364f)) >= -1725f);
    var var_4 = 72470i;
    return any(vec2<bool>(false, true));
}

fn func_1() -> i32 {
    var var_0 = Struct_1(16186i <= abs(firstLeadingBit(~u_input.c)), u_input.d, _wgslsmith_f_op_f32(min(-2749f, 104f)), !(!func_2(vec4<i32>(u_input.c, u_input.c, -821i, -45563i)) == true));
    var var_1 = select(!select(vec4<bool>(all(vec2<bool>(var_0.a, false)), -2147483647i >= u_input.c, true, all(vec2<bool>(true, false))), select(vec4<bool>(var_0.d, var_0.a, var_0.a, true), !vec4<bool>(true, var_0.d, false, var_0.a), var_0.d), !all(vec4<bool>(false, var_0.d, false, var_0.a))), vec4<bool>(all(!select(vec3<bool>(var_0.d, false, var_0.a), vec3<bool>(false, true, var_0.d), false)), var_0.a && true, ~_wgslsmith_mod_u32(u_input.a.x, 4294967295u) == ~(1u >> (var_0.b.x % 32u)), var_0.d), vec4<bool>(var_0.a, func_2(_wgslsmith_mult_vec4_i32(vec4<i32>(-5595i, -1i, 13720i, u_input.c) & vec4<i32>(-1i, 34674i, 14274i, u_input.c), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.c, u_input.c, u_input.c, 18316i), vec4<i32>(u_input.c, u_input.c, 0i, -77358i), vec4<i32>(-2147483647i, u_input.c, u_input.c, u_input.c)))), false && (~2147483647i > ~u_input.c), any(select(!vec2<bool>(false, var_0.d), vec2<bool>(var_0.a, var_0.a), false))));
    let var_2 = select(select(select(select(select(vec4<bool>(true, false, var_1.x, var_1.x), vec4<bool>(true, true, var_1.x, var_1.x), vec4<bool>(var_1.x, var_1.x, var_1.x, true)), vec4<bool>(true, true, false, var_0.d), all(var_1.xzz)), select(vec4<bool>(true, true, true, true), !vec4<bool>(true, var_0.d, true, true), !vec4<bool>(false, var_1.x, var_1.x, var_0.a)), any(!vec2<bool>(var_0.a, var_1.x))), vec4<bool>(var_0.d, false, false, !all(var_1.xw)), vec4<bool>(true, var_0.d, func_2(-vec4<i32>(u_input.c, u_input.c, -14647i, u_input.c)), any(vec3<bool>(var_0.d, var_1.x, false)))), !select(vec4<bool>(var_0.a, var_1.x, !var_0.d, false), vec4<bool>(!var_0.a, true, !var_0.d, true), !select(vec4<bool>(var_0.a, false, var_0.d, false), vec4<bool>(false, false, true, true), true)), var_0.a);
    var_1 = !vec4<bool>(any(select(!vec2<bool>(var_1.x, false), var_1.xy, var_1.xy)), true, true || !all(vec4<bool>(true, true, var_2.x, true)), false);
    global0 = ~(-2572i);
    return countOneBits(countOneBits(select(-u_input.c, abs(~(-2147483647i)), false)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(ceil(-909f));
    let var_1 = countOneBits(vec2<i32>(u_input.c, _wgslsmith_clamp_i32(-48268i >> (u_input.b % 32u), firstLeadingBit(u_input.c), _wgslsmith_div_i32(-57943i, 35822i)))) >> (vec2<u32>(u_input.a.x, u_input.b) % vec2<u32>(32u));
    global0 = -_wgslsmith_mult_i32(~(-func_1()), 2147483647i);
    var var_2 = Struct_1(!any(vec4<bool>(true, true, all(vec3<bool>(false, true, false)), true)), ~abs(_wgslsmith_sub_vec3_u32(vec3<u32>(106134u, u_input.a.x, 17600u), ~vec3<u32>(42420u, 68627u, u_input.a.x))), -2059f, false);
    let var_3 = abs(-vec2<i32>(_wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(78270i, var_1.x, -6539i, var_1.x)), vec4<i32>(u_input.c, u_input.c, u_input.c, 0i)), ~_wgslsmith_mod_i32(0i, var_1.x)));
    var_2 = Struct_1(var_2.a, u_input.d, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(-280f, _wgslsmith_f_op_f32(-var_2.c))))), !(!any(!vec2<bool>(var_2.d, var_2.d))));
    var var_4 = Struct_2(Struct_1(true, vec3<u32>(_wgslsmith_sub_u32(~var_2.b.x, _wgslsmith_div_u32(u_input.d.x, 4294967295u)), 10214u, 0u), 494f, true), Struct_1(!var_2.a, u_input.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0))), all(vec4<bool>(0i <= var_3.x, true, any(vec3<bool>(var_2.a, false, false)), var_0 < -535f))), ~vec3<u32>(_wgslsmith_mult_u32(u_input.a.x, u_input.d.x ^ 4294967295u), _wgslsmith_sub_u32(u_input.a.x, 6367u), ~(~1u)), Struct_1(var_2.a, vec3<u32>(1u, _wgslsmith_sub_u32(~4294967295u, _wgslsmith_clamp_u32(30993u, u_input.d.x, u_input.d.x)), ~abs(0u)), 2471f, any(!select(vec3<bool>(var_2.d, var_2.a, true), vec3<bool>(var_2.a, var_2.a, true), vec3<bool>(var_2.d, var_2.a, false)))));
    let var_5 = !any(select(!select(vec4<bool>(true, true, var_2.d, true), vec4<bool>(true, false, var_4.a.d, false), true), vec4<bool>(false, false, !var_2.d, var_2.a), select(vec4<bool>(var_4.d.d, var_2.d, var_2.d, var_2.d), vec4<bool>(var_4.b.d, var_2.d, false, false), select(vec4<bool>(true, var_2.a, false, var_2.a), vec4<bool>(var_4.d.a, var_4.d.d, true, true), vec4<bool>(true, false, true, false)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-vec4<f32>(749f, var_2.c, var_4.a.c, 586f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(2231f - _wgslsmith_f_op_f32(-var_0)))) + _wgslsmith_f_op_f32(sign(1000f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1328f, 1399f, 1000f), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-624f, -1022f, var_2.c))), vec3<bool>(true, false, false))), _wgslsmith_div_vec3_f32(vec3<f32>(-850f, -382f, -967f), vec3<f32>(var_2.c, var_2.c, var_2.c))) + _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(-1082f - 1662f), _wgslsmith_f_op_f32(f32(-1f) * -466f), var_4.a.c), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_2.c, var_2.c, -1113f))))))));
}

