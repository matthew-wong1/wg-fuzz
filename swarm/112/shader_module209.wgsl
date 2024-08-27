struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: u32,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: vec2<i32>,
    d: vec2<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(20559u, vec2<bool>(true, true));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: Struct_2) -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(-873f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -227f) + _wgslsmith_f_op_f32(ceil(1034f)))))));
    let var_1 = _wgslsmith_f_op_f32(-var_0);
    let var_2 = arg_0;
    global0 = var_2;
    let var_3 = abs(_wgslsmith_sub_vec2_u32(vec2<u32>(_wgslsmith_add_u32(arg_0.a >> (arg_0.a % 32u), reverseBits(59096u)), 3436u), _wgslsmith_add_vec2_u32(u_input.a.xy, vec2<u32>(min(global0.a, 4294967295u), ~0u))));
    return !select(arg_0.b, arg_0.b, (!var_2.b.x & (-2677f >= var_1)) & (true & (false | arg_0.b.x)));
}

fn func_2(arg_0: i32, arg_1: Struct_1) -> Struct_2 {
    var var_0 = vec2<u32>(4294967295u, 83741u >> (u_input.a.x % 32u));
    var_0 = abs(u_input.a.yz);
    let var_1 = u_input.a;
    let var_2 = Struct_2(~abs(_wgslsmith_mod_u32(1u, global0.a) >> (min(var_0.x, 62339u) % 32u)), select(select(global0.b, func_3(Struct_2(1u, vec2<bool>(global0.b.x, global0.b.x))), global0.b), select(select(func_3(Struct_2(64321u, global0.b)), vec2<bool>(true, false), select(vec2<bool>(true, false), global0.b, true)), vec2<bool>(global0.b.x, any(vec2<bool>(false, true))), true), select(select(vec2<bool>(true, global0.b.x), !vec2<bool>(false, global0.b.x), select(global0.b, vec2<bool>(global0.b.x, global0.b.x), global0.b.x)), select(!vec2<bool>(global0.b.x, false), vec2<bool>(global0.b.x, true), 7742u <= var_0.x), !vec2<bool>(global0.b.x, global0.b.x))));
    var var_3 = Struct_2(_wgslsmith_clamp_u32(var_0.x, 0u, _wgslsmith_div_u32(var_0.x, 0u)) | 12230u, var_2.b);
    return Struct_2(reverseBits(~global0.a), func_3(var_2));
}

fn func_4(arg_0: Struct_2, arg_1: vec4<u32>) -> vec4<bool> {
    var var_0 = Struct_1(u_input.b ^ u_input.b);
    var_0 = Struct_1(vec3<i32>(19734i, 20995i, select(firstTrailingBit(-u_input.c), -10388i, global0.b.x)));
    global0 = Struct_2(_wgslsmith_add_u32(u_input.a.x, _wgslsmith_div_u32(global0.a, ~(~41472u))), global0.b);
    global0 = arg_0;
    var var_1 = all(select(select(select(vec3<bool>(true, arg_0.b.x, false), vec3<bool>(arg_0.b.x, global0.b.x, false), select(vec3<bool>(arg_0.b.x, global0.b.x, global0.b.x), vec3<bool>(true, false, arg_0.b.x), false)), !(!vec3<bool>(arg_0.b.x, false, true)), select(select(vec3<bool>(false, arg_0.b.x, true), vec3<bool>(true, arg_0.b.x, global0.b.x), vec3<bool>(global0.b.x, false, arg_0.b.x)), vec3<bool>(true, arg_0.b.x, true), !global0.b.x)), select(select(vec3<bool>(arg_0.b.x, false, true), !vec3<bool>(arg_0.b.x, global0.b.x, arg_0.b.x), select(vec3<bool>(true, false, arg_0.b.x), vec3<bool>(false, arg_0.b.x, true), vec3<bool>(true, false, true))), !select(vec3<bool>(true, false, global0.b.x), vec3<bool>(false, global0.b.x, global0.b.x), arg_0.b.x), !vec3<bool>(arg_0.b.x, global0.b.x, arg_0.b.x)), !arg_0.b.x));
    return !(!(!(!(!vec4<bool>(global0.b.x, false, false, false)))));
}

