struct Struct_1 {
    a: f32,
    b: f32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: vec2<bool>,
    d: vec2<bool>,
    e: bool,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec4<i32>,
    c: vec3<f32>,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: vec4<f32>,
    b: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec3<u32>,
    d: vec4<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: vec4<u32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: u32 = 4294967295u;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: u32) -> i32 {
    global1 = ~(~20364u);
    var var_0 = Struct_4(Struct_1(-2047f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1655f + -1000f))))));
    var_0 = Struct_4(var_0.a);
    var_0 = Struct_4(var_0.a);
    let var_1 = Struct_4(Struct_1(_wgslsmith_f_op_f32(sign(var_0.a.b)), _wgslsmith_f_op_f32(abs(var_0.a.b))));
    return -_wgslsmith_sub_i32(i32(-1i) * -abs(1i), u_input.d.x);
}

fn func_2() -> f32 {
    let var_0 = ~u_input.d.x;
    global0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(630f * 322f) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-986f - 1601f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1432f))), false)))));
    var var_1 = _wgslsmith_clamp_vec4_i32(u_input.d, u_input.a, vec4<i32>(15397i, -var_0, u_input.a.x, func_3(~22982u)));
    global0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1014f)));
    let var_2 = vec4<u32>(68748u, 109536u, countOneBits(u_input.e.x), 1u);
    return -802f;
}

fn func_1(arg_0: vec2<f32>) -> vec4<f32> {
    global0 = -1403f;
    global0 = _wgslsmith_f_op_f32(func_2());
    let var_0 = Struct_4(Struct_1(arg_0.x, -693f));
    var var_1 = u_input.d.xz;
    let var_2 = u_input.d.x;
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_0.x, arg_0.x, arg_0.x, 2021f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(147f, -125f, arg_0.x, var_0.a.b), vec4<f32>(var_0.a.b, arg_0.x, var_0.a.a, arg_0.x)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-763f, 131f, arg_0.x, arg_0.x) - vec4<f32>(var_0.a.b, arg_0.x, 1108f, -390f))))), vec4<f32>(var_0.a.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.a.a, arg_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-870f, var_0.a.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.a.b))))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x + arg_0.x) * _wgslsmith_f_op_f32(select(arg_0.x, -1000f, false))), _wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_2()))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~u_input.e.x != (countOneBits(~u_input.c.x) & min(u_input.e.x, ~firstLeadingBit(0u)));
    let var_1 = ~u_input.d.x & (u_input.a.x | -1i);
    let var_2 = Struct_5(_wgslsmith_f_op_vec4_f32(func_1(vec2<f32>(580f, -316f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -328f))) < _wgslsmith_f_op_f32(round(393f)));
    var var_3 = Struct_2(vec4<i32>(-var_1 ^ -53597i, -select(firstLeadingBit(80670i), u_input.d.x, var_0 & var_2.b), -40121i, var_1), Struct_1(_wgslsmith_f_op_f32(trunc(-437f)), var_2.a.x), select(select(vec2<bool>(true, select(var_0, var_0, var_2.b)), !select(vec2<bool>(false, var_0), vec2<bool>(false, var_2.b), vec2<bool>(var_2.b, true)), vec2<bool>(u_input.c.x != u_input.e.x, all(vec3<bool>(true, true, true)))), vec2<bool>(true, any(select(vec2<bool>(var_2.b, var_2.b), vec2<bool>(var_0, var_0), false))), !select(select(vec2<bool>(false, false), vec2<bool>(false, var_2.b), vec2<bool>(var_2.b, false)), !vec2<bool>(var_2.b, true), all(vec2<bool>(false, var_2.b)))), !select(!(!vec2<bool>(var_0, var_2.b)), !select(vec2<bool>(var_2.b, var_0), vec2<bool>(var_2.b, false), vec2<bool>(var_2.b, var_0)), var_2.b), select(!(var_1 <= -89339i), var_2.b, true) && !var_2.b);
    let var_4 = u_input.a.zx;
    var var_5 = vec4<bool>(!(!var_2.b), !var_2.b, !(!var_3.e), u_input.e.x <= 0u);
    global1 = countOneBits(_wgslsmith_clamp_u32(_wgslsmith_mult_u32(u_input.e.x, _wgslsmith_add_u32(_wgslsmith_mult_u32(u_input.e.x, u_input.c.x), min(u_input.c.x, u_input.e.x))), u_input.c.x, ~firstLeadingBit(~u_input.c.x)));
    let var_6 = Struct_2(abs(min(max(reverseBits(vec4<i32>(-21470i, var_1, var_3.a.x, -2147483647i)), abs(vec4<i32>(var_3.a.x, var_3.a.x, -2147483647i, var_3.a.x))), ~firstTrailingBit(u_input.d))), var_3.b, select(!vec2<bool>(false, var_5.x), select(select(select(var_3.d, var_5.wx, var_5.x), var_5.wz, var_3.c), select(var_5.xz, !var_5.xw, select(false, var_3.d.x, true)), u_input.c.x == ~u_input.c.x), true), select(vec2<bool>(true, true), select(!(!vec2<bool>(var_3.d.x, var_3.c.x)), select(vec2<bool>(true, false), vec2<bool>(false, true), !var_0), false), false), false);
    let var_7 = 31994u << ((~(~1u) >> (~abs(_wgslsmith_sub_u32(u_input.c.x, u_input.c.x)) % 32u)) % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(var_2.a, _wgslsmith_f_op_f32(311f + var_3.b.a), vec4<u32>(_wgslsmith_add_u32(8662u, var_7), var_7, ~39845u, min(u_input.e.x, 32163u)), _wgslsmith_f_op_vec2_f32(trunc(var_2.a.xx)));
}

