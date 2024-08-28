struct Struct_1 {
    a: u32,
    b: i32,
    c: vec3<bool>,
    d: vec3<bool>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec3<u32>,
    c: Struct_1,
    d: vec4<i32>,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 5>;

var<private> global1: array<vec4<u32>, 27> = array<vec4<u32>, 27>(vec4<u32>(4294967295u, 0u, 1u, 4294967295u), vec4<u32>(4294967295u, 35885u, 0u, 14591u), vec4<u32>(83927u, 3546u, 52203u, 37677u), vec4<u32>(1u, 1u, 30776u, 1u), vec4<u32>(0u, 32244u, 1u, 54746u), vec4<u32>(67956u, 44048u, 1u, 56560u), vec4<u32>(36744u, 4294967295u, 18741u, 4294967295u), vec4<u32>(22854u, 0u, 24039u, 11929u), vec4<u32>(4294967295u, 33127u, 1u, 30719u), vec4<u32>(1782u, 1u, 0u, 46267u), vec4<u32>(0u, 80686u, 18198u, 16085u), vec4<u32>(17746u, 19579u, 16112u, 24056u), vec4<u32>(0u, 13175u, 25402u, 59857u), vec4<u32>(1104u, 0u, 68270u, 17708u), vec4<u32>(77584u, 4294967295u, 7278u, 9822u), vec4<u32>(0u, 0u, 18354u, 49670u), vec4<u32>(32844u, 40146u, 1u, 11242u), vec4<u32>(22789u, 0u, 1u, 14200u), vec4<u32>(0u, 53564u, 64951u, 54573u), vec4<u32>(72655u, 4294967295u, 4294967295u, 1u), vec4<u32>(4294967295u, 14446u, 23455u, 0u), vec4<u32>(4294967295u, 44879u, 58081u, 4294967295u), vec4<u32>(46269u, 70479u, 1u, 30981u), vec4<u32>(56453u, 48450u, 4294967295u, 23495u), vec4<u32>(1u, 13846u, 109979u, 44527u), vec4<u32>(0u, 41586u, 44401u, 8292u), vec4<u32>(41053u, 0u, 4294967295u, 7120u));

var<private> global2: array<vec3<bool>, 29> = array<vec3<bool>, 29>(vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(true, false, true));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: u32) -> u32 {
    let var_0 = ~(~arg_2);
    global2 = array<vec3<bool>, 29>();
    var var_1 = abs(arg_0.b);
    var var_2 = arg_0;
    global1 = array<vec4<u32>, 27>();
    return _wgslsmith_add_u32(0u, _wgslsmith_clamp_u32(_wgslsmith_mult_u32(22496u, 35890u), _wgslsmith_dot_vec4_u32(global1[_wgslsmith_index_u32(~5659u & max(var_0, 25345u), 27u)], reverseBits(_wgslsmith_add_vec4_u32(global1[_wgslsmith_index_u32(var_0, 27u)], vec4<u32>(arg_0.c.a, var_0, 4294967295u, 0u)))), ~(~arg_0.c.a) << (~(~3411u) % 32u)));
}

fn func_3(arg_0: vec3<i32>, arg_1: u32, arg_2: bool) -> Struct_1 {
    let var_0 = -959f;
    global2 = array<vec3<bool>, 29>();
    let var_1 = vec2<bool>(arg_2, !any(select(vec2<bool>(arg_2, false), vec2<bool>(arg_2, true), select(vec2<bool>(false, false), vec2<bool>(arg_2, true), vec2<bool>(arg_2, false)))));
    let var_2 = _wgslsmith_add_i32(-u_input.c.x, arg_0.x);
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, 691f) - vec2<f32>(-707f, -220f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, 515f) - vec2<f32>(1245f, 1315f))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-618f, -791f)))))));
    return Struct_1(_wgslsmith_sub_u32(~_wgslsmith_mod_u32(u_input.b, arg_1), ~_wgslsmith_sub_u32(~arg_1, ~31719u)), 2147483647i, vec3<bool>(var_1.x, any(!(!var_1)), max(max(arg_1, u_input.a), 9937u) == _wgslsmith_div_u32(~51272u, ~u_input.b)), !(!(!vec3<bool>(false, arg_2, false))));
}

