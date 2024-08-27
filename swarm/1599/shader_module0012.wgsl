struct Struct_1 {
    a: u32,
    b: vec3<f32>,
    c: vec4<bool>,
    d: vec3<u32>,
    e: i32,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct Struct_3 {
    a: i32,
    b: bool,
    c: Struct_1,
    d: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec3<u32>,
    d: vec4<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec2<f32>) -> f32 {
    var var_0 = vec4<bool>(!all(vec3<bool>(true, false, true)), select(true, !(true | (4294967295u != u_input.a)), _wgslsmith_mult_u32(_wgslsmith_mod_u32(u_input.b, u_input.a), u_input.b & 52542u) >= 17704u), false, false);
    var_0 = select(!vec4<bool>(any(select(var_0.zz, vec2<bool>(var_0.x, true), vec2<bool>(var_0.x, true))), select(var_0.x, true, !var_0.x), false, true), select(select(vec4<bool>(1000f != arg_1.x, !var_0.x, true, var_0.x && false), select(!vec4<bool>(var_0.x, var_0.x, var_0.x, true), select(vec4<bool>(var_0.x, false, false, false), vec4<bool>(false, var_0.x, var_0.x, var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, true)), false), !(!vec4<bool>(false, var_0.x, true, var_0.x))), !(!(!vec4<bool>(true, false, false, var_0.x))), (u_input.b > 112360u) || true), vec4<bool>(_wgslsmith_div_i32(arg_0.x, arg_0.x) != 23745i, -min(arg_0.x, arg_0.x) == ~_wgslsmith_mult_i32(arg_0.x, arg_0.x), false, false));
    var var_1 = arg_1.x;
    let var_2 = true;
    let var_3 = arg_0.x;
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x))));
}

fn func_2(arg_0: vec4<bool>, arg_1: vec3<u32>) -> Struct_1 {
    let var_0 = arg_1.xz;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec2<i32>(2147483647i, -1i), _wgslsmith_div_vec2_f32(vec2<f32>(1000f, 945f), vec2<f32>(-386f, -1000f)))))));
    var var_2 = Struct_1(var_0.x, vec3<f32>(_wgslsmith_f_op_f32(sign(var_1)), _wgslsmith_f_op_f32(max(-1506f, _wgslsmith_f_op_f32(f32(-1f) * -833f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-545f + -2250f)))), select(select(vec4<bool>(true, any(arg_0.xzy), arg_0.x, !arg_0.x), arg_0, !vec4<bool>(arg_0.x, true, false, arg_0.x)), vec4<bool>(all(vec4<bool>(true, arg_0.x, true, arg_0.x)), false, true, 27284u != countOneBits(u_input.a)), true), vec3<u32>(~_wgslsmith_add_u32(42933u, ~var_0.x), arg_1.x, ~u_input.a), -(~(~1i)));
    var var_3 = ~var_2.a;
    var_2 = Struct_1(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(firstTrailingBit(arg_1.x), _wgslsmith_dot_vec2_u32(vec2<u32>(4727u, 1u), vec2<u32>(arg_1.x, u_input.b)), 4294967295u, abs(u_input.a)), vec4<u32>(var_0.x, u_input.a ^ var_0.x, _wgslsmith_mult_u32(34246u, 23519u), 1u)), ~(~(~var_0.x))), var_2.b, select(select(arg_0, select(select(arg_0, arg_0, true), select(arg_0, vec4<bool>(var_2.c.x, var_2.c.x, false, arg_0.x), true), false), !var_2.c.x && !arg_0.x), vec4<bool>(var_2.c.x, !all(var_2.c), true, (0u == u_input.a) & (u_input.b <= u_input.a)), var_2.c.x), var_2.d, -1i | (-max(-2147483647i, var_2.e) >> (abs(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.x, var_0.x, arg_1.x, u_input.a), vec4<u32>(var_2.a, var_0.x, 0u, arg_1.x))) % 32u)));
    return Struct_1(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, abs(~arg_1.x), countOneBits(55947u), _wgslsmith_add_u32(abs(29709u), 37848u)), ~_wgslsmith_add_vec4_u32(~vec4<u32>(u_input.b, var_2.a, 0u, var_2.a), _wgslsmith_clamp_vec4_u32(vec4<u32>(34917u, u_input.a, 86955u, var_0.x), vec4<u32>(var_0.x, u_input.b, 43916u, var_0.x), vec4<u32>(arg_1.x, var_0.x, arg_1.x, var_2.a)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(var_2.b, var_2.b), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(294f, -145f, -756f))), !var_2.c.x))) + var_2.b), !vec4<bool>(var_2.c.x, _wgslsmith_clamp_u32(38156u, var_0.x, u_input.a) == ~var_2.d.x, true, !(!arg_0.x)), firstTrailingBit(min(~(vec3<u32>(20890u, 64233u, arg_1.x) & vec3<u32>(arg_1.x, var_0.x, 14020u)), var_2.d)), select(~0i, -7904i, arg_0.x));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -105f);
    return _wgslsmith_dot_vec2_u32(~vec2<u32>(1u, 0u), arg_1.c.d.zx);
}

