struct Struct_1 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: vec4<i32>,
    d: vec2<f32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: i32 = 3080i;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec2<i32>) -> vec3<bool> {
    let var_0 = vec4<bool>(!(true || any(vec2<bool>(true, true))), true, true, false);
    var var_1 = select(vec4<bool>(!var_0.x && var_0.x, any(var_0), ~_wgslsmith_dot_vec3_u32(u_input.a.wzz, u_input.b.wxx) > countOneBits(global0.x), !(!(!var_0.x))), vec4<bool>(false & (var_0.x & true), false, var_0.x, all(var_0.wz)), ~arg_0.x <= max(0i, 1i));
    let var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-970f, 1194f), vec2<f32>(1569f, -831f)) + vec2<f32>(1f, 1f))))));
    let var_3 = var_2;
    return select(vec3<bool>(true, false, var_1.x), vec3<bool>(true, false, var_0.x), !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_3.a.x))) == -238f));
}

fn func_2() -> vec2<u32> {
    var var_0 = _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(sign(-206f)));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(-1269f, 329f))))))));
    var var_1 = -_wgslsmith_sub_i32(abs(57783i) >> (~global0.x % 32u), max(firstLeadingBit(-11723i), ~(-2147483647i))) > 1i;
    global0 = vec2<u32>(25588u, min(u_input.b.x & u_input.b.x, 5956u));
    var var_2 = select(func_3(-max(vec2<i32>(1i, 1i), vec2<i32>(1i, 1i))), !select(vec3<bool>(any(vec2<bool>(true, true)), true, true), func_3(min(vec2<i32>(-16646i, 0i), vec2<i32>(-24791i, -5059i))), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false)), select(!select(select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), true), vec3<bool>(false, false, false), true), !func_3(abs(vec2<i32>(-3892i, -1i))), true & !all(vec2<bool>(false, true))));
    return vec2<u32>(23138u, max(u_input.b.x, ~13882u)) << ((vec2<u32>(global0.x, _wgslsmith_dot_vec4_u32(min(u_input.a, u_input.b), min(u_input.a, vec4<u32>(0u, u_input.b.x, 1u, global0.x)))) ^ _wgslsmith_div_vec2_u32(vec2<u32>(firstTrailingBit(u_input.a.x), global0.x), select(_wgslsmith_mult_vec2_u32(u_input.b.zz, u_input.b.wy), u_input.a.xy, var_2.zx))) % vec2<u32>(32u));
}

fn func_1() -> f32 {
    global0 = func_2();
    let var_0 = vec2<bool>(select(any(func_3(abs(vec2<i32>(13386i, 1i)))), !all(select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false))), select(true, false, func_3(reverseBits(vec2<i32>(-5317i, -1i))).x)), select(true, !func_3(vec2<i32>(1i, 1i)).x, true));
    let var_1 = !(!vec3<bool>(true, false, any(var_0)));
    global1 = _wgslsmith_dot_vec2_i32(((vec2<i32>(-1i) * -vec2<i32>(36102i, 1i)) >> (u_input.b.zx % vec2<u32>(32u))) | (-vec2<i32>(38529i, -15919i) >> ((~vec2<u32>(39078u, 1u) & ~u_input.a.zz) % vec2<u32>(32u))), _wgslsmith_div_vec2_i32(vec2<i32>(abs(0i), 2147483647i) >> (~u_input.a.xz % vec2<u32>(32u)), vec2<i32>(_wgslsmith_add_i32(_wgslsmith_add_i32(-1i, -1i), -20119i), -21133i)));
    global0 = u_input.b.xy;
    return 363f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_f32(290f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(f32(-1f) * -721f))));
    let var_1 = vec3<u32>((4294967295u | ~global0.x) >> (~(~u_input.a.x) % 32u), u_input.b.x, ~global0.x) & vec3<u32>(firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 131807u, 4294967295u, 0u), u_input.a | vec4<u32>(u_input.a.x, 32752u, 0u, global0.x))), _wgslsmith_clamp_u32(0u, u_input.b.x, 24984u), _wgslsmith_mod_u32(u_input.a.x, global0.x));
    let var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(var_0 + _wgslsmith_f_op_f32(-var_0)), var_0) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_0, 237f), vec2<f32>(var_0, 1362f))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-235f, -1155f))))));
    let var_3 = ~global0.x;
    let var_4 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_2.a.x)))), -1034f));
    var var_5 = !all(vec4<bool>(true, true, true, true));
    var var_6 = true != (all(!select(vec2<bool>(false, true), vec2<bool>(true, false), false)) & true);
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(30849u, global0.x), ~u_input.a.yy), ~min(var_1.x, var_1.x), 117335u, ~1u), var_2.a.x, vec4<i32>(select(reverseBits(18142i), 16747i, false), ~(-2147483647i), firstTrailingBit(-12278i), reverseBits(24998i)), var_2.a, vec2<f32>(var_0, _wgslsmith_f_op_f32(min(var_2.a.x, _wgslsmith_f_op_f32(abs(var_0))))));
}

