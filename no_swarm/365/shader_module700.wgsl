struct Struct_1 {
    a: vec4<u32>,
    b: vec2<bool>,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<f32>,
    c: u32,
    d: i32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 12> = array<vec3<f32>, 12>(vec3<f32>(355f, -1028f, 262f), vec3<f32>(-1000f, 738f, -2007f), vec3<f32>(-1460f, 1464f, -711f), vec3<f32>(1054f, 775f, -274f), vec3<f32>(268f, -553f, -1238f), vec3<f32>(809f, -633f, 1000f), vec3<f32>(834f, 669f, -221f), vec3<f32>(1745f, 1836f, 826f), vec3<f32>(856f, 709f, -145f), vec3<f32>(1166f, 1603f, -723f), vec3<f32>(-664f, 1513f, 1009f), vec3<f32>(191f, 855f, 1058f));

var<private> global1: vec3<f32> = vec3<f32>(-660f, 217f, 1000f);

var<private> global2: Struct_1;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_1(arg_0: f32, arg_1: f32) -> vec2<bool> {
    return global2.b;
}

fn func_2(arg_0: bool, arg_1: vec4<i32>, arg_2: Struct_1) -> Struct_1 {
    var var_0 = Struct_1(arg_2.a, !vec2<bool>(func_1(-843f, arg_2.c.x).x | true, any(vec2<bool>(arg_0, false))), vec4<f32>(arg_2.c.x, -400f, 1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.c.x)) + arg_2.c.x)));
    var var_1 = global2.a.zxw;
    var_1 = vec3<u32>(_wgslsmith_mult_u32(_wgslsmith_add_u32(_wgslsmith_mult_u32(var_1.x, 52674u), _wgslsmith_mult_u32(_wgslsmith_mult_u32(arg_2.a.x, 4294967295u), var_0.a.x)), 18999u), ~(4294967295u >> (max(abs(var_0.a.x), var_0.a.x) % 32u)), 0u);
    var var_2 = arg_2;
    var var_3 = var_1.x;
    return arg_2;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> vec3<i32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)), _wgslsmith_f_op_f32(sign(153f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.c.x) - -1337f), arg_0.c.x)));
    global2 = func_2(true & all(arg_3.b), vec4<i32>(1i, 1i ^ _wgslsmith_dot_vec2_i32(~vec2<i32>(-1i, -20801i), vec2<i32>(-50910i, -2147483647i)), ~2147483647i << (arg_2.a.x % 32u), -57332i), func_2(func_1(_wgslsmith_f_op_f32(1412f * -900f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.c.x))).x, _wgslsmith_add_vec4_i32(min(-vec4<i32>(-24475i, -1i, -49959i, 1i), _wgslsmith_div_vec4_i32(vec4<i32>(-10813i, 12530i, 22024i, -1i), vec4<i32>(2147483647i, 16886i, -27373i, 6383i))), _wgslsmith_div_vec4_i32(min(vec4<i32>(5564i, 43983i, -2147483647i, 29297i), vec4<i32>(14363i, -1i, -29593i, -40281i)), max(vec4<i32>(-2147483647i, 2147483647i, -2147483647i, 1i), vec4<i32>(-1i, 63605i, 2147483647i, -36200i)))), arg_1));
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-164f, global2.c.x, -561f, -326f)), _wgslsmith_f_op_vec4_f32(floor(arg_2.c))))), arg_3.c));
    let var_1 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_0.c + arg_3.c))));
    var var_2 = Struct_1(arg_3.a, global2.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(arg_1.c)), _wgslsmith_f_op_vec4_f32(-var_1)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global1.x, 1000f, arg_1.c.x, -1901f)))))));
    return firstTrailingBit(vec3<i32>(1i, 1i, 1i) ^ firstTrailingBit(firstTrailingBit(vec3<i32>(-23254i, 2147483647i, 2147483647i))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_2(all(func_1(-973f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -162f)))), ~abs(max(vec4<i32>(-442i, -2147483647i, -19478i, -2147483647i), vec4<i32>(-41986i, 19022i, 65364i, 2147483647i)) << (_wgslsmith_add_vec4_u32(vec4<u32>(global2.a.x, 28220u, 55785u, global2.a.x), global2.a) % vec4<u32>(32u))), Struct_1(global2.a, select(vec2<bool>(global2.b.x, 81071u > global2.a.x), vec2<bool>(global2.b.x, true), global2.b), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.c.x, global2.c.x, -1097f, global1.x)) - global2.c)));
    let var_1 = -func_3(Struct_1(vec4<u32>(var_0.a.x | var_0.a.x, _wgslsmith_div_u32(u_input.a.x, global2.a.x), u_input.a.x, _wgslsmith_dot_vec4_u32(global2.a, vec4<u32>(var_0.a.x, 93057u, u_input.a.x, 26406u))), !(!var_0.b), _wgslsmith_f_op_vec4_f32(-global2.c)), Struct_1(~_wgslsmith_add_vec4_u32(global2.a, var_0.a), vec2<bool>(true, global2.b.x), vec4<f32>(_wgslsmith_f_op_f32(-global1.x), global2.c.x, global2.c.x, _wgslsmith_f_op_f32(f32(-1f) * -568f))), Struct_1(~vec4<u32>(u_input.a.x, global2.a.x, 32250u, 45755u) & ~global2.a, !(!vec2<bool>(var_0.b.x, false)), vec4<f32>(192f, global1.x, var_0.c.x, _wgslsmith_f_op_f32(420f - var_0.c.x))), Struct_1(~(~vec4<u32>(u_input.a.x, 47300u, u_input.a.x, global2.a.x)), vec2<bool>(false, true), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global2.c))));
    let var_2 = !var_0.b;
    let var_3 = Struct_1(~(~(vec4<u32>(global2.a.x, var_0.a.x, global2.a.x, 4294967295u) ^ vec4<u32>(0u, 9454u, var_0.a.x, var_0.a.x))), var_0.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(var_0.c - global2.c), var_0.c)));
    var var_4 = func_2(var_2.x, vec4<i32>(-var_1.x, var_1.x, func_3(func_2(var_2.x, vec4<i32>(0i, var_1.x, var_1.x, -1i), func_2(global2.b.x, vec4<i32>(var_1.x, -30976i, 0i, var_1.x), var_3)), var_3, var_3, Struct_1(vec4<u32>(var_3.a.x, 14277u, var_0.a.x, 1u), !vec2<bool>(global2.b.x, var_3.b.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.c.x, global1.x, var_3.c.x, 335f) - vec4<f32>(338f, var_3.c.x, var_0.c.x, global1.x)))).x, ~(~(-1i))), var_3);
    var var_5 = var_3;
    global2 = var_3;
    var var_6 = _wgslsmith_sub_u32(var_5.a.x, 0u);
    var_4 = Struct_1(max(vec4<u32>(_wgslsmith_mod_u32(_wgslsmith_mult_u32(0u, 4294967295u), ~0u), var_5.a.x, u_input.a.x, var_4.a.x), vec4<u32>(~global2.a.x << (~u_input.a.x % 32u), ~(~25407u), var_3.a.x, abs(1u))), vec2<bool>(var_1.x >= var_1.x, func_2(var_5.b.x, countOneBits(~vec4<i32>(var_1.x, var_1.x, -9516i, 0i)), func_2(-50463i >= var_1.x, ~vec4<i32>(var_1.x, 10456i, 42009i, 2147483647i), var_3)).b.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.c.x, var_0.c.x, 628f, var_0.c.x) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_4.c.x, var_0.c.x, var_5.c.x, -1063f)))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_5.c.x), 793f, _wgslsmith_f_op_f32(1971f - var_5.c.x), _wgslsmith_f_op_f32(370f - var_4.c.x)) - _wgslsmith_div_vec4_f32(vec4<f32>(-283f, var_0.c.x, -1000f, 510f), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(global1.x, global2.c.x, 1708f, -756f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_5.c.yyy, vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-834f - var_4.c.x), global1.x))), var_0.c.x), ~1235u ^ ~var_0.a.x, ~var_1.x, global1.zx);
}

