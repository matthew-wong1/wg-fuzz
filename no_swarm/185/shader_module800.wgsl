struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec3<bool>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
    c: i32,
    d: i32,
    e: vec2<i32>,
}

struct Struct_5 {
    a: f32,
    b: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: Struct_2;

var<private> global2: Struct_2 = Struct_2(Struct_1(-1i));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2() -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(325f, 982f)))), _wgslsmith_f_op_f32(-578f + _wgslsmith_f_op_f32(-1534f + _wgslsmith_f_op_f32(ceil(1216f))))) - 723f);
    global2 = Struct_2(global1.a);
    let var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-735f)) - _wgslsmith_div_f32(-386f, -1400f))) + _wgslsmith_f_op_f32(f32(-1f) * -335f))));
    let var_2 = Struct_1(36113i);
    global1 = Struct_2(global2.a);
    return Struct_2(global1.a);
}

fn func_3(arg_0: vec4<f32>) -> i32 {
    global0 = true;
    global1 = func_2();
    var var_0 = firstLeadingBit(_wgslsmith_sub_vec3_u32(_wgslsmith_mult_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, 0u, 86960u), select(vec3<u32>(1u, 70838u, 1u), vec3<u32>(50842u, 7643u, 4294967295u), false)), firstTrailingBit(~vec3<u32>(13479u, 1u, 1u))), min(select(vec3<u32>(4294967295u, 21353u, 34908u), vec3<u32>(0u, 0u, 22611u), vec3<bool>(false, false, true)), select(vec3<u32>(5237u, 39453u, 1u), vec3<u32>(14485u, 4294967295u, 57244u), true)) ^ ~vec3<u32>(1u, 1u, 1u)));
    let var_1 = reverseBits(~(~_wgslsmith_mod_vec4_u32(vec4<u32>(16723u, var_0.x, 0u, 25241u), vec4<u32>(var_0.x, 42007u, 0u, 29507u)) & _wgslsmith_mult_vec4_u32(countOneBits(vec4<u32>(1u, 0u, var_0.x, 37740u)), ~vec4<u32>(var_0.x, 3547u, var_0.x, var_0.x))));
    var var_2 = Struct_1(-u_input.a.x);
    return u_input.b;
}

fn func_1(arg_0: bool) -> Struct_2 {
    global0 = arg_0;
    global0 = false;
    var var_0 = ~(~(~vec3<i32>(_wgslsmith_add_i32(-10003i, u_input.a.x), 1i, u_input.a.x)));
    let var_1 = arg_0;
    let var_2 = func_2();
    return Struct_2(Struct_1(_wgslsmith_mult_i32(func_3(vec4<f32>(277f, -973f, -2020f, 359f)), _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(-2147483647i, var_0.x, var_0.x, -1i)), _wgslsmith_dot_vec4_i32(vec4<i32>(-33350i, u_input.b, var_0.x, global1.a.a), vec4<i32>(2147483647i, 5000i, 1i, var_2.a.a))))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: u32) -> Struct_2 {
    global2 = arg_1;
    var var_0 = select(select(u_input.a.zyy >> (~vec3<u32>(4294967295u, arg_2, arg_2) % vec3<u32>(32u)), _wgslsmith_mod_vec3_i32(-u_input.a.zzw, u_input.a.zzx), vec3<bool>(true, true, true)), vec3<i32>(arg_0.a.a, _wgslsmith_div_i32(-9848i, -2147483647i), u_input.b) | ~(-u_input.a.wyy), vec3<bool>(true, true, true)) | firstTrailingBit(~_wgslsmith_sub_vec3_i32(vec3<i32>(1i, global1.a.a, global2.a.a), u_input.a.yxw));
    let var_1 = _wgslsmith_div_u32(reverseBits(~arg_2), 0u) >> (arg_2 % 32u);
    var var_2 = select(~var_0.x, var_0.x, true);
    let var_3 = vec4<u32>(~50541u, _wgslsmith_mult_u32(60102u << (abs(_wgslsmith_dot_vec2_u32(vec2<u32>(17873u, var_1), vec2<u32>(26692u, arg_2))) % 32u), _wgslsmith_sub_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(35972u, var_1, arg_2, var_1), vec4<u32>(var_1, 17232u, arg_2, 4294967295u)), _wgslsmith_dot_vec4_u32(~vec4<u32>(var_1, var_1, arg_2, arg_2), _wgslsmith_add_vec4_u32(vec4<u32>(27220u, 0u, var_1, 16883u), vec4<u32>(44255u, 0u, 1u, 14947u))))), arg_2, 1u);
    return arg_1;
}

fn func_5(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: vec3<i32>, arg_3: vec2<f32>) -> vec4<i32> {
    let var_0 = func_4(Struct_2(func_2().a), Struct_2(Struct_1(-1i)), 1u << (~select(min(1u, 0u), ~34684u, true) % 32u)).a;
    var var_1 = arg_1;
    var var_2 = vec2<i32>(firstTrailingBit(func_2().a.a), -173i);
    var var_3 = func_4(Struct_2(func_2().a), func_4(func_1(true), arg_0, var_1.x), var_1.x).a;
    let var_4 = func_4(arg_0, func_1(!all(vec4<bool>(true, false, false, false)) != (countOneBits(arg_1.x) < reverseBits(var_1.x))), ~63129u).a;
    return _wgslsmith_mod_vec4_i32(-vec4<i32>(1i, 41002i, -_wgslsmith_mod_i32(0i, arg_2.x), 0i), ~u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !vec3<bool>(false, any(vec4<bool>(true, true, true, true)), true);
    let var_1 = func_5(func_4(func_1(var_0.x || true), func_2(), ~abs(26866u)), vec4<u32>(abs(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 4928u, 1u), vec3<u32>(16174u, 25507u, 62189u))), 1u, 1u, ~(~5077u)), -u_input.a.xww, vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -600f))), _wgslsmith_f_op_f32(f32(-1f) * -867f))) << ((vec4<u32>(16443u, ~1u, 28289u, _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 4294967295u, 0u), vec3<u32>(1u, 61266u, 32851u)), max(4294967295u, 4294967295u))) << (firstLeadingBit(max(_wgslsmith_add_vec4_u32(vec4<u32>(0u, 0u, 0u, 57484u), vec4<u32>(4156u, 92253u, 0u, 39073u)), select(vec4<u32>(6870u, 3914u, 47882u, 1u), vec4<u32>(4294967295u, 0u, 37578u, 0u), var_0.x))) % vec4<u32>(32u))) % vec4<u32>(32u));
    let var_2 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-291f, -143f), vec2<f32>(546f, -1236f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(579f, 580f) - vec2<f32>(188f, -511f)))))));
    var_0 = !(!select(!vec3<bool>(false, var_0.x, var_0.x), vec3<bool>(true, true, true), vec3<bool>(true, all(var_0.yx), !var_0.x)));
    var var_3 = Struct_5(var_2.x, any(vec4<bool>(true, var_0.x, !var_0.x, !var_0.x)) | false);
    var_3 = Struct_5(1f, var_3.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -833f));
}

