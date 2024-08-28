struct Struct_1 {
    a: u32,
    b: vec3<bool>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec4<i32>,
    c: u32,
    d: vec3<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
}

struct Struct_4 {
    a: Struct_2,
    b: bool,
    c: Struct_3,
    d: bool,
}

struct Struct_5 {
    a: Struct_4,
    b: vec3<i32>,
    c: Struct_1,
    d: Struct_4,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: i32,
    e: vec2<u32>,
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

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_5, arg_1: Struct_3) -> bool {
    var var_0 = u_input.d;
    let var_1 = Struct_1(u_input.c, select(!(!arg_1.a.d), select(!arg_0.d.c.a.d, arg_1.a.d, !all(vec2<bool>(arg_0.c.b.x, arg_1.a.d.x))), true));
    var var_2 = Struct_2(select(!(!vec3<bool>(true, var_1.b.x, false)), vec3<bool>(false, arg_1.a.d.x, var_1.b.x), !vec3<bool>(!arg_1.a.d.x, select(arg_1.a.a.x, arg_0.c.b.x, arg_1.a.a.x), arg_0.a.a.a.x)), vec4<i32>(_wgslsmith_clamp_i32(~(-27073i), 19595i, -_wgslsmith_dot_vec3_i32(arg_1.a.b.yzx, arg_0.d.a.b.xyx)), -2147483647i, arg_0.a.c.a.b.x, -1i), var_1.a, !arg_0.d.a.d);
    return select(arg_1.a.d.x, true, !var_2.d.x);
}

fn func_2() -> vec2<i32> {
    var var_0 = !select(vec4<bool>(true, true, true, true), vec4<bool>(true, !any(vec3<bool>(true, true, false)), true, max(u_input.d, -1i) > _wgslsmith_dot_vec4_i32(vec4<i32>(-14715i, 29650i, -1i, 55282i), vec4<i32>(-2147483647i, u_input.a, 4427i, u_input.d))), false);
    var var_1 = Struct_4(Struct_2(vec3<bool>(var_0.x, true, var_0.x), _wgslsmith_mult_vec4_i32(firstLeadingBit(vec4<i32>(u_input.a, u_input.a, 1i, 0i)), -vec4<i32>(-26787i, u_input.d, 0i, -2697i)) << ((min(vec4<u32>(1u, 3656u, u_input.c, u_input.b), vec4<u32>(u_input.c, 1u, 4294967295u, u_input.e.x)) << (vec4<u32>(44551u, u_input.e.x, u_input.c, u_input.e.x) % vec4<u32>(32u))) % vec4<u32>(32u)), ~19432u, select(vec3<bool>(var_0.x, !var_0.x, var_0.x), select(select(var_0.wyw, vec3<bool>(var_0.x, true, var_0.x), false), vec3<bool>(false, true, true), !var_0.wxz), var_0.yzz)), all(select(var_0.zx, vec2<bool>(true, u_input.e.x < 0u), select(vec2<bool>(var_0.x, false), vec2<bool>(var_0.x, var_0.x), !var_0.zw))), Struct_3(Struct_2(vec3<bool>(!var_0.x, true, select(var_0.x, true, false)), reverseBits(_wgslsmith_add_vec4_i32(vec4<i32>(56377i, -18999i, u_input.a, 0i), vec4<i32>(u_input.d, -9096i, u_input.a, u_input.d))), reverseBits(_wgslsmith_sub_u32(77754u, u_input.e.x)), vec3<bool>(func_3(Struct_5(Struct_4(Struct_2(vec3<bool>(var_0.x, var_0.x, false), vec4<i32>(-36702i, u_input.a, 24193i, u_input.d), 60936u, vec3<bool>(var_0.x, false, var_0.x)), true, Struct_3(Struct_2(var_0.yyz, vec4<i32>(u_input.d, u_input.a, -622i, u_input.d), 14489u, vec3<bool>(var_0.x, false, false)), 640f), true), vec3<i32>(-39962i, u_input.a, 1i), Struct_1(u_input.e.x, var_0.zxw), Struct_4(Struct_2(vec3<bool>(true, var_0.x, true), vec4<i32>(u_input.a, u_input.d, 0i, 17729i), 2300u, vec3<bool>(var_0.x, false, false)), true, Struct_3(Struct_2(var_0.xww, vec4<i32>(u_input.a, 2147483647i, 0i, u_input.a), u_input.e.x, vec3<bool>(false, true, false)), 843f), var_0.x)), Struct_3(Struct_2(var_0.zzw, vec4<i32>(u_input.a, 18350i, u_input.a, -8042i), 29120u, var_0.ywz), 559f)), var_0.x, false)), -485f), var_0.x);
    var var_2 = _wgslsmith_sub_vec2_i32(select(~(-var_1.c.a.b.yw), ~vec2<i32>(abs(u_input.a), ~1i), !vec2<bool>(false, var_1.d)), vec2<i32>(abs(_wgslsmith_mod_i32(~61477i, i32(-1i) * -70879i)), -1i));
    let var_3 = Struct_2(var_1.c.a.a, reverseBits(vec4<i32>(var_2.x, 2147483647i, _wgslsmith_sub_i32(~u_input.a, ~var_2.x), countOneBits(var_2.x))), ~var_1.c.a.c, vec3<bool>(false, true, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d, u_input.a, -13698i, u_input.a), firstTrailingBit(vec4<i32>(-2147483647i, -54050i, 15516i, var_1.c.a.b.x))) < -var_2.x));
    var var_4 = Struct_3(Struct_2(!var_1.c.a.a, _wgslsmith_div_vec4_i32(max(-var_1.c.a.b, -vec4<i32>(0i, u_input.a, -42548i, -2147483647i)), firstLeadingBit(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_1.c.a.b.x, -1i, var_3.b.x, var_1.c.a.b.x), var_3.b, vec4<i32>(35308i, -1i, u_input.d, -30870i)))), ~(~max(var_3.c, u_input.e.x)), var_1.a.d), -488f);
    return -(vec2<i32>(-reverseBits(-42105i), -1i) & countOneBits(vec2<i32>(1i, -var_2.x)));
}

