struct Struct_1 {
    a: f32,
    b: vec3<f32>,
    c: vec2<bool>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: i32,
    c: vec3<i32>,
    d: i32,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 29>;

var<private> global1: vec2<bool> = vec2<bool>(true, true);

var<private> global2: vec4<i32> = vec4<i32>(-1i, -10639i, -1i, -3810i);

var<private> global3: array<Struct_2, 9> = array<Struct_2, 9>(Struct_2(vec3<f32>(-648f, 419f, 965f), 1i, vec3<i32>(-35467i, 1i, 39538i), 1i, vec4<bool>(false, true, true, true)), Struct_2(vec3<f32>(-836f, 210f, -1000f), -1i, vec3<i32>(0i, 0i, i32(-2147483648)), -38054i, vec4<bool>(false, true, false, false)), Struct_2(vec3<f32>(-944f, -904f, 200f), 1i, vec3<i32>(2335i, -1i, 10264i), 1i, vec4<bool>(false, true, true, true)), Struct_2(vec3<f32>(-1032f, -600f, -471f), 4974i, vec3<i32>(1i, -21482i, 11229i), -1274i, vec4<bool>(false, false, false, false)), Struct_2(vec3<f32>(158f, -106f, -881f), 2147483647i, vec3<i32>(1i, 0i, 34849i), 2147483647i, vec4<bool>(true, false, false, false)), Struct_2(vec3<f32>(-622f, 442f, -563f), 0i, vec3<i32>(-43358i, 1i, 2147483647i), 1i, vec4<bool>(true, true, false, true)), Struct_2(vec3<f32>(662f, 1000f, 964f), -1i, vec3<i32>(4698i, 45536i, 31504i), 30809i, vec4<bool>(false, true, true, true)), Struct_2(vec3<f32>(174f, 1203f, 102f), -1i, vec3<i32>(-1i, 1i, -1i), -45101i, vec4<bool>(true, true, false, false)), Struct_2(vec3<f32>(-1725f, -1069f, -166f), 1i, vec3<i32>(i32(-2147483648), -5077i, 8114i), 1i, vec4<bool>(false, true, false, true)));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: Struct_1) -> u32 {
    let var_0 = u_input.c.x;
    global0 = array<Struct_1, 29>();
    global0 = array<Struct_1, 29>();
    global0 = array<Struct_1, 29>();
    global0 = array<Struct_1, 29>();
    return u_input.a;
}

fn func_2(arg_0: f32) -> Struct_1 {
    global3 = array<Struct_2, 9>();
    var var_0 = ~(~vec4<u32>(u_input.a, 1u, u_input.b, _wgslsmith_div_u32(~u_input.a, 1u)));
    global3 = array<Struct_2, 9>();
    let var_1 = Struct_1(arg_0, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, 1561f, -1454f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, arg_0, -853f))) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, arg_0, arg_0) - vec3<f32>(-1218f, arg_0, arg_0)), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(1141f, arg_0, arg_0))), true)))), vec2<bool>(true, !global1.x));
    var_0 = _wgslsmith_add_vec4_u32(~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, u_input.b, 4294967295u, 1u) | select(vec4<u32>(0u, var_0.x, var_0.x, u_input.b), vec4<u32>(0u, var_0.x, u_input.b, var_0.x), false), _wgslsmith_add_vec4_u32(vec4<u32>(1u, var_0.x, 0u, u_input.a) | vec4<u32>(4294967295u, u_input.a, 22024u, var_0.x), ~vec4<u32>(var_0.x, var_0.x, 32u, u_input.a))), vec4<u32>(17007u, ~var_0.x << (func_3(Struct_1(var_1.a, var_1.b, var_1.c)) % 32u), abs(_wgslsmith_mult_u32(1u, 4294967295u)), 1u));
    return var_1;
}

