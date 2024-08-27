struct Struct_1 {
    a: i32,
    b: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: u32,
    d: vec4<u32>,
    e: vec2<f32>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_2,
    c: vec2<f32>,
    d: Struct_1,
    e: f32,
}

struct Struct_4 {
    a: bool,
    b: vec3<i32>,
}

struct Struct_5 {
    a: Struct_3,
    b: f32,
    c: Struct_4,
    d: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec4<f32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3() -> vec3<bool> {
    var var_0 = u_input.b >> (u_input.c % 32u);
    var var_1 = -268f;
    let var_2 = select(vec3<bool>(any(select(select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true)), vec3<bool>(false, false, true), 31598u < u_input.c)), true, true), select(vec3<bool>(all(vec4<bool>(true, false, true, true)) && true, any(vec3<bool>(true, true, true)), true), vec3<bool>(true, true, true), select(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), !select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false)), all(vec4<bool>(true, true, true, false)))), !vec3<bool>(false, all(vec2<bool>(true, true)) | true, true));
    var var_3 = any(!var_2.yx);
    var_3 = var_2.x;
    return var_2;
}

fn func_2(arg_0: f32) -> Struct_3 {
    var var_0 = arg_0;
    var_0 = arg_0;
    let var_1 = func_3();
    let var_2 = vec3<i32>(u_input.b << (4294967295u % 32u), select(-select(0i, 0i, u_input.c < u_input.c), _wgslsmith_mult_i32(u_input.a, -u_input.b), !var_1.x), _wgslsmith_sub_i32(19730i, firstLeadingBit(u_input.b)));
    var_0 = _wgslsmith_f_op_f32(select(arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -228f)))), !all(vec2<bool>(any(vec4<bool>(false, false, true, var_1.x)), false))));
    return Struct_3(abs(countOneBits(vec3<i32>(-92153i, min(-2147483647i, u_input.b), 21928i))), Struct_2(Struct_1(~1i, vec3<u32>(u_input.c << (u_input.c % 32u), 1u, select(u_input.c, u_input.c, true))), var_1.yz, u_input.c, _wgslsmith_clamp_vec4_u32(~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.c, 1u, 0u, 92291u), vec4<u32>(u_input.c, 1u, u_input.c, 4294967295u)), vec4<u32>(~0u, u_input.c >> (u_input.c % 32u), _wgslsmith_div_u32(1u, u_input.c), 4294967295u), vec4<u32>(u_input.c, u_input.c, 4294967295u << (u_input.c % 32u), u_input.c)), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_0)) * _wgslsmith_f_op_f32(f32(-1f) * -1172f)), -121f)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1000f, arg_0))), -578f), Struct_1(_wgslsmith_dot_vec4_i32(select(min(vec4<i32>(u_input.b, u_input.a, 22064i, 27069i), vec4<i32>(-32670i, 10597i, 0i, -105566i)), ~vec4<i32>(-1i, 0i, 27724i, u_input.a), select(vec4<bool>(true, var_1.x, true, var_1.x), vec4<bool>(var_1.x, true, var_1.x, var_1.x), vec4<bool>(var_1.x, true, var_1.x, true))), _wgslsmith_mod_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(-31299i, 19185i, u_input.b, -1i), vec4<i32>(var_2.x, -1i, u_input.a, var_2.x), vec4<i32>(2147483647i, -2147483647i, var_2.x, var_2.x)), vec4<i32>(u_input.b, u_input.a, var_2.x, var_2.x) << (vec4<u32>(0u, u_input.c, u_input.c, 0u) % vec4<u32>(32u)))), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.c, u_input.c, 9304u) | min(vec3<u32>(u_input.c, u_input.c, 0u), vec3<u32>(u_input.c, u_input.c, u_input.c)), vec3<u32>(min(u_input.c, u_input.c), 1u, u_input.c), vec3<u32>(u_input.c, u_input.c, 24350u) >> (vec3<u32>(u_input.c, u_input.c, 53041u) % vec3<u32>(32u)))), _wgslsmith_f_op_f32(-arg_0));
}

