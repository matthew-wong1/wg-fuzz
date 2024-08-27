struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
}

struct Struct_3 {
    a: f32,
    b: bool,
    c: vec2<bool>,
    d: vec2<bool>,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: f32,
    b: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: Struct_3, arg_1: vec4<bool>, arg_2: vec2<bool>, arg_3: Struct_3) -> Struct_5 {
    var var_0 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3.a + arg_0.a) - arg_0.a)), all(arg_1), !(!arg_0.c), select(arg_0.c, vec2<bool>(true, true), arg_0.b || true));
    var var_1 = 1i;
    var_1 = u_input.c.x;
    var_1 = ~firstLeadingBit(81291i);
    var var_2 = Struct_4(Struct_3(var_0.a, arg_3.c.x, !(!arg_1.ww), var_0.d));
    return Struct_5(-569f, u_input.c.x);
}

fn func_3(arg_0: Struct_5, arg_1: Struct_5, arg_2: bool, arg_3: Struct_5) -> f32 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(357f, arg_1.a))))));
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(floor(var_0.a)));
    let var_2 = ~firstTrailingBit(~(~u_input.c.wy & vec2<i32>(9392i, u_input.c.x)));
    var var_3 = Struct_5(_wgslsmith_f_op_f32(arg_3.a - arg_3.a), _wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(~u_input.c, abs(vec4<i32>(arg_3.b, u_input.c.x, arg_3.b, arg_1.b))), _wgslsmith_mult_i32(arg_3.b, 12934i), reverseBits(1i)));
    var_0 = var_1;
    return arg_1.a;
}

fn func_1(arg_0: vec4<u32>, arg_1: f32) -> Struct_1 {
    var var_0 = 77671u;
    var_0 = select(~(~(~(u_input.a.x & arg_0.x))), ~(~(~(arg_0.x & u_input.a.x))), _wgslsmith_f_op_f32(f32(-1f) * -1219f) >= arg_1);
    let var_1 = Struct_5(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-212f, -302f)), arg_1) * _wgslsmith_f_op_f32(func_3(func_2(Struct_3(arg_1, true, vec2<bool>(true, false), vec2<bool>(false, true)), vec4<bool>(true, true, true, true), vec2<bool>(true, true), Struct_3(407f, false, vec2<bool>(true, true), vec2<bool>(false, true))), Struct_5(328f, ~10742i), any(vec4<bool>(true, true, true, true)), func_2(Struct_3(arg_1, false, vec2<bool>(true, false), vec2<bool>(false, true)), vec4<bool>(false, false, false, true), select(vec2<bool>(false, false), vec2<bool>(true, false), false), Struct_3(614f, false, vec2<bool>(false, true), vec2<bool>(false, false)))))), _wgslsmith_mult_i32(_wgslsmith_sub_i32(func_2(Struct_3(arg_1, true, vec2<bool>(true, false), vec2<bool>(true, true)), vec4<bool>(false, true, true, true), select(vec2<bool>(true, false), vec2<bool>(false, true), false), Struct_3(arg_1, false, vec2<bool>(false, true), vec2<bool>(false, false))).b, u_input.c.x), u_input.c.x << (~_wgslsmith_sub_u32(4294967295u, arg_0.x) % 32u)));
    let var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, -829f)), vec2<f32>(var_1.a, var_1.a))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a, -1000f)), vec2<bool>(arg_1 != var_1.a, false))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1924f, var_1.a))));
    var var_3 = false;
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(abs(-542f));
    var_0 = _wgslsmith_div_f32(206f, -1000f);
    var var_1 = Struct_2(func_1(~(~vec4<u32>(4294967295u, u_input.a.x, 0u, u_input.b)) | (~vec4<u32>(4294967295u, u_input.b, 47410u, 108346u) ^ ~vec4<u32>(48766u, u_input.b, u_input.a.x, u_input.a.x)), _wgslsmith_f_op_f32(abs(-836f))), _wgslsmith_clamp_vec4_i32(vec4<i32>(49651i, u_input.c.x | abs(u_input.c.x), ~u_input.c.x, u_input.c.x), vec4<i32>(-u_input.c.x, ~0i, ~(~u_input.c.x), _wgslsmith_sub_i32(u_input.c.x | -3370i, u_input.c.x)), vec4<i32>(select(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, u_input.c.x, u_input.c.x), vec3<i32>(-2147483647i, u_input.c.x, -2147483647i)), ~(-37929i), true), u_input.c.x, reverseBits(1i) << (_wgslsmith_dot_vec4_u32(vec4<u32>(23887u, 18963u, 4294967295u, 0u), vec4<u32>(u_input.a.x, u_input.b, u_input.b, 0u)) % 32u), u_input.c.x)));
    var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_1.a.a.x))), var_1.a.a.x);
    var_1 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(min(var_1.a.a, vec2<f32>(_wgslsmith_f_op_f32(872f + var_1.a.a.x), _wgslsmith_f_op_f32(-var_1.a.a.x))))), vec4<i32>(-_wgslsmith_sub_i32(_wgslsmith_clamp_i32(2147483647i, u_input.c.x, u_input.c.x), _wgslsmith_clamp_i32(-27660i, var_1.b.x, -3931i)), u_input.c.x, -_wgslsmith_dot_vec3_i32(vec3<i32>(-12495i, -15527i, 0i), _wgslsmith_div_vec3_i32(vec3<i32>(-7374i, 0i, 30383i), var_1.b.wwx)), countOneBits(abs(-30918i)) & u_input.c.x));
    let var_2 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2166f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(271f * var_1.a.a.x) + _wgslsmith_f_op_f32(floor(var_1.a.a.x)))) * _wgslsmith_f_op_f32(round(func_1(firstTrailingBit(vec4<u32>(u_input.a.x, u_input.b, u_input.b, 0u)), _wgslsmith_f_op_f32(max(-119f, -1895f))).a.x))), true, vec2<bool>(all(select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), true), vec3<bool>(true, true, true))), select(!select(true, true, false), false, all(vec3<bool>(true, true, true)))), vec2<bool>(1000f != var_1.a.a.x, all(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true), true), select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, false), false)))));
    var var_3 = Struct_2(Struct_1(vec2<f32>(var_1.a.a.x, _wgslsmith_f_op_f32(f32(-1f) * -1911f))), var_1.b);
    var var_4 = Struct_3(var_2.a, all(var_2.d), vec2<bool>(!(!(!var_2.d.x)), var_2.b), vec2<bool>(select(select(var_2.c.x | var_2.c.x, true, all(vec4<bool>(true, true, false, var_2.c.x))), min(var_3.b.x, var_3.b.x) >= u_input.c.x, !(var_1.a.a.x != var_2.a)), false));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(u_input.a.x, u_input.b), var_1.b.yx);
}

