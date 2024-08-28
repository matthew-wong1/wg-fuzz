struct Struct_1 {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec4<i32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: i32,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<f32>,
    c: Struct_1,
    d: bool,
}

struct Struct_4 {
    a: f32,
    b: Struct_2,
    c: f32,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
    d: vec2<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 29>;

var<private> global1: f32;

var<private> global2: array<bool, 17> = array<bool, 17>(true, true, false, true, true, true, false, true, false, false, true, false, true, true, false, false, false);

var<private> global3: array<i32, 19>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_4, arg_2: Struct_2) -> i32 {
    global1 = _wgslsmith_f_op_f32(sign(1257f));
    var var_0 = 60248i;
    return arg_0.a.c.x;
}

fn func_2(arg_0: vec3<bool>) -> Struct_2 {
    let var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(183f, -244f)), 464f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(323f, -958f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1103f, 380f))), _wgslsmith_div_vec2_f32(vec2<f32>(-329f, 1643f), vec2<f32>(-333f, 1000f))))));
    let var_1 = select(vec4<i32>(_wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(58104i, u_input.a), abs(vec2<i32>(-2372i, 1i))), countOneBits(-36020i), -42562i << ((4294967295u ^ u_input.b.x) % 32u)), 0i, -11586i, global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(~u_input.e.x | ~1u, ~u_input.c), 19u)]), vec4<i32>(~select(-27578i, _wgslsmith_dot_vec3_i32(vec3<i32>(global3[_wgslsmith_index_u32(0u, 19u)], global3[_wgslsmith_index_u32(1u, 19u)], 35521i), vec3<i32>(1i, global3[_wgslsmith_index_u32(4294967295u, 19u)], -4589i)), arg_0.x), -1i, _wgslsmith_clamp_i32(-2147483647i, global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(0u, 8406u, 0u), vec3<u32>(44396u, u_input.e.x, u_input.c)), countOneBits(vec3<u32>(u_input.b.x, 1u, u_input.b.x))), 19u)], -15204i), _wgslsmith_mult_i32(-(i32(-1i) * -22535i), 0i)), vec4<bool>(global2[_wgslsmith_index_u32(43178u, 17u)], false, any(arg_0.xz), !(!arg_0.x)));
    let var_2 = _wgslsmith_sub_i32(_wgslsmith_clamp_i32(-1i, (_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.x, 0i, var_1.x, u_input.d.x), var_1) & -u_input.d.x) ^ -1i, _wgslsmith_clamp_i32(global3[_wgslsmith_index_u32(u_input.e.x | 4294967295u, 19u)], 24111i, func_3(Struct_3(Struct_1(var_1, vec3<u32>(u_input.b.x, 9180u, 0u), vec4<i32>(u_input.a, global3[_wgslsmith_index_u32(u_input.e.x, 19u)], 0i, 1i)), vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x), Struct_1(vec4<i32>(-11191i, -2147483647i, u_input.d.x, 10701i), vec3<u32>(u_input.e.x, u_input.c, 0u), vec4<i32>(-1i, 0i, var_1.x, u_input.a)), global2[_wgslsmith_index_u32(u_input.e.x, 17u)]), Struct_4(var_0.x, Struct_2(vec3<u32>(1u, 4294967295u, 12381u), Struct_1(vec4<i32>(global3[_wgslsmith_index_u32(u_input.c, 19u)], -2147483647i, 1i, u_input.d.x), vec3<u32>(31908u, 4294967295u, 4294967295u), var_1), 0i, Struct_1(vec4<i32>(global3[_wgslsmith_index_u32(u_input.c, 19u)], -46864i, global3[_wgslsmith_index_u32(84054u, 19u)], 2147483647i), vec3<u32>(4294967295u, u_input.b.x, 1u), var_1)), 1360f, vec3<f32>(-629f, 259f, -400f)), Struct_2(vec3<u32>(4294967295u, 15391u, 8600u), Struct_1(var_1, vec3<u32>(u_input.e.x, u_input.c, 0u), var_1), 2147483647i, Struct_1(var_1, vec3<u32>(64287u, 0u, 64483u), vec4<i32>(0i, var_1.x, var_1.x, 0i)))))), -(~(-2147483647i)));
    let var_3 = ~_wgslsmith_mult_u32(u_input.c, ~(_wgslsmith_clamp_u32(4294967295u, u_input.c, 4294967295u) << (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.e.x, u_input.e.x, 37090u), vec3<u32>(0u, 30080u, 2784u)) % 32u)));
    let var_4 = select(firstLeadingBit(~_wgslsmith_sub_u32(abs(55437u), ~var_3)), ~(~(~_wgslsmith_sub_u32(13736u, 0u))), true);
    return Struct_2(vec3<u32>(var_4, _wgslsmith_div_u32(var_3, abs(var_4)), ~25292u) << (_wgslsmith_sub_vec3_u32(_wgslsmith_clamp_vec3_u32(reverseBits(vec3<u32>(u_input.c, 26760u, var_4)), ~vec3<u32>(1u, 0u, var_3), ~vec3<u32>(6825u, 25333u, var_4)), ~_wgslsmith_mod_vec3_u32(vec3<u32>(var_3, 12179u, 1u), vec3<u32>(1u, 4294967295u, 0u))) % vec3<u32>(32u)), Struct_1(abs(min(var_1, vec4<i32>(global3[_wgslsmith_index_u32(105580u, 19u)], var_1.x, -1i, -1i) & var_1)), _wgslsmith_mod_vec3_u32(~_wgslsmith_div_vec3_u32(vec3<u32>(var_4, var_3, var_3), vec3<u32>(var_4, var_4, 21907u)), abs(select(vec3<u32>(29005u, 30777u, 36228u), vec3<u32>(1u, 14423u, 44668u), arg_0))), var_1), 2147483647i & var_2, Struct_1(-countOneBits(var_1), _wgslsmith_clamp_vec3_u32(max(vec3<u32>(u_input.e.x, 9347u, var_3), vec3<u32>(28463u, var_3, var_4)) & (vec3<u32>(u_input.c, 29463u, 38288u) << (vec3<u32>(37667u, 1u, var_3) % vec3<u32>(32u))), _wgslsmith_mult_vec3_u32(~vec3<u32>(0u, u_input.c, var_3), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.e.x, u_input.e.x, 4294967295u), vec3<u32>(u_input.c, 4294967295u, 1u))), ~(~vec3<u32>(46061u, var_4, u_input.b.x))), ~(var_1 & var_1) | countOneBits(~vec4<i32>(18161i, -4701i, u_input.a, 51866i))));
}

