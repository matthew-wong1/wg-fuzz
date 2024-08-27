struct Struct_1 {
    a: vec2<u32>,
    b: i32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<bool>,
    c: vec2<i32>,
    d: f32,
    e: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: vec2<f32>,
    c: bool,
    d: Struct_1,
    e: Struct_2,
}

struct Struct_5 {
    a: Struct_3,
    b: vec4<i32>,
    c: vec4<f32>,
    d: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec3<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
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

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3() -> bool {
    let var_0 = Struct_2(abs(_wgslsmith_mod_vec4_i32(max(vec4<i32>(u_input.a.x, 2147483647i, global0.a.b, global0.c.x), ~vec4<i32>(u_input.a.x, u_input.a.x, global0.c.x, global0.a.b)), ~vec4<i32>(-24409i, -28322i, global0.a.b, u_input.a.x))), max(~global0.a.b, ~1i));
    let var_1 = all(vec2<bool>(false, select(global0.b.x, u_input.c.x <= ~4294967295u, global0.b.x)));
    let var_2 = 25292u;
    var var_3 = Struct_4(!var_1, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1000f, 1000f))))), true, global0.a, Struct_2(vec4<i32>(-(~0i), -(6526i << (u_input.c.x % 32u)), _wgslsmith_add_i32(u_input.a.x, 32159i), global0.a.b), _wgslsmith_dot_vec4_i32(~vec4<i32>(var_0.a.x, global0.c.x, global0.e.b, var_0.b), select(vec4<i32>(global0.c.x, -5471i, u_input.a.x, var_0.b), global0.e.a, !vec4<bool>(false, global0.b.x, global0.b.x, global0.b.x)))));
    var_3 = Struct_4((true || any(global0.b)) & var_3.c, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global0.d))), global0.d), true, Struct_1(vec2<u32>(global0.a.a.x, ~min(u_input.b.x, u_input.d.x)), select(-u_input.a.x << (1u % 32u), 30003i, (var_3.a & true) || false)), var_3.e);
    return any(vec2<bool>(true, true));
}

fn func_2(arg_0: u32, arg_1: vec4<i32>) -> Struct_1 {
    let var_0 = global0.b.zx;
    let var_1 = global0.c.x == ~(-10991i);
    let var_2 = all(vec4<bool>(!any(global0.b.xz) && func_3(), !any(vec4<bool>(var_1, global0.b.x, var_0.x, var_1)), !var_1, select((u_input.a.x ^ global0.a.b) <= (1i ^ global0.a.b), true, select(!var_0.x, var_0.x, true))));
    global0 = Struct_3(global0.a, global0.b, -(~u_input.a), _wgslsmith_f_op_f32(-162f * _wgslsmith_div_f32(global0.d, -1276f)), Struct_2(_wgslsmith_div_vec4_i32(vec4<i32>(32577i, -18195i, ~u_input.a.x, -3744i), _wgslsmith_add_vec4_i32(vec4<i32>(arg_1.x, u_input.a.x, 51388i, u_input.a.x), vec4<i32>(arg_1.x, 2147483647i, 1i, -37638i))), 50178i));
    global0 = Struct_3(Struct_1(vec2<u32>(~0u, global0.a.a.x), _wgslsmith_add_i32(-min(arg_1.x, u_input.a.x), reverseBits(abs(arg_1.x)))), global0.b, max(global0.e.a.yw, countOneBits(global0.e.a.zw)), global0.d, Struct_2(vec4<i32>(abs(global0.a.b), _wgslsmith_clamp_i32(-1i, -3841i, -12655i), firstTrailingBit(2147483647i), u_input.a.x) << (vec4<u32>(~88390u, 18160u, u_input.b.x, global0.a.a.x) % vec4<u32>(32u)), global0.a.b << (~_wgslsmith_mult_u32(23249u, global0.a.a.x) % 32u)));
    return global0.a;
}

