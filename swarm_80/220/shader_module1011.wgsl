struct Struct_1 {
    a: vec2<i32>,
    b: u32,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_1) -> bool {
    var var_0 = arg_0;
    let var_1 = arg_0;
    var var_2 = var_1;
    var_2 = var_1;
    var_0 = arg_0;
    return true;
}

fn func_2(arg_0: i32) -> i32 {
    let var_0 = Struct_1(~u_input.c.yz, (u_input.b << (min(u_input.b, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.b), vec2<u32>(u_input.b, u_input.a.x))) % 32u)) | 1u, select(vec4<bool>(true, func_3(Struct_1(vec2<i32>(u_input.c.x, -50790i), u_input.a.x, vec4<bool>(false, false, true, false))), -860f <= _wgslsmith_f_op_f32(floor(-713f)), func_3(Struct_1(u_input.c.zy, 1u, vec4<bool>(true, true, false, true)))), !(!select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, true), true)), true));
    var var_1 = ~_wgslsmith_mult_vec4_u32(vec4<u32>(0u, 106945u, u_input.b, 35320u), select(u_input.a, _wgslsmith_sub_vec4_u32(u_input.a, countOneBits(u_input.a)), false));
    let var_2 = var_0;
    var var_3 = var_2;
    var_1 = vec4<u32>(max(0u, var_3.b), _wgslsmith_mod_u32(_wgslsmith_div_u32(_wgslsmith_add_u32(~u_input.a.x, ~49049u), u_input.b), ~abs(1u)), _wgslsmith_clamp_u32(u_input.b, _wgslsmith_clamp_u32(select(_wgslsmith_clamp_u32(1u, 4294967295u, var_3.b), 32554u, true), 8837u, _wgslsmith_clamp_u32(reverseBits(4294967295u), abs(u_input.a.x), 1u)), var_0.b), _wgslsmith_dot_vec2_u32(~(~(~vec2<u32>(var_1.x, var_2.b))), u_input.a.zz));
    return select(var_2.a.x, reverseBits(1i), !var_3.c.x);
}

fn func_1(arg_0: f32) -> Struct_1 {
    let var_0 = Struct_1(abs(vec2<i32>(func_2(_wgslsmith_sub_i32(u_input.c.x, u_input.c.x)), u_input.c.x)), 4294967295u, !select(vec4<bool>(any(vec2<bool>(false, true)), true, true, true), vec4<bool>(true, false, true, true), true));
    var var_1 = Struct_1(vec2<i32>(-1i, func_2(2147483647i)), var_0.b, var_0.c);
    var var_2 = var_0;
    let var_3 = _wgslsmith_f_op_f32(-arg_0);
    var_2 = Struct_1(vec2<i32>(32029i, _wgslsmith_mult_i32(var_2.a.x, _wgslsmith_add_i32(-48598i, -u_input.c.x))), 29980u, vec4<bool>(var_0.c.x, var_0.c.x, var_2.c.x, var_2.c.x));
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -410f)), _wgslsmith_f_op_f32(sign(-437f)), true)));
    var var_1 = false;
    var var_2 = 1i;
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(886f, _wgslsmith_f_op_f32(f32(-1f) * -1000f))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1545f - _wgslsmith_f_op_f32(-1855f + -1603f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(705f)), -791f)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1762f * -917f), 312f))), _wgslsmith_f_op_f32(sign(-1842f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1434f, -345f))) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1501f - 1054f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -816f) * 906f)))));
    let var_4 = -abs(vec4<i32>(-15267i, firstLeadingBit(firstTrailingBit(u_input.c.x)), u_input.c.x | var_0.a.x, select(2147483647i, var_0.a.x, false) << (~68925u % 32u)));
    var var_5 = func_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(-2418f, _wgslsmith_f_op_f32(var_3.x * -1620f))), var_3.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(438f, _wgslsmith_sub_u32(u_input.b, _wgslsmith_dot_vec4_u32(countOneBits(~vec4<u32>(1u, 4294967295u, u_input.a.x, 49139u)), _wgslsmith_add_vec4_u32(u_input.a, ~vec4<u32>(var_0.b, u_input.b, var_5.b, var_0.b)))));
}

