struct Struct_1 {
    a: u32,
    b: vec3<u32>,
    c: bool,
}

struct Struct_2 {
    a: bool,
    b: vec2<i32>,
    c: vec4<u32>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec3<f32>,
    c: vec2<bool>,
}

struct Struct_4 {
    a: u32,
    b: vec4<bool>,
    c: f32,
}

struct Struct_5 {
    a: i32,
    b: u32,
    c: vec2<i32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_4, 32>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> f32 {
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -292f))))));
}

fn func_4(arg_0: bool, arg_1: Struct_3) -> vec4<i32> {
    var var_0 = global1[_wgslsmith_index_u32(1u, 32u)];
    let var_1 = Struct_4(u_input.c, vec4<bool>(!any(vec4<bool>(true, false, false, false)), any(!arg_1.c), !select(u_input.a <= 0i, true, var_0.b.x), all(!(!var_0.b.xyw))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-459f * 2420f)) + _wgslsmith_f_op_f32(-var_0.c)), var_0.c));
    var var_2 = vec2<u32>(~100767u, ~(~(~(~33659u))));
    var var_3 = firstTrailingBit(u_input.a);
    var_3 = _wgslsmith_dot_vec3_i32(firstTrailingBit(firstLeadingBit(vec3<i32>(2147483647i & u_input.b.x, -2147483647i << (u_input.c % 32u), i32(-1i) * -54748i))), _wgslsmith_mult_vec3_i32(~_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.b.x), vec3<i32>(15433i, u_input.b.x, u_input.b.x)), ~abs(vec3<i32>(-1i, u_input.a, u_input.a))) | ~vec3<i32>(u_input.a, -20726i, _wgslsmith_sub_i32(u_input.b.x, u_input.a)));
    return -vec4<i32>(min(-2147483647i, -(u_input.b.x ^ u_input.b.x)), _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a, 24786i, u_input.b.x), vec3<i32>(0i, 2147483647i, 0i)), firstTrailingBit(vec3<i32>(u_input.b.x, u_input.a, u_input.b.x))), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b.x, 25372i, -2147483647i), vec3<i32>(u_input.a, -1i, -42232i)) >> (~vec3<u32>(21735u, arg_1.a.x, 62377u) % vec3<u32>(32u))), _wgslsmith_div_i32(-u_input.a & (i32(-1i) * -17743i), u_input.b.x), ~(~(-6065i)));
}

fn func_2() -> Struct_1 {
    var var_0 = func_4(global0.c, Struct_3(~firstLeadingBit(~vec4<u32>(4294967295u, u_input.c, global0.b.x, 26809u)), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) + _wgslsmith_f_op_f32(156f - 159f)), -544f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1156f)))), select(!(!vec2<bool>(false, global0.c)), !(!vec2<bool>(global0.c, true)), !vec2<bool>(global0.c, global0.c))));
    var_0 = firstLeadingBit(vec4<i32>(i32(-1i) * -2147483647i, 1861i, ~0i, u_input.a));
    var var_1 = ~var_0.zw;
    let var_2 = vec4<f32>(819f, _wgslsmith_div_f32(327f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(342f, 1361f)), 1f))), -1254f, -945f);
    let var_3 = select(select(!select(vec3<bool>(false, global0.c, true), !vec3<bool>(false, global0.c, true), !vec3<bool>(false, true, global0.c)), select(vec3<bool>(global0.c, true, false), vec3<bool>(true, true, true), select(any(vec4<bool>(false, global0.c, global0.c, global0.c)), global0.c & false, global0.c)), all(vec2<bool>(global0.c, all(vec2<bool>(false, true))))), !(!(!select(vec3<bool>(global0.c, true, global0.c), vec3<bool>(true, global0.c, global0.c), false))), global0.c);
    return Struct_1(u_input.c, vec3<u32>(countOneBits(~_wgslsmith_clamp_u32(global0.b.x, global0.a, 4294967295u)), max(1u, 4294967295u), _wgslsmith_clamp_u32(~_wgslsmith_mod_u32(u_input.c, global0.b.x), 14715u, _wgslsmith_div_u32(4294967295u, u_input.c) >> (4294967295u % 32u))), false && any(var_3));
}

fn func_1(arg_0: i32) -> Struct_1 {
    let var_0 = 691f;
    let var_1 = func_2();
    global0 = var_1;
    var var_2 = Struct_3(_wgslsmith_div_vec4_u32(countOneBits(vec4<u32>(u_input.c, var_1.b.x, global0.b.x, var_1.b.x)) & ~_wgslsmith_mod_vec4_u32(vec4<u32>(var_1.a, 4294967295u, 35919u, global0.b.x), vec4<u32>(global0.a, var_1.b.x, global0.a, 4294967295u)), max(vec4<u32>(1u, var_1.b.x, global0.b.x, 31428u) | vec4<u32>(global0.a, u_input.c, u_input.c, global0.b.x), ~(~vec4<u32>(1u, u_input.c, u_input.c, 4294967295u)))), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_0, -228f)) * _wgslsmith_f_op_f32(-var_0)), _wgslsmith_div_f32(1361f, _wgslsmith_f_op_f32(var_0 * var_0))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)), -707f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0)))))), !(!(!(!vec2<bool>(var_1.c, var_1.c)))));
    let var_3 = var_2.a.yzy;
    return var_1;
}

fn func_5(arg_0: f32, arg_1: Struct_1, arg_2: i32) -> StorageBuffer {
    var var_0 = !all(vec3<bool>(false || all(vec4<bool>(global0.c, arg_1.c, false, false)), !any(vec2<bool>(true, false)), true));
    global1 = array<Struct_4, 32>();
    let var_1 = arg_1;
    var var_2 = arg_2;
    var_0 = true;
    return StorageBuffer(u_input.b, _wgslsmith_f_op_f32(f32(-1f) * -524f), -1018f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -889f) - -244f);
    let x = u_input.a;
    s_output = func_5(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-962f - -762f))), -695f), func_1(_wgslsmith_mult_i32(50033i, u_input.a | _wgslsmith_sub_i32(-41274i, -1i))), _wgslsmith_dot_vec2_i32(vec2<i32>(-6198i, reverseBits(~u_input.a)), vec2<i32>(countOneBits(~u_input.b.x), min(u_input.b.x, abs(u_input.b.x)))));
}

