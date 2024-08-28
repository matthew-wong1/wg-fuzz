struct Struct_1 {
    a: f32,
    b: vec3<f32>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: Struct_1,
    d: vec4<u32>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec2<f32>,
    c: Struct_2,
}

struct Struct_4 {
    a: vec4<i32>,
    b: Struct_3,
    c: vec2<f32>,
    d: Struct_3,
}

struct Struct_5 {
    a: u32,
    b: vec2<bool>,
    c: vec3<i32>,
    d: bool,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: f32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3() -> i32 {
    let var_0 = u_input.b;
    var var_1 = _wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(countOneBits(-2147483647i), -25076i, u_input.b.x, var_0.x), -select(vec4<i32>(1i, 5606i, 21336i, u_input.b.x), vec4<i32>(-21961i, -2147483647i, 40704i, 17297i), vec4<bool>(true, false, true, true))) << (~(~_wgslsmith_mult_vec4_u32(vec4<u32>(8183u, 10212u, 4294967295u, 2291u), vec4<u32>(u_input.a.x, 0u, 4294967295u, 0u))) % vec4<u32>(32u)), countOneBits(min(vec4<i32>(-u_input.b.x, var_0.x, _wgslsmith_dot_vec4_i32(vec4<i32>(10404i, var_0.x, u_input.b.x, u_input.b.x), vec4<i32>(var_0.x, u_input.b.x, var_0.x, u_input.b.x)), u_input.b.x), vec4<i32>(firstLeadingBit(u_input.b.x), _wgslsmith_dot_vec4_i32(vec4<i32>(0i, -1i, u_input.b.x, 6773i), vec4<i32>(-1i, var_0.x, -2147483647i, 16378i)), u_input.b.x, var_0.x))));
    var_1 = vec4<i32>(-1i) * -vec4<i32>(_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(var_0, vec3<i32>(-2147483647i, var_1.x, -6301i)), u_input.b.x), 536i, ~_wgslsmith_mult_i32(-485i, var_1.x), -_wgslsmith_div_i32(53247i, -5867i));
    var var_2 = _wgslsmith_mod_vec3_u32(~u_input.a, vec3<u32>(~(~u_input.a.x) >> (abs(firstLeadingBit(1u)) % 32u), u_input.a.x, ~(max(u_input.a.x, 0u) >> (_wgslsmith_clamp_u32(1u, u_input.a.x, u_input.a.x) % 32u))));
    let var_3 = firstLeadingBit(~vec3<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 0u, var_2.x, var_2.x), vec4<u32>(u_input.a.x, 0u, var_2.x, u_input.a.x)), ~(~var_2.x), countOneBits(3153u)));
    return _wgslsmith_add_i32(abs(2147483647i), ~_wgslsmith_add_i32(_wgslsmith_mod_i32(-12823i, var_0.x), _wgslsmith_add_i32(u_input.b.x, 1i)) >> ((_wgslsmith_clamp_u32(~4294967295u, 28869u, ~var_3.x) << (_wgslsmith_mult_u32(var_3.x, countOneBits(4294967295u)) % 32u)) % 32u));
}

fn func_2() -> Struct_3 {
    let var_0 = Struct_5(~(_wgslsmith_div_u32(_wgslsmith_sub_u32(u_input.a.x, 5533u), u_input.a.x) ^ 4294967295u), select(select(vec2<bool>(true, true), vec2<bool>(2947u <= u_input.a.x, true), select(true, false, true)), select(select(vec2<bool>(false, false), select(vec2<bool>(true, false), vec2<bool>(false, true), true), select(vec2<bool>(true, false), vec2<bool>(true, true), true)), select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), false)), !select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false))), select(vec2<bool>(27054u < u_input.a.x, false), vec2<bool>(false, select(false, false, true)), true)), ~((-u_input.b ^ firstTrailingBit(vec3<i32>(5450i, 0i, -36224i))) << (~(u_input.a ^ u_input.a) % vec3<u32>(32u))), true, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(1263f, -821f), vec2<f32>(1108f, -416f)) - _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(313f, 1354f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(182f, 292f)))), false)));
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_0.e.x, var_0.e.x)) * _wgslsmith_f_op_f32(489f * 977f)) + -250f) + _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-754f)), _wgslsmith_div_f32(-719f, 1243f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.e.x + -193f)))));
    let var_2 = vec3<i32>(var_0.c.x, func_3(), 8534i);
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1000f)));
    var var_4 = _wgslsmith_div_f32(888f, var_1.x);
    return Struct_3(!(!(!(!vec3<bool>(var_0.d, var_0.d, var_0.b.x)))), vec2<f32>(_wgslsmith_f_op_f32(-var_3), var_0.e.x), Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1337f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(361f, var_1.x, 1424f) - vec3<f32>(-1383f, 693f, var_1.x))), vec4<bool>(var_0.d | false, true, false, u_input.a.x != var_0.a)), -firstTrailingBit(countOneBits(var_0.c)), Struct_1(1f, _wgslsmith_div_vec3_f32(vec3<f32>(1895f, var_3, var_3), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.e.x, 674f, var_3) + vec3<f32>(1582f, var_3, var_1.x))), vec4<bool>(var_0.b.x, false, false, false)), ~abs(~vec4<u32>(var_0.a, 76005u, u_input.a.x, 4294967295u))));
}

