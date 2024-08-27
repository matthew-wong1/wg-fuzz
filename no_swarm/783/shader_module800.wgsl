struct Struct_1 {
    a: vec3<i32>,
    b: vec3<f32>,
    c: bool,
    d: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<u32>,
    c: i32,
    d: vec3<i32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 32>;

var<private> global1: bool;

var<private> global2: array<Struct_1, 24>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
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

fn func_3(arg_0: vec4<f32>) -> bool {
    return all(vec4<bool>(false, (i32(-1i) * -2147483647i) != u_input.c, true, !any(vec2<bool>(false, false)) | true));
}

fn func_2() -> Struct_1 {
    let var_0 = true;
    let var_1 = var_0 & (-_wgslsmith_mult_i32(u_input.c, ~(-79001i)) != ~_wgslsmith_dot_vec4_i32(-vec4<i32>(0i, u_input.e, 0i, u_input.c), -u_input.a));
    global2 = array<Struct_1, 24>();
    let var_2 = global2[_wgslsmith_index_u32(u_input.b, 24u)];
    let var_3 = _wgslsmith_f_op_vec2_f32(-var_2.b.yx);
    return Struct_1(var_2.a, vec3<f32>(955f, var_3.x, 660f), func_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(var_3.x)), -287f, -568f, _wgslsmith_f_op_f32(f32(-1f) * -128f)))), _wgslsmith_mod_i32(countOneBits(-26942i >> (_wgslsmith_mult_u32(u_input.d, u_input.d) % 32u)), ~_wgslsmith_mod_i32(u_input.c, 1i)));
}

fn func_1(arg_0: Struct_1) -> bool {
    let var_0 = vec3<bool>(arg_0.c, arg_0.c, false);
    var var_1 = func_2();
    let var_2 = vec2<bool>(func_2().c, false);
    var_1 = global2[_wgslsmith_index_u32(_wgslsmith_mult_u32((~abs(31872u) | ((u_input.b & u_input.b) ^ _wgslsmith_mod_u32(4294967295u, u_input.d))) & u_input.b, ~u_input.d), 24u)];
    var var_3 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_0.b.x * 532f))) - 619f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1687f * var_1.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-402f, _wgslsmith_f_op_f32(step(var_1.b.x, arg_0.b.x)))))));
    return var_2.x;
}

fn func_4(arg_0: Struct_1, arg_1: bool) -> Struct_1 {
    let var_0 = _wgslsmith_add_i32(-func_2().d, arg_0.d) ^ u_input.a.x;
    let var_1 = global2[_wgslsmith_index_u32(u_input.d, 24u)];
    global1 = !arg_1;
    var var_2 = _wgslsmith_mod_vec3_i32(min(vec3<i32>(abs(-2147483647i), firstTrailingBit(_wgslsmith_mult_i32(u_input.c, -1i)), abs(arg_0.a.x << (14761u % 32u))), vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.d, u_input.c, var_1.d), var_1.a), 7518i, ~(-u_input.e))), _wgslsmith_mult_vec3_i32(var_1.a, arg_0.a));
    var_2 = ~(var_1.a << (abs(_wgslsmith_mod_vec3_u32(reverseBits(vec3<u32>(0u, u_input.b, u_input.b)), ~vec3<u32>(57442u, 37198u, 1u))) % vec3<u32>(32u)));
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<u32>, 32>();
    let var_0 = func_4(Struct_1(~vec3<i32>(_wgslsmith_mod_i32(-1i, -27244i), -1i, u_input.c & u_input.c), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(572f))), -288f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(759f, 1317f))), all(select(vec3<bool>(true, true, false), select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), false), func_1(Struct_1(vec3<i32>(u_input.a.x, u_input.c, 5936i), vec3<f32>(-1489f, -200f, 631f), true, -1i)))), abs(_wgslsmith_add_i32(i32(-1i) * -31660i, i32(-1i) * -10755i))), true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(1201f, -370f))), -1144f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(var_0.b.x, 291f), -902f))), _wgslsmith_sub_vec3_u32(~vec3<u32>(1u, u_input.d, 6105u ^ u_input.d), vec3<u32>(~(~0u), u_input.b, ~4294967295u)), 0i, u_input.a.ywy, ~(~firstLeadingBit(vec2<u32>(u_input.b, 1u))) ^ ~(~vec2<u32>(u_input.d, 27244u)));
}

