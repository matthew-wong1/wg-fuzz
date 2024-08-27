struct Struct_1 {
    a: vec3<i32>,
    b: f32,
    c: f32,
    d: vec3<f32>,
    e: f32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<i32>(-1i, -61731i, 12141i), 285f, -757f, vec3<f32>(-297f, -2532f, -2347f), -1000f);

var<private> global1: u32;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2) -> u32 {
    global1 = u_input.a.x;
    var var_0 = Struct_2(global0.a, arg_0.a.x);
    var_0 = Struct_2(vec3<i32>(-1i) * -select(_wgslsmith_add_vec3_i32(vec3<i32>(46348i, global0.a.x, 0i), var_0.a), vec3<i32>(var_0.b, var_0.b, 1i), -319f < global0.e), 0i);
    let var_1 = vec3<bool>(true, true, false);
    var var_2 = any(!(!select(var_1, select(vec3<bool>(false, var_1.x, var_1.x), vec3<bool>(true, var_1.x, false), true), false)));
    return _wgslsmith_sub_u32(countOneBits(min(u_input.a.x << (~u_input.a.x % 32u), _wgslsmith_add_u32(~60806u, _wgslsmith_mult_u32(1u, u_input.a.x)))), ~_wgslsmith_clamp_u32(abs(select(16194u, 1u, var_1.x)), u_input.a.x, ~u_input.a.x));
}

fn func_2() -> Struct_1 {
    global0 = Struct_1(vec3<i32>(firstTrailingBit(-39611i), -44954i, _wgslsmith_dot_vec4_i32(~(vec4<i32>(32552i, global0.a.x, 1i, global0.a.x) << (u_input.a % vec4<u32>(32u))), ~(vec4<i32>(global0.a.x, -2147483647i, global0.a.x, -3907i) << (vec4<u32>(4294967295u, 0u, 6243u, u_input.a.x) % vec4<u32>(32u))))), _wgslsmith_f_op_f32(floor(1054f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.d.x) + global0.b) * global0.e))), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(-global0.b), _wgslsmith_div_f32(146f, _wgslsmith_f_op_f32(-global0.c)), global0.d.x))), global0.d.x);
    global1 = firstTrailingBit((_wgslsmith_add_u32(4294967295u, ~u_input.a.x) << (u_input.a.x % 32u)) >> (max(1u, ~u_input.a.x) % 32u));
    let var_0 = vec2<u32>(28983u, ~(~func_3(Struct_2(global0.a, global0.a.x)))) ^ _wgslsmith_div_vec2_u32(~u_input.a.zx, vec2<u32>(abs(~1u), 14788u));
    let var_1 = _wgslsmith_dot_vec2_i32(-(~vec2<i32>(firstLeadingBit(global0.a.x), global0.a.x)), max(select(min(vec2<i32>(global0.a.x, global0.a.x), vec2<i32>(global0.a.x, global0.a.x)), global0.a.yz, true), vec2<i32>(abs(-10244i), abs(~global0.a.x))));
    global1 = ~func_3(Struct_2(vec3<i32>(var_1 >> (0u % 32u), 41745i, -global0.a.x), -var_1));
    return Struct_1(global0.a, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1999f + _wgslsmith_f_op_f32(-global0.c)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1470f, global0.b) - _wgslsmith_f_op_f32(f32(-1f) * -181f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1000f + -281f))))), global0.d.x, _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global0.d + vec3<f32>(global0.b, 1914f, global0.b)) - _wgslsmith_f_op_vec3_f32(-global0.d)), global0.d))), global0.b);
}

fn func_1() -> Struct_2 {
    var var_0 = 791f;
    var_0 = global0.b;
    var var_1 = _wgslsmith_f_op_vec2_f32(floor(global0.d.xy));
    global1 = 99483u;
    global0 = func_2();
    return Struct_2(~global0.a, _wgslsmith_div_i32(max(1i, min(global0.a.x, global0.a.x) ^ ~global0.a.x), 8094i));
}

