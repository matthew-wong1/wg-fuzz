struct Struct_1 {
    a: bool,
    b: vec2<bool>,
    c: vec2<i32>,
    d: f32,
    e: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: vec3<u32>,
    d: vec4<u32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 19> = array<u32, 19>(0u, 4294967295u, 23618u, 1u, 18175u, 1u, 0u, 44845u, 19680u, 33989u, 9103u, 60252u, 29059u, 84849u, 64472u, 1u, 1u, 69395u, 32951u);

var<private> global1: array<Struct_1, 21> = array<Struct_1, 21>(Struct_1(false, vec2<bool>(true, false), vec2<i32>(0i, i32(-2147483648)), 716f, vec3<u32>(0u, 1u, 1u)), Struct_1(true, vec2<bool>(false, false), vec2<i32>(-1i, -42630i), 1096f, vec3<u32>(24979u, 144172u, 4294967295u)), Struct_1(true, vec2<bool>(false, true), vec2<i32>(26282i, 2147483647i), 1000f, vec3<u32>(0u, 1u, 15204u)), Struct_1(true, vec2<bool>(false, true), vec2<i32>(20969i, -1087i), -850f, vec3<u32>(64811u, 0u, 0u)), Struct_1(true, vec2<bool>(true, false), vec2<i32>(-41651i, -1974i), -941f, vec3<u32>(4294967295u, 22478u, 27665u)), Struct_1(false, vec2<bool>(false, true), vec2<i32>(i32(-2147483648), 2147483647i), -243f, vec3<u32>(26615u, 2258u, 17030u)), Struct_1(true, vec2<bool>(true, false), vec2<i32>(i32(-2147483648), 58307i), 351f, vec3<u32>(76845u, 4294967295u, 24062u)), Struct_1(false, vec2<bool>(true, false), vec2<i32>(-1539i, i32(-2147483648)), -135f, vec3<u32>(1u, 25262u, 51939u)), Struct_1(false, vec2<bool>(true, false), vec2<i32>(2147483647i, 29882i), 1597f, vec3<u32>(69134u, 0u, 0u)), Struct_1(true, vec2<bool>(true, false), vec2<i32>(2147483647i, -1i), 1656f, vec3<u32>(24535u, 0u, 0u)), Struct_1(true, vec2<bool>(false, true), vec2<i32>(4396i, 1i), 251f, vec3<u32>(74599u, 4294967295u, 12552u)), Struct_1(true, vec2<bool>(false, true), vec2<i32>(-46720i, -1i), -690f, vec3<u32>(4294967295u, 34001u, 0u)), Struct_1(true, vec2<bool>(false, false), vec2<i32>(33821i, 16972i), -444f, vec3<u32>(1u, 14100u, 107187u)), Struct_1(false, vec2<bool>(true, false), vec2<i32>(i32(-2147483648), 75885i), 271f, vec3<u32>(10094u, 4294967295u, 1u)), Struct_1(true, vec2<bool>(false, true), vec2<i32>(1i, -52073i), -264f, vec3<u32>(1u, 4294967295u, 49115u)), Struct_1(false, vec2<bool>(true, true), vec2<i32>(46907i, 1i), -1170f, vec3<u32>(44230u, 1u, 12039u)), Struct_1(true, vec2<bool>(true, true), vec2<i32>(38846i, 49573i), 2344f, vec3<u32>(1u, 4294967295u, 34790u)), Struct_1(false, vec2<bool>(true, false), vec2<i32>(-1i, -27443i), 1409f, vec3<u32>(1u, 1u, 32008u)), Struct_1(true, vec2<bool>(false, true), vec2<i32>(-1i, 40335i), 333f, vec3<u32>(23879u, 57056u, 42404u)), Struct_1(true, vec2<bool>(false, false), vec2<i32>(-30169i, 1i), -176f, vec3<u32>(41162u, 1u, 25296u)), Struct_1(false, vec2<bool>(false, false), vec2<i32>(0i, -80392i), -1812f, vec3<u32>(0u, 0u, 9787u)));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec2<f32>, arg_1: i32, arg_2: Struct_1) -> vec3<u32> {
    global0 = array<u32, 19>();
    global1 = array<Struct_1, 21>();
    let var_0 = Struct_1(false, select(arg_2.b, !vec2<bool>(arg_2.c.x == 29491i, false), vec2<bool>(arg_2.a, all(vec4<bool>(arg_2.a, false, true, arg_2.b.x)))), max(firstLeadingBit(vec2<i32>(_wgslsmith_mod_i32(u_input.a, arg_2.c.x), -16105i)), arg_2.c), _wgslsmith_f_op_f32(min(arg_2.d, _wgslsmith_f_op_f32(abs(arg_2.d)))), vec3<u32>(~1u, ~(~countOneBits(arg_2.e.x)), ~u_input.b.x | _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, u_input.c, global0[_wgslsmith_index_u32(arg_2.e.x, 19u)], 25056u), abs(vec4<u32>(arg_2.e.x, 45275u, 21552u, 0u)))));
    var var_1 = -612f;
    let var_2 = Struct_1(arg_2.a, arg_2.b, ~_wgslsmith_mult_vec2_i32(-(vec2<i32>(-45434i, -34976i) >> (vec2<u32>(global0[_wgslsmith_index_u32(4294967295u, 19u)], 0u) % vec2<u32>(32u))), _wgslsmith_clamp_vec2_i32(~vec2<i32>(arg_2.c.x, 1i), -vec2<i32>(arg_2.c.x, 1i), var_0.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), vec3<u32>(~4294967295u, arg_2.e.x, var_0.e.x));
    return ~vec3<u32>((~arg_2.e.x << (u_input.c % 32u)) >> (~_wgslsmith_mult_u32(u_input.c, var_2.e.x) % 32u), var_0.e.x, ~61316u);
}

