struct Struct_1 {
    a: vec3<f32>,
    b: vec4<u32>,
}

struct Struct_2 {
    a: bool,
    b: vec2<u32>,
    c: Struct_1,
    d: Struct_1,
    e: bool,
}

struct Struct_3 {
    a: vec4<u32>,
    b: f32,
    c: vec2<bool>,
    d: Struct_1,
    e: Struct_2,
}

struct Struct_4 {
    a: vec3<bool>,
    b: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 16>;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> vec3<f32> {
    let var_0 = Struct_4(!vec3<bool>(!all(vec2<bool>(false, true)), false, true), Struct_2(true, ~_wgslsmith_sub_vec2_u32(~vec2<u32>(54326u, 4294967295u), select(vec2<u32>(4294967295u, 0u), vec2<u32>(1u, 1u), false)), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(892f, 1536f, 1000f)) - vec3<f32>(2184f, -430f, -289f)), select(vec4<u32>(4294967295u, 0u, 63894u, 3060u), vec4<u32>(0u, 17824u, 4294967295u, 0u), false) & ~vec4<u32>(0u, 43435u, 43352u, 85897u)), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -1213f, -1180f))), ~vec4<u32>(1u, 1u, 1u, 1u)), !all(select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, false)))));
    var var_1 = Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -885f, -1592f)), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(var_0.b.c.a)))))), ~var_0.b.c.b);
    var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.b.c.a.x, var_1.a.x) - var_1.a.x), _wgslsmith_f_op_f32(-var_1.a.x), _wgslsmith_f_op_f32(-var_0.b.c.a.x)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.a.x, _wgslsmith_f_op_f32(var_1.a.x + var_0.b.c.a.x), 106f) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(var_0.b.d.a)), var_0.b.d.a))), ~var_1.b);
    var var_2 = vec4<f32>(289f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_0.b.c.a.x)) * var_1.a.x), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -384f), _wgslsmith_f_op_f32(f32(-1f) * -620f), true))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_1.a.x))), _wgslsmith_f_op_f32(634f - var_0.b.c.a.x));
    let var_3 = var_0.b;
    return vec3<f32>(var_0.b.d.a.x, _wgslsmith_f_op_f32(sign(var_0.b.d.a.x)), var_0.b.c.a.x);
}

fn func_2(arg_0: vec2<bool>, arg_1: i32, arg_2: vec2<u32>, arg_3: vec4<f32>) -> Struct_2 {
    let var_0 = vec2<f32>(345f, _wgslsmith_f_op_f32(-arg_3.x));
    global0 = array<vec2<f32>, 16>();
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-arg_3.zzx))))), reverseBits(_wgslsmith_mod_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(arg_2.x, arg_2.x), 20517u, 4294967295u >> (arg_2.x % 32u), 0u), ~(vec4<u32>(1u, 16481u, 4294967295u, arg_2.x) << (vec4<u32>(arg_2.x, 53739u, arg_2.x, arg_2.x) % vec4<u32>(32u))))));
    let var_2 = true;
    var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3()) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(807f, -136f, _wgslsmith_f_op_f32(floor(860f))))), vec4<u32>(firstTrailingBit(arg_2.x), arg_2.x, var_1.b.x, arg_2.x));
    return Struct_2(true, reverseBits(arg_2), Struct_1(var_1.a, abs((var_1.b | var_1.b) ^ var_1.b)), Struct_1(arg_3.yxw, select(var_1.b, vec4<u32>(~8453u, arg_2.x ^ 28718u, _wgslsmith_div_u32(arg_2.x, arg_2.x), 4294967295u), !any(arg_0))), true);
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: vec3<f32>) -> u32 {
    global0 = array<vec2<f32>, 16>();
    var var_0 = _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(-arg_2.x), arg_1.d.a.x)));
    let var_1 = arg_1.c.b;
    let var_2 = var_1.x;
    let var_3 = min(4294967295u, _wgslsmith_dot_vec2_u32(max(select(var_1.zw | arg_1.d.b.zy, _wgslsmith_mod_vec2_u32(arg_1.c.b.yz, vec2<u32>(4294967295u, 72571u)), select(arg_1.e, false, true)), _wgslsmith_clamp_vec2_u32(vec2<u32>(0u, 4294967295u) ^ var_1.yx, ~var_1.xx, _wgslsmith_add_vec2_u32(arg_1.c.b.zw, vec2<u32>(95270u, 53174u)))), arg_1.d.b.yw));
    return 1u;
}

