struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(16029i, i32(-2147483648), -42437i, -29126i);

var<private> global1: array<bool, 1>;

var<private> global2: Struct_1 = Struct_1(28467u);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_2() -> u32 {
    global1 = array<bool, 1>();
    return _wgslsmith_add_u32(global2.a, 4294967295u);
}

fn func_1() -> Struct_1 {
    global0 = u_input.a;
    var var_0 = global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~global2.a, global2.a, func_2()), 1u)];
    return Struct_1(~global2.a);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<f32>, arg_3: vec2<u32>) -> Struct_1 {
    global0 = vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(-global0.x, firstTrailingBit(u_input.a.x)), -9444i), u_input.a.wx), global0.x, _wgslsmith_dot_vec2_i32(-select(u_input.a.zw, -vec2<i32>(-65851i, global0.x), any(vec2<bool>(global1[_wgslsmith_index_u32(0u, 1u)], false))), vec2<i32>(select(6032i, -1i, global1[_wgslsmith_index_u32(arg_3.x, 1u)]) << (_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.a, arg_1.a, 90354u), vec3<u32>(1u, 95873u, arg_0.a)) % 32u), u_input.a.x & countOneBits(-2147483647i))), _wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(u_input.a.x << (arg_0.a % 32u), 36389i, _wgslsmith_dot_vec2_i32(u_input.a.ww, vec2<i32>(u_input.a.x, 2147483647i)), 1i)), u_input.a));
    global0 = -(vec4<i32>(_wgslsmith_add_i32(-2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(1i, -1i), vec2<i32>(global0.x, global0.x))), _wgslsmith_div_i32(1i, ~(-11438i)), -select(global0.x, -20246i, global1[_wgslsmith_index_u32(51257u, 1u)]), global0.x) ^ vec4<i32>(_wgslsmith_dot_vec2_i32(firstTrailingBit(u_input.a.ww), u_input.a.yx), firstTrailingBit(_wgslsmith_sub_i32(-6168i, 7851i)), 58015i & _wgslsmith_dot_vec3_i32(global0.wyx, u_input.a.xxz), min(u_input.a.x << (4294967295u % 32u), -13198i)));
    var var_0 = func_1();
    global0 = abs(select(u_input.a, ~(vec4<i32>(41595i, global0.x, 47124i, -2147483647i) & vec4<i32>(-2147483647i, -1i, 1i, 0i)) ^ _wgslsmith_mult_vec4_i32(reverseBits(u_input.a), select(u_input.a, vec4<i32>(u_input.a.x, 2147483647i, -1i, 16935i), vec4<bool>(true, global1[_wgslsmith_index_u32(29979u, 1u)], global1[_wgslsmith_index_u32(31073u, 1u)], global1[_wgslsmith_index_u32(47099u, 1u)]))), vec4<bool>(1u != var_0.a, _wgslsmith_f_op_f32(220f + arg_2.x) >= _wgslsmith_f_op_f32(sign(337f)), !global1[_wgslsmith_index_u32(37747u, 1u)], !any(vec2<bool>(true, false)))));
    var var_1 = arg_0;
    return arg_1;
}

