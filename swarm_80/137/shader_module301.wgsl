struct Struct_1 {
    a: i32,
    b: u32,
    c: vec4<bool>,
    d: i32,
}

struct Struct_2 {
    a: bool,
    b: u32,
    c: vec4<f32>,
    d: bool,
    e: f32,
}

struct Struct_3 {
    a: bool,
    b: vec4<u32>,
    c: u32,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: vec3<i32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 8> = array<vec3<f32>, 8>(vec3<f32>(1599f, 159f, -2654f), vec3<f32>(956f, -1000f, -368f), vec3<f32>(1000f, -924f, -885f), vec3<f32>(522f, 436f, -566f), vec3<f32>(581f, -924f, 318f), vec3<f32>(-607f, -716f, -1000f), vec3<f32>(-297f, 147f, -1014f), vec3<f32>(1144f, 155f, -1028f));

var<private> global1: Struct_1 = Struct_1(12672i, 14086u, vec4<bool>(true, true, true, false), -1i);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec3<i32>, arg_1: vec4<f32>) -> i32 {
    let var_0 = Struct_1(_wgslsmith_dot_vec4_i32(~abs(vec4<i32>(global1.d, arg_0.x, global1.a, global1.d)), reverseBits(abs(vec4<i32>(u_input.c, global1.a, arg_0.x, global1.d)))) & _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(-vec4<i32>(-19592i, -1i, 37480i, u_input.a.x), min(vec4<i32>(-1i, arg_0.x, u_input.a.x, u_input.a.x), vec4<i32>(0i, u_input.c, arg_0.x, u_input.a.x))), u_input.a.x | -38533i), 84575u, vec4<bool>(select(any(global1.c), global1.c.x, true) || !global1.c.x, false, any(select(select(vec4<bool>(global1.c.x, global1.c.x, global1.c.x, true), vec4<bool>(true, false, global1.c.x, true), global1.c), !global1.c, global1.c.x | false)), all(global1.c.yx)), abs(2147483647i));
    var var_1 = arg_1.x;
    global0 = array<vec3<f32>, 8>();
    var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(arg_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x * -1914f) - 1740f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(arg_1.x, arg_1.x)))), arg_1.x)));
    let var_2 = ~_wgslsmith_mod_vec4_i32(~(vec4<i32>(global1.d, -1i, 0i, global1.d) & vec4<i32>(arg_0.x, arg_0.x, 1i, 20781i)) & reverseBits(vec4<i32>(var_0.d, arg_0.x, 16064i, -1i)), ~firstLeadingBit(-vec4<i32>(-1i, 2147483647i, var_0.d, 0i)));
    return _wgslsmith_sub_i32(_wgslsmith_sub_i32(abs(-2147483647i), u_input.a.x >> (4294967295u % 32u)) >> (~abs(5173u) % 32u), -(-var_0.d ^ -1i)) ^ (-max(~var_2.x, var_2.x) & -29648i);
}

fn func_2() -> Struct_2 {
    global0 = array<vec3<f32>, 8>();
    global1 = Struct_1(min(-1i, _wgslsmith_mult_i32(-1i, _wgslsmith_dot_vec3_i32(vec3<i32>(0i, global1.d, 9381i), abs(u_input.a)))), u_input.b, !vec4<bool>(!select(global1.c.x, global1.c.x, true), select(true, !global1.c.x, global1.c.x), true, global1.c.x), global1.a);
    global1 = Struct_1(u_input.c, _wgslsmith_add_u32(abs(4294967295u), global1.b), vec4<bool>(true, true, all(!select(global1.c, global1.c, global1.c)), true), func_3(~vec3<i32>(~global1.d, _wgslsmith_add_i32(-58894i, 2147483647i), ~(-2147483647i)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 853f, -352f, 329f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(2074f, -485f, 1122f, 1000f)))))));
    var var_0 = Struct_3(true, firstTrailingBit(reverseBits(vec4<u32>(14573u ^ global1.b, u_input.b, ~global1.b, firstTrailingBit(0u)))), _wgslsmith_mult_u32(1u, 0u));
    var var_1 = true;
    return Struct_2(global1.c.x & (4294967295u < firstTrailingBit(global1.b & global1.b)), abs(0u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1249f, 1000f, -598f, 1000f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-827f, 878f, 1965f, 648f), vec4<f32>(433f, 1886f, -1201f, -305f))) - vec4<f32>(1419f, -1316f, 1890f, -817f)))), _wgslsmith_dot_vec2_u32(var_0.b.xw, min(vec2<u32>(0u, 4294967295u), vec2<u32>(global1.b, 158363u)) >> (~var_0.b.wy % vec2<u32>(32u))) != firstTrailingBit(~(global1.b << (1u % 32u))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1496f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-879f, 112f, var_0.a)), _wgslsmith_f_op_f32(f32(-1f) * -1138f)))));
}

