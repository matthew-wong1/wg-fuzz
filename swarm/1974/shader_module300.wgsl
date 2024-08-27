struct Struct_1 {
    a: bool,
    b: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 2> = array<u32, 2>(1u, 0u);

var<private> global1: vec2<f32>;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_1(arg_0: Struct_1) -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global1.x)) + global1.x) - -1133f))));
    var var_1 = arg_0;
    let var_2 = reverseBits(u_input.b);
    var_1 = arg_0;
    global1 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(260f, 458f) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-310f, 1127f), _wgslsmith_f_op_vec2_f32(vec2<f32>(670f, global1.x) - vec2<f32>(var_0, var_0))))))));
    return vec2<bool>(false, var_1.a);
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: vec2<u32>) -> i32 {
    let var_0 = firstLeadingBit(_wgslsmith_dot_vec2_u32(u_input.a, _wgslsmith_clamp_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(55730u, arg_2.x), arg_2), abs(u_input.a), ~u_input.a))) & _wgslsmith_div_u32(~(u_input.a.x << (~arg_2.x % 32u)), 25763u);
    var var_1 = arg_1;
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1213f, arg_0.x) * arg_0), _wgslsmith_f_op_vec2_f32(arg_0 + vec2<f32>(-913f, arg_0.x)))), vec2<f32>(603f, 381f), true || arg_1.a))) + _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(arg_0))), arg_0)))));
    var var_3 = arg_1;
    var var_4 = Struct_1(true, -var_1.b);
    return -8776i | countOneBits(var_3.b);
}

fn func_2(arg_0: vec2<bool>, arg_1: vec4<bool>) -> Struct_1 {
    let var_0 = Struct_1(!(_wgslsmith_f_op_f32(-global1.x) > -383f) || all(!arg_1), func_3(vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(global1.x)), _wgslsmith_f_op_f32(global1.x * global1.x))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(545f, global1.x))))), Struct_1(false, -1i & u_input.b.x), abs(u_input.a << (~u_input.a % vec2<u32>(32u)))));
    global0 = array<u32, 2>();
    let var_1 = vec4<u32>(abs(u_input.a.x), _wgslsmith_mult_u32(~(~global0[_wgslsmith_index_u32(~29513u, 2u)]), u_input.a.x), 11439u, reverseBits(firstLeadingBit(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 2u)], 2u)])));
    let var_2 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-154f, global1.x)))))) - vec2<f32>(_wgslsmith_f_op_f32(max(-2291f, _wgslsmith_f_op_f32(floor(1384f)))), global1.x))));
    global1 = _wgslsmith_f_op_vec2_f32(abs(var_2));
    return var_0;
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1) -> bool {
    return true;
}

fn func_5(arg_0: vec2<bool>, arg_1: i32, arg_2: bool) -> vec4<bool> {
    global1 = vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(-1035f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(441f - -559f)));
    var var_0 = Struct_1(all(select(vec4<bool>(arg_0.x, arg_2, arg_2, arg_2), !vec4<bool>(arg_0.x, arg_2, false, false), true)) | !arg_2, 47359i);
    global0 = array<u32, 2>();
    var var_1 = !vec4<bool>(select(arg_0.x & false, all(vec2<bool>(true, arg_0.x)), arg_0.x), 24225i < ~reverseBits(arg_1), select(!(false || arg_0.x), !any(arg_0), arg_0.x), true);
    let var_2 = vec3<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(firstTrailingBit(0u), ~0u, 10852u, 0u), ~vec4<u32>(_wgslsmith_mult_u32(1u, 12055u), ~0u, ~u_input.a.x, ~1u)), _wgslsmith_div_u32(_wgslsmith_add_u32(select(u_input.a.x, _wgslsmith_div_u32(0u, 36794u), func_1(Struct_1(var_0.a, var_0.b)).x), _wgslsmith_dot_vec4_u32(~vec4<u32>(global0[_wgslsmith_index_u32(50553u, 2u)], global0[_wgslsmith_index_u32(u_input.a.x, 2u)], global0[_wgslsmith_index_u32(37372u, 2u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 2u)], 2u)]), _wgslsmith_clamp_vec4_u32(vec4<u32>(15958u, u_input.a.x, 36446u, global0[_wgslsmith_index_u32(16425u, 2u)]), vec4<u32>(4294967295u, 0u, global0[_wgslsmith_index_u32(48204u, 2u)], u_input.a.x), vec4<u32>(47530u, 43583u, 4294967295u, 11709u)))), u_input.a.x), global0[_wgslsmith_index_u32(~_wgslsmith_div_u32(4294967295u, global0[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.a.x, u_input.a.x), 2u)]), 2u)]);
    return vec4<bool>(all(!select(select(vec4<bool>(var_0.a, arg_0.x, false, true), vec4<bool>(true, false, false, arg_0.x), vec4<bool>(arg_0.x, true, true, var_0.a)), select(vec4<bool>(var_0.a, var_1.x, var_0.a, arg_2), vec4<bool>(true, var_0.a, false, var_1.x), vec4<bool>(true, arg_0.x, var_0.a, true)), !vec4<bool>(true, arg_0.x, true, false))), _wgslsmith_sub_i32(_wgslsmith_clamp_i32(i32(-1i) * -1i, -2147483647i, u_input.b.x), u_input.c) < abs(-reverseBits(0i)), false, true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !select(func_5(select(func_1(Struct_1(true, -25209i)), vec2<bool>(false, true), true), ~(-u_input.c), func_4(func_2(vec2<bool>(false, true), vec4<bool>(true, true, false, false)), func_1(Struct_1(false, u_input.b.x)).x, Struct_1(false, u_input.b.x))), select(select(vec4<bool>(true, true, true, true), func_5(vec2<bool>(true, true), u_input.b.x, false), vec4<bool>(false, true, false, false)), select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, 471f == global1.x, true, any(vec2<bool>(false, false)))), vec4<bool>(~93571u <= global0[_wgslsmith_index_u32(_wgslsmith_add_u32(0u, 42349u), 2u)], all(func_5(vec2<bool>(false, false), u_input.c, false).xwy), false, !any(vec2<bool>(false, true))));
    let var_1 = countOneBits(u_input.c);
    var var_2 = vec3<i32>(var_1, firstTrailingBit(var_1), _wgslsmith_dot_vec4_i32(vec4<i32>(17220i, var_1, _wgslsmith_clamp_i32(-var_1, -1i, countOneBits(var_1)), 1i), vec4<i32>(14339i, -1i, var_1, abs(abs(0i)))));
    global0 = array<u32, 2>();
    var var_3 = _wgslsmith_add_u32(abs(~35968u), u_input.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(~global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 2u)], 2u)], 2u)] >> (((min(1960u, 0u) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(57342u, 0u, 4294967295u, u_input.a.x), vec4<u32>(0u, global0[_wgslsmith_index_u32(u_input.a.x, 2u)], global0[_wgslsmith_index_u32(u_input.a.x, 2u)], 4294967295u)) % 32u)) << (_wgslsmith_div_u32(u_input.a.x, u_input.a.x) % 32u)) % 32u));
}

