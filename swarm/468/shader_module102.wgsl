struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: vec4<i32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 23> = array<Struct_3, 23>(Struct_3(Struct_1(vec2<i32>(-61001i, 1i))), Struct_3(Struct_1(vec2<i32>(i32(-2147483648), -20570i))), Struct_3(Struct_1(vec2<i32>(-29637i, -6472i))), Struct_3(Struct_1(vec2<i32>(0i, 1i))), Struct_3(Struct_1(vec2<i32>(20196i, -71641i))), Struct_3(Struct_1(vec2<i32>(i32(-2147483648), i32(-2147483648)))), Struct_3(Struct_1(vec2<i32>(i32(-2147483648), 1i))), Struct_3(Struct_1(vec2<i32>(1i, -30360i))), Struct_3(Struct_1(vec2<i32>(1i, 53350i))), Struct_3(Struct_1(vec2<i32>(17664i, -155i))), Struct_3(Struct_1(vec2<i32>(5222i, -16171i))), Struct_3(Struct_1(vec2<i32>(-2765i, -17245i))), Struct_3(Struct_1(vec2<i32>(-1i, 6893i))), Struct_3(Struct_1(vec2<i32>(1i, 3925i))), Struct_3(Struct_1(vec2<i32>(0i, 13509i))), Struct_3(Struct_1(vec2<i32>(i32(-2147483648), 19453i))), Struct_3(Struct_1(vec2<i32>(31050i, 2147483647i))), Struct_3(Struct_1(vec2<i32>(1i, 1i))), Struct_3(Struct_1(vec2<i32>(2147483647i, 0i))), Struct_3(Struct_1(vec2<i32>(-19154i, 22459i))), Struct_3(Struct_1(vec2<i32>(-29946i, 68624i))), Struct_3(Struct_1(vec2<i32>(2147483647i, -6677i))), Struct_3(Struct_1(vec2<i32>(-53291i, 1i))));

var<private> global1: bool;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> i32 {
    var var_0 = Struct_2(Struct_1(_wgslsmith_sub_vec2_i32(-arg_1.a ^ max(vec2<i32>(-1513i, 23011i), u_input.b), _wgslsmith_sub_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(2147483647i, arg_2.a.x), u_input.b), arg_0.a))), vec3<bool>(true && (_wgslsmith_f_op_f32(min(803f, -570f)) >= _wgslsmith_f_op_f32(ceil(2002f))), select(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, arg_1.a.x, arg_1.a.x, 41798i), vec4<i32>(2147483647i, arg_1.a.x, arg_1.a.x, 0i)) > 1i, false, false), all(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), false), vec3<bool>(true, true, true)))), ~(~vec4<i32>(select(arg_0.a.x, -1i, true), ~(-1i), firstTrailingBit(-3666i), i32(-1i) * -2624i)));
    let var_1 = global0[_wgslsmith_index_u32(u_input.c.x, 23u)];
    var var_2 = Struct_2(arg_1, select(var_0.b, !var_0.b, any(var_0.b)), (vec4<i32>(~(-2147483647i), firstTrailingBit(var_1.a.a.x), 31682i & var_1.a.a.x, _wgslsmith_clamp_i32(-2147483647i, var_1.a.a.x, -30949i)) >> (_wgslsmith_mult_vec4_u32(vec4<u32>(41365u, 4294967295u, u_input.c.x, u_input.c.x), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.c.x, u_input.c.x, 101235u, 97036u), vec4<u32>(u_input.c.x, 4294967295u, 45191u, 1u))) % vec4<u32>(32u))) ^ -vec4<i32>(arg_1.a.x, arg_2.a.x, arg_1.a.x, _wgslsmith_mod_i32(arg_1.a.x, arg_2.a.x)));
    var var_3 = _wgslsmith_dot_vec4_i32(countOneBits(var_2.c), vec4<i32>(arg_1.a.x, firstLeadingBit(arg_2.a.x), firstLeadingBit(min(arg_1.a.x, _wgslsmith_dot_vec4_i32(var_0.c, vec4<i32>(10148i, arg_0.a.x, var_2.a.a.x, arg_2.a.x)))), -(~(-19733i))));
    var var_4 = Struct_2(Struct_1(-arg_1.a ^ min(-var_2.a.a, arg_2.a & vec2<i32>(var_2.a.a.x, var_2.a.a.x))), !var_2.b, reverseBits(-var_2.c));
    return -1i;
}

