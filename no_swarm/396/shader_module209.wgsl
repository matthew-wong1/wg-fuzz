struct Struct_1 {
    a: bool,
    b: vec2<f32>,
    c: f32,
    d: i32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: f32, arg_1: vec2<i32>) -> vec3<u32> {
    let var_0 = true;
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(1f, _wgslsmith_f_op_f32(-arg_0), all(vec2<bool>(true, var_0)))), _wgslsmith_f_op_f32(round(arg_0)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(arg_0)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(390f * arg_0), -270f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1337f), -1000f, _wgslsmith_f_op_f32(arg_0 * -2370f), _wgslsmith_f_op_f32(abs(arg_0))))));
    var var_2 = abs(vec4<i32>(1i, arg_1.x, arg_1.x, arg_1.x));
    var var_3 = select(vec4<bool>(select(false, false, var_0), var_0, all(select(vec3<bool>(var_0, var_0, false), vec3<bool>(var_0, var_0, false), !vec3<bool>(var_0, false, false))), true), vec4<bool>(true, var_0, !var_0, false), !select(select(select(vec4<bool>(var_0, true, false, false), vec4<bool>(true, false, var_0, var_0), var_0), vec4<bool>(true, true, true, true), var_0), vec4<bool>(var_0, !var_0, any(vec4<bool>(var_0, var_0, false, var_0)), !var_0), var_0));
    let var_4 = 0i;
    return _wgslsmith_clamp_vec3_u32(~_wgslsmith_add_vec3_u32(~max(vec3<u32>(9089u, u_input.a, u_input.b), vec3<u32>(global0.x, 50696u, 0u)), vec3<u32>(_wgslsmith_sub_u32(global0.x, 22652u), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, global0.x), vec2<u32>(global0.x, 2457u)), global0.x)), vec3<u32>(max(53236u, 44357u), ~select(u_input.a << (1u % 32u), ~u_input.a, any(vec2<bool>(false, false))), select(_wgslsmith_dot_vec4_u32(vec4<u32>(global0.x, 43035u, 4294967295u, 80232u), vec4<u32>(global0.x, 48467u, 37363u, 68765u)) << (74208u % 32u), firstLeadingBit(0u), any(var_3.xxx))), _wgslsmith_mod_vec3_u32(abs(vec3<u32>(u_input.c, 4294967295u, u_input.a)) & select(_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, u_input.a, 15704u), vec3<u32>(18426u, 4294967295u, 97833u)), vec3<u32>(51824u, 91438u, 1u) ^ vec3<u32>(global0.x, global0.x, u_input.c), true), vec3<u32>(min(global0.x, _wgslsmith_dot_vec4_u32(vec4<u32>(global0.x, u_input.b, global0.x, global0.x), vec4<u32>(global0.x, 25669u, global0.x, global0.x))), ~(global0.x & 22147u), 4294967295u)));
}

fn func_4(arg_0: vec3<u32>) -> f32 {
    global0 = firstTrailingBit(_wgslsmith_sub_vec2_u32(arg_0.zz, _wgslsmith_sub_vec2_u32(arg_0.yz, vec2<u32>(~0u, _wgslsmith_div_u32(4294967295u, 28824u)))));
    global0 = firstLeadingBit(arg_0.zz);
    let var_0 = 1f;
    var var_1 = global0.x;
    var_1 = 109287u;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)));
}

fn func_2(arg_0: vec2<f32>, arg_1: u32, arg_2: vec2<u32>) -> f32 {
    let var_0 = vec3<f32>(arg_0.x, 1051f, _wgslsmith_div_f32(-282f, arg_0.x));
    var var_1 = arg_2.x;
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-541f, -667f))), 1410f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_4(func_3(-1439f, vec2<i32>(-4001i, 1i)))))), _wgslsmith_f_op_f32(f32(-1f) * -1361f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(520f))));
    global0 = ~vec2<u32>(arg_1, firstLeadingBit(29268u));
    global0 = ~(~vec2<u32>(select(_wgslsmith_clamp_u32(0u, 4294967295u, 4294967295u), ~arg_2.x, arg_0.x >= 487f), ~0u));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.x)));
}

fn func_5(arg_0: vec3<f32>, arg_1: vec4<i32>) -> vec2<u32> {
    var var_0 = Struct_1(true, vec2<f32>(arg_0.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) * _wgslsmith_f_op_f32(ceil(arg_0.x)))))), 2590f, -1i ^ -_wgslsmith_div_i32(firstTrailingBit(arg_1.x), -2147483647i));
    var_0 = Struct_1(any(select(vec2<bool>(var_0.a, any(vec4<bool>(var_0.a, true, var_0.a, var_0.a))), select(select(vec2<bool>(var_0.a, true), vec2<bool>(var_0.a, false), vec2<bool>(false, true)), select(vec2<bool>(var_0.a, true), vec2<bool>(false, false), false), true), true | var_0.a)), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(1245f * arg_0.x), _wgslsmith_f_op_f32(sign(-187f))), var_0.b), var_0.c, _wgslsmith_div_i32(i32(-1i) * -3924i, countOneBits(var_0.d >> (65639u % 32u))));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(-var_0.c), _wgslsmith_f_op_f32(-470f - _wgslsmith_f_op_f32(sign(var_0.c)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(var_0.b.x, arg_0.x), _wgslsmith_div_vec2_f32(arg_0.yy, var_0.b))))));
    var var_2 = _wgslsmith_f_op_f32(-arg_0.x);
    global0 = ~vec2<u32>(4294967295u, ~u_input.b);
    return _wgslsmith_add_vec2_u32(vec2<u32>(~_wgslsmith_mod_u32(29452u, u_input.b), global0.x) | ~(select(vec2<u32>(u_input.a, 0u), vec2<u32>(0u, 1u), var_0.a) ^ ~vec2<u32>(global0.x, 0u)), max(vec2<u32>(48574u, 40456u), abs(~(~vec2<u32>(global0.x, u_input.b)))));
}