fn func_1(arg_0: vec3<i32>, arg_1: i32, arg_2: bool, arg_3: vec2<i32>) -> Struct_3 {
    let var_0 = arg_2;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(122f + -488f))), -514f))));
    let var_2 = func_2();
    var var_3 = vec3<bool>(arg_2 & all(vec4<bool>(!var_2.a.x, select(var_2.a.x, true, var_2.a.x), true, var_2.c.a.c.x && true)), var_2.c.a.c.x, all(vec2<bool>(false, arg_2)));
    var var_4 = _wgslsmith_div_f32(var_1, _wgslsmith_f_op_f32(-var_1));
    return func_2();
}

fn func_4(arg_0: Struct_3, arg_1: u32) -> u32 {
    var var_0 = true;
    var_0 = arg_0.c.a.c.x;
    var var_1 = vec3<u32>(_wgslsmith_sub_u32(1u, arg_0.c.d.x), 6123u, arg_0.c.d.x);
    var var_2 = _wgslsmith_add_u32(~_wgslsmith_mult_u32(~_wgslsmith_dot_vec4_u32(arg_0.c.d, arg_0.c.d), _wgslsmith_mod_u32(~1u, ~46553u)), var_1.x);
    var var_3 = 45759i;
    return var_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~abs(func_4(func_1(vec3<i32>(19742i, -2147483647i, 13559i), 2147483647i, false, u_input.b.zz), 1u)) >= ~min(_wgslsmith_add_u32(u_input.a.x ^ u_input.a.x, func_1(vec3<i32>(u_input.b.x, 0i, u_input.b.x), -21850i, false, u_input.b.xy).c.d.x), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 0u, 0u), u_input.a) & 0u);
    var var_1 = _wgslsmith_f_op_f32(floor(func_1(min(u_input.b, u_input.b), -(~1i), true, u_input.b.zy ^ (u_input.b.zx | u_input.b.xz)).c.a.a));
    var var_2 = any(vec3<bool>(any(select(vec3<bool>(false, var_0, var_0), select(vec3<bool>(true, var_0, var_0), vec3<bool>(var_0, true, true), vec3<bool>(var_0, true, true)), func_2().c.c.c.zzx)), var_0, all(func_1(vec3<i32>(2147483647i, u_input.b.x, u_input.b.x), ~u_input.b.x, true, select(vec2<i32>(5464i, u_input.b.x), u_input.b.yy, true)).c.a.c)));
    var var_3 = func_2();
    var var_4 = 8883u;
    var_2 = false;
    var_2 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(var_3.c.b.x | func_1(min(vec3<i32>(2147483647i, 48359i, var_3.c.b.x), vec3<i32>(var_3.c.b.x, 3490i, u_input.b.x)) | -vec3<i32>(var_3.c.b.x, 2464i, 22130i), func_3(), !(var_0 | var_3.a.x), ~firstTrailingBit(var_3.c.b.xx)).c.b.x, (_wgslsmith_add_u32(~u_input.a.x, u_input.a.x) & countOneBits(_wgslsmith_mult_u32(1u, 4294967295u))) & func_1(firstTrailingBit(~var_3.c.b), -32891i, false, vec2<i32>(-2147483647i ^ u_input.b.x, var_3.c.b.x)).c.d.x, _wgslsmith_mod_u32(var_3.c.d.x, ~(~(~var_3.c.d.x))), 582f, firstTrailingBit(~_wgslsmith_add_vec4_u32(~var_3.c.d, vec4<u32>(66126u, var_3.c.d.x, 4294967295u, var_3.c.d.x))));
}

