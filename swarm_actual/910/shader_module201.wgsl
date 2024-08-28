struct Struct_1 {
    a: vec3<bool>,
    b: i32,
    c: vec3<i32>,
    d: vec2<i32>,
    e: vec3<u32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: f32,
    d: vec2<f32>,
    e: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: f32,
    c: vec2<f32>,
    d: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(1i, 1i, -2858i, -8555i);

var<private> global1: array<i32, 21> = array<i32, 21>(1i, -1i, -34170i, -1i, 60041i, 2147483647i, 1i, -7002i, i32(-2147483648), 4503i, 0i, 1282i, -58928i, 1i, 2147483647i, -1i, -1i, -37552i, -1i, 8250i, i32(-2147483648));

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2(arg_0: u32, arg_1: Struct_1) -> Struct_1 {
    global0 = -(~max(vec4<i32>(-22251i | global1[_wgslsmith_index_u32(arg_0, 21u)], -arg_1.c.x, _wgslsmith_dot_vec3_i32(arg_1.c, vec3<i32>(arg_1.d.x, -342i, global1[_wgslsmith_index_u32(68280u, 21u)])), ~global0.x), _wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(-21626i, 2147483647i, -2147483647i, -49941i), vec4<i32>(global1[_wgslsmith_index_u32(0u, 21u)], 19440i, arg_1.d.x, global0.x)), ~vec4<i32>(-60710i, 12041i, arg_1.c.x, 0i))));
    global1 = array<i32, 21>();
    global1 = array<i32, 21>();
    var var_0 = _wgslsmith_clamp_u32(firstLeadingBit(_wgslsmith_mod_u32(34696u | firstLeadingBit(arg_1.e.x), 1u)), firstLeadingBit(1429u), ~(~select(~arg_0, arg_1.e.x, arg_1.a.x)));
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -563f)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -515f), 1000f))), 399f, -1000f);
    return arg_1;
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: vec4<u32>, arg_3: f32) -> vec3<i32> {
    let var_0 = -1000f;
    global1 = array<i32, 21>();
    let var_1 = Struct_2(vec4<u32>(firstLeadingBit(arg_2.x) & countOneBits(arg_1.e.x), arg_2.x, ~(~1u), min(_wgslsmith_mult_u32(arg_2.x, 43720u), 1920u)) & u_input.b, Struct_1(select(arg_1.a, !(!vec3<bool>(false, arg_1.a.x, true)), false), 8869i & ~global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(6691u, 63739u), 21u)], arg_1.c, arg_1.c.xx, func_2(29074u, Struct_1(vec3<bool>(true, false, arg_1.a.x), ~(-22206i), select(global0.wxw, vec3<i32>(-2147483647i, arg_1.d.x, global1[_wgslsmith_index_u32(1u, 21u)]), vec3<bool>(arg_1.a.x, true, true)), -arg_1.d, max(vec3<u32>(u_input.b.x, 36778u, arg_0), vec3<u32>(arg_0, u_input.b.x, 1u)))).e), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_3 - _wgslsmith_f_op_f32(arg_3 + _wgslsmith_f_op_f32(select(var_0, 1630f, true)))), -1916f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-783f, var_0), vec2<f32>(var_0, -280f), arg_1.a.x)))))), Struct_1(!(!vec3<bool>(arg_1.a.x, false, true)), global0.x, min(global0.zww, _wgslsmith_div_vec3_i32(vec3<i32>(0i, global1[_wgslsmith_index_u32(u_input.b.x, 21u)], 2147483647i), -vec3<i32>(global1[_wgslsmith_index_u32(0u, 21u)], -32655i, arg_1.b))), ~(-arg_1.c.yz), arg_1.e));
    global0 = reverseBits(countOneBits(_wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, -2147483647i, 20168i, 10846i), vec4<i32>(arg_1.c.x, -12127i, 13668i, var_1.b.b) ^ vec4<i32>(global1[_wgslsmith_index_u32(4294967295u, 21u)], -1i, 24421i, global0.x)), countOneBits(vec4<i32>(arg_1.c.x, 0i, 12744i, arg_1.d.x)) | (vec4<i32>(var_1.b.d.x, global0.x, global0.x, arg_1.c.x) >> (var_1.a % vec4<u32>(32u))))));
    return ~(arg_1.c & vec3<i32>(-1i, 1i, ~arg_1.b));
}

fn func_1() -> vec3<f32> {
    let var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(134f)), 1f));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 + _wgslsmith_f_op_f32(f32(-1f) * -794f)));
    var var_2 = i32(-1i) * -2147483647i;
    var_2 = _wgslsmith_dot_vec3_i32(vec3<i32>(abs(global1[_wgslsmith_index_u32(0u, 21u)] << (_wgslsmith_sub_u32(4294967295u, u_input.a.x) % 32u)), _wgslsmith_sub_i32(-53407i, global0.x), ~(-50183i)), func_3(~u_input.b.x, func_2(u_input.a.x, Struct_1(vec3<bool>(true, false, false), _wgslsmith_mod_i32(22229i, global0.x), global0.zzz >> (u_input.b.xxz % vec3<u32>(32u)), vec2<i32>(global1[_wgslsmith_index_u32(u_input.b.x, 21u)], global0.x), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x) | vec3<u32>(35346u, 0u, 34322u))), abs(vec4<u32>(min(u_input.b.x, 0u), u_input.a.x, _wgslsmith_dot_vec3_u32(u_input.b.zwx, u_input.b.wxz), u_input.a.x)), -657f));
    let var_3 = any(vec2<bool>(global0.x >= -1i, !any(vec2<bool>(true, true))));
    return vec3<f32>(var_0, 1374f, _wgslsmith_f_op_f32(-var_0));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 63947u;
    let var_1 = Struct_1(vec3<bool>(true, true, true), -(~global1[_wgslsmith_index_u32(u_input.b.x, 21u)]), vec3<i32>(-21253i, i32(-1i) * -28045i, -_wgslsmith_div_i32(_wgslsmith_add_i32(global0.x, 13629i), -global1[_wgslsmith_index_u32(4294967295u, 21u)])), global0.xz, ~(~u_input.b.xxy));
    var_0 = countOneBits(var_1.e.x);
    let var_2 = var_1.e.x;
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_1()));
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.x - -1562f)) + _wgslsmith_f_op_f32(f32(-1f) * -405f));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.wwz, 0u, -global0.x);
}