fn func_1(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: Struct_2, arg_3: vec2<f32>) -> f32 {
    global0 = func_5(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(979f - 1f), arg_1.b.b.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_2.b.b.x - -110f), _wgslsmith_f_op_f32(func_2(arg_1.b.b, 18270u, arg_2.a)))), vec3<f32>(arg_2.b.c, _wgslsmith_f_op_f32(f32(-1f) * -475f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_3.x, arg_2.b.c) * -2330f)))), ~(vec4<i32>(arg_2.b.d, arg_2.b.d << (18181u % 32u), arg_0.x, arg_2.b.d << (global0.x % 32u)) & _wgslsmith_div_vec4_i32(vec4<i32>(55757i, -25886i, arg_2.b.d, 2147483647i) & vec4<i32>(arg_0.x, arg_1.b.d, arg_0.x, -16635i), vec4<i32>(arg_0.x, 2924i, arg_0.x, arg_2.b.d))));
    let var_0 = ~(~_wgslsmith_clamp_vec4_u32(firstLeadingBit(vec4<u32>(1u, arg_1.a.x, 4294967295u, u_input.b)) | ~vec4<u32>(arg_1.a.x, u_input.a, arg_1.a.x, global0.x), vec4<u32>(u_input.a, global0.x, u_input.a, 0u), ~firstTrailingBit(vec4<u32>(arg_1.a.x, 0u, arg_1.a.x, u_input.b))));
    let var_1 = firstLeadingBit(_wgslsmith_div_vec4_i32(-(~(~vec4<i32>(arg_1.b.d, 50985i, -20550i, arg_2.b.d))), _wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, arg_0.x, arg_0.x, -58308i), _wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(arg_1.b.d, arg_0.x, arg_1.b.d, -24710i), vec4<i32>(-1i, arg_0.x, arg_1.b.d, 46939i)), vec4<i32>(arg_0.x, 1i, 1i, arg_0.x) & vec4<i32>(-28795i, 2147483647i, arg_0.x, arg_0.x)))));
    global0 = min(vec2<u32>(reverseBits(~func_3(-206f, vec2<i32>(-21264i, 12564i)).x), ~(~0u)), _wgslsmith_sub_vec2_u32(reverseBits(~(~var_0.zx)), vec2<u32>(1u & _wgslsmith_div_u32(arg_2.a.x, u_input.c), ~(0u ^ u_input.a))));
    var var_2 = arg_1;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -312f) * arg_3.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1433f)))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(388f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(vec2<i32>(2863i, -1i), Struct_2(vec2<u32>(34359u, 28535u), Struct_1(true, vec2<f32>(585f, 586f), -1842f, 34497i), false), Struct_2(vec2<u32>(5540u, 1u), Struct_1(false, vec2<f32>(-1686f, 379f), -256f, 5886i), true), vec2<f32>(963f, -2301f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-285f, 508f))))));
    let var_1 = Struct_1(false, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2554f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(681f)) - _wgslsmith_f_op_f32(func_1(vec2<i32>(-5740i, 1827i), Struct_2(vec2<u32>(global0.x, 0u), Struct_1(true, vec2<f32>(var_0.x, 1261f), 546f, 1i), true), Struct_2(vec2<u32>(28786u, u_input.c), Struct_1(true, var_0, 152f, 10974i), false), vec2<f32>(-1031f, 591f))))) * _wgslsmith_f_op_vec2_f32(-var_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x + 786f)), _wgslsmith_mult_i32(firstLeadingBit(-6753i), ~min(1i, -1i)));
    let var_2 = Struct_2(min(~_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.b, 1u), _wgslsmith_clamp_vec2_u32(vec2<u32>(global0.x, 17339u), vec2<u32>(0u, u_input.c), vec2<u32>(global0.x, 1u)), abs(vec2<u32>(global0.x, 4294967295u))), func_3(var_0.x, vec2<i32>(1i, 1i)).xx), Struct_1(var_1.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-294f, var_0.x)))), 872f, abs(1i)), var_1.a);
    var var_3 = var_2;
    let var_4 = vec2<bool>(true, !((-2147483647i <= ~var_3.b.d) || all(!vec4<bool>(false, true, false, var_1.a))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.b.b.x, -1436f, var_3.b.b.x)));
}

