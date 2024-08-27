struct Struct_1 {
    a: u32,
    b: vec4<u32>,
    c: vec4<i32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: u32,
    d: i32,
    e: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: u32,
    c: f32,
    d: Struct_2,
    e: vec3<u32>,
}

struct Struct_4 {
    a: Struct_3,
    b: f32,
    c: vec2<i32>,
    d: Struct_1,
}

struct Struct_5 {
    a: Struct_3,
    b: i32,
    c: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec2<f32>,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 11> = array<f32, 11>(1000f, 1636f, -788f, 1070f, 740f, -232f, -1029f, 1000f, 461f, 217f, -355f);

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1) -> vec2<f32> {
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a.x, -169f))))) - _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1383f, -1000f))))));
}

fn func_2(arg_0: f32, arg_1: vec4<i32>) -> Struct_2 {
    global0 = array<f32, 11>();
    global0 = array<f32, 11>();
    global0 = array<f32, 11>();
    var var_0 = 36597u;
    let var_1 = Struct_5(Struct_3(0u, 4294967295u, _wgslsmith_f_op_f32(abs(-777f)), Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(1000f, arg_0))) - _wgslsmith_f_op_vec2_f32(func_3(Struct_2(vec2<f32>(global0[_wgslsmith_index_u32(1443u, 11u)], 1734f), Struct_1(21487u, vec4<u32>(1u, 33094u, 121711u, 41164u), vec4<i32>(-29449i, arg_1.x, 1i, 2147483647i)), 43852u, u_input.a.x, Struct_1(0u, vec4<u32>(4294967295u, 1u, 26915u, 21358u), arg_1)), Struct_1(0u, vec4<u32>(4294967295u, 1u, 1u, 1u), vec4<i32>(arg_1.x, u_input.a.x, u_input.a.x, -41354i))))), Struct_1(abs(31279u), vec4<u32>(4294967295u, 21407u, 40301u, 14552u), vec4<i32>(-8223i, -60173i, 2147483647i, arg_1.x)), 1u, 22969i, Struct_1(~0u, firstTrailingBit(vec4<u32>(5531u, 4294967295u, 10320u, 4294967295u)), vec4<i32>(u_input.a.x, u_input.a.x, -2147483647i, arg_1.x))), abs(vec3<u32>(1u, 1u, 1u))), 1i, ~(-abs(~u_input.a.x)));
    return Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.a.c, var_1.a.c) * _wgslsmith_f_op_vec2_f32(step(var_1.a.d.a, var_1.a.d.a))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(round(var_1.a.d.a)))))), Struct_1(_wgslsmith_mult_u32(var_1.a.a | _wgslsmith_mod_u32(var_1.a.d.e.a, 19653u), var_1.a.e.x), vec4<u32>(select(~4294967295u, var_1.a.e.x, any(vec4<bool>(false, true, true, true))), var_1.a.e.x, 1u, (var_1.a.a ^ var_1.a.d.e.a) >> (3022u % 32u)), ~vec4<i32>(var_1.b, arg_1.x, ~var_1.a.d.b.c.x, firstTrailingBit(1i))), ~var_1.a.a, _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, 2147483647i, -1i, -36867i), vec4<i32>(-21412i, arg_1.x, 1i, -53052i)) >> ((0u & ~var_1.a.d.b.a) % 32u), -(~(-1i))), Struct_1(27003u, ~(~vec4<u32>(3484u, 0u, var_1.a.b, var_1.a.d.c)) ^ vec4<u32>(var_1.a.b, var_1.a.a, _wgslsmith_dot_vec3_u32(var_1.a.d.b.b.xwz, vec3<u32>(var_1.a.e.x, 4294967295u, 4294967295u)), countOneBits(var_1.a.e.x)), _wgslsmith_div_vec4_i32(var_1.a.d.b.c ^ arg_1, countOneBits(vec4<i32>(var_1.c, -1i, arg_1.x, var_1.a.d.e.c.x))) >> (var_1.a.d.b.b % vec4<u32>(32u))));
}

fn func_1(arg_0: bool, arg_1: vec3<u32>, arg_2: vec4<i32>) -> Struct_4 {
    global0 = array<f32, 11>();
    global0 = array<f32, 11>();
    global0 = array<f32, 11>();
    let var_0 = _wgslsmith_div_i32(~_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(arg_2, ~arg_2), -11779i), 0i);
    var var_1 = max(~(arg_1.xz & ~_wgslsmith_add_vec2_u32(vec2<u32>(33660u, 35815u), arg_1.xx)), ~vec2<u32>(firstLeadingBit(1u), _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(arg_1, vec3<u32>(arg_1.x, arg_1.x, 0u)), 29081u ^ arg_1.x)));
    return Struct_4(Struct_3(arg_1.x, _wgslsmith_sub_u32(~_wgslsmith_mult_u32(24997u, 1u), arg_1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(2056f)) * global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(countOneBits(arg_1.x), 25097u), 11u)]), func_2(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(~4294967295u, select(var_1.x, 73209u, arg_0)), 11u)], vec4<i32>(var_0, 41450i, -2147483647i, arg_2.x) ^ arg_2), arg_1), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(var_1.x, var_1.x, arg_1.x), 11u)] + func_2(_wgslsmith_f_op_f32(-1f), vec4<i32>(0i, ~arg_2.x, min(arg_2.x, 1i), 0i)).a.x), u_input.a.zz ^ vec2<i32>(-(~(-1i)), u_input.a.x), Struct_1(~4294967295u, abs(vec4<u32>(arg_1.x, arg_1.x, var_1.x, 55411u) | vec4<u32>(0u, var_1.x, var_1.x, 109348u)) << ((vec4<u32>(var_1.x, var_1.x, 21899u, var_1.x) << ((vec4<u32>(arg_1.x, 944u, arg_1.x, 33762u) ^ vec4<u32>(0u, 0u, var_1.x, 1u)) % vec4<u32>(32u))) % vec4<u32>(32u)), arg_2));
}