fn func_1(arg_0: vec4<bool>, arg_1: vec3<u32>, arg_2: Struct_2) -> Struct_2 {
    let var_0 = func_2(arg_2.a.x);
    let var_1 = u_input.c;
    let var_2 = global3[_wgslsmith_index_u32(~u_input.b, 9u)];
    global1 = var_2.e.zy;
    global1 = select(arg_0.wz, !var_0.c, vec2<bool>(true, true));
    return arg_2;
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: vec2<bool>, arg_3: Struct_2) -> Struct_2 {
    var var_0 = -10579i;
    var var_1 = ~global2.x;
    global2 = select(~vec4<i32>(u_input.d.x, 0i, _wgslsmith_mult_i32(~(-1i), u_input.c.x), ~(-u_input.c.x)), vec4<i32>(-1i, -u_input.c.x << (_wgslsmith_mod_u32(reverseBits(4294967295u), 17740u) % 32u), -2147483647i, 0i), true);
    let var_2 = vec2<u32>(arg_0.x, 1u);
    let var_3 = !vec4<bool>(global2.x != ((i32(-1i) * -23506i) ^ arg_3.d), true, true || !any(vec2<bool>(arg_3.e.x, false)), firstTrailingBit(_wgslsmith_mult_i32(-2147483647i, arg_1.c.x)) > u_input.c.x);
    return Struct_2(vec3<f32>(_wgslsmith_f_op_f32(-arg_1.a.x), _wgslsmith_f_op_f32(f32(-1f) * -1000f), -238f), u_input.d.x, vec3<i32>(1i, 18998i >> (u_input.b % 32u), -firstLeadingBit(~(-31592i))), _wgslsmith_dot_vec4_i32(vec4<i32>(firstTrailingBit(u_input.d.x) & 1i, -1i, -1i, -36099i | min(arg_3.d, -1i)), -_wgslsmith_mult_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(arg_1.b, u_input.c.x, -16903i, 1321i), vec4<i32>(arg_3.c.x, global2.x, arg_3.c.x, 5456i)), vec4<i32>(-1i, u_input.c.x, -1i, 1i) | vec4<i32>(arg_3.c.x, arg_3.b, u_input.d.x, u_input.c.x))), !vec4<bool>(global1.x, arg_3.a.x > _wgslsmith_f_op_f32(605f + arg_3.a.x), true, false));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_2, arg_2: bool) -> Struct_2 {
    let var_0 = Struct_1(295f, vec3<f32>(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(1174f)), _wgslsmith_div_f32(arg_0.a, 567f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2222f) - 497f)), select(arg_1.e.yz, !arg_1.e.zx, arg_0.c));
    global1 = vec2<bool>(var_0.c.x, var_0.c.x);
    global0 = array<Struct_1, 29>();
    global0 = array<Struct_1, 29>();
    var var_1 = arg_1.c;
    return Struct_2(vec3<f32>(arg_1.a.x, -1129f, 532f), global2.x, vec3<i32>(54941i, _wgslsmith_sub_i32(u_input.c.x | -1i, u_input.c.x) & min(arg_1.c.x, _wgslsmith_mod_i32(46792i, -3127i)), ~global2.x), _wgslsmith_dot_vec4_i32(~vec4<i32>(4000i, -39398i, global2.x, global2.x) & (select(vec4<i32>(arg_1.b, 49234i, -2147483647i, 42556i), vec4<i32>(var_1.x, u_input.d.x, -1i, u_input.c.x), arg_1.e) ^ vec4<i32>(global2.x, -2147483647i, u_input.c.x, u_input.c.x)), vec4<i32>(0i ^ _wgslsmith_dot_vec3_i32(vec3<i32>(var_1.x, 1i, var_1.x), arg_1.c), -1628i, abs(arg_1.c.x), select(_wgslsmith_mod_i32(-33375i, u_input.c.x), u_input.c.x, !arg_1.e.x))), vec4<bool>(true, all(func_4(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, u_input.b, u_input.b), vec3<u32>(u_input.a, 0u, 1u)), arg_1, var_0.c, Struct_2(arg_0.b, 0i, vec3<i32>(-2147483647i, -1i, var_1.x), 44383i, vec4<bool>(true, true, arg_2, false))).e.zzy), var_0.c.x & arg_2, !(!arg_2) && false));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(global0[_wgslsmith_index_u32(12815u, 29u)], func_4(vec3<u32>(u_input.a, ~u_input.a & firstLeadingBit(u_input.b), u_input.a & 74957u), func_1(!vec4<bool>(false, global1.x, global1.x, false), vec3<u32>(abs(34317u), 38515u, u_input.b), global3[_wgslsmith_index_u32(countOneBits(1u), 9u)]), vec2<bool>(global1.x, all(select(vec4<bool>(global1.x, false, global1.x, global1.x), vec4<bool>(global1.x, global1.x, global1.x, global1.x), false))), Struct_2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(537f, 892f, -417f)), vec3<f32>(913f, 372f, -274f)), 1i, global2.zzx, _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d.x, u_input.d.x, 1i, u_input.c.x), vec4<i32>(u_input.c.x, u_input.d.x, u_input.c.x, 0i)), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d.x, 0i, -2147483647i, 2211i), vec4<i32>(global2.x, 0i, u_input.c.x, -2147483647i))), select(!vec4<bool>(global1.x, global1.x, true, global1.x), !vec4<bool>(false, global1.x, false, true), true))), !(global1.x || false));
    global2 = vec4<i32>(min(~(-1i), func_1(func_5(func_2(var_0.a.x), Struct_2(var_0.a, u_input.d.x, global2.zyz, 2147483647i, var_0.e), all(vec3<bool>(true, true, true))).e, (vec3<u32>(u_input.b, u_input.b, u_input.b) & vec3<u32>(u_input.b, u_input.a, u_input.b)) >> (~vec3<u32>(0u, 42901u, 4294967295u) % vec3<u32>(32u)), func_1(!var_0.e, ~vec3<u32>(u_input.b, u_input.a, u_input.b), Struct_2(vec3<f32>(var_0.a.x, var_0.a.x, var_0.a.x), -9684i, vec3<i32>(var_0.b, 2697i, u_input.c.x), -21412i, var_0.e))).b), _wgslsmith_sub_i32((_wgslsmith_add_i32(var_0.c.x, global2.x) << (229u % 32u)) ^ (_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, var_0.b, -2147483647i, global2.x), vec4<i32>(55942i, global2.x, u_input.d.x, var_0.d)) << (4294967295u % 32u)), _wgslsmith_sub_i32(var_0.c.x, -13886i)), _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(abs(vec4<i32>(20658i, 85558i, 31765i, -2147483647i)), vec4<i32>(-1i, var_0.d, u_input.d.x, -35586i)), vec4<i32>(0i, _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, var_0.b, var_0.c.x), var_0.c), firstLeadingBit(var_0.b), ~(-26641i))) >> (~reverseBits(1u) % 32u), _wgslsmith_mult_i32(~(global2.x & 0i), _wgslsmith_add_i32(~1i | (u_input.d.x & 0i), ~(~(-23536i)))));
    global1 = !select(!var_0.e.yy, var_0.e.ww, true);
    global2 = countOneBits(_wgslsmith_mod_vec4_i32(vec4<i32>(var_0.c.x, i32(-1i) * -2978i, ~global2.x, func_1(vec4<bool>(false, global1.x, false, global1.x), vec3<u32>(1u, u_input.a, 12542u) | vec3<u32>(u_input.b, 0u, 4294967295u), Struct_2(var_0.a, 21826i, u_input.c, var_0.d, var_0.e)).d), vec4<i32>(~(-u_input.c.x), -global2.x, ~12895i, global2.x)));
    global1 = var_0.e.xw;
    let var_1 = global3[_wgslsmith_index_u32(_wgslsmith_div_u32(~(~u_input.a) << (46629u % 32u), _wgslsmith_div_u32(_wgslsmith_add_u32(0u, _wgslsmith_div_u32(select(u_input.b, u_input.a, var_0.e.x), u_input.a)), ~(~43530u))), 9u)];
    global1 = func_4(vec3<u32>(u_input.b, func_3(global0[_wgslsmith_index_u32(~27797u, 29u)]) | u_input.a, _wgslsmith_mult_u32(_wgslsmith_sub_u32(u_input.b, 1u) >> (~u_input.a % 32u), u_input.a)), Struct_2(vec3<f32>(var_1.a.x, _wgslsmith_f_op_f32(f32(-1f) * -2005f), func_4(abs(vec3<u32>(u_input.a, u_input.a, u_input.b)), Struct_2(vec3<f32>(var_1.a.x, 634f, -396f), -8763i, vec3<i32>(9005i, -54203i, -19717i), 40153i, vec4<bool>(var_0.e.x, true, false, true)), vec2<bool>(true, true), Struct_2(var_0.a, var_0.d, u_input.c, 8207i, vec4<bool>(var_0.e.x, var_0.e.x, global1.x, false))).a.x), var_1.c.x, select(~(~global2.yyz), vec3<i32>(-2147483647i, -30615i, 2147483647i) | var_1.c, 14802u >= ~u_input.a), 25287i << (u_input.a % 32u), !vec4<bool>(true, !var_0.e.x, all(vec4<bool>(false, var_1.e.x, false, true)), any(var_1.e.ww))), func_2(-633f).c, func_5(Struct_1(_wgslsmith_f_op_f32(-var_0.a.x), vec3<f32>(var_0.a.x, -458f, var_1.a.x), vec2<bool>(var_1.a.x <= var_0.a.x, true)), Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, var_0.a.x, 1653f)), ~u_input.c.x & abs(var_0.c.x), var_0.c, var_0.b, vec4<bool>(true, false, true, true)), global1.x)).e.xy;
    global1 = var_0.e.yz;
    let x = u_input.a;
    s_output = StorageBuffer(0i);
}

