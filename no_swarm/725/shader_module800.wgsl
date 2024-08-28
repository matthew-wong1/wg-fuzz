struct Struct_1 {
    a: vec3<f32>,
    b: vec2<bool>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: bool,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
}

struct Struct_4 {
    a: vec2<u32>,
    b: vec3<u32>,
}

struct Struct_5 {
    a: Struct_4,
    b: vec2<bool>,
    c: u32,
    d: f32,
    e: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: vec3<i32>,
    d: vec3<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<Struct_3, 32>;

var<private> global2: array<bool, 4>;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3() -> u32 {
    global0 = global2[_wgslsmith_index_u32(4294967295u, 4u)];
    global0 = all(!select(select(vec4<bool>(global2[_wgslsmith_index_u32(u_input.a, 4u)], global2[_wgslsmith_index_u32(0u, 4u)], false, true), !vec4<bool>(global2[_wgslsmith_index_u32(u_input.a, 4u)], global2[_wgslsmith_index_u32(u_input.a, 4u)], false, global2[_wgslsmith_index_u32(20922u, 4u)]), global2[_wgslsmith_index_u32(29350u, 4u)] != global2[_wgslsmith_index_u32(u_input.a, 4u)]), select(vec4<bool>(global2[_wgslsmith_index_u32(u_input.a, 4u)], global2[_wgslsmith_index_u32(u_input.a, 4u)], global2[_wgslsmith_index_u32(u_input.a, 4u)], false), select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, true), vec4<bool>(global2[_wgslsmith_index_u32(0u, 4u)], false, global2[_wgslsmith_index_u32(0u, 4u)], true)), !global2[_wgslsmith_index_u32(1u, 4u)]), !global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.a, u_input.a), vec3<u32>(50777u, u_input.a, 0u)), 4u)]));
    global0 = !global2[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_mod_u32(u_input.a, 46218u)), 4u)];
    let var_0 = !(true && global2[_wgslsmith_index_u32(countOneBits(~(~4294967295u)), 4u)]);
    let var_1 = countOneBits(10657u) << (~(~(~4294967295u)) % 32u);
    return ~(~19568u);
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_sub_vec2_i32(vec2<i32>(~(~1i), 1i), -firstLeadingBit(vec2<i32>(firstTrailingBit(3235i), -57476i)));
    let var_1 = Struct_3(vec4<u32>(_wgslsmith_mult_u32(min(min(u_input.a, 59279u), 1u ^ u_input.a), u_input.a), func_3() & _wgslsmith_add_u32(~30239u, _wgslsmith_clamp_u32(u_input.a, 1u, u_input.a)), ~abs(u_input.a) << (_wgslsmith_mult_u32(u_input.a, u_input.a) % 32u), u_input.a));
    var var_2 = Struct_4(vec2<u32>(u_input.a & ~var_1.a.x, ~(~var_1.a.x)) & var_1.a.xx, _wgslsmith_sub_vec3_u32(vec3<u32>(10879u, ~_wgslsmith_mod_u32(var_1.a.x, 1u), ~31404u & u_input.a), _wgslsmith_add_vec3_u32(~(vec3<u32>(var_1.a.x, 28531u, u_input.a) & var_1.a.wyw), ~_wgslsmith_mult_vec3_u32(vec3<u32>(var_1.a.x, 36962u, u_input.a), vec3<u32>(var_1.a.x, u_input.a, var_1.a.x)))));
    let var_3 = _wgslsmith_mod_i32(_wgslsmith_mult_i32(max(0i, var_0.x), ~min(0i, var_0.x) ^ 2147483647i), ~firstLeadingBit(var_0.x << (_wgslsmith_mult_u32(17663u, var_2.b.x) % 32u)));
    global2 = array<bool, 4>();
    return Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(382f, 498f, -1000f)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1075f, 1417f, -1231f))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1569f, -784f, -1186f) + vec3<f32>(1115f, -1269f, -894f)), vec3<f32>(-345f, -1238f, 664f)))), !select(vec2<bool>(global2[_wgslsmith_index_u32(min(4294967295u, var_2.a.x), 4u)], select(global2[_wgslsmith_index_u32(1u, 4u)], false, global2[_wgslsmith_index_u32(33159u, 4u)])), select(vec2<bool>(true, true), vec2<bool>(false, global2[_wgslsmith_index_u32(u_input.a, 4u)]), true), true));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: f32, arg_3: vec2<u32>) -> Struct_2 {
    let var_0 = true;
    let var_1 = (arg_0.a.x >= ~(arg_0.a.x >> (arg_3.x % 32u))) & all(vec2<bool>(func_3() < ~4793u, all(select(arg_1.d.b, vec2<bool>(true, global2[_wgslsmith_index_u32(1u, 4u)]), arg_1.b.b))));
    let var_2 = !(!select(!select(vec4<bool>(arg_1.c, var_1, var_0, var_1), vec4<bool>(arg_0.d.b.x, global2[_wgslsmith_index_u32(17688u, 4u)], false, arg_0.b.b.x), var_1), !select(vec4<bool>(var_1, false, var_0, false), vec4<bool>(false, true, var_1, global2[_wgslsmith_index_u32(55942u, 4u)]), vec4<bool>(true, var_0, var_1, false)), false));
    var var_3 = ~(vec4<u32>(arg_3.x, ~(~arg_3.x), _wgslsmith_clamp_u32(_wgslsmith_div_u32(55222u, u_input.a), _wgslsmith_sub_u32(u_input.a, 0u), ~u_input.a), ~_wgslsmith_mod_u32(1u, arg_0.a.x)) | vec4<u32>(1u, select(53929u, 0u, false), _wgslsmith_mod_u32(~36051u, ~u_input.a), _wgslsmith_mod_u32(arg_0.a.x, arg_0.a.x)));
    var var_4 = Struct_4(_wgslsmith_mult_vec2_u32(select(vec2<u32>(48088u, 47882u), _wgslsmith_div_vec2_u32(arg_1.a, arg_3), true), ~(~arg_0.a)) | arg_3, ~vec3<u32>(_wgslsmith_div_u32(var_3.x, 1u), ~arg_0.a.x, ~1u) & var_3.wzz);
    return Struct_2(abs(max(vec2<u32>(4294967295u, arg_0.a.x) << (vec2<u32>(arg_1.a.x, var_4.a.x) % vec2<u32>(32u)), var_4.a & vec2<u32>(arg_1.a.x, 9702u))), arg_1.b, any(vec2<bool>(!(!var_0), true)), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.b.a.x, 1612f, 930f) * arg_1.d.a) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_1.b.a))), !vec2<bool>(false, !global2[_wgslsmith_index_u32(arg_0.a.x, 4u)])));
}

