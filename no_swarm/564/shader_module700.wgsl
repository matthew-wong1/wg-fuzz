struct Struct_1 {
    a: i32,
    b: u32,
    c: vec4<u32>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: vec4<u32>,
    d: u32,
    e: vec4<bool>,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: vec4<bool>,
    b: i32,
    c: Struct_1,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
    d: i32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(310f, -1051f, 831f);

var<private> global1: Struct_3 = Struct_3(69578u);

var<private> global2: array<Struct_3, 6>;

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: u32, arg_1: vec3<i32>, arg_2: Struct_4) -> i32 {
    let var_0 = !(!(!(!select(vec4<bool>(arg_2.d, true, arg_2.d, false), arg_2.a, true))));
    let var_1 = arg_2.c;
    global0 = vec3<f32>(_wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(abs(1294f))), _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(floor(arg_2.c.d)));
    global1 = global2[_wgslsmith_index_u32(_wgslsmith_div_u32(~4294967295u, u_input.a), 6u)];
    let var_2 = -234f;
    return _wgslsmith_sub_i32(1i, arg_2.b);
}

fn func_2() -> f32 {
    global2 = array<Struct_3, 6>();
    var var_0 = u_input.c;
    global1 = Struct_3(1u << (global1.a % 32u));
    global1 = Struct_3(max(86923u, ~reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 18697u, 1u, 28021u), vec4<u32>(global1.a, global1.a, u_input.e.x, 37848u)))));
    var_0 = vec4<i32>(abs(1i) ^ ~(func_3(u_input.a, vec3<i32>(-1i, u_input.c.x, u_input.b), Struct_4(vec4<bool>(true, true, false, true), var_0.x, Struct_1(var_0.x, 1u, vec4<u32>(7347u, 8663u, u_input.a, u_input.e.x), 721f), true)) ^ 1i), var_0.x, -(~(u_input.b | _wgslsmith_mult_i32(-98184i, var_0.x))), u_input.c.x);
    return global0.x;
}

fn func_1(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: bool, arg_3: Struct_1) -> vec2<i32> {
    global2 = array<Struct_3, 6>();
    global0 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(578f * -288f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_2()))), _wgslsmith_f_op_f32(-global0.x)) * vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-745f - global0.x))), arg_1.d, 1f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-534f, 242f, global0.x), vec3<f32>(-320f, -1464f, arg_1.d)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-299f, 676f, 947f) + vec3<f32>(805f, arg_1.d, -2345f))))))));
    let var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(996f - -430f), _wgslsmith_f_op_f32(trunc(245f)), _wgslsmith_f_op_f32(416f + -1283f), _wgslsmith_div_f32(-1140f, 894f)))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(global0.x, -532f))), -495f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -701f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1530f, 258f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global0.x, -375f, arg_3.d, 876f), vec4<f32>(1000f, 495f, arg_1.d, 1000f)))), false)));
    global2 = array<Struct_3, 6>();
    let var_1 = 27471u;
    return -_wgslsmith_mod_vec2_i32(vec2<i32>(-1i, _wgslsmith_add_i32(-arg_1.a, arg_3.a)), (~vec2<i32>(u_input.c.x, 2147483647i) | ~u_input.c.yz) & _wgslsmith_clamp_vec2_i32(vec2<i32>(-2147483647i, arg_1.a) >> (arg_0.zw % vec2<u32>(32u)), -vec2<i32>(arg_1.a, -30087i), _wgslsmith_add_vec2_i32(vec2<i32>(2147483647i, 0i), u_input.c.zy)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1i;
    global0 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1202f - global0.x)), _wgslsmith_f_op_f32(exp2(global0.x))))));
    var var_1 = abs(firstTrailingBit(func_1(~vec4<u32>(1u, 4294967295u, 0u, u_input.e.x), Struct_1(~2147483647i, 43933u, vec4<u32>(4294967295u, global1.a, global1.a, global1.a), _wgslsmith_f_op_f32(-1667f - 1201f)), all(vec3<bool>(false, true, false)), Struct_1(var_0, _wgslsmith_mod_u32(0u, 33232u), ~vec4<u32>(global1.a, global1.a, global1.a, 16575u), _wgslsmith_f_op_f32(-global0.x)))));
    var var_2 = true;
    let var_3 = Struct_1(_wgslsmith_add_i32(~(-11570i), -2147483647i), _wgslsmith_clamp_u32(select(~u_input.e.x, abs(13744u), true), select(~(~global1.a), ~abs(58002u), false), ~(~15746u)), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.e.x, ~global1.a, global1.a, ~u_input.e.x), ~_wgslsmith_mod_vec4_u32(vec4<u32>(72168u, 8967u, u_input.a, u_input.a), vec4<u32>(0u, global1.a, global1.a, u_input.a)), countOneBits(vec4<u32>(16986u, 5748u, global1.a, 100648u) << (vec4<u32>(12719u, global1.a, u_input.e.x, u_input.a) % vec4<u32>(32u)))), global0.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(2074f, global0.x, global0.x, var_3.d), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.d, var_3.d, global0.x, global0.x))) - vec4<f32>(_wgslsmith_f_op_f32(var_3.d - -1000f), 1601f, _wgslsmith_f_op_f32(var_3.d * global0.x), 971f)))), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -985f), _wgslsmith_f_op_f32(-var_3.d), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_3.d + global0.x), _wgslsmith_f_op_f32(-global0.x), true))), vec3<f32>(-755f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1221f), global0.x), _wgslsmith_f_op_f32(1393f + _wgslsmith_div_f32(-282f, -1190f))))));
}