fn func_5(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: Struct_2) -> Struct_3 {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(ceil(arg_0.b.x)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(913f + -1177f))), -1181f);
    var var_1 = Struct_3(~0i, !(-911f >= arg_0.b.x), Struct_1(~_wgslsmith_div_u32(firstLeadingBit(1u), _wgslsmith_clamp_u32(1u, u_input.a, 56546u)), _wgslsmith_f_op_vec3_f32(func_2(vec4<bool>(arg_0.c.x, arg_0.c.x, arg_1.x, arg_0.c.x), vec3<u32>(u_input.a, 112837u, 66734u)).b + _wgslsmith_f_op_vec3_f32(floor(var_0))), vec4<bool>(arg_1.x, arg_1.x, !any(vec4<bool>(true, arg_0.c.x, false, true)), false), arg_0.d, -(~arg_0.e | 1i)), arg_2);
    var var_2 = !arg_0.c;
    var_2 = select(arg_0.c, !(!(!vec4<bool>(arg_0.c.x, var_1.c.c.x, true, var_2.x))), arg_0.c);
    var_2 = !arg_0.c;
    return Struct_3(var_1.d.a.x, !(!(-1684f == _wgslsmith_f_op_f32(select(-1051f, var_0.x, false)))), Struct_1(_wgslsmith_mult_u32(var_1.c.a, 19882u), var_0, select(vec4<bool>(select(false, var_1.b, arg_1.x), true, true | var_2.x, true), vec4<bool>(true, func_2(var_1.c.c, arg_0.d).c.x, arg_0.c.x, false && arg_0.c.x), select(arg_0.c, vec4<bool>(var_2.x, var_2.x, arg_1.x, true), var_1.c.c)), ~vec3<u32>(0u, ~0u, reverseBits(4875u)), arg_0.e), Struct_2(vec2<i32>(-1i) * -_wgslsmith_div_vec2_i32(arg_2.a, vec2<i32>(arg_0.e, -33407i))));
}

