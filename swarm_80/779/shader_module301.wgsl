struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: vec3<bool> = vec3<bool>(true, false, true);

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_2(arg_0: Struct_1) -> f32 {
    var var_0 = vec3<bool>(_wgslsmith_sub_u32(~(~1u), _wgslsmith_dot_vec2_u32(~vec2<u32>(1u, 4294967295u), ~vec2<u32>(38334u, 69625u))) >= ~8631u, all(select(!(!arg_0.a), arg_0.a, select(select(vec3<bool>(false, global1.x, false), vec3<bool>(true, global0.a.a.x, arg_0.a.x), arg_0.a.x), select(vec3<bool>(true, true, global0.a.a.x), vec3<bool>(true, true, global1.x), vec3<bool>(true, global0.a.a.x, global1.x)), arg_0.a.x & global0.a.a.x))), global1.x);
    global1 = global0.a.a;
    let var_1 = Struct_2(arg_0);
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-794f, -580f, -537f, 727f), vec4<f32>(-1107f, 1113f, 885f, -1000f)))))) - vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -199f) - _wgslsmith_div_f32(1115f, 740f)), -840f, 1155f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -463f) + -1595f))));
    global1 = select(!global0.a.a, !select(!global0.a.a, select(!vec3<bool>(false, true, global1.x), vec3<bool>(true, var_0.x, true), !global0.a.a), vec3<bool>(var_0.x, true, true)), global0.a.a);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x)), var_2.x) - var_2.x));
}

fn func_3(arg_0: Struct_2, arg_1: vec2<i32>, arg_2: bool) -> vec2<i32> {
    let var_0 = vec2<f32>(914f, _wgslsmith_f_op_f32(trunc(141f)));
    var var_1 = 43555i;
    global0 = arg_0;
    let var_2 = arg_0;
    let var_3 = ~(-28198i);
    return vec2<i32>(firstTrailingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, 37892i), arg_1)), reverseBits(0i) << (0u % 32u));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec2<i32>) -> f32 {
    let var_0 = Struct_2(arg_0);
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(636f)) + 136f);
    global0 = arg_1;
    let var_2 = 15791u;
    var var_3 = arg_0.a;
    return _wgslsmith_f_op_f32(var_1 + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_2(arg_0)))))));
}

fn func_1(arg_0: vec2<u32>) -> Struct_2 {
    var var_0 = Struct_2(Struct_1(vec3<bool>(!all(vec2<bool>(true, global1.x)), true, global1.x)));
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1330f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(var_0.a))), true | var_0.a.a.x)))), _wgslsmith_f_op_f32(func_4(Struct_1(vec3<bool>(false, false, !global0.a.a.x)), Struct_2(Struct_1(global0.a.a)), func_3(Struct_2(var_0.a), ~_wgslsmith_clamp_vec2_i32(vec2<i32>(1i, -1i), vec2<i32>(u_input.a, 2970i), vec2<i32>(u_input.a, 0i)), true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1560f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -908f) + -123f) - _wgslsmith_f_op_f32(1439f + -373f))));
    let var_2 = ~1u;
    let var_3 = vec4<u32>(~firstTrailingBit(1u), var_2, 177408u, _wgslsmith_clamp_u32(firstLeadingBit(arg_0.x) | ~(~var_2), 0u, ~_wgslsmith_sub_u32(0u, var_2)));
    global0 = Struct_2(Struct_1(global0.a.a));
    return Struct_2(var_0.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(~_wgslsmith_mod_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, 1u), vec2<u32>(65156u, 101310u), _wgslsmith_add_vec2_u32(vec2<u32>(0u, 6514u), vec2<u32>(0u, 0u))), _wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, 21913u), vec2<u32>(1u, 1u))));
    global0 = func_1(vec2<u32>(11946u ^ _wgslsmith_clamp_u32(abs(61381u), 1u, 1u), abs(~select(0u, 0u, var_0.a.a.x))));
    let var_1 = Struct_1(func_1(abs(min(~vec2<u32>(1u, 2904u), vec2<u32>(22562u, 0u)))).a.a);
    global0 = Struct_2(global0.a);
    var var_2 = _wgslsmith_sub_i32(1i, select(0i, -u_input.a, var_1.a.x));
    let var_3 = Struct_1(vec3<bool>(true, true & func_1(~vec2<u32>(4294967295u, 18659u)).a.a.x, false));
    let var_4 = _wgslsmith_mod_i32(countOneBits(-2147483647i), 1i);
    let x = u_input.a;
    s_output = StorageBuffer(69567u, _wgslsmith_div_vec2_i32(firstTrailingBit(firstTrailingBit(-vec2<i32>(u_input.a, u_input.a))), select(~vec2<i32>(var_4, u_input.a), vec2<i32>(1i, var_4), !global1.yz) << (vec2<u32>(1u, 1u) % vec2<u32>(32u))), -var_4);
}