fn func_5(arg_0: vec2<i32>, arg_1: vec2<bool>, arg_2: vec4<bool>, arg_3: Struct_2) -> vec3<bool> {
    global0 = Struct_2(global0.a ^ ~u_input.a.x, !func_3(arg_3));
    return select(arg_2.yyx, arg_2.zwz, !func_4(Struct_2(~93611u, arg_2.wz), vec4<u32>(0u, ~1u, 7562u, ~4294967295u)).xzz);
}

fn func_1() -> Struct_1 {
    global0 = Struct_2(reverseBits(global0.a), global0.b);
    let var_0 = max(select(vec3<i32>(_wgslsmith_add_i32(69442i, u_input.c << (1u % 32u)), u_input.b.x, u_input.c), (vec3<i32>(u_input.c, u_input.b.x, 2147483647i) << (_wgslsmith_div_vec3_u32(u_input.a, u_input.a) % vec3<u32>(32u))) ^ -vec3<i32>(-13990i, u_input.b.x, -18898i), func_5(vec2<i32>(_wgslsmith_sub_i32(u_input.c, -1i), -u_input.c), !(!vec2<bool>(global0.b.x, global0.b.x)), func_4(func_2(-8009i, Struct_1(vec3<i32>(u_input.b.x, u_input.b.x, -1i))), ~vec4<u32>(global0.a, u_input.a.x, 4294967295u, 2350u)), Struct_2(54105u, vec2<bool>(global0.b.x, global0.b.x)))), u_input.b & abs(abs(u_input.b << (vec3<u32>(15377u, 1u, 0u) % vec3<u32>(32u)))));
    return Struct_1(var_0);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = var_0;
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-258f, -181f), _wgslsmith_f_op_f32(sign(-1094f)))), -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(124f * 252f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(869f, 327f, -124f) * vec3<f32>(-1931f, 1000f, 1000f)), vec3<f32>(-371f, 644f, -1935f), !vec3<bool>(false, true, global0.b.x))))));
    var var_3 = vec3<u32>(~u_input.a.x, 63280u, _wgslsmith_dot_vec3_u32(u_input.a, ~select(u_input.a, u_input.a, vec3<bool>(true, true, true)))) | _wgslsmith_mult_vec3_u32(u_input.a, u_input.a);
    global0 = func_2(-max(0i, firstLeadingBit(~1i)), Struct_1(vec3<i32>(-select(u_input.c, 41970i, global0.b.x), _wgslsmith_mult_i32(32028i, _wgslsmith_mult_i32(var_1.a.x, 39717i)), -15966i)));
    let var_4 = select(global0.b, global0.b, !global0.b.x);
    var var_5 = func_2(firstLeadingBit(var_1.a.x), var_1);
    var var_6 = 61551u;
    var_5 = func_2(select(func_1().a.x, ~(-var_0.a.x) | -u_input.c, true), Struct_1(vec3<i32>(_wgslsmith_mod_i32(var_0.a.x, u_input.c), u_input.c & ~29303i, -51476i)));
    let x = u_input.a;
    s_output = StorageBuffer(1i, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_2.x, _wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(step(var_2.x, var_2.x))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.x, _wgslsmith_div_f32(var_2.x, var_2.x), _wgslsmith_f_op_f32(step(-222f, -1310f))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_2.x, var_2.x, var_2.x), vec3<f32>(var_2.x, var_2.x, var_2.x))) + vec3<f32>(var_2.x, -609f, 1819f))), var_5.b.x)), var_1.a.yx, vec2<i32>(firstLeadingBit(var_1.a.x), (u_input.c >> (_wgslsmith_mult_u32(var_5.a, 4294967295u) % 32u)) ^ ~(6403i ^ var_1.a.x)), _wgslsmith_add_u32(~firstLeadingBit(_wgslsmith_dot_vec2_u32(u_input.a.yz, u_input.a.zx)), var_5.a));
}

