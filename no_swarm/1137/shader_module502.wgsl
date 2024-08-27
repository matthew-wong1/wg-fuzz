struct Struct_1 {
    a: vec3<u32>,
    b: vec3<u32>,
    c: f32,
    d: vec2<f32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: bool,
}

struct Struct_5 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec4<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
    d: f32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: i32) -> bool {
    let var_0 = ~((abs(vec4<u32>(u_input.a.x, 1u, u_input.a.x, 83473u) & vec4<u32>(13609u, 54694u, 38404u, 1963u)) | ((vec4<u32>(34442u, u_input.a.x, 0u, 11483u) & vec4<u32>(u_input.a.x, u_input.a.x, 1u, 3030u)) >> (vec4<u32>(u_input.a.x, 0u, u_input.a.x, 1u) % vec4<u32>(32u)))) & vec4<u32>(_wgslsmith_sub_u32(~u_input.a.x, 26992u << (u_input.a.x % 32u)), 29312u, 91991u, reverseBits(u_input.a.x)));
    var var_1 = Struct_1(max(reverseBits(max(vec3<u32>(0u, u_input.a.x, var_0.x) ^ var_0.xxy, vec3<u32>(u_input.a.x, 0u, u_input.a.x))), u_input.a), ~vec3<u32>(36236u & ~u_input.a.x, ~var_0.x & 0u, _wgslsmith_mod_u32(~u_input.a.x, var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(1f))))), vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1127f))))), _wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    return abs(~u_input.a.x) == _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(var_0, vec4<u32>(4294967295u, ~var_0.x, 0u, u_input.a.x & 13365u)), ~_wgslsmith_mult_u32(_wgslsmith_div_u32(var_0.x, var_0.x), _wgslsmith_div_u32(48475u, var_1.a.x)));
}

fn func_2(arg_0: i32, arg_1: f32) -> vec3<i32> {
    var var_0 = func_3(22244i);
    var var_1 = Struct_5(countOneBits(select(vec4<u32>(~u_input.a.x, firstLeadingBit(0u), ~u_input.a.x, 13292u ^ u_input.a.x), ~countOneBits(vec4<u32>(u_input.a.x, 103167u, 4294967295u, u_input.a.x)), 1i >= (-44616i ^ u_input.b))));
    global0 = 2147483647i;
    var_0 = false;
    let var_2 = select(vec3<bool>(!((arg_1 <= arg_1) || all(vec3<bool>(true, false, true))), all(vec3<bool>(all(vec4<bool>(false, false, false, false)), any(vec2<bool>(false, true)), true)), all(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), true))), vec3<bool>(false, false, false), !(countOneBits(arg_0) <= 41896i));
    return select(u_input.d, u_input.d, true);
}

fn func_4(arg_0: Struct_3, arg_1: vec2<u32>, arg_2: vec2<u32>, arg_3: vec3<i32>) -> Struct_5 {
    var var_0 = !(!select(!select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false), false), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), all(vec4<bool>(true, false, false, true))), all(vec2<bool>(false, true))));
    let var_1 = Struct_5(vec4<u32>(0u, _wgslsmith_div_u32(arg_0.b.a.x, arg_1.x), 19745u, 38134u));
    let var_2 = -8874i;
    let var_3 = var_1;
    global0 = var_2;
    return var_3;
}

fn func_1(arg_0: Struct_2, arg_1: bool) -> bool {
    let var_0 = -364f;
    var var_1 = func_4(Struct_3(_wgslsmith_dot_vec3_i32(select(vec3<i32>(2147483647i, 10586i, -14665i), vec3<i32>(18561i, -77804i, u_input.d.x), vec3<bool>(true, arg_1, arg_1)), func_2(u_input.c.x, -301f)) | (_wgslsmith_add_i32(34422i, -2147483647i) & ~u_input.b), Struct_1(select(reverseBits(vec3<u32>(0u, u_input.a.x, 50485u)), abs(vec3<u32>(1u, u_input.a.x, u_input.a.x)), true), u_input.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0, var_0, true))), vec2<f32>(-313f, _wgslsmith_f_op_f32(max(var_0, -1119f))))), _wgslsmith_add_vec2_u32(u_input.a.xy, ~(~u_input.a.zz)), ~(u_input.a.xx | max(u_input.a.xz, u_input.a.zy)), ~((u_input.c.xyw | u_input.c.ywy) | vec3<i32>(u_input.c.x, -25999i, u_input.d.x)));
    var var_2 = var_0;
    var var_3 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0, 808f) + var_0)));
    var_1 = Struct_5(_wgslsmith_mult_vec4_u32(countOneBits(vec4<u32>(_wgslsmith_mod_u32(u_input.a.x, u_input.a.x), u_input.a.x, ~1u, var_1.a.x >> (var_1.a.x % 32u))), ~var_1.a));
    return arg_1;
}

fn func_5(arg_0: vec3<i32>, arg_1: vec4<bool>) -> Struct_1 {
    let var_0 = vec2<i32>(i32(-1i) * -10166i, firstLeadingBit(-_wgslsmith_add_i32(31243i, u_input.b)) | ~(-_wgslsmith_div_i32(arg_0.x, 2169i)));
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-587f, 456f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-316f, -1200f)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(279f, 1679f) + _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1391f, -1487f)))))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -359f), 1f) * _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(527f, -470f))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-401f, 125f), vec2<f32>(158f, 362f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(153f, -1772f))))));
    global0 = -(~(~reverseBits(-1i)));
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1f)) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(1168f, 1000f, false)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.x, -1005f))))), _wgslsmith_f_op_f32(step(-491f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_1.x - var_1.x))))))), var_1.x);
    var var_3 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(105f * -1236f))), _wgslsmith_f_op_f32(var_2.x - 1800f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-588f))), _wgslsmith_f_op_f32(round(-1155f)))));
    return Struct_1(_wgslsmith_clamp_vec3_u32(vec3<u32>(countOneBits(u_input.a.x), _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 40092u), vec2<u32>(u_input.a.x, u_input.a.x)), 45313u), u_input.a.x), select(vec3<u32>(select(u_input.a.x, u_input.a.x, true), u_input.a.x, u_input.a.x), vec3<u32>(u_input.a.x, u_input.a.x, 45829u), arg_1.xyz), vec3<u32>(49533u, max(_wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(42848u, u_input.a.x, u_input.a.x)), 25264u), 4294967295u)), u_input.a, -1034f, var_2.xy);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = u_input.d.x;
    let var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2076f))))))));
    var var_1 = true;
    let var_2 = func_5(u_input.c.zzx, select(select(vec4<bool>(func_1(Struct_2(false), true), false, true, func_1(Struct_2(false), true)), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), true), !select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), false)), vec4<bool>(true, true, true, true), true));
    global0 = u_input.b;
    var var_3 = Struct_2(false);
    let var_4 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(ceil(var_0)), _wgslsmith_div_f32(746f, 889f), -1059f))));
    var var_5 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-func_5(u_input.d, vec4<bool>(var_3.a, any(vec2<bool>(true, true)), !var_3.a, var_3.a)).c) - -335f);
    let x = u_input.a;
    s_output = StorageBuffer(~(~u_input.c), var_2.a.x, u_input.b & func_2(firstTrailingBit(u_input.b), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -457f), _wgslsmith_f_op_f32(-479f + var_0)))).x, -283f, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-var_4.x), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -252f), 472f, var_3.a))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(var_4.zz, var_2.d, vec2<bool>(var_3.a, var_3.a))), vec2<f32>(-395f, var_2.c))) * _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, var_2.c)))))));
}

