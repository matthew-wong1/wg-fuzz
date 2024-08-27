struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: vec3<bool>,
}

struct Struct_2 {
    a: f32,
    b: vec2<f32>,
    c: f32,
}

struct Struct_3 {
    a: bool,
    b: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 31> = array<i32, 31>(2147483647i, 11206i, i32(-2147483648), -1i, 7308i, 1i, 2147483647i, -55442i, 2147483647i, 1i, -216i, 15514i, -10580i, -13490i, 0i, -18110i, 2147483647i, -4202i, 6783i, -15530i, -36606i, -1i, -1i, 15694i, -17951i, 3660i, -32418i, 2147483647i, 2147483647i, i32(-2147483648), 12879i);

var<private> global1: vec3<u32> = vec3<u32>(77920u, 7244u, 16273u);

var<private> global2: i32;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec3<i32>, arg_1: i32, arg_2: Struct_2) -> bool {
    var var_0 = Struct_3(true, ~_wgslsmith_mod_i32(-2147483647i, abs(countOneBits(-16101i))));
    var_0 = Struct_3(var_0.a, ~(-1i));
    var_0 = Struct_3(var_0.a, arg_1);
    var var_1 = Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(-1141f)))), ~vec2<u32>(~max(u_input.a.x, global1.x), u_input.a.x), vec3<bool>(any(vec2<bool>(false, select(true, var_0.a, var_0.a))), true & all(!vec4<bool>(var_0.a, var_0.a, true, var_0.a)), var_0.a));
    return true;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2) -> bool {
    let var_0 = arg_1;
    var var_1 = select(vec4<bool>(all(!(!vec2<bool>(arg_0.c.x, false))), all(!select(arg_0.c, arg_0.c, arg_0.c.x)), arg_0.c.x && select(arg_0.c.x, all(arg_0.c), false), any(vec2<bool>(all(arg_0.c), all(vec4<bool>(arg_0.c.x, arg_0.c.x, arg_0.c.x, arg_0.c.x))))), !(!(!(!vec4<bool>(true, false, true, arg_0.c.x)))), vec4<bool>(arg_0.c.x, all(select(select(vec4<bool>(false, false, true, false), vec4<bool>(false, arg_0.c.x, false, arg_0.c.x), arg_0.c.x), vec4<bool>(arg_0.c.x, false, false, true), !arg_0.c.x)), all(arg_0.c), any(!select(vec4<bool>(true, true, arg_0.c.x, false), vec4<bool>(arg_0.c.x, false, arg_0.c.x, true), arg_0.c.x))));
    global1 = firstLeadingBit(reverseBits(vec3<u32>(global1.x, ~14568u, _wgslsmith_add_u32(firstLeadingBit(global1.x), ~1u))));
    var var_2 = Struct_3(!(!(!arg_0.c.x)), -2147483647i);
    var var_3 = Struct_2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_1.c))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(arg_1.a, 602f)), 410f))), true)), arg_1.b, _wgslsmith_f_op_f32(-655f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1052f)) + arg_0.a)));
    return global0[_wgslsmith_index_u32(~global1.x, 31u)] <= 24240i;
}

fn func_2(arg_0: f32) -> vec3<u32> {
    var var_0 = func_4(Struct_1(-691f, ~vec2<u32>(global1.x, 1u), vec3<bool>(true, func_3(_wgslsmith_mod_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(4294967295u, 31u)], 0i, global0[_wgslsmith_index_u32(8253u, 31u)]), vec3<i32>(global0[_wgslsmith_index_u32(0u, 31u)], -8680i, global0[_wgslsmith_index_u32(0u, 31u)])), 1i << (global1.x % 32u), Struct_2(397f, vec2<f32>(arg_0, 1605f), -1468f)), func_3(reverseBits(vec3<i32>(-2147483647i, global0[_wgslsmith_index_u32(global1.x, 31u)], global0[_wgslsmith_index_u32(150248u, 31u)])), -global0[_wgslsmith_index_u32(15334u, 31u)], Struct_2(arg_0, vec2<f32>(1348f, arg_0), 787f)))), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1168f)))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(arg_0, -1016f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, arg_0) + vec2<f32>(-463f, 129f))))), _wgslsmith_f_op_f32(-arg_0)));
    let var_1 = Struct_3(!(max(-19160i, 41723i) > _wgslsmith_add_i32(-2147483647i, _wgslsmith_add_i32(global0[_wgslsmith_index_u32(101878u, 31u)], global0[_wgslsmith_index_u32(4294967295u, 31u)]))), min(min(firstLeadingBit(~(-1i)), -2147483647i), -3285i));
    var_0 = var_1.a;
    global2 = -67082i;
    var var_2 = Struct_3(true, ~countOneBits(-2147483647i));
    return vec3<u32>(~(countOneBits(4227u) >> (select(_wgslsmith_sub_u32(20784u, 1u), ~global1.x, func_4(Struct_1(arg_0, vec2<u32>(u_input.a.x, global1.x), vec3<bool>(true, var_1.a, false)), Struct_2(arg_0, vec2<f32>(arg_0, 254f), 224f))) % 32u)), 0u, 30813u);
}

fn func_1(arg_0: vec4<bool>) -> vec4<i32> {
    global0 = array<i32, 31>();
    global1 = min(func_2(369f), ~(firstLeadingBit(func_2(-1065f)) >> (_wgslsmith_sub_vec3_u32(vec3<u32>(global1.x, u_input.a.x, 1u) << (vec3<u32>(global1.x, global1.x, global1.x) % vec3<u32>(32u)), firstTrailingBit(vec3<u32>(34830u, u_input.a.x, 46770u))) % vec3<u32>(32u))));
    global0 = array<i32, 31>();
    let var_0 = Struct_2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(606f, 814f)))) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-105f * -1000f)))))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-165f, 457f), vec2<f32>(1f, 1f), vec2<bool>(arg_0.x, arg_0.x))))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1155f - 1000f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(282f, -831f, true)) * _wgslsmith_f_op_f32(552f * -1063f)))))));
    let var_1 = Struct_2(-298f, var_0.b, var_0.b.x);
    return vec4<i32>(_wgslsmith_sub_i32(~(-global0[_wgslsmith_index_u32(global1.x, 31u)]), 0i) ^ global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(~0u, ~_wgslsmith_mult_u32(0u, 39344u)), 31u)], ~(~abs(global0[_wgslsmith_index_u32(1u, 31u)])), global0[_wgslsmith_index_u32(abs(min(u_input.a.x, u_input.a.x)), 31u)], _wgslsmith_clamp_i32(-global0[_wgslsmith_index_u32(~(~global1.x), 31u)], global0[_wgslsmith_index_u32(global1.x, 31u)], i32(-1i) * -firstLeadingBit(29704i)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 31>();
    let var_0 = reverseBits(func_1(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true)));
    var var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(131f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-274f + -1276f)), _wgslsmith_f_op_f32(ceil(652f)), false)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), false));
    let var_2 = ~reverseBits(var_0.wx);
    let var_3 = u_input.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(var_0);
}

