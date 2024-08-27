struct Struct_1 {
    a: vec2<bool>,
    b: bool,
    c: bool,
    d: vec3<f32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec4<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: array<i32, 24> = array<i32, 24>(-12235i, 13252i, i32(-2147483648), -1i, 6062i, -10639i, 95066i, -17531i, 0i, -1935i, 2147483647i, -1i, i32(-2147483648), 27551i, 28235i, -58425i, 1i, -43548i, -1i, -76970i, -12741i, 18110i, 0i, -43692i);

var<private> global2: array<Struct_1, 29> = array<Struct_1, 29>(Struct_1(vec2<bool>(false, true), false, false, vec3<f32>(1000f, -761f, -881f)), Struct_1(vec2<bool>(true, true), true, true, vec3<f32>(1950f, 261f, -524f)), Struct_1(vec2<bool>(true, true), true, false, vec3<f32>(-260f, 458f, -1326f)), Struct_1(vec2<bool>(false, false), false, false, vec3<f32>(1513f, -860f, -1036f)), Struct_1(vec2<bool>(false, true), true, true, vec3<f32>(-1447f, -309f, 1023f)), Struct_1(vec2<bool>(false, true), true, false, vec3<f32>(-427f, 525f, 388f)), Struct_1(vec2<bool>(true, true), true, true, vec3<f32>(-2112f, -576f, -1278f)), Struct_1(vec2<bool>(false, true), true, true, vec3<f32>(-1007f, -717f, 753f)), Struct_1(vec2<bool>(false, false), true, false, vec3<f32>(-765f, -1654f, 941f)), Struct_1(vec2<bool>(false, false), false, true, vec3<f32>(389f, -918f, -1201f)), Struct_1(vec2<bool>(true, true), true, true, vec3<f32>(-855f, -1481f, -1097f)), Struct_1(vec2<bool>(false, true), false, false, vec3<f32>(880f, -1551f, 625f)), Struct_1(vec2<bool>(false, true), false, true, vec3<f32>(-1373f, 864f, 1000f)), Struct_1(vec2<bool>(false, false), true, false, vec3<f32>(-141f, -1010f, -1000f)), Struct_1(vec2<bool>(false, false), true, true, vec3<f32>(1646f, -504f, -1046f)), Struct_1(vec2<bool>(true, false), false, true, vec3<f32>(439f, 894f, -1166f)), Struct_1(vec2<bool>(false, true), true, true, vec3<f32>(463f, -1391f, 278f)), Struct_1(vec2<bool>(false, false), true, true, vec3<f32>(-1305f, 1046f, 752f)), Struct_1(vec2<bool>(false, false), true, false, vec3<f32>(411f, -195f, -664f)), Struct_1(vec2<bool>(true, true), true, true, vec3<f32>(-219f, -197f, -1000f)), Struct_1(vec2<bool>(true, true), false, true, vec3<f32>(-810f, 1265f, 1000f)), Struct_1(vec2<bool>(true, false), false, true, vec3<f32>(-1895f, -1000f, 2029f)), Struct_1(vec2<bool>(true, true), true, true, vec3<f32>(106f, 317f, -2114f)), Struct_1(vec2<bool>(true, false), true, false, vec3<f32>(1424f, 1101f, -373f)), Struct_1(vec2<bool>(true, false), false, true, vec3<f32>(1089f, -106f, -331f)), Struct_1(vec2<bool>(false, true), false, false, vec3<f32>(-573f, 681f, -1000f)), Struct_1(vec2<bool>(false, true), false, true, vec3<f32>(-1689f, 1238f, 873f)), Struct_1(vec2<bool>(true, false), false, false, vec3<f32>(1163f, 1271f, 978f)), Struct_1(vec2<bool>(true, false), true, false, vec3<f32>(-100f, 344f, -928f)));

var<private> global3: Struct_1 = Struct_1(vec2<bool>(false, false), true, true, vec3<f32>(-1840f, -291f, -1733f));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> u32 {
    var var_0 = all(select(select(!vec3<bool>(true, global3.b, global3.b), select(select(vec3<bool>(global3.a.x, true, global3.a.x), vec3<bool>(false, false, global3.c), true), select(vec3<bool>(true, false, global0.x), vec3<bool>(false, global3.c, global3.a.x), vec3<bool>(global0.x, global0.x, global3.b)), !vec3<bool>(global0.x, true, true)), !(!vec3<bool>(true, global0.x, global3.c))), !vec3<bool>(global3.c, true, any(vec4<bool>(global0.x, global3.c, global3.a.x, false))), select(select(!vec3<bool>(global3.b, false, global0.x), !vec3<bool>(false, global3.b, global0.x), true), select(select(vec3<bool>(false, false, global3.b), vec3<bool>(false, global0.x, true), vec3<bool>(global0.x, false, false)), select(vec3<bool>(true, true, global3.b), vec3<bool>(false, global0.x, global3.b), global0.x), !vec3<bool>(global0.x, global3.b, true)), vec3<bool>(global0.x, global0.x, !global3.b))));
    let var_1 = -u_input.a;
    var var_2 = global0.x;
    var_0 = true;
    global3 = global2[_wgslsmith_index_u32(1u, 29u)];
    return 1u;
}

fn func_2(arg_0: i32, arg_1: i32, arg_2: i32) -> Struct_1 {
    var var_0 = vec3<u32>(~1u, _wgslsmith_dot_vec4_u32(~vec4<u32>(7284u, 4294967295u, 0u, 49278u), vec4<u32>(_wgslsmith_mult_u32(873u, 41223u), 22248u, 0u, 51331u)) | _wgslsmith_mod_u32(func_3(), ~47145u), reverseBits(4294967295u));
    global2 = array<Struct_1, 29>();
    var var_1 = Struct_1(select(select(global0.yx, select(select(global3.a, global3.a, vec2<bool>(global3.a.x, true)), global3.a, vec2<bool>(global3.c, true)), global3.a), vec2<bool>(true, all(select(global0.zz, vec2<bool>(global3.a.x, global3.c), global3.a.x))), any(vec4<bool>(global0.x, global0.x, true, false)) == !global3.b), true, global3.d.x > -464f, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global3.d)));
    var_0 = countOneBits(_wgslsmith_div_vec3_u32(vec3<u32>(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(var_0.yz, vec2<u32>(19896u, var_0.x)), 4294967295u), ~_wgslsmith_div_u32(4294967295u, var_0.x), ~(~44831u)), vec3<u32>(~4294967295u, var_0.x, func_3())));
    let var_2 = vec2<i32>(reverseBits(-18138i << (var_0.x % 32u)), _wgslsmith_sub_i32(global1[_wgslsmith_index_u32(var_0.x, 24u)], max(firstLeadingBit(-arg_1), -(arg_0 ^ 1i))));
    return Struct_1(select(!select(global3.a, select(vec2<bool>(true, false), var_1.a, var_1.c), true), global3.a, !var_1.a), false, global0.x, global3.d);
}

