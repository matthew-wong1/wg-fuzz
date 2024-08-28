struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: bool,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
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

var<private> global0: Struct_1 = Struct_1(48941i);

var<private> global1: Struct_1;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: u32) -> bool {
    global1 = Struct_1(-_wgslsmith_dot_vec2_i32(firstTrailingBit(max(u_input.b.yw, vec2<i32>(global0.a, -33815i))), u_input.b.ww));
    var var_0 = !(!select(true, any(select(vec2<bool>(arg_1, arg_1), vec2<bool>(false, false), vec2<bool>(true, true))), arg_1));
    var_0 = !arg_1;
    var var_1 = u_input.b.yy & vec2<i32>(-(~(i32(-1i) * -47675i)), i32(-1i) * -1i);
    var var_2 = u_input.a;
    return true;
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1(global0.a);
    global0 = Struct_1(i32(-1i) * -19535i);
    let var_1 = vec2<bool>(true, true);
    let var_2 = Struct_2(Struct_1(-_wgslsmith_mod_i32(firstTrailingBit(-34391i), min(global0.a, -15306i))), var_0, select(func_3(Struct_1(~var_0.a), all(select(vec3<bool>(var_1.x, true, var_1.x), vec3<bool>(var_1.x, false, false), vec3<bool>(false, var_1.x, true))), u_input.a), var_1.x, !var_1.x), !all(vec4<bool>(var_1.x, true, true, var_1.x)), 701f);
    global1 = Struct_1(~_wgslsmith_mod_i32(16324i, -2147483647i));
    return var_0;
}

fn func_1() -> i32 {
    var var_0 = func_2();
    let var_1 = func_2();
    var_0 = Struct_1(var_1.a | reverseBits(~(~global0.a)));
    var var_2 = ~_wgslsmith_add_vec3_i32(_wgslsmith_mult_vec3_i32(u_input.b.yyx, min(u_input.b.wyx, vec3<i32>(61459i, var_1.a, var_0.a) ^ vec3<i32>(-2147483647i, var_1.a, global1.a))), _wgslsmith_mod_vec3_i32(vec3<i32>(_wgslsmith_mult_i32(var_0.a, var_0.a), 1i, _wgslsmith_sub_i32(global1.a, -8524i)), u_input.b.yyz));
    var_2 = vec3<i32>(~u_input.b.x, -_wgslsmith_mod_i32(var_0.a, -4280i) ^ (-max(var_2.x, var_0.a) & firstTrailingBit(_wgslsmith_mod_i32(global0.a, -1i))), -func_2().a);
    return _wgslsmith_dot_vec2_i32(abs(u_input.b.zz >> (min(~vec2<u32>(37381u, u_input.a), firstTrailingBit(vec2<u32>(u_input.a, 1u))) % vec2<u32>(32u))), abs(vec2<i32>(_wgslsmith_add_i32(-var_1.a, _wgslsmith_dot_vec4_i32(u_input.b, vec4<i32>(global0.a, 2147483647i, u_input.b.x, 0i))), _wgslsmith_div_i32(i32(-1i) * -1i, -7768i))));
}

fn func_4(arg_0: vec4<i32>) -> vec2<i32> {
    global1 = func_2();
    return vec2<i32>(_wgslsmith_mod_i32(_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(arg_0.ww, vec2<i32>(global0.a, 13396i)), arg_0.xw ^ arg_0.xx), -1i), func_2().a), select(~(~(-global1.a)), abs(_wgslsmith_mod_i32(~arg_0.x, ~(-35722i))), firstLeadingBit(reverseBits(1i)) >= (~u_input.b.x ^ -global1.a)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b.xzy;
    let var_1 = func_4(-vec4<i32>(func_1(), ~4839i, 4297i, ~1i)) | vec2<i32>(-_wgslsmith_mult_i32(1i, -2147483647i), 0i);
    var var_2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1475f)) - -1315f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -384f) + _wgslsmith_f_op_f32(sign(1568f)))) * -643f)));
    var var_3 = global0.a;
    let var_4 = u_input.b.zxx;
    let var_5 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(step(1255f, 1000f)), 1f), vec2<f32>(-280f, -1000f))))));
    let x = u_input.a;
    s_output = StorageBuffer(-1634f, _wgslsmith_mod_u32(_wgslsmith_mult_u32(~_wgslsmith_mod_u32(39257u, 62240u), 7634u & min(u_input.a, 4294967295u)), 5363u));
}

