struct Struct_1 {
    a: i32,
    b: u32,
    c: vec3<bool>,
    d: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: i32,
    d: vec2<u32>,
    e: vec4<f32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_1,
    c: vec2<u32>,
    d: f32,
}

struct Struct_4 {
    a: f32,
    b: vec3<u32>,
    c: u32,
    d: bool,
}

struct Struct_5 {
    a: Struct_3,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 22>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_5, arg_2: bool, arg_3: vec3<i32>) -> vec3<bool> {
    global0 = array<Struct_2, 22>();
    global0 = array<Struct_2, 22>();
    var var_0 = Struct_4(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(-1459f, 1186f)), 329f, !arg_1.a.b.c.x)), vec3<u32>(28902u, arg_0.c.x, arg_1.a.b.b), 25492u, !(!arg_1.a.b.c.x & true));
    var var_1 = var_0.b;
    var var_2 = 64552i;
    return vec3<bool>(true, (~arg_1.a.c.x | _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.b.x, 39275u), _wgslsmith_add_vec2_u32(arg_0.c, vec2<u32>(var_0.b.x, arg_1.a.b.b)))) <= _wgslsmith_sub_u32(~20638u ^ min(var_0.c, arg_1.a.b.b), 13581u), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-673f)), _wgslsmith_f_op_f32(715f * arg_0.d))) >= _wgslsmith_f_op_f32(f32(-1f) * -1526f));
}

fn func_4(arg_0: Struct_3, arg_1: vec3<bool>, arg_2: Struct_1, arg_3: bool) -> i32 {
    var var_0 = Struct_2(Struct_1(abs(2147483647i), _wgslsmith_div_u32(firstLeadingBit(34549u), ~14279u), !(!vec3<bool>(false, arg_1.x, false)), arg_0.b.d), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(775f, arg_0.d)), u_input.a | ((1i | _wgslsmith_clamp_i32(arg_0.b.d.x, -22645i, 0i)) >> (4294967295u % 32u)), ~(~vec2<u32>(_wgslsmith_div_u32(9461u, 9052u), ~arg_0.b.b)), vec4<f32>(_wgslsmith_f_op_f32(-arg_0.d), _wgslsmith_f_op_f32(arg_0.d * -354f), 497f, _wgslsmith_f_op_f32(sign(-724f))));
    global0 = array<Struct_2, 22>();
    var var_1 = vec3<bool>(true, true, all(arg_0.b.c.xz));
    var var_2 = global0[_wgslsmith_index_u32(min(14247u, var_0.d.x), 22u)];
    let var_3 = Struct_5(Struct_3(vec4<bool>(abs(var_0.a.a) < abs(-2147483647i), false, arg_1.x, arg_0.b.d.x <= var_0.c), arg_0.b, vec2<u32>(~(4294967295u & arg_0.c.x), reverseBits(firstTrailingBit(60804u))), _wgslsmith_f_op_f32(var_2.e.x * -620f)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(var_2.e.xzz + vec3<f32>(var_0.b, 321f, var_2.b)), var_2.e.wyx))), vec3<f32>(-176f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -182f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1067f) + 1000f)), any(!var_0.a.c.yx))));
    return -2147483647i & ~(~_wgslsmith_mod_i32(max(arg_0.b.d.x, var_0.c), var_3.a.b.a ^ -27621i));
}

fn func_2() -> i32 {
    let var_0 = 4294967295u;
    let var_1 = -1i;
    let var_2 = true;
    let var_3 = global0[_wgslsmith_index_u32(~var_0, 22u)];
    global0 = array<Struct_2, 22>();
    return func_4(Struct_3(vec4<bool>(!var_2 == true, ~var_3.d.x > ~var_3.d.x, true, true), Struct_1(-56160i, ~(~var_3.a.b), func_3(Struct_3(vec4<bool>(var_3.a.c.x, true, var_2, true), Struct_1(u_input.a, var_3.a.b, vec3<bool>(false, var_2, var_2), var_3.a.d), vec2<u32>(0u, 0u), 1281f), Struct_5(Struct_3(vec4<bool>(var_2, var_3.a.c.x, var_3.a.c.x, var_2), Struct_1(2147483647i, 0u, var_3.a.c, var_3.a.d), var_3.d, -1000f), vec3<f32>(650f, var_3.e.x, var_3.e.x)), true, -vec3<i32>(var_3.c, var_1, -10644i)), vec4<i32>(5005i, -var_1, var_3.c, select(u_input.a, u_input.a, var_3.a.c.x))), select(_wgslsmith_sub_vec2_u32(var_3.d, var_3.d), min(_wgslsmith_sub_vec2_u32(vec2<u32>(var_0, var_0), var_3.d), var_3.d >> (vec2<u32>(var_3.a.b, var_3.d.x) % vec2<u32>(32u))), select(var_3.a.c.x, true, all(var_3.a.c))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(1334f))))), var_3.a.c, var_3.a, var_3.a.c.x);
}

fn func_1(arg_0: bool, arg_1: vec2<bool>, arg_2: i32, arg_3: vec3<bool>) -> i32 {
    global0 = array<Struct_2, 22>();
    global0 = array<Struct_2, 22>();
    let var_0 = !select(!(!select(arg_3, vec3<bool>(arg_0, false, arg_1.x), false)), vec3<bool>(arg_0, arg_0, arg_0), arg_0);
    var var_1 = 10835u;
    var var_2 = Struct_1(func_2(), 0u, !(!var_0), min(vec4<i32>(func_4(Struct_3(vec4<bool>(false, true, false, true), Struct_1(u_input.a, 21752u, vec3<bool>(true, true, arg_3.x), vec4<i32>(arg_2, 1i, 1i, 28232i)), vec2<u32>(0u, 0u), -1051f), var_0, Struct_1(-8599i, 17395u, var_0, vec4<i32>(1i, -2147483647i, u_input.a, arg_2)), true), u_input.a, -arg_2, -arg_2), vec4<i32>(_wgslsmith_sub_i32(-21084i, arg_2), arg_2, -(arg_2 | arg_2), arg_2)));
    return var_2.a;
}

