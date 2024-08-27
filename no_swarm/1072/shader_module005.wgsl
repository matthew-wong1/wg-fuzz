struct Struct_1 {
    a: vec4<f32>,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: vec2<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 13> = array<bool, 13>(true, false, false, true, true, false, false, false, false, true, false, true, true);

var<private> global1: Struct_1 = Struct_1(vec4<f32>(1000f, 1310f, 464f, 757f), vec3<u32>(0u, 4294967295u, 1u));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1(arg_0: vec2<bool>, arg_1: vec4<bool>, arg_2: Struct_1) -> bool {
    return true;
}

fn func_3(arg_0: vec3<u32>) -> u32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(global1.a, _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.a.x, global1.a.x, _wgslsmith_f_op_f32(1000f * 385f), _wgslsmith_div_f32(global1.a.x, -117f)) * global1.a), select(select(vec4<bool>(global0[_wgslsmith_index_u32(arg_0.x, 13u)], false, global0[_wgslsmith_index_u32(global1.b.x, 13u)], false), !vec4<bool>(global0[_wgslsmith_index_u32(global1.b.x, 13u)], global0[_wgslsmith_index_u32(arg_0.x, 13u)], true, global0[_wgslsmith_index_u32(arg_0.x, 13u)]), true), select(vec4<bool>(global0[_wgslsmith_index_u32(arg_0.x, 13u)], false, global0[_wgslsmith_index_u32(35376u, 13u)], false), vec4<bool>(global0[_wgslsmith_index_u32(arg_0.x, 13u)], false, global0[_wgslsmith_index_u32(12141u, 13u)], global0[_wgslsmith_index_u32(0u, 13u)]), all(vec2<bool>(false, false))), global0[_wgslsmith_index_u32(1u, 13u)]))));
    var var_1 = var_0.x;
    var_1 = _wgslsmith_f_op_f32(f32(-1f) * -2037f);
    var var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(global1.a)), var_0)), max(min(~(~global1.b), ~abs(vec3<u32>(27070u, 1u, arg_0.x))), vec3<u32>(arg_0.x, arg_0.x, ~145451u << (~global1.b.x % 32u))));
    let var_3 = var_2.a.x;
    return ~_wgslsmith_sub_u32(0u, global1.b.x << (_wgslsmith_mult_u32(var_2.b.x, global1.b.x) % 32u)) >> (~(~_wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(global1.b.x, global1.b.x, 4294967295u)), min(var_2.b, vec3<u32>(arg_0.x, 1u, global1.b.x)))) % 32u);
}

fn func_4(arg_0: u32) -> vec3<bool> {
    global1 = Struct_1(_wgslsmith_f_op_vec4_f32(-global1.a), firstTrailingBit(~(~vec3<u32>(1u, arg_0, 130596u) << (~vec3<u32>(0u, global1.b.x, arg_0) % vec3<u32>(32u)))));
    global0 = array<bool, 13>();
    let var_0 = ~func_3(vec3<u32>(_wgslsmith_dot_vec4_u32(min(vec4<u32>(4294967295u, global1.b.x, 1922u, 44200u), vec4<u32>(global1.b.x, 1841u, global1.b.x, global1.b.x)), vec4<u32>(3822u, arg_0, arg_0, 885u)), arg_0, ~1u));
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(global1.a, global1.a, !(!vec4<bool>(true, global0[_wgslsmith_index_u32(global1.b.x, 13u)], global0[_wgslsmith_index_u32(1u, 13u)], true))))), vec3<u32>(~75816u, ~global1.b.x, firstTrailingBit(arg_0)) & ~vec3<u32>(0u, ~arg_0, global1.b.x));
    global0 = array<bool, 13>();
    return select(select(!vec3<bool>(global0[_wgslsmith_index_u32(var_1.b.x, 13u)] & global0[_wgslsmith_index_u32(var_1.b.x, 13u)], !global0[_wgslsmith_index_u32(global1.b.x, 13u)], global0[_wgslsmith_index_u32(func_3(vec3<u32>(1u, 18502u, arg_0)), 13u)]), select(!select(vec3<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 13u)], false), vec3<bool>(global0[_wgslsmith_index_u32(arg_0, 13u)], true, true), vec3<bool>(true, false, false)), vec3<bool>(false, global0[_wgslsmith_index_u32(global1.b.x, 13u)], false), global0[_wgslsmith_index_u32(var_0 << (_wgslsmith_mod_u32(var_0, arg_0) % 32u), 13u)]), _wgslsmith_f_op_f32(-global1.a.x) < _wgslsmith_div_f32(-1928f, 1086f)), vec3<bool>(true, !global0[_wgslsmith_index_u32(72789u, 13u)], global0[_wgslsmith_index_u32(countOneBits(select(arg_0 >> (3309u % 32u), 32549u, true)), 13u)]), true);
}

