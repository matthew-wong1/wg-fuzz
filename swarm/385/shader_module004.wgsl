struct Struct_1 {
    a: vec4<u32>,
    b: u32,
    c: vec4<i32>,
    d: i32,
}

struct Struct_2 {
    a: bool,
    b: vec2<i32>,
    c: f32,
    d: i32,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec2<bool>,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -7943i;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_1(arg_0: vec3<i32>, arg_1: vec4<i32>) -> f32 {
    let var_0 = Struct_2(true, ~arg_0.zy, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -297f))))))), -17650i);
    var var_1 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-619f - _wgslsmith_div_f32(196f, -462f)) - var_0.c) > -831f, arg_0.zy | arg_1.zy, 444f, abs(~(~(-36895i))));
    let var_2 = arg_0.x;
    let var_3 = firstLeadingBit(~min(select(vec3<u32>(19491u, u_input.b.x, 64580u), vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x), false) >> (~vec3<u32>(4294967295u, u_input.b.x, 57147u) % vec3<u32>(32u)), vec3<u32>(abs(41734u), _wgslsmith_mod_u32(u_input.b.x, u_input.b.x), 1u)));
    var var_4 = -1004f;
    return _wgslsmith_f_op_f32(var_1.c - _wgslsmith_f_op_f32(max(-585f, 2600f)));
}

fn func_2(arg_0: Struct_2, arg_1: i32) -> f32 {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(arg_0.c + _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.c * arg_0.c), 1407f), 1458f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1199f) * _wgslsmith_f_op_f32(max(-121f, -834f))) - arg_0.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.c - _wgslsmith_f_op_f32(-211f * _wgslsmith_f_op_f32(f32(-1f) * -302f)))));
    global0 = reverseBits(0i);
    global0 = -(countOneBits(1i) & arg_0.d);
    var var_1 = vec2<bool>(u_input.b.x >= u_input.b.x, false);
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0) - var_0) * _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1140f, _wgslsmith_f_op_f32(arg_0.c - -103f), _wgslsmith_f_op_f32(exp2(var_0.x)))))) - var_0);
    return arg_0.c;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool, arg_3: Struct_3) -> f32 {
    var var_0 = _wgslsmith_mod_i32(_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(arg_0.c.xy | vec2<i32>(u_input.a, u_input.a), vec2<i32>(49942i, -31144i) >> (arg_1.a.yz % vec2<u32>(32u))) << (arg_0.b % 32u), reverseBits(2147483647i)), ~abs(arg_0.d) | reverseBits(abs(~28335i)));
    global0 = _wgslsmith_sub_i32(arg_1.c.x, arg_1.d);
    var var_1 = arg_2;
    var_1 = false;
    global0 = ~arg_1.d;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.a.x))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(-1000f, arg_3.a.x)))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~(-26067i);
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_1(vec3<i32>(u_input.a, u_input.a, max(u_input.a, 1i)), -vec4<i32>(u_input.a, u_input.a, u_input.a, -11197i))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(vec3<i32>(0i, u_input.a, u_input.a), min(vec4<i32>(-46563i, -2147483647i, u_input.a, -28625i), vec4<i32>(-86737i, -1i, -2147483647i, u_input.a)))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(810f * 783f), _wgslsmith_f_op_f32(-966f + -189f), false)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(214f + -2035f))))));
    let var_1 = ~countOneBits(u_input.a);
    let var_2 = true;
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(func_2(Struct_2(true, max(~vec2<i32>(var_1, u_input.a), countOneBits(vec2<i32>(15084i, u_input.a))), var_0.x, ~var_1 >> (u_input.b.x % 32u)), _wgslsmith_mult_i32(var_1, -15621i) << (~_wgslsmith_sub_u32(4294967295u, u_input.b.x) % 32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-914f * var_0.x)), _wgslsmith_f_op_f32(func_3(Struct_1(_wgslsmith_clamp_vec4_u32(vec4<u32>(8078u, u_input.b.x, 4294967295u, 1u), select(vec4<u32>(u_input.b.x, 16554u, 50014u, 6946u), vec4<u32>(4294967295u, u_input.b.x, u_input.b.x, 1u), var_2), vec4<u32>(0u, u_input.b.x, 5989u, 9416u) | vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x)), 42565u, _wgslsmith_mult_vec4_i32(-vec4<i32>(0i, u_input.a, var_1, 1i), -vec4<i32>(u_input.a, u_input.a, var_1, -2147483647i)), ~(-68584i)), Struct_1(abs(vec4<u32>(72523u, u_input.b.x, u_input.b.x, 62531u) ^ vec4<u32>(0u, u_input.b.x, u_input.b.x, 41410u)), 1u, vec4<i32>(var_1 ^ -14040i, u_input.a, reverseBits(48507i), -28069i), u_input.a), var_2, Struct_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-143f, var_0.x)), vec2<bool>(var_2, all(vec2<bool>(var_2, var_2))), _wgslsmith_clamp_vec4_u32(vec4<u32>(53987u, u_input.b.x, 4294967295u, 31472u), _wgslsmith_mult_vec4_u32(vec4<u32>(79972u, u_input.b.x, 4294967295u, u_input.b.x), vec4<u32>(1u, 4294967295u, u_input.b.x, 0u)), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, 4294967295u, 0u), vec4<u32>(2136u, 77074u, 27013u, 20631u)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0.x, 261f, 1399f, var_0.x))), 371i);
}