fn func_5(arg_0: vec4<i32>) -> vec3<bool> {
    global0 = array<Struct_2, 22>();
    let var_0 = _wgslsmith_div_i32(u_input.a & -(~func_1(true, vec2<bool>(false, false), -16743i, vec3<bool>(false, true, true))), ~reverseBits(func_2()));
    var var_1 = Struct_4(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(855f)) + _wgslsmith_f_op_f32(f32(-1f) * -1312f)))), ~(~(~countOneBits(vec3<u32>(1u, 30383u, 55686u)))), _wgslsmith_clamp_u32(~countOneBits(~4294967295u), 0u, _wgslsmith_clamp_u32(~1u, ~firstLeadingBit(0u), abs(countOneBits(1u)))), u_input.a >= -22013i);
    let var_2 = Struct_5(Struct_3(!select(vec4<bool>(var_1.d, false, true, var_1.d), !vec4<bool>(false, var_1.d, true, true), vec4<bool>(false, var_1.d, false, var_1.d)), Struct_1(~(-101225i), 21438u, vec3<bool>(all(vec2<bool>(false, var_1.d)), true, all(vec3<bool>(false, false, true))), arg_0), _wgslsmith_sub_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(var_1.b.x, 1u) >> (var_1.b.zz % vec2<u32>(32u)), vec2<u32>(var_1.b.x, 14726u) ^ vec2<u32>(var_1.b.x, var_1.b.x)), _wgslsmith_mult_vec2_u32(var_1.b.zy, vec2<u32>(4294967295u, 1u))), -805f), vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(-405f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_1.a, var_1.a)) * _wgslsmith_f_op_f32(f32(-1f) * -842f)))), _wgslsmith_f_op_f32(-var_1.a), -1016f));
    var_1 = Struct_4(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.b.x - _wgslsmith_f_op_f32(trunc(623f))) + _wgslsmith_div_f32(var_2.a.d, _wgslsmith_f_op_f32(ceil(-1544f)))))), var_1.b, reverseBits(~min(var_1.c, 55224u)) & 1u, false);
    return vec3<bool>(var_2.a.b.c.x, !(!var_1.d), true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(min(vec4<i32>(_wgslsmith_div_i32(~u_input.a, 29343i), u_input.a, -1i, abs(_wgslsmith_sub_i32(35173i, u_input.a))), vec4<i32>(_wgslsmith_mod_i32(select(2147483647i, u_input.a, true), u_input.a), -22662i, func_1(true, select(vec2<bool>(false, true), vec2<bool>(false, true), false), _wgslsmith_mult_i32(0i, u_input.a), select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(false, false, true))), u_input.a)));
    global0 = array<Struct_2, 22>();
    let var_1 = _wgslsmith_add_u32(1u, _wgslsmith_add_u32(~firstTrailingBit(4294967295u), ~(~0u))) >= 40025u;
    let var_2 = u_input.a << (21359u % 32u);
    let var_3 = abs(_wgslsmith_clamp_i32(firstTrailingBit(1i), firstTrailingBit(92072i), -31031i));
    let var_4 = false;
    var_0 = !func_3(Struct_3(!vec4<bool>(false, true, var_4, false), Struct_1(1i, 1u, vec3<bool>(true, true, var_4), ~vec4<i32>(u_input.a, u_input.a, var_3, var_2)), vec2<u32>(1u, 0u), -1000f), Struct_5(Struct_3(select(vec4<bool>(false, true, var_1, var_0.x), vec4<bool>(var_1, var_1, var_1, var_0.x), vec4<bool>(true, true, true, true)), Struct_1(u_input.a, 77310u, vec3<bool>(false, var_0.x, true), vec4<i32>(-45315i, -2147483647i, var_3, -56365i)), vec2<u32>(40368u, 57850u), 481f), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2295f), -1637f, _wgslsmith_f_op_f32(-979f * -519f))), any(var_0.zy), _wgslsmith_div_vec3_i32(firstTrailingBit(-vec3<i32>(-8769i, var_2, 2147483647i)), _wgslsmith_sub_vec3_i32(vec3<i32>(1i, 1i, 1i), ~vec3<i32>(2147483647i, 2147483647i, var_3))));
    var var_5 = select(vec3<i32>(0i, var_3, -2147483647i), ~reverseBits(~vec3<i32>(var_2, 5058i, 1i)), !all(var_0.zx));
    let var_6 = _wgslsmith_add_vec4_i32(vec4<i32>(var_2, ~min(var_5.x, ~var_5.x), _wgslsmith_div_i32(var_5.x ^ ~(-2147483647i), -1i), _wgslsmith_mod_i32(-2147483647i, u_input.a)), -select(-(~vec4<i32>(var_3, 20102i, -17510i, var_5.x)), select(min(vec4<i32>(var_5.x, -918i, -2147483647i, var_3), vec4<i32>(var_5.x, 24951i, -1i, var_3)), abs(vec4<i32>(var_3, var_5.x, 13100i, 17773i)), true), _wgslsmith_mod_i32(0i, u_input.a) == u_input.a));
    let x = u_input.a;
    s_output = StorageBuffer(1153f);
}