fn func_5(arg_0: Struct_2) -> Struct_1 {
    var var_0 = Struct_5(Struct_4(~select(~vec2<u32>(arg_0.a.x, u_input.a), abs(vec2<u32>(0u, 4294967295u)), global2[_wgslsmith_index_u32(arg_0.a.x, 4u)]), ~(~vec3<u32>(arg_0.a.x, 48915u, u_input.a) ^ reverseBits(vec3<u32>(u_input.a, u_input.a, 4294967295u)))), select(select(func_2().b, !func_2().b, !arg_0.b.b), func_2().b, arg_0.b.b), _wgslsmith_clamp_u32(113594u | ~u_input.a, reverseBits(~arg_0.a.x) ^ _wgslsmith_mult_u32(abs(arg_0.a.x), 44271u), u_input.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(813f + arg_0.d.a.x)), ~abs(1i));
    let var_1 = -vec2<i32>(-1i, select(abs(1i), _wgslsmith_mod_i32(max(1i, var_0.e), 1i), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(select(vec4<u32>(u_input.a, var_0.c, u_input.a, arg_0.a.x), vec4<u32>(arg_0.a.x, arg_0.a.x, 1u, u_input.a), true), ~vec4<u32>(44584u, 52229u, 4294967295u, 4294967295u)), 4u)]));
    global2 = array<bool, 4>();
    var var_2 = Struct_4(arg_0.a >> (~arg_0.a % vec2<u32>(32u)), max(vec3<u32>(1u, 0u, var_0.c << (func_4(arg_0, Struct_2(var_0.a.b.yx, Struct_1(vec3<f32>(var_0.d, 434f, arg_0.d.a.x), vec2<bool>(global2[_wgslsmith_index_u32(1u, 4u)], arg_0.b.b.x)), global2[_wgslsmith_index_u32(arg_0.a.x, 4u)], arg_0.d), arg_0.d.a.x, vec2<u32>(1u, 0u)).a.x % 32u)), _wgslsmith_mult_vec3_u32(~(~var_0.a.b), select(~var_0.a.b, ~var_0.a.b, var_0.b.x | false))));
    global2 = array<bool, 4>();
    return arg_0.b;
}

