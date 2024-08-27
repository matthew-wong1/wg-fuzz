struct Struct_1 {
    a: vec3<u32>,
    b: f32,
    c: vec4<bool>,
    d: vec4<i32>,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
}

struct Struct_4 {
    a: Struct_2,
    b: bool,
    c: vec4<f32>,
}

struct Struct_5 {
    a: f32,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 17> = array<u32, 17>(0u, 29361u, 57550u, 0u, 3392u, 26952u, 0u, 0u, 49214u, 41974u, 40803u, 73782u, 4294967295u, 50134u, 0u, 0u, 17719u);

var<private> global1: i32 = 46429i;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: Struct_4, arg_1: bool, arg_2: vec2<bool>) -> bool {
    return true;
}

fn func_2() -> u32 {
    var var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(602f, -426f)), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -203f), -844f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(668f, 870f)) - _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(612f, -1051f))))))));
    let var_1 = Struct_4(Struct_2(Struct_1(vec3<u32>(~global0[_wgslsmith_index_u32(68076u, 17u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(34307u, 17u)], 17u)] & 1u, global0[_wgslsmith_index_u32(u_input.a, 17u)] << (4294967295u % 32u)), 938f, select(vec4<bool>(true, false, true, true), select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true)), vec4<bool>(true, true, true, true)), abs(vec4<i32>(26137i, -13968i, 1i, 2147483647i)), -193f)), func_3(Struct_4(Struct_2(Struct_1(vec3<u32>(u_input.a, u_input.a, 19311u), 678f, vec4<bool>(false, true, true, true), vec4<i32>(37260i, 31677i, -1636i, 20476i), -1000f)), any(vec3<bool>(false, true, false)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0.a.x, var_0.a.x, var_0.a.x, var_0.a.x), vec4<f32>(var_0.a.x, var_0.a.x, var_0.a.x, -690f))))), true, !select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true)), true)), vec4<f32>(var_0.a.x, var_0.a.x, var_0.a.x, _wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(622f + var_0.a.x)))))));
    var var_2 = var_1.a.a;
    let var_3 = var_1.a.a.c.yw;
    var var_4 = var_2.c.yy;
    return _wgslsmith_sub_u32(max(firstTrailingBit(~countOneBits(4294967295u)), ~u_input.a), 36181u);
}

fn func_1() -> Struct_3 {
    let var_0 = vec2<u32>(func_2(), u_input.a);
    global0 = array<u32, 17>();
    let var_1 = Struct_1(_wgslsmith_div_vec3_u32(~vec3<u32>(var_0.x, u_input.a, 4294967295u), abs(vec3<u32>(var_0.x, var_0.x, 20759u) | vec3<u32>(0u, global0[_wgslsmith_index_u32(u_input.a, 17u)], var_0.x))) | abs(~_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, 4294967295u, u_input.a), vec3<u32>(u_input.a, 1u, global0[_wgslsmith_index_u32(u_input.a, 17u)]))), 505f, !(!(!select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), true))), ~(-_wgslsmith_sub_vec4_i32(countOneBits(vec4<i32>(-5217i, 1i, -1i, -104999i)), vec4<i32>(-19089i, 28515i, -48572i, -1i))), _wgslsmith_div_f32(1076f, -1344f));
    global0 = array<u32, 17>();
    var var_2 = vec3<u32>(global0[_wgslsmith_index_u32(~var_1.a.x, 17u)], _wgslsmith_clamp_u32(var_0.x, var_1.a.x, _wgslsmith_dot_vec4_u32(min(vec4<u32>(4294967295u, 1u, var_0.x, u_input.a), vec4<u32>(var_0.x, 0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 17u)], 17u)], 17u)], 70499u)) >> ((vec4<u32>(67763u, global0[_wgslsmith_index_u32(4294967295u, 17u)], 29513u, 1u) | vec4<u32>(var_0.x, 0u, 4294967295u, global0[_wgslsmith_index_u32(var_0.x, 17u)])) % vec4<u32>(32u)), vec4<u32>(57250u, 0u, u_input.a, 0u) >> (_wgslsmith_sub_vec4_u32(vec4<u32>(1u, 1u, var_1.a.x, var_1.a.x), vec4<u32>(1u, var_1.a.x, 0u, 1u)) % vec4<u32>(32u)))), ~_wgslsmith_clamp_u32(u_input.a, var_0.x, countOneBits(1u)) >> (~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, global0[_wgslsmith_index_u32(1u, 17u)], global0[_wgslsmith_index_u32(var_0.x, 17u)], 0u) & vec4<u32>(67078u, var_0.x, 1u, u_input.a), vec4<u32>(2993u, var_0.x, 46353u, 1u)) % 32u));
    return Struct_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1009f, var_1.b)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_sub_vec3_u32(vec3<u32>(1u, u_input.a, ~1u >> (firstLeadingBit(u_input.a) % 32u)), ~(~min(vec3<u32>(u_input.a, u_input.a, 4294967295u), vec3<u32>(u_input.a, 89452u, global0[_wgslsmith_index_u32(53531u, 17u)])))) | (vec3<u32>(u_input.a, ~(~global0[_wgslsmith_index_u32(0u, 17u)]), 331u) ^ ~(~_wgslsmith_mod_vec3_u32(vec3<u32>(33134u, u_input.a, u_input.a), vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(36402u, 17u)], 17u)], global0[_wgslsmith_index_u32(u_input.a, 17u)], global0[_wgslsmith_index_u32(51025u, 17u)]))));
    let var_1 = func_1();
    global0 = array<u32, 17>();
    global0 = array<u32, 17>();
    global1 = min(countOneBits(_wgslsmith_dot_vec4_i32(-vec4<i32>(-2275i, -63374i, 20821i, -35637i), vec4<i32>(-40111i, 19381i, -6317i, 12338i))) << (_wgslsmith_mult_u32(var_0.x, ~66696u) % 32u), _wgslsmith_mod_i32(i32(-1i) * -_wgslsmith_div_i32(31925i, -2147483647i), 1i));
    let var_2 = any(!select(select(select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, true), false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(global0[_wgslsmith_index_u32(44756u, 17u)] < var_0.x, true, false, true), vec4<bool>(true, true, true, true)));
    global1 = -1i;
    let var_3 = ~(-29692i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 515f, 129f, _wgslsmith_f_op_f32(var_1.a.x + 622f))));
}