fn func_4(arg_0: vec3<bool>, arg_1: f32, arg_2: Struct_4, arg_3: u32) -> Struct_3 {
    global0 = array<f32, 11>();
    var var_0 = -2147483647i;
    global0 = array<f32, 11>();
    var_0 = reverseBits(6706i);
    var var_1 = ~arg_2.d.b.xx;
    return Struct_3(_wgslsmith_mult_u32(var_1.x, arg_2.a.d.c), 28811u, arg_1, arg_2.a.d, _wgslsmith_add_vec3_u32(arg_2.a.e, vec3<u32>(max(var_1.x, 33796u) ^ arg_3, 9754u, _wgslsmith_dot_vec4_u32(arg_2.d.b, _wgslsmith_sub_vec4_u32(arg_2.a.d.b.b, arg_2.d.b)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_5(func_4(select(vec3<bool>(true, true, true), !select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), true), vec3<bool>(true, true, false)), -870f, func_1(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(4294967295u, 64455u), 11u)] != -790f, _wgslsmith_mod_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(4294967295u, 22364u, 46729u)), select(vec3<u32>(32239u, 0u, 21378u), vec3<u32>(23799u, 11140u, 0u), true)), select(vec4<i32>(0i, -6792i, u_input.a.x, u_input.a.x), ~vec4<i32>(1i, -46169i, 2147483647i, u_input.a.x), select(true, true, true))), min(~_wgslsmith_dot_vec2_u32(vec2<u32>(47548u, 1u), vec2<u32>(0u, 4294967295u)), func_1(select(true, true, false), func_1(true, vec3<u32>(40644u, 3869u, 17395u), vec4<i32>(-8687i, u_input.a.x, -28295i, 1i)).d.b.xxz, select(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -1i), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -13690i), true)).d.b.x)), func_1(true, ~vec3<u32>(~65579u, 65614u, 47674u), ~_wgslsmith_mult_vec4_i32(~vec4<i32>(38165i, -1i, u_input.a.x, 0i), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a.x, 31357i, u_input.a.x, u_input.a.x), vec4<i32>(u_input.a.x, -1i, u_input.a.x, u_input.a.x), vec4<i32>(2147483647i, u_input.a.x, 34062i, u_input.a.x)))).a.d.d, u_input.a.x);
    global0 = array<f32, 11>();
    var var_1 = vec4<u32>(18072u, ~var_0.a.d.b.b.x, var_0.a.d.e.b.x, _wgslsmith_add_u32(~func_2(func_1(true, vec3<u32>(0u, var_0.a.d.c, 19099u), vec4<i32>(u_input.a.x, u_input.a.x, 1i, var_0.c)).b, _wgslsmith_div_vec4_i32(var_0.a.d.b.c, vec4<i32>(55400i, var_0.c, 0i, var_0.a.d.b.c.x))).e.b.x, 1u));
    let var_2 = select(vec3<bool>(select(0u < (1u & var_1.x), true | (var_1.x <= var_0.a.b), any(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false)))), var_0.c < ~_wgslsmith_add_i32(u_input.a.x, u_input.a.x), !all(select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), true))), vec3<bool>(!any(select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(true, false, true))), true, true), var_0.a.c != _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.a.c), -1719f))));
    let var_3 = any(!var_2.xy);
    var var_4 = Struct_1(~firstTrailingBit(var_0.a.a), vec4<u32>(_wgslsmith_clamp_u32(4294967295u, var_1.x, ~(~12582u)), 20593u, countOneBits(~abs(1u)), 5500u), func_2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-func_1(true, var_1.wxx, var_0.a.d.b.c).a.c), -1251f, false)), _wgslsmith_mod_vec4_i32(~(var_0.a.d.e.c >> (vec4<u32>(var_0.a.a, var_0.a.e.x, var_1.x, var_1.x) % vec4<u32>(32u))), -(~vec4<i32>(-18637i, -2147483647i, 0i, -2147483647i)))).e.c);
    global0 = array<f32, 11>();
    let x = u_input.a;
    s_output = StorageBuffer(40061u, 4294967295u, var_0.a.d.a, 27010u, _wgslsmith_clamp_i32(countOneBits(_wgslsmith_mod_i32(var_4.c.x | 1900i, var_0.c)), 1i, ~(-var_4.c.x)));
}

