struct Struct_1 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: i32,
    d: u32,
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

var<private> global0: array<vec3<bool>, 3> = array<vec3<bool>, 3>(vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, false, false));

var<private> global1: array<f32, 31> = array<f32, 31>(1000f, -390f, -168f, -488f, -2585f, -782f, 333f, 538f, 993f, -984f, -724f, 557f, -130f, 1506f, -188f, -540f, 1000f, -154f, 2433f, -1187f, -1078f, 740f, -260f, -817f, -389f, -754f, 1000f, 765f, -996f, 276f, 1445f);

var<private> global2: Struct_1 = Struct_1(vec3<u32>(3613u, 4294967295u, 1u));

var<private> global3: bool;

var<private> global4: array<vec3<u32>, 27> = array<vec3<u32>, 27>(vec3<u32>(75861u, 0u, 7185u), vec3<u32>(62546u, 12160u, 1u), vec3<u32>(1u, 18311u, 27915u), vec3<u32>(10017u, 11392u, 4294967295u), vec3<u32>(0u, 52995u, 8254u), vec3<u32>(97917u, 39230u, 552u), vec3<u32>(17029u, 0u, 4800u), vec3<u32>(0u, 1u, 22141u), vec3<u32>(4294967295u, 9777u, 4294967295u), vec3<u32>(9066u, 44750u, 35498u), vec3<u32>(29877u, 7020u, 1535u), vec3<u32>(1u, 1u, 80668u), vec3<u32>(10657u, 0u, 4294967295u), vec3<u32>(4294967295u, 6818u, 4294967295u), vec3<u32>(8332u, 3680u, 4294967295u), vec3<u32>(18181u, 40530u, 4294967295u), vec3<u32>(6205u, 0u, 20196u), vec3<u32>(1u, 0u, 1502u), vec3<u32>(1u, 1u, 1u), vec3<u32>(4294967295u, 10760u, 1u), vec3<u32>(64404u, 1u, 7840u), vec3<u32>(13134u, 10490u, 39633u), vec3<u32>(0u, 64524u, 6591u), vec3<u32>(4294967295u, 0u, 28560u), vec3<u32>(45018u, 1u, 118604u), vec3<u32>(29984u, 49926u, 4294967295u), vec3<u32>(50142u, 74611u, 4294967295u));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_2(arg_0: bool, arg_1: f32) -> vec3<u32> {
    let var_0 = Struct_1(vec3<u32>(_wgslsmith_dot_vec4_u32(max(_wgslsmith_mult_vec4_u32(vec4<u32>(5010u, global2.a.x, global2.a.x, u_input.a.x), vec4<u32>(30562u, u_input.a.x, 30896u, global2.a.x)), vec4<u32>(u_input.d, u_input.d, global2.a.x, 0u) >> (vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, global2.a.x) % vec4<u32>(32u))), vec4<u32>(countOneBits(14209u), reverseBits(u_input.a.x), _wgslsmith_div_u32(u_input.d, 75988u), ~37940u)), 61063u, 4294967295u));
    let var_1 = Struct_1(_wgslsmith_clamp_vec3_u32(_wgslsmith_mod_vec3_u32(_wgslsmith_sub_vec3_u32(~vec3<u32>(0u, var_0.a.x, global2.a.x), _wgslsmith_sub_vec3_u32(var_0.a, global4[_wgslsmith_index_u32(var_0.a.x, 27u)])), ~global2.a), _wgslsmith_mult_vec3_u32(~select(vec3<u32>(var_0.a.x, 0u, 4294967295u), global4[_wgslsmith_index_u32(67129u, 27u)], arg_0), reverseBits(vec3<u32>(25005u, 4294967295u, u_input.d))), ~countOneBits(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a.x, 0u, 1u), vec3<u32>(global2.a.x, global2.a.x, u_input.d)))));
    let var_2 = var_1;
    let var_3 = arg_0;
    let var_4 = ~(~(~79804u));
    return ~vec3<u32>(abs(15804u), ~1u >> (firstTrailingBit(7276u) % 32u), ~(~_wgslsmith_div_u32(0u, 40457u)));
}

fn func_3() -> u32 {
    global1 = array<f32, 31>();
    let var_0 = Struct_1(~global2.a);
    var var_1 = 4588i;
    var var_2 = Struct_1(global2.a);
    let var_3 = !all(select(vec4<bool>(true, false, false, var_0.a.x > var_2.a.x), select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false))), vec4<bool>(true, false, true, true)));
    return var_0.a.x;
}

