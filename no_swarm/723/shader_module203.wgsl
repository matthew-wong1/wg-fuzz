struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
}

struct Struct_4 {
    a: u32,
    b: bool,
    c: Struct_3,
    d: u32,
    e: Struct_3,
}

struct Struct_5 {
    a: Struct_3,
    b: bool,
    c: Struct_3,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec2<f32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 26>;

var<private> global1: bool;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_4, arg_1: bool, arg_2: Struct_4, arg_3: Struct_3) -> i32 {
    var var_0 = select(vec2<bool>(true, arg_0.e.a.x >= arg_2.e.a.x), vec2<bool>(true, false), vec2<bool>(all(!select(vec3<bool>(arg_1, arg_1, false), vec3<bool>(false, arg_1, arg_2.b), arg_2.b)), true));
    let var_1 = vec3<u32>(19665u >> (~arg_2.a % 32u), 14834u, _wgslsmith_sub_u32(_wgslsmith_sub_u32(~arg_0.d, arg_2.d), ~40117u << (arg_0.a % 32u)) & select(28277u, 0u, true));
    let var_2 = _wgslsmith_f_op_f32(-arg_2.c.a.x);
    let var_3 = 0u;
    var var_4 = Struct_2(abs(vec2<i32>(11306i, countOneBits(2147483647i | u_input.a.x))), Struct_1(~(~arg_2.d)));
    return _wgslsmith_dot_vec2_i32(vec2<i32>(var_4.a.x, _wgslsmith_add_i32(countOneBits(1i), -14574i)), vec2<i32>(reverseBits(0i), -2147483647i));
}

fn func_2(arg_0: vec4<u32>) -> Struct_3 {
    let var_0 = Struct_5(Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1466f, -2253f, 811f, -1000f) - vec4<f32>(-392f, -727f, -603f, 1000f))))), all(!vec4<bool>(arg_0.x > arg_0.x, true, select(true, false, false), arg_0.x < arg_0.x)), Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1177f, -265f, -875f, 821f) + vec4<f32>(1149f, 596f, -427f, -504f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-732f, -202f, -949f, -752f)))))), vec3<bool>(u_input.a.x == func_3(Struct_4(1u, false, Struct_3(vec4<f32>(-1055f, -405f, 118f, 461f)), 24500u, Struct_3(vec4<f32>(-813f, 983f, -524f, -426f))), arg_0.x < 65935u, Struct_4(arg_0.x, true, Struct_3(vec4<f32>(-1008f, -234f, -1381f, -229f)), arg_0.x, Struct_3(vec4<f32>(-534f, -188f, 492f, -1315f))), Struct_3(vec4<f32>(-1000f, -2229f, -442f, -1443f))), all(vec3<bool>(false, false, true)) || !any(vec2<bool>(false, true)), all(vec4<bool>(select(false, false, true), any(vec4<bool>(true, true, true, false)), -8485i == u_input.a.x, true))));
    var var_1 = Struct_5(Struct_3(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.a.x, 1118f, var_0.c.a.x, -177f)) + var_0.a.a), var_0.a.a)), var_0.b, var_0.c, var_0.d);
    var var_2 = max(24998u, _wgslsmith_sub_u32(arg_0.x, countOneBits(28536u) >> (_wgslsmith_mult_u32(1u, arg_0.x) % 32u))) & abs(~32007u);
    global1 = min(i32(-1i) * -(~0i), ~func_3(Struct_4(arg_0.x, true, var_1.c, 37652u, var_0.c), var_0.b, Struct_4(4294967295u, var_0.d.x, Struct_3(var_0.a.a), arg_0.x, Struct_3(var_1.c.a)), var_0.a)) > 11645i;
    var var_3 = vec2<i32>(24119i, firstLeadingBit(_wgslsmith_add_i32(~(-u_input.a.x), abs(u_input.a.x))));
    return var_0.c;
}

