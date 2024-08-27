struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<u32>,
    c: vec2<i32>,
    d: vec4<u32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 15>;

var<private> global1: bool;

var<private> global2: vec2<f32> = vec2<f32>(-953f, -1000f);

var<private> global3: vec2<u32> = vec2<u32>(0u, 0u);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: vec3<bool>, arg_1: u32, arg_2: vec3<i32>, arg_3: i32) -> Struct_1 {
    let var_0 = ~_wgslsmith_sub_u32(~(global3.x >> (0u % 32u)), 52983u) | (_wgslsmith_dot_vec2_u32(~(vec2<u32>(70790u, u_input.a) >> (vec2<u32>(1148u, arg_1) % vec2<u32>(32u))), select(_wgslsmith_clamp_vec2_u32(vec2<u32>(9727u, 3018u), vec2<u32>(u_input.c, 0u), vec2<u32>(arg_1, arg_1)), ~vec2<u32>(15102u, arg_1), vec2<bool>(true, arg_0.x))) & _wgslsmith_div_u32(4294967295u, select(arg_1, _wgslsmith_mod_u32(arg_1, global0[_wgslsmith_index_u32(arg_1, 15u)]), true)));
    global0 = array<u32, 15>();
    var var_1 = firstLeadingBit(vec4<i32>(-2147483647i, 1i, -2147483647i, arg_3 >> (var_0 % 32u)) << ((~vec4<u32>(var_0, global0[_wgslsmith_index_u32(var_0, 15u)], 68480u, global0[_wgslsmith_index_u32(54382u, 15u)]) ^ abs(~vec4<u32>(arg_1, global0[_wgslsmith_index_u32(0u, 15u)], global3.x, 6843u))) % vec4<u32>(32u)));
    global1 = false;
    let var_2 = !vec4<bool>(any(!vec4<bool>(false, arg_0.x, arg_0.x, arg_0.x)) != !arg_0.x, select(arg_0.x, !all(vec4<bool>(arg_0.x, false, arg_0.x, arg_0.x)), !all(arg_0.yz)), all(vec2<bool>(true, true)), false);
    return Struct_1(global2.x);
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> u32 {
    let var_0 = ~(~vec2<u32>(66588u, _wgslsmith_dot_vec4_u32(vec4<u32>(35044u, u_input.c, global3.x, u_input.c), _wgslsmith_add_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(global3.x, 15u)], global0[_wgslsmith_index_u32(1u, 15u)], global3.x, 0u), vec4<u32>(global0[_wgslsmith_index_u32(62749u, 15u)], 4737u, 1u, u_input.c)))));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(sign(-221f)));
    let var_2 = !any(select(vec4<bool>(true, true, 0i >= u_input.b.x, true), vec4<bool>(true, true, any(vec3<bool>(false, false, false)), true), all(vec4<bool>(true, false, false, true)) | true));
    let var_3 = Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(2099f)))));
    global3 = vec2<u32>(12375u, global3.x);
    return 4294967295u;
}

fn func_3(arg_0: Struct_1) -> f32 {
    let var_0 = func_1(vec3<bool>(true, any(vec3<bool>(true, true, true)), true), ~(global0[_wgslsmith_index_u32(~global3.x | 33999u, 15u)] | 11417u), vec3<i32>(select(u_input.b.x, _wgslsmith_div_i32(countOneBits(-2147483647i), 32159i), true), max(abs(~u_input.b.x), firstLeadingBit(_wgslsmith_div_i32(-2147483647i, -42371i))), u_input.b.x), _wgslsmith_div_i32(u_input.b.x, 0i));
    var var_1 = !(u_input.b.x == 2147483647i);
    var var_2 = func_1(vec3<bool>(!(any(vec2<bool>(true, true)) & true), !any(vec3<bool>(true, true, true)), !(select(true, false, true) & any(vec4<bool>(false, false, true, true)))), _wgslsmith_mod_u32(_wgslsmith_div_u32(~4294967295u, abs(global3.x)), 7786u), select(u_input.b, _wgslsmith_clamp_vec3_i32(~vec3<i32>(0i, u_input.b.x, u_input.b.x) ^ ~vec3<i32>(u_input.b.x, -24060i, 0i), abs(vec3<i32>(22169i, u_input.b.x, u_input.b.x)), vec3<i32>(-10781i, firstLeadingBit(20028i), ~u_input.b.x)), all(select(vec2<bool>(false, true), vec2<bool>(false, false), all(vec2<bool>(true, true))))), _wgslsmith_div_i32(u_input.b.x, 28351i));
    let var_3 = _wgslsmith_f_op_f32(var_2.a + 1202f);
    global2 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(trunc(-1022f)), _wgslsmith_f_op_f32(global2.x - var_0.a))))))));
    return -479f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = reverseBits(func_2(func_1(vec3<bool>(all(vec3<bool>(false, true, false)), true, false), 94402u, abs(_wgslsmith_sub_vec3_i32(vec3<i32>(-7769i, u_input.b.x, u_input.b.x), u_input.b)), _wgslsmith_mult_i32(u_input.b.x, 5374i) ^ u_input.b.x), Struct_1(-530f)));
    global2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x)), _wgslsmith_f_op_f32(func_3(Struct_1(_wgslsmith_f_op_f32(global2.x - 930f)))));
    var var_1 = !vec2<bool>(any(select(vec2<bool>(false, true), vec2<bool>(true, true), true)), true);
    let var_2 = !vec4<bool>(true, false, all(vec2<bool>(all(vec3<bool>(false, false, var_1.x)), true)), !select(true, false, !var_1.x));
    global1 = any(var_2);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(max(global2.x, -613f)), _wgslsmith_f_op_f32(step(-934f, global2.x)), _wgslsmith_f_op_f32(global2.x * 1240f)))))), vec2<u32>(_wgslsmith_add_u32(~_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 15u)], 15u)], global0[_wgslsmith_index_u32(47049u, 15u)]), _wgslsmith_clamp_u32(1u, 107196u, global3.x)), u_input.a), vec2<i32>(reverseBits(u_input.b.x), _wgslsmith_clamp_i32(u_input.b.x, ~(~u_input.b.x), countOneBits(2836i))), _wgslsmith_add_vec4_u32(firstTrailingBit(select(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, global0[_wgslsmith_index_u32(4294967295u, 15u)], global3.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global3.x, 15u)], 15u)]), vec4<u32>(4322u, u_input.a, 1u, 0u), vec4<u32>(u_input.a, 20153u, global0[_wgslsmith_index_u32(1u, 15u)], global0[_wgslsmith_index_u32(12327u, 15u)])), ~vec4<u32>(4294967295u, 56077u, global0[_wgslsmith_index_u32(43362u, 15u)], 48785u), true)), vec4<u32>(4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(14984u, 0u) & vec2<u32>(global0[_wgslsmith_index_u32(50135u, 15u)], 44698u), ~vec2<u32>(1u, 19103u)), 4294967295u, 102986u << (~4294967295u % 32u))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(vec4<f32>(global2.x, global2.x, 1042f, global2.x), vec4<f32>(-1439f, 700f, global2.x, 1515f))))))));
}