fn func_1(arg_0: u32, arg_1: vec4<u32>, arg_2: f32, arg_3: vec4<i32>) -> vec4<i32> {
    var var_0 = false;
    var var_1 = Struct_2(arg_1.zz, func_5(func_4(Struct_2(~vec2<u32>(28795u, arg_0), func_2(), true, func_2()), Struct_2(arg_1.yy ^ arg_1.wz, func_2(), global2[_wgslsmith_index_u32(1u, 4u)], Struct_1(vec3<f32>(arg_2, -213f, arg_2), vec2<bool>(false, false))), _wgslsmith_f_op_f32(-arg_2), arg_1.xx)), any(!select(vec4<bool>(true, global2[_wgslsmith_index_u32(23075u, 4u)], true, false), vec4<bool>(true, true, global2[_wgslsmith_index_u32(arg_1.x, 4u)], global2[_wgslsmith_index_u32(46914u, 4u)]), select(vec4<bool>(true, global2[_wgslsmith_index_u32(u_input.a, 4u)], false, global2[_wgslsmith_index_u32(5680u, 4u)]), vec4<bool>(true, global2[_wgslsmith_index_u32(u_input.a, 4u)], global2[_wgslsmith_index_u32(u_input.a, 4u)], true), global2[_wgslsmith_index_u32(arg_0, 4u)]))), func_2());
    let var_2 = ~(4294967295u | _wgslsmith_mod_u32(_wgslsmith_div_u32(var_1.a.x, u_input.a) << (firstLeadingBit(arg_1.x) % 32u), ~arg_1.x));
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.d.a.x)) * -1072f))), -118f, arg_2, func_4(func_4(Struct_2(vec2<u32>(59054u, arg_1.x), var_1.b, var_1.d.b.x || true, Struct_1(var_1.b.a, var_1.d.b)), Struct_2(vec2<u32>(arg_1.x, var_1.a.x), Struct_1(var_1.d.a, vec2<bool>(global2[_wgslsmith_index_u32(0u, 4u)], global2[_wgslsmith_index_u32(0u, 4u)])), false, func_2()), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.d.a.x - 984f)), firstTrailingBit(_wgslsmith_mult_vec2_u32(vec2<u32>(9593u, 36573u), vec2<u32>(arg_0, var_1.a.x)))), Struct_2(_wgslsmith_add_vec2_u32(~vec2<u32>(var_1.a.x, 19799u), ~vec2<u32>(arg_0, u_input.a)), func_4(func_4(Struct_2(vec2<u32>(u_input.a, arg_1.x), var_1.b, var_1.c, Struct_1(var_1.d.a, vec2<bool>(global2[_wgslsmith_index_u32(19143u, 4u)], var_1.b.b.x))), Struct_2(var_1.a, var_1.d, global2[_wgslsmith_index_u32(var_1.a.x, 4u)], Struct_1(vec3<f32>(var_1.b.a.x, var_1.d.a.x, 594f), var_1.b.b)), -1118f, var_1.a), func_4(Struct_2(arg_1.ww, Struct_1(vec3<f32>(arg_2, 850f, -1533f), vec2<bool>(var_1.d.b.x, var_1.b.b.x)), var_1.d.b.x, var_1.b), Struct_2(vec2<u32>(1u, u_input.a), Struct_1(vec3<f32>(1483f, -1804f, 357f), vec2<bool>(global2[_wgslsmith_index_u32(arg_0, 4u)], true)), false, Struct_1(var_1.b.a, var_1.b.b)), var_1.d.a.x, vec2<u32>(var_1.a.x, 69350u)), var_1.d.a.x, _wgslsmith_mult_vec2_u32(var_1.a, var_1.a)).d, true, Struct_1(var_1.d.a, !var_1.d.b)), func_4(func_4(Struct_2(vec2<u32>(arg_0, 4294967295u), Struct_1(var_1.b.a, vec2<bool>(false, global2[_wgslsmith_index_u32(67247u, 4u)])), var_1.c, var_1.d), Struct_2(arg_1.yw, Struct_1(vec3<f32>(-528f, 649f, arg_2), vec2<bool>(false, true)), var_1.b.b.x, Struct_1(var_1.d.a, var_1.b.b)), _wgslsmith_f_op_f32(abs(var_1.d.a.x)), arg_1.xy), func_4(Struct_2(vec2<u32>(u_input.a, 4294967295u), var_1.d, true, var_1.d), Struct_2(var_1.a, var_1.d, false, Struct_1(vec3<f32>(var_1.d.a.x, -1709f, var_1.b.a.x), vec2<bool>(false, global2[_wgslsmith_index_u32(0u, 4u)]))), -613f, select(var_1.a, vec2<u32>(var_1.a.x, u_input.a), vec2<bool>(false, true))), _wgslsmith_f_op_f32(f32(-1f) * -1087f), select(_wgslsmith_div_vec2_u32(vec2<u32>(59912u, 0u), vec2<u32>(u_input.a, 87025u)), countOneBits(var_1.a), select(var_1.d.b, vec2<bool>(true, var_1.b.b.x), false))).d.a.x, ~min(max(arg_1.wx, arg_1.yx), vec2<u32>(16026u, 0u))).d.a.x);
    let var_4 = all(select(select(select(vec3<bool>(global2[_wgslsmith_index_u32(16621u, 4u)], true, var_1.c), vec3<bool>(var_1.c, true, false), vec3<bool>(false, true, false)), select(vec3<bool>(false, var_1.c, global2[_wgslsmith_index_u32(0u, 4u)]), vec3<bool>(true, var_1.c, true), false), all(vec2<bool>(var_1.d.b.x, var_1.d.b.x))), select(!vec3<bool>(false, var_1.b.b.x, var_1.c), vec3<bool>(true, global2[_wgslsmith_index_u32(4294967295u, 4u)], false), var_1.b.a.x <= 400f), select(!vec3<bool>(global2[_wgslsmith_index_u32(var_2, 4u)], var_1.c, true), !vec3<bool>(global2[_wgslsmith_index_u32(arg_0, 4u)], var_1.c, var_1.c), arg_2 < 831f))) && true;
    return arg_3;
}

