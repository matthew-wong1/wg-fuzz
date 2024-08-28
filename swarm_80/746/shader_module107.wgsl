struct Struct_1 {
    a: vec4<u32>,
    b: vec2<f32>,
    c: bool,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
    d: vec3<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: Struct_1, arg_3: i32) -> f32 {
    let var_0 = ~firstTrailingBit(1u);
    let var_1 = arg_2;
    var var_2 = select(vec2<i32>(-6669i, arg_2.d.x), arg_0.d.zx, arg_1.zx);
    var var_3 = _wgslsmith_clamp_vec2_i32(vec2<i32>(~(-1i ^ _wgslsmith_clamp_i32(var_1.d.x, arg_3, -46147i)), abs(~(~17035i))), vec2<i32>(i32(-1i) * -_wgslsmith_add_i32(-44408i, var_1.d.x), arg_2.d.x), _wgslsmith_mod_vec2_i32(-min(abs(vec2<i32>(-26267i, arg_2.d.x)), _wgslsmith_div_vec2_i32(vec2<i32>(arg_0.d.x, var_1.d.x), vec2<i32>(-1i, -1i))), arg_0.d.zy));
    var_2 = _wgslsmith_clamp_vec2_i32(firstTrailingBit(min(-vec2<i32>(-115925i, var_2.x), select(vec2<i32>(40257i, 0i), arg_2.d.zz, vec2<bool>(arg_1.x, arg_1.x))) & ~max(vec2<i32>(arg_0.d.x, 62184i), var_1.d.zy)), select(-(~_wgslsmith_clamp_vec2_i32(u_input.e.zy, vec2<i32>(1i, var_3.x), vec2<i32>(var_3.x, arg_2.d.x))), arg_0.d.yy, true == arg_0.c), vec2<i32>(select(6403i, 1i, true), _wgslsmith_dot_vec2_i32(arg_0.d.yz, arg_2.d.yx)));
    return -560f;
}

fn func_2(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1) -> i32 {
    var var_0 = arg_2.c;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_1(u_input.b, vec2<f32>(187f, arg_1.b.x), arg_2.c, arg_2.d), vec4<bool>(arg_1.c, true, true, false), arg_1, arg_1.d.x))), _wgslsmith_f_op_f32(arg_1.b.x - arg_1.b.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_1(vec4<u32>(19873u, arg_1.a.x, u_input.b.x, arg_2.a.x), arg_1.b, true, arg_2.d), !vec4<bool>(arg_2.c, false, arg_1.c, true), arg_2, 1i & arg_2.d.x)))));
    var var_2 = Struct_1(_wgslsmith_add_vec4_u32(~arg_2.a, u_input.b), arg_2.b, all(!(!vec2<bool>(true, arg_2.c))), arg_2.d);
    var_0 = true;
    var_0 = all(!vec4<bool>(true, (arg_2.c && false) && !var_2.c, 54455u == arg_0, !(!arg_2.c)));
    return _wgslsmith_mod_i32(firstLeadingBit(min(_wgslsmith_mult_i32(u_input.d.x, arg_2.d.x), -1i)) >> (75177u % 32u), firstTrailingBit(-arg_1.d.x));
}

fn func_4(arg_0: i32) -> f32 {
    let var_0 = ~u_input.b.x >> (firstTrailingBit(abs(u_input.b.x ^ (u_input.b.x >> (u_input.b.x % 32u)))) % 32u);
    let var_1 = Struct_1(~(~((vec4<u32>(0u, 0u, u_input.b.x, var_0) >> (vec4<u32>(88806u, 49141u, u_input.b.x, 40117u) % vec4<u32>(32u))) ^ ~u_input.b)), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(867f, 645f) + vec2<f32>(-1820f, -1000f)) - vec2<f32>(-1141f, -2282f)))))), _wgslsmith_clamp_i32(arg_0, firstLeadingBit(26050i), u_input.e.x) >= ~arg_0, ~reverseBits(abs(-u_input.e)));
    var var_2 = 126f;
    let var_3 = u_input.e.x < arg_0;
    var_2 = var_1.b.x;
    return _wgslsmith_f_op_f32(func_3(Struct_1(~(~var_1.a ^ ~vec4<u32>(1u, 1u, u_input.b.x, 49477u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(-735f, var_1.b.x) * var_1.b)))), true, vec3<i32>(u_input.d.x, _wgslsmith_div_i32(~u_input.a, ~arg_0), -23817i)), !select(!vec4<bool>(var_1.c, false, var_1.c, false), !select(vec4<bool>(true, true, false, false), vec4<bool>(false, var_1.c, var_1.c, var_1.c), var_3), var_3), var_1, -reverseBits(_wgslsmith_dot_vec4_i32(abs(vec4<i32>(u_input.e.x, 0i, 0i, u_input.a)), vec4<i32>(var_1.d.x, -25247i, arg_0, u_input.d.x)))));
}

