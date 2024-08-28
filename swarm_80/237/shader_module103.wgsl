struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec4<u32>,
    b: f32,
    c: Struct_1,
    d: Struct_1,
    e: vec2<f32>,
}

struct Struct_3 {
    a: bool,
    b: f32,
    c: Struct_2,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(-1i, -17220i, -1i);

var<private> global1: vec3<u32>;

var<private> global2: Struct_1;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: bool, arg_1: Struct_2, arg_2: vec3<f32>) -> f32 {
    global2 = arg_1.d;
    global1 = _wgslsmith_mult_vec3_u32(select(vec3<u32>(90589u, global1.x, abs(~64381u)), vec3<u32>(u_input.a, ~0u, (arg_1.a.x << (global1.x % 32u)) | 1u), select(vec3<bool>(!global2.a, true, true), select(select(vec3<bool>(arg_1.d.a, false, false), vec3<bool>(global2.a, false, true), vec3<bool>(arg_0, arg_0, global2.a)), vec3<bool>(false, false, global2.a), !vec3<bool>(global2.a, true, arg_0)), !select(global2.a, arg_1.d.a, global2.a))), vec3<u32>(40140u, _wgslsmith_add_u32(reverseBits(9649u), countOneBits(firstLeadingBit(u_input.a))), 4294967295u));
    let var_0 = arg_1;
    var var_1 = vec4<bool>(true, all(vec2<bool>(any(!vec2<bool>(false, arg_0)), arg_0)), all(select(vec4<bool>(arg_1.c.a, !var_0.d.a, arg_0, false), !(!vec4<bool>(var_0.c.a, true, arg_1.d.a, global2.a)), arg_0 || true)), !(!(!(true || arg_1.d.a))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(980f + arg_1.e.x)) + -822f));
}

fn func_2(arg_0: i32, arg_1: i32, arg_2: i32) -> vec3<i32> {
    global2 = Struct_1(global2.a);
    let var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(876f, _wgslsmith_f_op_f32(func_3(global2.a, Struct_2(vec4<u32>(global1.x, 296u, 0u, u_input.a), 757f, Struct_1(true), Struct_1(true), vec2<f32>(146f, 312f)), vec3<f32>(-946f, 662f, 308f))), true))))));
    global1 = ~(abs(vec3<u32>(global1.x, u_input.a, ~u_input.a)) | vec3<u32>(u_input.a, 4294967295u, 4579u));
    global1 = ~vec3<u32>(~global1.x, _wgslsmith_dot_vec2_u32((global1.xz << (global1.zy % vec2<u32>(32u))) ^ vec2<u32>(global1.x, u_input.a), vec2<u32>(_wgslsmith_mod_u32(19532u, 1u), ~66514u)), _wgslsmith_clamp_u32(countOneBits(_wgslsmith_dot_vec3_u32(vec3<u32>(6641u, global1.x, 4294967295u), vec3<u32>(7094u, global1.x, global1.x))), u_input.a, reverseBits(45198u)));
    global2 = Struct_1(false);
    return _wgslsmith_mult_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(arg_0, ~20733i, -1i), vec3<i32>(_wgslsmith_add_i32(max(1i, -63020i), 50468i), -arg_1, firstTrailingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, arg_2, global0.x, 2147483647i), vec4<i32>(arg_2, -25649i, arg_1, global0.x)))), countOneBits(_wgslsmith_add_vec3_i32(vec3<i32>(2147483647i, 4533i, arg_2), firstLeadingBit(vec3<i32>(arg_1, arg_2, arg_1))))), abs(~vec3<i32>(arg_0, arg_2 << (42759u % 32u), -arg_1)));
}

fn func_1(arg_0: vec4<i32>, arg_1: vec3<i32>, arg_2: vec2<bool>) -> Struct_2 {
    var var_0 = ~global0.x;
    global1 = vec3<u32>(global1.x, _wgslsmith_mod_u32(1u, (~u_input.a ^ 4294967295u) ^ 50515u), global1.x);
    var var_1 = !vec4<bool>(arg_2.x, global2.a, !global2.a, true);
    global0 = func_2(-20823i, arg_0.x, _wgslsmith_dot_vec3_i32(arg_1, -vec3<i32>(arg_0.x, 65763i, -2147483647i)) | ~arg_0.x);
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(800f, -972f), vec2<f32>(-1125f, 1000f))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1078f, -451f))))));
    return Struct_2(vec4<u32>(~(~_wgslsmith_clamp_u32(global1.x, global1.x, global1.x)), 5637u, 1u, 1u), -170f, Struct_1(false), Struct_1(arg_2.x), vec2<f32>(214f, _wgslsmith_f_op_f32(floor(var_2.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(-241f))))));
    let var_1 = 56657u;
    var var_2 = Struct_3(!global2.a, -608f, func_1(~vec4<i32>(global0.x, -global0.x, min(-62405i, global0.x), 1i), min(-(~vec3<i32>(-42953i, -27150i, -9412i)), vec3<i32>(_wgslsmith_clamp_i32(2147483647i, -2147483647i, 71654i), ~(-1i), 1i)), !(!(!vec2<bool>(global2.a, global2.a)))), vec3<bool>(global2.a, any(select(!vec3<bool>(global2.a, global2.a, global2.a), select(vec3<bool>(true, global2.a, global2.a), vec3<bool>(global2.a, global2.a, global2.a), true), select(vec3<bool>(global2.a, global2.a, true), vec3<bool>(true, true, global2.a), vec3<bool>(true, true, false)))), false));
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, var_2.b, 561f, var_2.b)) + vec4<f32>(var_2.b, 1169f, var_2.c.e.x, var_2.b)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.c.b, var_2.b, var_0, 964f)))));
    var var_4 = _wgslsmith_f_op_f32(-1f);
    var var_5 = _wgslsmith_mult_i32(~(-_wgslsmith_clamp_i32(-global0.x, _wgslsmith_mult_i32(global0.x, global0.x), global0.x >> (var_1 % 32u))), global0.x);
    let var_6 = func_1(vec4<i32>(-1i, global0.x, ~_wgslsmith_mult_i32(-37226i, ~(-1i)), global0.x), _wgslsmith_sub_vec3_i32(-abs(_wgslsmith_div_vec3_i32(vec3<i32>(global0.x, global0.x, 0i), vec3<i32>(global0.x, global0.x, -2147483647i))), ((vec3<i32>(global0.x, global0.x, global0.x) | vec3<i32>(global0.x, global0.x, 46330i)) & countOneBits(vec3<i32>(global0.x, global0.x, global0.x))) ^ reverseBits(firstTrailingBit(vec3<i32>(global0.x, global0.x, 59396i)))), !(!vec2<bool>(true, !global2.a)));
    global0 = vec3<i32>(2147483647i, global0.x, ~(1i & (_wgslsmith_mod_i32(global0.x, global0.x) >> (abs(global1.x) % 32u))));
    let x = u_input.a;
    s_output = StorageBuffer(~39437u, _wgslsmith_clamp_i32(~min(max(9441i, global0.x), ~(-58060i)), 2147483647i, _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(global0.x, global0.x, 29995i, global0.x)), -vec4<i32>(global0.x, 11741i, global0.x, global0.x)), -2147483647i)), abs(8269i));
}