fn func_4(arg_0: Struct_4, arg_1: vec4<u32>, arg_2: Struct_3, arg_3: i32) -> i32 {
    let var_0 = Struct_1(global1.d, ~(~_wgslsmith_add_u32(~arg_2.b.x, arg_1.x)), vec4<bool>(true, true, !all(global1.c.xzz), func_2().d), func_3(u_input.a ^ u_input.a, arg_0.a.c));
    let var_1 = var_0;
    return 1i;
}

fn func_1() -> Struct_4 {
    global1 = Struct_1(func_4(Struct_4(func_2(), Struct_3(true, max(vec4<u32>(4294967295u, global1.b, 0u, u_input.b), vec4<u32>(u_input.b, 98494u, global1.b, u_input.b)), ~global1.b), ~abs(vec4<u32>(83633u, 4294967295u, global1.b, u_input.b))), ~(~vec4<u32>(4294967295u, 1u, 28002u, 59569u) << ((vec4<u32>(73920u, u_input.b, 1u, u_input.b) >> (vec4<u32>(u_input.b, 4294967295u, 57154u, global1.b) % vec4<u32>(32u))) % vec4<u32>(32u))), Struct_3(!select(global1.c.x, true, true), ~(vec4<u32>(u_input.b, global1.b, 23404u, u_input.b) >> (vec4<u32>(28469u, 68015u, 0u, 4294967295u) % vec4<u32>(32u))), abs(_wgslsmith_mod_u32(global1.b, global1.b))), 1i), _wgslsmith_sub_u32(max(120997u, 0u << (u_input.b % 32u)), 1u) << (_wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, global1.b, 0u), max(_wgslsmith_mod_vec3_u32(vec3<u32>(global1.b, 0u, 13013u), vec3<u32>(global1.b, global1.b, 24578u)), max(vec3<u32>(54754u, u_input.b, global1.b), vec3<u32>(global1.b, global1.b, u_input.b)))) % 32u), select(select(vec4<bool>(u_input.b > u_input.b, func_2().a, global1.b >= 41506u, true), vec4<bool>(!global1.c.x, true, true, global1.c.x), !global1.c), !vec4<bool>(any(global1.c), global1.c.x, global1.c.x, any(vec4<bool>(true, true, true, global1.c.x))), select(select(vec4<bool>(false, global1.c.x, global1.c.x, global1.c.x), vec4<bool>(global1.c.x, global1.c.x, global1.c.x, global1.c.x), global1.c), vec4<bool>(func_2().a, !global1.c.x, false, global1.c.x), true)), max(~0i, 2147483647i) & u_input.c);
    var var_0 = func_2();
    global1 = Struct_1(_wgslsmith_sub_i32(global1.a, _wgslsmith_clamp_i32(0i, abs(u_input.c), _wgslsmith_dot_vec2_i32(u_input.a.zy, u_input.a.zz)) & func_3(_wgslsmith_div_vec3_i32(vec3<i32>(-8976i, 0i, 4507i), u_input.a), _wgslsmith_f_op_vec4_f32(-var_0.c))), global1.b, vec4<bool>((global1.a | 0i) < global1.d, var_0.a, global1.c.x, var_0.a), -9305i);
    let var_1 = var_0.b;
    let var_2 = _wgslsmith_div_u32(4294967295u, _wgslsmith_sub_u32(_wgslsmith_div_u32(0u, u_input.b), global1.b));
    return Struct_4(func_2(), Struct_3(global1.c.x, vec4<u32>(_wgslsmith_add_u32(42973u, 0u), var_2, 6565u, ~var_2), ~func_2().b), countOneBits(vec4<u32>(~var_0.b, var_0.b, 1u, ~4294967295u)));
}

