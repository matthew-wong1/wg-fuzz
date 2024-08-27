struct Struct_1 {
    a: vec3<i32>,
    b: vec3<bool>,
    c: vec4<i32>,
    d: i32,
}

struct Struct_2 {
    a: bool,
    b: vec2<i32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_2(arg_0: u32) -> Struct_1 {
    var var_0 = select(~(~u_input.a.x), -2147483647i, any(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, any(vec4<bool>(false, false, false, true)), false))));
    let var_1 = _wgslsmith_sub_vec3_u32(firstLeadingBit(~vec3<u32>(~29090u, arg_0, 1u)), _wgslsmith_mult_vec3_u32(vec3<u32>(0u, arg_0, arg_0), ~vec3<u32>(arg_0, 160405u, arg_0 >> (arg_0 % 32u))));
    var_0 = 4378i;
    var var_2 = var_1.zz;
    return Struct_1(~((vec3<i32>(u_input.b, 8371i, 2147483647i) << (~var_1 % vec3<u32>(32u))) << (~var_1 % vec3<u32>(32u))), vec3<bool>(~u_input.a.x <= firstLeadingBit(1i), !any(vec3<bool>(true, false, false)), true), vec4<i32>(u_input.a.x, max(select(~0i, u_input.a.x ^ u_input.b, false), ~18819i), u_input.b, u_input.a.x), ~u_input.b);
}

fn func_1() -> vec3<bool> {
    let var_0 = func_2(~(~select(4294967295u, 1u, true)));
    return select(var_0.b, vec3<bool>(false, any(!(!vec4<bool>(var_0.b.x, var_0.b.x, var_0.b.x, true))), var_0.b.x == false), var_0.b);
}

fn func_3(arg_0: Struct_1) -> Struct_1 {
    let var_0 = Struct_3(-114f, Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(1066f)), -1615f) >= -1303f, vec2<i32>(_wgslsmith_add_i32(arg_0.a.x, arg_0.c.x), u_input.b), func_2(_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(54661u, 463u, 1u), vec3<u32>(4294967295u, 6980u, 43216u)), vec3<u32>(1u, 4294967295u, 58224u))), arg_0), func_2(~_wgslsmith_clamp_u32(~60261u, abs(3023u), 1u)));
    var var_1 = ~(~_wgslsmith_sub_vec2_u32(vec2<u32>(~57701u, ~3631u), min(vec2<u32>(1u, 1u), ~vec2<u32>(0u, 99159u))));
    let var_2 = var_0.b;
    var_1 = _wgslsmith_mult_vec2_u32(_wgslsmith_mod_vec2_u32(abs(_wgslsmith_mult_vec2_u32(min(vec2<u32>(var_1.x, var_1.x), vec2<u32>(var_1.x, var_1.x)), vec2<u32>(56801u, 4294967295u))), min(vec2<u32>(5415u, 25057u) | vec2<u32>(1u, var_1.x), ~countOneBits(vec2<u32>(var_1.x, 4294967295u)))), (_wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(1u, var_1.x), vec2<u32>(0u, 35870u)), _wgslsmith_clamp_vec2_u32(vec2<u32>(var_1.x, var_1.x), vec2<u32>(37000u, var_1.x), vec2<u32>(3822u, var_1.x))) >> (~_wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, var_1.x), vec2<u32>(var_1.x, 1u)) % vec2<u32>(32u))) | _wgslsmith_mod_vec2_u32(~vec2<u32>(var_1.x, 34770u), ~countOneBits(vec2<u32>(var_1.x, 62933u))));
    var_1 = vec2<u32>(_wgslsmith_clamp_u32(_wgslsmith_add_u32(~0u, _wgslsmith_clamp_u32(~4294967295u, abs(29874u), ~98372u)), 0u, ~_wgslsmith_add_u32(~4294967295u, reverseBits(52246u))), _wgslsmith_add_u32(~4294967295u, _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(var_1.x, 0u, 0u), vec3<u32>(25453u, 12934u, var_1.x)), vec3<u32>(var_1.x, var_1.x, var_1.x)) ^ 39347u));
    return func_2(var_1.x);
}