fn func_2(arg_0: vec2<i32>, arg_1: f32) -> vec3<u32> {
    var var_0 = true;
    var var_1 = func_4(~func_3(~(vec3<u32>(global1.b.x, 1u, 1u) ^ vec3<u32>(1u, global1.b.x, 36500u))));
    var var_2 = u_input.a.x;
    var_1 = vec3<bool>((_wgslsmith_mod_i32(-20017i, i32(-1i) * -1i) & arg_0.x) > -select(-2147483647i, i32(-1i) * -441i, true), global0[_wgslsmith_index_u32(global1.b.x, 13u)], true);
    var_0 = true;
    return reverseBits(global1.b << (vec3<u32>(abs(_wgslsmith_sub_u32(global1.b.x, 4294967295u)), firstTrailingBit(0u), ~firstTrailingBit(4294967295u)) % vec3<u32>(32u)));
}

fn func_5(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: Struct_1, arg_3: u32) -> StorageBuffer {
    global0 = array<bool, 13>();
    var var_0 = -u_input.a.x;
    let var_1 = arg_2;
    let var_2 = func_1(vec2<bool>(false, false), arg_0, Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.a.x, 201f, var_1.a.x, var_1.a.x) - vec4<f32>(arg_1.a.x, arg_1.a.x, arg_2.a.x, 1844f)), _wgslsmith_f_op_vec4_f32(step(arg_2.a, global1.a)), arg_2.b.x <= 25349u)) * arg_2.a), vec3<u32>(_wgslsmith_mod_u32(var_1.b.x, ~var_1.b.x), arg_3, _wgslsmith_clamp_u32(arg_1.b.x, ~17177u, arg_2.b.x))));
    var_0 = abs(-4985i);
    return StorageBuffer(firstLeadingBit(vec4<u32>(0u, ~(~0u), 0u, ~(~var_1.b.x))), 555f, select(~arg_2.b.xy, ~_wgslsmith_div_vec2_u32(arg_1.b.zx, arg_1.b.yy), arg_0.wx), 0u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<f32>(global1.a.x, _wgslsmith_f_op_f32(1987f * global1.a.x), -599f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-372f + _wgslsmith_f_op_f32(global1.a.x * -1000f)) - 1000f)));
    let x = u_input.a;
    s_output = func_5(select(!vec4<bool>(global0[_wgslsmith_index_u32(31217u, 13u)] == false, global0[_wgslsmith_index_u32(reverseBits(49377u), 13u)], all(vec3<bool>(global0[_wgslsmith_index_u32(global1.b.x, 13u)], global0[_wgslsmith_index_u32(4294967295u, 13u)], global0[_wgslsmith_index_u32(global1.b.x, 13u)])), false), select(vec4<bool>(global1.b.x <= 1u, true, global0[_wgslsmith_index_u32(36117u, 13u)] || global0[_wgslsmith_index_u32(1u, 13u)], all(vec2<bool>(global0[_wgslsmith_index_u32(32866u, 13u)], global0[_wgslsmith_index_u32(22036u, 13u)]))), !vec4<bool>(true, global0[_wgslsmith_index_u32(1u, 13u)], global0[_wgslsmith_index_u32(9360u, 13u)], true), true), select(false, func_1(select(vec2<bool>(true, global0[_wgslsmith_index_u32(0u, 13u)]), vec2<bool>(true, false), true), !vec4<bool>(global0[_wgslsmith_index_u32(33148u, 13u)], global0[_wgslsmith_index_u32(global1.b.x, 13u)], false, global0[_wgslsmith_index_u32(global1.b.x, 13u)]), Struct_1(var_0, vec3<u32>(global1.b.x, global1.b.x, global1.b.x))), any(vec4<bool>(false, false, true, true)))), Struct_1(global1.a, ~func_2(vec2<i32>(u_input.a.x, u_input.a.x), 618f)), Struct_1(_wgslsmith_f_op_vec4_f32(-global1.a), func_2(u_input.a.ww, _wgslsmith_f_op_f32(ceil(global1.a.x)))), 21994u);
}

