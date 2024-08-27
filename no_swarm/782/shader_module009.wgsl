struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: f32,
    b: vec2<bool>,
    c: u32,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: f32,
    c: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: vec3<u32>,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 18>;

var<private> global1: f32;

var<private> global2: array<Struct_4, 8>;

var<private> global3: Struct_4;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec3<bool>) -> vec4<u32> {
    var var_0 = global3.a.a.xy;
    var var_1 = all(!select(select(select(vec4<bool>(global3.a.a.x, true, true, var_0.x), vec4<bool>(true, true, arg_0.x, true), vec4<bool>(arg_0.x, false, global3.a.a.x, false)), !vec4<bool>(var_0.x, false, true, true), global3.a.a.x && var_0.x), !(!vec4<bool>(global3.a.a.x, arg_0.x, false, arg_0.x)), all(global3.a.a.yz)));
    let var_2 = Struct_4(global3.a, global3.b, firstTrailingBit(1i));
    let var_3 = _wgslsmith_clamp_vec3_u32(~firstTrailingBit(~(~vec3<u32>(29996u, 23397u, 0u))), _wgslsmith_clamp_vec3_u32(~vec3<u32>(_wgslsmith_mult_u32(1u, 4294967295u), _wgslsmith_add_u32(1u, 1u), 17730u), _wgslsmith_div_vec3_u32(~(~vec3<u32>(94575u, 4294967295u, 28133u)), vec3<u32>(1u, 1u, 1u)), abs(~(~vec3<u32>(0u, 1920u, 1u)))), _wgslsmith_mod_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(~_wgslsmith_mod_u32(1u, 4294967295u), ~(~4294967295u), 1u)));
    let var_4 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-351f - global3.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.b + var_2.b)) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-518f, -2421f)))) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1157f));
    return firstLeadingBit(~vec4<u32>(firstLeadingBit(var_3.x), var_3.x, var_3.x, var_3.x));
}

fn func_2(arg_0: u32, arg_1: f32, arg_2: Struct_1) -> vec4<i32> {
    global2 = array<Struct_4, 8>();
    global1 = -322f;
    global2 = array<Struct_4, 8>();
    global3 = global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, ~abs(arg_0) << (12545u % 32u)) ^ _wgslsmith_dot_vec4_u32(vec4<u32>(~_wgslsmith_clamp_u32(1740u, arg_0, 1u), min(~arg_0, 4294967295u), countOneBits(_wgslsmith_mod_u32(arg_0, 117114u)), reverseBits(~7483u)), ~func_3(arg_2.a)), 8u)];
    let var_0 = vec4<bool>(false, !(select(!arg_2.a.x, !arg_2.a.x, global3.a.a.x & global3.a.a.x) || global3.a.a.x), !(max(-4604i, _wgslsmith_sub_i32(u_input.a, -1i)) < ~1i), false);
    return reverseBits(vec4<i32>(18678i, -5720i, _wgslsmith_mult_i32(firstLeadingBit(u_input.a), u_input.b.x), global3.c));
}

fn func_1() -> vec4<i32> {
    global2 = array<Struct_4, 8>();
    global2 = array<Struct_4, 8>();
    global1 = global3.b;
    let var_0 = _wgslsmith_sub_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(_wgslsmith_mod_i32(global3.c, 25011i), ~_wgslsmith_mult_i32(u_input.b.x, -41049i)), i32(-1i) * -1i, -u_input.a), u_input.b);
    global0 = array<Struct_4, 18>();
    return -(select(vec4<i32>(_wgslsmith_sub_i32(u_input.a, var_0.x), var_0.x, -41902i, i32(-1i) * -41751i), ~func_2(64372u, global3.b, Struct_1(vec3<bool>(false, false, global3.a.a.x))), true) >> (~vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1u;
    global0 = array<Struct_4, 18>();
    let var_1 = -reverseBits(reverseBits(~u_input.a));
    let var_2 = ~select(-firstTrailingBit(-vec4<i32>(var_1, var_1, global3.c, 1268i)), func_1(), select(any(!global3.a.a), all(select(vec4<bool>(global3.a.a.x, global3.a.a.x, false, global3.a.a.x), vec4<bool>(true, global3.a.a.x, global3.a.a.x, global3.a.a.x), global3.a.a.x)), global3.a.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(-12231i ^ _wgslsmith_mult_i32(~var_2.x, global3.c)), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1456f, 298f, 1343f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(441f, global3.b, 1027f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(global3.b, 167f, 310f) - vec3<f32>(-845f, -617f, global3.b))), vec3<bool>(true, any(global3.a.a), true))))), _wgslsmith_mult_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(1u, 1u, 1u), _wgslsmith_sub_vec3_u32(~vec3<u32>(1u, 0u, 23986u), countOneBits(vec3<u32>(4294967295u, 4294967295u, 0u)))), min(~vec3<u32>(35529u, 0u, 38132u), vec3<u32>(1u, 1u, 1u))), var_1, _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(reverseBits(vec2<i32>(global3.c, var_2.x)), var_2.wz ^ var_2.ww) ^ _wgslsmith_clamp_i32(var_1, _wgslsmith_sub_i32(var_2.x, var_2.x), 1i), 16433i));
}