fn func_4(arg_0: Struct_3) -> vec4<bool> {
    var var_0 = Struct_2(global1[_wgslsmith_index_u32(0u, 21u)], func_3(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -133f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_0.e.a.d)))), u_input.a, Struct_1(arg_0.e.c.b.x, vec2<bool>(arg_0.e.c.a, all(arg_0.a.a.b)), arg_0.a.a.c, -410f, _wgslsmith_add_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 19u)], 19u)], arg_0.a.b, 45922u), arg_0.d.yzy) >> (vec3<u32>(u_input.b.x, 1u, global0[_wgslsmith_index_u32(4294967295u, 19u)]) % vec3<u32>(32u)))).x, Struct_1(arg_0.e.a.b.x & !arg_0.a.c.b.x, select(!vec2<bool>(arg_0.a.a.a, arg_0.a.c.a), arg_0.a.a.b, arg_0.e.c.b), vec2<i32>(abs(max(-2147483647i, -1i)), _wgslsmith_sub_i32(-u_input.a, ~(-5702i))), arg_0.e.c.d, vec3<u32>(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(u_input.b, arg_0.a.c.e.xy), _wgslsmith_add_u32(13310u, 31748u)), 0u, u_input.c)));
    var var_1 = Struct_3(arg_0.a, -u_input.a, min(var_0.c.e, ~countOneBits(abs(vec3<u32>(4294967295u, arg_0.d.x, 1791u)))), firstLeadingBit(arg_0.d) ^ ((vec4<u32>(u_input.c, global0[_wgslsmith_index_u32(arg_0.d.x, 19u)], u_input.c, 79587u) & _wgslsmith_mult_vec4_u32(vec4<u32>(var_0.b, global0[_wgslsmith_index_u32(0u, 19u)], arg_0.a.a.e.x, 1u), vec4<u32>(arg_0.d.x, 36092u, var_0.a.e.x, var_0.c.e.x))) & ~(~vec4<u32>(85753u, arg_0.a.b, 1u, u_input.c))), arg_0.e);
    let var_2 = select(!(!vec2<bool>(arg_0.e.c.a, var_0.a.b.x)), var_1.e.c.b, !(!arg_0.e.c.a));
    let var_3 = vec3<u32>(arg_0.e.b, _wgslsmith_dot_vec3_u32(~vec3<u32>(~25253u, countOneBits(28123u), 68315u), _wgslsmith_mod_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(30227u, var_0.b, 1u), vec3<u32>(u_input.c, 1u, 9179u)), ~vec3<u32>(u_input.c, 719u, var_0.a.e.x)) & (vec3<u32>(u_input.c, 14683u, 31313u) >> (vec3<u32>(1u, var_1.c.x, global0[_wgslsmith_index_u32(0u, 19u)]) % vec3<u32>(32u)))), _wgslsmith_mod_u32(0u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(7887u, 14860u, 1u, var_1.a.c.e.x), arg_0.d)));
    var_0 = Struct_2(Struct_1(((-2147483647i >= var_1.b) != any(vec4<bool>(var_0.c.a, var_1.a.c.b.x, true, false))) & ((var_0.a.b.x | true) || var_0.c.a), vec2<bool>(!var_1.e.a.b.x, true), firstLeadingBit(-_wgslsmith_clamp_vec2_i32(var_0.c.c, vec2<i32>(-1i, 1i), vec2<i32>(-1i, 0i))), var_1.a.c.d, _wgslsmith_add_vec3_u32(var_1.d.xxy, min(_wgslsmith_div_vec3_u32(vec3<u32>(1u, var_1.e.c.e.x, 0u), vec3<u32>(arg_0.c.x, arg_0.c.x, 31066u)), arg_0.e.a.e))), ~4294967295u, Struct_1(true, vec2<bool>(true, all(arg_0.a.c.b)), var_1.a.a.c, _wgslsmith_f_op_f32(-var_1.e.a.d), countOneBits(vec3<u32>(96611u, arg_0.d.x, 23422u)) >> (vec3<u32>(0u | u_input.c, abs(var_0.c.e.x), 3131u) % vec3<u32>(32u))));
    return select(select(select(select(select(vec4<bool>(var_2.x, var_1.e.c.b.x, var_0.c.a, true), vec4<bool>(var_1.e.a.b.x, var_0.c.b.x, true, var_1.a.a.b.x), var_0.a.b.x), select(vec4<bool>(true, arg_0.a.c.b.x, true, var_0.c.b.x), vec4<bool>(var_0.a.b.x, false, var_2.x, var_2.x), vec4<bool>(true, var_1.a.c.a, false, true)), vec4<bool>(true, false, true, var_0.a.a)), vec4<bool>(true, true, all(vec3<bool>(var_2.x, true, false)), 1173f <= var_0.c.d), !var_1.e.c.b.x), select(select(select(vec4<bool>(var_2.x, false, var_0.a.a, arg_0.e.a.a), vec4<bool>(var_0.c.a, true, true, false), var_0.c.b.x), vec4<bool>(false, arg_0.e.a.b.x, var_1.e.c.b.x, true), true), !vec4<bool>(var_0.c.b.x, arg_0.e.c.b.x, var_0.c.b.x, false), select(select(vec4<bool>(arg_0.a.c.a, true, var_1.a.c.a, true), vec4<bool>(var_0.a.a, var_2.x, false, true), var_0.c.a), !vec4<bool>(true, false, var_1.a.c.b.x, var_2.x), 0i != var_1.e.a.c.x)), !any(!vec3<bool>(false, false, var_1.a.a.b.x))), vec4<bool>(!all(select(vec4<bool>(true, false, false, arg_0.a.a.a), vec4<bool>(var_0.a.b.x, var_1.e.c.b.x, false, false), true)), (u_input.b.x >> (arg_0.e.c.e.x % 32u)) < ((68895u >> (0u % 32u)) >> ((var_0.a.e.x >> (u_input.c % 32u)) % 32u)), false, true), vec4<bool>(var_0.a.b.x, select(false & arg_0.e.a.a, any(select(vec3<bool>(true, false, false), vec3<bool>(arg_0.e.a.a, true, var_1.e.c.b.x), var_1.e.a.a)), true), _wgslsmith_div_u32(~u_input.c, global0[_wgslsmith_index_u32(~u_input.b.x, 19u)]) > var_0.b, true));
}

