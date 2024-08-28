struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2() -> Struct_2 {
    return Struct_2(u_input.b.wwx, 1u);
}

fn func_3(arg_0: Struct_2, arg_1: f32, arg_2: u32) -> u32 {
    var var_0 = arg_1;
    let var_1 = arg_0;
    var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(-593f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-783f, _wgslsmith_f_op_f32(-arg_1))), _wgslsmith_f_op_f32(f32(-1f) * -267f))))));
    let var_2 = false;
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1000f))));
    return _wgslsmith_div_u32(u_input.a.x << (u_input.a.x % 32u), 4294967295u);
}

fn func_1(arg_0: vec2<u32>) -> Struct_2 {
    var var_0 = ~(vec3<u32>(_wgslsmith_mult_u32(u_input.a.x, u_input.a.x) << (_wgslsmith_dot_vec2_u32(u_input.a.ww, vec2<u32>(28578u, arg_0.x)) % 32u), arg_0.x, func_3(func_2(), _wgslsmith_f_op_f32(f32(-1f) * -986f), firstLeadingBit(u_input.a.x))) & u_input.a.wxx);
    let var_1 = Struct_1(u_input.a.x);
    var var_2 = ~min(vec3<u32>(100863u, u_input.a.x, _wgslsmith_sub_u32(~18844u, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.x, u_input.a.x, 2208u, 18527u), u_input.a))), select(~vec3<u32>(u_input.a.x, var_1.a, var_0.x), min(_wgslsmith_add_vec3_u32(u_input.a.yxz, u_input.a.yyx), ~u_input.a.wxx), vec3<bool>(true, true, 86358u > arg_0.x)));
    let var_3 = select(select(!select(vec2<bool>(false, true), vec2<bool>(true, true), false), vec2<bool>(select(all(vec3<bool>(false, false, true)), true, true), !all(vec2<bool>(false, false))), vec2<bool>(true, true)), !select(vec2<bool>(true, true), select(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false)), vec2<bool>(true, true), vec2<bool>(true, true)), false), all(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true)));
    var var_4 = all(!select(vec2<bool>(var_3.x, true), vec2<bool>(true, true), select(var_3, vec2<bool>(var_3.x, false), select(vec2<bool>(true, false), var_3, false))));
    return func_2();
}

fn func_4(arg_0: f32, arg_1: Struct_2) -> u32 {
    let var_0 = countOneBits(abs(max(u_input.a.zx, select(u_input.a.xw, ~u_input.a.zw, select(false, false, true)))));
    let var_1 = Struct_1(~0u);
    var var_2 = -26369i ^ _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(firstLeadingBit(vec2<i32>(7215i, 1i) << (u_input.a.zz % vec2<u32>(32u))), vec2<i32>(reverseBits(1i), arg_1.a.x)), max(_wgslsmith_div_vec2_i32(firstTrailingBit(vec2<i32>(-61075i, arg_1.a.x)), vec2<i32>(arg_1.a.x, u_input.b.x) | arg_1.a.zz), _wgslsmith_sub_vec2_i32(func_1(vec2<u32>(u_input.a.x, 0u)).a.zy, firstLeadingBit(vec2<i32>(-9967i, arg_1.a.x)))));
    var var_3 = ~(arg_1.a >> (vec3<u32>(~u_input.a.x | min(1u, var_1.a), var_1.a, _wgslsmith_dot_vec4_u32(~u_input.a, ~vec4<u32>(51591u, var_0.x, var_1.a, var_0.x))) % vec3<u32>(32u)));
    let var_4 = arg_1.a.x;
    return ~var_0.x;
}

fn func_5(arg_0: Struct_2, arg_1: u32, arg_2: u32) -> Struct_1 {
    let var_0 = u_input.a.xx;
    var var_1 = Struct_1(u_input.a.x);
    var var_2 = arg_0;
    var var_3 = !vec4<bool>(false, true, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(2002f)))) == _wgslsmith_f_op_f32(499f + _wgslsmith_div_f32(-241f, -246f)), !any(vec3<bool>(true, false, true)));
    let var_4 = Struct_1(~func_1(vec2<u32>(4294967295u ^ u_input.a.x, firstLeadingBit(4294967295u))).b);
    return Struct_1(~4294967295u << (var_4.a % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1000f, 1000f, 1215f)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1f, 1f, 1f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-408f, 1000f, -172f)), true)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(425f, -269f, -1385f) + vec3<f32>(724f, -453f, -109f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1056f, 1746f, 264f))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-2264f * -1497f), -859f, _wgslsmith_f_op_f32(sign(-589f))))));
    var var_1 = 19698i;
    let var_2 = Struct_2(-u_input.b.wzy, _wgslsmith_add_u32(~4294967295u, u_input.a.x));
    var_1 = select(~(-14069i), firstLeadingBit(6306i), any(select(vec4<bool>(true, true, true, true), vec4<bool>(u_input.b.x < u_input.b.x, any(vec2<bool>(false, false)), false, true), ~var_2.b > u_input.a.x)));
    var_1 = firstTrailingBit(-max(u_input.b.x, -2147483647i));
    let var_3 = u_input.a;
    var var_4 = func_5(Struct_2(~vec3<i32>(u_input.b.x, ~var_2.a.x, reverseBits(52580i)), var_3.x), min(var_3.x, func_4(477f, func_1(_wgslsmith_sub_vec2_u32(var_3.yz, vec2<u32>(var_2.b, var_2.b))))), var_2.b);
    var_1 = u_input.b.x;
    var var_5 = vec2<bool>(select(all(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, false)), true)), true, false), !(!all(select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(countOneBits(~_wgslsmith_add_u32(var_3.x, var_3.x)), ~4294967295u, var_3.x));
}

