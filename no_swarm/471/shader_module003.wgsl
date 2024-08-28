struct Struct_1 {
    a: vec3<f32>,
    b: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec2<u32>,
    d: vec3<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: i32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 16>;

var<private> global1: f32;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec3<f32>, arg_1: u32) -> vec2<u32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(1204f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(arg_0.x))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -578f))), 2041f));
    return vec2<u32>(~(~0u), u_input.b.x);
}

fn func_2() -> u32 {
    var var_0 = func_3(vec3<f32>(1000f, _wgslsmith_div_f32(-1018f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(229f)) - -1767f)), _wgslsmith_div_f32(1097f, 154f)), ~12940u);
    global0 = array<vec4<i32>, 16>();
    var var_1 = _wgslsmith_clamp_vec4_i32(countOneBits(global0[_wgslsmith_index_u32(~(_wgslsmith_div_u32(1u, var_0.x) & var_0.x), 16u)]), global0[_wgslsmith_index_u32(~_wgslsmith_mod_u32(~1u, 72708u), 16u)] | (-select(u_input.a, vec4<i32>(u_input.d.x, u_input.e.x, -52317i, u_input.a.x), true) & (-vec4<i32>(u_input.d.x, u_input.d.x, 16265i, u_input.d.x) << (vec4<u32>(26118u, 0u, var_0.x, u_input.c.x) % vec4<u32>(32u)))), vec4<i32>(1129i, u_input.a.x, u_input.a.x, -reverseBits(u_input.e.x | u_input.e.x)));
    let var_2 = ~_wgslsmith_mod_vec2_i32(select(-firstLeadingBit(vec2<i32>(var_1.x, -8980i)), ~vec2<i32>(var_1.x, 11458i), !select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false))), _wgslsmith_sub_vec2_i32(abs(_wgslsmith_add_vec2_i32(var_1.wx, u_input.d.zx)), _wgslsmith_div_vec2_i32(-vec2<i32>(-17609i, 32772i), vec2<i32>(var_1.x, var_1.x))));
    var var_3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-810f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-182f - -1031f) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -292f), 1000f)))));
    return var_0.x;
}

fn func_1() -> vec2<i32> {
    let var_0 = max(vec3<u32>(~_wgslsmith_clamp_u32(u_input.b.x, u_input.b.x >> (25013u % 32u), 1u), 98538u, u_input.c.x), vec3<u32>(1u, u_input.c.x, abs(func_2())));
    global1 = _wgslsmith_f_op_f32(820f + _wgslsmith_div_f32(-675f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-197f, -1410f, true))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-2234f))))));
    var var_1 = true;
    var_1 = true;
    var var_2 = u_input.d.x;
    return -u_input.a.wz;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_dot_vec2_i32(~u_input.d.yz, _wgslsmith_mod_vec2_i32(~u_input.d.zz, u_input.e));
    let var_1 = min(_wgslsmith_div_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), vec2<i32>(-2187i, u_input.a.x), max(u_input.e, u_input.e)) | (vec2<i32>(-1i, -6470i) | -u_input.a.yz), u_input.a.wz), _wgslsmith_mod_vec2_i32(func_1(), _wgslsmith_clamp_vec2_i32(abs(u_input.e), vec2<i32>(64051i, u_input.a.x), _wgslsmith_div_vec2_i32(vec2<i32>(u_input.a.x, u_input.d.x), -vec2<i32>(u_input.e.x, 28185i)))));
    var var_2 = vec2<bool>(true, true);
    var var_3 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-659f, 1343f, 423f) + vec3<f32>(-1003f, 303f, -1645f)))), countOneBits(vec4<u32>(64255u, u_input.c.x, u_input.c.x, u_input.c.x) | vec4<u32>(u_input.b.x, 17523u, u_input.b.x, u_input.c.x))), 0i);
    global0 = array<vec4<i32>, 16>();
    var var_4 = var_3.a.a.x;
    var_3 = Struct_2(var_3.a, abs(~(-(var_3.b ^ u_input.a.x))));
    let var_5 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_3.a.a.x, var_3.a.a.x, 208f)))), firstLeadingBit(var_3.a.b)), func_1().x);
    var var_6 = -1i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_3.a.a.x, var_3.a.a.x) * vec2<f32>(var_5.a.a.x, var_5.a.a.x)))))), 4294967295u, i32(-1i) * -1i, var_3.a.b.wxx);
}