fn func_6(arg_0: i32, arg_1: bool, arg_2: vec2<i32>) -> Struct_4 {
    var var_0 = Struct_3(vec4<u32>(1u, ~u_input.a, _wgslsmith_mult_u32(u_input.a, 0u), u_input.a) >> (~(~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, 29167u, u_input.a, u_input.a), vec4<u32>(0u, 1u, 55056u, u_input.a))) % vec4<u32>(32u)));
    let var_1 = global1[_wgslsmith_index_u32(~var_0.a.x, 32u)];
    var_0 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(var_0.a.x, var_1.a.x) | vec2<u32>(0u, var_1.a.x), vec2<u32>(4294967295u, 68676u)), ~var_1.a.wx), var_0.a.x, ~(~var_0.a.x) >> (~0u % 32u)), abs(_wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(0u, u_input.a, 9398u, 1u), vec4<u32>(897u, u_input.a, 0u, 23802u)), vec4<u32>(67381u, var_0.a.x, 17494u, 27460u) | var_0.a), ~vec4<u32>(0u, var_1.a.x, 1u, var_1.a.x)))), 32u)];
    var var_2 = func_5(func_4(Struct_2(vec2<u32>(var_1.a.x, 84669u) ^ vec2<u32>(22762u, u_input.a), func_4(func_4(Struct_2(vec2<u32>(4294967295u, 11165u), Struct_1(vec3<f32>(515f, -1080f, -843f), vec2<bool>(global2[_wgslsmith_index_u32(var_0.a.x, 4u)], global2[_wgslsmith_index_u32(4294967295u, 4u)])), global2[_wgslsmith_index_u32(40972u, 4u)], Struct_1(vec3<f32>(1044f, 998f, 213f), vec2<bool>(false, global2[_wgslsmith_index_u32(var_1.a.x, 4u)]))), Struct_2(vec2<u32>(var_0.a.x, u_input.a), Struct_1(vec3<f32>(-180f, 574f, -1730f), vec2<bool>(global2[_wgslsmith_index_u32(0u, 4u)], false)), true, Struct_1(vec3<f32>(172f, -484f, 1000f), vec2<bool>(true, arg_1))), -706f, var_1.a.zx), Struct_2(vec2<u32>(var_1.a.x, 48020u), Struct_1(vec3<f32>(-1240f, 329f, -650f), vec2<bool>(true, global2[_wgslsmith_index_u32(19321u, 4u)])), arg_1, Struct_1(vec3<f32>(997f, -265f, 1049f), vec2<bool>(global2[_wgslsmith_index_u32(44464u, 4u)], arg_1))), 720f, ~vec2<u32>(4294967295u, 1u)).b, true, func_4(func_4(Struct_2(var_0.a.yz, Struct_1(vec3<f32>(-1452f, -383f, -641f), vec2<bool>(true, arg_1)), false, Struct_1(vec3<f32>(-377f, 952f, 1000f), vec2<bool>(false, false))), Struct_2(vec2<u32>(60035u, 4294967295u), Struct_1(vec3<f32>(188f, -971f, 1171f), vec2<bool>(global2[_wgslsmith_index_u32(2947u, 4u)], true)), global2[_wgslsmith_index_u32(4294967295u, 4u)], Struct_1(vec3<f32>(583f, -551f, -1289f), vec2<bool>(global2[_wgslsmith_index_u32(70307u, 4u)], true))), 461f, var_1.a.zz), func_4(Struct_2(vec2<u32>(49606u, 4294967295u), Struct_1(vec3<f32>(953f, 216f, 726f), vec2<bool>(false, global2[_wgslsmith_index_u32(var_1.a.x, 4u)])), true, Struct_1(vec3<f32>(127f, -954f, 1043f), vec2<bool>(false, false))), Struct_2(var_1.a.ww, Struct_1(vec3<f32>(-607f, 1806f, -155f), vec2<bool>(true, global2[_wgslsmith_index_u32(46942u, 4u)])), arg_1, Struct_1(vec3<f32>(1000f, -1000f, 409f), vec2<bool>(global2[_wgslsmith_index_u32(var_1.a.x, 4u)], global2[_wgslsmith_index_u32(1u, 4u)]))), -1475f, var_1.a.xx), -1000f, vec2<u32>(105068u, var_1.a.x)).d), func_4(Struct_2(vec2<u32>(52786u, var_0.a.x), Struct_1(vec3<f32>(661f, 1584f, 278f), vec2<bool>(global2[_wgslsmith_index_u32(4294967295u, 4u)], global2[_wgslsmith_index_u32(var_0.a.x, 4u)])), !arg_1, func_2()), Struct_2(_wgslsmith_add_vec2_u32(vec2<u32>(var_1.a.x, 34612u), vec2<u32>(14885u, var_0.a.x)), Struct_1(vec3<f32>(641f, 350f, -816f), vec2<bool>(false, true)), var_0.a.x == var_1.a.x, func_5(Struct_2(vec2<u32>(0u, u_input.a), Struct_1(vec3<f32>(-561f, 233f, 743f), vec2<bool>(false, global2[_wgslsmith_index_u32(1320u, 4u)])), false, Struct_1(vec3<f32>(-498f, -2051f, 1000f), vec2<bool>(true, false))))), -336f, max(~var_0.a.zz, countOneBits(var_1.a.zz))), _wgslsmith_f_op_f32(f32(-1f) * -705f), _wgslsmith_mult_vec2_u32(vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 89150u, 25581u, 0u), vec4<u32>(var_1.a.x, var_1.a.x, 4294967295u, 0u)), 0u), abs(reverseBits(vec2<u32>(var_1.a.x, 67964u)))))).b;
    global0 = any(!vec2<bool>(true, all(vec3<bool>(global2[_wgslsmith_index_u32(var_1.a.x, 4u)], true, arg_1))));
    return Struct_4(vec2<u32>(abs(~u_input.a), 1u), var_1.a.xxy);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<bool, 4>();
    var var_0 = Struct_5(func_6(_wgslsmith_dot_vec4_i32(func_1(u_input.a, vec4<u32>(82440u, 4294967295u, 11538u, 68663u), 437f, vec4<i32>(-38004i, 2147483647i, 104i, -1i)), ~vec4<i32>(0i, -79294i, 20007i, 48562i)) >> (u_input.a % 32u), false, vec2<i32>(~1i, (26613i >> (u_input.a % 32u)) | ~1i)), select(select(vec2<bool>(any(vec4<bool>(global2[_wgslsmith_index_u32(26963u, 4u)], true, true, global2[_wgslsmith_index_u32(24274u, 4u)])), global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(0u, u_input.a), 4u)]), vec2<bool>(func_2().b.x, global2[_wgslsmith_index_u32(u_input.a, 4u)]), all(!vec2<bool>(global2[_wgslsmith_index_u32(u_input.a, 4u)], global2[_wgslsmith_index_u32(u_input.a, 4u)]))), vec2<bool>(true, all(!vec3<bool>(true, true, global2[_wgslsmith_index_u32(u_input.a, 4u)]))), vec2<bool>(any(func_2().b), true)), _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(countOneBits(vec2<u32>(4294967295u, 85077u)), vec2<u32>(1u, 1u)), ~(vec2<u32>(1u, u_input.a) | vec2<u32>(u_input.a, u_input.a))), _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(16761u, u_input.a, 14149u, u_input.a) | vec4<u32>(u_input.a, u_input.a, u_input.a, 1u), ~vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)), _wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, u_input.a, u_input.a, u_input.a), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)), select(vec4<u32>(1u, u_input.a, 1u, 4294967295u), vec4<u32>(u_input.a, u_input.a, u_input.a, 20383u), global2[_wgslsmith_index_u32(u_input.a, 4u)])))), -1361f, reverseBits(abs(-76404i)));
    let var_1 = !(!var_0.b.x);
    var var_2 = Struct_4(var_0.a.b.zy, var_0.a.b);
    var_2 = Struct_4(firstTrailingBit(vec2<u32>(var_0.a.b.x, 30730u)), ~(~reverseBits(vec3<u32>(var_0.a.b.x, u_input.a, var_0.c)) | (min(vec3<u32>(var_0.c, var_0.a.b.x, 0u), vec3<u32>(var_0.c, 0u, 1u)) >> (_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, 70129u, 4294967295u), var_0.a.b) % vec3<u32>(32u)))));
    let var_3 = func_2();
    let var_4 = ~_wgslsmith_mult_i32(i32(-1i) * -var_0.e, -(~var_0.e)) < (_wgslsmith_div_i32(countOneBits(-1i), ~18330i) & ~var_0.e);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.d))), countOneBits(var_2.b), abs(-_wgslsmith_mult_vec3_i32(-vec3<i32>(0i, var_0.e, -1i), vec3<i32>(var_0.e, var_0.e, -1i))), max(var_0.a.b, var_2.b), select(~var_2.b.x, 17237u, var_0.b.x));
}

