struct Struct_1 {
    a: vec2<u32>,
    b: f32,
    c: vec2<bool>,
    d: bool,
}

struct Struct_2 {
    a: vec2<i32>,
    b: bool,
    c: bool,
    d: vec4<f32>,
    e: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec4<i32>,
    c: Struct_1,
    d: vec3<u32>,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<f32>,
    c: Struct_2,
    d: vec4<bool>,
}

struct Struct_5 {
    a: f32,
    b: i32,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<u32>,
    c: vec4<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -1136f;

var<private> global1: Struct_5 = Struct_5(540f, -26495i, vec2<u32>(4294967295u, 0u));

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_1(arg_0: bool, arg_1: vec2<i32>, arg_2: i32) -> vec2<i32> {
    var var_0 = countOneBits(1i);
    var var_1 = _wgslsmith_mult_i32(arg_1.x | 1i, arg_1.x);
    return vec2<i32>(arg_2, ~(~arg_2) ^ countOneBits(-35949i));
}

fn func_3() -> vec4<i32> {
    let var_0 = _wgslsmith_add_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 27142u, 0u) & vec3<u32>(4294967295u, global1.c.x, u_input.a.x), ~(~u_input.b.xwx)), abs(countOneBits(~121142u))), ~(~(~1u)));
    var var_1 = _wgslsmith_mult_i32(6439i >> (_wgslsmith_clamp_u32(min(25624u, u_input.b.x), 60667u, _wgslsmith_dot_vec2_u32(u_input.a.wx, vec2<u32>(47390u, u_input.b.x))) % 32u), global1.b) & global1.b;
    return select(_wgslsmith_mod_vec4_i32(vec4<i32>(-18717i, _wgslsmith_sub_i32(_wgslsmith_mult_i32(global1.b, global1.b), global1.b), global1.b, _wgslsmith_mult_i32(global1.b, global1.b | 20344i)), vec4<i32>(global1.b, _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-44191i, 28971i), vec2<i32>(global1.b, global1.b)), global1.b), ~1i, (i32(-1i) * -26341i) << (abs(global1.c.x) % 32u))), ~max(~_wgslsmith_div_vec4_i32(vec4<i32>(-46932i, -1i, global1.b, global1.b), vec4<i32>(40896i, global1.b, global1.b, global1.b)), abs(vec4<i32>(global1.b, 1i, 74743i, -2147483647i))), !(!vec4<bool>(true, true, all(vec2<bool>(false, false)), 604f <= global1.a)));
}

fn func_2() -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a) * _wgslsmith_f_op_f32(floor(1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1036f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1400f))))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(2282f, global1.a, 664f)), vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -783f))), 1307f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global1.a))))));
    let var_1 = firstTrailingBit(-min(vec4<i32>(~(-67020i), ~2147483647i, global1.b, reverseBits(global1.b)), _wgslsmith_sub_vec4_i32(vec4<i32>(global1.b, -2147483647i, global1.b, global1.b), vec4<i32>(-13076i, global1.b, global1.b, -19490i)) << (_wgslsmith_add_vec4_u32(vec4<u32>(46786u, 1u, 6229u, global1.c.x), vec4<u32>(38662u, global1.c.x, u_input.b.x, u_input.b.x)) % vec4<u32>(32u))));
    var var_2 = Struct_5(-1000f, 16333i, u_input.b.yx);
    var var_3 = Struct_3(countOneBits(_wgslsmith_mult_i32(min(global1.b, 15619i), var_1.x)) <= var_2.b, func_3(), Struct_1(vec2<u32>(u_input.b.x, ~_wgslsmith_mult_u32(global1.c.x, 4294967295u)), global1.a, vec2<bool>(true, true), false), u_input.b.xww, Struct_1(global1.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(137f)) + _wgslsmith_f_op_f32(step(-1687f, 738f))) + _wgslsmith_f_op_f32(964f + -641f)), !vec2<bool>(all(vec3<bool>(false, true, false)), any(vec2<bool>(false, false))), !any(vec2<bool>(true, true))));
    var var_4 = var_3.e.a.x <= (abs(~(global1.c.x & u_input.b.x)) | ~u_input.a.x);
    return vec2<bool>(true, true);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1316f)));
    global0 = _wgslsmith_div_f32(-1236f, -659f);
    var var_0 = func_1(any(vec4<bool>(global1.c.x < u_input.b.x, any(vec4<bool>(true, true, false, true)), select(false, false, true), true)) != true, ~(-(~vec2<i32>(0i, global1.b))), -2147483647i);
    var_0 = -_wgslsmith_sub_vec2_i32(-(~vec2<i32>(-5973i, 2147483647i)), vec2<i32>(var_0.x, global1.b) >> (_wgslsmith_mult_vec2_u32(u_input.b.xz, vec2<u32>(30314u, 4294967295u)) % vec2<u32>(32u))) >> (_wgslsmith_div_vec2_u32(vec2<u32>(abs(0u), 43783u), vec2<u32>(abs(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 50749u, global1.c.x), vec3<u32>(global1.c.x, global1.c.x, u_input.b.x))), u_input.a.x)) % vec2<u32>(32u));
    var var_1 = ~vec4<u32>(~firstTrailingBit(_wgslsmith_add_u32(74893u, 1u)), ~_wgslsmith_mult_u32(max(u_input.a.x, global1.c.x), _wgslsmith_dot_vec2_u32(global1.c, vec2<u32>(20749u, 21981u))), u_input.b.x, _wgslsmith_mod_u32(~(~u_input.a.x), 62342u));
    var var_2 = Struct_1(max(~vec2<u32>(u_input.b.x, 4294967295u) | _wgslsmith_mult_vec2_u32(u_input.a.xz, vec2<u32>(global1.c.x, var_1.x)), firstLeadingBit(global1.c)) << (u_input.b.wz % vec2<u32>(32u)), global1.a, !vec2<bool>(global1.a == -386f, global1.b != (i32(-1i) * -1i)), true);
    var var_3 = func_2();
    let var_4 = var_0.x;
    let var_5 = -20316i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(133f, global1.a, 408f, 128f)), vec4<f32>(var_2.b, global1.a, global1.a, -304f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global1.a, global1.a, -545f, global1.a), vec4<f32>(global1.a, -141f, 991f, -1748f))))), vec4<u32>(_wgslsmith_div_u32(var_1.x, min(u_input.b.x, 32745u)), firstLeadingBit(_wgslsmith_div_u32(4294967295u, global1.c.x)), 1u, global1.c.x) ^ select(~vec4<u32>(global1.c.x, global1.c.x, var_1.x, 4294967295u), _wgslsmith_sub_vec4_u32(vec4<u32>(var_1.x, u_input.b.x, 0u, var_1.x) << (u_input.a % vec4<u32>(32u)), vec4<u32>(var_2.a.x, 21243u, var_1.x, var_1.x)), var_3.x), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-101f, 1445f, var_2.b, 284f)))))))), global1.a);
}

