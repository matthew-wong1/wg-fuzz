struct Struct_1 {
    a: f32,
    b: vec3<i32>,
    c: bool,
    d: u32,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: i32,
    d: vec4<i32>,
    e: vec3<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: i32,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec3<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<f32>,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 5>;

var<private> global1: vec2<u32> = vec2<u32>(14273u, 4294967295u);

var<private> global2: array<f32, 17>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: bool) -> bool {
    global0 = array<vec2<i32>, 5>();
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1697f - _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.b, vec2<u32>(0u, 26290u)), 17u)] * _wgslsmith_f_op_f32(sign(global2[_wgslsmith_index_u32(4294967295u, 17u)])))), _wgslsmith_f_op_f32(sign(-439f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-343f, global2[_wgslsmith_index_u32(51562u, 17u)])) - _wgslsmith_f_op_f32(floor(-1000f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-505f * 500f), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.d.x, 17u)] + global2[_wgslsmith_index_u32(1u, 17u)]), arg_0)))) - _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(8482u >> (1u % 32u), 17u)] * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(global2[_wgslsmith_index_u32(global1.x, 17u)])))))), _wgslsmith_f_op_f32(f32(-1f) * -592f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1004f + -211f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(29668u, 17u)]))));
    return false;
}

fn func_2(arg_0: vec3<bool>, arg_1: vec4<u32>, arg_2: f32) -> f32 {
    global2 = array<f32, 17>();
    let var_0 = !select(vec4<bool>(arg_0.x, true, arg_0.x, true), select(vec4<bool>(any(vec4<bool>(true, false, false, arg_0.x)), func_3(arg_0.x), all(vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x)), true), !(!vec4<bool>(true, arg_0.x, arg_0.x, false)), arg_0.x), vec4<bool>(arg_0.x, select(true, false, true), all(select(vec2<bool>(false, false), vec2<bool>(true, false), arg_0.yy)), arg_0.x));
    return arg_2;
}

fn func_1() -> Struct_4 {
    global0 = array<vec2<i32>, 5>();
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-2622f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(75894u, 17u)]) - _wgslsmith_f_op_f32(func_2(vec3<bool>(false, true, true), u_input.d, global2[_wgslsmith_index_u32(u_input.d.x, 17u)])))), firstLeadingBit(u_input.c | -u_input.c), true, _wgslsmith_clamp_u32(max(_wgslsmith_sub_u32(1u, global1.x), global1.x), ~12244u, _wgslsmith_dot_vec4_u32(~vec4<u32>(69040u, 0u, 33133u, u_input.d.x), countOneBits(u_input.d))), true), vec2<i32>(u_input.a, u_input.c.x), ~22184i, vec4<i32>(~(abs(-45008i) | (u_input.c.x << (global1.x % 32u))), -1i, ~(-max(-2147483647i, u_input.c.x)), ~_wgslsmith_mod_i32(18707i, u_input.c.x)), select(vec3<bool>((1662f <= global2[_wgslsmith_index_u32(1u, 17u)]) & all(vec4<bool>(true, true, false, true)), any(vec3<bool>(true, true, true)), true), select(vec3<bool>(true, true, true), !select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), true), true), !select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false))));
    var var_1 = (_wgslsmith_clamp_vec3_u32(~u_input.d.zxw, u_input.d.yyz, ~abs(u_input.d.yyw)) ^ (~(vec3<u32>(4294967295u, 8076u, 1u) | u_input.d.wzx) ^ _wgslsmith_add_vec3_u32(firstTrailingBit(vec3<u32>(var_0.a.d, global1.x, 4294967295u)), u_input.d.yzw << (u_input.d.yyz % vec3<u32>(32u))))) ^ firstLeadingBit(max(~vec3<u32>(var_0.a.d, 1u, global1.x), u_input.d.wyz) | abs(u_input.d.wyy));
    var var_2 = var_0.e.zy;
    let var_3 = u_input.d.x;
    return Struct_4(Struct_3(var_0.a, Struct_1(global2[_wgslsmith_index_u32(4294967295u, 17u)], var_0.d.zzy & ~vec3<i32>(var_0.d.x, 1i, 2147483647i), false, min(26898u, u_input.b.x), (u_input.a & -1i) <= -var_0.c)), ~(~(-33060i) & firstTrailingBit(1i)), ~_wgslsmith_mult_vec4_i32(var_0.d, vec4<i32>(_wgslsmith_dot_vec4_i32(var_0.d, vec4<i32>(-6230i, -12540i, -12919i, 1i)), abs(-1i), var_0.b.x, u_input.c.x)));
}

fn func_4(arg_0: Struct_4, arg_1: i32) -> bool {
    return 213f <= arg_0.a.a.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(vec2<bool>(all(select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), true)) != all(vec2<bool>(true, true)), !func_4(func_1(), 1i)), select(vec2<bool>(true, true), select(!select(vec2<bool>(true, false), vec2<bool>(true, true), true), select(vec2<bool>(false, true), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, true), false)), false), !all(select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), true))), any(select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true)), select(select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(true, false, true)), vec3<bool>(true, true, true), false), 767f > _wgslsmith_f_op_f32(min(-2099f, global2[_wgslsmith_index_u32(global1.x, 17u)])))));
    global1 = vec2<u32>(_wgslsmith_mult_u32(~(~u_input.d.x), _wgslsmith_clamp_u32(firstLeadingBit(min(global1.x, 4294967295u)), abs(_wgslsmith_add_u32(u_input.b.x, 48776u)), (u_input.d.x | u_input.d.x) & 1u)), ~0u);
    let var_1 = func_1();
    global0 = array<vec2<i32>, 5>();
    var var_2 = 1u >> (_wgslsmith_clamp_u32(abs(global1.x), firstLeadingBit(max(reverseBits(84155u), _wgslsmith_dot_vec2_u32(u_input.b, vec2<u32>(u_input.b.x, global1.x)))), 26847u) % 32u);
    global2 = array<f32, 17>();
    global0 = array<vec2<i32>, 5>();
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(select(~var_1.c.yxw, u_input.c, true)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(4294967295u, 17u)], var_1.a.a.a, global2[_wgslsmith_index_u32(0u, 17u)], 720f) * vec4<f32>(1000f, 905f, -122f, -1207f)))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(412f, _wgslsmith_f_op_f32(-var_1.a.b.a), -409f, _wgslsmith_f_op_f32(var_1.a.b.a + -861f)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1742f, var_1.a.b.a, -782f, global2[_wgslsmith_index_u32(u_input.d.x, 17u)])) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(790f, 1969f, 233f, -1317f))))), _wgslsmith_f_op_f32(func_2(!select(select(vec3<bool>(false, false, var_1.a.a.e), vec3<bool>(true, var_0.x, var_0.x), var_1.a.a.c), vec3<bool>(false, true, var_1.a.a.c), !var_0.x), vec4<u32>(abs(4294967295u), firstTrailingBit(8803u), global1.x, abs(4294967295u)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-916f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-1915f)), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(10165u, 17u)]))))), global2[_wgslsmith_index_u32(~firstLeadingBit(countOneBits(8950u)), 17u)]);
}

