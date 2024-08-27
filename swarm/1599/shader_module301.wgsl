struct Struct_1 {
    a: vec3<u32>,
    b: f32,
    c: vec3<u32>,
    d: u32,
}

struct Struct_2 {
    a: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<f32>,
    c: u32,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<u32>(0u, 1u, 0u), -512f, vec3<u32>(45825u, 35736u, 0u), 1u);

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
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

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2(arg_0: vec3<f32>, arg_1: f32, arg_2: Struct_1) -> u32 {
    global0 = arg_2;
    var var_0 = arg_2;
    let var_1 = u_input.a.yw;
    return ~arg_2.d;
}

fn func_3() -> u32 {
    var var_0 = _wgslsmith_mult_vec3_i32(-vec3<i32>(u_input.a.x, u_input.b.x, 2147483647i), _wgslsmith_clamp_vec3_i32(_wgslsmith_add_vec3_i32(-(u_input.b.xxy & vec3<i32>(u_input.c, -12962i, u_input.c)), firstLeadingBit(u_input.b.xww) ^ abs(vec3<i32>(-7760i, 442i, u_input.a.x))), _wgslsmith_sub_vec3_i32(u_input.a.ywy, -u_input.b.xxy), vec3<i32>(-1i) * -u_input.a.yyz));
    let var_1 = select(!(!vec2<bool>(true, all(vec4<bool>(false, true, false, true)))), vec2<bool>(any(vec2<bool>(true, true)), true), !(!select(vec2<bool>(true, true), vec2<bool>(false, true), true)));
    var_0 = u_input.a.yzw;
    var_0 = _wgslsmith_add_vec3_i32(vec3<i32>(-(_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.x, u_input.a.x, var_0.x), vec3<i32>(2147483647i, 1i, u_input.b.x)) | max(-2147483647i, 2147483647i)), ~u_input.b.x, _wgslsmith_clamp_i32(~_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.x, 116496i, 60589i), vec3<i32>(-4103i, u_input.b.x, u_input.b.x)), var_0.x, ~(-5014i))), abs(u_input.a.wxz));
    let var_2 = Struct_1(_wgslsmith_clamp_vec3_u32(max(max(global0.a, min(global0.c, global0.c)), countOneBits(vec3<u32>(11677u, global0.a.x, global0.a.x)) & vec3<u32>(global0.d, global0.d, global0.a.x)), select(vec3<u32>(_wgslsmith_div_u32(global0.d, global0.c.x), max(1u, 1u), ~global0.a.x), vec3<u32>(global0.d, 68473u, 0u), !select(vec3<bool>(false, false, var_1.x), vec3<bool>(false, var_1.x, var_1.x), var_1.x)), ~global0.a), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(471f, _wgslsmith_f_op_f32(-global0.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global0.b)))))), global0.c, 4294967295u);
    return 28372u;
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: Struct_2, arg_3: vec3<bool>) -> vec3<u32> {
    global0 = Struct_1(arg_1.c, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1500f, _wgslsmith_f_op_f32(1544f * global0.b), true)) + _wgslsmith_f_op_f32(-1364f + _wgslsmith_f_op_f32(select(arg_1.b, 1478f, true)))))), firstTrailingBit(~_wgslsmith_div_vec3_u32(vec3<u32>(67678u, 1u, 0u), _wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, 75043u, 110197u), global0.c))), _wgslsmith_add_u32(_wgslsmith_mult_u32(global0.d, ~59882u), global0.d));
    let var_0 = _wgslsmith_f_op_f32(-arg_1.b);
    global0 = Struct_1(_wgslsmith_mult_vec3_u32(vec3<u32>(global0.d, 1u, _wgslsmith_clamp_u32(1u, arg_2.a, 30178u & arg_2.a)), arg_1.a), -175f, ~vec3<u32>(_wgslsmith_clamp_u32(1325u, 4294967295u << (global0.d % 32u), global0.a.x), _wgslsmith_dot_vec2_u32(arg_1.c.zz, arg_1.a.yz) ^ _wgslsmith_sub_u32(70961u, 0u), abs(firstTrailingBit(arg_1.d))), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.c.x, global0.d, 1u, _wgslsmith_mod_u32(~arg_1.d, ~arg_1.c.x)), vec4<u32>(func_2(vec3<f32>(var_0, 246f, -1000f), global0.b, arg_1) >> (global0.c.x % 32u), global0.a.x, abs(_wgslsmith_mult_u32(4294967295u, arg_1.c.x)), 23718u)));
    var var_1 = -2147483647i;
    var_1 = 1i;
    return vec3<u32>(select(~arg_1.c.x, arg_2.a, any(vec2<bool>(arg_1.a.x <= 957u, false))), arg_2.a, func_2(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-125f, 691f, arg_1.b))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.b)), Struct_1(~vec3<u32>(global0.d, 5114u, arg_2.a) ^ ~vec3<u32>(78733u, arg_2.a, 33688u), arg_1.b, arg_1.a, ~_wgslsmith_dot_vec3_u32(global0.c, vec3<u32>(arg_2.a, 4294967295u, arg_2.a)))));
}

