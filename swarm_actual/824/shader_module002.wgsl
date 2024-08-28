struct Struct_1 {
    a: vec4<u32>,
    b: i32,
    c: i32,
    d: vec2<u32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: u32,
    d: bool,
}

struct Struct_3 {
    a: i32,
    b: f32,
    c: vec3<bool>,
    d: u32,
    e: Struct_1,
}

struct Struct_4 {
    a: vec2<u32>,
    b: vec3<f32>,
    c: bool,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<vec2<u32>, 25>;

var<private> global2: array<u32, 16> = array<u32, 16>(4294967295u, 4294967295u, 4294967295u, 19526u, 4294967295u, 55480u, 0u, 27098u, 38080u, 0u, 0u, 0u, 2978u, 15435u, 52536u, 6561u);

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_4) -> bool {
    var var_0 = Struct_4(arg_0.a, _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.a, global0.a, global0.a) * arg_0.b)))), !global0.d, vec4<i32>(min(1i, (global0.b.b << (arg_0.a.x % 32u)) | 29622i), arg_0.d.x, abs(global0.b.c) >> (4294967295u % 32u), global0.b.b));
    let var_1 = vec2<bool>(var_0.c, var_0.c);
    let var_2 = ~global0.b.a | _wgslsmith_clamp_vec4_u32(vec4<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(global0.b.a, vec4<u32>(1u, 9220u, 2325u, var_0.a.x)), global0.b.a), ~(~15091u), ~(~arg_0.a.x), 0u), global0.b.a, vec4<u32>(global0.c, _wgslsmith_add_u32(u_input.a.x, ~global2[_wgslsmith_index_u32(global0.b.a.x, 16u)]), _wgslsmith_dot_vec2_u32(global0.b.a.zx, select(u_input.a.xy, vec2<u32>(5676u, arg_0.a.x), vec2<bool>(true, global0.d))), 0u));
    var var_3 = !vec4<bool>(false, !all(!vec2<bool>(true, global0.d)), !(21603u > var_2.x), false);
    let var_4 = Struct_1(~vec4<u32>(~global2[_wgslsmith_index_u32(8721u, 16u)] ^ (global2[_wgslsmith_index_u32(0u, 16u)] | arg_0.a.x), max(_wgslsmith_add_u32(arg_0.a.x, 1u), var_0.a.x), _wgslsmith_add_u32(abs(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(9917u, 16u)], 16u)]), global0.c), global2[_wgslsmith_index_u32(~global0.c, 16u)]), _wgslsmith_mod_i32(_wgslsmith_sub_i32(_wgslsmith_clamp_i32(-137331i, firstLeadingBit(global0.b.b), var_0.d.x), i32(-1i) * -33729i), 44620i), -global0.b.b, vec2<u32>(70490u, _wgslsmith_dot_vec3_u32(u_input.a, ~var_2.wwx)) | firstTrailingBit(vec2<u32>(73220u, 55932u)));
    return arg_0.d.x < countOneBits(2147483647i);
}

fn func_2(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: bool, arg_3: vec4<u32>) -> bool {
    let var_0 = vec2<bool>(!((arg_2 == true) & arg_2), any(vec2<bool>(!arg_2, true)));
    let var_1 = select(!vec4<bool>(var_0.x && any(vec4<bool>(true, true, true, var_0.x)), false, arg_2, global0.d), select(vec4<bool>(any(var_0), !(-1000f > global0.a), true, !func_3(Struct_4(global1[_wgslsmith_index_u32(29590u, 25u)], vec3<f32>(global0.a, 304f, 442f), arg_2, vec4<i32>(arg_0.c, 3553i, arg_0.b, 0i)))), select(!(!vec4<bool>(global0.d, global0.d, arg_2, true)), select(select(vec4<bool>(global0.d, var_0.x, global0.d, var_0.x), vec4<bool>(arg_2, true, true, arg_2), vec4<bool>(arg_2, var_0.x, false, false)), select(vec4<bool>(var_0.x, true, arg_2, var_0.x), vec4<bool>(true, var_0.x, global0.d, var_0.x), false), var_0.x), vec4<bool>(select(var_0.x, false, global0.d), true, all(vec3<bool>(var_0.x, var_0.x, false)), true)), vec4<bool>(true, any(select(vec4<bool>(global0.d, arg_2, false, var_0.x), vec4<bool>(true, var_0.x, true, false), true)), (i32(-1i) * -22040i) < (arg_0.b >> (0u % 32u)), 19909i >= -global0.b.b)), true);
    var var_2 = !any(var_1.zyy);
    global1 = array<vec2<u32>, 25>();
    var_2 = any(!var_1.yxw);
    return all(var_1.yzy);
}

