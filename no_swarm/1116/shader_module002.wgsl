struct Struct_1 {
    a: vec2<bool>,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<i32>,
    c: Struct_1,
    d: bool,
}

struct Struct_4 {
    a: u32,
    b: u32,
    c: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec3<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec2<i32>,
    d: vec2<f32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 31> = array<vec2<u32>, 31>(vec2<u32>(32498u, 1u), vec2<u32>(1u, 1u), vec2<u32>(19903u, 30225u), vec2<u32>(4294967295u, 0u), vec2<u32>(1u, 26919u), vec2<u32>(4294967295u, 1887u), vec2<u32>(0u, 0u), vec2<u32>(4979u, 0u), vec2<u32>(44117u, 5499u), vec2<u32>(1u, 36191u), vec2<u32>(1u, 4294967295u), vec2<u32>(63642u, 16883u), vec2<u32>(4294967295u, 0u), vec2<u32>(46953u, 28740u), vec2<u32>(17556u, 0u), vec2<u32>(4294967295u, 26648u), vec2<u32>(63685u, 2725u), vec2<u32>(1u, 1u), vec2<u32>(0u, 466u), vec2<u32>(21714u, 3836u), vec2<u32>(66646u, 86406u), vec2<u32>(4294967295u, 0u), vec2<u32>(31061u, 19910u), vec2<u32>(42402u, 17062u), vec2<u32>(36003u, 55882u), vec2<u32>(63387u, 1u), vec2<u32>(0u, 11970u), vec2<u32>(0u, 0u), vec2<u32>(24970u, 1u), vec2<u32>(18661u, 62216u), vec2<u32>(4294967295u, 1u));

var<private> global1: Struct_3;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2() -> f32 {
    var var_0 = _wgslsmith_div_i32(_wgslsmith_mod_i32(-1i, global1.b.x), _wgslsmith_dot_vec3_i32(vec3<i32>(0i, _wgslsmith_dot_vec3_i32(global1.b, _wgslsmith_add_vec3_i32(vec3<i32>(-71974i, global1.b.x, global1.b.x), vec3<i32>(24247i, -41594i, 2147483647i))), ~(-26139i | u_input.d.x)), vec3<i32>(0i, abs(u_input.c.x), reverseBits(~u_input.d.x))));
    let var_1 = _wgslsmith_sub_vec2_i32(~(-u_input.b & _wgslsmith_sub_vec2_i32(-vec2<i32>(661i, global1.b.x), abs(vec2<i32>(-1i, 0i)))), -u_input.d.xz);
    let var_2 = Struct_2(Struct_1(select(select(global1.c.a, vec2<bool>(true, true), true), select(vec2<bool>(true, true), !vec2<bool>(global1.c.a.x, global1.a.a.x), any(vec2<bool>(global1.d, global1.d))), !global1.a.a), _wgslsmith_f_op_f32(round(-660f))));
    let var_3 = 15560u;
    var var_4 = _wgslsmith_clamp_vec2_u32(vec2<u32>(_wgslsmith_mod_u32(var_3, ~_wgslsmith_dot_vec2_u32(global0[_wgslsmith_index_u32(67426u, 31u)], global0[_wgslsmith_index_u32(1u, 31u)])), _wgslsmith_mult_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(var_3, 9329u, var_3, var_3), vec4<u32>(var_3, 0u, 50770u, var_3)), abs(_wgslsmith_dot_vec2_u32(global0[_wgslsmith_index_u32(9371u, 31u)], vec2<u32>(17100u, var_3))))), vec2<u32>(var_3, ~(~_wgslsmith_sub_u32(var_3, var_3))), _wgslsmith_mod_vec2_u32(~select(global0[_wgslsmith_index_u32(var_3, 31u)], global0[_wgslsmith_index_u32(1u, 31u)], global1.a.a.x), vec2<u32>(_wgslsmith_div_u32(var_3, 29209u), var_3 ^ var_3)) | vec2<u32>(countOneBits(var_3), 4294967295u));
    return global1.c.b;
}