fn func_1() -> Struct_1 {
    let var_0 = max(-u_input.b.xx, u_input.b.yz);
    global0 = array<vec2<f32>, 16>();
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(select(-379f, -1361f, true)), _wgslsmith_f_op_f32(f32(-1f) * -507f), 1028f) + _wgslsmith_f_op_vec3_f32(step(vec3<f32>(1646f, -1112f, 1000f), vec3<f32>(1f, 1f, 1f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(836f, -753f, 628f))))));
    let var_2 = Struct_3(vec4<u32>(func_4(!select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true)), func_2(vec2<bool>(true, true), -u_input.b.x, ~vec2<u32>(1u, 79023u), vec4<f32>(var_1.x, -218f, var_1.x, 588f)), vec3<f32>(_wgslsmith_f_op_f32(abs(1434f)), _wgslsmith_f_op_f32(round(var_1.x)), 107f)), max(1u, ~(~25914u)), ~(firstTrailingBit(1u) & _wgslsmith_add_u32(0u, 0u)), firstTrailingBit(~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(4294967295u, 40712u, 0u, 4294967295u)))), 472f, vec2<bool>(-200f <= _wgslsmith_f_op_f32(trunc(2082f)), true), func_2(select(!select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false)), vec2<bool>(true, true), true), u_input.a, vec2<u32>(min(min(1u, 5062u), ~24189u), _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(14457u, 18825u, 4294967295u, 4294967295u), vec4<u32>(0u, 4294967295u, 34536u, 4294967295u)), 67131u)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, -870f, -1467f, var_1.x) - vec4<f32>(-1000f, var_1.x, var_1.x, var_1.x)))), vec4<f32>(var_1.x, var_1.x, _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(var_1.x * 1703f)))).c, Struct_2(true, vec2<u32>(47602u, 24312u), func_2(vec2<bool>(true, all(vec3<bool>(false, false, true))), u_input.a, vec2<u32>(47437u, 1u), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_1.x, var_1.x, 1000f, 351f), vec4<f32>(-856f, 172f, -294f, var_1.x)))).c, func_2(vec2<bool>(func_2(vec2<bool>(true, true), var_0.x, vec2<u32>(13447u, 70065u), vec4<f32>(-492f, 1000f, -860f, -1271f)).a, true), -7201i, min(vec2<u32>(1u, 1u), reverseBits(vec2<u32>(0u, 0u))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, -334f, var_1.x, -105f)))).d, any(select(select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, false), false), select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false))))));
    var var_3 = var_2.c.x | var_2.e.e;
    return Struct_1(var_2.d.a, ~(~var_2.d.b | countOneBits(var_2.a)));
}

fn func_5(arg_0: Struct_1, arg_1: u32, arg_2: Struct_3, arg_3: vec2<bool>) -> vec3<f32> {
    var var_0 = reverseBits(vec4<i32>(-1i, _wgslsmith_sub_i32(u_input.b.x, u_input.a << (arg_2.a.x % 32u)) << (30819u % 32u), -25124i, 1i));
    var var_1 = arg_2.e;
    var_0 = vec4<i32>(u_input.a, ~(~(-_wgslsmith_dot_vec3_i32(vec3<i32>(23995i, u_input.c, 0i), var_0.yyz))), u_input.a, -var_0.x >> (arg_0.b.x % 32u));
    let var_2 = _wgslsmith_f_op_f32(min(-151f, -658f));
    var var_3 = ~vec2<u32>(_wgslsmith_mult_u32(_wgslsmith_sub_u32(0u, arg_0.b.x), abs(arg_2.a.x)) << (_wgslsmith_sub_u32(arg_1, ~arg_1) % 32u), arg_0.b.x);
    return _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_2 * -1347f))) + _wgslsmith_f_op_f32(-arg_2.e.c.a.x)), _wgslsmith_div_f32(_wgslsmith_f_op_vec3_f32(func_3()).x, _wgslsmith_f_op_f32(sign(arg_0.a.x))), _wgslsmith_f_op_f32(f32(-1f) * -2453f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -120i;
    let var_1 = !(!(!(!select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true)))));
    var var_2 = -572f;
    let var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_5(func_1(), _wgslsmith_dot_vec3_u32(vec3<u32>(17743u, 19153u, 16979u), vec3<u32>(62835u, 4294967295u, 35306u)) >> (29334u % 32u), Struct_3(_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 103304u, 26676u, 1u), vec4<u32>(4294967295u, 1u, 4294967295u, 1u)), -649f, select(var_1.xz, var_1.yz, var_1.x), Struct_1(vec3<f32>(-488f, 225f, -894f), vec4<u32>(23886u, 3229u, 38746u, 51597u)), Struct_2(var_1.x, vec2<u32>(4867u, 62326u), Struct_1(vec3<f32>(-866f, 154f, -409f), vec4<u32>(64736u, 4294967295u, 10964u, 77938u)), Struct_1(vec3<f32>(-542f, -1262f, -2137f), vec4<u32>(39848u, 0u, 4294967295u, 1u)), false)), var_1.wx))) - vec3<f32>(_wgslsmith_f_op_f32(floor(-613f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-106f * _wgslsmith_f_op_f32(abs(-185f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(250f, 1135f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(101f + -102f))))));
    var_0 = -(~max((u_input.a | u_input.a) ^ -21831i, _wgslsmith_clamp_i32(12631i, countOneBits(1i), ~69651i)));
    var var_4 = Struct_4(var_1.zzz, func_2(var_1.wx, -4301i, vec2<u32>(0u, _wgslsmith_mod_u32(func_1().b.x, ~1u)), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_3.x, 325f, -570f, 1108f), vec4<f32>(-586f, var_3.x, -769f, 466f))) + vec4<f32>(520f, -150f, var_3.x, -1000f))))));
    global0 = array<vec2<f32>, 16>();
    let x = u_input.a;
    s_output = StorageBuffer(0i, vec2<i32>(abs(u_input.a & (i32(-1i) * -1i)), 2147483647i));
}