fn func_4(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: bool) -> vec4<bool> {
    global2 = func_3(arg_0, Struct_1(~(~abs(arg_0.a))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(sign(1708f)), _wgslsmith_f_op_f32(-1275f * -376f)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1176f, 913f), vec2<f32>(-848f, -1410f))))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(1617f, 1376f) - vec2<f32>(1000f, 217f)))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -613f), _wgslsmith_f_op_f32(f32(-1f) * -1095f)), all(vec4<bool>(false, true, true, arg_2))))), vec2<u32>(min(func_3(func_3(arg_0, arg_0, vec2<f32>(1065f, 1030f), vec2<u32>(arg_0.a, 0u)), Struct_1(21663u), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-870f, -919f)), vec2<u32>(global2.a, 18034u)).a, max(17747u, ~arg_0.a)), arg_0.a));
    var var_0 = Struct_1(func_2());
    global2 = arg_0;
    let var_1 = vec2<bool>(!any(select(vec3<bool>(global1[_wgslsmith_index_u32(55589u, 1u)], global1[_wgslsmith_index_u32(arg_0.a, 1u)], arg_2), !vec3<bool>(false, global1[_wgslsmith_index_u32(var_0.a, 1u)], false), !global1[_wgslsmith_index_u32(6063u, 1u)])), any(vec3<bool>(true, global1[_wgslsmith_index_u32(~1u, 1u)], false)) | any(select(select(vec4<bool>(false, arg_2, global1[_wgslsmith_index_u32(0u, 1u)], global1[_wgslsmith_index_u32(84663u, 1u)]), vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, true)), vec4<bool>(true, global1[_wgslsmith_index_u32(41365u, 1u)], arg_2, false), any(vec2<bool>(global1[_wgslsmith_index_u32(0u, 1u)], global1[_wgslsmith_index_u32(4294967295u, 1u)])))));
    var_0 = Struct_1(var_0.a);
    return select(vec4<bool>(arg_2, any(select(select(vec4<bool>(false, global1[_wgslsmith_index_u32(48456u, 1u)], var_1.x, false), vec4<bool>(true, false, arg_2, true), false), select(vec4<bool>(arg_2, var_1.x, true, false), vec4<bool>(false, arg_2, false, false), true), select(vec4<bool>(var_1.x, arg_2, global1[_wgslsmith_index_u32(arg_0.a, 1u)], arg_2), vec4<bool>(arg_2, arg_2, true, arg_2), vec4<bool>(global1[_wgslsmith_index_u32(16286u, 1u)], true, var_1.x, arg_2)))), all(select(select(var_1, vec2<bool>(false, true), vec2<bool>(false, global1[_wgslsmith_index_u32(52808u, 1u)])), select(var_1, vec2<bool>(var_1.x, global1[_wgslsmith_index_u32(arg_0.a, 1u)]), var_1), !var_1)), false), !vec4<bool>(!any(vec3<bool>(true, global1[_wgslsmith_index_u32(4294967295u, 1u)], global1[_wgslsmith_index_u32(global2.a, 1u)])), all(!vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 1u)], true)), false, !arg_2), vec4<bool>(any(!vec3<bool>(false, false, var_1.x)), (_wgslsmith_div_i32(u_input.a.x, arg_1.x) & _wgslsmith_mult_i32(25058i, global0.x)) != (i32(-1i) * -27350i), true | (true != !arg_2), true));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<bool, 1>();
    global0 = vec4<i32>(-u_input.a.x, -2147483647i, ~(~u_input.a.x | 2147483647i), -20641i);
    var var_0 = !func_4(func_3(func_1(), func_1(), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1000f, 189f), vec2<f32>(-950f, 402f))))), vec2<u32>(4294967295u, ~4294967295u)), select(u_input.a.zz, ~vec2<i32>(global0.x, global0.x), select(select(vec2<bool>(true, true), vec2<bool>(global1[_wgslsmith_index_u32(global2.a, 1u)], false), vec2<bool>(global1[_wgslsmith_index_u32(global2.a, 1u)], global1[_wgslsmith_index_u32(global2.a, 1u)])), vec2<bool>(global1[_wgslsmith_index_u32(12854u, 1u)], global1[_wgslsmith_index_u32(global2.a, 1u)]), !vec2<bool>(global1[_wgslsmith_index_u32(global2.a, 1u)], true))), true != all(select(vec2<bool>(global1[_wgslsmith_index_u32(global2.a, 1u)], global1[_wgslsmith_index_u32(global2.a, 1u)]), vec2<bool>(false, true), vec2<bool>(global1[_wgslsmith_index_u32(global2.a, 1u)], false))));
    global2 = Struct_1(global2.a);
    let var_1 = all(select(vec3<bool>(global1[_wgslsmith_index_u32(83731u ^ firstTrailingBit(29267u), 1u)], !(true || var_0.x), any(!var_0.zzx)), var_0.wxy, vec3<bool>(select(var_0.x, global1[_wgslsmith_index_u32(_wgslsmith_div_u32(global2.a, 33638u), 1u)], global1[_wgslsmith_index_u32(global2.a, 1u)] | false), all(vec4<bool>(global1[_wgslsmith_index_u32(47657u, 1u)], var_0.x, global1[_wgslsmith_index_u32(1u, 1u)], global1[_wgslsmith_index_u32(1u, 1u)])), any(!vec2<bool>(global1[_wgslsmith_index_u32(global2.a, 1u)], false)))));
    let var_2 = reverseBits(vec4<i32>(_wgslsmith_mod_i32(u_input.a.x, max(_wgslsmith_mult_i32(u_input.a.x, u_input.a.x), max(-24852i, u_input.a.x))), 14273i, ~_wgslsmith_dot_vec2_i32(u_input.a.yy, global0.ww), ~17673i));
    var var_3 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec2_u32(abs(vec2<u32>(34527u, var_3.a)) >> (~vec2<u32>(var_3.a, global2.a) % vec2<u32>(32u)), _wgslsmith_mod_vec2_u32(vec2<u32>(~var_3.a, global2.a), max(~vec2<u32>(4294967295u, 1u), ~vec2<u32>(59945u, global2.a)))));
}

