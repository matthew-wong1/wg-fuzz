struct Struct_1 {
    a: vec2<i32>,
    b: u32,
    c: vec2<bool>,
    d: i32,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec3<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 31>;

var<private> global1: i32;

var<private> global2: array<Struct_1, 27> = array<Struct_1, 27>(Struct_1(vec2<i32>(33463i, 2147483647i), 4294967295u, vec2<bool>(true, false), 18543i, vec2<bool>(true, true)), Struct_1(vec2<i32>(0i, -4127i), 0u, vec2<bool>(true, true), -22205i, vec2<bool>(true, true)), Struct_1(vec2<i32>(1i, 7116i), 66665u, vec2<bool>(true, false), 2147483647i, vec2<bool>(false, true)), Struct_1(vec2<i32>(-5561i, -1i), 4294967295u, vec2<bool>(false, false), 1i, vec2<bool>(false, true)), Struct_1(vec2<i32>(2147483647i, 16524i), 39688u, vec2<bool>(true, false), -16783i, vec2<bool>(false, false)), Struct_1(vec2<i32>(-31646i, -1i), 11764u, vec2<bool>(false, false), 6632i, vec2<bool>(false, true)), Struct_1(vec2<i32>(28731i, -1i), 0u, vec2<bool>(true, true), 541i, vec2<bool>(false, true)), Struct_1(vec2<i32>(1i, 16822i), 30158u, vec2<bool>(true, false), -1i, vec2<bool>(true, false)), Struct_1(vec2<i32>(1872i, -1i), 60986u, vec2<bool>(true, false), 945i, vec2<bool>(true, true)), Struct_1(vec2<i32>(-15221i, 2147483647i), 45500u, vec2<bool>(false, true), -28069i, vec2<bool>(false, false)), Struct_1(vec2<i32>(13069i, -1i), 45001u, vec2<bool>(false, false), 27210i, vec2<bool>(true, false)), Struct_1(vec2<i32>(0i, 17539i), 57643u, vec2<bool>(true, true), -12122i, vec2<bool>(true, true)), Struct_1(vec2<i32>(2147483647i, 0i), 19284u, vec2<bool>(true, true), -54559i, vec2<bool>(true, false)), Struct_1(vec2<i32>(0i, 2147483647i), 4294967295u, vec2<bool>(false, true), 0i, vec2<bool>(false, true)), Struct_1(vec2<i32>(8557i, -52535i), 4294967295u, vec2<bool>(true, false), -5729i, vec2<bool>(false, false)), Struct_1(vec2<i32>(15003i, 39023i), 30719u, vec2<bool>(true, true), 1i, vec2<bool>(false, true)), Struct_1(vec2<i32>(31772i, 29240i), 5199u, vec2<bool>(true, true), i32(-2147483648), vec2<bool>(false, false)), Struct_1(vec2<i32>(-1i, 2147483647i), 1942u, vec2<bool>(false, true), 2147483647i, vec2<bool>(false, true)), Struct_1(vec2<i32>(-1i, -1i), 4294967295u, vec2<bool>(false, false), 0i, vec2<bool>(true, true)), Struct_1(vec2<i32>(-5395i, 3594i), 1323u, vec2<bool>(false, true), i32(-2147483648), vec2<bool>(true, true)), Struct_1(vec2<i32>(0i, 1i), 1u, vec2<bool>(false, true), i32(-2147483648), vec2<bool>(false, false)), Struct_1(vec2<i32>(-18482i, 2147483647i), 53845u, vec2<bool>(false, true), 25106i, vec2<bool>(false, false)), Struct_1(vec2<i32>(-53686i, -40662i), 7870u, vec2<bool>(true, true), 9506i, vec2<bool>(false, false)), Struct_1(vec2<i32>(-33114i, -40538i), 2727u, vec2<bool>(false, true), 1i, vec2<bool>(false, true)), Struct_1(vec2<i32>(-4418i, -1i), 29908u, vec2<bool>(true, true), 29318i, vec2<bool>(true, true)), Struct_1(vec2<i32>(-41961i, 1i), 62254u, vec2<bool>(true, false), -16665i, vec2<bool>(false, false)), Struct_1(vec2<i32>(22064i, -1i), 4294967295u, vec2<bool>(false, true), -1i, vec2<bool>(true, true)));

var<private> global3: u32 = 17954u;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_2(arg_0: bool, arg_1: Struct_1, arg_2: vec2<i32>) -> Struct_1 {
    let var_0 = 1685f;
    global2 = array<Struct_1, 27>();
    var var_1 = global0[_wgslsmith_index_u32(arg_1.b, 31u)];
    global2 = array<Struct_1, 27>();
    var var_2 = vec4<u32>(var_1.b, _wgslsmith_mult_u32(~firstTrailingBit(_wgslsmith_mod_u32(arg_1.b, var_1.b)), ~(~(~0u))), ~abs(var_1.b), _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(11071u, u_input.c.x) | vec2<u32>(arg_1.b, var_1.b), _wgslsmith_sub_vec2_u32(u_input.c.yx, vec2<u32>(1u, u_input.c.x))) >> (u_input.c.zz % vec2<u32>(32u)), ~u_input.c.zx));
    return global0[_wgslsmith_index_u32(max(4294967295u, ~firstLeadingBit(~53201u)), 31u)];
}