fn func_4(arg_0: Struct_5) -> Struct_5 {
    var var_0 = Struct_2(~u_input.a.zy & _wgslsmith_div_vec2_i32(-_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a.x, 20095i), u_input.a.xy), vec2<i32>(-1i) * -vec2<i32>(u_input.a.x, u_input.a.x)), Struct_1(~(~(~4463u))));
    let var_1 = _wgslsmith_add_vec2_i32(var_0.a, vec2<i32>(_wgslsmith_mod_i32(15543i, ~(36337i & var_0.a.x)), var_0.a.x));
    var var_2 = Struct_2(-((_wgslsmith_mod_vec2_i32(vec2<i32>(var_1.x, -11773i), vec2<i32>(var_0.a.x, u_input.a.x)) >> (vec2<u32>(113570u, 12951u) % vec2<u32>(32u))) >> (~vec2<u32>(var_0.b.a, var_0.b.a) % vec2<u32>(32u))), Struct_1(_wgslsmith_dot_vec3_u32(select(_wgslsmith_div_vec3_u32(vec3<u32>(40452u, 1u, var_0.b.a), vec3<u32>(0u, 9474u, var_0.b.a)), _wgslsmith_mod_vec3_u32(vec3<u32>(var_0.b.a, var_0.b.a, 37994u), vec3<u32>(10604u, 16160u, 4294967295u)), arg_0.d), vec3<u32>(0u, 7612u, 4294967295u) ^ (vec3<u32>(var_0.b.a, var_0.b.a, 42848u) >> (vec3<u32>(1u, 10846u, 3117u) % vec3<u32>(32u))))));
    var var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(117f, arg_0.a.a.x, -841f), _wgslsmith_f_op_vec3_f32(-arg_0.a.a.xzy)) * arg_0.c.a.wyy);
    let var_4 = var_0.b.a;
    return Struct_5(func_2(max(~min(vec4<u32>(var_2.b.a, 32331u, 34460u, 53957u), vec4<u32>(0u, 6232u, var_2.b.a, var_0.b.a)), ~reverseBits(vec4<u32>(2197u, 2519u, 0u, 44594u)))), arg_0.b, func_2(vec4<u32>(~abs(71924u), _wgslsmith_sub_u32(~var_0.b.a, ~var_0.b.a), select(39409u, 0u, any(arg_0.d.xz)), select(42411u, var_0.b.a | 39707u, all(vec2<bool>(true, true))))), select(select(vec3<bool>(all(arg_0.d), !arg_0.b, arg_0.b), select(vec3<bool>(arg_0.b, false, arg_0.b), select(vec3<bool>(false, arg_0.d.x, arg_0.b), arg_0.d, false), !arg_0.b), !any(vec3<bool>(arg_0.d.x, arg_0.d.x, true))), arg_0.d, arg_0.d.x));
}

fn func_5(arg_0: Struct_3, arg_1: Struct_5, arg_2: f32, arg_3: vec2<u32>) -> Struct_3 {
    var var_0 = Struct_5(Struct_3(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-arg_1.c.a), func_2(_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_3.x, arg_3.x, arg_3.x, arg_3.x), vec4<u32>(1u, arg_3.x, arg_3.x, 1u), vec4<u32>(arg_3.x, arg_3.x, 17676u, arg_3.x))).a))), _wgslsmith_f_op_f32(-1763f + -513f) != _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a.x) + _wgslsmith_f_op_f32(sign(arg_2))), 1903f), func_2(reverseBits(~vec4<u32>(4294967295u, 0u, arg_3.x, arg_3.x)) << (_wgslsmith_clamp_vec4_u32(select(vec4<u32>(62020u, arg_3.x, arg_3.x, 1u), vec4<u32>(arg_3.x, 49955u, arg_3.x, 8445u), vec4<bool>(arg_1.b, false, false, true)), ~vec4<u32>(arg_3.x, arg_3.x, arg_3.x, arg_3.x), ~vec4<u32>(arg_3.x, arg_3.x, arg_3.x, arg_3.x)) % vec4<u32>(32u))), vec3<bool>(all(arg_1.d.zx), all(vec4<bool>(!arg_1.b, true & arg_1.b, true, 44253i < u_input.a.x)), true));
    let var_1 = func_2(_wgslsmith_add_vec4_u32(~(~(~vec4<u32>(15763u, 4294967295u, arg_3.x, arg_3.x))), vec4<u32>(1u << (_wgslsmith_dot_vec3_u32(vec3<u32>(63768u, 0u, arg_3.x), vec3<u32>(arg_3.x, 16974u, 22039u)) % 32u), arg_3.x, arg_3.x, 4294967295u)));
    let var_2 = Struct_4(arg_3.x, func_4(func_4(arg_1)).d.x, Struct_3(vec4<f32>(func_4(Struct_5(Struct_3(arg_1.a.a), var_0.b, Struct_3(vec4<f32>(arg_2, 1428f, 1078f, arg_1.a.a.x)), vec3<bool>(false, false, true))).a.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2 * arg_1.a.a.x) + arg_0.a.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1197f + -1000f), 665f), _wgslsmith_f_op_f32(-arg_2))), ~1u, arg_1.a);
    var var_3 = global0[_wgslsmith_index_u32(arg_3.x, 26u)];
    var var_4 = firstTrailingBit(~(~(~vec3<u32>(var_3.a, var_3.a, 0u))));
    return Struct_3(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_2)) * _wgslsmith_f_op_f32(-var_1.a.x)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.a.x * var_0.a.a.x), var_0.a.a.x)), 445f, arg_2, var_1.a.x));
}