fn func_2(arg_0: Struct_3, arg_1: vec2<bool>, arg_2: Struct_1, arg_3: vec2<u32>) -> Struct_1 {
    var var_0 = _wgslsmith_add_vec2_u32(u_input.c, min(countOneBits(reverseBits(reverseBits(vec2<u32>(arg_3.x, 37291u)))), vec2<u32>(u_input.a, arg_3.x)));
    var var_1 = Struct_2(arg_2, select(select(!(!vec3<bool>(false, true, arg_1.x)), !vec3<bool>(arg_1.x, true, arg_1.x), arg_1.x), select(!(!vec3<bool>(arg_1.x, arg_1.x, arg_1.x)), select(!vec3<bool>(arg_1.x, arg_1.x, arg_1.x), select(vec3<bool>(arg_1.x, arg_1.x, arg_1.x), vec3<bool>(true, false, true), vec3<bool>(arg_1.x, arg_1.x, arg_1.x)), true), !(arg_0.a.a.x <= u_input.b.x)), arg_1.x), vec4<i32>(arg_2.a.x, _wgslsmith_mult_i32(func_3(Struct_1(arg_0.a.a), arg_0.a, Struct_1(arg_0.a.a)), arg_0.a.a.x), 51311i, ~arg_2.a.x));
    global1 = !select(all(vec4<bool>(true, true, true, true)), false, false);
    let var_2 = var_1.c.xxy;
    var_0 = ~firstLeadingBit(~_wgslsmith_add_vec2_u32(arg_3, vec2<u32>(1u, var_0.x)));
    return arg_2;
}

fn func_4(arg_0: i32, arg_1: vec2<u32>, arg_2: Struct_1) -> Struct_2 {
    let var_0 = !(!vec3<bool>(false, any(vec4<bool>(true, true, true, true)), true));
    global0 = array<Struct_3, 23>();
    global1 = var_0.x && all(var_0);
    var var_1 = abs(select(~(~vec3<u32>(0u, arg_1.x, 28850u)), firstLeadingBit(~vec3<u32>(0u, u_input.a, arg_1.x)), all(vec4<bool>(false, false, true, false)))) << (~reverseBits(vec3<u32>(1u, arg_1.x, ~u_input.a)) % vec3<u32>(32u));
    var var_2 = -arg_2.a;
    return Struct_2(func_2(Struct_3(Struct_1(vec2<i32>(u_input.b.x, -2147483647i))), !var_0.yx, Struct_1(u_input.b), _wgslsmith_div_vec2_u32(max(var_1.zz, reverseBits(vec2<u32>(1u, var_1.x))), firstLeadingBit(max(u_input.c, arg_1)))), var_0, abs(vec4<i32>(arg_2.a.x, arg_0, u_input.b.x, arg_0)));
}

fn func_5(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: Struct_1) -> vec2<f32> {
    var var_0 = global0[_wgslsmith_index_u32(u_input.a, 23u)];
    let var_1 = reverseBits(vec4<i32>(-46456i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, 0i) << (vec2<u32>(u_input.a, u_input.c.x) % vec2<u32>(32u)), max(arg_2.a & vec2<i32>(-2147483647i, -1i), abs(vec2<i32>(-1i, arg_1.a.a.x)))), -7046i, arg_2.a.x));
    global1 = !(!(!arg_1.b.x));
    var var_2 = true;
    var var_3 = Struct_3(arg_1.a);
    return _wgslsmith_f_op_vec2_f32(select(arg_0.wz, _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_0.x, arg_0.x)) - arg_0.x), _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(-850f - arg_0.x))))), func_4(max(var_0.a.a.x, _wgslsmith_mod_i32(1i, var_0.a.a.x)), _wgslsmith_add_vec2_u32(_wgslsmith_clamp_vec2_u32(u_input.c, ~u_input.c, ~vec2<u32>(1u, 90406u)), u_input.c), func_4(11374i, min(vec2<u32>(u_input.a, 1u), ~vec2<u32>(52373u, u_input.c.x)), func_4(var_1.x, u_input.c, func_2(global0[_wgslsmith_index_u32(29271u, 23u)], arg_1.b.yy, arg_1.a, u_input.c)).a).a).b.xy));
}