fn func_1(arg_0: u32, arg_1: vec2<bool>, arg_2: i32) -> i32 {
    let var_0 = !(!func_2(global0.b, _wgslsmith_div_vec2_u32(max(global1[_wgslsmith_index_u32(global0.b.a.x, 25u)], vec2<u32>(global0.b.a.x, 1u)), ~global0.b.a.xx), global0.d, ~(~vec4<u32>(66134u, arg_0, 1u, 13765u))));
    global0 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1000f)) - 1410f), Struct_1(~_wgslsmith_mod_vec4_u32(vec4<u32>(1u, 1u, u_input.a.x, 1u), abs(global0.b.a)), arg_2, 20424i, vec2<u32>(~u_input.a.x | 1u, reverseBits(u_input.a.x | global2[_wgslsmith_index_u32(global0.c, 16u)]))), ~82404u, !func_2(Struct_1(global0.b.a, ~global0.b.b, ~arg_2, u_input.a.xy ^ global0.b.a.ww), global0.b.a.yw, ~(-1i) == min(global0.b.c, 31806i), vec4<u32>(global0.c, 57608u << (0u % 32u), 6993u, u_input.a.x)));
    global0 = Struct_2(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(1046f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-650f, global0.a, false)) - _wgslsmith_f_op_f32(abs(global0.a)))), _wgslsmith_f_op_f32(min(global0.a, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(global0.a)))))), 149f == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(796f)) * global0.a))), Struct_1(vec4<u32>(u_input.a.x, u_input.a.x, global2[_wgslsmith_index_u32(arg_0, 16u)] | u_input.a.x, _wgslsmith_clamp_u32(1u, 4294967295u, 1u)) & ~vec4<u32>(61906u, 0u, global0.b.a.x, u_input.a.x), -global0.b.c, firstTrailingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, arg_2, arg_2, -23842i), _wgslsmith_clamp_vec4_i32(vec4<i32>(-55772i, -1i, 139i, -46409i), vec4<i32>(-15570i, global0.b.c, global0.b.b, global0.b.c), vec4<i32>(-16585i, -41665i, global0.b.c, 0i)))), select(vec2<u32>(abs(arg_0), _wgslsmith_mult_u32(u_input.a.x, arg_0)), ~global0.b.a.yy << (~vec2<u32>(1u, 65859u) % vec2<u32>(32u)), arg_1.x | true)), global2[_wgslsmith_index_u32(9551u, 16u)] | ~(arg_0 & 1u), _wgslsmith_f_op_f32(global0.a * 834f) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1625f * global0.a)) * _wgslsmith_f_op_f32(f32(-1f) * -121f)));
    var var_1 = global0.a;
    let var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, 357f) - vec2<f32>(896f, -390f)), vec2<f32>(global0.a, -336f), vec2<bool>(global0.d, global0.d)))))), vec2<f32>(global0.a, 804f));
    return i32(-1i) * -2147483647i;
}

