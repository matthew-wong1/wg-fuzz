struct Struct_1 {
    a: u32,
    b: vec4<f32>,
    c: bool,
    d: vec4<i32>,
    e: vec3<u32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: vec3<f32>,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 12> = array<Struct_1, 12>(Struct_1(32202u, vec4<f32>(-1133f, -935f, -450f, -404f), true, vec4<i32>(2916i, 0i, 1i, 6059i), vec3<u32>(4294967295u, 34583u, 0u)), Struct_1(0u, vec4<f32>(1000f, -2110f, 1256f, 277f), true, vec4<i32>(1i, 1i, 0i, -43885i), vec3<u32>(237u, 69302u, 56922u)), Struct_1(0u, vec4<f32>(567f, 156f, 158f, -260f), false, vec4<i32>(-19314i, -1i, 2147483647i, 12825i), vec3<u32>(4294967295u, 16048u, 41643u)), Struct_1(9786u, vec4<f32>(-1182f, -1000f, -1398f, -1015f), true, vec4<i32>(15316i, -60884i, -4313i, 8965i), vec3<u32>(14230u, 0u, 0u)), Struct_1(4294967295u, vec4<f32>(-2711f, -1231f, 1211f, 667f), false, vec4<i32>(2147483647i, 1i, -1i, -28171i), vec3<u32>(1u, 75247u, 4294967295u)), Struct_1(0u, vec4<f32>(777f, 247f, 1663f, -878f), false, vec4<i32>(17901i, 34i, 41128i, 32658i), vec3<u32>(4235u, 1702u, 0u)), Struct_1(46017u, vec4<f32>(235f, 606f, 1538f, -960f), true, vec4<i32>(1i, 0i, 1i, 2147483647i), vec3<u32>(4294967295u, 9663u, 3311u)), Struct_1(24426u, vec4<f32>(-1314f, 234f, -288f, 533f), true, vec4<i32>(17387i, -24413i, 15329i, 16081i), vec3<u32>(75052u, 4294967295u, 61199u)), Struct_1(4294967295u, vec4<f32>(1000f, -480f, -386f, -935f), true, vec4<i32>(0i, -7297i, 1i, 9607i), vec3<u32>(28731u, 97208u, 4294967295u)), Struct_1(4294967295u, vec4<f32>(-329f, 926f, 710f, -582f), true, vec4<i32>(11489i, 1i, 30851i, -6742i), vec3<u32>(0u, 1u, 64103u)), Struct_1(4294967295u, vec4<f32>(351f, 364f, -938f, -665f), false, vec4<i32>(2147483647i, 2147483647i, -8184i, -7646i), vec3<u32>(0u, 0u, 0u)), Struct_1(0u, vec4<f32>(-2893f, 369f, -481f, -175f), false, vec4<i32>(-434i, -28223i, -85490i, -1i), vec3<u32>(1u, 4294967295u, 0u)));

var<private> global1: array<vec4<u32>, 3>;

var<private> global2: array<Struct_1, 4> = array<Struct_1, 4>(Struct_1(83348u, vec4<f32>(455f, 148f, 217f, 424f), true, vec4<i32>(0i, 26959i, 1i, 2147483647i), vec3<u32>(53848u, 10673u, 4294967295u)), Struct_1(4294967295u, vec4<f32>(-227f, -414f, -623f, -377f), true, vec4<i32>(2147483647i, -7820i, 33059i, 12468i), vec3<u32>(60474u, 1u, 53478u)), Struct_1(1u, vec4<f32>(830f, -148f, -477f, -347f), true, vec4<i32>(18128i, i32(-2147483648), 1i, -19338i), vec3<u32>(0u, 1u, 0u)), Struct_1(29003u, vec4<f32>(-712f, 658f, -1487f, 283f), true, vec4<i32>(379i, 1i, -2100i, -8258i), vec3<u32>(4294967295u, 86569u, 4294967295u)));

var<private> global3: bool = false;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: f32, arg_1: f32, arg_2: vec2<i32>, arg_3: Struct_1) -> u32 {
    let var_0 = -624f;
    global1 = array<vec4<u32>, 3>();
    let var_1 = _wgslsmith_mod_u32(u_input.b.x, min(~(~u_input.a), abs(arg_3.e.x) ^ u_input.b.x));
    global0 = array<Struct_1, 12>();
    var var_2 = ~_wgslsmith_mod_i32(-1i, _wgslsmith_add_i32(u_input.c, ~(~2147483647i)));
    return select(1u, 1u << (~(~0u) % 32u), false) | u_input.a;
}

