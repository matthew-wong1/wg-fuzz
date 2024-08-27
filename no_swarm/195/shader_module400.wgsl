struct Struct_1 {
    a: vec4<u32>,
    b: u32,
    c: vec4<u32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec2<bool>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: f32,
    c: u32,
    d: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 29>;

var<private> global1: array<Struct_2, 3> = array<Struct_2, 3>(Struct_2(vec3<u32>(25744u, 52136u, 0u), vec2<bool>(false, false)), Struct_2(vec3<u32>(4294967295u, 1u, 19421u), vec2<bool>(false, false)), Struct_2(vec3<u32>(31112u, 70273u, 4294967295u), vec2<bool>(false, false)));

var<private> global2: array<Struct_2, 16>;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_2() -> vec2<u32> {
    return vec2<u32>(1u, ~(~u_input.a));
}

fn func_1(arg_0: vec4<u32>, arg_1: Struct_3, arg_2: vec3<i32>) -> f32 {
    global2 = array<Struct_2, 16>();
    let var_0 = global2[_wgslsmith_index_u32(u_input.b.x, 16u)];
    var var_1 = ~_wgslsmith_clamp_vec2_u32(~u_input.b.yy, select(reverseBits(arg_0.ww), max(arg_0.yy, func_2()), true), _wgslsmith_sub_vec2_u32(arg_0.wy, vec2<u32>(arg_0.x, 43517u)));
    let var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1631f, arg_1.b) + vec2<f32>(664f, 1206f))))), vec2<f32>(-1086f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.b) * arg_1.b)));
    global0 = array<Struct_3, 29>();
    return _wgslsmith_f_op_f32(176f - 2242f);
}

fn func_3(arg_0: bool, arg_1: vec4<f32>) -> Struct_3 {
    let var_0 = select(vec3<bool>(arg_0, any(!vec2<bool>(arg_0, true)), any(select(vec4<bool>(arg_0, arg_0, arg_0, false), vec4<bool>(arg_0, false, arg_0, arg_0), arg_0)) & arg_0), select(!vec3<bool>(true, true, any(vec2<bool>(arg_0, false))), vec3<bool>(true, arg_0, true), false), arg_0);
    let var_1 = u_input.c ^ _wgslsmith_add_vec4_i32(u_input.c, vec4<i32>(-40547i, 0i, 0i, 42948i));
    let var_2 = 1873f;
    let var_3 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(-507f - _wgslsmith_f_op_f32(trunc(var_2))), arg_1.x), arg_1.ww)), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-arg_1.ww))));
    global2 = array<Struct_2, 16>();
    return Struct_3(select(u_input.b, u_input.b, vec3<bool>(true, ~u_input.b.x < ~1u, all(!var_0.zy))), var_3.x, _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(~max(vec3<u32>(u_input.b.x, 0u, u_input.a), u_input.b), vec3<u32>(72348u, 47272u >> (u_input.b.x % 32u), ~u_input.b.x)), ~vec3<u32>(func_2().x, _wgslsmith_div_u32(u_input.a, u_input.b.x), abs(24269u))), u_input.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_3(true, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, _wgslsmith_f_op_f32(func_1(~vec4<u32>(1u, 0u, u_input.a, u_input.b.x), Struct_3(u_input.b, 453f, u_input.b.x, -1i), ~u_input.c.zwx)), 2717f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(193f)))))));
    var var_1 = Struct_1(vec4<u32>(u_input.b.x << (~u_input.b.x % 32u), abs(_wgslsmith_mod_u32(0u >> (var_0.c % 32u), u_input.a)), u_input.b.x, u_input.b.x), ~_wgslsmith_add_u32(_wgslsmith_sub_u32(_wgslsmith_div_u32(47400u, 1u), var_0.c), ~_wgslsmith_sub_u32(var_0.a.x, 1u)), ~vec4<u32>(95791u, _wgslsmith_add_u32(max(u_input.b.x, u_input.b.x), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, var_0.c), var_0.a.xx)), ~1u | select(0u, var_0.c, true), 4294967295u));
    let var_2 = _wgslsmith_div_vec2_u32(~(reverseBits(u_input.b.xy) >> (reverseBits(func_2()) % vec2<u32>(32u))), ~(~vec2<u32>(_wgslsmith_mod_u32(var_0.c, u_input.b.x), 14908u)));
    var var_3 = vec3<i32>(max(u_input.c.x, 2147483647i), -_wgslsmith_dot_vec3_i32(vec3<i32>(reverseBits(-52756i), -var_0.d, -1i), ~vec3<i32>(u_input.d, 10510i, u_input.d) >> (vec3<u32>(6675u, 45202u, var_0.a.x) % vec3<u32>(32u))), _wgslsmith_mod_i32(-2147483647i, 1i));
    var var_4 = func_3(true, _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b, -1000f, func_3(true, vec4<f32>(1193f, var_0.b, -561f, 1000f)).b, var_0.b) + _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b, var_0.b, -519f, var_0.b)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.b, -785f, var_0.b, -1523f), vec4<f32>(-810f, var_0.b, 114f, var_0.b)) - vec4<f32>(-1501f, 540f, -1026f, var_0.b)))))).d;
    global1 = array<Struct_2, 3>();
    let x = u_input.a;
    s_output = StorageBuffer(var_3.xy << (vec2<u32>(~1u << (0u % 32u), 11509u) % vec2<u32>(32u)));
}

