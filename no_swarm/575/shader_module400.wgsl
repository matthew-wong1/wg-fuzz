struct Struct_1 {
    a: u32,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(1u, 0i);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2() -> vec3<u32> {
    var var_0 = true | (all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, false)))) & ((~1u | reverseBits(u_input.b)) >= (5738u ^ min(global0.a, 4294967295u))));
    let var_1 = 756f;
    global0 = Struct_1(~(global0.a << (~(~u_input.b) % 32u)), -2147483647i);
    var var_2 = firstTrailingBit(1u);
    var_0 = !(!select(true, true, global0.a != 7019u));
    return vec3<u32>(~(~(~(~global0.a))), global0.a, u_input.b);
}

fn func_1(arg_0: u32, arg_1: vec4<u32>, arg_2: i32) -> vec3<u32> {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(2022f - -761f), _wgslsmith_f_op_f32(-322f + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(-1963f)))))) - 526f);
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -256f);
    var var_2 = _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1715f + 765f) - _wgslsmith_f_op_f32(1552f + 714f)), 1f)), _wgslsmith_f_op_f32(f32(-1f) * -1613f), _wgslsmith_f_op_f32(f32(-1f) * -576f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(313f, -861f, -1212f), vec3<f32>(-952f, 1008f, 1409f), true)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(229f, 1797f, -3111f))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1459f, -577f, -447f))))) + _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1046f, -973f, -917f))))))));
    var_0 = var_2.x;
    var_0 = _wgslsmith_f_op_f32(-var_2.x);
    return ~(~func_2()) ^ arg_1.wwy;
}

fn func_3(arg_0: Struct_2, arg_1: bool, arg_2: Struct_2) -> vec3<u32> {
    let var_0 = Struct_2(arg_2.a, !any(vec2<bool>(any(vec2<bool>(arg_1, true)), false & arg_0.b)), arg_0.c);
    var var_1 = 1u;
    let var_2 = abs(vec2<i32>((-1i << (arg_0.c.a % 32u)) << (66289u % 32u), -2147483647i));
    let var_3 = u_input.a;
    var var_4 = arg_2.a;
    return ~firstLeadingBit(abs(_wgslsmith_clamp_vec3_u32(~vec3<u32>(var_4.a, 30030u, 57729u), _wgslsmith_clamp_vec3_u32(vec3<u32>(68312u, 4294967295u, arg_0.a.a), vec3<u32>(67564u, var_4.a, arg_2.a.a), vec3<u32>(13723u, 4577u, var_0.a.a)), _wgslsmith_div_vec3_u32(vec3<u32>(0u, 33042u, u_input.b), vec3<u32>(4294967295u, 0u, arg_2.c.a)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<u32>(firstLeadingBit(44228u), _wgslsmith_dot_vec3_u32(func_1(~0u, vec4<u32>(32915u, _wgslsmith_div_u32(global0.a, 22821u), 0u, global0.a >> (53281u % 32u)), _wgslsmith_mult_i32(~(-2147483647i), 1i << (global0.a % 32u))), countOneBits(~func_3(Struct_2(Struct_1(global0.a, u_input.a.x), true, Struct_1(global0.a, global0.b)), true, Struct_2(Struct_1(u_input.b, 5101i), false, Struct_1(global0.a, global0.b))))));
    global0 = Struct_1(abs(~_wgslsmith_mod_u32(1u, u_input.b)), 55527i);
    var var_1 = Struct_1(func_3(Struct_2(Struct_1(u_input.b, -10581i), false, Struct_1(0u, global0.b)), false, Struct_2(Struct_1(var_0.x, u_input.a.x), true, Struct_1(26937u, u_input.a.x))).x | _wgslsmith_mod_u32(~1u, ~(u_input.b | u_input.b)), -global0.b);
    var var_2 = Struct_1(~(~0u), var_1.b);
    var_1 = Struct_1(14682u, -1i);
    let var_3 = _wgslsmith_f_op_f32(trunc(-1997f)) >= 1f;
    let x = u_input.a;
    s_output = StorageBuffer(1u, _wgslsmith_div_f32(743f, -736f), _wgslsmith_div_u32(global0.a, 1u), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(717f - -1569f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1238f - -490f), -1790f)))), true)));
}

