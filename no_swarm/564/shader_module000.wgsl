struct Struct_1 {
    a: u32,
    b: vec2<i32>,
    c: f32,
    d: f32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: u32,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec4<u32>,
}

struct Struct_4 {
    a: i32,
    b: u32,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: vec2<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 9> = array<bool, 9>(true, false, false, true, false, false, true, true, false);

var<private> global1: array<Struct_2, 8> = array<Struct_2, 8>(Struct_2(vec2<bool>(false, false), Struct_1(4195u, vec2<i32>(-14861i, 2147483647i), 842f, -889f), 71373u, Struct_1(1u, vec2<i32>(-53070i, -1745i), -655f, 1715f)), Struct_2(vec2<bool>(true, false), Struct_1(1u, vec2<i32>(1i, i32(-2147483648)), -384f, -441f), 0u, Struct_1(0u, vec2<i32>(-14022i, 29806i), -931f, 285f)), Struct_2(vec2<bool>(true, false), Struct_1(0u, vec2<i32>(2147483647i, -40907i), 759f, 1325f), 0u, Struct_1(0u, vec2<i32>(-1i, i32(-2147483648)), 1073f, 617f)), Struct_2(vec2<bool>(true, true), Struct_1(1u, vec2<i32>(-14368i, 2982i), 1407f, 1660f), 63160u, Struct_1(4294967295u, vec2<i32>(i32(-2147483648), 0i), -1626f, -1452f)), Struct_2(vec2<bool>(false, false), Struct_1(47707u, vec2<i32>(-1i, 4489i), 1554f, -462f), 0u, Struct_1(1u, vec2<i32>(-1i, -43157i), 576f, 927f)), Struct_2(vec2<bool>(true, false), Struct_1(31259u, vec2<i32>(0i, i32(-2147483648)), 162f, 191f), 0u, Struct_1(41752u, vec2<i32>(-62905i, -1i), 748f, 1927f)), Struct_2(vec2<bool>(true, true), Struct_1(62549u, vec2<i32>(25454i, 69249i), 236f, 1264f), 1u, Struct_1(48356u, vec2<i32>(0i, 44401i), -605f, 255f)), Struct_2(vec2<bool>(false, true), Struct_1(0u, vec2<i32>(2147483647i, 24336i), -1427f, 1821f), 0u, Struct_1(17902u, vec2<i32>(35510i, 49606i), -445f, -452f)));

var<private> global2: Struct_2;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: f32, arg_1: Struct_4, arg_2: Struct_3, arg_3: Struct_1) -> vec4<u32> {
    var var_0 = countOneBits(~4294967295u);
    let var_1 = Struct_2(select(!vec2<bool>(true, global2.a.x || true), vec2<bool>(!global2.a.x || all(vec2<bool>(false, arg_2.b.a.x)), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(~u_input.a, firstLeadingBit(102267u)), 9u)]), select(select(vec2<bool>(true, true), arg_2.a.a, global0[_wgslsmith_index_u32(17388u >> (1u % 32u), 9u)]), select(arg_2.a.a, vec2<bool>(true, true), true || global0[_wgslsmith_index_u32(4294967295u, 9u)]), true)), Struct_1(~(~(arg_1.c.x & 1u)), u_input.b, arg_3.d, global2.b.c), countOneBits(arg_3.a), arg_2.a.b);
    var var_2 = all(select(!(!select(vec3<bool>(false, arg_2.a.a.x, global0[_wgslsmith_index_u32(1u, 9u)]), vec3<bool>(global2.a.x, global2.a.x, global0[_wgslsmith_index_u32(var_1.d.a, 9u)]), var_1.a.x)), !vec3<bool>(all(var_1.a), any(arg_2.b.a), false), !var_1.a.x));
    global1 = array<Struct_2, 8>();
    var_0 = 1u;
    return ~arg_2.c;
}

