struct Struct_1 {
    a: vec3<i32>,
    b: vec4<bool>,
    c: vec4<u32>,
    d: vec2<u32>,
}

struct Struct_2 {
    a: u32,
    b: vec4<u32>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec4<f32>,
    c: bool,
}

struct Struct_4 {
    a: vec2<bool>,
    b: Struct_2,
    c: vec4<i32>,
    d: vec4<bool>,
    e: Struct_1,
}

struct Struct_5 {
    a: i32,
    b: i32,
    c: f32,
    d: u32,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: u32,
    d: vec4<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(false, true, false, true);

var<private> global1: array<Struct_3, 25> = array<Struct_3, 25>(Struct_3(vec4<u32>(1u, 61068u, 1u, 1u), vec4<f32>(699f, 1413f, -424f, -423f), true), Struct_3(vec4<u32>(27518u, 22595u, 42475u, 6420u), vec4<f32>(-1000f, -765f, 377f, 946f), false), Struct_3(vec4<u32>(1u, 4294967295u, 38641u, 12596u), vec4<f32>(1343f, 1783f, -998f, 1094f), false), Struct_3(vec4<u32>(4942u, 95742u, 62252u, 59741u), vec4<f32>(-1000f, -1350f, -1509f, 1067f), true), Struct_3(vec4<u32>(4294967295u, 10874u, 44829u, 0u), vec4<f32>(-599f, 1053f, -1082f, -1458f), true), Struct_3(vec4<u32>(0u, 4294967295u, 0u, 9383u), vec4<f32>(-476f, -378f, -1117f, 2463f), true), Struct_3(vec4<u32>(0u, 0u, 86958u, 0u), vec4<f32>(613f, 753f, -278f, -191f), false), Struct_3(vec4<u32>(0u, 4294967295u, 0u, 51663u), vec4<f32>(759f, 456f, 775f, 1974f), true), Struct_3(vec4<u32>(0u, 19461u, 4294967295u, 5307u), vec4<f32>(-1431f, -328f, -1336f, 1649f), true), Struct_3(vec4<u32>(0u, 0u, 0u, 1u), vec4<f32>(-941f, 668f, -1779f, 639f), false), Struct_3(vec4<u32>(15579u, 0u, 1u, 0u), vec4<f32>(-290f, 105f, -987f, 2002f), true), Struct_3(vec4<u32>(1u, 0u, 0u, 12434u), vec4<f32>(-126f, -1893f, 1469f, -327f), true), Struct_3(vec4<u32>(0u, 1u, 9699u, 1u), vec4<f32>(1779f, 188f, 1000f, -295f), false), Struct_3(vec4<u32>(14300u, 11810u, 75439u, 4294967295u), vec4<f32>(217f, -778f, 1765f, -1000f), false), Struct_3(vec4<u32>(18892u, 18617u, 34941u, 51384u), vec4<f32>(803f, 106f, -233f, -904f), true), Struct_3(vec4<u32>(36804u, 39027u, 0u, 1u), vec4<f32>(1520f, 751f, 1504f, -213f), true), Struct_3(vec4<u32>(116449u, 1u, 0u, 50002u), vec4<f32>(1185f, 1000f, 910f, -259f), true), Struct_3(vec4<u32>(45873u, 404u, 0u, 31760u), vec4<f32>(1119f, -782f, 870f, 1686f), false), Struct_3(vec4<u32>(41972u, 54063u, 32251u, 6324u), vec4<f32>(-1066f, 1000f, -243f, -651f), true), Struct_3(vec4<u32>(52593u, 49358u, 37284u, 4294967295u), vec4<f32>(115f, -1083f, 1498f, -407f), false), Struct_3(vec4<u32>(0u, 1u, 20003u, 4995u), vec4<f32>(562f, 618f, 302f, -690f), true), Struct_3(vec4<u32>(4294967295u, 50759u, 24141u, 58035u), vec4<f32>(-2038f, -1153f, 1868f, 1261f), true), Struct_3(vec4<u32>(1u, 39887u, 4294967295u, 1u), vec4<f32>(1279f, -316f, 491f, 1176f), false), Struct_3(vec4<u32>(1u, 44386u, 1u, 1u), vec4<f32>(-1199f, -142f, 1012f, -1421f), false), Struct_3(vec4<u32>(4294967295u, 9992u, 1u, 1u), vec4<f32>(887f, -328f, 683f, -1653f), true));

var<private> global2: array<vec4<f32>, 3>;

var<private> global3: array<vec4<i32>, 23>;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_5) -> vec2<u32> {
    var var_0 = Struct_1(select(u_input.d.wxx, _wgslsmith_sub_vec3_i32(vec3<i32>(arg_0.b, u_input.b, 1i) ^ -u_input.d.wwy, _wgslsmith_clamp_vec3_i32(-u_input.d.zyw, vec3<i32>(12558i, arg_0.b, 2147483647i), vec3<i32>(1i, arg_0.b, arg_0.a) >> (vec3<u32>(64008u, arg_0.d, 103105u) % vec3<u32>(32u)))), false), select(vec4<bool>(all(vec2<bool>(arg_0.e.c, arg_0.e.c)), true, global0.x, all(!vec3<bool>(false, global0.x, arg_0.e.c))), !vec4<bool>(global0.x, true, arg_0.e.c, true), arg_0.e.c), ~arg_0.e.a, _wgslsmith_mult_vec2_u32(~firstLeadingBit(countOneBits(u_input.a.yx)), _wgslsmith_sub_vec2_u32(arg_0.e.a.wz, min(u_input.e.zx, vec2<u32>(1u, 0u))) & vec2<u32>(~2903u, arg_0.d)));
    let var_1 = Struct_5(-u_input.b, ~u_input.d.x >> (reverseBits(84153u) % 32u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_0.e.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_0.c, 824f, false)))))), _wgslsmith_mod_u32(0u | _wgslsmith_mult_u32(var_0.d.x, abs(arg_0.d)), 80021u), global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(~0u, firstTrailingBit(select(var_0.c.x, 1u, arg_0.e.c))) ^ 20486u, 25u)]);
    let var_2 = _wgslsmith_f_op_f32(-arg_0.e.b.x);
    var var_3 = Struct_2(var_1.d, _wgslsmith_clamp_vec4_u32(vec4<u32>(reverseBits(abs(var_1.d)), var_1.d >> (var_1.e.a.x % 32u), _wgslsmith_clamp_u32(24191u, ~0u, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, arg_0.d), vec2<u32>(135817u, var_0.c.x))), firstLeadingBit(_wgslsmith_div_u32(var_1.d, 22881u))), ~(_wgslsmith_sub_vec4_u32(vec4<u32>(var_1.e.a.x, 43931u, 54450u, 47839u), vec4<u32>(1u, u_input.e.x, var_0.c.x, 2142u)) << (var_0.c % vec4<u32>(32u))), var_0.c ^ firstTrailingBit(arg_0.e.a)));
    var var_4 = u_input.d;
    return ~_wgslsmith_clamp_vec2_u32(~u_input.e.yz, firstTrailingBit(~(vec2<u32>(1u, 32908u) | u_input.a.xz)), var_0.d);
}

