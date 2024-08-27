struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: vec2<f32>,
    d: vec3<f32>,
    e: vec2<i32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: f32,
    d: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
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

var<private> global0: vec2<f32>;

var<private> global1: array<vec2<f32>, 29>;

var<private> global2: array<Struct_1, 25>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_2) -> vec4<bool> {
    let var_0 = arg_1;
    let var_1 = vec3<f32>(333f, _wgslsmith_div_f32(514f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2025f) - _wgslsmith_f_op_f32(trunc(523f)))), _wgslsmith_div_f32(arg_0.x, global0.x));
    let var_2 = Struct_1(global0.x, var_0.b.b, vec2<f32>(169f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -229f))), vec3<f32>(-1234f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x * global0.x)))), -158f), max(_wgslsmith_add_vec2_i32(var_0.b.e, -_wgslsmith_mult_vec2_i32(vec2<i32>(arg_1.d, -22916i), vec2<i32>(arg_1.d, var_0.d))), vec2<i32>(-1i) * -_wgslsmith_div_vec2_i32(vec2<i32>(-1i, 0i), vec2<i32>(u_input.b.x, -2147483647i))));
    global1 = array<vec2<f32>, 29>();
    let var_3 = _wgslsmith_mod_vec3_i32((reverseBits(abs(u_input.a)) << ((_wgslsmith_add_vec3_u32(vec3<u32>(0u, arg_1.b.b.x, arg_1.b.b.x), vec3<u32>(var_0.b.b.x, 1u, var_2.b.x)) & ~vec3<u32>(var_2.b.x, 1u, arg_1.b.b.x)) % vec3<u32>(32u))) >> (~countOneBits(select(vec3<u32>(40585u, 54434u, var_0.b.b.x), vec3<u32>(23629u, var_0.b.b.x, var_2.b.x), vec3<bool>(var_0.a.x, true, true))) % vec3<u32>(32u)), firstTrailingBit(u_input.a ^ -(u_input.b.zyy << (vec3<u32>(43255u, var_0.b.b.x, 4294967295u) % vec3<u32>(32u)))));
    return vec4<bool>(false, true, true, all(var_0.a.wx));
}

fn func_2(arg_0: bool, arg_1: Struct_1, arg_2: i32, arg_3: vec2<u32>) -> i32 {
    let var_0 = Struct_2(select(vec4<bool>(true && !arg_0, arg_0, arg_1.d.x >= _wgslsmith_f_op_f32(f32(-1f) * -866f), true), func_3(arg_1.d, Struct_2(!vec4<bool>(true, false, arg_0, false), arg_1, _wgslsmith_f_op_f32(step(-658f, arg_1.a)), _wgslsmith_mult_i32(arg_1.e.x, arg_1.e.x))), !select(!vec4<bool>(arg_0, arg_0, true, arg_0), !vec4<bool>(false, arg_0, true, true), true)), global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(4294967295u, ~(abs(arg_1.b.x) & _wgslsmith_dot_vec2_u32(arg_3, vec2<u32>(arg_3.x, arg_1.b.x))), 1u), 25u)], _wgslsmith_f_op_f32(sign(-770f)), _wgslsmith_add_i32(reverseBits(-_wgslsmith_mod_i32(-2147483647i, -1i)), -1i & -(~arg_2)));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-arg_1.d.x), _wgslsmith_f_op_f32(f32(-1f) * -613f), _wgslsmith_f_op_f32(f32(-1f) * -350f))), arg_1.d));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -189f)))), (_wgslsmith_mod_vec2_u32(~arg_1.b, countOneBits(arg_1.b)) & _wgslsmith_add_vec2_u32(var_0.b.b & vec2<u32>(var_0.b.b.x, arg_3.x), min(var_0.b.b, vec2<u32>(arg_3.x, var_0.b.b.x)))) >> (~(~arg_1.b) % vec2<u32>(32u)), vec2<f32>(var_0.c, 187f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(var_0.b.d)) * _wgslsmith_f_op_vec3_f32(var_1 * arg_1.d)), var_0.b.e);
    var var_3 = var_0;
    var var_4 = _wgslsmith_mult_i32(firstTrailingBit(_wgslsmith_add_i32(-arg_2, 0i)), (countOneBits(~arg_2) << (var_2.b.x % 32u)) & (select(u_input.b.x, _wgslsmith_clamp_i32(arg_1.e.x, arg_2, -2147483647i), arg_0) ^ min(-var_0.b.e.x, i32(-1i) * -7424i)));
    return var_2.e.x;
}

fn func_1() -> vec3<i32> {
    var var_0 = global2[_wgslsmith_index_u32(0u, 25u)];
    var var_1 = firstLeadingBit(_wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(var_0.e.x, -1i, -1i, -2147483647i) ^ vec4<i32>(u_input.a.x, var_0.e.x, -30154i, 15115i)), vec4<i32>(func_2(true, Struct_1(var_0.a, vec2<u32>(var_0.b.x, 1u), var_0.d.zx, var_0.d, u_input.b.wy), 24283i, var_0.b), -var_0.e.x, firstTrailingBit(24387i), _wgslsmith_dot_vec2_i32(u_input.a.zx, vec2<i32>(var_0.e.x, 6992i))))) >> (var_0.b.x % 32u);
    let var_2 = global2[_wgslsmith_index_u32(firstTrailingBit(~(~(~_wgslsmith_clamp_u32(4294967295u, var_0.b.x, var_0.b.x)))), 25u)];
    return max(reverseBits(_wgslsmith_sub_vec3_i32(u_input.b.wxw, vec3<i32>(var_0.e.x, u_input.a.x, 1i) ^ vec3<i32>(0i, var_0.e.x, var_2.e.x))), vec3<i32>(2147483647i, -13238i, ~_wgslsmith_add_i32(var_2.e.x, var_2.e.x))) | (select(firstTrailingBit(vec3<i32>(var_0.e.x, var_0.e.x, -1i)), u_input.b.zzz, _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.e.x, -62602i, -1i, 1i), vec4<i32>(var_0.e.x, 0i, -60956i, 59878i)) >= -39002i) << (~(~countOneBits(vec3<u32>(2970u, 30996u, var_2.b.x))) % vec3<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_1, 25>();
    let var_0 = ~select(u_input.b.yxx, -func_1(), vec3<bool>(true, true, true));
    let var_1 = 1u;
    let var_2 = select(_wgslsmith_div_u32(75226u, 38240u) > (~var_1 | 0u), !all(vec2<bool>(all(vec3<bool>(false, false, true)), true)), !any(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false))));
    let var_3 = !(!var_2);
    global1 = array<vec2<f32>, 29>();
    global1 = array<vec2<f32>, 29>();
    let var_4 = 1u;
    global0 = global1[_wgslsmith_index_u32(firstTrailingBit(countOneBits((4294967295u & var_4) & (var_1 >> (1u % 32u))) & ~(~countOneBits(1u))), 29u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1824f, _wgslsmith_f_op_f32(step(global0.x, -641f)), !var_2)) - global0.x), global0.x));
}

