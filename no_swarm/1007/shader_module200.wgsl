struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: i32,
    d: vec4<bool>,
    e: u32,
}

struct Struct_3 {
    a: f32,
    b: f32,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: vec2<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: vec2<f32>,
    d: u32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: array<vec4<u32>, 25>;

var<private> global2: array<u32, 16>;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_3) -> bool {
    let var_0 = ~75153u;
    var var_1 = Struct_2(Struct_1(~1i), u_input.d, arg_1.c.a, vec4<bool>(true, true, true, true), var_0);
    var_1 = Struct_2(arg_1.c, reverseBits(select(reverseBits(abs(var_1.b)), ~_wgslsmith_div_vec3_u32(vec3<u32>(var_0, var_0, 28844u), vec3<u32>(global2[_wgslsmith_index_u32(49264u, 16u)], var_1.b.x, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 16u)], 16u)])), any(var_1.d.wxz))), firstTrailingBit(_wgslsmith_mod_i32(-1i, ~_wgslsmith_mult_i32(arg_1.c.a, -77086i))), var_1.d, 0u);
    let var_2 = arg_1.c;
    var var_3 = ~vec4<u32>(~var_1.e, _wgslsmith_add_u32(u_input.a.x, ~min(global2[_wgslsmith_index_u32(4294967295u, 16u)], var_0)), var_1.e, _wgslsmith_div_u32(u_input.d.x, _wgslsmith_sub_u32(58552u, u_input.c.x)) >> (select(~13485u, 0u >> (u_input.d.x % 32u), true) % 32u));
    return !(abs(var_2.a) >= -18168i) && !(select(true, var_1.d.x, var_1.d.x | var_1.d.x) & all(!var_1.d.yww));
}

fn func_2(arg_0: bool, arg_1: Struct_3, arg_2: i32) -> u32 {
    let var_0 = ~_wgslsmith_div_u32(global2[_wgslsmith_index_u32(1905u, 16u)], reverseBits(8159u));
    var var_1 = select(~(-_wgslsmith_add_i32(arg_2, -1i)) << (1u % 32u), max(select(_wgslsmith_mod_i32(arg_2, arg_2), ~arg_1.c.a, true) | ~(i32(-1i) * -1i), -(-1i & arg_1.c.a)), func_3(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.b, -956f, arg_1.b) - vec3<f32>(-1460f, arg_1.b, arg_1.b))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(181f, arg_1.a, 772f)))))), arg_1));
    global1 = array<vec4<u32>, 25>();
    var var_2 = arg_0;
    var_1 = i32(-1i) * -31259i;
    return _wgslsmith_dot_vec2_u32(u_input.c, vec2<u32>((global2[_wgslsmith_index_u32(select(var_0, var_0, arg_0), 16u)] | 1u) & global2[_wgslsmith_index_u32(1u, 16u)], ~select(min(4294967295u, u_input.a.x), ~32104u, var_0 != 72711u)));
}

fn func_1() -> Struct_2 {
    var var_0 = !select(true, true, !(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(func_2(true, Struct_3(516f, -1712f, Struct_1(-1i)), 334i), 16u)], 16u)] < 1u));
    let var_1 = -(~(-_wgslsmith_sub_vec3_i32(vec3<i32>(7571i, -28774i, 8129i), _wgslsmith_div_vec3_i32(vec3<i32>(-41348i, 0i, -2147483647i), vec3<i32>(66924i, 11304i, -2359i)))));
    global0 = select(true, false, true);
    global1 = array<vec4<u32>, 25>();
    global2 = array<u32, 16>();
    return Struct_2(Struct_1(select(1i, -1i, true)), u_input.a.yyx, -var_1.x, !select(vec4<bool>(true, true, any(vec4<bool>(true, false, false, true)), true), vec4<bool>(true, true, any(vec4<bool>(false, false, false, false)), true), select(true, true, true)), ~(1u >> (~_wgslsmith_dot_vec4_u32(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(3940u, 16u)], 25u)], u_input.a) % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    global1 = array<vec4<u32>, 25>();
    global2 = array<u32, 16>();
    var var_1 = var_0.d.x;
    let var_2 = !var_0.d.x;
    global1 = array<vec4<u32>, 25>();
    var var_3 = func_1();
    var var_4 = 0u;
    global0 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -926f) + _wgslsmith_f_op_f32(1242f * 1826f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(794f)))), func_1().d.x)) * 584f), _wgslsmith_mult_vec2_u32(~(~(~u_input.c)), _wgslsmith_add_vec2_u32(~_wgslsmith_clamp_vec2_u32(vec2<u32>(global2[_wgslsmith_index_u32(var_3.e, 16u)], 1u), vec2<u32>(var_0.e, var_3.e), vec2<u32>(u_input.c.x, var_0.e)), vec2<u32>(0u, ~4294967295u))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(ceil(-598f)), _wgslsmith_f_op_f32(1000f + -265f)), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-633f, 432f), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1519f, 238f) * vec2<f32>(-1199f, 335f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(172f, 1665f)) * _wgslsmith_f_op_vec2_f32(min(vec2<f32>(1247f, 902f), vec2<f32>(678f, -829f)))) - vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -213f), -2064f)))), 19224u, u_input.a.wx);
}

