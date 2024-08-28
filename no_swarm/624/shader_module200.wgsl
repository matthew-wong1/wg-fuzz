struct Struct_1 {
    a: i32,
    b: u32,
    c: i32,
    d: vec3<f32>,
    e: u32,
}

struct Struct_2 {
    a: u32,
    b: u32,
    c: u32,
    d: vec3<f32>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec2<bool>,
    b: vec2<u32>,
}

struct Struct_5 {
    a: vec2<i32>,
    b: vec4<bool>,
    c: Struct_4,
    d: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 27>;

var<private> global1: vec3<f32>;

var<private> global2: vec4<u32>;

var<private> global3: i32;

var<private> global4: array<bool, 30> = array<bool, 30>(false, true, true, true, true, false, true, true, true, true, false, false, true, true, true, true, true, false, true, false, false, false, true, false, true, true, true, false, true, true);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_5) -> u32 {
    var var_0 = Struct_3(Struct_1(select(arg_1.a.x, max(-2147483647i ^ arg_1.a.x, arg_1.a.x | arg_1.a.x), arg_0.x), firstTrailingBit(6844u), _wgslsmith_add_i32(u_input.b, arg_1.a.x), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-840f, global1.x, 1160f))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, global1.x, global1.x)), vec3<bool>(all(arg_0), arg_1.c.a.x, global4[_wgslsmith_index_u32(global2.x, 30u)]))), 75787u));
    global1 = _wgslsmith_div_vec3_f32(var_0.a.d, vec3<f32>(388f, global1.x, 1697f));
    let var_1 = Struct_2(u_input.c.x, 4294967295u, global0[_wgslsmith_index_u32(~1u, 27u)], vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x - global1.x)) + _wgslsmith_f_op_f32(-1310f * global1.x)), _wgslsmith_f_op_f32(abs(global1.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.a.d.x), _wgslsmith_f_op_f32(-var_0.a.d.x), true))))), Struct_1(23542i, ~max(94158u, max(u_input.c.x, 5119u)), i32(-1i) * -5521i, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-391f, 191f, 412f)) - vec3<f32>(-1591f, -1637f, 191f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.a.d * var_0.a.d)), vec3<bool>(global4[_wgslsmith_index_u32(4294967295u, 30u)], true, all(arg_1.b.wx)))), ~global0[_wgslsmith_index_u32(arg_1.c.b.x, 27u)]));
    let var_2 = ~min(~arg_1.c.b.x, ~_wgslsmith_mod_u32(_wgslsmith_mult_u32(global2.x, 1u), arg_1.d));
    let var_3 = var_1;
    return global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(firstLeadingBit(_wgslsmith_mod_vec3_u32(~(u_input.c.wxw ^ vec3<u32>(arg_1.d, 14014u, u_input.d.x)), ~vec3<u32>(2890u, 34072u, global0[_wgslsmith_index_u32(4294967295u, 27u)]) | global2.zwz)), max(global2.zzx, _wgslsmith_mult_vec3_u32(abs(~vec3<u32>(40424u, u_input.a, var_2)), global2.xxx))), 27u)];
}

fn func_2(arg_0: Struct_5) -> u32 {
    global4 = array<bool, 30>();
    global4 = array<bool, 30>();
    global0 = array<u32, 27>();
    var var_0 = -vec4<i32>(2147483647i, 0i, 30721i, _wgslsmith_dot_vec2_i32(arg_0.a, arg_0.a ^ select(vec2<i32>(-24790i, arg_0.a.x), arg_0.a, arg_0.b.wy)));
    var_0 = vec4<i32>(_wgslsmith_sub_i32(~var_0.x, ~var_0.x), _wgslsmith_dot_vec2_i32(reverseBits(select(arg_0.a | var_0.xy, vec2<i32>(-1i, u_input.b), arg_0.c.a)), _wgslsmith_div_vec2_i32(_wgslsmith_add_vec2_i32(arg_0.a, vec2<i32>(-2147483647i, var_0.x)) >> (_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.d.x, 5149u), u_input.c.wz) % vec2<u32>(32u)), vec2<i32>(-1i) * -var_0.ww)), u_input.b, arg_0.a.x);
    return _wgslsmith_add_u32(0u, ~global0[_wgslsmith_index_u32(func_3(vec3<bool>(true, true, !global4[_wgslsmith_index_u32(0u, 30u)]), arg_0), 27u)]);
}