fn func_2(arg_0: Struct_4, arg_1: bool) -> f32 {
    var var_0 = Struct_3(global1[_wgslsmith_index_u32(~(abs(~17886u) << (u_input.a % 32u)), 8u)], global1[_wgslsmith_index_u32(arg_0.b, 8u)], _wgslsmith_add_vec4_u32(~func_3(_wgslsmith_f_op_f32(f32(-1f) * -1082f), arg_0, Struct_3(global1[_wgslsmith_index_u32(0u, 8u)], global1[_wgslsmith_index_u32(11490u, 8u)], vec4<u32>(arg_0.b, 53173u, 0u, 1u)), global2.b), select(firstLeadingBit(vec4<u32>(24483u, 61911u, global2.b.a, 4294967295u)), _wgslsmith_div_vec4_u32(~vec4<u32>(global2.b.a, u_input.a, 1u, 4294967295u), ~vec4<u32>(0u, u_input.a, global2.c, 45776u)), _wgslsmith_f_op_f32(-354f * -552f) < _wgslsmith_f_op_f32(-1756f + global2.d.d))));
    var var_1 = false;
    let var_2 = 963f;
    var var_3 = select(select(select(select(select(vec4<bool>(global0[_wgslsmith_index_u32(arg_0.c.x, 9u)], false, false, false), vec4<bool>(false, var_0.a.a.x, true, true), global2.a.x), !vec4<bool>(true, arg_1, false, var_0.a.a.x), true || var_0.a.a.x), !(!vec4<bool>(true, arg_1, global2.a.x, true)), !select(vec4<bool>(arg_1, var_0.a.a.x, arg_1, var_0.a.a.x), vec4<bool>(global2.a.x, arg_1, global0[_wgslsmith_index_u32(4294967295u, 9u)], true), vec4<bool>(global2.a.x, true, global0[_wgslsmith_index_u32(19087u, 9u)], false))), !vec4<bool>(arg_1 == arg_1, true, true, all(vec3<bool>(arg_1, false, var_0.a.a.x))), false), !vec4<bool>(global2.a.x, ~arg_0.a != -arg_0.a, var_0.a.a.x, true), (1i | arg_0.a) > countOneBits(21403i));
    let var_4 = vec2<bool>(_wgslsmith_div_i32(-_wgslsmith_sub_i32(-25450i, var_0.b.b.b.x), 42670i) != -2195i, false);
    return 1375f;
}

fn func_1(arg_0: i32, arg_1: Struct_2) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1392f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -769f) - _wgslsmith_f_op_f32(arg_1.b.c + global2.d.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(Struct_4(47891i, 1u, vec2<u32>(arg_1.d.a, 0u)), global0[_wgslsmith_index_u32(global2.b.a, 9u)])) * _wgslsmith_f_op_f32(round(1067f)))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.b.d, -1287f, arg_1.b.d) + vec3<f32>(arg_1.d.d, 957f, 363f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.d.d, -219f, 459f) * vec3<f32>(global2.b.d, 1602f, -1407f)))))))));
    var var_1 = Struct_4(firstTrailingBit(_wgslsmith_clamp_i32(u_input.b.x, 2147483647i | u_input.b.x, firstLeadingBit(global2.b.b.x)) ^ -34894i), 8724u, ~(~abs(~vec2<u32>(u_input.a, 42527u))));
    var var_2 = Struct_4(arg_1.d.b.x, var_1.c.x, var_1.c);
    let var_3 = Struct_3(arg_1, arg_1, (~vec4<u32>(var_2.c.x, var_1.c.x, 63334u, global2.d.a) << (~(~vec4<u32>(4294967295u, 48534u, u_input.a, arg_1.b.a)) % vec4<u32>(32u))) << (_wgslsmith_sub_vec4_u32(vec4<u32>(~global2.d.a, var_2.b, reverseBits(arg_1.c), reverseBits(global2.d.a)), ~(~vec4<u32>(4294967295u, arg_1.c, arg_1.d.a, var_2.c.x))) % vec4<u32>(32u)));
    global0 = array<bool, 9>();
    return Struct_3(global1[_wgslsmith_index_u32(var_2.b, 8u)], Struct_2(var_3.b.a, Struct_1(~var_3.a.b.a, vec2<i32>(1i, _wgslsmith_dot_vec2_i32(vec2<i32>(0i, -1i), vec2<i32>(arg_1.b.b.x, -58995i))), _wgslsmith_f_op_f32(f32(-1f) * -1468f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))), ~(~1u), Struct_1(arg_1.d.a, ~var_3.a.b.b, _wgslsmith_f_op_f32(round(global2.d.c)), _wgslsmith_f_op_f32(var_0.x - 1900f))), var_3.c);
}

