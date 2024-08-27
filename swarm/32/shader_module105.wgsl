struct Struct_1 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(36418i, 2147483647i, 1i);

var<private> global1: Struct_1 = Struct_1(vec2<f32>(2151f, 209f));

var<private> global2: array<i32, 16>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: u32, arg_1: vec4<bool>, arg_2: Struct_1, arg_3: Struct_1) -> vec2<i32> {
    global1 = arg_2;
    global0 = firstLeadingBit(firstLeadingBit(u_input.a << (~vec3<u32>(1u, arg_0, 0u) % vec3<u32>(32u)))) | -_wgslsmith_clamp_vec3_i32(_wgslsmith_mod_vec3_i32(u_input.a, vec3<i32>(u_input.a.x, global2[_wgslsmith_index_u32(arg_0, 16u)], global0.x)), countOneBits(select(vec3<i32>(-7651i, -7557i, u_input.b), u_input.a, vec3<bool>(true, arg_1.x, arg_1.x))), ~u_input.a);
    let var_0 = reverseBits(select(vec3<u32>(~firstTrailingBit(48455u), _wgslsmith_clamp_u32(~arg_0, 4294967295u, ~arg_0), ~arg_0), vec3<u32>(arg_0, firstTrailingBit(arg_0), ~firstTrailingBit(arg_0)), arg_0 > arg_0));
    let var_1 = ~(~vec4<i32>(i32(-1i) * -1i, 0i, ~global2[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, var_0.x), 16u)], _wgslsmith_add_i32(_wgslsmith_sub_i32(14632i, u_input.b), 0i)));
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(514f, 830f), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.a.x, 803f) * vec2<f32>(-172f, arg_3.a.x)), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(global1.a.x, 1000f), global1.a)), true))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-202f, arg_2.a.x)), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-arg_3.a)))) * arg_2.a));
    return select(~(-(select(vec2<i32>(global2[_wgslsmith_index_u32(var_0.x, 16u)], global2[_wgslsmith_index_u32(var_0.x, 16u)]), var_1.yx, arg_1.x) ^ countOneBits(vec2<i32>(var_1.x, var_1.x)))), u_input.a.yy, _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(select(vec4<u32>(7200u, 0u, 9658u, arg_0), vec4<u32>(var_0.x, arg_0, 0u, 1u), arg_1), ~vec4<u32>(38116u, 1u, 4952u, 4294967295u)), firstTrailingBit(~vec4<u32>(8219u, 49745u, arg_0, 1u))) >= ~var_0.x);
}

fn func_2() -> Struct_1 {
    var var_0 = vec3<f32>(313f, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.a.x + global1.a.x) + -643f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1295f, -1459f))))), _wgslsmith_f_op_f32(-global1.a.x));
    global1 = Struct_1(global1.a);
    global2 = array<i32, 16>();
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(max(global1.a, vec2<f32>(global1.a.x, -683f)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-399f, -2182f)))))));
    let var_2 = func_3(4294967295u >> (min(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 4294967295u, 11359u), vec4<u32>(41308u, 4294967295u, 4294967295u, 4294967295u)), _wgslsmith_dot_vec3_u32(vec3<u32>(28845u, 0u, 42412u), vec3<u32>(0u, 0u, 1u))) % 32u), !vec4<bool>(-1i <= global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 51714u), vec2<u32>(6531u, 16139u)), 16u)], true, all(select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true))), all(vec4<bool>(true, true, true, true)) | true), Struct_1(_wgslsmith_f_op_vec2_f32(-var_0.xx)), Struct_1(var_1.a));
    return Struct_1(_wgslsmith_f_op_vec2_f32(step(global1.a, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, var_0.x) * vec2<f32>(var_1.a.x, global1.a.x)) * vec2<f32>(var_1.a.x, -1060f)))))));
}

fn func_4(arg_0: vec2<u32>, arg_1: vec4<bool>, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    var var_0 = func_2();
    var var_1 = 1092f;
    var var_2 = 43707i < u_input.b;
    var_0 = arg_3;
    var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-743f + 277f), arg_3.a.x, true));
    return Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global1.a * _wgslsmith_f_op_vec2_f32(var_0.a - vec2<f32>(var_0.a.x, -398f)))) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(func_2().a + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(853f, 1000f), vec2<f32>(-1428f, var_0.a.x), vec2<bool>(arg_1.x, false)))), global1.a, true))));
}