fn func_1() -> Struct_1 {
    global0 = array<vec4<i32>, 5>();
    global0 = array<vec4<i32>, 5>();
    var var_0 = Struct_2(!select(vec2<bool>(true, true), select(select(vec2<bool>(true, false), vec2<bool>(false, true), false), vec2<bool>(false, false), true), vec2<bool>(true, true)), _wgslsmith_div_vec3_u32(vec3<u32>(24440u, u_input.a, _wgslsmith_sub_u32(u_input.b, u_input.b)), ~(vec3<u32>(4294967295u, u_input.b, 103770u) | vec3<u32>(u_input.a, 0u, 0u))) & vec3<u32>(~(82123u ^ u_input.b), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, 54812u), vec3<u32>(1u, 4294967295u, u_input.a)) | ~u_input.b, firstLeadingBit(firstTrailingBit(28204u))), func_3(vec3<i32>(_wgslsmith_dot_vec2_i32(-u_input.c, u_input.c), 2147483647i, firstLeadingBit(u_input.c.x)), ~func_2(Struct_2(vec2<bool>(true, true), vec3<u32>(21771u, 23038u, u_input.a), Struct_1(18585u, u_input.c.x, global2[_wgslsmith_index_u32(0u, 29u)], vec3<bool>(true, true, false)), vec4<i32>(1i, 1i, u_input.c.x, 6428i), vec2<bool>(false, false)), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false)), 4294967295u), true), vec4<i32>(-1i) * -global0[_wgslsmith_index_u32(func_3(-vec3<i32>(u_input.c.x, 1i, 2147483647i), 0u, all(global2[_wgslsmith_index_u32(u_input.a, 29u)])).a, 5u)], vec2<bool>(~_wgslsmith_dot_vec4_i32(global0[_wgslsmith_index_u32(31854u, 5u)], global0[_wgslsmith_index_u32(1u, 5u)]) >= countOneBits(-2147483647i), 72940u > _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 133429u) & vec2<u32>(u_input.a, u_input.b), min(vec2<u32>(103047u, u_input.a), vec2<u32>(51897u, 4294967295u)))));
    global1 = array<vec4<u32>, 27>();
    let var_1 = u_input.a;
    return var_0.c;
}

