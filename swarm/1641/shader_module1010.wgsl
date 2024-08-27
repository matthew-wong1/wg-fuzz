struct Struct_1 {
    a: vec3<bool>,
    b: vec2<i32>,
    c: vec4<bool>,
    d: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec3<i32>,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3() -> f32 {
    let var_0 = Struct_1(!(!vec3<bool>(any(vec2<bool>(global0.x, global0.x)), true, !global0.x)), u_input.e, vec4<bool>(global0.x, true, true, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1f)))));
    var var_1 = vec4<u32>(_wgslsmith_div_u32(~(firstLeadingBit(13185u) >> (~4294967295u % 32u)), _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(10500u, 10037u, 0u), ~vec3<u32>(96655u, 42456u, 0u)), firstLeadingBit(1u))), ((_wgslsmith_dot_vec2_u32(vec2<u32>(30804u, 4294967295u), vec2<u32>(1u, 0u)) << (_wgslsmith_dot_vec4_u32(vec4<u32>(86754u, 20481u, 1u, 48103u), vec4<u32>(0u, 0u, 1u, 4294967295u)) % 32u)) & 1u) | 1u, ~max(min(countOneBits(10956u), 1u), 84246u), countOneBits(0u));
    let var_2 = var_1.yy;
    let var_3 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1370f * _wgslsmith_f_op_f32(step(var_0.d, var_0.d)))))))));
    let var_4 = Struct_1(var_0.c.wzz, var_0.b, select(!select(!vec4<bool>(false, var_0.a.x, true, true), !var_0.c, select(var_0.c, vec4<bool>(var_0.c.x, false, global0.x, var_0.c.x), var_0.c)), var_0.c, var_0.c), var_3);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2379f * var_4.d) - -1000f);
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    var var_0 = arg_0;
    let var_1 = Struct_1(arg_0.a, var_0.b, var_0.c, _wgslsmith_f_op_f32(func_3()));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.d, _wgslsmith_f_op_f32(-429f * _wgslsmith_div_f32(-186f, arg_0.d)), _wgslsmith_f_op_f32(-var_1.d), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.d + var_0.d)))));
    var_0 = var_1;
    var var_3 = (_wgslsmith_dot_vec3_u32(max(reverseBits(vec3<u32>(1u, 4294967295u, 4294967295u)), select(vec3<u32>(4294967295u, 4294967295u, 4294967295u), vec3<u32>(63044u, 0u, 4294967295u), vec3<bool>(false, arg_0.a.x, false))), vec3<u32>(~1u, 22284u, _wgslsmith_clamp_u32(32723u, 1u, 1u))) | ~_wgslsmith_dot_vec4_u32(vec4<u32>(20844u, 47097u, 4294967295u, 0u), vec4<u32>(1u, 1u, 1u, 1u))) & countOneBits(countOneBits(28188u));
    return var_1;
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: f32) -> Struct_1 {
    let var_0 = -675f;
    let var_1 = arg_1.b.x ^ abs(arg_1.b.x);
    global0 = !vec2<bool>(!any(vec4<bool>(true, true, true, true)), arg_1.c.x);
    var var_2 = arg_1.c;
    let var_3 = var_2.zxz;
    return Struct_1(var_2.xyw, _wgslsmith_div_vec2_i32(_wgslsmith_div_vec2_i32(arg_1.b, vec2<i32>(arg_1.b.x, 6898i)), arg_1.b), !(!(!arg_1.c)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2) + _wgslsmith_f_op_f32(f32(-1f) * -386f)))), var_0, global0.x)));
}

fn func_5(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: i32, arg_3: i32) -> vec3<i32> {
    return vec3<i32>(~(-firstLeadingBit(1i)), -(1i >> (1u % 32u)), arg_2 & firstTrailingBit(_wgslsmith_mult_i32(-1i, u_input.d ^ u_input.e.x)));
}

fn func_1(arg_0: bool, arg_1: vec3<bool>) -> u32 {
    global0 = select(vec2<bool>(!(true | !global0.x), arg_0), !arg_1.yz, !global0.x);
    let var_0 = vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, ~1i, countOneBits(1i)), func_5(!select(arg_1, vec3<bool>(arg_0, arg_1.x, true), arg_1), func_4(arg_0 || arg_0, func_2(Struct_1(vec3<bool>(false, false, false), u_input.b.zw, vec4<bool>(true, true, arg_1.x, global0.x), -243f)), -539f), firstTrailingBit(~44685i), 17663i)), u_input.b.x);
    global0 = !arg_1.zz;
    let var_1 = 138f;
    var var_2 = ~_wgslsmith_mult_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(48026u, 35404u)), vec2<u32>(1u, 1u)), 4081u), reverseBits(~(~4294967295u)));
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = !vec2<bool>(global0.x, global0.x);
    var var_0 = _wgslsmith_sub_vec3_u32(~(~(~vec3<u32>(1u, 1u, 1u))), select(_wgslsmith_sub_vec3_u32(select(vec3<u32>(4294967295u, 20599u, 0u), abs(vec3<u32>(32865u, 25335u, 1u)), select(vec3<bool>(false, false, true), vec3<bool>(global0.x, false, true), vec3<bool>(false, true, global0.x))), vec3<u32>(1u, 1u, 1u)), _wgslsmith_mult_vec3_u32(firstTrailingBit(~vec3<u32>(58348u, 36907u, 50332u)), ~vec3<u32>(43726u, 4294967295u, 50069u)), !select(!vec3<bool>(global0.x, true, true), !vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(global0.x, false, true))));
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1167f, 824f)) * _wgslsmith_f_op_f32(abs(495f))), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-219f, -451f), _wgslsmith_f_op_f32(trunc(-1000f))))), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(floor(-1000f)), _wgslsmith_div_f32(1611f, -834f)))), select(select(vec2<bool>(global0.x, true), vec2<bool>(global0.x, global0.x), any(vec4<bool>(false, global0.x, false, false))), !select(vec2<bool>(global0.x, global0.x), vec2<bool>(global0.x, true), false), select(vec2<bool>(true, false), vec2<bool>(false, false), true)))) - vec2<f32>(-296f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-359f * _wgslsmith_f_op_f32(max(846f, 487f))) + 421f)));
    var_0 = ~(~vec3<u32>(var_0.x, ~9951u, var_0.x) | ~vec3<u32>(func_1(global0.x, vec3<bool>(true, global0.x, global0.x)), var_0.x, ~24300u));
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-593f, 1206f, 384f, var_1.x)))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_1.x, var_1.x, var_1.x))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, -268f, var_1.x, 1417f)))))));
    let var_3 = func_2(func_2(Struct_1(select(vec3<bool>(global0.x, true, true), select(vec3<bool>(global0.x, false, false), vec3<bool>(true, global0.x, true), vec3<bool>(global0.x, false, true)), !vec3<bool>(global0.x, true, global0.x)), ~_wgslsmith_div_vec2_i32(vec2<i32>(-32029i, 2147483647i), u_input.c.xz), vec4<bool>(true, all(vec2<bool>(true, true)), global0.x, global0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_2.x, var_2.x))))));
    let x = u_input.a;
    s_output = StorageBuffer(1i);
}