fn func_4(arg_0: bool, arg_1: Struct_4, arg_2: bool) -> bool {
    global0 = Struct_3(global0.a, !select(global0.b, global0.b, vec3<bool>(!global0.b.x, 103u <= u_input.b.x, global0.a.a.x <= 31622u)), vec2<i32>(0i, ~arg_1.e.a.x), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_1.b.x + 1506f))), global0.e);
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(288f, 866f, 1175f, global0.d), vec4<f32>(global0.d, arg_1.b.x, 304f, arg_1.b.x)))))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(min(arg_1.b.x, global0.d)), _wgslsmith_f_op_f32(global0.d * -1316f), -1553f, -1000f) * _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(vec4<f32>(332f, -2412f, arg_1.b.x, -1195f), vec4<f32>(arg_1.b.x, -717f, 115f, global0.d)))))));
    let var_1 = Struct_3(func_2(~min(~arg_1.d.a.x, arg_1.d.a.x), arg_1.e.a), select(vec3<bool>(!arg_2, false, all(vec4<bool>(arg_0, true, arg_2, false))), global0.b, !global0.b), ~firstTrailingBit(-(~vec2<i32>(arg_1.d.b, 20044i))), arg_1.b.x, Struct_2(_wgslsmith_clamp_vec4_i32(_wgslsmith_add_vec4_i32(arg_1.e.a, -global0.e.a), min(vec4<i32>(22215i, 11893i, -29419i, 0i) & vec4<i32>(arg_1.d.b, -4845i, -41515i, 33960i), global0.e.a), select(-vec4<i32>(39366i, arg_1.e.a.x, -21396i, -23642i), arg_1.e.a, vec4<bool>(global0.b.x, true, true, arg_0))), u_input.a.x));
    var var_2 = min(global0.e.a.zxx, global0.e.a.xzw);
    var var_3 = -1i;
    return _wgslsmith_f_op_f32(round(387f)) <= -136f;
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_clamp_u32(select(59047u, _wgslsmith_dot_vec4_u32(vec4<u32>(92765u, global0.a.a.x, u_input.c.x, global0.a.a.x) >> (_wgslsmith_mod_vec4_u32(vec4<u32>(global0.a.a.x, 37918u, u_input.b.x, global0.a.a.x), vec4<u32>(global0.a.a.x, 21386u, u_input.b.x, 36062u)) % vec4<u32>(32u)), vec4<u32>(~4294967295u, reverseBits(0u), 1u, ~1u)), func_4(u_input.b.x >= min(2603u, 13827u), Struct_4(global0.b.x, _wgslsmith_f_op_vec2_f32(vec2<f32>(-2401f, 1889f) * vec2<f32>(991f, -112f)), true, func_2(5941u, vec4<i32>(global0.a.b, u_input.a.x, -12096i, 55644i)), Struct_2(global0.e.a, 2147483647i)), select(!global0.b.x, true, true))), func_2(~(~u_input.b.x >> (~1u % 32u)), _wgslsmith_clamp_vec4_i32(_wgslsmith_sub_vec4_i32(select(global0.e.a, global0.e.a, true), ~vec4<i32>(-28073i, -27407i, u_input.a.x, global0.c.x)), vec4<i32>(2147483647i, ~23558i, 1i, global0.a.b), -global0.e.a)).a.x, _wgslsmith_div_u32(_wgslsmith_mult_u32(~_wgslsmith_div_u32(1u, global0.a.a.x), _wgslsmith_mult_u32(_wgslsmith_mod_u32(u_input.d.x, u_input.d.x), firstTrailingBit(u_input.c.x))), u_input.b.x));
    let var_1 = Struct_3(Struct_1(global0.a.a, _wgslsmith_mod_i32(_wgslsmith_div_i32(14816i, u_input.a.x) << (abs(u_input.b.x) % 32u), _wgslsmith_mult_i32(func_2(u_input.b.x, vec4<i32>(-27190i, u_input.a.x, -9721i, global0.e.a.x)).b, -3825i | global0.c.x))), vec3<bool>(false, !(~u_input.a.x <= global0.e.b), global0.b.x), _wgslsmith_sub_vec2_i32(_wgslsmith_mult_vec2_i32(select(-u_input.a, vec2<i32>(u_input.a.x, global0.e.a.x), global0.b.xz), _wgslsmith_div_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a.x, 23682i), vec2<i32>(-2147483647i, global0.e.a.x)), _wgslsmith_mult_vec2_i32(vec2<i32>(22269i, u_input.a.x), u_input.a))), -vec2<i32>(u_input.a.x, 0i)), _wgslsmith_f_op_f32(1285f + -600f), global0.e);
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -164f);
    let var_3 = u_input.d.x;
    var var_4 = func_2(~72947u, _wgslsmith_add_vec4_i32(var_1.e.a, reverseBits(reverseBits(global0.e.a))));
    return func_2(1u, _wgslsmith_mod_vec4_i32(global0.e.a, vec4<i32>(min(u_input.a.x, u_input.a.x), var_1.a.b, 1i, var_1.a.b << (1551u % 32u)) << (((vec4<u32>(var_4.a.x, 1u, 83430u, u_input.c.x) & vec4<u32>(var_3, 4294967295u, 13703u, var_4.a.x)) & ~vec4<u32>(4294967295u, global0.a.a.x, 4294967295u, u_input.c.x)) % vec4<u32>(32u))));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_3) -> Struct_1 {
    var var_0 = arg_1.a.a.x;
    var_0 = ~select(_wgslsmith_mod_u32(func_2(1u, vec4<i32>(-1i, 1639i, arg_0.b, global0.c.x)).a.x, _wgslsmith_dot_vec3_u32(~u_input.c, ~vec3<u32>(arg_1.a.a.x, 4294967295u, u_input.b.x))), arg_1.a.a.x, true);
    var var_1 = 927f;
    let var_2 = u_input.b.yz;
    var var_3 = _wgslsmith_dot_vec3_u32(~(firstLeadingBit(u_input.c) ^ (vec3<u32>(1u, u_input.b.x, u_input.c.x) | abs(u_input.b))), ~u_input.b ^ min(_wgslsmith_div_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(132498u, var_2.x, u_input.d.x), vec3<u32>(1u, 4294967295u, arg_1.a.a.x)), vec3<u32>(3176u, var_2.x, 14104u)), ~(~vec3<u32>(31637u, 6302u, 1u))));
    return Struct_1(vec2<u32>(44014u, 41695u), arg_1.e.a.x);
}