fn func_4(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: f32, arg_3: vec4<f32>) -> Struct_1 {
    let var_0 = Struct_2(arg_1.x, ~countOneBits(_wgslsmith_mod_vec2_i32(u_input.a.xz, vec2<i32>(u_input.a.x, 65334i) | vec2<i32>(u_input.a.x, arg_0.a.x))), arg_0, arg_0);
    let var_1 = Struct_3(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_2 + _wgslsmith_f_op_f32(max(arg_3.x, _wgslsmith_f_op_f32(step(-1328f, -396f))))))), var_0, Struct_1(-vec3<i32>(u_input.a.x, 23383i, func_3(Struct_1(vec3<i32>(arg_0.d, -2147483647i, 21782i), vec3<bool>(var_0.a, true, arg_1.x), var_0.d.c, 78967i)).c.x), !arg_1, _wgslsmith_mult_vec4_i32(var_0.c.c, countOneBits(arg_0.c)), ~(-_wgslsmith_mod_i32(arg_0.a.x, u_input.b))));
    let var_2 = abs(vec4<u32>(~1u, 1u, 41733u, ~(~(~16342u))));
    let var_3 = func_3(var_0.d);
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.x)));
    return var_3;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(func_3(Struct_1(vec3<i32>(u_input.a.x, 12510i, -u_input.b), select(func_1(), func_2(65756u).b, true), _wgslsmith_add_vec4_i32(~vec4<i32>(28315i, u_input.a.x, -57545i, 34347i), -vec4<i32>(19298i, -1350i, 36739i, u_input.b)), ~(-1i))), vec3<bool>(false, true, func_1().x), 542f, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-551f, -182f, -736f, -1000f))))), vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(480f, -1376f)))), 1115f, _wgslsmith_f_op_f32(-430f - -1189f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(-1291f)), -102f)))));
    var var_1 = _wgslsmith_f_op_f32(step(-624f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-437f * _wgslsmith_f_op_f32(max(1000f, 561f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-228f, 815f)))), select(all(!var_0.b), func_2(38521u).b.x, true)))));
    let var_2 = func_3(Struct_1(-var_0.a, vec3<bool>(all(vec4<bool>(false, var_0.b.x, var_0.b.x, false)) || any(vec4<bool>(var_0.b.x, var_0.b.x, true, var_0.b.x)), false, _wgslsmith_f_op_f32(sign(1886f)) <= _wgslsmith_div_f32(650f, -453f)), vec4<i32>(_wgslsmith_add_i32(-2147483647i, var_0.a.x), u_input.b, func_4(var_0, var_0.b, -1433f, vec4<f32>(312f, -1333f, -1242f, 298f)).a.x ^ u_input.b, -37068i), var_0.c.x)).c.wzw;
    var var_3 = func_2(~_wgslsmith_mult_u32(~firstLeadingBit(0u), 1u));
    let var_4 = !(var_0.b.x || select(false, true, var_0.b.x));
    var var_5 = false;
    let var_6 = ~(select(~reverseBits(vec2<u32>(4294967295u, 10118u)), ~vec2<u32>(38592u, 25947u), vec2<bool>(true, true)) ^ vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(72976u, 1u, 62594u), ~vec3<u32>(16209u, 95655u, 1u)), ~1u));
    var var_7 = (-var_0.c ^ vec4<i32>(~_wgslsmith_mod_i32(var_0.c.x, -6996i), var_0.c.x, _wgslsmith_clamp_i32(~var_0.a.x, firstTrailingBit(var_3.a.x), _wgslsmith_mult_i32(-2147483647i, var_0.a.x)), _wgslsmith_mult_i32(-1312i, var_0.d << (var_6.x % 32u)))) ^ -_wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(var_3.c, vec4<i32>(var_2.x, var_3.a.x, u_input.a.x, u_input.a.x) << (vec4<u32>(var_6.x, var_6.x, var_6.x, var_6.x) % vec4<u32>(32u))), _wgslsmith_mult_vec4_i32(~vec4<i32>(13401i, -37850i, var_0.c.x, 75354i), var_3.c));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_u32(var_6.x, firstLeadingBit(max(~var_6.x, reverseBits(var_6.x)))));
}

