struct Struct_1 {
    a: u32,
    b: u32,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: vec3<bool>,
    b: bool,
    c: bool,
    d: Struct_2,
    e: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: bool,
    c: Struct_1,
}

struct Struct_5 {
    a: Struct_1,
    b: i32,
    c: Struct_3,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: i32,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec3<i32>, arg_1: u32, arg_2: f32) -> u32 {
    let var_0 = 4294967295u;
    var var_1 = !((any(vec3<bool>(true, true, true)) && (_wgslsmith_mult_i32(arg_0.x, -37893i) < u_input.c)) || !(_wgslsmith_f_op_f32(arg_2 - arg_2) != _wgslsmith_f_op_f32(-arg_2)));
    let var_2 = ~0u;
    var_1 = any(select(select(vec2<bool>(false, any(vec2<bool>(false, true))), !select(vec2<bool>(false, true), vec2<bool>(true, false), false), vec2<bool>(true, true)), vec2<bool>(true, true), !any(vec2<bool>(true, false)) || all(vec4<bool>(false, true, false, true))));
    var_1 = select(!all(vec2<bool>(true, true)), all(vec2<bool>(true, true)), true);
    return 4294967295u;
}

fn func_2() -> vec3<i32> {
    let var_0 = vec4<u32>(_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(1u, ~_wgslsmith_dot_vec4_u32(u_input.a, u_input.a), 0u, u_input.b.x)), ~1u, 14762u, _wgslsmith_mult_u32(~59826u, ~firstTrailingBit(u_input.b.x ^ u_input.a.x)));
    let var_1 = Struct_3(vec3<bool>(all(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false))) == all(vec3<bool>(true, true, true)), true, !(all(vec2<bool>(false, true)) || true)), any(!(!select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true)))), true, Struct_2(all(vec3<bool>(true, true, true))), Struct_1(var_0.x, ~func_3(u_input.e.zxx << (var_0.zxx % vec3<u32>(32u)), select(4294967295u, var_0.x, false), _wgslsmith_f_op_f32(round(1066f)))));
    let var_2 = var_1.a;
    var var_3 = _wgslsmith_mult_u32(var_0.x, _wgslsmith_mult_u32(var_1.e.b, 0u) | ~firstTrailingBit(_wgslsmith_sub_u32(var_1.e.a, var_0.x)));
    let var_4 = _wgslsmith_div_u32(_wgslsmith_mod_u32(max(~min(1u, 14975u), 0u), ~15354u), _wgslsmith_div_u32(0u, _wgslsmith_add_u32(func_3(u_input.e.wxw, ~var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -1913f)), 1u)));
    return _wgslsmith_add_vec3_i32(~u_input.e.yzx, u_input.e.zwy);
}

fn func_1(arg_0: bool, arg_1: Struct_3, arg_2: vec4<f32>) -> bool {
    var var_0 = -13183i;
    var var_1 = arg_0;
    var var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -386f), -1151f, 539f) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_2.xzx - _wgslsmith_f_op_vec3_f32(arg_2.wwx + vec3<f32>(1231f, arg_2.x, arg_2.x))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(arg_2.wzy))))), _wgslsmith_f_op_vec3_f32(-arg_2.yzy));
    let var_3 = -300f;
    var var_4 = _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(-_wgslsmith_add_vec3_i32(-u_input.e.yxz, func_2()), _wgslsmith_mod_vec3_i32(_wgslsmith_mult_vec3_i32(u_input.e.zyx, u_input.e.yyx), firstLeadingBit(countOneBits(u_input.e.zxz)))), _wgslsmith_dot_vec2_i32(vec2<i32>(abs(-2147483647i), 1i), vec2<i32>(1i, _wgslsmith_sub_i32(-17762i << (u_input.a.x % 32u), u_input.c))));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_div_f32(896f, -930f), -219f, _wgslsmith_f_op_f32(abs(-131f)), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-225f, -504f)))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(436f, 1275f, 411f, 395f) - vec4<f32>(996f, 799f, -849f, 826f)) - _wgslsmith_f_op_vec4_f32(round(vec4<f32>(1499f, 638f, 416f, 200f))))))))));
    let var_1 = select(select(vec4<bool>(any(select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(false, false, false))), true, -1000f >= var_0.x, true), select(select(select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true), true), vec4<bool>(false, true, false, false), select(true, false, false)), vec4<bool>(true, true, true, true), true), !vec4<bool>(true, true, var_0.x == -1174f, true)), !(!vec4<bool>(func_1(true, Struct_3(vec3<bool>(true, true, true), false, true, Struct_2(false), Struct_1(u_input.d, 1u)), vec4<f32>(1000f, -632f, -1943f, var_0.x)), true, true, true)), true);
    var var_2 = 50629i;
    var_2 = firstTrailingBit(func_2().x) | (select(abs(abs(-42388i)), -_wgslsmith_sub_i32(-10325i, u_input.e.x), var_1.x) & 22887i);
    let var_3 = all(var_1.wx);
    let var_4 = var_1.xzx;
    let var_5 = select(!(!select(var_4.xx, vec2<bool>(false, false), !vec2<bool>(var_4.x, var_1.x))), var_1.ww, select(var_4.yx, select(!var_1.zw, !(!var_4.xz), vec2<bool>(true, true)), select(select(vec2<bool>(var_3, false), var_4.yx, vec2<bool>(false, var_1.x)), vec2<bool>(false == var_1.x, true), var_3)));
    var_2 = -29744i;
    var_2 = _wgslsmith_mult_i32(u_input.e.x, u_input.c);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.e, ~(~u_input.d));
}