fn func_1() -> Struct_3 {
    let var_0 = func_5(Struct_1(_wgslsmith_sub_u32(~1u, ~abs(50702u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(881f, 169f, -522f) - vec3<f32>(-573f, 814f, 1054f)), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(471f, -1312f, 183f))), vec3<bool>(true, true, false)))), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, false))), vec4<bool>(true, true, true, true), !select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false))), vec3<u32>(func_4(func_2(vec4<bool>(false, true, true, true), vec3<u32>(1u, u_input.b, 16317u)), Struct_3(-55872i, false, Struct_1(u_input.b, vec3<f32>(-2024f, -590f, -275f), vec4<bool>(true, true, false, false), vec3<u32>(u_input.a, u_input.a, u_input.a), 0i), Struct_2(vec2<i32>(-44032i, 26024i)))), 20257u, ~_wgslsmith_div_u32(4294967295u, u_input.a)), -(~_wgslsmith_dot_vec2_i32(vec2<i32>(4979i, 1i), vec2<i32>(2147483647i, 0i)))), select(!func_2(vec4<bool>(true, true, false, false), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.b, 163u, 0u), vec3<u32>(23460u, 4294967295u, 1u))).c.xyz, vec3<bool>(true, true, true), func_2(vec4<bool>(false, true, true, true), ~firstTrailingBit(vec3<u32>(86922u, u_input.b, u_input.a))).c.yyz), Struct_2(_wgslsmith_mod_vec2_i32(vec2<i32>(~28322i, max(-1i, -29140i)), -vec2<i32>(-1i, -1i))));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(ceil(565f)), -967f, _wgslsmith_f_op_f32(min(var_0.c.b.x, -915f)), _wgslsmith_f_op_f32(var_0.c.b.x + -288f));
    let var_2 = var_1;
    let var_3 = var_0.d.a.x;
    let var_4 = 26419u;
    return var_0;
}