fn func_4(arg_0: f32, arg_1: f32, arg_2: Struct_5) -> vec4<i32> {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(585f - -1264f) - -466f);
    var var_1 = arg_2.d.a.b;
    let var_2 = vec4<bool>(all(func_3()), all(vec4<bool>(arg_2.d.b.x, select(arg_2.c.a, true, arg_2.d.b.x), any(select(vec3<bool>(arg_2.d.b.x, true, false), vec3<bool>(false, arg_2.c.a, true), vec3<bool>(arg_2.a.b.b.x, false, true))), (false && arg_2.a.b.b.x) && true)), arg_2.c.a, arg_2.d.a.b.x > _wgslsmith_dot_vec3_u32(arg_2.a.d.b, ~(~arg_2.d.a.b)));
    var var_3 = arg_2;
    var_1 = max(_wgslsmith_sub_vec3_u32(var_3.a.d.b, vec3<u32>(u_input.c, func_2(_wgslsmith_f_op_f32(-arg_2.a.e)).b.c, ~(~1126u))), arg_2.a.d.b);
    return vec4<i32>(min(60822i << (_wgslsmith_dot_vec3_u32(vec3<u32>(var_1.x, u_input.c, 4294967295u) & vec3<u32>(24037u, arg_2.d.c, 0u), ~vec3<u32>(1u, var_3.d.d.x, arg_2.d.d.x)) % 32u), min(arg_2.d.a.a, 2147483647i)), ~abs(_wgslsmith_clamp_i32(i32(-1i) * -991i, firstLeadingBit(u_input.b), -7642i)), 3518i, _wgslsmith_mod_i32(-_wgslsmith_div_i32(-23225i, arg_2.a.b.a.a), arg_2.d.a.a));
}

fn func_1() -> f32 {
    var var_0 = min(u_input.a, _wgslsmith_dot_vec4_i32(func_4(-1430f, 390f, Struct_5(func_2(-2064f), _wgslsmith_f_op_f32(667f + 494f), Struct_4(false, vec3<i32>(u_input.b, 0i, -10822i)), func_2(221f).b)), -vec4<i32>(_wgslsmith_add_i32(-1i, 17588i), 44535i, _wgslsmith_div_i32(28648i, u_input.b), u_input.a)));
    var var_1 = func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(-1536f)))) - 1000f)).b.a;
    var var_2 = vec2<f32>(576f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1248f, 1165f)))));
    let var_3 = Struct_3(vec3<i32>(~u_input.b, -2147483647i, ~u_input.b) ^ ((_wgslsmith_add_vec3_i32(vec3<i32>(u_input.a, u_input.b, -13989i), vec3<i32>(22252i, var_1.a, 76550i)) >> (abs(var_1.b) % vec3<u32>(32u))) >> (((var_1.b >> (var_1.b % vec3<u32>(32u))) >> (abs(vec3<u32>(4294967295u, 16910u, var_1.b.x)) % vec3<u32>(32u))) % vec3<u32>(32u))), func_2(-2036f).b, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-607f, var_2.x)), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.x, 1191f) - vec2<f32>(687f, var_2.x)), false)) - _wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_2.x, -363f), vec2<f32>(1341f, 543f)))), vec2<f32>(1000f, var_2.x)), Struct_1(-2147483647i, var_1.b), 177f);
    var var_4 = func_4(-2436f, var_3.b.e.x, Struct_5(Struct_3(-vec3<i32>(1i, var_1.a, -1i), var_3.b, _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(1300f, var_3.b.e.x))), Struct_1(var_1.a, var_3.b.d.wzy), _wgslsmith_f_op_f32(-256f - var_3.e)), var_3.c.x, Struct_4(false, var_3.a), var_3.b)).x | min(_wgslsmith_mod_i32(-65356i << (var_3.d.b.x % 32u), var_3.d.a), u_input.a);
    return _wgslsmith_f_op_f32(var_2.x + _wgslsmith_f_op_f32(-var_3.c.x));
}

