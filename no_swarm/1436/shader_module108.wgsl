struct Struct_1 {
    a: u32,
    b: vec4<bool>,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 21> = array<vec2<u32>, 21>(vec2<u32>(4294967295u, 57811u), vec2<u32>(4294967295u, 0u), vec2<u32>(4294967295u, 5023u), vec2<u32>(1u, 0u), vec2<u32>(15116u, 29551u), vec2<u32>(43545u, 0u), vec2<u32>(5721u, 1u), vec2<u32>(4294967295u, 60230u), vec2<u32>(82120u, 1u), vec2<u32>(138266u, 4294967295u), vec2<u32>(41334u, 0u), vec2<u32>(75664u, 14490u), vec2<u32>(54522u, 0u), vec2<u32>(8498u, 18772u), vec2<u32>(1u, 10912u), vec2<u32>(59637u, 1u), vec2<u32>(1066u, 0u), vec2<u32>(3740u, 37721u), vec2<u32>(12592u, 4294967295u), vec2<u32>(21958u, 0u), vec2<u32>(32147u, 17445u));

var<private> global1: i32;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_1(arg_0: u32, arg_1: vec4<f32>, arg_2: bool) -> vec2<u32> {
    global1 = select(-71099i, -8137i, false);
    let var_0 = _wgslsmith_add_i32(~11176i, -18750i);
    var var_1 = select(vec2<bool>(abs(u_input.d.x) >= 0i, !select(all(vec3<bool>(false, arg_2, true)), true, !arg_2)), vec2<bool>(arg_1.x > _wgslsmith_f_op_f32(arg_1.x * -1700f), true || !(!arg_2)), select(!vec2<bool>(true, !arg_2), !(!select(vec2<bool>(arg_2, arg_2), vec2<bool>(arg_2, true), vec2<bool>(false, false))), !any(vec4<bool>(false, arg_2, true, true))));
    let var_2 = Struct_1(17066u, vec4<bool>(!(var_0 > u_input.d.x) || (1u >= abs(arg_0)), true, !(!arg_2 & true), !(4294967295u > _wgslsmith_clamp_u32(72291u, u_input.a, u_input.a))));
    global0 = array<vec2<u32>, 21>();
    return min(global0[_wgslsmith_index_u32(~14589u, 21u)], vec2<u32>(~u_input.a, 4294967295u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 10668u;
    let var_1 = 14446u;
    let var_2 = _wgslsmith_mod_u32(62510u, var_0);
    var var_3 = vec2<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(select(~global0[_wgslsmith_index_u32(4483u, 21u)], global0[_wgslsmith_index_u32(var_2, 21u)], true), vec2<u32>(~var_0, var_2)), func_1(min(var_0, _wgslsmith_add_u32(55258u, var_0)), _wgslsmith_div_vec4_f32(vec4<f32>(958f, -452f, -292f, -752f), _wgslsmith_div_vec4_f32(vec4<f32>(1000f, 548f, -1182f, 828f), vec4<f32>(-1783f, 161f, 1356f, -1000f))), true)), ~(~(var_0 >> (4294967295u % 32u))));
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1000f)) * -310f) * -670f);
    global0 = array<vec2<u32>, 21>();
    var var_5 = 0u;
    let x = u_input.a;
    s_output = StorageBuffer(-abs(~vec3<i32>(1i, u_input.b.x, u_input.b.x)) & vec3<i32>(_wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.d.x, 11497i, 5843i, 78530i), u_input.b), _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(u_input.b.yx, u_input.b.yy), i32(-1i) * -67872i), firstTrailingBit(1i) | _wgslsmith_clamp_i32(-24622i, -33379i, -54485i)), abs(~((vec4<u32>(var_2, 1u, 20219u, u_input.a) & vec4<u32>(4294967295u, u_input.a, 0u, var_0)) | select(vec4<u32>(4294967295u, 0u, var_3.x, var_3.x), vec4<u32>(0u, 47851u, u_input.a, u_input.a), vec4<bool>(false, false, true, true)))), -1060f);
}