fn func_1(arg_0: bool, arg_1: bool, arg_2: i32) -> u32 {
    let var_0 = func_5(Struct_3(vec4<f32>(952f, _wgslsmith_f_op_f32(-1388f - _wgslsmith_f_op_f32(2921f - 1198f)), 1778f, _wgslsmith_f_op_f32(-707f - _wgslsmith_f_op_f32(329f - 1951f)))), func_4(Struct_5(func_2(vec4<u32>(1u, 1u, 1u, 1u)), any(!vec3<bool>(arg_1, true, arg_1)), func_2(~vec4<u32>(1u, 1u, 69884u, 1u)), vec3<bool>(true | arg_1, true, true && arg_1))), -1000f, ~(~_wgslsmith_add_vec2_u32(abs(vec2<u32>(1u, 4294967295u)), _wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, 0u), vec2<u32>(58165u, 0u)))));
    var var_1 = vec3<u32>(countOneBits(_wgslsmith_div_u32(1u, ~min(47579u, 1u))), 1u, ~(~5141u) >> (~(~0u) % 32u));
    let var_2 = global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(16890u, var_1.x), 26u)];
    var var_3 = -1i;
    var var_4 = _wgslsmith_mod_i32(u_input.a.x, _wgslsmith_dot_vec2_i32(abs(vec2<i32>(66202i, u_input.a.x)), u_input.a.yz));
    return firstTrailingBit(~4294967295u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 26>();
    global1 = true;
    let var_0 = 20025u;
    var var_1 = min(vec3<u32>(select(min(4294967295u, ~111228u), ~61836u, any(select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, true)))), _wgslsmith_sub_u32(var_0, ~var_0), _wgslsmith_add_u32(func_1(u_input.a.x > -64424i, true, ~u_input.a.x), _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 17969u), ~vec2<u32>(var_0, var_0)))), firstTrailingBit(min(~vec3<u32>(1u, 4294967295u, 0u), _wgslsmith_clamp_vec3_u32(~vec3<u32>(var_0, var_0, var_0), vec3<u32>(46214u, 0u, var_0), min(vec3<u32>(11073u, var_0, 4294967295u), vec3<u32>(var_0, var_0, 0u))))));
    global1 = all(vec3<bool>(1f >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-411f * -2726f) * func_4(Struct_5(Struct_3(vec4<f32>(-1599f, 565f, -811f, -892f)), true, Struct_3(vec4<f32>(1266f, -438f, 935f, 1011f)), vec3<bool>(true, true, true))).a.a.x), false, true));
    global1 = !(!(_wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(u_input.a, u_input.a), i32(-1i) * -60852i, abs(-8802i)) <= u_input.a.x));
    let var_2 = true;
    var var_3 = _wgslsmith_clamp_vec4_i32(min(vec4<i32>(select(select(u_input.a.x, u_input.a.x, true), u_input.a.x, false), _wgslsmith_clamp_i32(-11419i, -60081i, _wgslsmith_dot_vec3_i32(u_input.a, u_input.a)), -2147483647i, _wgslsmith_mult_i32(0i, min(u_input.a.x, -4931i))), firstLeadingBit(max(vec4<i32>(2147483647i, 1i, 2147483647i, -1i), vec4<i32>(39858i, u_input.a.x, 0i, u_input.a.x)))), _wgslsmith_sub_vec4_i32(countOneBits(vec4<i32>(select(-43000i, -1i, var_2), 1i, 28325i, select(58599i, u_input.a.x, var_2))), _wgslsmith_mult_vec4_i32(-vec4<i32>(-1003i, u_input.a.x, 52074i, u_input.a.x) << (select(vec4<u32>(39079u, var_1.x, 1u, var_0), vec4<u32>(12520u, var_1.x, var_1.x, var_0), vec4<bool>(false, var_2, false, var_2)) % vec4<u32>(32u)), vec4<i32>(3051i, _wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(1i, -2147483647i, u_input.a.x)), ~u_input.a.x, u_input.a.x))), select(-vec4<i32>(~u_input.a.x, _wgslsmith_clamp_i32(u_input.a.x, u_input.a.x, u_input.a.x), ~(-2147483647i), 5073i), vec4<i32>(max(_wgslsmith_mod_i32(u_input.a.x, 54424i), _wgslsmith_sub_i32(u_input.a.x, 2147483647i)), u_input.a.x, -1i, _wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(-28960i, u_input.a.x, -1i, u_input.a.x)), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.a.x, -2147483647i, u_input.a.x, -2147483647i), vec4<i32>(-23160i, -2147483647i, 73693i, -2147483647i)))), select(!(!vec4<bool>(false, true, var_2, var_2)), !(!vec4<bool>(var_2, var_2, var_2, var_2)), vec4<bool>(true, select(true, false, var_2), !var_2, !var_2))));
    let var_4 = func_2(vec4<u32>(var_1.x, _wgslsmith_mod_u32(min(4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(19252u, 22558u, var_1.x), vec3<u32>(var_1.x, var_0, 10646u))), firstTrailingBit(0u << (var_1.x % 32u))), 0u, func_1(true, all(!vec4<bool>(var_2, true, var_2, true)), i32(-1i) * -10588i))).a.x;
    let x = u_input.a;
    s_output = StorageBuffer(select(vec2<u32>(0u, _wgslsmith_dot_vec3_u32(vec3<u32>(var_0, var_1.x, var_1.x), vec3<u32>(0u, var_1.x, var_1.x))) & (~var_1.yz >> (vec2<u32>(var_0, var_0) % vec2<u32>(32u))), vec2<u32>(select(68658u, max(var_1.x, var_0), false), ~(~var_0)), !(!select(vec2<bool>(var_2, false), vec2<bool>(false, false), vec2<bool>(var_2, var_2)))), _wgslsmith_div_vec2_u32(vec2<u32>((var_0 >> (98064u % 32u)) & var_0, _wgslsmith_dot_vec3_u32(~vec3<u32>(var_0, var_1.x, var_0), vec3<u32>(67314u, var_1.x, 0u))), _wgslsmith_clamp_vec2_u32(~var_1.yx, var_1.yz, _wgslsmith_sub_vec2_u32(countOneBits(var_1.xz), var_1.xz))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_4, _wgslsmith_f_op_f32(ceil(var_4)))))), max(vec3<i32>(u_input.a.x, u_input.a.x, -(i32(-1i) * -1330i)), _wgslsmith_mult_vec3_i32(~vec3<i32>(11267i, u_input.a.x, var_3.x), _wgslsmith_sub_vec3_i32(vec3<i32>(-45803i, 1i, var_3.x), vec3<i32>(var_3.x, 40038i, var_3.x)))));
}