fn func_3() -> u32 {
    global1 = array<vec4<u32>, 3>();
    var var_0 = vec2<bool>(true, true);
    let var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1233f))), -2898f))), Struct_1(u_input.b.x, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(230f, 618f), -748f, _wgslsmith_f_op_f32(f32(-1f) * -207f), 175f) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-983f, 979f, -484f, 1352f)))), true, firstTrailingBit(abs(~vec4<i32>(u_input.c, 2147483647i, 1i, 0i))), countOneBits(~(~vec3<u32>(u_input.a, 0u, u_input.a)))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-711f))), _wgslsmith_f_op_f32(trunc(-853f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(996f)))))), false);
    let var_2 = Struct_1(_wgslsmith_div_u32(u_input.b.x, (select(0u, 47785u, var_0.x) ^ ~4294967295u) | 1u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(var_1.b.b)))), true, countOneBits(vec4<i32>(firstTrailingBit(-1i), _wgslsmith_dot_vec2_i32(firstTrailingBit(var_1.b.d.xx), min(var_1.b.d.ww, var_1.b.d.yy)), ~(-var_1.b.d.x), -min(-26319i, u_input.c))), ~_wgslsmith_clamp_vec3_u32(reverseBits(var_1.b.e), ~(~vec3<u32>(46006u, 27651u, 9878u)), ~(~var_1.b.e)));
    var var_3 = var_2;
    return 12184u;
}

