struct Struct_1 {
    a: vec2<f32>,
    b: vec4<u32>,
    c: f32,
    d: bool,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: i32,
    c: vec3<bool>,
    d: vec4<i32>,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: u32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 30> = array<bool, 30>(true, false, true, true, true, false, true, false, true, false, true, true, true, false, false, true, false, true, false, false, true, true, false, false, true, true, false, false, false, false);

var<private> global1: array<Struct_3, 28>;

var<private> global2: vec3<i32>;

var<private> global3: Struct_1;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: f32) -> i32 {
    let var_0 = arg_0;
    var var_1 = global3.c;
    let var_2 = _wgslsmith_sub_vec2_i32(vec2<i32>(global2.x, firstLeadingBit(~(u_input.b >> (4294967295u % 32u)))), _wgslsmith_sub_vec2_i32(~abs(_wgslsmith_mod_vec2_i32(global2.yy, global2.xz)), vec2<i32>(2147483647i, global2.x)));
    let var_3 = (_wgslsmith_f_op_f32(-var_0.a.c) == -1000f) && global3.e;
    var var_4 = var_0.a;
    return firstLeadingBit(_wgslsmith_clamp_i32(global2.x, max(-var_2.x, 2147483647i), i32(-1i) * -global2.x) | (firstLeadingBit(var_2.x) ^ -15504i));
}

fn func_2() -> vec3<i32> {
    var var_0 = true;
    let var_1 = 2147483647i;
    var var_2 = vec4<f32>(-1201f, _wgslsmith_f_op_f32(-global3.c), 1102f, global3.a.x);
    var_2 = vec4<f32>(var_2.x, global3.c, var_2.x, 1567f);
    let var_3 = _wgslsmith_add_vec2_u32(global3.b.xx, global3.b.xx);
    return select(_wgslsmith_mult_vec3_i32(-vec3<i32>(1i, ~(-2147483647i), 39038i), vec3<i32>(max(2147483647i, global2.x) >> (_wgslsmith_add_u32(var_3.x, 662u) % 32u), ~countOneBits(global2.x), func_3(Struct_2(Struct_1(global3.a, global3.b, var_2.x, false, global3.e)), ~global3.b, global3.c))), min(_wgslsmith_mod_vec3_i32(vec3<i32>(-1i, ~global2.x, -37656i), vec3<i32>(min(0i, -55585i), -u_input.b, -41607i)), reverseBits(_wgslsmith_add_vec3_i32(countOneBits(vec3<i32>(50620i, var_1, 44261i)), -vec3<i32>(u_input.b, global2.x, 25780i)))), !select(!select(vec3<bool>(global0[_wgslsmith_index_u32(54383u, 30u)], true, global0[_wgslsmith_index_u32(0u, 30u)]), vec3<bool>(global3.e, global0[_wgslsmith_index_u32(38552u, 30u)], false), true), vec3<bool>(global3.e && false, select(global3.d, false, global3.e), false), !(!vec3<bool>(true, global0[_wgslsmith_index_u32(global3.b.x, 30u)], false))));
}

fn func_1(arg_0: vec2<u32>) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(global3.c * global3.a.x);
    let var_1 = global0[_wgslsmith_index_u32(~(~min(firstTrailingBit(~7977u), _wgslsmith_mod_u32(~1u, global3.b.x & u_input.a))), 30u)];
    global2 = func_2();
    let var_2 = abs(vec4<i32>(-2147483647i, -_wgslsmith_mult_i32(0i, select(-2147483647i, -2549i, global3.e)), global2.x, -19433i));
    global1 = array<Struct_3, 28>();
    return ~abs((26607u >> (~u_input.a % 32u)) & 0u);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = ~_wgslsmith_add_vec3_i32(vec3<i32>(-1i | _wgslsmith_dot_vec4_i32(vec4<i32>(global2.x, 0i, 18187i, u_input.b), vec4<i32>(u_input.b, 42560i, -1239i, global2.x)), 56307i, ~(-global2.x)), vec3<i32>(global2.x, abs(-2147483647i), 2147483647i));
    global1 = array<Struct_3, 28>();
    let var_0 = Struct_1(vec2<f32>(global3.a.x, global3.a.x), _wgslsmith_div_vec4_u32(vec4<u32>(~_wgslsmith_add_u32(1u, u_input.a), u_input.a, ~(~38314u), 28288u), vec4<u32>(global3.b.x << (firstLeadingBit(4294967295u) % 32u), abs(u_input.a), firstTrailingBit(_wgslsmith_mult_u32(u_input.a, u_input.a)), func_1(vec2<u32>(u_input.a, global3.b.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global3.c)) * -510f), !((i32(-1i) * -u_input.b) != _wgslsmith_clamp_i32(global2.x, -42078i, u_input.b & 7122i)), true);
    let var_1 = Struct_2(var_0);
    var var_2 = global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(firstTrailingBit(87312u), ~25437u), 28u)];
    var var_3 = var_1;
    let var_4 = vec3<i32>(_wgslsmith_mult_i32(-max(_wgslsmith_dot_vec2_i32(vec2<i32>(-71361i, u_input.b), vec2<i32>(2147483647i, u_input.b)), ~var_2.b), countOneBits(-u_input.b >> (~0u % 32u))), ~(-var_2.b), _wgslsmith_mod_i32(1i, global2.x));
    var var_5 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(var_1.a.a, var_3.a.a))) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-global3.a), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -1000f)), select(vec2<bool>(true, var_3.a.d), var_2.c.yx, vec2<bool>(true, false))))), select(vec4<u32>(var_0.b.x | 0u, _wgslsmith_dot_vec4_u32(global3.b, vec4<u32>(55550u, var_2.e.x, u_input.a, 0u)), _wgslsmith_mod_u32(var_1.a.b.x, var_3.a.b.x), reverseBits(1u)), reverseBits(~vec4<u32>(31631u, var_0.b.x, u_input.a, 19824u)), any(select(var_2.c, vec3<bool>(false, true, var_3.a.d), global3.e))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(243f))))), all(!var_2.c) && true, false));
    let x = u_input.a;
    s_output = StorageBuffer(-568f, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_3.a.a.x), _wgslsmith_f_op_f32(201f * global3.a.x), var_3.a.c, _wgslsmith_f_op_f32(ceil(var_1.a.c)))), vec4<f32>(_wgslsmith_div_f32(global3.c, 979f), _wgslsmith_f_op_f32(var_0.c + var_5.a.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.c) * _wgslsmith_f_op_f32(-603f - var_3.a.a.x)), 2091f))), _wgslsmith_div_u32(~_wgslsmith_add_u32(_wgslsmith_div_u32(var_5.a.b.x, var_0.b.x), 1u), ~var_5.a.b.x), var_5.a.a);
}

