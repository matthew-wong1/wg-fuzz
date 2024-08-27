struct Struct_1 {
    a: vec2<bool>,
    b: vec3<bool>,
    c: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: u32;

var<private> global2: array<Struct_1, 18> = array<Struct_1, 18>(Struct_1(vec2<bool>(true, false), vec3<bool>(false, true, true), 32618i), Struct_1(vec2<bool>(true, false), vec3<bool>(true, false, false), -1i), Struct_1(vec2<bool>(false, false), vec3<bool>(true, false, false), -6456i), Struct_1(vec2<bool>(true, false), vec3<bool>(false, true, false), 12846i), Struct_1(vec2<bool>(true, true), vec3<bool>(true, false, false), -1i), Struct_1(vec2<bool>(true, false), vec3<bool>(true, true, false), 0i), Struct_1(vec2<bool>(true, false), vec3<bool>(false, true, false), 0i), Struct_1(vec2<bool>(false, false), vec3<bool>(true, false, true), 0i), Struct_1(vec2<bool>(true, false), vec3<bool>(true, true, false), 22075i), Struct_1(vec2<bool>(true, false), vec3<bool>(false, true, false), 8754i), Struct_1(vec2<bool>(true, true), vec3<bool>(false, false, true), 1222i), Struct_1(vec2<bool>(false, false), vec3<bool>(true, true, false), i32(-2147483648)), Struct_1(vec2<bool>(false, true), vec3<bool>(true, true, true), -1i), Struct_1(vec2<bool>(true, true), vec3<bool>(false, false, true), -45943i), Struct_1(vec2<bool>(false, false), vec3<bool>(false, true, true), 0i), Struct_1(vec2<bool>(false, false), vec3<bool>(false, false, false), 17139i), Struct_1(vec2<bool>(false, false), vec3<bool>(false, false, true), 7121i), Struct_1(vec2<bool>(false, true), vec3<bool>(false, true, true), 1i));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> u32 {
    var var_0 = ~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.a), _wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, 1u), countOneBits(vec2<u32>(u_input.a, u_input.a))) << (reverseBits(vec2<u32>(u_input.a, u_input.a) >> (vec2<u32>(6354u, 35354u) % vec2<u32>(32u))) % vec2<u32>(32u)));
    var var_1 = global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(countOneBits(44731u), 67472u, 0u), 18u)];
    var var_2 = -_wgslsmith_mult_vec3_i32(-min(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.b, 0i, 56096i), vec3<i32>(u_input.b, -31590i, 224i)), _wgslsmith_clamp_vec3_i32(vec3<i32>(0i, u_input.b, u_input.b), vec3<i32>(var_1.c, u_input.b, var_1.c), vec3<i32>(-34235i, var_1.c, 1i))), vec3<i32>(countOneBits(abs(var_1.c)), abs(u_input.b) & _wgslsmith_dot_vec4_i32(vec4<i32>(-8412i, -27367i, 4650i, var_1.c), vec4<i32>(var_1.c, u_input.b, 1i, var_1.c)), _wgslsmith_clamp_i32(var_1.c >> (43979u % 32u), ~var_1.c, -6762i << (1u % 32u))));
    var var_3 = -(firstTrailingBit(vec3<i32>(var_2.x, u_input.b, u_input.b) & abs(vec3<i32>(u_input.b, u_input.b, -84233i))) ^ ~(max(vec3<i32>(u_input.b, var_2.x, 2147483647i), vec3<i32>(u_input.b, 10340i, var_2.x)) ^ ~vec3<i32>(0i, u_input.b, var_1.c)));
    var var_4 = Struct_1(vec2<bool>(true, true), vec3<bool>(!var_1.a.x, var_1.a.x & !all(var_1.a), 1i <= -countOneBits(var_1.c)), _wgslsmith_dot_vec3_i32(~firstTrailingBit(_wgslsmith_mod_vec3_i32(vec3<i32>(var_1.c, -1i, -66285i), vec3<i32>(var_3.x, var_3.x, u_input.b))), -vec3<i32>(1i, var_2.x, countOneBits(var_3.x))));
    return countOneBits(u_input.a);
}

fn func_2(arg_0: i32, arg_1: Struct_1) -> Struct_1 {
    let var_0 = Struct_1(arg_1.b.yx, vec3<bool>(true, 0i <= firstTrailingBit(~arg_1.c), true), 0i);
    let var_1 = global2[_wgslsmith_index_u32(u_input.a, 18u)];
    global0 = _wgslsmith_dot_vec2_i32(abs(_wgslsmith_clamp_vec2_i32(vec2<i32>(arg_0, arg_0), vec2<i32>(var_0.c, 1i), vec2<i32>(arg_0, arg_0)) << (max(vec2<u32>(u_input.a, 4294967295u), vec2<u32>(u_input.a, 21097u)) % vec2<u32>(32u))) | -(~(vec2<i32>(arg_1.c, arg_0) << (vec2<u32>(u_input.a, 1u) % vec2<u32>(32u)))), select(-_wgslsmith_mod_vec2_i32(vec2<i32>(-9903i, 0i), vec2<i32>(u_input.b, -10302i)) ^ min(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.b, arg_0), vec2<i32>(var_0.c, arg_1.c)), ~vec2<i32>(-24030i, u_input.b)), ~(vec2<i32>(-1i) * -vec2<i32>(0i, arg_1.c)), !vec2<bool>(select(var_0.b.x, false, false), !var_1.a.x)));
    var var_2 = func_3();
    var_2 = ~u_input.a;
    return Struct_1(vec2<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-803f))) <= -1334f, !any(select(vec3<bool>(true, arg_1.b.x, false), var_1.b, vec3<bool>(false, false, arg_1.a.x)))), vec3<bool>(all(!vec2<bool>(var_1.a.x, true)), all(select(select(vec4<bool>(var_0.a.x, false, var_0.b.x, true), vec4<bool>(var_0.b.x, false, false, false), false), vec4<bool>(true, var_0.a.x, true, var_1.a.x), false)), !(_wgslsmith_f_op_f32(max(175f, -222f)) >= _wgslsmith_f_op_f32(step(300f, 1575f)))), u_input.b);
}

