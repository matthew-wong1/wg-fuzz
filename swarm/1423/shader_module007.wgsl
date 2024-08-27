struct Struct_1 {
    a: vec2<bool>,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: bool,
    d: Struct_1,
    e: vec2<i32>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_1,
    c: vec4<f32>,
}

struct Struct_4 {
    a: vec2<bool>,
}

struct Struct_5 {
    a: f32,
    b: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: vec4<i32>,
    d: vec2<u32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: vec3<i32>, arg_3: f32) -> vec4<u32> {
    let var_0 = abs(~reverseBits(~(~29559u)));
    let var_1 = -(~_wgslsmith_mult_vec4_i32(_wgslsmith_add_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(arg_1.b, arg_1.b, -40026i, arg_2.x), vec4<i32>(-14901i, -2147483647i, 0i, arg_0)), vec4<i32>(-67436i, 0i, 2870i, arg_1.b) >> (vec4<u32>(0u, var_0, var_0, 15407u) % vec4<u32>(32u))), vec4<i32>(arg_1.b, -arg_0, 18857i ^ arg_2.x, firstTrailingBit(0i))));
    let var_2 = Struct_2(Struct_1(vec2<bool>(true, arg_1.a.x), arg_1.b), -61172i, var_0 <= 15909u, arg_1, vec2<i32>(arg_1.b, 2147483647i));
    let var_3 = var_2;
    return ~vec4<u32>(~_wgslsmith_div_u32(49298u & var_0, 4294967295u), max(var_0, max(var_0, 1u)), min(38085u, var_0), 866u);
}

fn func_2(arg_0: Struct_2, arg_1: vec2<i32>, arg_2: Struct_1, arg_3: vec4<f32>) -> vec2<u32> {
    let var_0 = true;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_3.x)));
    let var_2 = arg_1.x;
    let var_3 = ~firstTrailingBit(func_3(arg_0.d.b, arg_2, max(vec3<i32>(0i, arg_0.b, -24457i), _wgslsmith_add_vec3_i32(vec3<i32>(arg_0.b, 12285i, u_input.a.x), vec3<i32>(arg_1.x, 2147483647i, arg_2.b))), _wgslsmith_f_op_f32(f32(-1f) * -552f)));
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.x + arg_3.x)) + arg_3.x))) * 924f);
    return ~var_3.zy;
}

fn func_1(arg_0: Struct_3, arg_1: vec2<bool>, arg_2: vec2<bool>, arg_3: bool) -> f32 {
    let var_0 = func_2(Struct_2(arg_0.b, -2147483647i, arg_2.x, Struct_1(arg_1, u_input.a.x), -vec2<i32>(arg_0.b.b, arg_0.b.b)), vec2<i32>(-3717i, _wgslsmith_mult_i32(0i, _wgslsmith_mult_i32(1i, -7565i & u_input.a.x))), arg_0.b, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_div_f32(arg_0.a.x, arg_0.a.x), _wgslsmith_f_op_f32(ceil(1071f)), 995f, 1469f))) - arg_0.c));
    var var_1 = Struct_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(960f, _wgslsmith_f_op_f32(arg_0.a.x * arg_0.c.x), arg_3)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.c.x, -255f)))), false);
    var_1 = Struct_5(-256f, true);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(927f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(342f - 1436f) - _wgslsmith_f_op_f32(round(-1000f)))), _wgslsmith_f_op_f32(487f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_1(Struct_3(vec4<f32>(299f, -1000f, -788f, -820f), Struct_1(vec2<bool>(true, false), 0i), vec4<f32>(-4588f, 1000f, 757f, 714f)), vec2<bool>(false, false), vec2<bool>(false, false), true)), _wgslsmith_f_op_f32(max(-1241f, -1240f)), true)))), all(vec3<bool>(_wgslsmith_f_op_f32(func_1(Struct_3(vec4<f32>(-898f, 746f, 250f, -1950f), Struct_1(vec2<bool>(false, false), -53711i), vec4<f32>(-366f, -1000f, -1918f, -560f)), vec2<bool>(false, false), vec2<bool>(false, false), false)) < _wgslsmith_f_op_f32(f32(-1f) * -648f), true, false))));
    var_0 = -1594f;
    let var_1 = reverseBits(_wgslsmith_mult_i32(u_input.a.x & firstTrailingBit(-18157i), _wgslsmith_dot_vec4_i32(vec4<i32>(-14002i, u_input.a.x, u_input.a.x, u_input.a.x), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a.x, -6712i, u_input.a.x, u_input.a.x), vec4<i32>(u_input.a.x, 2147483647i, u_input.a.x, u_input.a.x))))) >= -2206i;
    var var_2 = vec2<u32>(_wgslsmith_sub_u32(~min(4775u, 1u), ~4294967295u), func_3(u_input.a.x, Struct_1(!select(vec2<bool>(var_1, true), vec2<bool>(var_1, var_1), vec2<bool>(false, false)), -u_input.a.x), vec3<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(1i, -2147483647i, u_input.a.x, 2147483647i), vec4<i32>(10847i, u_input.a.x, u_input.a.x, 80660i)), vec4<i32>(-2147483647i, u_input.a.x, 0i, u_input.a.x)), 1i, u_input.a.x), _wgslsmith_f_op_f32(f32(-1f) * -638f)).x);
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(-vec2<i32>(1i, 1i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(885f + -855f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -303f) * _wgslsmith_f_op_f32(f32(-1f) * -724f))))), vec4<i32>(~2147483647i, _wgslsmith_dot_vec2_i32(u_input.a << ((vec2<u32>(15724u, var_2.x) ^ vec2<u32>(var_2.x, var_2.x)) % vec2<u32>(32u)), u_input.a), u_input.a.x, min(~(~u_input.a.x), u_input.a.x)), func_2(Struct_2(Struct_1(vec2<bool>(false, var_1), _wgslsmith_dot_vec4_i32(vec4<i32>(41244i, u_input.a.x, u_input.a.x, 1i), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -71612i))), u_input.a.x, var_1, Struct_1(vec2<bool>(false, var_1), select(u_input.a.x, u_input.a.x, true)), u_input.a), u_input.a, Struct_1(vec2<bool>(true, true || var_1), -abs(0i)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(-779f, -1000f, -1367f, -672f) * _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(908f, 2300f, -767f, -1000f)))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(-758f, -435f, -1474f, -160f) * vec4<f32>(294f, -730f, 886f, 1011f))))))), firstLeadingBit(_wgslsmith_mod_vec3_i32(~_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a.x, -27907i, -31494i), vec3<i32>(u_input.a.x, -49528i, u_input.a.x)), _wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, 13388i), vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)), vec3<i32>(-35756i, 1i, 0i)))));
}

