struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: i32,
    d: Struct_2,
}

struct Struct_4 {
    a: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: u32 = 1u;

var<private> global2: array<Struct_3, 16>;

var<private> global3: Struct_2;

var<private> global4: array<u32, 22>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: vec2<u32>) -> vec4<i32> {
    global1 = ~_wgslsmith_clamp_u32(_wgslsmith_add_u32(_wgslsmith_sub_u32(global4[_wgslsmith_index_u32(0u, 22u)] << (54122u % 32u), _wgslsmith_div_u32(41816u, 4294967295u)), abs(arg_3.x)), 0u, reverseBits(global3.a.x));
    return -abs(_wgslsmith_clamp_vec4_i32(~_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b, u_input.b, u_input.b, -63108i), vec4<i32>(u_input.b, 0i, u_input.b, u_input.b)), vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, -1i), vec2<i32>(u_input.b, -22186i)), 0i, ~1i, ~(-1125i)), vec4<i32>(_wgslsmith_mod_i32(2147483647i, -22141i), -1145i, max(13193i, u_input.b), ~2147483647i)));
}

fn func_2(arg_0: Struct_4, arg_1: vec4<i32>) -> Struct_2 {
    let var_0 = arg_1.x;
    let var_1 = -select(countOneBits(vec4<i32>(-2147483647i, 20405i, arg_1.x, var_0)) & vec4<i32>(_wgslsmith_div_i32(32834i, var_0), u_input.b, ~1i, ~arg_1.x), _wgslsmith_mod_vec4_i32(func_3(firstLeadingBit(vec3<u32>(arg_0.a, 4294967295u, arg_0.a)), Struct_1(false), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1202f, 249f, 169f) * vec3<f32>(347f, -526f, -1645f)), u_input.a.yz), _wgslsmith_sub_vec4_i32(abs(vec4<i32>(var_0, 25152i, 11353i, -20918i)), arg_1)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, all(vec2<bool>(false, true)), select(true, true, false)), _wgslsmith_f_op_f32(1435f * 1535f) <= _wgslsmith_f_op_f32(trunc(520f))));
    let var_2 = Struct_2(~(~(vec4<u32>(arg_0.a, 1u, 4294967295u, arg_0.a) ^ ~global3.a)));
    global1 = 15881u;
    global4 = array<u32, 22>();
    return Struct_2(~(~(~vec4<u32>(arg_0.a, arg_0.a, 0u, u_input.a.x))));
}

fn func_1(arg_0: Struct_3, arg_1: vec4<f32>, arg_2: f32) -> bool {
    var var_0 = _wgslsmith_sub_vec4_i32(abs(~(vec4<i32>(arg_0.c, -1i, arg_0.c, -24934i) & vec4<i32>(arg_0.c, -16794i, u_input.b, 40409i)) & vec4<i32>(arg_0.c >> (u_input.a.x % 32u), i32(-1i) * -10118i, 1i, -38404i)), ~(~(-(~vec4<i32>(arg_0.c, 0i, arg_0.c, u_input.b)))));
    global3 = func_2(Struct_4(1u), countOneBits(~(~abs(vec4<i32>(-55146i, var_0.x, arg_0.c, var_0.x)))));
    var var_1 = Struct_3(arg_0.a, global4[_wgslsmith_index_u32(arg_0.b, 22u)], ~(-select(var_0.x, ~var_0.x, false)), Struct_2(vec4<u32>(global4[_wgslsmith_index_u32(42266u, 22u)], _wgslsmith_sub_u32(global4[_wgslsmith_index_u32(1u, 22u)], arg_0.b) & 0u, u_input.a.x, firstTrailingBit(~arg_0.b))));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(~global3.a.x, min(~117753u, max(u_input.a.x, global3.a.x)) ^ 4294967295u, 74884u, global3.a.x), vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -222f), _wgslsmith_f_op_f32(abs(190f)))))), _wgslsmith_f_op_f32(select(-908f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1619f))), !func_1(Struct_3(Struct_1(true), 78561u, 0i, Struct_2(global3.a)), vec4<f32>(-219f, -118f, 1813f, 1368f), 1652f)))), _wgslsmith_clamp_u32(~_wgslsmith_div_u32(~4910u, _wgslsmith_dot_vec3_u32(vec3<u32>(global4[_wgslsmith_index_u32(global3.a.x, 22u)], global3.a.x, u_input.a.x), u_input.a)), global3.a.x | 1u, ~1u));
}

