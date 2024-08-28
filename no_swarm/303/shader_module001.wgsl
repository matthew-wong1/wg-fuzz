struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: vec3<i32>,
    b: bool,
    c: i32,
    d: u32,
}

struct Struct_4 {
    a: vec4<bool>,
    b: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
    d: vec4<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: bool, arg_1: Struct_4) -> i32 {
    return _wgslsmith_clamp_i32(u_input.e.x, _wgslsmith_mod_i32(u_input.a.x, u_input.e.x), -(i32(-1i) * -13520i)) >> (_wgslsmith_sub_u32(u_input.b, u_input.c) % 32u);
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_4, arg_2: Struct_1) -> Struct_2 {
    let var_0 = arg_2;
    var var_1 = any(arg_1.a.wyy);
    let var_2 = u_input.a.xy;
    let var_3 = arg_1.b;
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(100f, -196f, true)) + -291f), -1277f)))));
    return Struct_2(firstLeadingBit(firstTrailingBit(func_3(!arg_1.b, Struct_4(vec4<bool>(true, arg_1.a.x, false, arg_1.b), var_3)))));
}

fn func_4(arg_0: Struct_2, arg_1: vec3<bool>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1217f)));
    var var_1 = arg_1.x;
    let var_2 = Struct_3(u_input.a, !arg_1.x, arg_0.a, _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_div_u32(1u, u_input.c << (u_input.b % 32u)), u_input.d.x, select(reverseBits(0u), abs(u_input.b), any(vec3<bool>(false, arg_1.x, arg_1.x)))), u_input.d.xxy));
    let var_3 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-398f, 1073f)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, -940f))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(370f, -695f))), _wgslsmith_div_vec2_f32(vec2<f32>(-466f, -117f), vec2<f32>(1722f, var_0)), select(arg_1.xz, arg_1.yx, arg_1.zy)))))));
    var var_4 = all(vec2<bool>(any(select(!arg_1.yx, vec2<bool>(true, arg_1.x), select(arg_1.zy, vec2<bool>(true, var_2.b), arg_1.x))), arg_1.x));
    return Struct_1(min(firstLeadingBit(42494u), _wgslsmith_dot_vec4_u32(u_input.d, u_input.d)));
}

fn func_5(arg_0: f32, arg_1: Struct_4, arg_2: Struct_1) -> u32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, -1000f, 381f, _wgslsmith_f_op_f32(min(arg_0, 959f)))));
    var var_1 = u_input.b;
    let var_2 = ~_wgslsmith_add_i32(-2147483647i, -1i >> (arg_2.a % 32u));
    let var_3 = Struct_2(u_input.e.x);
    var_1 = max(27631u, arg_2.a);
    return min((0u << (arg_2.a % 32u)) | _wgslsmith_mult_u32(max(_wgslsmith_mod_u32(4294967295u, 28102u), 1u), firstTrailingBit(~arg_2.a)), u_input.c);
}

fn func_1(arg_0: vec2<bool>, arg_1: f32, arg_2: vec3<i32>) -> f32 {
    var var_0 = ~(func_5(arg_1, Struct_4(select(vec4<bool>(arg_0.x, true, arg_0.x, false), vec4<bool>(false, false, false, false), false), all(vec4<bool>(false, true, false, true))), func_4(func_2(vec4<i32>(-1i, u_input.e.x, -9948i, -2147483647i), Struct_4(vec4<bool>(false, false, false, arg_0.x), arg_0.x), Struct_1(21256u)), vec3<bool>(false, true, true))) >> (select(_wgslsmith_dot_vec2_u32(u_input.d.yz, ~vec2<u32>(u_input.b, 79848u)), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, u_input.c), _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.b, 0u), vec2<u32>(4294967295u, u_input.d.x))), !(false & arg_0.x)) % 32u));
    var_0 = ~(~(~u_input.b));
    var var_1 = Struct_4(select(vec4<bool>(all(select(vec4<bool>(true, true, arg_0.x, arg_0.x), vec4<bool>(arg_0.x, true, false, arg_0.x), vec4<bool>(arg_0.x, true, arg_0.x, arg_0.x))), false, true, !arg_0.x), vec4<bool>(true, func_5(-1716f, Struct_4(vec4<bool>(arg_0.x, true, false, arg_0.x), arg_0.x), Struct_1(u_input.d.x)) != 47218u, false, all(vec3<bool>(false, arg_0.x, arg_0.x))), vec4<bool>(false, !any(vec4<bool>(false, true, false, arg_0.x)), arg_0.x, true)), !(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_1 - arg_1))) >= _wgslsmith_f_op_f32(min(arg_1, _wgslsmith_f_op_f32(min(-1000f, -890f))))));
    var_1 = Struct_4(vec4<bool>(!all(vec2<bool>(var_1.b, true)), any(!select(vec3<bool>(false, var_1.b, false), var_1.a.ywx, false)), any(!(!vec3<bool>(true, arg_0.x, true))), true), -9157i == _wgslsmith_sub_i32(firstTrailingBit(firstTrailingBit(41998i)), _wgslsmith_div_i32(~(-7736i), u_input.a.x)));
    var_1 = Struct_4(var_1.a, arg_0.x);
    return _wgslsmith_f_op_f32(-arg_1);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.d.wwz;
    var var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(1f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -312f) + _wgslsmith_f_op_f32(func_1(vec2<bool>(true, true), 141f, u_input.a))), -631f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1976f, 554f), vec2<f32>(1530f, 205f), true)) - vec2<f32>(1803f, 338f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-245f, 323f), vec2<f32>(1338f, 1000f)))))));
    var var_2 = Struct_2(~_wgslsmith_add_i32(_wgslsmith_add_i32(u_input.a.x, reverseBits(-2147483647i)), abs(_wgslsmith_sub_i32(u_input.a.x, 1i))));
    var var_3 = Struct_4(!select(select(vec4<bool>(true, true, false, false), select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, false), false), vec4<bool>(true, false, false, false)), !select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, true)), all(select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true)))), any(vec2<bool>(all(vec4<bool>(true, false, true, true)), true)) || true);
    let x = u_input.a;
    s_output = StorageBuffer(80673u);
}