fn func_2(arg_0: vec3<i32>) -> f32 {
    let var_0 = !func_4(Struct_3(Struct_2(global1[_wgslsmith_index_u32(u_input.b.x, 21u)], global0[_wgslsmith_index_u32(~23337u, 19u)], global1[_wgslsmith_index_u32(~4294967295u, 21u)]), -45983i, func_3(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(379f, -510f), vec2<f32>(-833f, 178f))), 2147483647i, Struct_1(true, vec2<bool>(true, false), arg_0.yz, 113f, vec3<u32>(global0[_wgslsmith_index_u32(0u, 19u)], 4294967295u, 14802u))), ~(~vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b.x, 19u)], 19u)], 47350u, u_input.c, 0u)), Struct_2(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(reverseBits(global0[_wgslsmith_index_u32(49853u, 19u)]), 19u)], 21u)], firstLeadingBit(global0[_wgslsmith_index_u32(u_input.b.x, 19u)]), Struct_1(true, vec2<bool>(false, false), vec2<i32>(u_input.a, -8387i), -1248f, vec3<u32>(31394u, u_input.b.x, 0u)))));
    return _wgslsmith_f_op_f32(1158f + -468f);
}

fn func_1() -> vec2<u32> {
    global1 = array<Struct_1, 21>();
    let var_0 = Struct_2(Struct_1((_wgslsmith_div_u32(21381u, u_input.c) < 4294967295u) | true, vec2<bool>(true, !select(true, false, false)), vec2<i32>(_wgslsmith_mod_i32(1i, -47395i), u_input.a), _wgslsmith_f_op_f32(func_2(-vec3<i32>(u_input.a, u_input.a, 26140i))), (~vec3<u32>(0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b.x, 19u)], 19u)], 43877u) ^ _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.c, 1u, 0u), vec3<u32>(68234u, global0[_wgslsmith_index_u32(42962u, 19u)], 0u), vec3<u32>(global0[_wgslsmith_index_u32(u_input.c, 19u)], 4294967295u, 3717u))) & (~vec3<u32>(global0[_wgslsmith_index_u32(u_input.c, 19u)], 1u, global0[_wgslsmith_index_u32(u_input.c, 19u)]) << (countOneBits(vec3<u32>(24923u, u_input.c, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 19u)], 19u)], 19u)])) % vec3<u32>(32u)))), u_input.c, global1[_wgslsmith_index_u32(0u, 21u)]);
    let var_1 = !vec4<bool>(var_0.c.a, false, var_0.c.b.x, true && all(select(vec4<bool>(true, true, var_0.c.a, var_0.c.b.x), vec4<bool>(false, false, var_0.a.b.x, var_0.a.a), true)));
    global0 = array<u32, 19>();
    let var_2 = max(u_input.c, var_0.b);
    return u_input.b;
}

