struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
    d: vec2<f32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(true);

var<private> global1: vec3<f32>;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_2() -> Struct_2 {
    let var_0 = ~4294967295u;
    var var_1 = Struct_1(!(!all(select(vec4<bool>(global0.a, global0.a, true, global0.a), vec4<bool>(global0.a, true, false, global0.a), true))));
    var_1 = Struct_1(!var_1.a);
    var var_2 = u_input.c;
    var var_3 = 1000f;
    return Struct_2(firstLeadingBit(~(-(0i & var_2.x))));
}

fn func_3() -> vec2<u32> {
    global1 = vec3<f32>(global1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-520f, -1400f, global0.a)) - global1.x) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1090f - global1.x))) * -517f), _wgslsmith_f_op_f32(ceil(531f)));
    var var_0 = func_2();
    var_0 = Struct_2(min(_wgslsmith_mult_i32(max(u_input.c.x, -u_input.c.x), max(func_2().a, u_input.c.x)), ~firstTrailingBit(18960i)));
    let var_1 = u_input.c.ywx | max(~vec3<i32>(-var_0.a, var_0.a, -9125i), u_input.c.ywy);
    var var_2 = _wgslsmith_mod_vec2_i32(firstLeadingBit(~_wgslsmith_add_vec2_i32(max(u_input.c.zw, vec2<i32>(1i, var_0.a)), _wgslsmith_sub_vec2_i32(vec2<i32>(-2147483647i, -16550i), u_input.c.wx))), ~var_1.zy);
    return ~vec2<u32>(firstTrailingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(5334u, 1u, u_input.b, u_input.b), vec4<u32>(29854u, u_input.b, u_input.a, 0u)) >> (firstTrailingBit(u_input.a) % 32u)), u_input.a);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec2<u32>) -> i32 {
    var var_0 = -1817f;
    var var_1 = vec2<u32>(u_input.a, ~0u);
    global0 = arg_1;
    var var_2 = arg_1;
    global0 = Struct_1(all(!(!(!vec2<bool>(var_2.a, true)))));
    return -22112i;
}

fn func_5(arg_0: i32) -> Struct_1 {
    let var_0 = false;
    global1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(174f, 1224f, global1.x))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(849f, global1.x, global1.x)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, 620f, global1.x)), var_0))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1011f, global1.x, -1270f)))))));
    let var_1 = 0i & _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(_wgslsmith_div_vec2_i32(abs(vec2<i32>(-29762i, -1i)), u_input.c.wx), -_wgslsmith_mult_vec2_i32(u_input.c.xy, vec2<i32>(arg_0, arg_0))), vec2<i32>(-4609i, abs(arg_0)));
    let var_2 = Struct_1(!(!(!(var_0 | true))));
    var var_3 = true;
    return Struct_1(any(select(!select(vec4<bool>(var_2.a, false, false, var_2.a), vec4<bool>(global0.a, global0.a, global0.a, false), vec4<bool>(false, true, true, var_2.a)), !select(vec4<bool>(var_0, var_2.a, global0.a, global0.a), vec4<bool>(global0.a, true, false, var_0), vec4<bool>(true, var_0, global0.a, global0.a)), !vec4<bool>(true, global0.a, global0.a, false))));
}

fn func_1(arg_0: vec2<bool>) -> i32 {
    global0 = func_5(func_4(func_2(), Struct_1(_wgslsmith_f_op_f32(-global1.x) <= global1.x), firstLeadingBit(select(func_3(), vec2<u32>(4294967295u, u_input.b), !vec2<bool>(global0.a, global0.a)))));
    let var_0 = select(arg_0, vec2<bool>(global0.a, false), false);
    return _wgslsmith_clamp_i32(u_input.c.x, -_wgslsmith_mult_i32(2147483647i, firstTrailingBit(~28521i)), _wgslsmith_dot_vec3_i32(u_input.c.zwy, select(u_input.c.xwx, u_input.c.xxy, 50048u <= u_input.a) ^ -max(vec3<i32>(u_input.c.x, -1i, u_input.c.x), u_input.c.wzy)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!vec3<bool>(_wgslsmith_f_op_f32(-global1.x) < global1.x, false, all(vec3<bool>(global0.a, true, global0.a))));
    global0 = Struct_1(_wgslsmith_mult_i32(func_1(var_0.yy), 25060i) < 2147483647i);
    let var_1 = func_2();
    global0 = func_5(u_input.c.x);
    var var_2 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mult_vec4_u32(~select(vec4<u32>(u_input.b, 42385u, 21337u, u_input.a), vec4<u32>(u_input.b, 12506u, u_input.b, 59985u), false), ~countOneBits(vec4<u32>(26736u, u_input.b, 7250u, 6522u))), 1385i, u_input.a ^ _wgslsmith_mod_u32(42375u, 1u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-455f, global1.x), global1.zy)), vec2<f32>(global1.x, 454f)))), firstLeadingBit(_wgslsmith_add_vec2_u32(_wgslsmith_sub_vec2_u32(~vec2<u32>(u_input.b, u_input.a), vec2<u32>(44472u, u_input.a)), vec2<u32>(_wgslsmith_mod_u32(u_input.a, u_input.a), 1u))));
}

