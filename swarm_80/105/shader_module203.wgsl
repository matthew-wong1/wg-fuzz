struct Struct_1 {
    a: vec4<bool>,
    b: vec2<bool>,
    c: f32,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: f32,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: bool) -> vec4<bool> {
    var var_0 = Struct_1(!vec4<bool>(true, false, true & arg_2, !all(arg_1.a.yxx)), vec2<bool>(arg_1.b.x, true), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -697f)))))), u_input.b);
    let var_1 = u_input.c;
    let var_2 = vec2<u32>(0u, _wgslsmith_dot_vec3_u32(select(~(~var_1), select(_wgslsmith_sub_vec3_u32(vec3<u32>(53702u, 1u, 20986u), vec3<u32>(u_input.a, arg_0.x, 16481u)), min(u_input.c, var_1), !arg_1.a.x), _wgslsmith_f_op_f32(var_0.c + -156f) < arg_1.c), _wgslsmith_clamp_vec3_u32(select(_wgslsmith_mult_vec3_u32(vec3<u32>(var_1.x, 104390u, 58595u), vec3<u32>(u_input.a, u_input.c.x, u_input.a)), var_1 ^ var_1, arg_1.a.wxz), ~select(vec3<u32>(var_1.x, 13405u, 21780u), u_input.c, true), vec3<u32>(0u, 4294967295u, ~0u))));
    var_0 = Struct_1(!(!(!select(var_0.a, vec4<bool>(true, arg_1.a.x, true, false), true))), select(select(select(vec2<bool>(false, arg_1.b.x), !vec2<bool>(true, var_0.a.x), vec2<bool>(var_0.b.x, arg_2)), var_0.b, true), vec2<bool>(any(arg_1.a.xzx) && arg_2, var_0.b.x), vec2<bool>(arg_2, arg_2)), _wgslsmith_div_f32(1f, var_0.c), select(_wgslsmith_mult_vec4_i32(reverseBits(vec4<i32>(arg_1.d.x, 0i, arg_1.d.x, 1i)), vec4<i32>(_wgslsmith_clamp_i32(var_0.d.x, 8740i, 15680i), var_0.d.x, u_input.b.x, ~25746i)), ~var_0.d ^ vec4<i32>(u_input.b.x, _wgslsmith_mult_i32(u_input.b.x, arg_1.d.x), arg_1.d.x ^ 2147483647i, _wgslsmith_add_i32(arg_1.d.x, arg_1.d.x)), ~var_0.d.x <= var_0.d.x));
    var var_3 = u_input.b.x;
    return vec4<bool>(true, true, !(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_1.c), _wgslsmith_f_op_f32(f32(-1f) * -267f))) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.c, 1133f)))), any(var_0.a));
}

fn func_2(arg_0: vec2<f32>, arg_1: u32, arg_2: vec3<bool>, arg_3: Struct_1) -> bool {
    var var_0 = Struct_1(vec4<bool>(arg_3.a.x, false, true, false), arg_3.a.yz, _wgslsmith_f_op_f32(-arg_0.x), ~countOneBits(-vec4<i32>(u_input.b.x, 21235i, u_input.b.x, 0i)));
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -413f);
    var var_2 = Struct_1(!(!(!func_3(vec2<u32>(arg_1, 33256u), Struct_1(vec4<bool>(var_0.b.x, arg_3.b.x, var_0.b.x, var_0.a.x), vec2<bool>(arg_3.a.x, arg_3.b.x), var_0.c, var_0.d), arg_3.b.x))), vec2<bool>(func_3(u_input.c.yy, arg_3, !(!arg_3.b.x)).x, arg_2.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(var_1)))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1820f), 408f)), firstTrailingBit(_wgslsmith_add_vec4_i32(-firstLeadingBit(arg_3.d), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.b.x, var_0.d.x, arg_3.d.x, 59796i), arg_3.d, vec4<i32>(arg_3.d.x, u_input.b.x, arg_3.d.x, arg_3.d.x)))));
    var_0 = Struct_1(arg_3.a, var_2.b, 1070f, _wgslsmith_mod_vec4_i32(-_wgslsmith_div_vec4_i32(arg_3.d, arg_3.d) >> (vec4<u32>(283u, max(arg_1, 6735u), 0u, ~4294967295u) % vec4<u32>(32u)), vec4<i32>(var_2.d.x, _wgslsmith_add_i32(-var_2.d.x, var_0.d.x), var_0.d.x, arg_3.d.x)));
    return _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(var_2.d.x, -2147483647i, 2147483647i), arg_3.d.zwy), u_input.b.zyw), _wgslsmith_sub_i32(9229i, var_0.d.x)) > -1i;
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    let var_0 = arg_0;
    let var_1 = arg_0;
    let var_2 = arg_0;
    var var_3 = _wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(~vec4<u32>(52439u, 1u, 4294967295u, u_input.a) << ((vec4<u32>(u_input.c.x, u_input.c.x, 0u, 5090u) << (vec4<u32>(8189u, u_input.a, u_input.c.x, u_input.c.x) % vec4<u32>(32u))) % vec4<u32>(32u)), vec4<u32>(_wgslsmith_mult_u32(15210u, 0u), _wgslsmith_mult_u32(u_input.a, 0u), _wgslsmith_mult_u32(52636u, 30309u), u_input.c.x)), select(min(vec4<u32>(0u, u_input.a, 43748u, 4294967295u), vec4<u32>(u_input.a, 21974u, 30067u, 35483u)), vec4<u32>(0u, u_input.c.x, 1u, u_input.a), vec4<bool>(false, arg_0.a.x, arg_0.a.x, true)) ^ countOneBits(vec4<u32>(u_input.a, 1u, u_input.c.x, 17178u))) << (vec4<u32>(~(~u_input.c.x ^ (13153u ^ u_input.c.x)), ~max(max(u_input.c.x, u_input.a), ~u_input.a), reverseBits(~8639u), 20936u) % vec4<u32>(32u));
    var_3 = vec4<u32>(53562u, var_3.x, u_input.a, countOneBits(~52405u));
    return var_0;
}