fn func_4(arg_0: Struct_2) -> f32 {
    global1 = ~1u;
    var var_0 = Struct_3(func_1(), _wgslsmith_f_op_vec4_f32(vec4<f32>(func_2().e, global0.d.x, _wgslsmith_f_op_f32(sign(-2229f)), func_2().e) - _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.b, global0.b, -1278f, global0.d.x) - vec4<f32>(1853f, global0.e, -651f, global0.e)))))));
    let var_1 = _wgslsmith_add_i32(firstLeadingBit(~(~arg_0.a.x)) | _wgslsmith_mult_i32(-func_1().a.x, global0.a.x), ~var_0.a.b ^ -3898i);
    var var_2 = (reverseBits(vec3<i32>(-5824i, var_0.a.b, min(-5490i, global0.a.x))) >> ((u_input.a.wwy & _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, 0u), _wgslsmith_add_vec3_u32(vec3<u32>(1u, 0u, u_input.a.x), u_input.a.yxy))) % vec3<u32>(32u))) >> (abs(u_input.a.zwy) % vec3<u32>(32u));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1169f)) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_0.b.x + global0.d.x), global0.c, true))));
    return _wgslsmith_f_op_f32(-var_0.b.x);
}

fn func_5(arg_0: vec2<f32>, arg_1: vec2<f32>, arg_2: vec3<i32>, arg_3: Struct_1) -> Struct_3 {
    global0 = arg_3;
    global1 = u_input.a.x;
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, arg_1.x)) * arg_1), arg_3.d.zx)));
    let var_1 = !(!(_wgslsmith_dot_vec3_i32(~global0.a, _wgslsmith_mult_vec3_i32(vec3<i32>(1i, arg_3.a.x, arg_2.x), vec3<i32>(2147483647i, -1i, arg_3.a.x))) == _wgslsmith_add_i32(20240i, arg_2.x)));
    let var_2 = -121f;
    return Struct_3(Struct_2(~(-max(vec3<i32>(0i, arg_3.a.x, global0.a.x), vec3<i32>(-30534i, 7468i, arg_2.x))), -1i), vec4<f32>(arg_3.c, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(-1000f)))), arg_3.d.x, arg_0.x));
}

fn func_6(arg_0: Struct_3, arg_1: vec2<bool>) -> Struct_1 {
    global1 = ~_wgslsmith_div_u32(~113676u, 6194u);
    var var_0 = arg_0;
    var var_1 = ~15567i;
    let var_2 = !select(arg_1, select(select(arg_1, arg_1, select(true, false, false)), vec2<bool>(true, false), !arg_1.x), !select(vec2<bool>(true, false), select(vec2<bool>(false, true), arg_1, false), arg_1));
    let var_3 = select(var_2, !vec2<bool>(true, var_2.x), select(-505f == _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -281f))), !any(vec3<bool>(true, var_2.x, var_2.x)), var_2.x));
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(func_5(vec2<f32>(_wgslsmith_f_op_f32(func_4(func_1())), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_4(Struct_2(vec3<i32>(global0.a.x, global0.a.x, 69082i), 2147483647i))), global0.e))), vec2<f32>(-626f, -346f), ~firstTrailingBit(_wgslsmith_div_vec3_i32(vec3<i32>(5051i, 80432i, global0.a.x), global0.a)), Struct_1(vec3<i32>(-2147483647i, _wgslsmith_add_i32(-2147483647i, global0.a.x), global0.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.e) - _wgslsmith_f_op_f32(global0.d.x + 137f)), 1175f, vec3<f32>(global0.b, -638f, global0.d.x), global0.b)), select(!vec2<bool>(true, all(vec4<bool>(true, false, false, false))), vec2<bool>(false | all(vec2<bool>(false, false)), true), false || all(select(vec2<bool>(false, true), vec2<bool>(false, false), false))));
    var var_1 = Struct_2(abs(global0.a), -2147483647i);
    let var_2 = Struct_2(select(vec3<i32>(-var_1.b, 36193i, _wgslsmith_dot_vec4_i32(vec4<i32>(-39474i, 35090i, var_1.b, 5226i), -vec4<i32>(var_0.a.x, -2147483647i, global0.a.x, -1i))), vec3<i32>(17534i, -1i, 54400i), false), firstLeadingBit(var_0.a.x));
    var_1 = func_1();
    var var_3 = vec3<bool>(!(1u >= (~25945u >> (u_input.a.x % 32u))), var_1.b >= -firstLeadingBit(_wgslsmith_sub_i32(1i, var_1.b)), true);
    global1 = 9381u;
    let x = u_input.a;
    s_output = StorageBuffer(-vec3<i32>(global0.a.x, abs(-2147483647i) << (_wgslsmith_clamp_u32(u_input.a.x, 0u, u_input.a.x) % 32u), global0.a.x << (_wgslsmith_mod_u32(24510u, 42290u) % 32u)), -(~func_2().a.x));
}