fn func_2(arg_0: f32, arg_1: bool, arg_2: u32, arg_3: vec3<bool>) -> vec3<bool> {
    let var_0 = global1[_wgslsmith_index_u32(~4294967295u, 25u)];
    let var_1 = firstTrailingBit(vec2<u32>(4294967295u, arg_2) << ((func_3(Struct_5(-10596i, -41503i, -1000f, 4294967295u, Struct_3(vec4<u32>(var_0.a.x, arg_2, var_0.a.x, u_input.a.x), vec4<f32>(-1083f, 121f, -1000f, var_0.b.x), var_0.c))) >> ((_wgslsmith_sub_vec2_u32(u_input.a.xz, var_0.a.zz) & abs(vec2<u32>(u_input.c, u_input.c))) % vec2<u32>(32u))) % vec2<u32>(32u)));
    var var_2 = Struct_4(vec2<bool>(arg_3.x, all(!select(vec2<bool>(var_0.c, false), vec2<bool>(var_0.c, arg_1), true))), Struct_2(~(~(~55307u)), vec4<u32>(1u ^ countOneBits(var_1.x), _wgslsmith_dot_vec3_u32(u_input.a, ~var_0.a.wxz), ~_wgslsmith_clamp_u32(4294967295u, 1u, var_1.x), _wgslsmith_div_u32(20652u, ~var_1.x))), _wgslsmith_clamp_vec4_i32(_wgslsmith_sub_vec4_i32(-vec4<i32>(u_input.b, -2147483647i, u_input.b, u_input.d.x), min(global3[_wgslsmith_index_u32(46287u, 23u)], global3[_wgslsmith_index_u32(1u, 23u)])), -vec4<i32>(u_input.b, -2147483647i, 2147483647i, u_input.d.x), _wgslsmith_clamp_vec4_i32(countOneBits(global3[_wgslsmith_index_u32(56115u, 23u)]), u_input.d >> (vec4<u32>(1477u, arg_2, arg_2, arg_2) % vec4<u32>(32u)), vec4<i32>(u_input.d.x, u_input.b, u_input.d.x, 30660i))) | vec4<i32>(_wgslsmith_dot_vec4_i32(-vec4<i32>(2147483647i, u_input.b, u_input.d.x, -28783i), u_input.d), u_input.d.x, u_input.b, i32(-1i) * -u_input.b), vec4<bool>(var_0.c, false & arg_1, false, all(!global0.yxw)), Struct_1(u_input.d.xyz, select(!vec4<bool>(true, arg_3.x, true, false), select(vec4<bool>(true, global0.x, global0.x, false), vec4<bool>(arg_1, var_0.c, false, true), any(vec3<bool>(var_0.c, false, global0.x))), vec4<bool>(true, true, true, true)), max(~abs(vec4<u32>(18743u, var_1.x, 1u, var_0.a.x)), ~_wgslsmith_div_vec4_u32(var_0.a, var_0.a)), var_0.a.zy));
    var var_3 = Struct_1(countOneBits(max(u_input.d.xzy, var_2.e.a)), !select(select(select(var_2.d, var_2.d, vec4<bool>(true, false, arg_1, false)), !var_2.e.b, var_0.c), vec4<bool>(arg_3.x && true, false == var_2.e.b.x, arg_3.x, arg_1 && global0.x), select(var_2.e.b.x, true, true)), reverseBits(max(vec4<u32>(36083u, var_0.a.x, 18410u, 0u) & var_0.a, var_2.e.c) << (~firstTrailingBit(var_0.a) % vec4<u32>(32u))), u_input.e.xx);
    let var_4 = var_2.b;
    return select(select(global0.ywz, !arg_3, select(vec3<bool>(true, all(vec2<bool>(false, true)), arg_3.x | var_0.c), vec3<bool>(false == var_2.a.x, true, true), !(u_input.d.x <= -4642i))), !vec3<bool>(var_2.a.x, !(arg_3.x & var_0.c), false), !vec3<bool>(all(!vec4<bool>(var_2.e.b.x, true, true, false)), false, ~var_2.c.x <= ~(-1i)));
}

