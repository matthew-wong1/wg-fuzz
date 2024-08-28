struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: f32,
    b: i32,
    c: Struct_1,
    d: i32,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<f32>,
    c: u32,
    d: vec4<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 32>;

var<private> global1: array<Struct_2, 17>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec4<bool>) -> vec4<bool> {
    global0 = array<u32, 32>();
    var var_0 = ~vec3<u32>(4294967295u, ~25445u, ~abs(0u));
    let var_1 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1611f * -340f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(-1480f, _wgslsmith_f_op_f32(select(903f, -1136f, arg_1.x))))))), 1564f);
    var_0 = abs(reverseBits(min(min(_wgslsmith_mod_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_0.x, 32u)], 32u)], 4294967295u, 1u), vec3<u32>(global0[_wgslsmith_index_u32(53049u, 32u)], 9237u, u_input.b)), vec3<u32>(4294967295u, var_0.x, global0[_wgslsmith_index_u32(var_0.x, 32u)]) | vec3<u32>(0u, 24915u, u_input.b)), vec3<u32>(abs(1u), abs(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b, 32u)], 32u)]), ~4294967295u))));
    let var_2 = firstLeadingBit(~vec2<i32>(abs(_wgslsmith_add_i32(arg_0.x, -1i)), u_input.d.x));
    return select(!(!(!select(arg_1, arg_1, false))), arg_1, !any(arg_1.zyx));
}

fn func_2(arg_0: vec3<u32>, arg_1: Struct_2) -> bool {
    global1 = array<Struct_2, 17>();
    let var_0 = Struct_1(!any(!arg_1.e.xz));
    let var_1 = var_0;
    var var_2 = Struct_2(1097f, ~(~2147483647i), var_0, ~arg_1.d, select(func_3(~(~u_input.d), !select(arg_1.e, vec4<bool>(true, false, false, var_0.a), var_1.a)), select(arg_1.e, func_3(vec2<i32>(-2147483647i, arg_1.d), !arg_1.e), func_3(u_input.d, !arg_1.e).x), !(!select(arg_1.e, arg_1.e, arg_1.e))));
    var var_3 = -687f;
    return var_0.a;
}

