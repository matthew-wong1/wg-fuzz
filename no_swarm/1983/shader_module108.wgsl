struct Struct_1 {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec2<bool>,
    d: i32,
    e: i32,
}

struct Struct_2 {
    a: u32,
    b: i32,
    c: vec4<u32>,
    d: vec4<bool>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<u32>,
    c: Struct_1,
    d: Struct_2,
    e: Struct_2,
}

struct Struct_5 {
    a: Struct_4,
    b: vec4<bool>,
    c: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<u32>,
    c: f32,
    d: f32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 8> = array<vec2<i32>, 8>(vec2<i32>(1i, 42111i), vec2<i32>(14855i, -28069i), vec2<i32>(1i, 1i), vec2<i32>(-17511i, 0i), vec2<i32>(-10657i, 7888i), vec2<i32>(1i, i32(-2147483648)), vec2<i32>(-16888i, i32(-2147483648)), vec2<i32>(-2042i, 1i));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> vec3<i32> {
    var var_0 = select(select(vec2<bool>(true, true), vec2<bool>(true || any(vec3<bool>(false, true, false)), true), select(vec2<bool>(true, true), vec2<bool>(true, any(vec3<bool>(false, true, false))), true)), !select(vec2<bool>(all(vec2<bool>(false, false)), any(vec3<bool>(false, false, true))), vec2<bool>(true, true), vec2<bool>(true, true)), true);
    var var_1 = firstLeadingBit(~_wgslsmith_mult_i32(u_input.a.x, -22588i));
    var_1 = ~_wgslsmith_div_i32(u_input.a.x & u_input.a.x, -1i);
    var_1 = _wgslsmith_mult_i32(i32(-1i) * -1i, -44628i);
    let var_2 = Struct_2(_wgslsmith_dot_vec3_u32(abs(vec3<u32>(1u, 1u, 1u)), firstLeadingBit(~vec3<u32>(0u, 0u, 18339u))), reverseBits(2147483647i) | ~(-u_input.a.x << (41209u % 32u)), firstTrailingBit(max(~(~vec4<u32>(13744u, 4294967295u, 31199u, 16470u)), max(_wgslsmith_mod_vec4_u32(vec4<u32>(1u, 29828u, 4294967295u, 24975u), vec4<u32>(28679u, 19024u, 53988u, 1u)), vec4<u32>(1u, 1u, 1u, 1u)))), select(vec4<bool>(!(var_0.x && var_0.x), all(!vec3<bool>(var_0.x, var_0.x, var_0.x)), u_input.a.x >= countOneBits(11136i), true), !vec4<bool>(any(vec4<bool>(true, var_0.x, false, var_0.x)), all(vec2<bool>(true, var_0.x)), true, true), false), Struct_1(vec3<i32>(max(u_input.a.x, 0i) | u_input.b.x, -4896i, i32(-1i) * -1i), ~reverseBits(~vec4<u32>(0u, 0u, 60574u, 1u)), vec2<bool>(all(vec3<bool>(false, false, var_0.x)), var_0.x), -2147483647i, u_input.a.x));
    return (vec3<i32>(-1i) * -vec3<i32>(u_input.a.x, ~(-30631i), firstTrailingBit(-27693i))) >> (~(~firstLeadingBit(~vec3<u32>(14038u, 0u, var_2.a))) % vec3<u32>(32u));
}

fn func_2(arg_0: bool, arg_1: vec4<bool>, arg_2: vec4<u32>) -> f32 {
    let var_0 = arg_2.wxy;
    let var_1 = Struct_4(Struct_3(Struct_1(vec3<i32>(u_input.b.x, -2147483647i, u_input.b.x) & func_3(), vec4<u32>(arg_2.x ^ 0u, arg_2.x, 17856u, 38294u), select(vec2<bool>(arg_0, false), !vec2<bool>(arg_1.x, true), any(arg_1.yy)), -48504i << (~var_0.x % 32u), 56473i), _wgslsmith_f_op_f32(f32(-1f) * -160f)), arg_2, Struct_1(_wgslsmith_clamp_vec3_i32(~vec3<i32>(-8325i, 1i, -1i), vec3<i32>(25465i, u_input.b.x & 2826i, _wgslsmith_sub_i32(u_input.a.x, u_input.b.x)), _wgslsmith_div_vec3_i32(~vec3<i32>(-19533i, -1i, 26892i), -vec3<i32>(u_input.b.x, u_input.b.x, -1i))), select(~(~arg_2), ~arg_2, all(arg_1)), vec2<bool>(arg_1.x, arg_0), _wgslsmith_sub_i32(reverseBits(countOneBits(u_input.a.x)), func_3().x), reverseBits(~(-19859i))), Struct_2(_wgslsmith_sub_u32(firstLeadingBit(var_0.x), ~4294967295u) | arg_2.x, 1i, arg_2, select(select(!arg_1, !vec4<bool>(true, arg_0, arg_0, arg_1.x), any(vec3<bool>(false, false, false))), arg_1, arg_1.x), Struct_1(-(vec3<i32>(-1i, u_input.a.x, 0i) & vec3<i32>(-27093i, 27943i, u_input.a.x)), vec4<u32>(var_0.x, 0u, 32u, arg_2.x << (var_0.x % 32u)), select(vec2<bool>(true, false), select(vec2<bool>(arg_0, arg_0), arg_1.ww, vec2<bool>(false, arg_1.x)), true), 2024i & u_input.a.x, u_input.b.x)), Struct_2(select(arg_2.x, var_0.x, arg_1.x), -(~u_input.b.x), ~(~arg_2), arg_1, Struct_1(_wgslsmith_mod_vec3_i32(vec3<i32>(31288i, u_input.b.x, 1i), vec3<i32>(u_input.a.x, u_input.a.x, 39631i) | vec3<i32>(-1i, u_input.b.x, u_input.b.x)), firstLeadingBit(arg_2), select(!arg_1.yz, select(arg_1.xz, vec2<bool>(true, true), arg_1.wx), select(vec2<bool>(arg_0, true), arg_1.yz, arg_1.zw)), select(reverseBits(40612i), 26069i, all(arg_1.zww)), _wgslsmith_dot_vec2_i32(-global0[_wgslsmith_index_u32(1u, 8u)], _wgslsmith_mult_vec2_i32(u_input.a, u_input.a)))));
    global0 = array<vec2<i32>, 8>();
    let var_2 = var_1;
    var var_3 = var_1;
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-1152f)), -419f) - _wgslsmith_f_op_f32(trunc(-1210f)));
}