fn func_2(arg_0: vec3<f32>, arg_1: vec3<bool>, arg_2: Struct_1, arg_3: Struct_1) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_3.b.x, _wgslsmith_div_f32(-719f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -256f) - 364f))));
    let var_1 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(-arg_3.b.x), arg_3.b.x), Struct_1(_wgslsmith_clamp_u32(_wgslsmith_mod_u32(arg_3.a, u_input.b.x) << (0u % 32u), func_3() | (57391u >> (arg_3.a % 32u)), func_1(_wgslsmith_f_op_f32(abs(arg_0.x)), -182f, vec2<i32>(arg_3.d.x, u_input.c), global0[_wgslsmith_index_u32(u_input.a, 12u)])), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, arg_2.b.x, 892f, _wgslsmith_f_op_f32(391f + 1659f)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_2.b) - arg_2.b)), arg_1.x, ~vec4<i32>(41183i, ~arg_3.d.x, ~arg_3.d.x, max(u_input.c, arg_3.d.x)), arg_2.e), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1179f, arg_3.b.x, arg_3.b.x), vec3<f32>(-280f, -737f, arg_3.b.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-944f, arg_2.b.x, -648f)) * _wgslsmith_f_op_vec3_f32(-arg_2.b.wxz)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0), _wgslsmith_f_op_vec3_f32(-arg_2.b.ywy)) - arg_3.b.yzx), !(!arg_3.c))), !select(select(arg_3.c, arg_1.x, arg_3.c), true, true) || !any(!vec4<bool>(true, arg_2.c, arg_1.x, false)));
    let var_2 = Struct_1(arg_3.e.x, vec4<f32>(_wgslsmith_f_op_f32(step(1f, arg_3.b.x)), _wgslsmith_f_op_f32(select(arg_2.b.x, _wgslsmith_f_op_f32(arg_0.x - arg_0.x), arg_0.x > _wgslsmith_div_f32(-264f, arg_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3.b.x - -176f) * 1766f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(729f)), -1571f))), false, vec4<i32>(arg_2.d.x, _wgslsmith_dot_vec2_i32(abs(vec2<i32>(arg_2.d.x, -2147483647i)), vec2<i32>(u_input.c, 0i)) ^ _wgslsmith_dot_vec2_i32(arg_2.d.wx | vec2<i32>(arg_2.d.x, arg_2.d.x), reverseBits(vec2<i32>(arg_3.d.x, arg_2.d.x))), 30659i, _wgslsmith_add_i32(~var_1.b.d.x, 1i)), firstLeadingBit(arg_2.e & ~vec3<u32>(41710u, arg_3.e.x, arg_2.e.x)) & vec3<u32>(1u, ~(var_1.b.a >> (21400u % 32u)), ~arg_2.e.x));
    global2 = array<Struct_1, 4>();
    let var_3 = Struct_1(~1u & (arg_3.e.x | _wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(arg_3.e.x, arg_2.a)), ~var_1.b.e.zx)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1273f, 1477f, arg_3.b.x, -819f), vec4<f32>(arg_2.b.x, arg_3.b.x, 378f, 669f))) + vec4<f32>(var_1.b.b.x, -1413f, var_1.b.b.x, -439f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_3.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1196f * -204f)))) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-1144f, 265f)))), ~(~(-arg_2.d)), max(countOneBits(vec3<u32>(arg_2.e.x, 8533u, 0u)), arg_2.e ^ ~vec3<u32>(0u, u_input.b.x, arg_2.a)) << (arg_2.e % vec3<u32>(32u)));
    return _wgslsmith_sub_u32(~(~(~97027u)), ~(~func_3())) | min(1u, _wgslsmith_div_u32(21629u, _wgslsmith_div_u32(_wgslsmith_mult_u32(arg_3.e.x, u_input.a), var_1.b.e.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_1, 4>();
    global3 = true;
    var var_0 = u_input.b ^ ~vec2<u32>(func_1(_wgslsmith_f_op_f32(round(331f)), _wgslsmith_div_f32(-129f, 1223f), max(vec2<i32>(59690i, 1i), vec2<i32>(-23823i, u_input.c)), global2[_wgslsmith_index_u32(u_input.a, 4u)]), func_2(vec3<f32>(269f, 872f, -1000f), vec3<bool>(true, true, true), Struct_1(34630u, vec4<f32>(792f, -1000f, -405f, 1146f), false, vec4<i32>(u_input.c, 14108i, u_input.c, u_input.c), vec3<u32>(u_input.a, u_input.b.x, u_input.a)), global0[_wgslsmith_index_u32(u_input.b.x, 12u)]));
    let var_1 = firstTrailingBit(func_3());
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1578f) - _wgslsmith_div_f32(-1121f, 705f))))));
    global3 = all(vec4<bool>(false, true, false, false));
    global1 = array<vec4<u32>, 3>();
    var_0 = countOneBits(~_wgslsmith_sub_vec2_u32(countOneBits(vec2<u32>(0u, u_input.b.x)), ~u_input.b)) & u_input.b;
    let x = u_input.a;
    s_output = StorageBuffer(select(~vec3<u32>(_wgslsmith_mult_u32(0u, u_input.a), firstTrailingBit(64177u), var_1 & var_1), ~(select(vec3<u32>(var_0.x, 18922u, 0u), vec3<u32>(0u, 1u, var_0.x), vec3<bool>(false, true, false)) >> (select(vec3<u32>(var_1, 49880u, 4294967295u), vec3<u32>(var_0.x, 38449u, var_1), vec3<bool>(true, false, true)) % vec3<u32>(32u))), vec3<bool>(select(true, true, true), true, true)));
}