fn func_4(arg_0: Struct_2) -> vec3<f32> {
    var var_0 = global0.yx;
    var var_1 = Struct_2(vec4<u32>(_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(countOneBits(arg_0.a.wx), vec2<u32>(arg_0.a.x, arg_0.a.x)), _wgslsmith_mod_u32(~0u, 32372u)), 4294967295u, _wgslsmith_sub_u32(~86360u, ~(~48547u)), min(0u ^ ~arg_0.a.x, arg_0.a.x)), arg_0.b);
    return vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1725f), _wgslsmith_f_op_f32(f32(-1f) * -297f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -803f) - _wgslsmith_f_op_f32(sign(var_1.b.d.x))) * arg_0.b.d.x)), _wgslsmith_div_f32(global3.d.x, _wgslsmith_f_op_f32(-1175f + var_1.b.d.x)));
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec3_f32(func_4(Struct_2(firstTrailingBit(min(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(5201u, 4294967295u, 1u, 12500u))), func_2(-1i, global1[_wgslsmith_index_u32(~firstTrailingBit(0u), 24u)], -1i))));
    let var_1 = var_0.xy;
    let var_2 = Struct_2(select(vec4<u32>(~_wgslsmith_mod_u32(0u, 1u), func_3(), firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 0u, 9991u, 30953u), vec4<u32>(4294967295u, 1u, 9730u, 79629u))), firstTrailingBit(~0u)), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(29940u, 7787u, 29260u, 1u), vec4<u32>(44615u, 23007u, 4294967295u, 112602u)) << (53179u % 32u), ~30034u, ~0u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), abs(vec2<u32>(1u, 1u)))), !select(vec4<bool>(global0.x, global0.x, global3.c, global0.x), select(vec4<bool>(false, global0.x, false, global0.x), vec4<bool>(true, global3.b, global3.a.x, false), global0.x), true)), func_2(-1i, 2147483647i >> (_wgslsmith_dot_vec3_u32(select(vec3<u32>(0u, 41770u, 1u), vec3<u32>(1u, 8917u, 0u), false), ~vec3<u32>(0u, 40306u, 34258u)) % 32u), ~(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, 1i, -3124i, u_input.b.x), u_input.a) >> (abs(4294967295u) % 32u))));
    let var_3 = _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(var_2.a.xw, vec2<u32>(1u, ~1u)), select(var_2.a.x, var_2.a.x, !global3.b));
    var var_4 = global2[_wgslsmith_index_u32(73994u, 29u)];
    return Struct_1(!(!global3.a), !global0.x, global0.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global3.d)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = !select(!select(select(vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(global0.x, false, true), global3.c), vec3<bool>(true, global0.x, false), all(vec2<bool>(global0.x, false))), select(select(select(vec3<bool>(true, false, global3.c), vec3<bool>(global3.a.x, global3.a.x, false), global3.b), select(vec3<bool>(false, false, false), vec3<bool>(global0.x, global3.a.x, global0.x), vec3<bool>(true, global3.a.x, global3.c)), !vec3<bool>(global0.x, true, global3.c)), select(!vec3<bool>(false, global0.x, global3.a.x), vec3<bool>(false, true, global3.b), select(vec3<bool>(global3.a.x, true, global0.x), vec3<bool>(true, global3.b, false), vec3<bool>(global3.a.x, global0.x, true))), !(!global0.x)), global3.b);
    var var_0 = func_1();
    var var_1 = (abs(vec3<i32>(-1i, _wgslsmith_dot_vec3_i32(vec3<i32>(global1[_wgslsmith_index_u32(2628u, 24u)], -9746i, 1i), u_input.a.zxy), 48935i)) << (_wgslsmith_mult_vec3_u32(abs(vec3<u32>(22052u, 8465u, 1u)), firstLeadingBit(vec3<u32>(1u, 1u, 1u))) % vec3<u32>(32u))) << (abs(~vec3<u32>(103752u, firstTrailingBit(4294967295u), _wgslsmith_clamp_u32(4294967295u, 55965u, 20248u))) % vec3<u32>(32u));
    var var_2 = global2[_wgslsmith_index_u32(29708u, 29u)];
    var var_3 = max(1u, 80393u);
    let var_4 = global2[_wgslsmith_index_u32(firstTrailingBit(abs(abs(1u) | _wgslsmith_clamp_u32(~7751u, abs(101325u), min(19543u, 18288u)))), 29u)];
    let var_5 = vec2<u32>(_wgslsmith_mod_u32(~1u, ~(36813u >> (_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 1u, 1u, 24024u), vec4<u32>(1u, 1u, 0u, 32515u)) % 32u))), ~0u);
    var var_6 = Struct_1(global0.xy, true, firstTrailingBit(4294967295u) > ~1u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_4.d * vec3<f32>(1769f, -1343f, var_4.d.x))))));
    var_1 = max(~u_input.a.wyy, vec3<i32>(_wgslsmith_dot_vec2_i32(select(-var_1.yy, ~var_1.xz, !var_6.a), vec2<i32>(var_1.x, global1[_wgslsmith_index_u32(var_5.x, 24u)]) << ((vec2<u32>(var_5.x, 55316u) ^ vec2<u32>(var_5.x, var_5.x)) % vec2<u32>(32u))), -u_input.b.x, abs(~firstTrailingBit(u_input.c))));
    let x = u_input.a;
    s_output = StorageBuffer(1u, _wgslsmith_dot_vec2_i32(~var_1.yz, ((vec2<i32>(1i, global1[_wgslsmith_index_u32(1u, 24u)]) & vec2<i32>(0i, -26893i)) ^ -vec2<i32>(-2147483647i, var_1.x)) ^ ((u_input.a.zw << (vec2<u32>(var_5.x, var_5.x) % vec2<u32>(32u))) << (vec2<u32>(0u, var_5.x) % vec2<u32>(32u)))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(2298f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(1190f)))), var_6.d.x, var_0.d.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -1012f, var_0.d.x, var_6.d.x) * vec4<f32>(var_0.d.x, var_2.d.x, var_2.d.x, 2057f)))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_4.d.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_4.d.x)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_0.d.x, 887f)) - var_4.d.x))));
}