fn func_1(arg_0: i32, arg_1: Struct_4) -> Struct_5 {
    let var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a.b)) + arg_1.a.b), _wgslsmith_f_op_f32(func_2(true, arg_1.e.d, arg_1.a.a.b))))));
    let var_1 = arg_1.e;
    global0 = array<vec2<i32>, 8>();
    global0 = array<vec2<i32>, 8>();
    global0 = array<vec2<i32>, 8>();
    return Struct_5(arg_1, !select(!(!arg_1.e.d), var_1.d, true || any(arg_1.e.e.c)), 7419u);
}

fn func_4(arg_0: u32, arg_1: Struct_5) -> Struct_4 {
    let var_0 = Struct_1(arg_1.a.d.e.a, ~arg_1.a.e.c, func_1(~0i, func_1(0i, arg_1.a).a).a.e.e.c, _wgslsmith_dot_vec4_i32(select(_wgslsmith_mult_vec4_i32(-vec4<i32>(-34791i, u_input.b.x, arg_1.a.a.a.e, -2147483647i), _wgslsmith_div_vec4_i32(vec4<i32>(arg_1.a.a.a.d, arg_1.a.c.e, u_input.a.x, arg_1.a.e.e.a.x), vec4<i32>(arg_1.a.e.b, -2147483647i, 11328i, arg_1.a.d.b))), firstLeadingBit(~vec4<i32>(arg_1.a.a.a.a.x, 2147483647i, 85493i, 15491i)), arg_1.a.e.d.x), vec4<i32>(2147483647i, _wgslsmith_div_i32(-arg_1.a.e.e.d, 1i), _wgslsmith_dot_vec4_i32(abs(vec4<i32>(u_input.b.x, arg_1.a.e.b, 58909i, -9985i)), vec4<i32>(1i, u_input.b.x, -1i, -1i) >> (vec4<u32>(13206u, 1u, 4294967295u, arg_0) % vec4<u32>(32u))), 0i)), 17818i);
    var var_1 = arg_1.c;
    var_1 = ~(~(~var_0.b.x));
    let var_2 = !(!func_1(14037i, arg_1.a).b.x);
    var var_3 = select(var_0.a, countOneBits(vec3<i32>(24445i, _wgslsmith_div_i32(-38590i, u_input.a.x), arg_1.a.d.b)), false);
    return arg_1.a;
}

