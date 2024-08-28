struct Struct_1 {
    a: f32,
    b: f32,
    c: u32,
    d: vec4<i32>,
}

struct Struct_2 {
    a: i32,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec3<i32>,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3() -> vec2<bool> {
    let var_0 = Struct_2(2147483647i, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(1315f, -1262f), _wgslsmith_f_op_f32(sign(-293f)))), -853f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -998f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-513f - _wgslsmith_div_f32(1000f, -1000f)) + _wgslsmith_f_op_f32(round(1f)))));
    let var_1 = select(vec3<bool>(!any(select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), true)), true, all(select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(false, false, true)), false))), select(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), select(true, true, true)), !select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false)), false), any(vec2<bool>(true, true)));
    var var_2 = Struct_1(240f, -1576f, 48022u, u_input.d);
    var var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-982f, var_2.a), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.b, 1000f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-2153f, var_2.a))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.b, 1139f)))) * _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1081f), _wgslsmith_div_f32(1250f, 1603f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.b.yw)))));
    var_3 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(683f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.b - var_2.b))), _wgslsmith_f_op_f32(var_2.b * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_3.x), _wgslsmith_div_f32(1064f, var_3.x)))) * vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-347f * 658f), _wgslsmith_f_op_f32(-var_0.b.x))))), _wgslsmith_f_op_f32(floor(-827f))));
    return vec2<bool>(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(var_2.c, var_2.c, var_2.c), vec3<u32>(var_2.c, 40949u, 54302u)) ^ (vec3<u32>(var_2.c, var_2.c, 1u) ^ vec3<u32>(6285u, var_2.c, var_2.c)), vec3<u32>(var_2.c, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, var_2.c), vec2<u32>(var_2.c, 0u)), 1u)) >= ~(~4294967295u), all(select(select(vec4<bool>(false, false, false, var_1.x), select(vec4<bool>(false, var_1.x, false, false), vec4<bool>(var_1.x, false, false, var_1.x), var_1.x), select(vec4<bool>(var_1.x, false, var_1.x, var_1.x), vec4<bool>(true, false, var_1.x, true), var_1.x)), vec4<bool>(true, true, true, var_1.x & var_1.x), true)));
}

fn func_2(arg_0: Struct_2, arg_1: vec2<f32>) -> vec3<bool> {
    var var_0 = _wgslsmith_sub_i32(arg_0.a, arg_0.a);
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(arg_0.b.wz, arg_0.b.ww, true)));
    var var_2 = select(vec2<bool>(any(vec4<bool>(u_input.e == u_input.a, true, true, false)), !any(func_3())), !vec2<bool>(all(vec2<bool>(true, true)), true), true);
    let var_3 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.b.x - var_1.x) * arg_0.b.x) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_1.x)) + 1000f) + 337f)), _wgslsmith_f_op_f32(-arg_1.x)));
    var_0 = 9718i;
    return !select(!vec3<bool>(!var_2.x, true, var_2.x), vec3<bool>(_wgslsmith_f_op_f32(arg_0.b.x - -221f) >= 741f, !(!var_2.x), !all(vec3<bool>(var_2.x, var_2.x, var_2.x))), !(!(!vec3<bool>(var_2.x, var_2.x, false))));
}

fn func_1(arg_0: u32, arg_1: vec3<u32>, arg_2: vec4<f32>, arg_3: Struct_1) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(arg_2.x)))), 282f))) * 1222f);
    var var_1 = (all(vec2<bool>(any(vec2<bool>(true, true)), true)) && !any(func_2(Struct_2(arg_3.d.x, vec4<f32>(1506f, arg_2.x, -627f, -662f)), arg_2.xz))) && false;
    let var_2 = arg_3;
    var_1 = false;
    var_1 = true;
    return var_2.d.x << (83450u % 32u);
}