fn func_5(arg_0: vec2<u32>, arg_1: bool, arg_2: u32, arg_3: i32) -> StorageBuffer {
    global0 = array<u32, 19>();
    var var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -954f)));
    var var_1 = Struct_3(Struct_2(Struct_1(!(!arg_1), vec2<bool>(false, false | arg_1), -vec2<i32>(u_input.a, 29746i), -342f, _wgslsmith_sub_vec3_u32(~vec3<u32>(arg_2, 14084u, arg_0.x), vec3<u32>(arg_2, global0[_wgslsmith_index_u32(arg_2, 19u)], u_input.b.x))), arg_0.x, Struct_1(true, func_4(Struct_3(Struct_2(Struct_1(false, vec2<bool>(true, true), vec2<i32>(u_input.a, arg_3), -231f, vec3<u32>(1u, 4294967295u, arg_0.x)), 32808u, Struct_1(arg_1, vec2<bool>(true, true), vec2<i32>(-14318i, 16879i), 1028f, vec3<u32>(u_input.c, arg_2, 0u))), -20820i, vec3<u32>(u_input.c, 50133u, arg_0.x), vec4<u32>(global0[_wgslsmith_index_u32(1u, 19u)], arg_2, arg_0.x, 45587u), Struct_2(global1[_wgslsmith_index_u32(29523u, 21u)], arg_0.x, Struct_1(arg_1, vec2<bool>(arg_1, arg_1), vec2<i32>(arg_3, arg_3), 831f, vec3<u32>(global0[_wgslsmith_index_u32(u_input.b.x, 19u)], global0[_wgslsmith_index_u32(arg_0.x, 19u)], arg_2))))).zx, -vec2<i32>(arg_3, 39069i) << (vec2<u32>(arg_0.x, 4294967295u) % vec2<u32>(32u)), _wgslsmith_f_op_f32(ceil(-1234f)), vec3<u32>(_wgslsmith_mod_u32(u_input.b.x, arg_0.x), arg_2, 1u))), _wgslsmith_mod_i32(arg_3 << ((11118u << (~global0[_wgslsmith_index_u32(80651u, 19u)] % 32u)) % 32u), abs(u_input.a)), vec3<u32>(u_input.c, arg_0.x, _wgslsmith_mult_u32(global0[_wgslsmith_index_u32(~func_1().x, 19u)], ~30229u)), _wgslsmith_mod_vec4_u32(~vec4<u32>(~1u, 14917u, 12264u, 4294967295u), ~_wgslsmith_div_vec4_u32(~vec4<u32>(global0[_wgslsmith_index_u32(arg_0.x, 19u)], 23580u, arg_0.x, global0[_wgslsmith_index_u32(arg_0.x, 19u)]), abs(vec4<u32>(global0[_wgslsmith_index_u32(u_input.b.x, 19u)], 0u, global0[_wgslsmith_index_u32(38410u, 19u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 19u)], 19u)])))), Struct_2(Struct_1(arg_1, select(func_4(Struct_3(Struct_2(global1[_wgslsmith_index_u32(0u, 21u)], arg_2, Struct_1(arg_1, vec2<bool>(arg_1, true), vec2<i32>(-8585i, arg_3), -1000f, vec3<u32>(61645u, 12985u, 4294967295u))), arg_3, vec3<u32>(72016u, 19689u, u_input.c), vec4<u32>(arg_2, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 19u)], 19u)], 1u, arg_2), Struct_2(Struct_1(false, vec2<bool>(true, arg_1), vec2<i32>(arg_3, arg_3), 350f, vec3<u32>(u_input.c, 0u, 0u)), arg_0.x, global1[_wgslsmith_index_u32(57252u, 21u)]))).xw, func_4(Struct_3(Struct_2(global1[_wgslsmith_index_u32(u_input.c, 21u)], arg_2, Struct_1(arg_1, vec2<bool>(false, arg_1), vec2<i32>(0i, arg_3), 711f, vec3<u32>(19u, 43456u, arg_2))), u_input.a, vec3<u32>(arg_2, global0[_wgslsmith_index_u32(arg_0.x, 19u)], arg_2), vec4<u32>(global0[_wgslsmith_index_u32(0u, 19u)], 1u, 1u, u_input.c), Struct_2(global1[_wgslsmith_index_u32(arg_0.x, 21u)], 50479u, global1[_wgslsmith_index_u32(1u, 21u)]))).ww, select(vec2<bool>(arg_1, arg_1), vec2<bool>(false, false), vec2<bool>(false, true))), vec2<i32>(abs(arg_3), -arg_3), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1203f - -1740f)), ~(vec3<u32>(u_input.b.x, 4294967295u, u_input.b.x) ^ vec3<u32>(4294967295u, arg_0.x, u_input.b.x))), ~_wgslsmith_mod_u32(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(15626u, global0[_wgslsmith_index_u32(74238u, 19u)], 40882u, 1u), vec4<u32>(4294967295u, 50315u, global0[_wgslsmith_index_u32(u_input.c, 19u)], u_input.c))), global1[_wgslsmith_index_u32(~7853u, 21u)]));
    let var_2 = Struct_1(arg_1, vec2<bool>(var_1.e.c.b.x, false), _wgslsmith_div_vec2_i32(-(vec2<i32>(-1i) * -var_1.a.c.c), -var_1.e.c.c), _wgslsmith_f_op_f32(min(172f, -220f)), ~var_1.c);
    let var_3 = ~(~(arg_2 ^ _wgslsmith_mult_u32(u_input.c, var_2.e.x)));
    return StorageBuffer(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(892f, var_1.e.a.d, var_1.e.c.d, var_1.e.c.d) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a.a.d, -340f, -1074f, 517f))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1680f), var_1.e.c.d, -643f, _wgslsmith_f_op_f32(-var_2.d)), !(!vec4<bool>(false, arg_1, var_1.e.a.a, var_1.e.c.b.x)))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-339f, var_2.d, 743f, -2065f))))), var_1.e.a.e);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b;
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, -1564f) + vec2<f32>(1f, 1f)) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1108f, 1000f))), vec2<f32>(_wgslsmith_f_op_f32(select(458f, -172f, true)), _wgslsmith_div_f32(1359f, -257f)))) - _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(630f + 960f), -910f)), 1f))));
    global0 = array<u32, 19>();
    let var_2 = _wgslsmith_dot_vec2_u32(u_input.b, u_input.b);
    global0 = array<u32, 19>();
    let x = u_input.a;
    s_output = func_5(func_1(), any(func_4(Struct_3(Struct_2(global1[_wgslsmith_index_u32(52783u, 21u)], 90136u, Struct_1(false, vec2<bool>(false, true), vec2<i32>(-2147483647i, -1i), 482f, vec3<u32>(global0[_wgslsmith_index_u32(1u, 19u)], u_input.b.x, 1u))), u_input.a, reverseBits(vec3<u32>(1u, global0[_wgslsmith_index_u32(var_0.x, 19u)], var_0.x)), abs(vec4<u32>(30430u, 0u, var_2, u_input.b.x)), Struct_2(Struct_1(true, vec2<bool>(true, false), vec2<i32>(u_input.a, u_input.a), var_1.x, vec3<u32>(1u, 0u, var_2)), 78917u, Struct_1(false, vec2<bool>(true, true), vec2<i32>(u_input.a, 18380i), 315f, vec3<u32>(var_0.x, var_0.x, 50036u)))))), global0[_wgslsmith_index_u32(103781u, 19u)], -71955i);
}