fn func_4(arg_0: vec2<i32>, arg_1: u32, arg_2: Struct_5, arg_3: vec2<f32>) -> vec3<bool> {
    var var_0 = arg_2.d.d;
    var var_1 = arg_2.a;
    var_1 = arg_2.d;
    let var_2 = 60771u;
    let var_3 = any(arg_2.a.a.a);
    return vec3<bool>(any(!(!(!vec4<bool>(var_1.d, var_1.b, arg_2.d.d, arg_2.c.b.x)))), all(vec3<bool>(any(select(arg_2.d.a.a.zx, vec2<bool>(false, false), var_1.c.a.a.x)), var_1.c.a.d.x, arg_2.c.b.x)), arg_2.c.b.x);
}

fn func_1() -> f32 {
    let var_0 = Struct_5(Struct_4(Struct_2(func_4(func_2(), u_input.b, Struct_5(Struct_4(Struct_2(vec3<bool>(true, true, false), vec4<i32>(u_input.d, u_input.a, 77465i, 0i), 8012u, vec3<bool>(false, true, false)), false, Struct_3(Struct_2(vec3<bool>(false, true, false), vec4<i32>(u_input.d, -1i, u_input.d, u_input.a), 1u, vec3<bool>(false, true, false)), 1641f), true), vec3<i32>(u_input.a, 8040i, u_input.a), Struct_1(6579u, vec3<bool>(true, false, false)), Struct_4(Struct_2(vec3<bool>(false, true, false), vec4<i32>(u_input.a, -2147483647i, u_input.a, u_input.d), 0u, vec3<bool>(false, true, false)), false, Struct_3(Struct_2(vec3<bool>(false, false, false), vec4<i32>(1i, u_input.d, 42489i, u_input.a), 0u, vec3<bool>(true, false, false)), -1283f), true)), _wgslsmith_div_vec2_f32(vec2<f32>(1898f, -203f), vec2<f32>(-1000f, -295f))), ~(-vec4<i32>(-2147483647i, u_input.d, u_input.d, -1i)), 4663u, select(select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), true), vec3<bool>(false, false, false), vec3<bool>(true, true, true))), true, Struct_3(Struct_2(vec3<bool>(false, true, true), vec4<i32>(-4566i, 2147483647i, 10242i, u_input.d), u_input.c, vec3<bool>(false, false, true)), _wgslsmith_f_op_f32(-345f + _wgslsmith_f_op_f32(floor(962f)))), true), vec3<i32>(39507i, _wgslsmith_div_i32(0i << (_wgslsmith_mult_u32(1281u, u_input.b) % 32u), -2147483647i), -13539i | ((u_input.d << (1u % 32u)) >> ((4294967295u | u_input.e.x) % 32u))), Struct_1(1u, select(vec3<bool>(false, true, all(vec4<bool>(true, false, false, false))), !select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(false, true, true)), vec3<bool>(true, all(vec3<bool>(true, false, false)), true))), Struct_4(Struct_2(func_4(vec2<i32>(u_input.d, u_input.a) ^ vec2<i32>(u_input.a, -38550i), 1u, Struct_5(Struct_4(Struct_2(vec3<bool>(true, true, true), vec4<i32>(-42732i, u_input.d, -1i, 40405i), u_input.e.x, vec3<bool>(false, true, false)), false, Struct_3(Struct_2(vec3<bool>(false, false, true), vec4<i32>(u_input.d, u_input.a, u_input.a, u_input.d), 0u, vec3<bool>(true, true, false)), 1087f), true), vec3<i32>(u_input.a, 28730i, u_input.a), Struct_1(78460u, vec3<bool>(false, true, false)), Struct_4(Struct_2(vec3<bool>(false, false, true), vec4<i32>(u_input.d, 1i, u_input.d, 44923i), 0u, vec3<bool>(true, true, false)), true, Struct_3(Struct_2(vec3<bool>(true, true, true), vec4<i32>(u_input.a, u_input.a, u_input.a, 41784i), u_input.c, vec3<bool>(false, false, true)), -1423f), true)), vec2<f32>(1000f, 1437f)), _wgslsmith_clamp_vec4_i32(~vec4<i32>(11628i, u_input.d, 0i, 32847i), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.d, 2147483647i, u_input.d, -46783i), vec4<i32>(1i, u_input.a, 1i, u_input.a)), vec4<i32>(1i, u_input.a, 0i, u_input.a)), u_input.e.x, vec3<bool>(true, true, true)), any(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true))), Struct_3(Struct_2(vec3<bool>(true, true, true), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, u_input.d, 1i, -1i), vec4<i32>(u_input.a, -1i, 31699i, 40251i)), max(10133u, u_input.e.x), vec3<bool>(false, true, true)), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-975f, 2775f), _wgslsmith_f_op_f32(abs(-1256f)), true))), func_3(Struct_5(Struct_4(Struct_2(vec3<bool>(false, true, true), vec4<i32>(u_input.d, -21587i, u_input.a, u_input.d), 4294967295u, vec3<bool>(false, false, true)), false, Struct_3(Struct_2(vec3<bool>(true, false, true), vec4<i32>(u_input.d, u_input.d, 24237i, u_input.d), 44944u, vec3<bool>(true, false, true)), -540f), true), -vec3<i32>(2147483647i, u_input.d, u_input.d), Struct_1(4294967295u, vec3<bool>(false, false, false)), Struct_4(Struct_2(vec3<bool>(true, true, true), vec4<i32>(-1i, u_input.d, 0i, u_input.d), 1u, vec3<bool>(true, true, true)), true, Struct_3(Struct_2(vec3<bool>(true, true, false), vec4<i32>(-2147483647i, u_input.d, u_input.a, 16635i), 1u, vec3<bool>(false, false, false)), 1032f), false)), Struct_3(Struct_2(vec3<bool>(true, false, true), vec4<i32>(u_input.a, -1i, u_input.d, u_input.d), u_input.e.x, vec3<bool>(false, true, true)), _wgslsmith_div_f32(-1823f, -421f)))));
    let var_1 = _wgslsmith_add_u32(u_input.b >> (_wgslsmith_add_u32(~u_input.c, var_0.a.c.a.c) % 32u), _wgslsmith_mod_u32(_wgslsmith_div_u32(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, var_0.d.a.c, u_input.b), vec3<u32>(0u, 4294967295u, 19277u))), ~1u) ^ 39453u);
    let var_2 = ~select(661u, _wgslsmith_mod_u32(firstTrailingBit(u_input.b), ~(~var_0.c.a)), ~var_0.d.a.b.x != 47910i);
    var var_3 = vec3<u32>(abs(_wgslsmith_dot_vec2_u32(u_input.e, ~u_input.e)), ~(4294967295u | ~_wgslsmith_dot_vec2_u32(vec2<u32>(var_2, var_2), vec2<u32>(15493u, 6286u))), abs(_wgslsmith_dot_vec3_u32(abs(_wgslsmith_mod_vec3_u32(vec3<u32>(43673u, var_2, 21740u), vec3<u32>(var_1, var_0.a.c.a.c, 22918u))), select(vec3<u32>(var_2, 0u, 1u), vec3<u32>(var_1, 4294967295u, 4294967295u), vec3<bool>(false, false, var_0.a.b)) ^ vec3<u32>(var_0.c.a, 1u, 7824u))));
    var_3 = _wgslsmith_add_vec3_u32(min(~vec3<u32>(var_3.x, 14386u, var_2), min(vec3<u32>(40642u, var_1, 0u), vec3<u32>(89987u, var_0.c.a, 0u))) << ((~vec3<u32>(53171u, var_0.a.a.c, var_3.x) ^ (vec3<u32>(4294967295u, var_0.c.a, 0u) << (vec3<u32>(15637u, var_3.x, var_3.x) % vec3<u32>(32u)))) % vec3<u32>(32u)), ~vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(64171u, 37472u, var_2), vec3<u32>(u_input.b, 2213u, 106341u)), ~var_0.a.a.c, ~u_input.c)) << (~(~abs(~vec3<u32>(var_0.c.a, var_2, var_2))) % vec3<u32>(32u));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(var_0.d.c.b, -1000f)), 555f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 743f;
    var var_1 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-401f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1649f - -526f))) - _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(2828f, 893f) - vec2<f32>(-1000f, 429f)))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(837f, 709f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1317f + 929f), _wgslsmith_f_op_f32(sign(1000f))))), !(!(!select(vec2<bool>(true, true), vec2<bool>(false, true), true)))));
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) - -1298f));
    var_2 = var_1.x;
    var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-104f, var_1.x))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, 1000f)), vec2<bool>(true, true))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1205f, 1448f)))));
    var_2 = 1158f;
    let var_3 = _wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(~vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.e.x, 0u), u_input.e), ~u_input.b, 92498u, 8955u), max(abs(abs(vec4<u32>(u_input.c, u_input.b, 38795u, u_input.e.x))), ~vec4<u32>(u_input.c, u_input.e.x, u_input.c, 55583u) >> (vec4<u32>(1u, u_input.c, u_input.c, 113708u) % vec4<u32>(32u)))), ~_wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.e.x, 0u, u_input.e.x, 1u), vec4<u32>(4294967295u, 0u, 1u, 24342u)), ~vec4<u32>(11493u, u_input.e.x, u_input.e.x, 2665u)), _wgslsmith_mult_vec4_u32(min(vec4<u32>(u_input.e.x, 0u, u_input.c, 4294967295u), vec4<u32>(4294967295u, 25150u, u_input.c, u_input.e.x)), vec4<u32>(u_input.b, u_input.c, 0u, u_input.b)), ~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, 1u, u_input.e.x, 4294967295u), vec4<u32>(u_input.c, u_input.e.x, u_input.c, 1u))), ~select(vec4<u32>(max(u_input.e.x, u_input.e.x), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 1u, u_input.b, u_input.e.x), vec4<u32>(50971u, 1u, u_input.e.x, u_input.e.x)), 1u, _wgslsmith_add_u32(8146u, u_input.b)), abs(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c, u_input.c, u_input.e.x, 4294967295u), vec4<u32>(77766u, 10481u, u_input.b, u_input.b))), true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_u32(~firstTrailingBit(45857u), 41651u << (~_wgslsmith_mod_u32(var_3.x, 29970u) % 32u)));
}