fn func_1(arg_0: bool) -> vec3<i32> {
    var var_0 = func_4(~(~firstTrailingBit(vec2<u32>(1u, 1u))), select(vec4<bool>(true, true, any(select(vec3<bool>(true, true, arg_0), vec3<bool>(arg_0, arg_0, true), arg_0)), arg_0), vec4<bool>(false, true, all(vec2<bool>(arg_0, true)), any(vec2<bool>(true, arg_0))), vec4<bool>(true, -1445f < _wgslsmith_f_op_f32(abs(global1.a.x)), true || arg_0, true)), func_2(), func_2());
    let var_1 = func_4(~abs(_wgslsmith_mult_vec2_u32(countOneBits(vec2<u32>(4294967295u, 0u)), _wgslsmith_add_vec2_u32(vec2<u32>(54885u, 1u), vec2<u32>(43210u, 23181u)))), !select(!select(vec4<bool>(arg_0, arg_0, arg_0, arg_0), vec4<bool>(arg_0, arg_0, arg_0, false), vec4<bool>(arg_0, false, arg_0, true)), vec4<bool>(all(vec3<bool>(arg_0, false, arg_0)), true, false, true), true), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global1.a - _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.x, 864f))))), func_4(vec2<u32>(0u, 1951u), select(!select(vec4<bool>(true, arg_0, arg_0, false), vec4<bool>(false, true, true, true), true), !select(vec4<bool>(true, arg_0, arg_0, arg_0), vec4<bool>(arg_0, arg_0, arg_0, false), vec4<bool>(arg_0, arg_0, true, false)), !select(vec4<bool>(true, arg_0, false, arg_0), vec4<bool>(arg_0, true, arg_0, arg_0), vec4<bool>(arg_0, false, true, arg_0))), func_4(vec2<u32>(3972u, ~0u), vec4<bool>(false, true, arg_0, arg_0), func_4(_wgslsmith_clamp_vec2_u32(vec2<u32>(137865u, 4294967295u), vec2<u32>(3288u, 0u), vec2<u32>(73420u, 41008u)), select(vec4<bool>(arg_0, false, true, true), vec4<bool>(arg_0, false, arg_0, false), arg_0), Struct_1(vec2<f32>(-667f, var_0.a.x)), Struct_1(var_0.a)), func_2()), func_2()));
    global1 = func_2();
    let var_2 = var_1;
    global2 = array<i32, 16>();
    return vec3<i32>(_wgslsmith_sub_i32(1i, select(-37452i, global2[_wgslsmith_index_u32(~abs(1u), 16u)], 10395i >= ~global0.x)), -2147483647i, -_wgslsmith_mod_i32(~57700i & (global0.x ^ global2[_wgslsmith_index_u32(0u, 16u)]), countOneBits(~global2[_wgslsmith_index_u32(1u, 16u)])));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = min((-u_input.a.yx & _wgslsmith_add_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(global0.x, -1i), vec2<i32>(-1i, global2[_wgslsmith_index_u32(4294967295u, 16u)])), global0.yz)) ^ vec2<i32>(_wgslsmith_dot_vec3_i32(func_1(true), ~vec3<i32>(u_input.a.x, global2[_wgslsmith_index_u32(656u, 16u)], 33912i)), 40862i), vec2<i32>(min(~(-global0.x), global2[_wgslsmith_index_u32(~1u, 16u)]), ~(-2147483647i | u_input.a.x)));
    var_0 = -select(~(~select(u_input.a.zy, vec2<i32>(-2147483647i, global0.x), false)), firstTrailingBit(select(global0.zy, _wgslsmith_mod_vec2_i32(u_input.a.yy, vec2<i32>(u_input.a.x, global0.x)), vec2<bool>(true, true))), vec2<bool>(select(false, true, true) != true, true));
    var var_1 = func_2();
    let var_2 = !(!(!all(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), false))));
    let var_3 = global1.a;
    let var_4 = Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(1072f, 1000f)), var_3.x)), var_3.x)));
    var var_5 = _wgslsmith_div_vec2_u32(~vec2<u32>(~max(65u, 4294967295u), ~firstTrailingBit(1u)), ~(~(~vec2<u32>(18760u, 1u))));
    var var_6 = _wgslsmith_mod_i32(countOneBits(_wgslsmith_mod_i32(global0.x, countOneBits(abs(27581i)))), global2[_wgslsmith_index_u32(~(reverseBits(var_5.x) << (~1u % 32u)), 16u)] >> (var_5.x % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(vec3<u32>(var_5.x, min(~51075u, ~18482u), 4294967295u)), ~countOneBits(~firstTrailingBit(vec3<u32>(var_5.x, 0u, var_5.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_1.a.x, 473f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(-var_1.a.x)))));
}