fn func_3() -> vec2<bool> {
    global3 = 11564u;
    let var_0 = false;
    let var_1 = 4294967295u;
    var var_2 = Struct_1(u_input.a.xx, ~(~countOneBits(~var_1)), vec2<bool>(!(true | !var_0), 19211u >= reverseBits(_wgslsmith_add_u32(var_1, u_input.c.x))), ~countOneBits(u_input.d.x), vec2<bool>(any(vec2<bool>(var_0, var_0)), var_0));
    let var_3 = global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(~min(~(~33539u), max(_wgslsmith_mult_u32(var_2.b, u_input.c.x), select(1u, var_2.b, var_2.e.x))), _wgslsmith_dot_vec4_u32(~(~vec4<u32>(40600u, 1u, 0u, var_1)), _wgslsmith_mult_vec4_u32(vec4<u32>(9704u, 31727u, u_input.c.x, var_2.b) | vec4<u32>(13336u, var_2.b, 59299u, u_input.c.x), ~firstTrailingBit(vec4<u32>(var_2.b, var_1, 1u, 2448u))))), 31u)];
    return var_3.e;
}

fn func_1(arg_0: f32, arg_1: Struct_1, arg_2: bool, arg_3: i32) -> Struct_1 {
    let var_0 = Struct_1(arg_1.a, ~(~arg_1.b), !vec2<bool>(!arg_1.e.x, arg_1.e.x), abs(~(~_wgslsmith_sub_i32(0i, u_input.a.x))), vec2<bool>(!all(!arg_1.c), false));
    let var_1 = func_2(arg_1.c.x, Struct_1(u_input.a.yz, ~(~58527u), var_0.e, -22239i, var_0.e), -var_0.a);
    global0 = array<Struct_1, 31>();
    let var_2 = func_2(!all(!vec4<bool>(false, var_0.e.x, false, arg_1.c.x)) || arg_2, func_2(false || (!var_1.c.x & var_0.c.x), global2[_wgslsmith_index_u32(var_1.b, 27u)], arg_1.a), vec2<i32>(-947i, -arg_3));
    global3 = reverseBits(~(~var_0.b) & 34565u);
    return Struct_1(vec2<i32>(2147483647i, _wgslsmith_add_i32(_wgslsmith_mod_i32(var_1.a.x, var_2.a.x ^ -2554i), var_1.d ^ ~u_input.d.x)), ~var_2.b, vec2<bool>(false, all(!vec4<bool>(false, var_2.c.x, false, var_1.e.x))), arg_3, select(select(vec2<bool>(arg_0 <= arg_0, true), select(!var_0.c, func_3(), arg_1.c.x || var_2.e.x), arg_1.c.x), vec2<bool>(4294967295u >= (var_2.b >> (13386u % 32u)), false), func_3()));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(-1754f, Struct_1(vec2<i32>(_wgslsmith_sub_i32(0i, 1i), -_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d.x, u_input.a.x, u_input.d.x), u_input.d)), min(select(5385u, 4294967295u, true), 25102u), !select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true)), ~2147483647i, vec2<bool>(false, !any(vec3<bool>(false, true, true)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1681f, _wgslsmith_f_op_f32(f32(-1f) * -859f))) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1428f))), i32(-1i) * -1i);
    global0 = array<Struct_1, 31>();
    var var_1 = 0u;
    global1 = (u_input.d.x << (23519u % 32u)) ^ var_0.a.x;
    global0 = array<Struct_1, 31>();
    var_1 = min(_wgslsmith_mod_u32(_wgslsmith_sub_u32(select(99871u, u_input.c.x, true) & _wgslsmith_dot_vec2_u32(u_input.c.yy, vec2<u32>(u_input.c.x, 1u)), var_0.b), u_input.c.x), ~select(14112u, _wgslsmith_add_u32(~u_input.c.x, 7602u), !(var_0.c.x & true)));
    var var_2 = select(vec3<bool>(true, false, true == !(70884i > var_0.a.x)), !select(vec3<bool>(true, false, true), select(!vec3<bool>(false, var_0.e.x, false), vec3<bool>(var_0.c.x, true, false), vec3<bool>(true, true, var_0.e.x)), select(select(vec3<bool>(var_0.e.x, var_0.c.x, true), vec3<bool>(var_0.e.x, true, var_0.e.x), var_0.e.x), !vec3<bool>(true, false, var_0.e.x), vec3<bool>(true, true, true))), select(!(!select(vec3<bool>(var_0.e.x, var_0.c.x, false), vec3<bool>(true, var_0.c.x, false), vec3<bool>(true, var_0.e.x, var_0.c.x))), select(select(vec3<bool>(var_0.e.x, false, var_0.e.x), select(vec3<bool>(true, var_0.c.x, var_0.e.x), vec3<bool>(false, true, true), vec3<bool>(true, true, false)), !var_0.c.x), vec3<bool>(true, !var_0.c.x, var_0.c.x), !vec3<bool>(var_0.e.x, var_0.e.x, false)), var_0.c.x));
    global0 = array<Struct_1, 31>();
    var_1 = var_0.b;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c & _wgslsmith_div_vec3_u32(u_input.c, _wgslsmith_sub_vec3_u32(vec3<u32>(51191u, u_input.c.x, 1u) >> (vec3<u32>(139824u, u_input.c.x, var_0.b) % vec3<u32>(32u)), min(vec3<u32>(u_input.c.x, var_0.b, u_input.c.x), u_input.c))), firstLeadingBit(max(vec2<u32>(var_0.b, 33420u), u_input.c.xy)), vec4<i32>(u_input.b, firstLeadingBit(reverseBits(-72689i) << ((50645u & var_0.b) % 32u)), 2147483647i, select(-3709i, -u_input.a.x, true)));
}

