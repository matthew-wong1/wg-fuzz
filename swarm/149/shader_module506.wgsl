struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct Struct_3 {
    a: vec3<bool>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
    c: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 15>;

var<private> global1: vec4<bool> = vec4<bool>(true, false, true, true);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<bool>, arg_1: i32) -> vec3<bool> {
    global1 = vec4<bool>(!(!any(vec3<bool>(arg_0.x, false, false)) || (global1.x == false)), !any(vec2<bool>(true, global1.x)), true, select(true, false != ((arg_0.x & arg_0.x) & (4294967295u > u_input.a.x)), arg_0.x));
    var var_0 = vec2<u32>(~39280u, 22651u) ^ _wgslsmith_sub_vec2_u32(countOneBits(vec2<u32>(_wgslsmith_mult_u32(u_input.a.x, 4294967295u), ~31002u)), u_input.a.xx);
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-1f), -690f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-720f - 409f)))) - _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-1401f, 1000f, -401f), _wgslsmith_f_op_vec3_f32(vec3<f32>(-421f, 845f, 539f) - vec3<f32>(545f, 1453f, -650f))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-487f, 567f, 766f))))))));
    let var_2 = _wgslsmith_div_u32(~(~reverseBits(firstTrailingBit(1u))), ~(~(~(~4294967295u))));
    var_0 = ~(~(~select(u_input.a.xw, u_input.a.yy, vec2<bool>(arg_0.x, global1.x)) & (u_input.a.yx >> (vec2<u32>(1u, u_input.a.x) % vec2<u32>(32u)))));
    return vec3<bool>(!all(arg_0), !(!(!any(arg_0.zyx))), true);
}

fn func_2(arg_0: bool, arg_1: vec4<bool>) -> Struct_2 {
    global1 = !select(vec4<bool>(global1.x, all(!arg_1), true, true), arg_1, arg_1.x);
    global1 = vec4<bool>(all(!(!global1.yzy)), arg_0, arg_1.x, true);
    let var_0 = !vec3<bool>(all(vec4<bool>(arg_0, global1.x, arg_1.x, global1.x)) == arg_0, all(vec2<bool>(any(vec3<bool>(true, arg_1.x, arg_0)), false)), any(func_3(arg_1, 37412i)));
    return Struct_2(arg_1);
}

fn func_1(arg_0: vec4<i32>, arg_1: i32, arg_2: vec4<bool>) -> bool {
    global1 = vec4<bool>(arg_2.x, true, false, true);
    var var_0 = Struct_1(vec3<f32>(1f, 1f, 1f));
    var var_1 = func_2(all(vec4<bool>(!arg_2.x, !global1.x, select(false, false, true), true)) | !(!global1.x), !arg_2);
    global1 = var_1.a;
    var var_2 = u_input.a.x;
    return any(vec4<bool>(all(arg_2.xy), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(var_0.a.x, var_0.a.x)))) <= _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(var_0.a.x, var_0.a.x)))), var_1.a.x, global1.x));
}

fn func_4(arg_0: Struct_2) -> Struct_3 {
    global1 = arg_0.a;
    global1 = func_2(true, select(!vec4<bool>(false, global1.x, true, true), func_2(any(vec2<bool>(arg_0.a.x, true)), select(select(vec4<bool>(arg_0.a.x, true, false, false), arg_0.a, arg_0.a), !vec4<bool>(arg_0.a.x, global1.x, true, global1.x), arg_0.a)).a, !select(vec4<bool>(false, true, false, global1.x), !arg_0.a, true))).a;
    let var_0 = Struct_3(vec3<bool>(true, arg_0.a.x, all(func_2(any(arg_0.a), func_2(false, vec4<bool>(false, arg_0.a.x, true, global1.x)).a).a)));
    global1 = select(!vec4<bool>(any(vec4<bool>(false, global1.x, arg_0.a.x, arg_0.a.x)), true, !var_0.a.x, true), !select(arg_0.a, vec4<bool>(func_3(vec4<bool>(var_0.a.x, true, true, true), 1i).x, var_0.a.x, false, arg_0.a.x || false), vec4<bool>(true | arg_0.a.x, arg_0.a.x, arg_0.a.x, all(vec2<bool>(var_0.a.x, arg_0.a.x)))), !(!vec4<bool>(arg_0.a.x, func_2(false, arg_0.a).a.x, true, true)));
    let var_1 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(-457f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -850f))) * _wgslsmith_f_op_f32(-1519f + -629f)), _wgslsmith_f_op_f32(-1000f - 1106f)));
    return Struct_3(var_0.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    var var_1 = func_4(Struct_2(vec4<bool>(var_0 & global1.x, true, true, func_1(vec4<i32>(16168i, 30658i, 2147483647i, 0i), _wgslsmith_add_i32(0i, -8478i), select(vec4<bool>(true, false, var_0, true), vec4<bool>(var_0, true, true, false), true)))));
    var var_2 = Struct_1(vec3<f32>(2128f, _wgslsmith_f_op_f32(1f - 149f), 707f));
    var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-var_2.a), vec3<f32>(var_2.a.x, var_2.a.x, 1793f))))) - _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(640f, 108f, -955f) - var_2.a), var_2.a), _wgslsmith_f_op_vec3_f32(select(var_2.a, _wgslsmith_f_op_vec3_f32(vec3<f32>(-1481f, 452f, 521f) * vec3<f32>(1079f, var_2.a.x, 2288f)), true)))));
    let var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.a.x, var_2.a.x, var_2.a.x) * vec3<f32>(var_2.a.x, var_2.a.x, 323f))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_u32(~u_input.a.yzw, _wgslsmith_clamp_vec3_u32(abs(u_input.a.yyx), vec3<u32>(max(u_input.a.x, 0u), _wgslsmith_clamp_u32(30169u, u_input.a.x, 0u), ~u_input.a.x), u_input.a.xxx)), ~vec2<i32>(firstLeadingBit(-231i), _wgslsmith_sub_i32(firstTrailingBit(-1i), -42818i << (u_input.a.x % 32u))));
}

