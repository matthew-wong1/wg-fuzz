struct Struct_1 {
    a: vec3<bool>,
    b: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: u32,
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

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_1() -> Struct_1 {
    return Struct_1(vec3<bool>(true, true, true), ~(~firstLeadingBit(u_input.d)) == 38313u);
}

fn func_3() -> i32 {
    var var_0 = func_1();
    return _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(firstLeadingBit(vec2<i32>(-1i) * -vec2<i32>(36854i, 2147483647i)), firstLeadingBit(vec2<i32>(~u_input.c, ~u_input.c)), countOneBits(vec2<i32>(43507i, 0i) & _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.c, u_input.c), vec2<i32>(-30546i, -20475i)))), _wgslsmith_sub_vec2_i32(_wgslsmith_add_vec2_i32(-vec2<i32>(u_input.c, u_input.c), vec2<i32>(-2147483647i, u_input.c)) << (max(u_input.a.zz, _wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, u_input.a.x), u_input.a.zz)) % vec2<u32>(32u)), vec2<i32>(u_input.c, u_input.c)));
}

fn func_2() -> f32 {
    let var_0 = func_1();
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(199f, -1474f))))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1126f, 1000f)) * _wgslsmith_f_op_f32(min(-729f, 108f))) + 151f) + -260f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(372f + -1202f) + 883f)) * 215f), 269f);
    let var_2 = var_0;
    var var_3 = _wgslsmith_div_i32(-34354i, func_3());
    let var_4 = !select(vec3<bool>(false, var_2.a.x, any(select(var_2.a, var_0.a, var_0.a))), var_0.a, !(!var_0.a));
    return _wgslsmith_div_f32(-480f, 381f);
}

fn func_4(arg_0: u32, arg_1: vec2<f32>, arg_2: Struct_1, arg_3: vec4<u32>) -> Struct_1 {
    var var_0 = 1i;
    var_0 = _wgslsmith_sub_i32(reverseBits((_wgslsmith_mult_i32(u_input.c, u_input.c) << (~0u % 32u)) ^ -22808i), ~(-u_input.c) & u_input.c);
    let var_1 = arg_2;
    var var_2 = ~arg_3;
    var_2 = max(~abs(~vec4<u32>(arg_0, var_2.x, var_2.x, 4294967295u)), ~vec4<u32>(u_input.b, _wgslsmith_add_u32(~0u, _wgslsmith_dot_vec2_u32(u_input.a.zz, var_2.yy)), _wgslsmith_dot_vec4_u32(arg_3, vec4<u32>(arg_0, u_input.d, arg_0, 23728u)), firstLeadingBit(arg_0)));
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    let var_1 = func_1();
    let var_2 = func_1();
    let var_3 = func_4(firstLeadingBit(u_input.a.x), vec2<f32>(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) + _wgslsmith_f_op_f32(func_2())) - 530f)), Struct_1(vec3<bool>(false, false, true), all(select(!vec4<bool>(true, false, var_1.b, var_2.a.x), vec4<bool>(var_2.b, false, false, false), var_1.a.x & false))), abs(u_input.a) & ~vec4<u32>(~u_input.a.x, u_input.a.x, ~12390u, u_input.a.x));
    let var_4 = var_3;
    let var_5 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -982f), _wgslsmith_clamp_vec2_u32(_wgslsmith_sub_vec2_u32(u_input.a.yy, abs(_wgslsmith_add_vec2_u32(u_input.a.xz, u_input.a.xw))), vec2<u32>(59555u | u_input.a.x, abs(u_input.b)) | ~_wgslsmith_sub_vec2_u32(u_input.a.wx, u_input.a.zy), select(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.b, u_input.b), u_input.a.ww)), _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.b, u_input.d), u_input.a.xx, u_input.a.wy) << ((u_input.a.yy ^ vec2<u32>(u_input.d, 4294967295u)) % vec2<u32>(32u)), false)), 19365u);
}