fn func_1(arg_0: vec3<u32>) -> Struct_3 {
    let var_0 = Struct_4(_wgslsmith_f_op_f32(186f * -1457f), func_2(vec3<bool>(!global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.b.x, 1u), arg_0), 17u)], any(!vec2<bool>(global2[_wgslsmith_index_u32(1u, 17u)], global2[_wgslsmith_index_u32(u_input.e.x, 17u)])), !global2[_wgslsmith_index_u32(1u, 17u)])), -1000f, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(459f, 968f, 244f), vec3<f32>(-1407f, -1237f, 1214f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(394f, -2654f, 722f) * vec3<f32>(-1670f, 384f, 775f))))));
    var var_1 = var_0.b.b.c.wz;
    global3 = array<i32, 19>();
    var var_2 = Struct_4(_wgslsmith_f_op_f32(f32(-1f) * -320f), var_0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_0.c, var_0.d.x)) - _wgslsmith_f_op_f32(204f * var_0.d.x))))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(var_0.d * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_0.a, var_0.c, var_0.a))))))));
    var var_3 = _wgslsmith_div_u32(u_input.e.x, arg_0.x);
    return Struct_3(Struct_1(vec4<i32>(0i, ~_wgslsmith_dot_vec2_i32(var_2.b.d.a.zw, vec2<i32>(0i, var_0.b.c)), ~(-16946i), firstLeadingBit(~0i)), _wgslsmith_clamp_vec3_u32(abs(~var_0.b.b.b), _wgslsmith_div_vec3_u32(firstTrailingBit(var_0.b.a), ~arg_0), var_0.b.a), vec4<i32>(var_1.x, var_2.b.c, ~_wgslsmith_dot_vec3_i32(vec3<i32>(var_2.b.d.c.x, u_input.d.x, -1i), var_0.b.d.a.zxx), 49165i)), vec4<f32>(-768f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(-734f))))), var_2.c, _wgslsmith_f_op_f32(select(847f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_2.c, var_0.d.x)) - _wgslsmith_f_op_f32(ceil(153f))), any(select(vec2<bool>(global2[_wgslsmith_index_u32(18419u, 17u)], false), vec2<bool>(global2[_wgslsmith_index_u32(arg_0.x, 17u)], false), false))))), var_2.b.b, !all(select(select(vec2<bool>(true, false), vec2<bool>(global2[_wgslsmith_index_u32(arg_0.x, 17u)], global2[_wgslsmith_index_u32(76091u, 17u)]), vec2<bool>(true, global2[_wgslsmith_index_u32(6349u, 17u)])), !vec2<bool>(global2[_wgslsmith_index_u32(1u, 17u)], global2[_wgslsmith_index_u32(var_2.b.b.b.x, 17u)]), vec2<bool>(global2[_wgslsmith_index_u32(var_2.b.a.x, 17u)], global2[_wgslsmith_index_u32(var_2.b.a.x, 17u)]))));
}