fn func_6(arg_0: vec2<f32>) -> f32 {
    global0 = array<Struct_3, 23>();
    let var_0 = u_input.b.x;
    var var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-2386f, arg_0.x, _wgslsmith_f_op_f32(-arg_0.x), -546f) + vec4<f32>(arg_0.x, 802f, arg_0.x, -1820f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-533f * arg_0.x), -1000f, _wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(673f * arg_0.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0.x, _wgslsmith_f_op_f32(arg_0.x - 215f), arg_0.x, _wgslsmith_f_op_f32(arg_0.x * arg_0.x)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-523f, -190f, arg_0.x, arg_0.x), vec4<f32>(-240f, arg_0.x, 1835f, 1492f), vec4<bool>(true, true, true, true))), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false)), select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, true), true))))));
    var var_2 = max(vec4<u32>(min(4294967295u, 0u), _wgslsmith_add_u32(~9517u << ((65730u ^ u_input.a) % 32u), 4294967295u), 4294967295u, countOneBits(_wgslsmith_add_u32(u_input.a, select(u_input.a, u_input.a, false)))), _wgslsmith_mult_vec4_u32(vec4<u32>(~u_input.a, u_input.a, 1u, 1u), ~(~(vec4<u32>(0u, u_input.a, 23376u, u_input.a) | vec4<u32>(0u, 1u, u_input.c.x, 4294967295u)))));
    var var_3 = Struct_2(func_4(var_0 & firstTrailingBit(var_0), vec2<u32>(select(abs(var_2.x), reverseBits(1u), true), var_2.x), Struct_1(-u_input.b)).a, vec3<bool>(any(vec2<bool>(true, true)), true, _wgslsmith_div_i32(u_input.b.x, ~u_input.b.x) != 1i), vec4<i32>(~reverseBits(-u_input.b.x), min(19455i, _wgslsmith_add_i32(firstTrailingBit(var_0), var_0)), ~u_input.b.x, ~(u_input.b.x | -24571i) & (~(-43772i) << (var_2.x % 32u))));
    return _wgslsmith_f_op_f32(trunc(var_1.x));
}

fn func_1() -> bool {
    global0 = array<Struct_3, 23>();
    var var_0 = _wgslsmith_f_op_f32(func_6(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_5(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(165f, 1000f, 122f, -417f), vec4<f32>(-714f, -982f, 1467f, 972f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 2000f, -125f, 677f))), func_4(1i, _wgslsmith_mod_vec2_u32(vec2<u32>(19715u, 0u), vec2<u32>(u_input.c.x, u_input.a)), func_2(global0[_wgslsmith_index_u32(u_input.c.x, 23u)], vec2<bool>(false, true), Struct_1(vec2<i32>(u_input.b.x, u_input.b.x)), vec2<u32>(0u, 0u))), func_2(Struct_3(Struct_1(vec2<i32>(38653i, u_input.b.x))), vec2<bool>(true, true), Struct_1(vec2<i32>(u_input.b.x, -1i)), vec2<u32>(0u, u_input.c.x)))))));
    let var_1 = 77037i;
    let var_2 = true;
    global1 = false;
    return false;
}

