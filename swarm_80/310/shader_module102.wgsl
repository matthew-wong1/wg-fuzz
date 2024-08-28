struct Struct_1 {
    a: vec2<i32>,
    b: vec4<bool>,
    c: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct Struct_3 {
    a: bool,
    b: u32,
    c: vec2<u32>,
    d: vec4<i32>,
    e: i32,
}

struct Struct_4 {
    a: u32,
    b: Struct_1,
    c: vec3<i32>,
    d: i32,
    e: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 5>;

var<private> global1: bool;

var<private> global2: array<vec2<f32>, 31>;

var<private> global3: array<u32, 6>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2() -> u32 {
    let var_0 = Struct_4(~4569u, Struct_1(u_input.a.zx | ~(~vec2<i32>(u_input.a.x, u_input.a.x)), vec4<bool>(false, false, u_input.a.x > 1i, !any(vec4<bool>(false, false, false, true))), vec3<u32>(~529u, global3[_wgslsmith_index_u32(26324u, 6u)], global3[_wgslsmith_index_u32(0u, 6u)] ^ global3[_wgslsmith_index_u32(0u, 6u)]) >> (vec3<u32>(u_input.b, global3[_wgslsmith_index_u32(71178u, 6u)] & global3[_wgslsmith_index_u32(20888u, 6u)], _wgslsmith_clamp_u32(u_input.b, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(346u, 6u)], 6u)], u_input.b)) % vec3<u32>(32u))), u_input.a, u_input.a.x, 88168u);
    let var_1 = Struct_2(var_0.b, firstLeadingBit(var_0.e));
    global2 = array<vec2<f32>, 31>();
    var var_2 = -2146f;
    var var_3 = Struct_2(var_1.a, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 7793u), var_1.a.c.zx));
    return ~42071u;
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_3, arg_2: Struct_3, arg_3: Struct_4) -> vec3<i32> {
    global2 = array<vec2<f32>, 31>();
    let var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(95525u, 5u)] * global0[_wgslsmith_index_u32(21963u, 5u)]), global0[_wgslsmith_index_u32(0u, 5u)]), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1474f)) - _wgslsmith_f_op_f32(trunc(806f))), false)) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1851f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(abs(~global3[_wgslsmith_index_u32(99505u, 6u)]), 5u)])))));
    var var_1 = arg_1;
    let var_2 = Struct_2(Struct_1(arg_1.d.xy ^ abs(vec2<i32>(2147483647i, -26151i)), arg_3.b.b, vec3<u32>(arg_2.c.x, 4294967295u, 1u)), u_input.b);
    var_1 = arg_2;
    return ~vec3<i32>(min(u_input.a.x, var_2.a.a.x & firstTrailingBit(0i)), firstTrailingBit(7817i), ~var_1.d.x);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3, arg_2: vec4<u32>, arg_3: vec3<u32>) -> u32 {
    global1 = arg_0.b.x;
    let var_0 = select(vec4<bool>(arg_0.b.x, !arg_1.a, any(arg_0.b.yz), select(false, true, false)), select(select(vec4<bool>(select(true, arg_1.a, false), true, arg_1.a, false), select(arg_0.b, arg_0.b, true), !vec4<bool>(false, false, arg_1.a, arg_0.b.x)), !vec4<bool>(!arg_0.b.x, -388f < global0[_wgslsmith_index_u32(36350u, 5u)], true, arg_1.a), select(arg_0.b.x, any(select(vec3<bool>(arg_0.b.x, false, arg_0.b.x), arg_0.b.xyy, arg_1.a)), true)), arg_0.b);
    let var_1 = Struct_2(arg_0, ~(~(min(14165u, arg_2.x) << ((arg_0.c.x ^ arg_0.c.x) % 32u))));
    global3 = array<u32, 6>();
    var var_2 = arg_3;
    return _wgslsmith_sub_u32(~arg_3.x, var_2.x);
}