fn func_1(arg_0: Struct_1, arg_1: vec3<i32>) -> vec3<bool> {
    var var_0 = any(func_2(_wgslsmith_f_op_f32(f32(-1f) * -1063f), all(arg_0.b.xy), abs(arg_0.d.x), vec3<bool>((false || arg_0.b.x) & true, false, arg_0.b.x)));
    global0 = vec4<bool>(any(!(!arg_0.b)), false, true, true);
    let var_1 = Struct_3(~arg_0.c, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(global2[_wgslsmith_index_u32(4294967295u, 3u)], global2[_wgslsmith_index_u32(reverseBits(1u), 3u)]))), !(!all(arg_0.b.wx)));
    let var_2 = ~_wgslsmith_mult_u32(~1u, countOneBits(_wgslsmith_mult_u32(arg_0.d.x, 1u))) <= var_1.a.x;
    global3 = array<vec4<i32>, 23>();
    return !(!func_2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1345f), _wgslsmith_f_op_f32(min(var_1.b.x, var_1.b.x)))), true, ~(~arg_0.c.x), vec3<bool>(!var_2, true, true)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = !select(vec4<bool>(global0.x, global0.x, all(func_1(Struct_1(vec3<i32>(12785i, 65658i, 25067i), vec4<bool>(global0.x, false, true, global0.x), vec4<u32>(u_input.c, u_input.a.x, 24739u, 1u), u_input.e.zx), u_input.d.yxx)), global0.x), !select(vec4<bool>(global0.x, true, global0.x, true), select(vec4<bool>(false, true, false, true), vec4<bool>(global0.x, global0.x, false, global0.x), vec4<bool>(true, global0.x, global0.x, false)), select(false, global0.x, true)), vec4<bool>(true, global0.x, global0.x, false));
    let var_0 = false;
    global1 = array<Struct_3, 25>();
    global2 = array<vec4<f32>, 3>();
    var var_1 = global1[_wgslsmith_index_u32(_wgslsmith_div_u32(4294967295u, u_input.c), 25u)];
    global1 = array<Struct_3, 25>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_u32(u_input.c, 173313u, select(_wgslsmith_div_u32(_wgslsmith_div_u32(0u, u_input.c), var_1.a.x), abs(~u_input.a.x), true)), _wgslsmith_mod_i32(firstLeadingBit(abs(abs(u_input.b))), -(_wgslsmith_clamp_i32(u_input.b, 2147483647i, u_input.d.x) << (u_input.c % 32u))), _wgslsmith_mod_u32(var_1.a.x, reverseBits(abs(_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.a.x, 71886u, var_1.a.x, u_input.a.x), vec4<u32>(var_1.a.x, 0u, 0u, var_1.a.x))))), ~_wgslsmith_clamp_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(var_1.a.x, u_input.c), var_1.a.zx, vec2<u32>(67810u, u_input.e.x)), vec2<u32>(47011u, u_input.a.x), abs(vec2<u32>(u_input.a.x, u_input.e.x))) ^ u_input.a.xx);
}

