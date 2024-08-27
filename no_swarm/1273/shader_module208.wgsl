struct Struct_1 {
    a: bool,
    b: bool,
    c: vec2<f32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec3<u32>,
    c: i32,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: Struct_1,
    c: vec4<u32>,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
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

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: i32) -> f32 {
    let var_0 = -4149i;
    let var_1 = Struct_3(true, Struct_2(vec2<bool>(all(vec2<bool>(false, true)) != true, false), vec3<u32>(u_input.c, u_input.b, max(_wgslsmith_dot_vec4_u32(vec4<u32>(7121u, 4294967295u, u_input.b, 31600u), vec4<u32>(u_input.c, 37110u, 50409u, u_input.c)), ~u_input.b)), -1i), Struct_1(any(vec3<bool>(true, true, true)), false, vec2<f32>(-211f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(201f)) - _wgslsmith_f_op_f32(max(-236f, 1413f))))));
    var var_2 = Struct_2(vec2<bool>(true, var_1.a), ~(~countOneBits(var_1.b.b)), -8148i);
    var_2 = Struct_2(var_2.a, ~_wgslsmith_add_vec3_u32(_wgslsmith_div_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(8834u, 12497u, u_input.b), vec3<u32>(37778u, var_1.b.b.x, 4294967295u)), firstLeadingBit(var_2.b)), abs(var_1.b.b)), -1i);
    let var_3 = vec2<bool>(var_2.a.x && ((i32(-1i) * -9353i) == ~_wgslsmith_div_i32(var_0, var_1.b.c)), false);
    return _wgslsmith_f_op_f32(select(var_1.c.c.x, 479f, true));
}

fn func_4(arg_0: f32) -> f32 {
    let var_0 = !vec3<bool>(true & (_wgslsmith_f_op_f32(-arg_0) <= _wgslsmith_f_op_f32(-785f - -2322f)), true, true);
    let var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(-8519i ^ u_input.a)) + _wgslsmith_f_op_f32(f32(-1f) * -527f)))) > arg_0;
    var var_2 = Struct_3(_wgslsmith_sub_u32(u_input.c << (u_input.c % 32u), u_input.b) > _wgslsmith_mod_u32(~u_input.c, 15317u), Struct_2(vec2<bool>(!(!var_1), var_1), _wgslsmith_sub_vec3_u32(~(vec3<u32>(101156u, 64451u, u_input.c) | vec3<u32>(96072u, 0u, 0u)), vec3<u32>(~u_input.b, 79893u, _wgslsmith_clamp_u32(u_input.c, 80074u, u_input.c))), (countOneBits(u_input.a) | -1i) | (1i & -u_input.a)), Struct_1(all(var_0.xz), _wgslsmith_mult_i32(~(-1i), _wgslsmith_sub_i32(-8063i, u_input.a)) != _wgslsmith_div_i32(~u_input.a, 1i), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) - _wgslsmith_f_op_f32(abs(-135f))), _wgslsmith_f_op_f32(-arg_0))));
    var_2 = Struct_3(any(select(var_0, var_0, arg_0 >= arg_0)), var_2.b, var_2.c);
    var var_3 = Struct_4(any(select(var_0, select(vec3<bool>(false, true, var_2.b.a.x), !var_0, var_2.c.a), !select(var_0, vec3<bool>(false, true, var_0.x), var_0))), Struct_1(true, false, vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1733f - var_2.c.c.x), 1103f), var_2.c.c.x)), vec4<u32>(~(~u_input.b), abs(u_input.b), 0u, 1u), select(_wgslsmith_div_vec4_i32(vec4<i32>(var_2.b.c, -1i, -16886i, 1i), vec4<i32>(-1i, u_input.a, var_2.b.c, var_2.b.c)) ^ firstLeadingBit(vec4<i32>(59887i, -13489i, var_2.b.c, u_input.a)), ~_wgslsmith_mult_vec4_i32(vec4<i32>(var_2.b.c, u_input.a, 14801i, 2147483647i), vec4<i32>(var_2.b.c, -2147483647i, u_input.a, -2147483647i)), !var_0.x) << (~(~(~vec4<u32>(var_2.b.b.x, u_input.b, 4294967295u, var_2.b.b.x))) % vec4<u32>(32u)));
    return _wgslsmith_f_op_f32(-834f + -1060f);
}