fn func_5(arg_0: u32, arg_1: vec2<u32>, arg_2: Struct_2) -> Struct_1 {
    let var_0 = arg_2.a.b.x | arg_2.a.b.x;
    global2 = array<vec2<f32>, 31>();
    var var_1 = Struct_4(~(1u << (_wgslsmith_mult_u32(arg_2.a.c.x, countOneBits(12315u)) % 32u)), arg_2.a, firstLeadingBit(u_input.a), -firstTrailingBit(650i), ~(~(~_wgslsmith_mod_u32(40914u, arg_0))));
    var_1 = Struct_4(max(16134u, arg_2.b), Struct_1(-(~vec2<i32>(u_input.a.x, -28516i)), !select(vec4<bool>(var_0, false, var_0, false), arg_2.a.b, !arg_2.a.b), vec3<u32>(1u, ~_wgslsmith_div_u32(5734u, var_1.a), ~4294967295u)), u_input.a, firstTrailingBit(firstLeadingBit((u_input.a.x | 53329i) ^ firstTrailingBit(u_input.a.x))), ~_wgslsmith_mult_u32(arg_0, func_4(Struct_1(u_input.a.xz, vec4<bool>(false, false, var_1.b.b.x, true), vec3<u32>(4294967295u, arg_2.a.c.x, 27216u)), Struct_3(false, var_1.e, arg_2.a.c.yy, vec4<i32>(1i, -15755i, var_1.c.x, -49276i), -1i), vec4<u32>(arg_2.a.c.x, 6460u, 13939u, global3[_wgslsmith_index_u32(u_input.b, 6u)]), vec3<u32>(arg_0, 53183u, global3[_wgslsmith_index_u32(31596u, 6u)]))));
    global2 = array<vec2<f32>, 31>();
    return Struct_1(vec2<i32>(57816i, ~func_3(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a.x, -1i, -20451i), u_input.a), Struct_3(var_1.b.b.x, var_1.a, var_1.b.c.xx, vec4<i32>(-1055i, u_input.a.x, u_input.a.x, 2147483647i), arg_2.a.a.x), Struct_3(true, global3[_wgslsmith_index_u32(26542u, 6u)], var_1.b.c.xy, vec4<i32>(6988i, var_1.c.x, 30407i, 0i), arg_2.a.a.x), Struct_4(1u, Struct_1(vec2<i32>(28931i, -39153i), arg_2.a.b, vec3<u32>(2140u, 5967u, 15971u)), vec3<i32>(var_1.b.a.x, u_input.a.x, 1i), -22675i, arg_1.x)).x), !var_1.b.b, select(~(~vec3<u32>(u_input.b, 4374u, arg_1.x)) << (~(~var_1.b.c) % vec3<u32>(32u)), arg_2.a.c, var_1.b.b.wwy));
}

fn func_1(arg_0: Struct_3, arg_1: f32, arg_2: u32, arg_3: vec3<u32>) -> vec3<u32> {
    var var_0 = func_5(func_4(Struct_1(~_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a.x, -31135i), u_input.a.zx), vec4<bool>(arg_0.a & arg_0.a, true, true, !arg_0.a), ~arg_3), Struct_3(arg_0.a, func_2(), _wgslsmith_mod_vec2_u32(arg_0.c, ~vec2<u32>(arg_3.x, 0u)), arg_0.d, _wgslsmith_dot_vec3_i32(max(arg_0.d.xyy, u_input.a), func_3(vec3<i32>(arg_0.e, u_input.a.x, arg_0.e), Struct_3(false, 4294967295u, arg_3.xx, arg_0.d, 1i), Struct_3(true, arg_3.x, vec2<u32>(48475u, 0u), arg_0.d, arg_0.d.x), Struct_4(41024u, Struct_1(u_input.a.zy, vec4<bool>(arg_0.a, arg_0.a, arg_0.a, true), arg_3), vec3<i32>(arg_0.e, arg_0.d.x, arg_0.e), 1i, arg_0.b)))), ~(~vec4<u32>(arg_3.x, 29372u, 15145u, 18275u) & abs(vec4<u32>(arg_2, arg_2, global3[_wgslsmith_index_u32(4597u, 6u)], 42152u))), arg_3 ^ ~(vec3<u32>(0u, global3[_wgslsmith_index_u32(81777u, 6u)], 2315u) & arg_3)), ~(~countOneBits(~arg_3.xx)), Struct_2(Struct_1(abs(_wgslsmith_sub_vec2_i32(vec2<i32>(12256i, 4133i), vec2<i32>(-12910i, 8775i))), select(vec4<bool>(true, arg_0.a, true, arg_0.a), !vec4<bool>(false, false, arg_0.a, false), false), vec3<u32>(~arg_2, 1u, ~arg_3.x)), ~arg_0.c.x));
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(122f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(600f, -143f)))) >= arg_1;
    global0 = array<f32, 5>();
    global2 = array<vec2<f32>, 31>();
    let var_1 = -_wgslsmith_clamp_vec4_i32(vec4<i32>(reverseBits(~u_input.a.x), ~(-54566i), arg_0.d.x, max(-2147483647i, -3661i)), -vec4<i32>(arg_0.d.x, 19033i, 13917i, u_input.a.x) << (abs(vec4<u32>(var_0.c.x, 68919u, 22167u, arg_2)) % vec4<u32>(32u)), _wgslsmith_div_vec4_i32(arg_0.d, min(vec4<i32>(23862i, var_0.a.x, var_0.a.x, var_0.a.x), firstTrailingBit(vec4<i32>(var_0.a.x, -2147483647i, var_0.a.x, var_0.a.x)))));
    return abs(_wgslsmith_mod_vec3_u32(~_wgslsmith_mult_vec3_u32(vec3<u32>(var_0.c.x, global3[_wgslsmith_index_u32(43014u, 6u)], u_input.b), vec3<u32>(var_0.c.x, arg_2, arg_2)), ~(_wgslsmith_mod_vec3_u32(vec3<u32>(global3[_wgslsmith_index_u32(u_input.b, 6u)], var_0.c.x, 23219u), var_0.c) >> ((arg_3 ^ var_0.c) % vec3<u32>(32u)))));
}