fn func_1(arg_0: vec3<i32>) -> u32 {
    let var_0 = Struct_1((arg_0.x ^ 1i) << (global2.x % 32u), 4294967295u, arg_0.x, vec3<f32>(global1.x, _wgslsmith_f_op_f32(f32(-1f) * -2600f), global1.x), 5945u >> (countOneBits(u_input.c.x) % 32u));
    let var_1 = u_input.c.x ^ (func_2(Struct_5(arg_0.yx, vec4<bool>(true, false, true, false), Struct_4(vec2<bool>(true, global4[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.d.x, 27u)], 30u)]), vec2<u32>(0u, 38916u)), global2.x)) << (~u_input.c.x % 32u));
    return ~(~(~var_1));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_dot_vec4_u32(~u_input.c, _wgslsmith_div_vec4_u32(vec4<u32>(u_input.c.x, 15481u, 0u, 4294967295u), u_input.c)) | 14524u, ~1u, _wgslsmith_div_u32(4294967295u << (func_1(vec3<i32>(u_input.b, u_input.b, -1i)) % 32u), 42834u), (~40010u >> ((u_input.a >> (45500u % 32u)) % 32u)) >> (firstLeadingBit(~u_input.c.x) % 32u)), u_input.c);
    var_0 = _wgslsmith_add_u32(71862u & global2.x, _wgslsmith_dot_vec2_u32(~vec2<u32>(28496u, ~0u), vec2<u32>(abs(min(global2.x, 4294967295u)), global0[_wgslsmith_index_u32(u_input.c.x, 27u)])));
    var var_1 = !(!(!select(!vec3<bool>(false, false, global4[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(21425u, 27u)], 27u)], 27u)], 27u)], 30u)]), vec3<bool>(global4[_wgslsmith_index_u32(20384u, 30u)], true, true), vec3<bool>(global4[_wgslsmith_index_u32(u_input.a, 30u)], global4[_wgslsmith_index_u32(4294967295u, 30u)], global4[_wgslsmith_index_u32(global2.x, 30u)]))));
    var var_2 = u_input.b;
    global1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-165f, global1.x, global1.x)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, -909f, -158f) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-252f, global1.x, 677f) + vec3<f32>(1000f, -1982f, global1.x))), !(!vec3<bool>(global4[_wgslsmith_index_u32(u_input.c.x, 30u)], var_1.x, var_1.x)))))));
    let var_3 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-616f, 1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)), global1.x), vec4<f32>(global1.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(696f - _wgslsmith_f_op_f32(-global1.x)))), -623f, 1f), select(vec4<bool>(true, global4[_wgslsmith_index_u32(~3364u, 30u)], all(vec3<bool>(global4[_wgslsmith_index_u32(global2.x, 30u)], true, true)) & false, global4[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global2.x ^ 4294967295u, 27u)] >> (u_input.a % 32u), 30u)]), vec4<bool>(false, (1i << (0u % 32u)) < -u_input.b, !global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.d.x, 27u)], 27u)], 46494u), 30u)], var_1.x), select(select(!vec4<bool>(global4[_wgslsmith_index_u32(0u, 30u)], true, false, global4[_wgslsmith_index_u32(global2.x, 30u)]), select(vec4<bool>(var_1.x, var_1.x, true, global4[_wgslsmith_index_u32(71080u, 30u)]), vec4<bool>(true, global4[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 27u)], 30u)], var_1.x, false), var_1.x), !vec4<bool>(var_1.x, var_1.x, false, var_1.x)), vec4<bool>(true, true, true, global4[_wgslsmith_index_u32(0u << (global0[_wgslsmith_index_u32(u_input.c.x, 27u)] % 32u), 30u)]), false))));
    global0 = array<u32, 27>();
    let var_4 = Struct_2(global2.x, _wgslsmith_mod_u32(74202u, global2.x), 4294967295u >> (func_2(Struct_5(~vec2<i32>(-1i, -37134i), select(vec4<bool>(true, var_1.x, global4[_wgslsmith_index_u32(u_input.a, 30u)], global4[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(34340u, 27u)], 30u)]), vec4<bool>(var_1.x, true, true, global4[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(26022u, 27u)], 30u)]), vec4<bool>(global4[_wgslsmith_index_u32(4294967295u, 30u)], global4[_wgslsmith_index_u32(0u, 30u)], false, false)), Struct_4(var_1.zy, global2.yy), global2.x << (50861u % 32u))) % 32u), var_3.zyz, Struct_1(-43336i, _wgslsmith_mult_u32(global2.x, ~min(global2.x, u_input.a)), -reverseBits(u_input.b), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(var_3.xxy))) + _wgslsmith_div_vec3_f32(vec3<f32>(1389f, -903f, var_3.x), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(777f, var_3.x, -708f), var_3.wzy)))), min(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(reverseBits(global2.x), global0[_wgslsmith_index_u32(38351u, 27u)]), 27u)], _wgslsmith_sub_u32(~global0[_wgslsmith_index_u32(16744u, 27u)], ~55272u))));
    let var_5 = Struct_3(var_4.e);
    let x = u_input.a;
    s_output = StorageBuffer(-1148f, -countOneBits(vec4<i32>(var_5.a.c, _wgslsmith_add_i32(u_input.b, 2147483647i), 0i, u_input.b)));
}