fn func_2() -> u32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(func_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(u_input.a)), _wgslsmith_f_op_f32(ceil(-1166f))))), _wgslsmith_f_op_f32(f32(-1f) * -1006f))));
    var var_1 = -2147483647i <= u_input.a;
    var var_2 = -u_input.a;
    let var_3 = Struct_3(false, Struct_2(vec2<bool>(!any(vec2<bool>(false, true)), true), _wgslsmith_clamp_vec3_u32(~firstLeadingBit(vec3<u32>(u_input.b, u_input.c, u_input.c)), ~(~vec3<u32>(3000u, u_input.c, u_input.c)), vec3<u32>(u_input.b, u_input.b, u_input.c) & vec3<u32>(1u, u_input.b, 34362u)), -abs(u_input.a)), Struct_1(any(vec4<bool>(-904f <= var_0.x, true, false, u_input.a > 9425i)), true, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-var_0), vec2<f32>(var_0.x, var_0.x))) - _wgslsmith_f_op_vec2_f32(-var_0))));
    var_2 = _wgslsmith_dot_vec4_i32(~(~vec4<i32>(u_input.a, var_3.b.c, 1i, -27007i) | (vec4<i32>(var_3.b.c, 41531i, u_input.a, var_3.b.c) ^ vec4<i32>(u_input.a, 52453i, -81526i, var_3.b.c))) >> (~(~_wgslsmith_div_vec4_u32(vec4<u32>(95923u, u_input.c, 14303u, u_input.b), vec4<u32>(4294967295u, 4294967295u, var_3.b.b.x, 0u))) % vec4<u32>(32u)), vec4<i32>(-24625i, u_input.a, _wgslsmith_sub_i32(i32(-1i) * -2147483647i, 2147483647i), 0i));
    return var_3.b.b.x;
}

fn func_1(arg_0: vec3<u32>, arg_1: u32, arg_2: vec3<f32>) -> u32 {
    let var_0 = vec3<u32>(~_wgslsmith_add_u32(52608u & _wgslsmith_mod_u32(arg_1, u_input.c), 37941u), func_2(), firstLeadingBit(72740u));
    let var_1 = Struct_3(!any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false))), Struct_2(vec2<bool>(u_input.a > select(0i, -2147483647i, false), true), ~(~(~var_0)), -_wgslsmith_div_i32(0i, u_input.a)), Struct_1(false, true, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_2.yz + arg_2.yx) - arg_2.yx) + vec2<f32>(_wgslsmith_f_op_f32(380f + -956f), _wgslsmith_f_op_f32(func_4(arg_2.x))))));
    let var_2 = vec4<f32>(899f, arg_2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(1i)) - _wgslsmith_f_op_f32(-arg_2.x)), _wgslsmith_f_op_f32(-arg_2.x));
    var var_3 = -vec4<i32>(-37403i, abs(u_input.a), -52192i, u_input.a) << (vec4<u32>(_wgslsmith_div_u32(38757u, ~arg_1), ~(max(1u, 4294967295u) | arg_0.x), 68936u, reverseBits(_wgslsmith_add_u32(var_0.x & 5160u, 26965u))) % vec4<u32>(32u));
    var_3 = _wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(~(~vec4<i32>(0i, var_3.x, var_1.b.c, var_1.b.c) | ~vec4<i32>(u_input.a, 1i, 1i, var_3.x)), select(~select(vec4<i32>(var_3.x, -1209i, 1i, -63103i), vec4<i32>(var_3.x, u_input.a, var_3.x, 2147483647i), var_1.c.a), ~(-vec4<i32>(u_input.a, -15376i, -82935i, var_1.b.c)), false)), vec4<i32>(-1i) * -((vec4<i32>(28019i, 2147483647i, var_1.b.c, var_1.b.c) >> (vec4<u32>(var_1.b.b.x, arg_0.x, 25299u, 25591u) % vec4<u32>(32u))) ^ -vec4<i32>(31914i, var_3.x, var_3.x, -2147483647i)));
    return min(29220u, _wgslsmith_clamp_u32(u_input.b, _wgslsmith_sub_u32(~14708u, ~(~21077u)), 1u));
}