fn func_1(arg_0: i32) -> u32 {
    var var_0 = _wgslsmith_mult_u32(~59852u, _wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(4294967295u, 0u, min(4294967295u, 4294967295u))), max(~vec3<u32>(1u, 1u, 1u), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(72320u, 49485u, 1u), vec3<u32>(17168u, 16284u, 1u), vec3<u32>(44493u, 48794u, 1u)))));
    var_0 = ~1u;
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(853f))), _wgslsmith_f_op_f32(-global1.c.b))), _wgslsmith_f_op_f32(func_2()));
    let var_2 = Struct_2(Struct_1(vec2<bool>(true, true), global1.a.b));
    var var_3 = false;
    return abs(~1u) >> (_wgslsmith_mod_u32(0u, 1u) % 32u);
}

fn func_3(arg_0: vec3<i32>) -> bool {
    let var_0 = global1.c.a.x;
    global0 = array<vec2<u32>, 31>();
    var var_1 = Struct_4(min(24793u, ~firstTrailingBit(~26847u)), reverseBits(1u), true);
    global0 = array<vec2<u32>, 31>();
    var var_2 = !var_1.c;
    return var_1.c;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<u32>, 31>();
    var var_0 = false;
    var var_1 = vec3<u32>(~countOneBits(min(_wgslsmith_mult_u32(66051u, 1u), 0u)), 1u, firstTrailingBit(~select(~16619u, func_1(-25845i), true)));
    var var_2 = u_input.b;
    global1 = Struct_3(Struct_1(vec2<bool>(false, !global1.c.a.x), _wgslsmith_f_op_f32(f32(-1f) * -1588f)), u_input.c, Struct_1(vec2<bool>(true, func_3(u_input.c) & false), _wgslsmith_f_op_f32(select(1f, _wgslsmith_f_op_f32(sign(-1041f)), any(select(vec4<bool>(global1.c.a.x, true, false, global1.a.a.x), vec4<bool>(global1.d, false, false, global1.d), vec4<bool>(true, true, true, true)))))), !(_wgslsmith_mod_u32(4294967295u | var_1.x, var_1.x) == var_1.x));
    let var_3 = Struct_3(Struct_1(!(!(!vec2<bool>(global1.d, false))), 828f), select(-_wgslsmith_mult_vec3_i32(global1.b, u_input.c), u_input.c, !vec3<bool>(any(vec2<bool>(global1.d, global1.c.a.x)), all(vec3<bool>(false, global1.a.a.x, false)), !global1.a.a.x)), Struct_1(vec2<bool>(any(vec3<bool>(global1.a.a.x, global1.d, true)) | false, true), _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a.b) * _wgslsmith_f_op_f32(f32(-1f) * -295f)))), !func_3(~vec3<i32>(-13965i, global1.b.x, var_2.x)));
    let x = u_input.a;
    s_output = StorageBuffer(~(~select(35931u, var_1.x, var_3.d) | 0u), ~select(~global0[_wgslsmith_index_u32(_wgslsmith_add_u32(var_1.x, 0u), 31u)], vec2<u32>(~var_1.x, ~0u), true), ~_wgslsmith_add_vec2_i32(-max(var_3.b.yz, vec2<i32>(-52115i, 1i)), vec2<i32>(-10794i, _wgslsmith_mult_i32(var_3.b.x, u_input.d.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(434f, -254f) + _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1160f, 394f)))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.a.b, var_3.a.b)), vec2<f32>(-1715f, 2186f))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1000f, global1.a.b)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1329f, 396f)))), vec3<f32>(global1.a.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1523f)) * _wgslsmith_div_f32(global1.c.b, var_3.a.b))), _wgslsmith_f_op_f32(trunc(global1.a.b))));
}