fn func_4(arg_0: Struct_3, arg_1: i32, arg_2: bool, arg_3: vec2<u32>) -> u32 {
    let var_0 = arg_0.b.x;
    var var_1 = 2147483647i;
    global2 = array<bool, 17>();
    let var_2 = 0i;
    global2 = array<bool, 17>();
    return u_input.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(_wgslsmith_mod_u32(func_4(func_1(~vec3<u32>(1u, 1u, 32742u)), func_1(~vec3<u32>(4294967295u, u_input.b.x, 360u)).a.a.x, any(!vec2<bool>(false, global2[_wgslsmith_index_u32(1u, 17u)])), ~vec2<u32>(u_input.c, 4294967295u)), 4294967295u));
    var var_1 = select(abs(~global3[_wgslsmith_index_u32(74810u, 19u)]) & _wgslsmith_dot_vec3_i32(countOneBits(vec3<i32>(0i, global3[_wgslsmith_index_u32(4294967295u, 19u)], u_input.d.x) ^ vec3<i32>(u_input.d.x, global3[_wgslsmith_index_u32(u_input.b.x, 19u)], -32425i)), select(vec3<i32>(10089i, 0i, global3[_wgslsmith_index_u32(139556u, 19u)]), vec3<i32>(u_input.d.x, global3[_wgslsmith_index_u32(u_input.e.x, 19u)], 1i) << (vec3<u32>(u_input.e.x, 4294967295u, 0u) % vec3<u32>(32u)), vec3<bool>(global2[_wgslsmith_index_u32(u_input.e.x, 17u)], global2[_wgslsmith_index_u32(1u, 17u)], false))), _wgslsmith_dot_vec2_i32(firstTrailingBit(_wgslsmith_add_vec2_i32(min(u_input.d, u_input.d), _wgslsmith_add_vec2_i32(u_input.d, u_input.d))), select(vec2<i32>(1i, 1i), vec2<i32>(u_input.d.x, reverseBits(1i)), (global2[_wgslsmith_index_u32(4294967295u, 17u)] != false) == false)), !all(vec2<bool>(select(false, true, global2[_wgslsmith_index_u32(u_input.b.x, 17u)]), any(vec2<bool>(global2[_wgslsmith_index_u32(u_input.b.x, 17u)], global2[_wgslsmith_index_u32(33598u, 17u)])))));
    var var_2 = u_input.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d.x, _wgslsmith_mod_u32(25932u, func_4(Struct_3(func_2(vec3<bool>(true, true, false)).b, vec4<f32>(1186f, 737f, -1940f, 346f), Struct_1(vec4<i32>(-28645i, -1i, u_input.a, 1i), vec3<u32>(4896u, 4294967295u, 35667u), vec4<i32>(global3[_wgslsmith_index_u32(u_input.b.x, 19u)], -35549i, u_input.d.x, -41436i)), select(global2[_wgslsmith_index_u32(10008u, 17u)], true, global2[_wgslsmith_index_u32(19117u, 17u)])), 1i, global2[_wgslsmith_index_u32((u_input.b.x >> (4294967295u % 32u)) >> (u_input.c % 32u), 17u)], abs(select(u_input.b, u_input.b, global2[_wgslsmith_index_u32(9284u, 17u)])))));
}