fn func_6(arg_0: Struct_2, arg_1: f32, arg_2: Struct_3, arg_3: vec3<f32>) -> Struct_3 {
    var var_0 = func_2(!arg_2.c.c, vec3<u32>(~36061u, 1u, ~arg_2.c.d.x));
    var_0 = func_5(Struct_1(1u, func_2(var_0.c, func_5(func_5(Struct_1(66086u, vec3<f32>(arg_3.x, arg_2.c.b.x, 1451f), arg_2.c.c, vec3<u32>(4294967295u, 4294967295u, 0u), var_0.e), vec3<bool>(true, false, true), arg_2.d).c, !vec3<bool>(arg_2.b, true, var_0.c.x), Struct_2(vec2<i32>(var_0.e, arg_0.a.x))).c.d).b, select(var_0.c, func_2(func_2(var_0.c, vec3<u32>(0u, 10958u, 69216u)).c, _wgslsmith_sub_vec3_u32(arg_2.c.d, vec3<u32>(53211u, 29518u, 105667u))).c, var_0.c), vec3<u32>(var_0.d.x, reverseBits(arg_2.c.d.x) & u_input.b, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, var_0.d.x, 4294967295u), arg_2.c.d) << (1u % 32u)), max(_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.e, 1i, arg_0.a.x), vec3<i32>(arg_0.a.x, var_0.e, 1i)) >> (var_0.d.x % 32u), ~func_1().d.a.x)), vec3<bool>(false, !(!(!var_0.c.x)), (any(var_0.c) || !arg_2.b) && var_0.c.x), func_1().d).c;
    var var_1 = var_0.a;
    var var_2 = vec4<i32>(var_0.e, abs(~var_0.e), min(arg_0.a.x, _wgslsmith_clamp_i32(arg_2.d.a.x, 1i << ((arg_2.c.a >> (0u % 32u)) % 32u), func_1().c.e & -1i)), -2147483647i);
    var_0 = func_2(arg_2.c.c, var_0.d);
    return Struct_3(-4095i, true, func_2(vec4<bool>(var_0.c.x, select(1i <= var_0.e, true, var_0.c.x), func_2(arg_2.c.c, arg_2.c.d).c.x, ~var_0.e != 0i), arg_2.c.d), Struct_2(arg_2.d.a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    var var_1 = func_6(Struct_2(vec2<i32>(_wgslsmith_div_i32(-59408i, 1i), 63534i)), _wgslsmith_f_op_f32(min(-1105f, _wgslsmith_f_op_f32(select(1f, 1190f, _wgslsmith_f_op_f32(925f + -545f) >= _wgslsmith_f_op_f32(round(1421f)))))), func_1(), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(937f, -212f, -662f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-101f, 886f, -356f)), vec3<bool>(true, true, true)))))));
    let var_2 = func_6(func_5(Struct_1(~_wgslsmith_mult_u32(23525u, 47665u), var_1.c.b, !var_1.c.c, func_1().c.d, func_6(var_1.d, _wgslsmith_f_op_f32(ceil(var_1.c.b.x)), func_6(Struct_2(vec2<i32>(var_1.a, -1i)), 998f, Struct_3(1i, var_1.b, var_1.c, var_1.d), var_1.c.b), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.c.b.x, 1000f, -1000f) * var_1.c.b)).d.a.x), !var_1.c.c.wxx, func_6(Struct_2(var_1.d.a), _wgslsmith_f_op_f32(func_3(vec2<i32>(var_1.d.a.x, var_1.a), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.c.b.x, var_1.c.b.x)))), Struct_3(var_1.a | var_1.d.a.x, true, var_1.c, Struct_2(var_1.d.a)), var_1.c.b).d).d, 1479f, Struct_3(_wgslsmith_add_i32(_wgslsmith_clamp_i32(0i, _wgslsmith_mod_i32(-2147483647i, var_1.d.a.x), _wgslsmith_add_i32(var_1.a, 2147483647i)), 2147483647i), -297f <= var_1.c.b.x, var_1.c, func_1().d), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_1.c.b.x, _wgslsmith_f_op_f32(var_1.c.b.x + var_1.c.b.x), func_1().c.b.x)))))).c.a;
    var var_3 = func_2(func_1().c.c, abs(~var_1.c.d)).c.xzx;
    var_0 = var_1.c.e > 1i;
    var var_4 = vec3<i32>(var_1.d.a.x, var_1.c.e, _wgslsmith_dot_vec4_i32(~(-vec4<i32>(49280i, var_1.a, var_1.d.a.x, -2147483647i)), _wgslsmith_clamp_vec4_i32(~vec4<i32>(var_1.c.e, 9320i, 0i, -2147483647i), vec4<i32>(var_1.c.e, 0i, var_1.a, -59693i) >> (vec4<u32>(27946u, u_input.a, 0u, var_2) % vec4<u32>(32u)), vec4<i32>(0i, 2147483647i, var_1.c.e, var_1.d.a.x)))) >> (~var_1.c.d % vec3<u32>(32u));
    let var_5 = func_1().d;
    let x = u_input.a;
    s_output = StorageBuffer(~select(-(vec4<i32>(-5069i, -40479i, -40967i, var_4.x) ^ vec4<i32>(1i, var_4.x, 2147483647i, var_5.a.x)), vec4<i32>(~var_5.a.x, var_5.a.x, -var_1.a, var_1.d.a.x), !func_2(var_1.c.c, var_1.c.d).c), ~(~vec3<u32>(u_input.b, 17725u, var_2)) | vec3<u32>(var_2, firstLeadingBit(~var_1.c.d.x), 35887u), _wgslsmith_sub_vec3_u32(vec3<u32>(15932u, u_input.b, ~43644u ^ _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.c.a, var_2, var_1.c.d.x, 4294967295u), vec4<u32>(u_input.a, 47786u, 32523u, 4294967295u))), firstLeadingBit(vec3<u32>(countOneBits(4294967295u), u_input.b & 72708u, select(var_1.c.a, 1u, true)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.c.b.x + -1000f) * _wgslsmith_f_op_f32(-var_1.c.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(392f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.c.b.x - var_1.c.b.x)), var_1.c.b.x)), _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(firstLeadingBit(vec4<i32>(var_5.a.x, var_5.a.x, 8135i, 1i)), ~(~vec4<i32>(1i, var_4.x, var_1.c.e, -26515i))), ~select(_wgslsmith_mod_vec4_i32(vec4<i32>(var_1.c.e, -14540i, var_1.c.e, var_5.a.x), vec4<i32>(1i, 53068i, var_1.d.a.x, -60914i)), ~vec4<i32>(-25582i, 0i, var_5.a.x, var_4.x), vec4<bool>(var_1.c.c.x, true, true, true))));
}