fn func_5(arg_0: Struct_4, arg_1: Struct_2, arg_2: i32) -> Struct_3 {
    var var_0 = vec4<u32>(~(~arg_1.b), 4294967295u, arg_0.c.x, _wgslsmith_add_u32(_wgslsmith_mod_u32(arg_1.b << (27413u % 32u), ~arg_1.b), 4294967295u) ^ (1u ^ u_input.b));
    let var_1 = arg_0.a.c.x;
    let var_2 = arg_0.b;
    global1 = Struct_1(98898i, 46831u, select(!global1.c, !global1.c, _wgslsmith_f_op_f32(func_1().a.e * _wgslsmith_f_op_f32(abs(arg_0.a.e))) <= _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(876f - -1201f)))), u_input.c);
    let var_3 = arg_0.b;
    return func_1().b;
}

fn func_6(arg_0: Struct_3, arg_1: u32, arg_2: vec3<i32>, arg_3: vec3<i32>) -> Struct_1 {
    var var_0 = Struct_2(20877u > func_5(func_1(), func_2(), arg_3.x).c, _wgslsmith_mult_u32(6060u, ~(~u_input.b)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(442f, 1783f, _wgslsmith_f_op_f32(f32(-1f) * -389f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1750f + -716f), -946f))), _wgslsmith_f_op_vec4_f32(-func_2().c), all(global1.c))), _wgslsmith_f_op_f32(713f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1868f)) + -1156f)) != _wgslsmith_f_op_f32(f32(-1f) * -215f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-796f))));
    global1 = Struct_1(37804i, _wgslsmith_div_u32(_wgslsmith_mod_u32(var_0.b, 91994u), var_0.b), vec4<bool>(true, true, true, global1.c.x), -(~(-func_4(Struct_4(Struct_2(var_0.d, 1u, var_0.c, var_0.a, var_0.c.x), arg_0, vec4<u32>(global1.b, 1u, u_input.b, 4294967295u)), vec4<u32>(global1.b, 0u, global1.b, 0u), arg_0, arg_3.x))));
    var_0 = Struct_2(true, 12626u, _wgslsmith_f_op_vec4_f32(ceil(var_0.c)), var_0.a, _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0.e + 675f), _wgslsmith_f_op_f32(floor(-589f)))), -1388f))));
    let var_1 = ~(~global1.a);
    let var_2 = var_0.c;
    return Struct_1(_wgslsmith_div_i32(arg_2.x, -2147483647i), _wgslsmith_add_u32(~abs(var_0.b), select(global1.b, arg_0.b.x, var_0.a) >> (reverseBits(global1.b) % 32u)) ^ _wgslsmith_clamp_u32(0u, ~u_input.b ^ 1u, ~(~4294967295u)), vec4<bool>(1000f < _wgslsmith_f_op_f32(max(882f, var_2.x)), func_3(u_input.a, var_0.c) < -1i, true, 0u < _wgslsmith_sub_u32(1u, func_2().b)), _wgslsmith_sub_i32(countOneBits(global1.a), firstLeadingBit(var_1)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a.yy;
    global1 = func_6(func_5(func_1(), func_1().a, select(u_input.a.x, _wgslsmith_mod_i32(_wgslsmith_mult_i32(1135i, 1i), u_input.a.x), all(select(global1.c.yz, vec2<bool>(true, global1.c.x), global1.c.xz)))), 4294967295u, ~(-(min(u_input.a, u_input.a) | u_input.a)), vec3<i32>(2147483647i, global1.d, -50767i));
    var var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1359f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(344f, 1000f), 2571f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(537f, 810f, 1950f)), _wgslsmith_f_op_vec3_f32(round(global0[_wgslsmith_index_u32(global1.b, 8u)])), global1.c.wwy))))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(max(func_1().a.c.zyw, global0[_wgslsmith_index_u32(0u, 8u)])))), any(vec3<bool>(false, global1.c.x, global1.b < global1.b))));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(469f - var_1.x) + 306f);
    let var_3 = Struct_4(Struct_2(!all(!global1.c.zy), 10251u, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, var_2, 1000f, var_1.x) * vec4<f32>(var_2, var_2, var_2, -1000f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, var_1.x, -169f, 640f))))), (var_2 < _wgslsmith_f_op_f32(f32(-1f) * -498f)) || all(func_6(Struct_3(global1.c.x, vec4<u32>(81584u, 27210u, global1.b, 0u), u_input.b), global1.b, vec3<i32>(u_input.c, global1.a, -2459i), u_input.a).c.zy), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_1.x - 2184f), -564f, true)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(1304f, var_2)), _wgslsmith_f_op_f32(step(var_1.x, 182f))))))), func_5(Struct_4(Struct_2(all(vec2<bool>(true, global1.c.x)), 1u | global1.b, _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2, -892f, 691f, var_1.x) + vec4<f32>(-1166f, -1066f, 552f, var_2)), all(vec3<bool>(global1.c.x, global1.c.x, true)), _wgslsmith_f_op_f32(min(1113f, 591f))), func_1().b, select(vec4<u32>(global1.b, 50556u, u_input.b, u_input.b) ^ vec4<u32>(global1.b, global1.b, 1u, u_input.b), ~vec4<u32>(21487u, u_input.b, global1.b, 1u), global1.c)), func_2(), 3206i), _wgslsmith_sub_vec4_u32(~(_wgslsmith_sub_vec4_u32(vec4<u32>(0u, global1.b, 5644u, u_input.b), vec4<u32>(u_input.b, u_input.b, global1.b, 65861u)) >> (vec4<u32>(1u, 1u, global1.b, u_input.b) % vec4<u32>(32u))), ~(~vec4<u32>(39000u, global1.b, u_input.b, global1.b))));
    let var_4 = func_1();
    var var_5 = Struct_3(all(!global1.c.ww), ~max(vec4<u32>(~u_input.b, global1.b, 1u, 31107u), var_3.b.b), _wgslsmith_dot_vec4_u32(~abs(countOneBits(var_3.c)), vec4<u32>(0u, func_5(Struct_4(Struct_2(true, 4294967295u, var_4.a.c, false, 804f), Struct_3(global1.c.x, var_3.b.b, u_input.b), vec4<u32>(global1.b, 1u, 0u, 4294967295u)), func_2(), func_3(u_input.a, vec4<f32>(518f, var_2, var_4.a.e, var_2))).b.x, countOneBits(var_4.b.c), global1.b)));
    global1 = func_6(func_5(func_1(), func_1().a, ~(-_wgslsmith_sub_i32(45693i, -16674i))), ~(~max(~15537u, global1.b)), u_input.a, firstLeadingBit(vec3<i32>(-1i, func_3(~u_input.a, var_4.a.c), 2147483647i)));
    let x = u_input.a;
    s_output = StorageBuffer(-u_input.a, -446f, u_input.a, vec4<i32>(~var_0.x, -1i & firstLeadingBit(_wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(u_input.c, 2147483647i, 8910i))), -49724i, -global1.a));
}

