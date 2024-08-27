struct Struct_1 {
    a: bool,
    b: u32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 26085i;

var<private> global1: f32 = -1000f;

var<private> global2: Struct_2;

var<private> global3: Struct_2 = Struct_2(vec3<f32>(-1087f, 1986f, -784f), Struct_1(false, 4294967295u));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> f32 {
    let var_0 = vec3<u32>(~68439u, global2.b.b, 13190u);
    var var_1 = vec3<bool>(global2.b.a, false, global3.b.a);
    var var_2 = -1i;
    let var_3 = Struct_2(global3.a, Struct_1(global3.b.a, max(9797u, ~(global2.b.b ^ global2.b.b))));
    var var_4 = _wgslsmith_mult_u32(~(~min(global3.b.b, 4294967295u)), max(global3.b.b, ~firstLeadingBit(firstLeadingBit(var_0.x))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.a.x) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(439f)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global2.a.x)) * 1619f)));
}

fn func_2() -> bool {
    let var_0 = global3.b.a;
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-620f, -644f, global2.a.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(global2.a.x, -106f) * _wgslsmith_f_op_f32(select(-803f, global3.a.x, true)))) * vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(463f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-401f, global2.a.x) + 495f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_3()), 2169f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(-1889f, 2306f)), _wgslsmith_f_op_f32(f32(-1f) * -852f))))));
    let var_2 = _wgslsmith_clamp_vec2_i32(countOneBits(u_input.b.xw), select(vec2<i32>(u_input.b.x & u_input.b.x, -41015i), u_input.b.yx, !any(select(vec4<bool>(false, global2.b.a, false, false), vec4<bool>(false, global3.b.a, global3.b.a, true), global2.b.a))), vec2<i32>(-min(_wgslsmith_dot_vec3_i32(vec3<i32>(-22466i, u_input.a, 0i), u_input.b.xxy), u_input.a), _wgslsmith_mult_i32(countOneBits(0i >> (global2.b.b % 32u)), _wgslsmith_add_i32(-u_input.a, abs(u_input.a)))));
    var var_3 = vec3<bool>(!(firstLeadingBit(i32(-1i) * -129665i) >= _wgslsmith_mod_i32(var_2.x ^ u_input.b.x, u_input.a)), global3.b.a, (42582i < u_input.b.x) & any(select(vec2<bool>(global3.b.a, true), select(vec2<bool>(global2.b.a, false), vec2<bool>(global2.b.a, global2.b.a), false), any(vec2<bool>(false, global2.b.a)))));
    global0 = _wgslsmith_dot_vec3_i32(u_input.b.www & (vec3<i32>(-1i) * -_wgslsmith_mod_vec3_i32(u_input.b.zxx, vec3<i32>(var_2.x, 2147483647i, -1i))), firstTrailingBit(u_input.b.zwy));
    return var_2.x > abs(_wgslsmith_mod_i32(firstLeadingBit(firstTrailingBit(u_input.b.x)), 70703i));
}

fn func_4(arg_0: bool, arg_1: Struct_2, arg_2: u32) -> vec3<f32> {
    let var_0 = select(vec4<bool>(global3.a.x < global3.a.x, true && arg_0, true, !(-413f < _wgslsmith_f_op_f32(step(global3.a.x, -942f)))), !vec4<bool>((1301f > arg_1.a.x) & false, true, true, global3.b.a), false);
    global2 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_1.a.x), -1160f)))), 1080f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1597f + _wgslsmith_f_op_f32(ceil(arg_1.a.x))) - 783f)), global3.b);
    var var_1 = u_input.b.wx;
    let var_2 = Struct_1(all(var_0), _wgslsmith_add_u32(~reverseBits(arg_2), select(1u, abs(arg_1.b.b), false)));
    var var_3 = arg_1;
    return vec3<f32>(102f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1963f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_1.a.x), global2.a.x))) + _wgslsmith_f_op_f32(ceil(-521f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global3.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.a.x + -1454f))), var_0.x)));
}

fn func_1(arg_0: u32, arg_1: vec2<u32>, arg_2: u32, arg_3: i32) -> vec3<f32> {
    let var_0 = u_input.b.ww;
    global2 = Struct_2(global2.a, Struct_1(global2.b.a, 4294967295u));
    let var_1 = -11902i;
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.a.x, global2.a.x, 1329f, global3.a.x) + vec4<f32>(global3.a.x, global2.a.x, -1217f, -972f)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(global3.a.x, 399f, 1684f, global3.a.x), vec4<f32>(global2.a.x, 223f, global2.a.x, 329f))), !vec4<bool>(true, false, global2.b.a, true))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(2233f, 800f, 1000f, global3.a.x))))))));
    let var_3 = u_input.b.xy;
    return _wgslsmith_f_op_vec3_f32(global2.a - _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(func_4(func_2(), Struct_2(vec3<f32>(global2.a.x, global2.a.x, var_2.x), global2.b), 4294967295u)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.a.x, global2.a.x, -189f)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(global2.a, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(func_1(0u, vec2<u32>(global2.b.b, 4294967295u), 41722u, 2147483647i)))), all(vec2<bool>(true, true)))) - vec3<f32>(_wgslsmith_f_op_vec3_f32(func_4(!global2.b.a, Struct_2(vec3<f32>(-1010f, global3.a.x, global3.a.x), Struct_1(false, 63754u)), global3.b.b << (global2.b.b % 32u))).x, _wgslsmith_f_op_vec3_f32(func_4(true, Struct_2(global2.a, Struct_1(true, global3.b.b)), abs(global2.b.b))).x, global2.a.x)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -761f)) > _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global2.a.x))), ~max(global3.b.b, abs(global2.b.b))));
    var var_1 = Struct_1(all(select(vec2<bool>(true | var_0.b.a, false), !vec2<bool>(global2.b.a, true), vec2<bool>(true, var_0.b.a))), global3.b.b & ~(~(~global3.b.b)));
    global0 = 1i;
    var_1 = Struct_1(var_1.a, max(reverseBits(_wgslsmith_dot_vec3_u32(select(vec3<u32>(global3.b.b, 4294967295u, var_1.b), vec3<u32>(17535u, var_1.b, var_0.b.b), false), vec3<u32>(1u, 1u, 1u) | vec3<u32>(var_1.b, 61234u, 1u))), 1u));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(max(u_input.a, _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, u_input.b.x), vec2<i32>(u_input.b.x, u_input.a))) << (var_0.b.b % 32u), -26387i, _wgslsmith_sub_i32(u_input.a, -u_input.a)), 4294967295u, ~abs(min(u_input.a, u_input.a)));
}