fn func_5(arg_0: vec4<bool>, arg_1: vec4<u32>, arg_2: vec4<bool>, arg_3: f32) -> Struct_3 {
    let var_0 = ~(firstTrailingBit(~vec3<i32>(u_input.a, -2147483647i, u_input.a) | (vec3<i32>(5574i, -2147483647i, 2147483647i) ^ vec3<i32>(u_input.a, 2147483647i, 0i))) >> (_wgslsmith_mult_vec3_u32(abs(vec3<u32>(u_input.c, 4363u, 40868u)), vec3<u32>(u_input.c, ~1u, arg_1.x & 44493u)) % vec3<u32>(32u)));
    var var_1 = _wgslsmith_f_op_f32(round(arg_3));
    var_1 = -1631f;
    var var_2 = _wgslsmith_f_op_f32(max(arg_3, 590f));
    let var_3 = Struct_4(true, Struct_1(any(vec3<bool>(false, any(arg_0.zx), arg_2.x)), arg_0.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_3, arg_3) - vec2<f32>(arg_3, -567f))))), ~(~arg_1 | ~(~vec4<u32>(70965u, 1718u, u_input.b, 1u))), _wgslsmith_mult_vec4_i32(vec4<i32>(min(var_0.x, var_0.x), var_0.x, ~22744i, ~(-13285i)), firstLeadingBit(~_wgslsmith_div_vec4_i32(vec4<i32>(var_0.x, var_0.x, 2147483647i, 22018i), vec4<i32>(-39043i, 13887i, u_input.a, u_input.a)))));
    return Struct_3(any(arg_2), Struct_2(vec2<bool>(1u == (arg_1.x | 1u), var_3.a), ~arg_1.wzx, firstTrailingBit(select(1i, -2147483647i, true))), Struct_1(!var_3.b.b, true, vec2<f32>(-1019f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(754f + -2073f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstLeadingBit(~firstLeadingBit(reverseBits(u_input.c))) > 12616u;
    let var_1 = func_5(!select(select(select(vec4<bool>(var_0, true, var_0, false), vec4<bool>(var_0, true, var_0, false), true), select(vec4<bool>(false, var_0, var_0, true), vec4<bool>(var_0, var_0, true, false), vec4<bool>(false, false, var_0, var_0)), u_input.b == 22693u), !select(vec4<bool>(true, true, true, var_0), vec4<bool>(var_0, var_0, false, true), false), vec4<bool>(true, var_0, !var_0, true)), abs(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c, u_input.b, 3527u, u_input.c), _wgslsmith_clamp_vec4_u32(vec4<u32>(85549u, 4294967295u, 53224u, 93022u), vec4<u32>(143996u, 4294967295u, 1446u, 1u), vec4<u32>(u_input.b, u_input.c, 13680u, u_input.b)))) << (abs(vec4<u32>(abs(4294967295u), _wgslsmith_mod_u32(1u, 1u), func_1(vec3<u32>(u_input.c, u_input.b, 4294967295u), 4294967295u, vec3<f32>(-1167f, -272f, -726f)), 0u)) % vec4<u32>(32u)), vec4<bool>(false, true, true || !var_0, false), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(700f, -661f)))));
    var var_2 = func_5(vec4<bool>(!var_1.a, !(!var_0) & var_0, var_1.a, _wgslsmith_mult_i32(func_5(vec4<bool>(var_1.b.a.x, var_1.c.b, var_0, true), vec4<u32>(31332u, var_1.b.b.x, 68640u, var_1.b.b.x), vec4<bool>(true, true, true, var_0), -1746f).b.c, -17615i >> (u_input.b % 32u)) <= -29693i), vec4<u32>(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(var_1.b.b.yz, ~vec2<u32>(u_input.c, 103306u)), ~1u), 4294967295u, _wgslsmith_sub_u32(_wgslsmith_mult_u32(~44296u, _wgslsmith_sub_u32(var_1.b.b.x, var_1.b.b.x)), ~var_1.b.b.x), u_input.c), vec4<bool>(u_input.b >= ~(~1u), !var_0, false, !all(vec3<bool>(true, true, true))), 1012f);
    var_2 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-200f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-379f + var_2.c.c.x))) < -2486f, func_5(select(select(vec4<bool>(true, false, var_2.c.b, true), vec4<bool>(true, true, true, true), true), vec4<bool>(var_0, select(false, var_0, false), true, var_1.c.a), select(select(vec4<bool>(var_1.a, true, false, var_1.a), vec4<bool>(false, var_2.a, var_0, var_0), vec4<bool>(var_2.b.a.x, var_1.b.a.x, true, true)), vec4<bool>(true, true, true, var_2.b.a.x), func_5(vec4<bool>(false, var_0, var_0, false), vec4<u32>(29288u, var_2.b.b.x, var_1.b.b.x, var_1.b.b.x), vec4<bool>(true, false, false, false), -1270f).b.a.x)), ~(~(~vec4<u32>(4294967295u, var_2.b.b.x, var_2.b.b.x, var_1.b.b.x))), vec4<bool>(!var_1.c.a & true, var_2.a, false, _wgslsmith_sub_i32(0i, var_2.b.c) != _wgslsmith_clamp_i32(var_2.b.c, var_2.b.c, var_1.b.c)), var_1.c.c.x).b, Struct_1(var_2.b.a.x, false, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_2.c.c) + _wgslsmith_f_op_vec2_f32(exp2(var_1.c.c))), var_2.c.c, func_5(select(vec4<bool>(var_1.c.a, false, false, false), vec4<bool>(var_0, true, false, var_0), false), countOneBits(vec4<u32>(3605u, u_input.b, var_2.b.b.x, 19332u)), vec4<bool>(var_0, true, var_0, true), _wgslsmith_f_op_f32(floor(-1290f))).b.a))));
    let var_3 = Struct_4(_wgslsmith_f_op_f32(abs(-482f)) >= _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(var_2.c.c.x)))), func_5(!vec4<bool>(true, true, true, !var_0), vec4<u32>(~109504u, u_input.c, ~_wgslsmith_dot_vec4_u32(vec4<u32>(var_2.b.b.x, var_1.b.b.x, 22486u, var_1.b.b.x), vec4<u32>(var_1.b.b.x, var_1.b.b.x, 0u, 86013u)), 4294967295u), select(vec4<bool>(var_2.a, any(vec3<bool>(var_2.b.a.x, var_1.c.b, true)), true, var_2.b.a.x), vec4<bool>(var_2.b.a.x, true, true, var_0), false & (var_2.c.b || var_2.c.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -478f) - _wgslsmith_f_op_f32(-var_2.c.c.x)) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_2.c.c.x), _wgslsmith_f_op_f32(floor(-482f)))))).c, vec4<u32>(1u, 1u, func_1(~(vec3<u32>(12284u, u_input.b, 28307u) & vec3<u32>(1u, 4294967295u, u_input.b)), abs(_wgslsmith_add_u32(1u, var_1.b.b.x)), vec3<f32>(var_2.c.c.x, _wgslsmith_f_op_f32(-var_1.c.c.x), _wgslsmith_f_op_f32(sign(var_2.c.c.x)))), 0u), vec4<i32>(2147483647i, (u_input.a | firstLeadingBit(-23618i)) | abs(0i), -var_1.b.c, ~reverseBits(var_2.b.c)));
    var_2 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(countOneBits(abs(max(vec4<u32>(12015u, var_1.b.b.x, 29018u, var_1.b.b.x), var_3.c)))), var_3.d.x);
}