fn func_1(arg_0: i32, arg_1: i32, arg_2: vec4<u32>) -> Struct_1 {
    let var_0 = func_2(-(min(~arg_0, 1i) | (_wgslsmith_sub_i32(13520i, arg_0) ^ 2147483647i)), global2[_wgslsmith_index_u32(arg_2.x, 18u)]);
    global0 = abs(_wgslsmith_dot_vec4_i32(firstTrailingBit(-(~vec4<i32>(arg_0, -13787i, arg_0, 1i))), select(vec4<i32>(1i, -1i, -u_input.b, -var_0.c), vec4<i32>(-2147483647i, arg_0 << (arg_2.x % 32u), firstTrailingBit(u_input.b), _wgslsmith_mult_i32(-56017i, -14745i)), vec4<bool>(true, true, true, true))));
    var var_1 = vec4<i32>(~1i >> (u_input.a % 32u), _wgslsmith_dot_vec3_i32(vec3<i32>(~abs(-11974i), u_input.b | _wgslsmith_sub_i32(arg_0, arg_1), 1i), vec3<i32>(arg_0, i32(-1i) * -5893i, -(~u_input.b))), _wgslsmith_dot_vec4_i32(vec4<i32>(-var_0.c, arg_1, 1i, func_2(20101i, Struct_1(vec2<bool>(var_0.b.x, false), var_0.b, u_input.b)).c) >> (arg_2 % vec4<u32>(32u)), reverseBits((vec4<i32>(arg_1, u_input.b, arg_1, u_input.b) << (vec4<u32>(arg_2.x, u_input.a, 15093u, u_input.a) % vec4<u32>(32u))) << (arg_2 % vec4<u32>(32u)))), 0i);
    var var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(522f - -583f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -582f) + 1f))));
    let var_3 = Struct_1(var_0.a, vec3<bool>(any(!select(vec2<bool>(true, true), var_0.a, vec2<bool>(false, var_0.b.x))), !any(!var_0.b.xy), var_0.a.x), _wgslsmith_sub_i32(0i, arg_1));
    return Struct_1(var_0.a, !select(var_3.b, func_2(u_input.b, func_2(u_input.b, var_3)).b, vec3<bool>(var_0.a.x, var_3.a.x, func_2(var_3.c, global2[_wgslsmith_index_u32(u_input.a, 18u)]).a.x)), 16278i);
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> u32 {
    var var_0 = countOneBits(max(_wgslsmith_add_i32(i32(-1i) * -5679i, u_input.b | arg_2.c) << (_wgslsmith_mult_u32(106951u, countOneBits(1u)) % 32u), u_input.b));
    global1 = countOneBits(firstTrailingBit(~(~u_input.a) << ((u_input.a | u_input.a) % 32u)));
    var_0 = u_input.b;
    global2 = array<Struct_1, 18>();
    var var_1 = arg_1.a;
    return ~_wgslsmith_mod_u32(u_input.a >> (56645u % 32u), 27594u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(1323f)))), _wgslsmith_f_op_f32(f32(-1f) * -125f)))));
    global1 = _wgslsmith_add_u32(~(~16428u), u_input.a);
    global1 = u_input.a >> (14287u % 32u);
    let var_1 = reverseBits(-_wgslsmith_sub_i32(u_input.b ^ 0i, _wgslsmith_clamp_i32(u_input.b, u_input.b, u_input.b))) <= (-u_input.b >> (~(~u_input.a) % 32u));
    global0 = reverseBits(~(-2265i));
    var var_2 = var_1;
    var var_3 = Struct_1(vec2<bool>(var_1, true), !(!select(!vec3<bool>(true, var_1, false), vec3<bool>(true, var_1, var_1), select(vec3<bool>(false, false, false), vec3<bool>(false, true, var_1), var_1))), -4003i);
    var var_4 = ~u_input.a;
    var_3 = global2[_wgslsmith_index_u32(func_4(!var_1, global2[_wgslsmith_index_u32(19782u, 18u)], func_1(-25003i, -3818i, ~_wgslsmith_clamp_vec4_u32(vec4<u32>(55192u, u_input.a, u_input.a, u_input.a) << (vec4<u32>(1u, 0u, u_input.a, u_input.a) % vec4<u32>(32u)), ~vec4<u32>(36974u, u_input.a, 1u, u_input.a), max(vec4<u32>(23235u, 43489u, u_input.a, 49598u), vec4<u32>(4294967295u, u_input.a, u_input.a, u_input.a)))), global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(5737u, u_input.a, u_input.a), 18u)]), 18u)];
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec2<i32>(1i, -_wgslsmith_clamp_i32(1i, -35782i, var_3.c))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(2508f, 625f)), _wgslsmith_div_vec2_f32(vec2<f32>(var_0, -1000f), vec2<f32>(var_0, var_0))))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1335f), -857f), vec2<bool>(false, any(func_1(2147483647i, u_input.b, vec4<u32>(4294967295u, 1832u, u_input.a, u_input.a)).b)))));
}