fn func_7(arg_0: vec4<u32>, arg_1: f32, arg_2: bool) -> u32 {
    let var_0 = abs(u_input.b.x);
    global0 = array<Struct_3, 23>();
    var var_1 = Struct_2(func_2(Struct_3(func_4(u_input.b.x | 42014i, u_input.c, func_4(-2147483647i, arg_0.ww, Struct_1(vec2<i32>(1i, 44917i))).a).a), select(!(!vec2<bool>(arg_2, false)), vec2<bool>(func_4(-43773i, vec2<u32>(u_input.c.x, 1u), Struct_1(u_input.b)).b.x, true), arg_2), func_4(-u_input.b.x, select(abs(arg_0.xy), vec2<u32>(u_input.a, u_input.a), !vec2<bool>(arg_2, false)), func_2(global0[_wgslsmith_index_u32(u_input.c.x, 23u)], vec2<bool>(arg_2, true), func_2(Struct_3(Struct_1(u_input.b)), vec2<bool>(arg_2, true), Struct_1(vec2<i32>(var_0, -2147483647i)), arg_0.yy), arg_0.yz)).a, countOneBits(_wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, arg_0.x), u_input.c ^ u_input.c))), vec3<bool>(true && all(!vec2<bool>(arg_2, false)), arg_2, false), _wgslsmith_mult_vec4_i32(abs((vec4<i32>(u_input.b.x, var_0, var_0, 1i) >> (arg_0 % vec4<u32>(32u))) << (vec4<u32>(arg_0.x, 4294967295u, 10543u, u_input.c.x) % vec4<u32>(32u))), vec4<i32>(0i, 0i, max(~var_0, func_3(Struct_1(u_input.b), Struct_1(vec2<i32>(u_input.b.x, -31882i)), Struct_1(vec2<i32>(u_input.b.x, u_input.b.x)))), 27637i)));
    global0 = array<Struct_3, 23>();
    var var_2 = arg_1;
    return min(16216u, u_input.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_add_vec3_u32(vec3<u32>(~(max(96710u, u_input.a) ^ 49900u), u_input.c.x, 0u), ~abs(select(vec3<u32>(72583u, u_input.c.x, u_input.a), vec3<u32>(u_input.a, u_input.c.x, u_input.a), vec3<bool>(true, false, true))) << (vec3<u32>(func_7(_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, u_input.a, 4294967295u, u_input.c.x), vec4<u32>(u_input.a, 1u, 1u, u_input.a)), -657f, func_1()), 57033u, ~func_7(vec4<u32>(u_input.a, 1u, u_input.c.x, 0u), 905f, true)) % vec3<u32>(32u)));
    global1 = true;
    let var_1 = select(func_4(u_input.b.x << (_wgslsmith_clamp_u32(countOneBits(1u), u_input.c.x, _wgslsmith_clamp_u32(u_input.a, 4294967295u, u_input.c.x)) % 32u), u_input.c, Struct_1(u_input.b ^ vec2<i32>(u_input.b.x, 0i))).b, select(vec3<bool>(func_4(_wgslsmith_mod_i32(-12757i, u_input.b.x), vec2<u32>(u_input.a, 44149u), Struct_1(u_input.b)).b.x, true, false), select(vec3<bool>(false, true, true), select(func_4(u_input.b.x, vec2<u32>(u_input.a, 0u), Struct_1(vec2<i32>(u_input.b.x, u_input.b.x))).b, vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, false, true))), false), true), !select(vec3<bool>(true, true, true), func_4(countOneBits(u_input.b.x), u_input.c, Struct_1(u_input.b)).b, vec3<bool>(true, -11291i == u_input.b.x, false)));
    var var_2 = Struct_2(func_4(_wgslsmith_add_i32(countOneBits(-u_input.b.x), u_input.b.x), vec2<u32>(_wgslsmith_mult_u32(4294967295u, countOneBits(var_0.x)), _wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(u_input.c.x, 0u, 1u)), ~var_0)), func_2(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.c, vec2<u32>(var_0.x, 0u)), 23u)], select(vec2<bool>(false, true), func_4(u_input.b.x, vec2<u32>(4294967295u, u_input.c.x), Struct_1(u_input.b)).b.yz, var_1.xy), Struct_1(vec2<i32>(u_input.b.x, 0i)), abs(var_0.xx))).a, !select(var_1, select(vec3<bool>(false, true, false), select(vec3<bool>(true, false, false), var_1, var_1), u_input.b.x <= u_input.b.x), var_1.x), -(vec4<i32>(~u_input.b.x, u_input.b.x, 2147483647i << (var_0.x % 32u), -8305i) | abs(-vec4<i32>(u_input.b.x, -1i, 40559i, 16560i))));
    var var_3 = _wgslsmith_sub_vec2_u32(~_wgslsmith_add_vec2_u32(vec2<u32>(1u, u_input.a >> (u_input.c.x % 32u)), ~(u_input.c | vec2<u32>(0u, var_0.x))), vec2<u32>(46552u, 4450u) & abs(u_input.c));
    var var_4 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec4_u32(vec4<u32>(25053u, ~(~var_3.x), var_0.x, _wgslsmith_add_u32(var_0.x & var_3.x, min(u_input.a, u_input.c.x))), firstLeadingBit(min(vec4<u32>(15386u, 1u, 43252u, u_input.a), vec4<u32>(u_input.c.x, var_3.x, 1u, u_input.a)) ^ ~vec4<u32>(var_3.x, var_3.x, 38047u, 0u))), u_input.a, ~1i ^ firstTrailingBit(-1i), ~(~_wgslsmith_sub_vec4_u32(vec4<u32>(0u, u_input.c.x, 4294967295u, var_3.x), vec4<u32>(4294967295u, u_input.a, u_input.a, u_input.c.x))) & vec4<u32>(var_0.x, firstTrailingBit(~1u), 1u, ~var_0.x));
}