fn func_5(arg_0: Struct_4, arg_1: Struct_5) -> Struct_1 {
    var var_0 = Struct_2(max(arg_1.a.c.b.x, 1384u), 26440i, vec4<u32>(func_1(~arg_1.a.c.d, arg_0).a.a.a.b.x, _wgslsmith_mult_u32(func_4(1u, arg_1).b.x, 0u >> (arg_0.c.b.x % 32u)), ~arg_0.b.x, func_1(-1i, Struct_4(arg_1.a.a, arg_0.e.c, Struct_1(arg_0.d.e.a, vec4<u32>(0u, 69529u, 1u, arg_0.c.b.x), arg_0.d.e.c, arg_1.a.d.e.d, -56090i), Struct_2(arg_1.a.a.a.b.x, -5419i, vec4<u32>(0u, 1u, arg_0.d.a, arg_0.a.a.b.x), arg_1.a.d.d, arg_1.a.d.e), Struct_2(arg_1.c, arg_0.d.b, vec4<u32>(38677u, 11305u, arg_0.d.a, arg_0.e.a), arg_1.a.e.d, arg_0.d.e))).a.e.e.b.x << (arg_0.e.a % 32u)) << (func_1(-2147483647i, arg_1.a).a.b % vec4<u32>(32u)), !arg_0.d.d, arg_0.a.a);
    var var_1 = arg_1.a.e.e;
    var var_2 = u_input.b.x;
    let var_3 = arg_1.c;
    var_1 = Struct_1(func_3(), ~var_1.b, var_0.d.xw, -min(~_wgslsmith_dot_vec3_i32(vec3<i32>(-67099i, var_0.b, 0i), arg_1.a.a.a.a), _wgslsmith_sub_i32(firstLeadingBit(-10863i), arg_1.a.e.b)), u_input.b.x);
    return Struct_1(reverseBits(vec3<i32>(~u_input.b.x, abs(firstTrailingBit(-2147483647i)), ~(-17021i))), ~(~countOneBits(~vec4<u32>(16274u, 55403u, 70739u, arg_1.a.e.e.b.x))), vec2<bool>(arg_0.c.e >= (firstTrailingBit(var_1.d) & u_input.a.x), any(!func_4(30346u, Struct_5(arg_0, arg_1.a.d.d, arg_1.a.d.a)).d.e.c)), -14385i, arg_0.e.b);
}