fn func_4(arg_0: i32, arg_1: vec3<i32>, arg_2: Struct_2) -> Struct_2 {
    global0 = Struct_2(arg_2.a, arg_2.b, arg_2.b.a.x, true);
    global2 = array<u32, 16>();
    var var_0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.a, global0.a) - vec2<f32>(304f, global0.a)) - _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1789f, 226f)))))), vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global0.a), _wgslsmith_f_op_f32(arg_2.a - _wgslsmith_f_op_f32(round(206f))))), arg_2.a), func_2(Struct_1(arg_2.b.a, _wgslsmith_mod_i32(firstLeadingBit(53672i), arg_1.x ^ arg_0), _wgslsmith_sub_i32(~arg_2.b.c, 1i), global0.b.a.yw | firstTrailingBit(global1[_wgslsmith_index_u32(27306u, 25u)])), _wgslsmith_clamp_vec2_u32(_wgslsmith_clamp_vec2_u32(global1[_wgslsmith_index_u32(arg_2.b.a.x, 25u)], global1[_wgslsmith_index_u32(4294967295u, 25u)], global0.b.d), arg_2.b.d, vec2<u32>(13133u, global2[_wgslsmith_index_u32(1u, 16u)])) | arg_2.b.a.yy, any(vec4<bool>(true, true, all(vec2<bool>(true, false)), false)), vec4<u32>(firstTrailingBit(48617u), arg_2.b.d.x, 9372u, u_input.a.x))));
    return Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -512f), _wgslsmith_div_f32(var_0.x, arg_2.a)))), arg_2.b, _wgslsmith_clamp_u32(4294967295u, _wgslsmith_sub_u32(arg_2.b.d.x, _wgslsmith_sub_u32(u_input.a.x, ~global0.c)), max(1u & reverseBits(global2[_wgslsmith_index_u32(12880u, 16u)]), 1u)), !(u_input.a.x >= select(30289u, global0.c, arg_2.d)) | select(all(select(vec3<bool>(global0.d, true, true), vec3<bool>(arg_2.d, true, arg_2.d), false)), true, !(!arg_2.d)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!any(select(vec4<bool>(global0.d, false, global0.d, false), !vec4<bool>(global0.d, true, true, false), select(vec4<bool>(true, false, global0.d, global0.d), vec4<bool>(global0.d, true, true, false), global0.d))));
    let var_1 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1049f, global0.a, 622f)), vec3<f32>(global0.a, 1000f, global0.a), !vec3<bool>(true, global0.d, var_0)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(global0.a, 1306f, global0.a), vec3<f32>(185f, global0.a, -1423f))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-101f, -1981f, -609f))))) * vec3<f32>(global0.a, -1246f, _wgslsmith_f_op_f32(1100f - global0.a))))));
    var var_2 = vec2<bool>(global0.d, global0.d);
    let var_3 = func_4(-59535i >> (_wgslsmith_dot_vec3_u32(~select(u_input.a, u_input.a, true), vec3<u32>(~u_input.a.x, select(1u, global0.c, false), u_input.a.x)) % 32u), -_wgslsmith_mod_vec3_i32(vec3<i32>(~50202i, func_1(5022u, vec2<bool>(var_0, true), -2147483647i), _wgslsmith_dot_vec2_i32(vec2<i32>(global0.b.c, global0.b.b), vec2<i32>(-1i, 54510i))), vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(global0.b.b, global0.b.b, -27148i, 1i), vec4<i32>(global0.b.c, global0.b.b, 0i, global0.b.b)), ~(-28497i), 0i)), Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1614f * 475f) - _wgslsmith_f_op_f32(exp2(global0.a))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1151f - -1200f))), Struct_1(~global0.b.a, global0.b.c, 2147483647i, min(u_input.a.zz, ~vec2<u32>(global0.c, global0.b.a.x))), 0u, true));
    let var_4 = _wgslsmith_mod_vec4_u32(vec4<u32>(var_3.c, ~func_4(-45080i, ~vec3<i32>(-73574i, var_3.b.b, var_3.b.b), func_4(var_3.b.b, vec3<i32>(global0.b.c, var_3.b.c, -31680i), var_3)).c, global0.c, global0.b.d.x), vec4<u32>(var_3.b.a.x, max(var_3.b.a.x, ~countOneBits(var_3.c)), ~var_3.c, ~global2[_wgslsmith_index_u32(reverseBits(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(var_3.c, 16u)], 16u)] | var_3.b.d.x), 16u)]));
    var var_5 = vec2<u32>(max(global2[_wgslsmith_index_u32(4294967295u, 16u)], min(20748u, ~1u)), ~(~select(u_input.a.x, var_3.c, var_3.d))) | vec2<u32>(~(~_wgslsmith_add_u32(20942u, var_3.b.d.x)), _wgslsmith_sub_u32(_wgslsmith_mod_u32(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(var_3.b.a.xwy, global0.b.a.wxz), 16u)], ~0u), global2[_wgslsmith_index_u32(1u, 16u)]));
    var_5 = _wgslsmith_mult_vec2_u32(u_input.a.yz, ~(var_4.xw & reverseBits(vec2<u32>(global2[_wgslsmith_index_u32(u_input.a.x, 16u)], 1u)))) << (func_4(_wgslsmith_clamp_i32(global0.b.c, -77758i | ~var_3.b.b, -_wgslsmith_mult_i32(global0.b.b, 7127i)), min(vec3<i32>(0i, var_3.b.b, 55580i), select(vec3<i32>(global0.b.c, -2147483647i, 7127i) | vec3<i32>(-35786i, 30920i, var_3.b.c), _wgslsmith_mult_vec3_i32(vec3<i32>(global0.b.c, global0.b.b, 1i), vec3<i32>(global0.b.b, -1i, global0.b.b)), select(vec3<bool>(var_3.d, true, global0.d), vec3<bool>(var_2.x, var_0, false), global0.d))), Struct_2(283f, func_4(-var_3.b.c, select(vec3<i32>(-2147483647i, var_3.b.c, var_3.b.c), vec3<i32>(-2147483647i, 2147483647i, 2147483647i), false), func_4(var_3.b.c, vec3<i32>(global0.b.c, -27471i, var_3.b.c), var_3)).b, 22453u, var_0)).b.d % vec2<u32>(32u));
    var var_6 = vec3<u32>(global0.c, firstTrailingBit(1u), 0u);
    let var_7 = var_3.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(var_1.zz * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-387f, var_3.a))), _wgslsmith_f_op_vec2_f32(var_1.zy * var_1.yx))))), firstLeadingBit(vec4<u32>(1u, 1u, _wgslsmith_dot_vec3_u32(~var_3.b.a.wwz, _wgslsmith_clamp_vec3_u32(vec3<u32>(var_5.x, 4294967295u, var_3.c), vec3<u32>(0u, 17160u, var_7.d.x), vec3<u32>(4294967295u, 1u, 107309u))), var_3.b.a.x)));
}

