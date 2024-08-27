struct Struct_1 {
    a: bool,
    b: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec2<i32>,
    d: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: i32,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: u32,
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

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> vec3<i32> {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -360f);
    var var_1 = Struct_3(u_input.b.x, 34866i, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -424f), _wgslsmith_f_op_f32(f32(-1f) * -874f)))), _wgslsmith_f_op_f32(f32(-1f) * -1948f), _wgslsmith_f_op_f32(ceil(-1000f))));
    let var_2 = Struct_2(Struct_1(any(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true))), ~firstLeadingBit(u_input.b.xwz)), ~var_1.a << (u_input.b.x % 32u), vec2<i32>(~var_1.b >> (abs(_wgslsmith_mod_u32(4294967295u, u_input.b.x)) % 32u), _wgslsmith_sub_i32(min(1i, u_input.a), _wgslsmith_mod_i32(~(-29229i), var_1.b))), Struct_1(false, vec3<u32>(~1u, ~56390u, _wgslsmith_sub_u32(~u_input.b.x, 0u))));
    var_0 = _wgslsmith_f_op_f32(-var_1.c.x);
    var_1 = Struct_3(0u, -23311i, var_1.c);
    return -vec3<i32>(14138i >> (u_input.b.x % 32u), min(-u_input.a, 1i), var_2.c.x);
}

fn func_2(arg_0: Struct_3) -> vec2<f32> {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(trunc(-246f)) >= 261f, ~(~u_input.b.xxx & vec3<u32>(u_input.b.x, _wgslsmith_mult_u32(13803u, 30913u), 31092u)));
    let var_1 = var_0.a & !all(select(!vec3<bool>(false, var_0.a, var_0.a), vec3<bool>(false, true, var_0.a), true));
    var var_2 = select(~func_3(), -firstTrailingBit(vec3<i32>(47696i, u_input.d, 23931i) << (var_0.b % vec3<u32>(32u))), -1890f == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(634f)))) << (abs((var_0.b << (vec3<u32>(9934u, 1u, 48118u) % vec3<u32>(32u))) >> (vec3<u32>(select(4294967295u, 4817u, var_0.a), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, var_0.b.x), vec2<u32>(35652u, 1u)), ~var_0.b.x) % vec3<u32>(32u))) % vec3<u32>(32u));
    let var_3 = ~(~firstLeadingBit(u_input.b));
    var var_4 = Struct_1(!var_1, var_3.xzw);
    return _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-arg_0.c.x), arg_0.c.x) * _wgslsmith_f_op_vec2_f32(arg_0.c.yz - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(sign(arg_0.c.xz)), _wgslsmith_f_op_vec2_f32(-arg_0.c.zy))))));
}

fn func_4(arg_0: u32, arg_1: vec2<f32>, arg_2: vec4<i32>) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.x, arg_1.x));
    var var_1 = vec3<bool>(!(!all(vec4<bool>(true, true, false, false))), false, true);
    var var_2 = !var_1.xy;
    let var_3 = _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(~vec2<u32>(reverseBits(0u), 0u), u_input.b.wy), ~(~(~u_input.b.yz)));
    var_1 = vec3<bool>(all(vec4<bool>(any(var_1.xx), var_1.x, var_1.x, ~arg_0 >= _wgslsmith_dot_vec3_u32(u_input.b.wyx, vec3<u32>(var_3, 4294967295u, 32041u)))), true, true);
    return Struct_3(0u, -2147483647i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.x, _wgslsmith_f_op_f32(arg_1.x + var_0.x), -189f))));
}

fn func_5(arg_0: vec3<i32>, arg_1: Struct_3, arg_2: bool) -> Struct_2 {
    let var_0 = (((any(vec3<bool>(arg_2, true, true)) && true) | any(!vec4<bool>(false, arg_2, false, arg_2))) == true) == true;
    var var_1 = _wgslsmith_f_op_f32(-arg_1.c.x);
    let var_2 = !(~_wgslsmith_dot_vec4_i32(~vec4<i32>(arg_1.b, 8389i, -2147483647i, arg_1.b), vec4<i32>(0i, arg_1.b, 16397i, 46049i) ^ vec4<i32>(u_input.d, -1i, 2147483647i, 78878i)) <= _wgslsmith_add_i32(arg_1.b, -2147483647i));
    let var_3 = arg_0.x <= -arg_0.x;
    var var_4 = Struct_2(Struct_1(true, ~(~(vec3<u32>(arg_1.a, 18947u, arg_1.a) | vec3<u32>(u_input.b.x, u_input.b.x, arg_1.a)))), u_input.b.x, vec2<i32>(~abs(23515i), countOneBits(abs(-arg_0.x))), Struct_1(var_0, _wgslsmith_mod_vec3_u32(firstTrailingBit(u_input.b.xwx), u_input.b.yzx)));
    return Struct_2(var_4.d, u_input.b.x, -abs(~vec2<i32>(arg_0.x, -4331i)), var_4.a);
}