fn func_4(arg_0: Struct_3, arg_1: vec3<bool>, arg_2: Struct_2, arg_3: f32) -> vec3<f32> {
    let var_0 = false;
    let var_1 = arg_2.b.b.x;
    let var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.a.d.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_1(u_input.b.x, global1[_wgslsmith_index_u32(arg_2.b.a, 8u)]).b.b.d))) - _wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(vec2<f32>(arg_0.a.b.d, -1549f), vec2<f32>(-1741f, _wgslsmith_f_op_f32(-arg_3))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(func_2(Struct_4(global2.b.b.x, 10669u, arg_0.c.yw), false)), _wgslsmith_f_op_f32(exp2(arg_3)))))));
    var var_3 = Struct_4(~_wgslsmith_sub_i32(var_1, _wgslsmith_mult_i32(-arg_0.a.b.b.x, abs(u_input.b.x))), _wgslsmith_clamp_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.a.c, 2239u, arg_2.d.a), vec3<u32>(1u, 46628u, arg_2.d.a)) ^ 19373u, 54184u), _wgslsmith_mult_u32(~0u, ~_wgslsmith_clamp_u32(8483u, u_input.a, arg_2.c)), 46832u), ~arg_0.c.zz);
    var var_4 = func_1(~2147483647i, func_1(i32(-1i) * -1i, func_1(_wgslsmith_mult_i32(arg_0.b.d.b.x, -41090i), arg_2).b).a).b.b;
    return vec3<f32>(arg_3, -1096f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_4.d))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_4(func_1(u_input.b.x, global1[_wgslsmith_index_u32(u_input.a, 8u)]), select(!vec3<bool>(global0[_wgslsmith_index_u32(1931u, 9u)], global0[_wgslsmith_index_u32(0u, 9u)], true), select(vec3<bool>(global0[_wgslsmith_index_u32(u_input.a, 9u)], false, global2.a.x), vec3<bool>(global2.a.x, true, global0[_wgslsmith_index_u32(23289u, 9u)]), vec3<bool>(true, global0[_wgslsmith_index_u32(90593u, 9u)], false)), vec3<bool>(false, true, true)), func_1(-u_input.b.x, func_1(u_input.b.x, global1[_wgslsmith_index_u32(1u, 8u)]).b).a, -1000f)) - vec3<f32>(-799f, global2.b.d, _wgslsmith_f_op_f32(round(global2.b.c)))));
    let var_1 = select((global2.d.b.x & _wgslsmith_mod_i32(select(-2147483647i, 0i, false), -u_input.b.x)) >> (_wgslsmith_div_u32(~global2.c, func_1(~u_input.b.x, global1[_wgslsmith_index_u32(~u_input.a, 8u)]).c.x) % 32u), global2.d.b.x, global2.a.x);
    let var_2 = vec3<i32>(~(-global2.d.b.x), ~_wgslsmith_clamp_i32(global2.d.b.x, _wgslsmith_sub_i32(8198i, global2.b.b.x), _wgslsmith_div_i32(u_input.b.x, u_input.b.x)), 86045i) << (max(_wgslsmith_add_vec3_u32(vec3<u32>(global2.d.a, 28604u, firstTrailingBit(4294967295u)), ~vec3<u32>(21044u, 49100u, 37694u)), vec3<u32>(global2.c, global2.b.a, u_input.a)) % vec3<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(~43377u, ~u_input.a), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(135f, 2141f, var_0.x, 363f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_0.x, global2.d.c, var_0.x, -465f), vec4<f32>(var_0.x, -1120f, global2.d.c, global2.b.d)))))))), vec2<f32>(-969f, _wgslsmith_f_op_vec3_f32(func_4(Struct_3(global1[_wgslsmith_index_u32(u_input.a, 8u)], Struct_2(vec2<bool>(global0[_wgslsmith_index_u32(global2.d.a, 9u)], false), Struct_1(u_input.a, vec2<i32>(-52913i, 24395i), -1000f, -370f), global2.c, global2.d), max(vec4<u32>(27887u, global2.c, u_input.a, u_input.a), vec4<u32>(global2.d.a, 44990u, 42470u, 70708u))), !select(vec3<bool>(global0[_wgslsmith_index_u32(1506u, 9u)], false, true), vec3<bool>(true, true, global0[_wgslsmith_index_u32(0u, 9u)]), global2.a.x), func_1(-u_input.b.x, func_1(46525i, Struct_2(global2.a, Struct_1(global2.b.a, var_2.zx, -1000f, var_0.x), 0u, global2.d)).b).a, 1154f)).x), firstTrailingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(-var_2.x, -1i, 0i), ~(~var_2))));
}

