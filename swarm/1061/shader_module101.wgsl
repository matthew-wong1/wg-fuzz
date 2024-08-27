struct Struct_1 {
    a: bool,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: u32,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_1) -> f32 {
    let var_0 = Struct_3(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(select(-740f, 104f, true))))))));
    var var_1 = vec3<bool>(true, select(u_input.c.x > _wgslsmith_div_u32(u_input.a & u_input.b.x, 74507u), all(!vec4<bool>(true, arg_0.a, false, arg_0.b)), !arg_0.b), true);
    let var_2 = select(!(!select(vec3<bool>(var_1.x, false, true), vec3<bool>(false, arg_0.b, var_1.x), !var_1.x)), vec3<bool>(var_0.a >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a) + _wgslsmith_f_op_f32(floor(420f))), !(_wgslsmith_f_op_f32(sign(104f)) >= _wgslsmith_f_op_f32(-var_0.a)), any(vec4<bool>(!arg_0.b, !arg_0.a, false, any(var_1.xz)))), arg_0.a);
    var var_3 = u_input.a << (4294967295u % 32u);
    return var_0.a;
}

fn func_2(arg_0: vec4<u32>, arg_1: vec3<i32>) -> i32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(func_3(Struct_1(false, true))), -374f)))));
    var var_1 = Struct_4(abs(69351u), select(_wgslsmith_mult_vec2_i32(_wgslsmith_div_vec2_i32(~vec2<i32>(-56723i, -1i), _wgslsmith_mult_vec2_i32(vec2<i32>(-36810i, arg_1.x), vec2<i32>(0i, -1i))), select(arg_1.xz, arg_1.yz, vec2<bool>(true, true)) | ~vec2<i32>(-2147483647i, arg_1.x)), vec2<i32>(_wgslsmith_dot_vec4_i32(~vec4<i32>(16285i, -44385i, arg_1.x, arg_1.x), ~vec4<i32>(2147483647i, arg_1.x, arg_1.x, arg_1.x)), arg_1.x), true));
    var_1 = Struct_4(abs(arg_0.x), ~_wgslsmith_mult_vec2_i32(abs(_wgslsmith_mult_vec2_i32(var_1.b, var_1.b)), -var_1.b));
    let var_2 = var_1.b.x;
    var var_3 = (~vec3<i32>(2147483647i, i32(-1i) * -51840i, var_1.b.x) & arg_1) | vec3<i32>(arg_1.x, ~var_1.b.x, ~select(-1i, firstTrailingBit(var_1.b.x), true));
    return reverseBits(countOneBits(arg_1.x));
}

fn func_1() -> Struct_3 {
    var var_0 = Struct_4(abs(48683u), vec2<i32>(~(~func_2(u_input.b, vec3<i32>(41822i, 27399i, -2147483647i))), func_2(vec4<u32>(u_input.a, u_input.a, 1u, u_input.c.x), vec3<i32>(countOneBits(-37329i), -2147483647i, _wgslsmith_mod_i32(16536i, -9094i)))));
    var var_1 = -vec4<i32>(0i, -var_0.b.x, var_0.b.x, var_0.b.x);
    var_0 = Struct_4(118474u, countOneBits(-(~max(var_1.wy, var_1.wx))));
    let var_2 = ~var_1.zz;
    var var_3 = Struct_2(Struct_1(true, any(vec3<bool>(false, true, true))));
    return Struct_3(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(1770f)), -665f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = ~_wgslsmith_add_u32(u_input.b.x << (4294967295u % 32u), _wgslsmith_dot_vec3_u32(~u_input.b.zyz, u_input.b.zxx));
    let var_2 = select(-vec4<i32>(reverseBits(54539i), ~(~(-1i)), -1i, -max(-1763i, 6899i)), _wgslsmith_mult_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(1i, 1i, 1i, 1i)), select(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true)), true), vec4<bool>(true, true, true, true), !any(vec3<bool>(false, false, true))));
    let var_3 = func_1().a;
    var var_4 = Struct_4(u_input.b.x, (_wgslsmith_add_vec2_i32(_wgslsmith_sub_vec2_i32(var_2.ww, var_2.zy), var_2.zy) ^ -_wgslsmith_add_vec2_i32(vec2<i32>(var_2.x, 5718i), vec2<i32>(-2147483647i, var_2.x))) << (u_input.b.xw % vec2<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(var_0.a - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_3, var_3)))), 2147483647i, -2147483647i, var_0.a);
}

