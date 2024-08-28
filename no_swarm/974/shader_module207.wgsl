struct Struct_1 {
    a: i32,
    b: i32,
    c: vec2<u32>,
    d: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: vec4<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 25>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: vec4<u32>) -> u32 {
    global0 = array<i32, 25>();
    var var_0 = select(vec2<bool>(true, any(vec2<bool>(true, true))), !select(vec2<bool>(true, true), select(select(vec2<bool>(false, true), vec2<bool>(true, false), false), vec2<bool>(true, true), all(vec2<bool>(true, false))), false), true);
    let var_1 = arg_0.x;
    global0 = array<i32, 25>();
    var var_2 = ~arg_0.zw;
    return 0u;
}

fn func_1(arg_0: vec4<u32>, arg_1: vec2<bool>, arg_2: vec4<i32>, arg_3: Struct_1) -> i32 {
    var var_0 = _wgslsmith_dot_vec2_u32(~arg_0.ww, vec2<u32>(func_2(arg_0 | arg_0) >> (~(~arg_3.c.x) % 32u), arg_0.x << (_wgslsmith_sub_u32(0u ^ arg_3.c.x, ~31557u) % 32u)));
    var_0 = _wgslsmith_add_u32(~5257u, _wgslsmith_clamp_u32(~43513u, ~15565u, ~(~(~1746u))));
    global0 = array<i32, 25>();
    global0 = array<i32, 25>();
    let var_1 = -1i;
    return ~firstTrailingBit(~arg_3.a);
}

fn func_3(arg_0: vec4<f32>, arg_1: u32, arg_2: Struct_1) -> f32 {
    return arg_0.x;
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: f32, arg_3: bool) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(954f * _wgslsmith_f_op_f32(select(arg_2, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_2 - 431f))), 12586i <= arg_1.b)))));
    global0 = array<i32, 25>();
    let var_1 = vec4<bool>(!arg_3, any(select(vec4<bool>(true, false != arg_3, arg_3, arg_2 > -1376f), !select(vec4<bool>(arg_3, arg_3, arg_3, arg_3), vec4<bool>(false, true, false, arg_3), false), !vec4<bool>(arg_3, arg_3, true, arg_3))), arg_3, true);
    global0 = array<i32, 25>();
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(arg_2, arg_2))) - _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1642f, 238f), vec2<f32>(arg_2, arg_2), true))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f))))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(-481f, _wgslsmith_f_op_f32(round(789f))), -1056f) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1113f, 133f), vec2<f32>(arg_2, arg_2)))))));
    return _wgslsmith_add_i32(2147483647i, arg_0);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_mod_i32(22296i, u_input.b.x) | ~(func_1(vec4<u32>(0u, 12045u, 10094u, 33923u), vec2<bool>(true, false), vec4<i32>(-19223i, 1i, global0[_wgslsmith_index_u32(20673u, 25u)], u_input.c.x), Struct_1(-18485i, -20613i, vec2<u32>(74130u, 1u), 1u)) & global0[_wgslsmith_index_u32(~15986u, 25u)]), i32(-1i) * -func_4(i32(-1i) * -49590i, Struct_1(global0[_wgslsmith_index_u32(4294967295u, 25u)], -49697i, vec2<u32>(1u, 0u), 4294967295u), _wgslsmith_f_op_f32(func_3(vec4<f32>(-156f, 870f, 1000f, 485f), 24701u, Struct_1(-14960i, u_input.c.x, vec2<u32>(18101u, 24134u), 10058u))), true), firstTrailingBit(vec2<u32>(1u, 1u)), ~(~max(max(47881u, 0u), ~4294967295u)));
    let var_1 = Struct_1(-2147483647i, ~2147483647i, _wgslsmith_mod_vec2_u32(~var_0.c, vec2<u32>(7284u, var_0.c.x) << (vec2<u32>(1u, var_0.d) % vec2<u32>(32u))) | ~var_0.c, var_0.c.x);
    global0 = array<i32, 25>();
    let var_2 = func_1(vec4<u32>(~(var_0.c.x >> (1u % 32u)), 1u, ~1u, var_1.d), vec2<bool>(var_1.b == ~(-1i), false), ~vec4<i32>(abs(var_1.a), -u_input.a, 1i, func_4(1i, Struct_1(-12385i, global0[_wgslsmith_index_u32(var_1.d, 25u)], vec2<u32>(32365u, 0u), 12755u), 2078f, false)), Struct_1(_wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.b.x, 1i, u_input.b.x, var_0.a), vec4<i32>(u_input.a, global0[_wgslsmith_index_u32(5442u, 25u)], var_0.a, 1i)), 2147483647i, ~(~var_1.c), select(var_0.d, var_1.d | var_0.d, true))) | _wgslsmith_sub_i32(var_1.b, ~_wgslsmith_mod_i32(global0[_wgslsmith_index_u32(var_0.d, 25u)], i32(-1i) * -127335i));
    var_0 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(259f, -1974f))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1000f, -996f), vec2<f32>(443f, 1628f), true))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1111f, -1154f) + vec2<f32>(-398f, 1695f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-180f, 1577f)))))), ~6009u, vec4<u32>(countOneBits(min(6050u, var_0.d)), countOneBits(~81004u), var_1.c.x, var_1.d) >> (reverseBits(abs(~vec4<u32>(var_0.c.x, 43380u, var_0.c.x, 1u))) % vec4<u32>(32u)), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(369f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -674f), -147f)))));
}