fn func_1(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: bool) -> i32 {
    var var_0 = select(global0[_wgslsmith_index_u32(abs(u_input.b), 32u)] << (min(reverseBits(max(4294967295u, u_input.b)), select(u_input.b, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 32u)], 32u)], true) >> (firstTrailingBit(1u) % 32u)) % 32u), ~7298u, func_2(_wgslsmith_div_vec3_u32(~vec3<u32>(80510u, 13175u, global0[_wgslsmith_index_u32(74248u, 32u)]) | _wgslsmith_add_vec3_u32(vec3<u32>(u_input.b, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b, 32u)], 32u)], 0u), vec3<u32>(82713u, 0u, 57917u)), vec3<u32>(~8431u, ~global0[_wgslsmith_index_u32(0u, 32u)], firstLeadingBit(42838u))), global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_clamp_u32(~global0[_wgslsmith_index_u32(17022u, 32u)], 27448u, ~36391u), u_input.b), 17u)]));
    let var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(575f, 241f, 1023f, arg_0.x) * vec4<f32>(-223f, arg_0.x, arg_0.x, arg_0.x)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, arg_0.x, arg_0.x, -1276f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, 1000f, arg_0.x, arg_0.x)))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(482f, arg_0.x, arg_0.x, arg_0.x))) * vec4<f32>(-1737f, arg_0.x, arg_0.x, arg_0.x)) - vec4<f32>(-1049f, arg_0.x, _wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(-302f + -316f)))));
    var_0 = firstTrailingBit(u_input.a.x);
    var var_2 = !(!select(vec2<bool>(false, select(true, false, arg_1.a)), select(!vec2<bool>(arg_2, true), vec2<bool>(true, false), arg_2), select(vec2<bool>(false, arg_1.a), vec2<bool>(true, arg_1.a), !vec2<bool>(arg_2, arg_2))));
    global1 = array<Struct_2, 17>();
    return _wgslsmith_dot_vec2_i32(-(~u_input.d), u_input.d);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2) -> f32 {
    global1 = array<Struct_2, 17>();
    let var_0 = arg_0.b;
    global0 = array<u32, 32>();
    var var_1 = Struct_1(select(arg_1.c.a, any(vec3<bool>(true, false, true)) & arg_0.e.x, false));
    let var_2 = vec2<u32>(u_input.b, global0[_wgslsmith_index_u32(countOneBits(global0[_wgslsmith_index_u32(~(~(~global0[_wgslsmith_index_u32(57993u, 32u)])), 32u)]), 32u)]);
    return _wgslsmith_f_op_f32(-1033f * _wgslsmith_f_op_f32(ceil(arg_0.a)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = false;
    var var_1 = vec2<bool>(all(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, true, false)))), ~_wgslsmith_mod_u32(~global0[_wgslsmith_index_u32(u_input.b, 32u)], ~4294967295u) < u_input.a.x);
    var var_2 = -496f;
    let var_3 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -774f))))));
    var_1 = vec2<bool>(all(vec3<bool>(all(select(vec3<bool>(var_1.x, var_1.x, var_1.x), vec3<bool>(false, false, true), false)), any(vec4<bool>(var_1.x, var_1.x, false, var_1.x)), any(vec2<bool>(true, true)))), -u_input.c >= (16634i ^ firstTrailingBit(-u_input.d.x)));
    var_0 = all(!vec4<bool>(var_1.x, !var_1.x, var_1.x, false)) & any(!vec3<bool>(var_1.x, false | var_1.x, var_1.x && false));
    var_2 = _wgslsmith_f_op_f32(func_4(Struct_2(var_3, select(~0i, func_1(vec2<f32>(var_3, -1610f), Struct_1(false), false), var_1.x) << (~global0[_wgslsmith_index_u32(0u, 32u)] % 32u), Struct_1(true), ~u_input.c, !(!vec4<bool>(var_1.x, true, true, true))), global1[_wgslsmith_index_u32(4294967295u, 17u)]));
    var var_4 = countOneBits(global0[_wgslsmith_index_u32(1u, 32u)]);
    var var_5 = _wgslsmith_mult_vec4_i32(_wgslsmith_mult_vec4_i32(abs(vec4<i32>(u_input.d.x, -2147483647i, _wgslsmith_sub_i32(u_input.d.x, u_input.c), _wgslsmith_dot_vec2_i32(u_input.d, u_input.d))), reverseBits(vec4<i32>(_wgslsmith_sub_i32(u_input.c, u_input.d.x), countOneBits(0i), countOneBits(-59101i), select(0i, u_input.d.x, var_1.x)))), max(min(firstTrailingBit(firstTrailingBit(vec4<i32>(u_input.d.x, -2749i, -2147483647i, u_input.c))), _wgslsmith_add_vec4_i32(vec4<i32>(1i, u_input.c, u_input.c, u_input.d.x) << (vec4<u32>(66722u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 32u)], 32u)], 15077u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 32u)], 32u)]) % vec4<u32>(32u)), vec4<i32>(8307i, u_input.d.x, u_input.c, -2147483647i) ^ vec4<i32>(43935i, -1i, -33896i, u_input.d.x))), -(~(~vec4<i32>(u_input.d.x, 1i, u_input.d.x, 20742i)))));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(min(var_5.zy | min(var_5.xx, vec2<i32>(u_input.d.x, -1i)), ~vec2<i32>(6035i, -2498i) & u_input.d)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(140f, -651f, 136f) - vec3<f32>(1318f, _wgslsmith_f_op_f32(min(var_3, var_3)), _wgslsmith_f_op_f32(var_3 - var_3))) * vec3<f32>(-173f, _wgslsmith_f_op_f32(exp2(var_3)), -383f)), ~_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, min(u_input.a.x, global0[_wgslsmith_index_u32(0u, 32u)])), 32u)], firstTrailingBit(~0u)), firstLeadingBit(_wgslsmith_mult_vec4_u32(_wgslsmith_clamp_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, u_input.b, 23533u, 1113u), vec4<u32>(0u, 0u, u_input.b, 4294967295u)), ~vec4<u32>(31241u, u_input.a.x, global0[_wgslsmith_index_u32(4294967295u, 32u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b, 32u)], 32u)]), ~vec4<u32>(37067u, u_input.b, 1u, 29294u)), ~vec4<u32>(u_input.b, 1u, global0[_wgslsmith_index_u32(0u, 32u)], global0[_wgslsmith_index_u32(87490u, 32u)]))), -778f);
}