fn func_6(arg_0: f32, arg_1: Struct_3, arg_2: vec3<bool>, arg_3: vec2<i32>) -> Struct_3 {
    global0 = arg_1;
    let var_0 = _wgslsmith_add_u32(1u, _wgslsmith_div_u32(_wgslsmith_add_u32(18074u, ~55546u), countOneBits(firstTrailingBit(~51240u))));
    var var_1 = Struct_3(func_2(~65901u, arg_1.e.a), select(vec3<bool>(!(false || arg_2.x), all(!vec3<bool>(arg_1.b.x, false, global0.b.x)), arg_1.b.x), !arg_2, !select(true, global0.d <= arg_0, !arg_2.x)), ~(-global0.e.a.wy | reverseBits(vec2<i32>(16258i, 0i))) >> (_wgslsmith_div_vec2_u32(min(~vec2<u32>(41071u, arg_1.a.a.x), vec2<u32>(1u, 0u)), _wgslsmith_mult_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(99682u, u_input.b.x), global0.a.a), vec2<u32>(var_0, u_input.b.x))) % vec2<u32>(32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-480f * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(arg_0, global0.d)))))), global0.e);
    let var_2 = _wgslsmith_mult_vec2_i32(_wgslsmith_clamp_vec2_i32(_wgslsmith_div_vec2_i32(~vec2<i32>(arg_3.x, -11721i), abs(u_input.a)), firstLeadingBit(select(vec2<i32>(-2147483647i, arg_1.e.b), u_input.a, select(var_1.b.xz, arg_1.b.yy, var_1.b.x))), ~reverseBits(global0.c)), vec2<i32>(~_wgslsmith_div_i32(~(-28148i), -55749i), arg_1.e.b));
    let var_3 = true;
    return Struct_3(Struct_1(u_input.b.zz, func_1().b), var_1.b, vec2<i32>(firstLeadingBit(u_input.a.x & func_2(0u, vec4<i32>(global0.a.b, var_1.c.x, var_1.a.b, u_input.a.x)).b), ~(~var_2.x)), _wgslsmith_f_op_f32(min(var_1.d, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.d + -353f), _wgslsmith_f_op_f32(abs(-750f)))))), global0.e);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_6(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(459f))), Struct_3(func_5(global0.e, Struct_3(func_1(), select(global0.b, vec3<bool>(global0.b.x, false, global0.b.x), global0.b.x), u_input.a, _wgslsmith_f_op_f32(global0.d - global0.d), global0.e)), vec3<bool>(false, false, any(global0.b.zx)), vec2<i32>(firstTrailingBit(-2147483647i), u_input.a.x), global0.d, global0.e), vec3<bool>(global0.b.x, false, false), -_wgslsmith_clamp_vec2_i32(vec2<i32>(countOneBits(global0.e.a.x), 1i), vec2<i32>(u_input.a.x ^ -40155i, 0i), u_input.a));
    var var_0 = Struct_4(select(select(!(global0.d == -840f), !(-158f == global0.d), true), false, global0.b.x), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(global0.d, -711f)))))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(429f, global0.d) + vec2<f32>(global0.d, -847f)), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(1398f, 1000f), vec2<f32>(global0.d, global0.d)))))), true)), global0.b.x, func_5(func_6(_wgslsmith_f_op_f32(-global0.d), Struct_3(Struct_1(vec2<u32>(global0.a.a.x, 4294967295u), 41412i), !global0.b, select(global0.c, global0.c, global0.b.xx), -812f, func_6(global0.d, Struct_3(Struct_1(vec2<u32>(u_input.c.x, global0.a.a.x), -2147483647i), vec3<bool>(true, global0.b.x, global0.b.x), u_input.a, global0.d, global0.e), global0.b, vec2<i32>(u_input.a.x, 2147483647i)).e), !select(global0.b, global0.b, false), _wgslsmith_div_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(1i, 2147483647i), vec2<i32>(global0.a.b, -33540i)), global0.c)).e, func_6(_wgslsmith_f_op_f32(sign(-1292f)), func_6(global0.d, func_6(1625f, Struct_3(global0.a, vec3<bool>(global0.b.x, false, global0.b.x), global0.e.a.ww, global0.d, Struct_2(global0.e.a, global0.e.a.x)), vec3<bool>(global0.b.x, true, true), vec2<i32>(u_input.a.x, global0.a.b)), func_6(global0.d, Struct_3(global0.a, global0.b, u_input.a, global0.d, global0.e), global0.b, vec2<i32>(u_input.a.x, global0.c.x)).b, vec2<i32>(-1i, 2147483647i)), global0.b, u_input.a)), Struct_2(global0.e.a, ~(_wgslsmith_mod_i32(global0.c.x, global0.e.b) << (0u % 32u))));
    var_0 = Struct_4(-426f > _wgslsmith_f_op_f32(-global0.d), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(step(var_0.b.x, -1000f)), _wgslsmith_f_op_f32(min(-1073f, 395f))))), global0.b.x, global0.a, var_0.e);
    var_0 = Struct_4(false, var_0.b, false || func_3(), var_0.d, Struct_2(-global0.e.a, abs(2147483647i) >> (_wgslsmith_mult_u32(~0u, func_1().a.x) % 32u)));
    var var_1 = vec2<bool>(any(select(!global0.b, select(global0.b, vec3<bool>(true, var_0.c, true), true), vec3<bool>(true, true, true))) || global0.b.x, !global0.b.x);
    let var_2 = ~_wgslsmith_clamp_vec3_i32(var_0.e.a.wxy, reverseBits(vec3<i32>(global0.a.b << (u_input.b.x % 32u), _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, var_0.e.b), global0.e.a.zw), _wgslsmith_add_i32(var_0.d.b, var_0.e.b))), vec3<i32>(-_wgslsmith_sub_i32(1i, var_0.d.b), _wgslsmith_add_i32(-global0.c.x, -2405i), u_input.a.x));
    let var_3 = 2147483647i;
    let var_4 = !vec2<bool>(any(vec4<bool>(all(vec4<bool>(global0.b.x, false, false, true)), any(global0.b), true, any(vec4<bool>(false, true, false, false)))), all(select(select(vec4<bool>(true, true, global0.b.x, var_1.x), vec4<bool>(global0.b.x, var_1.x, false, var_1.x), true), vec4<bool>(false, var_0.a, false, false), false)));
    let var_5 = Struct_4(!(!(!func_4(false, Struct_4(false, var_0.b, false, global0.a, Struct_2(vec4<i32>(global0.c.x, -14461i, 20248i, -2147483647i), var_2.x)), false))), var_0.b, true, Struct_1(vec2<u32>(var_0.d.a.x, func_2(4294967295u, vec4<i32>(-1036i, var_2.x, var_0.e.b, 1i)).a.x), -1i), global0.e);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1222f, global0.d, -317f, var_5.b.x)))))))), abs(global0.c.x));
}