fn func_1(arg_0: vec3<i32>) -> f32 {
    var var_0 = -2147483647i;
    var_0 = arg_0.x;
    let var_1 = Struct_2(_wgslsmith_dot_vec4_u32(vec4<u32>(global0.c.x, global0.c.x, global0.a.x, func_2(vec3<f32>(global0.b, global0.b, global0.b), 266f, Struct_1(vec3<u32>(58887u, 10488u, 0u), 439f, global0.a, global0.d))), min(~vec4<u32>(global0.a.x, global0.a.x, global0.c.x, global0.c.x), vec4<u32>(70707u, 42096u, global0.a.x, 4294967295u))) | ~0u);
    global0 = Struct_1(_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, max(~var_1.a, 25789u >> (var_1.a % 32u)), global0.a.x), global0.c, _wgslsmith_add_vec3_u32(vec3<u32>(0u, 24276u, ~global0.c.x), _wgslsmith_div_vec3_u32(~vec3<u32>(3081u, var_1.a, 0u), vec3<u32>(global0.c.x, global0.d, 0u)))), -392f, func_4(vec3<i32>(u_input.b.x, arg_0.x, ~select(u_input.b.x, -2147483647i, true)), Struct_1(~reverseBits(vec3<u32>(68966u, var_1.a, 4294967295u)), _wgslsmith_f_op_f32(-144f - _wgslsmith_f_op_f32(sign(-1471f))), vec3<u32>(func_3(), var_1.a ^ var_1.a, var_1.a | 4294967295u), ~(~var_1.a)), Struct_2(~(0u >> (global0.a.x % 32u))), vec3<bool>(true, true, true)), 51614u);
    global0 = Struct_1(global0.a | _wgslsmith_add_vec3_u32(global0.c | vec3<u32>(0u, var_1.a, 47019u), _wgslsmith_add_vec3_u32(global0.c, vec3<u32>(var_1.a, 17726u, global0.a.x)) & _wgslsmith_mult_vec3_u32(vec3<u32>(63428u, global0.c.x, global0.d), vec3<u32>(global0.a.x, var_1.a, 85917u))), -1584f, vec3<u32>(~(36194u << (global0.d % 32u)) & min(~15192u, _wgslsmith_add_u32(0u, 0u)), global0.d, global0.d), global0.d);
    return global0.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -u_input.b.xy;
    let x = u_input.a;
    s_output = StorageBuffer(max(_wgslsmith_sub_vec3_i32(~min(vec3<i32>(-16561i, -4866i, u_input.a.x), vec3<i32>(-32854i, var_0.x, 2147483647i)), abs(~u_input.a.wzy)), _wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(u_input.b.wzy, -vec3<i32>(u_input.c, var_0.x, var_0.x)), countOneBits(u_input.a.zzw))), vec4<f32>(1338f, global0.b, _wgslsmith_f_op_f32(global0.b * 827f), global0.b), global0.a.x, _wgslsmith_f_op_f32(func_1(_wgslsmith_mult_vec3_i32(reverseBits(~u_input.a.ywy), ~vec3<i32>(0i, 1i, 0i)))), 71380u);
}

