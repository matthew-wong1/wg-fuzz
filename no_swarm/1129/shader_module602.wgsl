struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: i32,
    b: vec4<u32>,
}

struct Struct_3 {
    a: f32,
    b: i32,
}

struct Struct_4 {
    a: vec3<u32>,
    b: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<i32, 4>;

var<private> global2: array<i32, 2> = array<i32, 2>(0i, 49243i);

var<private> global3: u32;

var<private> global4: vec4<u32>;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> vec4<u32> {
    let var_0 = ~(~abs(1i));
    let var_1 = Struct_3(-319f, _wgslsmith_sub_i32(abs(firstTrailingBit(41697i)), -13776i));
    var var_2 = global4.x;
    let var_3 = 49421u;
    var var_4 = 2876f;
    return ~vec4<u32>(~_wgslsmith_mult_u32(4294967295u, global4.x), 45146u, u_input.a.x, 4294967295u);
}

fn func_2(arg_0: vec4<i32>, arg_1: i32, arg_2: f32) -> Struct_2 {
    var var_0 = _wgslsmith_sub_vec3_i32(-(vec3<i32>(_wgslsmith_dot_vec4_i32(u_input.b, u_input.b), min(52052i, 0i), abs(-2147483647i)) | arg_0.zwy), arg_0.zwz);
    global2 = array<i32, 2>();
    var var_1 = Struct_2(-23589i, min(func_3(), _wgslsmith_div_vec4_u32(select(vec4<u32>(u_input.a.x, 14014u, u_input.a.x, global4.x), vec4<u32>(1u, 4294967295u, 40435u, global4.x) & vec4<u32>(67768u, u_input.a.x, 12197u, global4.x), vec4<bool>(true, false, false, true)), ~vec4<u32>(global4.x, global4.x, 45412u, 78368u))));
    var var_2 = arg_0;
    let var_3 = _wgslsmith_f_op_f32(arg_2 - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -580f)) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_2 - 643f))))));
    return Struct_2(arg_0.x, vec4<u32>(min(abs(select(global4.x, u_input.a.x, true)), 4294967295u), _wgslsmith_div_u32(~u_input.a.x, 117469u), select(~0u | (var_1.b.x | u_input.a.x), min(_wgslsmith_div_u32(global4.x, u_input.a.x), _wgslsmith_div_u32(43555u, var_1.b.x)), true), min(_wgslsmith_mod_u32(var_1.b.x, var_1.b.x), ~global4.x) << (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, global4.x, 22523u) ^ var_1.b, vec4<u32>(u_input.a.x, 54594u, 0u, global4.x)) % 32u)));
}

fn func_1(arg_0: Struct_4) -> u32 {
    var var_0 = -global2[_wgslsmith_index_u32(48900u, 2u)];
    var_0 = u_input.b.x;
    var var_1 = !(!vec2<bool>(-1i != _wgslsmith_div_i32(u_input.b.x, global1[_wgslsmith_index_u32(global4.x, 4u)]), !all(vec4<bool>(true, true, true, false))));
    let var_2 = func_2(_wgslsmith_mod_vec4_i32(vec4<i32>(global2[_wgslsmith_index_u32(abs(global4.x), 2u)] & countOneBits(-2147483647i), abs(-global1[_wgslsmith_index_u32(arg_0.a.x, 4u)]), ~_wgslsmith_mod_i32(-7199i, u_input.b.x), _wgslsmith_div_i32(-588i, global1[_wgslsmith_index_u32(4294967295u, 4u)] | 37477i)), _wgslsmith_add_vec4_i32(-reverseBits(vec4<i32>(-1i, -2147483647i, global1[_wgslsmith_index_u32(39468u, 4u)], -1i)), u_input.b)), 2147483647i, _wgslsmith_f_op_f32(-arg_0.b));
    var var_3 = vec4<i32>(-1i, 2147483647i, global2[_wgslsmith_index_u32(52581u, 2u)], 45466i) & vec4<i32>(_wgslsmith_sub_i32(reverseBits(firstLeadingBit(global2[_wgslsmith_index_u32(1u, 2u)])), global1[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(4294967295u, arg_0.a.x, arg_0.a.x), 4u)]), _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(2147483647i, var_2.a), u_input.b.zy) ^ u_input.b.xx, vec2<i32>(var_2.a, u_input.b.x)), global2[_wgslsmith_index_u32(~(3757u << (var_2.b.x % 32u)) & 71322u, 2u)], var_2.a);
    return 62804u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b.yyx;
    global3 = func_1(Struct_4(~_wgslsmith_mult_vec3_u32(vec3<u32>(global4.x, 34731u, 4294967295u), _wgslsmith_sub_vec3_u32(global4.wyy, vec3<u32>(global4.x, 1u, global4.x))), -264f));
    global1 = array<i32, 4>();
    global3 = ~(~_wgslsmith_sub_u32(global4.x, global4.x) ^ _wgslsmith_dot_vec4_u32(vec4<u32>(9088u, 4294967295u, u_input.a.x, global4.x), ~vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, global4.x))) >> (4294967295u % 32u);
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-964f, -1957f, 491f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -1621f, 144f))), vec3<f32>(1f, 1f, 1f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f))));
    global2 = array<i32, 2>();
    global4 = ~(~_wgslsmith_div_vec4_u32(~_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 20917u, global4.x, 59002u), vec4<u32>(0u, u_input.a.x, 1u, 16573u), vec4<u32>(global4.x, u_input.a.x, 1u, 16880u)), ~vec4<u32>(0u, 4294967295u, u_input.a.x, 86672u)));
    var var_2 = Struct_1(false);
    var var_3 = 559f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x - var_1.x))) + var_1.x));
}