fn func_4(arg_0: vec4<i32>, arg_1: vec4<i32>, arg_2: Struct_1) -> Struct_2 {
    let var_0 = _wgslsmith_mod_vec3_i32(firstLeadingBit(arg_2.d.yzz), (-firstLeadingBit(vec3<i32>(2147483647i, arg_0.x, 2147483647i)) << (vec3<u32>(abs(arg_2.c), ~arg_2.c, 17342u) % vec3<u32>(32u))) & ((_wgslsmith_div_vec3_i32(arg_1.xwx, arg_2.d.zyx) >> (select(vec3<u32>(93880u, arg_2.c, arg_2.c), vec3<u32>(35292u, arg_2.c, arg_2.c), vec3<bool>(true, false, true)) % vec3<u32>(32u))) >> (vec3<u32>(1u, reverseBits(arg_2.c), ~4294967295u) % vec3<u32>(32u))));
    let var_1 = Struct_2(-2147483647i, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(397f, arg_2.a)) + arg_2.b)), arg_2.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -303f)), _wgslsmith_f_op_f32(trunc(arg_2.b))));
    let var_2 = select(!select(!select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false)), select(select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true), false), vec4<bool>(true, true, true, true), any(vec2<bool>(true, true))), vec4<bool>(func_3().x, true, true, select(false, true, true))), select(vec4<bool>(false, select(false, all(vec2<bool>(true, false)), true), func_2(var_1, vec2<f32>(arg_2.b, -813f)).x || true, func_1(arg_2.c, vec3<u32>(52384u, 91458u, 20159u), var_1.b, arg_2) > 2147483647i), !select(select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, false)), select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, false)), false), !(!select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false)))), all(vec3<bool>(all(select(vec2<bool>(true, false), vec2<bool>(true, false), false)), _wgslsmith_dot_vec3_i32(var_0, vec3<i32>(-67989i, -88i, arg_1.x)) >= var_0.x, true)));
    var var_3 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.a) - _wgslsmith_f_op_f32(floor(arg_2.a))), _wgslsmith_f_op_f32(exp2(var_1.b.x))), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(sign(var_1.b.x)), -899f), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-245f, var_1.b.x)))))))));
    var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(124f, _wgslsmith_f_op_f32(trunc(-973f))), vec2<f32>(arg_2.b, _wgslsmith_f_op_f32(ceil(arg_2.b))))));
    return Struct_2(-max(2147483647i, -29354i ^ var_1.a), _wgslsmith_f_op_vec4_f32(var_1.b * var_1.b));
}