fn func_1(arg_0: Struct_1) -> vec4<f32> {
    let var_0 = u_input.b.x;
    let var_1 = func_2(any(vec4<bool>(true, select(true, true, true), true, false)), 189f);
    var var_2 = Struct_1(global4[_wgslsmith_index_u32(max(_wgslsmith_mult_u32(~u_input.d, _wgslsmith_dot_vec3_u32(global4[_wgslsmith_index_u32(var_1.x, 27u)] & arg_0.a, _wgslsmith_mod_vec3_u32(vec3<u32>(global2.a.x, 12513u, 1u), vec3<u32>(78316u, var_1.x, 22056u)))), max(func_3(), var_1.x)), 27u)]);
    var var_3 = var_0;
    var var_4 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-189f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_div_u32(7006u, 4294967295u), 4294967295u & u_input.a.x), 31u)], _wgslsmith_f_op_f32(407f * _wgslsmith_f_op_f32(956f * global1[_wgslsmith_index_u32(1u, 31u)])))) * 1000f), _wgslsmith_f_op_f32(-854f - _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(~1u, 31u)] - _wgslsmith_f_op_f32(-1292f + _wgslsmith_f_op_f32(trunc(-816f))))), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(43554u, 31u)] - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(183f + _wgslsmith_f_op_f32(-1319f - global1[_wgslsmith_index_u32(1u, 31u)])) * _wgslsmith_div_f32(-365f, global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(var_1.x, 1u), 31u)]))));
    return _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_4.x, -2169f, global1[_wgslsmith_index_u32(0u, 31u)], var_4.x))) - _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global1[_wgslsmith_index_u32(arg_0.a.x, 31u)], -414f, global1[_wgslsmith_index_u32(u_input.a.x, 31u)], -412f)))) + _wgslsmith_f_op_vec4_f32(max(vec4<f32>(global1[_wgslsmith_index_u32(55117u, 31u)], -488f, global1[_wgslsmith_index_u32(0u, 31u)], -125f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_4.x, 303f, var_4.x, -1041f))))) * vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-678f + global1[_wgslsmith_index_u32(var_2.a.x, 31u)]), -1916f)), 868f, _wgslsmith_f_op_f32(var_4.x - var_4.x), -581f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(global2.a.x, 31u)], -355f, 1000f, global1[_wgslsmith_index_u32(1u, 31u)]) * vec4<f32>(global1[_wgslsmith_index_u32(global2.a.x, 31u)], 1056f, global1[_wgslsmith_index_u32(global2.a.x, 31u)], -559f)), vec4<f32>(-355f, -305f, global1[_wgslsmith_index_u32(u_input.a.x, 31u)], -788f))) - _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(func_1(Struct_1(global2.a)))))));
    global0 = array<vec3<bool>, 3>();
    var var_1 = vec2<bool>(!(~u_input.d < _wgslsmith_mod_u32(global2.a.x, 40852u)), true);
    var var_2 = _wgslsmith_clamp_i32(abs(-_wgslsmith_div_i32(2147483647i, u_input.c)), _wgslsmith_sub_i32(_wgslsmith_sub_i32(select(-u_input.b.x, -u_input.c, var_1.x), -u_input.b.x), -u_input.b.x), 16756i);
    let var_3 = ~abs(_wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(1u, global2.a.x, global2.a.x)), select(vec3<u32>(68526u, u_input.d, u_input.a.x), _wgslsmith_div_vec3_u32(vec3<u32>(0u, u_input.d, 0u), vec3<u32>(u_input.d, global2.a.x, 4294967295u)), var_1.x)));
    var var_4 = Struct_1(_wgslsmith_div_vec3_u32(~(~(~vec3<u32>(u_input.d, global2.a.x, global2.a.x))), vec3<u32>(u_input.a.x, _wgslsmith_mod_u32(global2.a.x, global2.a.x), ~33715u) ^ _wgslsmith_add_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(1u, 0u, 50851u), global4[_wgslsmith_index_u32(14786u, 27u)]), ~global2.a)));
    let x = u_input.a;
    s_output = StorageBuffer(global4[_wgslsmith_index_u32(9440u, 27u)]);
}