fn func_5(arg_0: f32, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: vec3<bool>) -> Struct_1 {
    let var_0 = !arg_1.c;
    let var_1 = true;
    var var_2 = 286f;
    var_2 = 392f;
    let var_3 = _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_1.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1188f - _wgslsmith_f_op_f32(select(1251f, arg_0, true)))), arg_0, _wgslsmith_f_op_f32(sign(-326f)))));
    return Struct_1(~abs(vec4<u32>(37029u, firstTrailingBit(arg_1.a.x), 1u, u_input.b.x)), var_3.xw, false, arg_2.www);
}

fn func_1(arg_0: Struct_1, arg_1: i32) -> Struct_1 {
    var var_0 = func_5(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_4(func_2(u_input.b.x, arg_0, Struct_1(vec4<u32>(4294967295u, u_input.b.x, 4294967295u, arg_0.a.x), vec2<f32>(1491f, -389f), arg_0.c, u_input.e)))), arg_0.b.x))), arg_0, vec4<i32>(_wgslsmith_dot_vec2_i32(firstLeadingBit(vec2<i32>(u_input.a, 2147483647i)), reverseBits(vec2<i32>(13614i, arg_0.d.x))), -2147483647i, ~u_input.e.x, max(2147483647i, min(_wgslsmith_dot_vec2_i32(u_input.d.xy, vec2<i32>(-2147483647i, -11592i)), -2147483647i))), select(!select(select(vec3<bool>(false, arg_0.c, arg_0.c), vec3<bool>(arg_0.c, arg_0.c, false), arg_0.c), select(vec3<bool>(arg_0.c, arg_0.c, false), vec3<bool>(true, true, false), vec3<bool>(false, arg_0.c, arg_0.c)), select(vec3<bool>(arg_0.c, true, arg_0.c), vec3<bool>(arg_0.c, arg_0.c, true), vec3<bool>(true, true, true))), select(!vec3<bool>(true, arg_0.c, false), vec3<bool>(arg_0.c, true, arg_0.c), all(vec3<bool>(true, arg_0.c, false)) || all(vec3<bool>(true, arg_0.c, true))), true));
    var var_1 = _wgslsmith_add_vec4_i32(vec4<i32>(-19407i, _wgslsmith_mult_i32(~arg_1 | -arg_1, -(~var_0.d.x)), u_input.e.x, _wgslsmith_add_i32(-57500i, ~1i)), vec4<i32>(arg_0.d.x, abs(u_input.a), -_wgslsmith_dot_vec3_i32(u_input.e, ~var_0.d), ~(arg_1 ^ -2147483647i) << (_wgslsmith_mod_u32(arg_0.a.x, 41381u) % 32u)));
    var_1 = _wgslsmith_sub_vec4_i32((_wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(arg_0.d.x, arg_0.d.x, -40651i, 11424i), vec4<i32>(1i, -72097i, arg_1, arg_0.d.x)), -vec4<i32>(var_0.d.x, u_input.e.x, -1914i, 60985i)) & ~_wgslsmith_div_vec4_i32(vec4<i32>(var_1.x, var_0.d.x, arg_1, arg_0.d.x), vec4<i32>(-42848i, -1i, arg_0.d.x, 19891i))) & ~(~reverseBits(vec4<i32>(0i, var_0.d.x, -11250i, 42064i))), _wgslsmith_mult_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(-1i, abs(u_input.e.x)), abs(-63555i), var_0.d.x, ~_wgslsmith_sub_i32(u_input.c, -32354i)), abs(~(vec4<i32>(var_1.x, -12546i, 0i, u_input.c) & vec4<i32>(var_0.d.x, arg_1, 0i, -2147483647i)))));
    return func_5(var_0.b.x, arg_0, -select(min(select(vec4<i32>(arg_1, arg_1, var_1.x, -18215i), vec4<i32>(-2147483647i, var_1.x, 0i, var_0.d.x), var_0.c), vec4<i32>(var_0.d.x, 0i, 2147483647i, 2147483647i) << (vec4<u32>(70380u, u_input.b.x, 4294967295u, 43349u) % vec4<u32>(32u))), vec4<i32>(var_0.d.x, countOneBits(4473i), ~1i, -arg_0.d.x), !vec4<bool>(var_0.c, var_0.c, true, var_0.c)), !select(vec3<bool>(true, true, true), !(!vec3<bool>(false, arg_0.c, false)), var_0.c));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(Struct_1(u_input.b, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1692f, 1033f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-440f, 194f))))), all(select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true)), true)), _wgslsmith_add_vec3_i32(u_input.e, vec3<i32>(u_input.e.x | 0i, -2147483647i, _wgslsmith_add_i32(0i, -78902i)))), _wgslsmith_div_i32(u_input.a, max(-u_input.e.x, ~(-24466i << (u_input.b.x % 32u)))));
    var_0 = func_1(func_1(Struct_1(~abs(vec4<u32>(u_input.b.x, u_input.b.x, 4294967295u, 0u)), vec2<f32>(var_0.b.x, _wgslsmith_f_op_f32(var_0.b.x + -1393f)), all(select(vec3<bool>(var_0.c, false, false), vec3<bool>(false, var_0.c, false), var_0.c)), u_input.d), 0i), -var_0.d.x);
    var_0 = Struct_1(var_0.a | vec4<u32>(_wgslsmith_div_u32(~19916u, ~u_input.b.x), var_0.a.x, ~var_0.a.x >> (var_0.a.x % 32u), ~var_0.a.x), _wgslsmith_f_op_vec2_f32(var_0.b + vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1592f + -983f) * var_0.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.b.x))))), var_0.c, vec3<i32>(-2147483647i, 0i, u_input.e.x) | vec3<i32>(-41032i, -u_input.a, -abs(u_input.c)));
    var var_1 = _wgslsmith_f_op_f32(-526f + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.b.x), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b.x - var_0.b.x) + var_0.b.x))))));
    let var_2 = firstLeadingBit(-var_0.d.x << (1u % 32u));
    let var_3 = _wgslsmith_sub_vec3_u32(abs(vec3<u32>(var_0.a.x, ~4294967295u, func_5(-122f, Struct_1(u_input.b, vec2<f32>(-1262f, -681f), true, vec3<i32>(u_input.d.x, 35682i, var_0.d.x)), vec4<i32>(77388i, var_0.d.x, 18918i, var_2), vec3<bool>(var_0.c, true, var_0.c)).a.x)) ^ _wgslsmith_add_vec3_u32(vec3<u32>(~56739u, _wgslsmith_dot_vec3_u32(vec3<u32>(6667u, u_input.b.x, var_0.a.x), var_0.a.zzw), ~var_0.a.x), func_5(var_0.b.x, func_5(var_0.b.x, Struct_1(vec4<u32>(var_0.a.x, var_0.a.x, u_input.b.x, u_input.b.x), vec2<f32>(var_0.b.x, 856f), var_0.c, vec3<i32>(2147483647i, 69453i, var_2)), vec4<i32>(1i, var_0.d.x, u_input.a, var_2), vec3<bool>(false, false, var_0.c)), -vec4<i32>(var_2, u_input.e.x, var_2, -11017i), !vec3<bool>(var_0.c, var_0.c, var_0.c)).a.yyz), vec3<u32>(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(max(vec3<u32>(var_0.a.x, 4294967295u, 34343u), vec3<u32>(u_input.b.x, 1u, u_input.b.x)), u_input.b.yyy), max(~67285u, 0u)), 50827u, var_0.a.x));
    var_0 = func_5(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0.b.x), var_0.b.x)), func_5(_wgslsmith_f_op_f32(abs(var_0.b.x)), func_5(_wgslsmith_f_op_f32(select(var_0.b.x, -1000f, true)), Struct_1(_wgslsmith_sub_vec4_u32(var_0.a, u_input.b), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1462f, 1000f) + vec2<f32>(var_0.b.x, -249f)), func_5(var_0.b.x, Struct_1(vec4<u32>(var_3.x, 1u, var_0.a.x, 4294967295u), var_0.b, var_0.c, vec3<i32>(4531i, 2147483647i, 1i)), vec4<i32>(82255i, -1i, var_0.d.x, 73194i), vec3<bool>(var_0.c, var_0.c, var_0.c)).c, _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.d.x, 0i, 0i), u_input.d)), firstLeadingBit(-vec4<i32>(u_input.d.x, 49550i, 46119i, 44717i)), !vec3<bool>(var_0.c, var_0.c, true)), ~vec4<i32>(0i, i32(-1i) * -17934i, -var_0.d.x, ~var_2), vec3<bool>(all(!vec3<bool>(false, true, var_0.c)), false, all(select(vec4<bool>(false, var_0.c, var_0.c, var_0.c), vec4<bool>(true, var_0.c, false, var_0.c), true)))), vec4<i32>(u_input.e.x, ~_wgslsmith_mult_i32(var_0.d.x & var_0.d.x, 0i), 0i, ~max(var_0.d.x, u_input.a)), vec3<bool>(false | var_0.c, false, all(vec4<bool>(var_0.c, all(vec3<bool>(true, var_0.c, true)), var_0.c || false, select(var_0.c, true, var_0.c)))));
    var_1 = 429f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -608f)), var_0.b.x);
}