fn func_1(arg_0: i32, arg_1: Struct_1, arg_2: Struct_3) -> f32 {
    let var_0 = func_5(abs(-vec3<i32>(2147483647i, arg_2.b, 1i)), func_4(~_wgslsmith_dot_vec2_u32(vec2<u32>(64549u, u_input.b.x), arg_1.b.xz) | _wgslsmith_mult_u32(~u_input.b.x, ~1u), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(func_2(Struct_3(1u, arg_2.b, arg_2.c))), arg_2.c.zz, !select(true, false, true))), vec4<i32>(2147483647i, ~u_input.d, countOneBits(~16482i), arg_0)), false);
    let var_1 = vec2<i32>(firstTrailingBit(arg_2.b), firstTrailingBit(var_0.c.x));
    let var_2 = arg_2.a;
    return 1039f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-967f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(2147483647i, Struct_1(false, vec3<u32>(642u, 16615u, 22459u)), Struct_3(27998u, u_input.c.x, vec3<f32>(-276f, 407f, 367f))))))), -824f, _wgslsmith_f_op_f32(max(143f, -513f)));
    var var_1 = var_0.x;
    var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_vec2_f32(func_2(Struct_3(u_input.b.x, (u_input.d | u_input.c.x) & -1i, vec3<f32>(-232f, _wgslsmith_f_op_f32(abs(var_0.x)), var_0.x)))).x));
    let var_2 = var_0.x;
    var var_3 = u_input.b.xxw;
    var var_4 = func_5(vec3<i32>(_wgslsmith_div_i32(u_input.c.x, -u_input.c.x), -1i, -1i), Struct_3(min(select(~10222u, 1u, true), u_input.b.x), _wgslsmith_mult_i32(u_input.c.x, reverseBits(~u_input.d)), var_0), all(select(vec2<bool>(any(vec2<bool>(true, true)), true), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), true), true), all(vec4<bool>(false, true, true, true)))));
    let var_5 = vec2<bool>(all(!select(select(vec4<bool>(var_4.d.a, true, var_4.d.a, var_4.a.a), vec4<bool>(var_4.d.a, false, var_4.d.a, var_4.d.a), false), vec4<bool>(var_4.d.a, false, var_4.d.a, var_4.a.a), vec4<bool>(var_4.a.a, true, var_4.d.a, false))), false);
    var_4 = Struct_2(Struct_1(true, vec3<u32>(22335u | (var_3.x ^ u_input.b.x), _wgslsmith_div_u32(var_4.d.b.x, 66532u & var_3.x), ~1u)), _wgslsmith_dot_vec2_u32(~var_3.yy, ~_wgslsmith_mult_vec2_u32(_wgslsmith_add_vec2_u32(var_3.yx, u_input.b.xz), vec2<u32>(var_4.a.b.x, 0u))), vec2<i32>(~(-firstTrailingBit(-2147483647i)), _wgslsmith_mult_i32(~u_input.a, ~u_input.d)), Struct_1(!var_4.a.a, _wgslsmith_add_vec3_u32(u_input.b.xzw, abs(_wgslsmith_add_vec3_u32(u_input.b.wxw, var_4.d.b)))));
    var var_6 = _wgslsmith_f_op_vec3_f32(-var_0);
    let x = u_input.a;
    s_output = StorageBuffer(var_4.d.b, -_wgslsmith_sub_vec3_i32(~vec3<i32>(u_input.c.x, 14568i, var_4.c.x), vec3<i32>(u_input.a, var_4.c.x, 20061i)) | -max(vec3<i32>(1i, -1i, var_4.c.x), _wgslsmith_sub_vec3_i32(vec3<i32>(-9021i, -16291i, -2147483647i), vec3<i32>(-1i, var_4.c.x, var_4.c.x))), _wgslsmith_dot_vec2_u32(~(~firstTrailingBit(var_4.d.b.zy)), u_input.b.xx));
}