fn func_4(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: vec4<bool>) -> Struct_2 {
    let var_0 = vec3<bool>(false, select(true, arg_0.c.x, true && (arg_0.c.x | false)) == arg_1.x, false);
    global2 = array<vec3<bool>, 29>();
    let var_1 = Struct_2(func_3(~select(vec3<i32>(-1i, u_input.c.x, u_input.c.x), vec3<i32>(u_input.c.x, -13529i, arg_0.b), var_0.x) >> (~_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 21363u, 0u), vec3<u32>(3085u, u_input.b, u_input.a)) % vec3<u32>(32u)), _wgslsmith_dot_vec4_u32(~select(vec4<u32>(u_input.a, u_input.b, 47949u, 20993u), vec4<u32>(4294967295u, arg_0.a, 0u, arg_0.a), vec4<bool>(false, arg_0.c.x, arg_2.x, arg_1.x)), _wgslsmith_mod_vec4_u32(global1[_wgslsmith_index_u32(arg_0.a, 27u)], global1[_wgslsmith_index_u32(37999u, 27u)]) | _wgslsmith_mod_vec4_u32(global1[_wgslsmith_index_u32(arg_0.a, 27u)], global1[_wgslsmith_index_u32(arg_0.a, 27u)])), true).d.yx, vec3<u32>(_wgslsmith_div_u32(u_input.a, ~(~4294967295u)), _wgslsmith_div_u32(~31349u, 1u), ~(0u & ~arg_0.a)), arg_0, global0[_wgslsmith_index_u32(~(~_wgslsmith_div_u32(arg_0.a, _wgslsmith_mult_u32(20707u, 6979u))), 5u)], !vec2<bool>(any(arg_2) | select(arg_1.x, false, arg_1.x), arg_2.x));
    let var_2 = vec2<u32>(77033u, arg_0.a);
    global2 = array<vec3<bool>, 29>();
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_vec2_f32(vec2<f32>(1f, 1f), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-773f * _wgslsmith_f_op_f32(select(-1000f, -1000f, true))), _wgslsmith_f_op_f32(-1f)) - vec2<f32>(1f, 1f)));
    var var_1 = 12094u;
    var var_2 = func_4(func_1(), select(global2[_wgslsmith_index_u32(func_3(firstTrailingBit(countOneBits(vec3<i32>(0i, -22979i, 2147483647i))), 1u, !any(global2[_wgslsmith_index_u32(25664u, 29u)])).a, 29u)], vec3<bool>(any(select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, true), false)), !select(false, false, true), false), true), !vec4<bool>(func_3(vec3<i32>(u_input.c.x, -1i, 0i) & vec3<i32>(-1i, -1i, 2147483647i), u_input.b, true).d.x, -u_input.c.x > countOneBits(-85973i), true, true));
    global0 = array<vec4<i32>, 5>();
    let var_3 = Struct_2(vec2<bool>(var_2.c.d.x, var_2.c.c.x), select(~min(~vec3<u32>(30225u, 1338u, 4294967295u), var_2.b), abs(_wgslsmith_mod_vec3_u32(var_2.b ^ var_2.b, _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, var_2.c.a, u_input.b), vec3<u32>(21632u, var_2.c.a, 4124u), var_2.b))), func_4(var_2.c, !func_1().c, vec4<bool>(var_2.a.x, var_0.x >= 1054f, func_1().c.x, func_3(var_2.d.xzz, var_2.c.a, true).c.x)).c.d.x), func_3(vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, -2147483647i, 12887i), var_2.d.xxx), var_2.d.x, -2147483647i), u_input.a, true), -_wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(-1i, var_2.c.b, 2147483647i, u_input.c.x), global0[_wgslsmith_index_u32(~4294967295u, 5u)]), select(-vec4<i32>(var_2.c.b, u_input.c.x, 38468i, u_input.c.x), vec4<i32>(u_input.c.x, var_2.c.b, 1i, -4059i), true)), !(!vec2<bool>(var_2.a.x, all(vec2<bool>(var_2.c.c.x, var_2.e.x)))));
    global0 = array<vec4<i32>, 5>();
    var var_4 = !select(select(vec4<bool>(all(vec3<bool>(var_3.c.d.x, true, var_2.a.x)), !var_2.c.c.x, var_3.a.x, any(vec4<bool>(false, var_3.c.c.x, true, var_2.c.d.x))), select(select(vec4<bool>(var_3.c.c.x, false, var_3.c.c.x, var_3.e.x), vec4<bool>(false, var_2.c.d.x, var_3.c.c.x, var_3.e.x), false), select(vec4<bool>(var_2.a.x, var_2.c.d.x, var_3.e.x, false), vec4<bool>(false, false, false, false), vec4<bool>(var_2.e.x, var_3.a.x, false, var_2.c.d.x)), select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, var_2.a.x, true), var_3.a.x)), true), vec4<bool>(var_3.e.x, var_2.c.d.x, _wgslsmith_f_op_f32(139f + 1000f) < _wgslsmith_f_op_f32(-var_0.x), false), select(select(!vec4<bool>(var_3.c.d.x, true, var_3.a.x, var_3.a.x), !vec4<bool>(false, var_2.c.c.x, true, var_3.e.x), var_2.c.b == -2147483647i), !select(vec4<bool>(var_3.a.x, true, false, false), vec4<bool>(false, var_2.a.x, true, false), var_2.c.d.x), !select(vec4<bool>(true, true, var_2.e.x, false), vec4<bool>(var_2.e.x, var_2.c.c.x, true, true), var_2.e.x)));
    var var_5 = select(vec4<bool>(!(!(!var_2.a.x)), max(-u_input.c.x, ~(-2147483647i)) != max(~var_3.d.x, 1i), any(func_3(-var_3.d.zzz, ~u_input.b, var_2.e.x).c), var_3.c.d.x), vec4<bool>((1u & _wgslsmith_add_u32(var_2.b.x, var_2.c.a)) == _wgslsmith_clamp_u32(func_3(vec3<i32>(2147483647i, var_2.d.x, var_2.d.x), 4294967295u, true).a, 1u, 30771u), true & var_2.e.x, 1f != _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(536f, var_0.x))), true), false);
    let x = u_input.a;
    s_output = StorageBuffer(~(-select(0i, _wgslsmith_dot_vec2_i32(vec2<i32>(-39513i, var_2.c.b), var_2.d.ww), true)), global0[_wgslsmith_index_u32(1u, 5u)], countOneBits(vec2<u32>(~var_2.b.x, _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(global1[_wgslsmith_index_u32(u_input.b, 27u)], vec4<u32>(var_2.c.a, var_3.b.x, 17022u, 4294967295u)), countOneBits(u_input.b), 39568u >> (0u % 32u)))));
}