fn func_5(arg_0: bool, arg_1: f32, arg_2: vec3<f32>) -> Struct_2 {
    var var_0 = Struct_4(all(!vec4<bool>(arg_0, u_input.c <= 34541u, true, arg_0)), select(func_2(-610f).a & -vec3<i32>(931i, 78740i, u_input.b), func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) - -1780f)).a, all(select(vec3<bool>(arg_0, true, true), select(vec3<bool>(arg_0, arg_0, arg_0), vec3<bool>(arg_0, arg_0, arg_0), false), false))));
    let var_1 = ~(firstLeadingBit(~vec2<u32>(u_input.c, u_input.c)) >> (_wgslsmith_sub_vec2_u32(reverseBits(vec2<u32>(u_input.c, u_input.c)), ~(~vec2<u32>(u_input.c, 0u))) % vec2<u32>(32u)));
    return Struct_2(Struct_1(func_4(arg_2.x, _wgslsmith_f_op_f32(-arg_2.x), Struct_5(func_2(arg_1), _wgslsmith_f_op_f32(select(arg_1, arg_2.x, var_0.a)), Struct_4(var_0.a, var_0.b), Struct_2(Struct_1(u_input.b, vec3<u32>(u_input.c, var_1.x, 4979u)), vec2<bool>(var_0.a, arg_0), 1u, vec4<u32>(u_input.c, u_input.c, var_1.x, u_input.c), arg_2.xy))).x, max(vec3<u32>(~var_1.x, var_1.x, 4294967295u), vec3<u32>(1u, var_1.x, u_input.c))), !select(vec2<bool>(true, any(vec4<bool>(false, false, var_0.a, var_0.a))), !select(vec2<bool>(var_0.a, true), vec2<bool>(true, arg_0), false), any(!vec2<bool>(var_0.a, var_0.a))), firstTrailingBit(_wgslsmith_mult_u32(max(4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.c), vec2<u32>(u_input.c, 4229u))), max(u_input.c, _wgslsmith_sub_u32(u_input.c, u_input.c)))), vec4<u32>(u_input.c, u_input.c, ~u_input.c, ~(~4294967295u)), vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1, 433f) + _wgslsmith_f_op_f32(-arg_1)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(494f + -2654f) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(arg_2.x, arg_1)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -(vec2<i32>(firstTrailingBit(_wgslsmith_sub_i32(u_input.b, 0i)), min(~4281i, ~(-72247i))) ^ ~(-_wgslsmith_mod_vec2_i32(vec2<i32>(-1i, u_input.a), vec2<i32>(u_input.a, u_input.a))));
    var var_1 = func_5(max(6438i, _wgslsmith_mod_i32(var_0.x, -2147483647i >> (u_input.c % 32u))) == -41354i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-198f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1()))) * -191f), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-154f, 783f, -807f), vec3<f32>(678f, -1086f, -408f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(950f, -203f, -615f)))))));
    let var_2 = any(!vec4<bool>(func_3().x, var_1.b.x, true, !(var_1.b.x | true)));
    let var_3 = (-func_2(_wgslsmith_f_op_f32(floor(var_1.e.x))).d.a ^ ~1i) >> (firstLeadingBit(0u) % 32u);
    var_1 = func_5(var_2, 1000f, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_1.e.x, -840f, var_1.e.x), vec3<f32>(644f, var_1.e.x, var_1.e.x))))))));
    var_1 = Struct_2(Struct_1(_wgslsmith_add_i32(-2147483647i, firstLeadingBit(2147483647i)), var_1.d.zxz), vec2<bool>(any(vec4<bool>(true, var_2, select(false, true, var_2), var_2)), !var_2), u_input.c, var_1.d, _wgslsmith_f_op_vec2_f32(vec2<f32>(503f, 179f) + _wgslsmith_f_op_vec2_f32(var_1.e * _wgslsmith_f_op_vec2_f32(-var_1.e))));
    var var_4 = !select(!func_3(), !vec3<bool>(all(vec3<bool>(false, var_1.b.x, true)), select(var_2, true, var_1.b.x), 1i <= var_0.x), select(func_3(), select(vec3<bool>(false, var_2, var_1.b.x), select(vec3<bool>(var_1.b.x, var_1.b.x, var_2), vec3<bool>(false, var_2, true), false), true), var_2));
    var_4 = vec3<bool>(-(var_0.x >> (32119u % 32u)) > ~(-var_3), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(748f + 999f))) < _wgslsmith_f_op_f32(-var_1.e.x), func_5(var_2, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.e.x, var_1.e.x)), vec3<f32>(var_1.e.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.e.x) + -834f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_1.e.x, var_1.e.x))))).b.x);
    var var_5 = firstTrailingBit(countOneBits(~24747u));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.d.x, ~(~var_1.d.xw), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(1281f * 297f), var_1.e.x, _wgslsmith_f_op_f32(-var_1.e.x), _wgslsmith_f_op_f32(-var_1.e.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.e.x, var_1.e.x, 622f, var_1.e.x))))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-160f, var_1.e.x)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_1.e.x, var_1.e.x))), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(1657f, 759f), var_1.e))), !vec2<bool>(var_2, false))))));
}