fn func_6(arg_0: vec2<i32>, arg_1: Struct_3, arg_2: Struct_4) -> StorageBuffer {
    let var_0 = _wgslsmith_f_op_vec2_f32(round(vec2<f32>(769f, _wgslsmith_f_op_f32(f32(-1f) * -672f))));
    let var_1 = Struct_1(arg_1.a.a ^ vec3<i32>(-2147483647i, _wgslsmith_div_i32(-2147483647i, arg_2.e.e.a.x) << (13132u % 32u), arg_2.a.a.e), ~min(~arg_1.a.b, _wgslsmith_div_vec4_u32(abs(arg_2.a.a.b), func_5(Struct_4(Struct_3(arg_1.a, 345f), vec4<u32>(arg_2.e.a, arg_2.a.a.b.x, arg_1.a.b.x, arg_2.c.b.x), Struct_1(arg_2.d.e.a, arg_1.a.b, vec2<bool>(arg_1.a.c.x, arg_2.e.e.c.x), 38689i, 0i), Struct_2(0u, arg_1.a.a.x, vec4<u32>(61268u, arg_1.a.b.x, arg_2.d.c.x, 12248u), arg_2.d.d, Struct_1(vec3<i32>(arg_0.x, arg_0.x, u_input.b.x), arg_1.a.b, vec2<bool>(true, false), u_input.a.x, arg_0.x)), Struct_2(arg_2.c.b.x, 2147483647i, vec4<u32>(arg_1.a.b.x, 1u, arg_2.a.a.b.x, arg_1.a.b.x), vec4<bool>(arg_1.a.c.x, arg_1.a.c.x, arg_2.e.d.x, true), arg_2.c)), Struct_5(Struct_4(Struct_3(Struct_1(vec3<i32>(u_input.b.x, -8256i, -1i), vec4<u32>(0u, 59944u, 1u, 0u), arg_2.e.d.yz, -6178i, arg_2.d.e.e), var_0.x), vec4<u32>(arg_2.a.a.b.x, 1u, 1u, 1u), arg_1.a, Struct_2(arg_2.d.e.b.x, 0i, arg_2.a.a.b, vec4<bool>(true, arg_2.a.a.c.x, true, true), Struct_1(vec3<i32>(arg_0.x, -60243i, arg_1.a.d), arg_2.a.a.b, vec2<bool>(arg_1.a.c.x, arg_1.a.c.x), arg_0.x, 0i)), Struct_2(arg_2.a.a.b.x, arg_1.a.d, arg_2.c.b, arg_2.e.d, arg_2.a.a)), arg_2.e.d, 1u)).b)), !arg_2.a.a.c, 2147483647i, ~(arg_2.e.b >> (firstTrailingBit(arg_2.a.a.b.x) % 32u)));
    global0 = array<vec2<i32>, 8>();
    var var_2 = vec3<bool>(true, !(!arg_1.a.c.x), true);
    var_2 = arg_2.e.d.yxw;
    return StorageBuffer(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_2.a.b, -1000f, -809f))) * vec3<f32>(var_0.x, 2204f, var_0.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, 1000f, arg_1.b)), !all(vec4<bool>(false, arg_2.d.e.c.x, false, false)))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) + -809f), _wgslsmith_div_f32(471f, arg_2.a.b), func_4(var_1.b.x, Struct_5(Struct_4(Struct_3(var_1, arg_1.b), arg_1.a.b, arg_1.a, arg_2.e, Struct_2(arg_2.a.a.b.x, 0i, var_1.b, vec4<bool>(true, true, true, true), Struct_1(var_1.a, vec4<u32>(37682u, 75951u, 4141u, arg_2.e.a), var_2.yy, 0i, 0i))), vec4<bool>(false, arg_2.a.a.c.x, arg_1.a.c.x, arg_2.c.c.x), arg_2.b.x)).a.b)), ~_wgslsmith_clamp_vec3_u32(~arg_2.b.yxz, ~(~arg_2.e.e.b.www), vec3<u32>(countOneBits(1u), ~arg_2.c.b.x, _wgslsmith_mod_u32(arg_2.d.e.b.x, 71373u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_2.a.b)))) * arg_1.b), arg_2.a.b, vec4<f32>(_wgslsmith_f_op_f32(select(arg_2.a.b, arg_1.b, !(!var_2.x))), _wgslsmith_f_op_f32(-var_0.x), arg_2.a.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.a.b) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(916f - arg_2.a.b))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<i32>, 8>();
    global0 = array<vec2<i32>, 8>();
    let var_0 = vec2<bool>(true, any(vec3<bool>(false, true, false)));
    let var_1 = ~(~countOneBits(vec4<u32>(_wgslsmith_mod_u32(31592u, 4294967295u), 1u, _wgslsmith_clamp_u32(55332u, 6623u, 1u), 1u)));
    global0 = array<vec2<i32>, 8>();
    let x = u_input.a;
    s_output = func_6(_wgslsmith_mod_vec2_i32(_wgslsmith_div_vec2_i32(global0[_wgslsmith_index_u32(~min(42021u, 5152u), 8u)], vec2<i32>(-21536i, _wgslsmith_clamp_i32(u_input.b.x, -10967i, 50668i))), u_input.a), Struct_3(func_5(func_4(var_1.x & var_1.x, func_1(-1i, Struct_4(Struct_3(Struct_1(vec3<i32>(u_input.b.x, 47064i, u_input.b.x), var_1, vec2<bool>(false, var_0.x), 684i, u_input.a.x), -1252f), vec4<u32>(var_1.x, 13156u, var_1.x, 4294967295u), Struct_1(vec3<i32>(u_input.b.x, 2147483647i, u_input.a.x), vec4<u32>(var_1.x, 0u, var_1.x, var_1.x), var_0, 2147483647i, u_input.a.x), Struct_2(70638u, u_input.a.x, var_1, vec4<bool>(true, false, var_0.x, true), Struct_1(vec3<i32>(u_input.a.x, -2147483647i, u_input.a.x), var_1, var_0, -1i, 1i)), Struct_2(0u, -8423i, var_1, vec4<bool>(var_0.x, false, true, true), Struct_1(vec3<i32>(-9507i, u_input.b.x, 0i), var_1, var_0, -30815i, 21611i))))), Struct_5(func_1(u_input.a.x, Struct_4(Struct_3(Struct_1(vec3<i32>(u_input.a.x, -1i, -1i), var_1, vec2<bool>(var_0.x, var_0.x), 0i, u_input.b.x), 507f), var_1, Struct_1(vec3<i32>(u_input.a.x, 32509i, u_input.b.x), vec4<u32>(43729u, var_1.x, 4294967295u, 23150u), var_0, -1i, u_input.b.x), Struct_2(22687u, u_input.b.x, vec4<u32>(var_1.x, var_1.x, 83071u, 0u), vec4<bool>(var_0.x, true, false, var_0.x), Struct_1(vec3<i32>(u_input.b.x, u_input.a.x, u_input.a.x), var_1, var_0, 36712i, -2147483647i)), Struct_2(var_1.x, u_input.b.x, var_1, vec4<bool>(true, var_0.x, var_0.x, true), Struct_1(vec3<i32>(0i, 1i, -1i), vec4<u32>(var_1.x, var_1.x, 21868u, var_1.x), vec2<bool>(var_0.x, var_0.x), u_input.b.x, -76188i)))).a, select(vec4<bool>(true, var_0.x, false, false), vec4<bool>(false, var_0.x, false, false), vec4<bool>(var_0.x, var_0.x, true, var_0.x)), var_1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -688f))) + _wgslsmith_div_f32(-657f, _wgslsmith_f_op_f32(1000f + -1405f)))), func_4(_wgslsmith_sub_u32(~var_1.x, 1u >> (_wgslsmith_add_u32(var_1.x, 10744u) % 32u)), func_1(reverseBits(-u_input.b.x), Struct_4(Struct_3(Struct_1(vec3<i32>(u_input.b.x, -2147483647i, u_input.b.x), var_1, vec2<bool>(var_0.x, false), u_input.a.x, u_input.a.x), -1372f), vec4<u32>(63425u, 55441u, 0u, var_1.x), Struct_1(vec3<i32>(u_input.b.x, 2147483647i, u_input.a.x), vec4<u32>(1u, var_1.x, 1u, var_1.x), var_0, u_input.b.x, u_input.b.x), func_4(var_1.x, Struct_5(Struct_4(Struct_3(Struct_1(vec3<i32>(u_input.b.x, 0i, 794i), vec4<u32>(var_1.x, 1u, 1858u, 4294967295u), vec2<bool>(var_0.x, true), u_input.b.x, 1i), -2799f), vec4<u32>(var_1.x, var_1.x, var_1.x, var_1.x), Struct_1(vec3<i32>(u_input.a.x, -2147483647i, 14986i), var_1, var_0, u_input.b.x, u_input.a.x), Struct_2(var_1.x, u_input.a.x, vec4<u32>(var_1.x, var_1.x, var_1.x, 23012u), vec4<bool>(var_0.x, var_0.x, var_0.x, true), Struct_1(vec3<i32>(1i, u_input.a.x, u_input.b.x), vec4<u32>(0u, 1u, var_1.x, 3888u), vec2<bool>(false, false), u_input.a.x, -21016i)), Struct_2(var_1.x, u_input.b.x, vec4<u32>(var_1.x, 1u, 1u, var_1.x), vec4<bool>(true, var_0.x, var_0.x, var_0.x), Struct_1(vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x), vec4<u32>(var_1.x, 0u, 1u, var_1.x), vec2<bool>(var_0.x, false), u_input.a.x, -18003i))), vec4<bool>(false, true, var_0.x, var_0.x), 27637u)).d, Struct_2(79533u, u_input.b.x, var_1, vec4<bool>(var_0.x, true, var_0.x, var_0.x), Struct_1(vec3<i32>(-2147483647i, 3108i, 0i), var_1, var_0, u_input.a.x, -22697i))))));
}