fn func_1() -> Struct_1 {
    var var_0 = u_input.b.x >> (u_input.c.x % 32u);
    var_0 = min(u_input.b.x << (u_input.a % 32u), 16495i);
    var_0 = firstLeadingBit(max(_wgslsmith_dot_vec3_i32(~vec3<i32>(u_input.b.x, u_input.b.x, -1i), vec3<i32>(u_input.b.x, -2147483647i, 2147483647i) & vec3<i32>(u_input.b.x, -1i, 6939i)), 0i));
    var_0 = u_input.b.x;
    var_0 = -(~u_input.b.x);
    return func_4(Struct_1(vec4<bool>(true, true, true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(func_2(vec2<f32>(-1388f, 319f), u_input.c.x, vec3<bool>(false, true, true), Struct_1(vec4<bool>(false, false, false, true), vec2<bool>(true, false), 344f, vec4<i32>(2147483647i, u_input.b.x, u_input.b.x, u_input.b.x))), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2289f * 1164f))), u_input.b));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = var_0.b.x;
    var_1 = func_4(func_4(func_4(Struct_1(var_0.a, vec2<bool>(var_0.a.x, var_0.a.x), 469f, u_input.b)))).a.x & false;
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c + -385f)) >= var_0.c;
    var_1 = var_0.a.x;
    let var_2 = !(!all(select(vec3<bool>(false, false, var_0.a.x), !var_0.a.wxy, false)));
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(step(-859f, var_0.c)), _wgslsmith_f_op_f32(-107f - -141f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-391f + _wgslsmith_f_op_f32(1493f - 825f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-580f + var_0.c) * _wgslsmith_f_op_f32(var_0.c + var_0.c)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c)))));
    var var_4 = vec2<f32>(func_1().c, -642f);
    var_0 = Struct_1(vec4<bool>(true, reverseBits(u_input.c.x) <= u_input.a, var_0.a.x, all(vec3<bool>(true, true, true))), !select(select(vec2<bool>(var_2, var_2), vec2<bool>(var_0.b.x, false), all(var_0.a.ywy)), var_0.b, vec2<bool>(true, any(vec3<bool>(var_0.a.x, false, false)))), _wgslsmith_f_op_f32(1591f - _wgslsmith_f_op_f32(var_3.x * _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.c * -402f), var_3.x))), var_0.d);
    let x = u_input.a;
    s_output = StorageBuffer(select(~(vec3<i32>(-1i) * -var_0.d.xzw), ~var_0.d.xyx, func_1().a.zzz), _wgslsmith_add_vec3_i32(u_input.b.wzx, vec3<i32>(-2147483647i, i32(-1i) * -20083i, var_0.d.x)) & vec3<i32>(var_0.d.x, -(~(-39043i)), max(40734i, var_0.d.x) ^ (28662i << (0u % 32u))), 294f, firstLeadingBit(0u), 1i);
}