fn func_6(arg_0: Struct_2, arg_1: vec4<f32>) -> Struct_2 {
    global3 = array<u32, 6>();
    var var_0 = _wgslsmith_mod_vec4_i32(_wgslsmith_mult_vec4_i32(-_wgslsmith_add_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(-15212i, u_input.a.x, arg_0.a.a.x, 0i), vec4<i32>(10102i, 0i, 2147483647i, u_input.a.x)), vec4<i32>(u_input.a.x, 0i, 1i, u_input.a.x)), firstLeadingBit(vec4<i32>(-76665i, arg_0.a.a.x, ~u_input.a.x, -38024i))), countOneBits(max(vec4<i32>(0i, 1i, u_input.a.x, -35288i), ~vec4<i32>(-6881i, 80242i, arg_0.a.a.x, 0i))) | abs(max(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -2147483647i) ^ vec4<i32>(-2147483647i, arg_0.a.a.x, -15537i, u_input.a.x), vec4<i32>(-33434i, 0i, 1i, -2147483647i))));
    global0 = array<f32, 5>();
    let var_1 = vec2<u32>(func_4(func_5(_wgslsmith_div_u32(22378u, countOneBits(1u)), vec2<u32>(49443u, abs(u_input.b)), arg_0), Struct_3(all(arg_0.a.b.xx) & arg_0.a.b.x, ~global3[_wgslsmith_index_u32(u_input.b, 6u)], arg_0.a.c.zz, vec4<i32>(-1i >> (0u % 32u), countOneBits(-370i), 80953i, 1i), ~(i32(-1i) * -3589i)), ~((vec4<u32>(arg_0.b, 1u, 4294967295u, 1u) << (vec4<u32>(global3[_wgslsmith_index_u32(4294967295u, 6u)], 54351u, 10738u, 1u) % vec4<u32>(32u))) | vec4<u32>(u_input.b, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 6u)], 6u)], global3[_wgslsmith_index_u32(53087u, 6u)], 22573u)), vec3<u32>(59379u, global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.b, 4775u, 39226u), select(arg_0.a.c, arg_0.a.c, false)), 6u)], _wgslsmith_clamp_u32(4294967295u, 93800u, arg_0.b) >> (_wgslsmith_div_u32(arg_0.a.c.x, u_input.b) % 32u))), global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.b << (_wgslsmith_clamp_u32(_wgslsmith_div_u32(global3[_wgslsmith_index_u32(4294967295u, 6u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 6u)], 6u)]), arg_0.a.c.x, arg_0.a.c.x) % 32u), 4294967295u), 6u)]);
    let var_2 = _wgslsmith_add_u32(4294967295u, ~(~global3[_wgslsmith_index_u32(10575u ^ (arg_0.b << (u_input.b % 32u)), 6u)]));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(Struct_2(Struct_1(vec2<i32>(0i, u_input.a.x), vec4<bool>(true, true, true, true), func_1(Struct_3(true, global3[_wgslsmith_index_u32(u_input.b, 6u)], vec2<u32>(1u, global3[_wgslsmith_index_u32(69105u, 6u)]), vec4<i32>(-2147483647i, -1i, 55419i, u_input.a.x), 16298i), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4294967295u, 5u)]), ~u_input.b, _wgslsmith_add_vec3_u32(vec3<u32>(18120u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(44842u, 6u)], 6u)], 6u)], u_input.b), vec3<u32>(59148u, global3[_wgslsmith_index_u32(0u, 6u)], 46744u)))), (global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 6u)], 6u)] & (u_input.b ^ 0u)) << (~global3[_wgslsmith_index_u32(~10627u, 6u)] % 32u)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-727f, -620f, 179f, global0[_wgslsmith_index_u32(u_input.b, 5u)]), vec4<f32>(493f, global0[_wgslsmith_index_u32(4294967295u, 5u)], global0[_wgslsmith_index_u32(4294967295u, 5u)], global0[_wgslsmith_index_u32(99359u, 5u)])))))))));
    var var_1 = _wgslsmith_div_i32(_wgslsmith_mult_i32(~(-2147483647i), -1i), -31097i) <= firstLeadingBit(-(var_0.a.a.x >> (1u % 32u)));
    let var_2 = ~vec2<u32>(~28241u, _wgslsmith_clamp_u32(1u, 44868u, _wgslsmith_sub_u32(_wgslsmith_div_u32(12601u, 4294967295u), ~var_0.b)));
    let var_3 = Struct_4(~(~global3[_wgslsmith_index_u32(1u, 6u)]), func_6(Struct_2(Struct_1(vec2<i32>(-2147483647i, u_input.a.x), var_0.a.b, firstLeadingBit(var_0.a.c)), max(1u, 4294967295u)), vec4<f32>(_wgslsmith_f_op_f32(1f + global0[_wgslsmith_index_u32(u_input.b, 5u)]), _wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(57363u, 6u)] & u_input.b, 5u)])), 1128f, -2328f)).a, countOneBits(-(~(vec3<i32>(var_0.a.a.x, 36726i, var_0.a.a.x) | u_input.a))), 0i, _wgslsmith_add_u32(var_2.x, _wgslsmith_mod_u32(~5644u, ~(u_input.b | 85544u))));
    var_1 = var_3.b.b.x;
    let var_4 = vec4<u32>(countOneBits(abs(global3[_wgslsmith_index_u32(104746u, 6u)])), 84030u, 6209u, abs(firstLeadingBit(min(_wgslsmith_mod_u32(var_2.x, 4294967295u), _wgslsmith_mod_u32(u_input.b, var_2.x)))));
    let var_5 = select(_wgslsmith_clamp_vec3_i32(~(~vec3<i32>(38483i, var_0.a.a.x, var_0.a.a.x)), func_3(vec3<i32>(var_3.d, 0i, u_input.a.x), Struct_3(false, 1u, var_3.b.c.xx, vec4<i32>(-45044i, var_3.d, -2147483647i, u_input.a.x), 4172i), Struct_3(var_3.b.b.x, 6886u, vec2<u32>(36943u, global3[_wgslsmith_index_u32(var_0.b, 6u)]), vec4<i32>(41828i, var_3.b.a.x, -3420i, -1i), u_input.a.x), var_3) | vec3<i32>(u_input.a.x, var_0.a.a.x >> (35437u % 32u), u_input.a.x), u_input.a), u_input.a, false | (-1i == -var_3.c.x));
    var_1 = all(!vec4<bool>(var_0.a.b.x, var_0.a.b.x == !var_0.a.b.x, false, !var_3.b.b.x & all(var_0.a.b)));
    let x = u_input.a;
    s_output = StorageBuffer(select(vec2<u32>(countOneBits(var_0.b) & var_2.x, ~_wgslsmith_div_u32(66628u, u_input.b)), _wgslsmith_add_vec2_u32(vec2<u32>(u_input.b, 11777u) >> ((vec2<u32>(4294967295u, 0u) >> (vec2<u32>(var_3.e, var_4.x) % vec2<u32>(32u))) % vec2<u32>(32u)), vec2<u32>(firstLeadingBit(19742u), abs(34665u))), vec2<bool>(all(vec3<bool>(true, false, var_0.a.b.x)), var_3.b.b.x)), _wgslsmith_clamp_i32(countOneBits(func_3(countOneBits(u_input.a), Struct_3(var_3.b.b.x, var_4.x, vec2<u32>(47953u, var_3.b.c.x), vec4<i32>(var_5.x, var_5.x, 1i, 24280i), 2790i), Struct_3(var_3.b.b.x, var_0.b, vec2<u32>(4294967295u, 4294967295u), vec4<i32>(u_input.a.x, -41588i, var_0.a.a.x, var_5.x), 0i), Struct_4(1u, Struct_1(var_3.b.a, vec4<bool>(true, true, var_0.a.b.x, false), var_3.b.c), vec3<i32>(-15598i, var_0.a.a.x, var_3.b.a.x), -2147483647i, var_2.x)).x), 13516i, -2147483647i), -338f);
}