fn func_5(arg_0: u32, arg_1: Struct_2) -> Struct_2 {
    let var_0 = Struct_2(u_input.b.x, arg_1.b);
    var var_1 = !(!select(vec2<bool>(true, func_3().x), !select(vec2<bool>(false, true), vec2<bool>(false, true), false), func_2(var_0, vec2<f32>(var_0.b.x, var_0.b.x)).x));
    var_1 = select(select(!select(!vec2<bool>(var_1.x, var_1.x), vec2<bool>(true, false), var_1.x), vec2<bool>(false, all(!vec3<bool>(var_1.x, var_1.x, false))), true & !(true || var_1.x)), func_2(var_0, var_0.b.xx).yx, func_3());
    var_1 = select(select(!(!(!vec2<bool>(false, var_1.x))), vec2<bool>(func_3().x, all(!vec3<bool>(var_1.x, var_1.x, var_1.x))), !var_1.x), vec2<bool>(true, var_1.x), !var_1.x);
    let var_2 = vec3<bool>(_wgslsmith_f_op_f32(-arg_1.b.x) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_1.b.x)))), false, all(!(!select(vec4<bool>(true, false, false, false), vec4<bool>(false, var_1.x, true, var_1.x), var_1.x))));
    return Struct_2(min(countOneBits(arg_1.a), -50173i) & -func_1(~arg_0, reverseBits(vec3<u32>(arg_0, 0u, 15475u)), _wgslsmith_f_op_vec4_f32(-var_0.b), Struct_1(1131f, -292f, arg_0, vec4<i32>(97393i, 0i, -52251i, arg_1.a))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-1515f - _wgslsmith_f_op_f32(-arg_1.b.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(arg_1.b.x, 816f)), _wgslsmith_f_op_f32(exp2(arg_1.b.x))), arg_1.b.x, var_0.b.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(_wgslsmith_sub_u32(5633u & _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 57867u, 1u), vec3<u32>(14755u, 0u, 22602u)), _wgslsmith_sub_u32(36472u, 1u), 1u), ~79697u), func_4(reverseBits(vec4<i32>(func_1(45131u, vec3<u32>(2501u, 1u, 42990u), vec4<f32>(-1828f, 636f, -1000f, -1000f), Struct_1(1498f, -933f, 4294967295u, u_input.d)), -19572i, u_input.e, max(-6317i, 1i))), _wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.d.x, 8090i, -2147483647i, u_input.a), _wgslsmith_clamp_vec4_i32(u_input.d, vec4<i32>(82709i, u_input.c.x, u_input.b.x, 19259i), u_input.d)), vec4<i32>(_wgslsmith_clamp_i32(u_input.a, u_input.e, 2147483647i), reverseBits(u_input.a), u_input.c.x, -1i)), Struct_1(1501f, -920f, _wgslsmith_div_u32(~15414u, _wgslsmith_clamp_u32(63082u, 4294967295u, 99194u)), _wgslsmith_add_vec4_i32(select(vec4<i32>(u_input.e, u_input.e, -1i, u_input.d.x), u_input.d, false), _wgslsmith_div_vec4_i32(vec4<i32>(9107i, -3322i, u_input.e, 1i), u_input.d)))));
    let var_1 = vec4<f32>(1133f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(116f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.x - var_0.b.x))) - var_0.b.x), 406f, var_0.b.x);
    var var_2 = !(!vec3<bool>(true, func_3().x, true));
    var var_3 = func_4(vec4<i32>(u_input.e, _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(min(u_input.d, vec4<i32>(var_0.a, u_input.a, 7360i, u_input.b.x)), -vec4<i32>(13668i, u_input.c.x, u_input.b.x, -10524i)), reverseBits(~vec4<i32>(0i, -48434i, var_0.a, u_input.c.x))), _wgslsmith_dot_vec3_i32(vec3<i32>(~46509i, u_input.c.x & var_0.a, ~var_0.a), min(vec3<i32>(0i, -1i, u_input.e), reverseBits(u_input.c))), firstLeadingBit(u_input.d.x)), ~vec4<i32>(-8491i & ~var_0.a, u_input.c.x, 1i, u_input.e), Struct_1(-1323f, _wgslsmith_f_op_f32(ceil(1644f)), 33615u, -u_input.d));
    var_2 = select(!(!vec3<bool>(any(vec4<bool>(true, false, false, true)), all(vec2<bool>(var_2.x, true)), true)), vec3<bool>(all(select(select(vec4<bool>(true, var_2.x, var_2.x, true), vec4<bool>(true, var_2.x, var_2.x, var_2.x), var_2.x), !vec4<bool>(false, var_2.x, var_2.x, true), false && var_2.x)), any(!(!vec3<bool>(false, var_2.x, false))), var_1.x != _wgslsmith_f_op_f32(287f + var_3.b.x)), true);
    var_2 = !(!vec3<bool>(var_2.x, !all(vec4<bool>(false, var_2.x, true, true)), true));
    var var_4 = func_4(u_input.d, _wgslsmith_mod_vec4_i32(select(u_input.d >> (vec4<u32>(9389u, 11811u, 0u, 118200u) % vec4<u32>(32u)), min(~u_input.d, min(u_input.d, vec4<i32>(2147483647i, -2147483647i, var_0.a, 6404i))), vec4<bool>(all(vec3<bool>(false, var_2.x, var_2.x)), func_3().x, var_2.x, true)), countOneBits(vec4<i32>(-1i) * -vec4<i32>(var_3.a, 2147483647i, var_3.a, var_3.a))), Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.b.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_1.x + 565f), _wgslsmith_div_f32(524f, var_3.b.x))))), _wgslsmith_f_op_f32(floor(574f)), ~_wgslsmith_dot_vec2_u32(vec2<u32>(55580u, 39785u), vec2<u32>(15716u, 54109u)) & _wgslsmith_mod_u32(~4294967295u, abs(58694u)), (vec4<i32>(var_3.a, -20660i, var_3.a, var_0.a) & u_input.d) << (~select(vec4<u32>(28478u, 0u, 4294967295u, 1u), vec4<u32>(0u, 13674u, 4294967295u, 23170u), vec4<bool>(var_2.x, true, var_2.x, false)) % vec4<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(0u, _wgslsmith_f_op_f32(select(-905f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(918f)), var_4.b.x)) * 189f), all(select(select(vec4<bool>(false, var_2.x, false, true), vec4<bool>(var_2.x, true, var_2.x, var_2.x), vec4<bool>(var_2.x, var_2.x, true, var_2.x)), select(vec4<bool>(var_2.x, var_2.x, var_2.x, true), vec4<bool>(true, true, false, true), false), vec4<bool>(true, var_2.x, false, true))))), var_0.a);
}

