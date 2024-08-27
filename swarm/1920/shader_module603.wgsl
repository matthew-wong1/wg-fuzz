struct Struct_1 {
    a: u32,
    b: u32,
    c: i32,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 2438i;

var<private> global1: Struct_1 = Struct_1(4294967295u, 19147u, -1i, vec3<f32>(803f, -399f, -387f));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: bool, arg_3: Struct_1) -> u32 {
    var var_0 = Struct_1(~30990u ^ _wgslsmith_mult_u32(countOneBits(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, arg_3.b), vec2<u32>(global1.a, global1.a))), global1.b), arg_3.b, abs(~arg_3.c | _wgslsmith_dot_vec2_i32(vec2<i32>(arg_1.c, arg_1.c), vec2<i32>(global1.c, -2147483647i))) >> (global1.a % 32u), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(1285f)), 543f)), arg_1.d.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-572f, 1000f)))));
    let var_1 = max(abs(~(~(~vec4<i32>(2147483647i, 38975i, 0i, var_0.c)))), ~vec4<i32>(_wgslsmith_mult_i32(_wgslsmith_div_i32(var_0.c, -1i), min(-2147483647i, var_0.c)), arg_0, arg_1.c, _wgslsmith_clamp_i32(var_0.c, _wgslsmith_sub_i32(arg_0, 2147483647i), 2766i)));
    let var_2 = arg_3;
    global1 = arg_1;
    let var_3 = var_2.a;
    return ~(~_wgslsmith_mod_u32(arg_1.b, reverseBits(8881u))) | 14644u;
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1(~u_input.b, (_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, global1.b), vec2<u32>(u_input.b, global1.a)), ~global1.b) ^ global1.b) | select(u_input.a, _wgslsmith_mult_u32(func_3(global1.c, Struct_1(global1.b, global1.a, global1.c, vec3<f32>(global1.d.x, -309f, 598f)), false, Struct_1(global1.b, 65751u, -8346i, global1.d)), 66557u), any(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true)))), abs(_wgslsmith_dot_vec2_i32(select(vec2<i32>(global1.c, -10201i) ^ vec2<i32>(global1.c, -2147483647i), vec2<i32>(global1.c, -42300i), select(false, false, true)), _wgslsmith_add_vec2_i32(vec2<i32>(1i, 1i), _wgslsmith_clamp_vec2_i32(vec2<i32>(0i, 0i), vec2<i32>(global1.c, -1i), vec2<i32>(global1.c, 2147483647i))))), vec3<f32>(-956f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global1.d.x))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global1.d.x))), _wgslsmith_f_op_f32(-1099f * global1.d.x)))));
    let var_1 = var_0;
    global1 = Struct_1(firstLeadingBit(firstTrailingBit(4294967295u)), var_0.b, ~(-17638i), var_0.d);
    var var_2 = Struct_1(~(~1u) << (firstTrailingBit(~_wgslsmith_dot_vec4_u32(vec4<u32>(9800u, global1.a, 33929u, 4110u), vec4<u32>(19812u, 0u, u_input.b, 18140u))) % 32u), ~_wgslsmith_mod_u32(0u, ~var_0.a), -min(_wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.c, 38303i, 51321i), vec3<i32>(var_0.c, 1i, -2147483647i)), -10982i, 2147483647i), _wgslsmith_mod_i32(abs(var_1.c), ~var_1.c)), vec3<f32>(-1558f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d.x)), var_0.d.x));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-556f * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(130f * -1073f))))));
    return var_0;
}

fn func_1() -> vec3<f32> {
    global1 = Struct_1(1u, select(countOneBits(u_input.b) ^ 69327u, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, global1.a, 1u, 0u), vec4<u32>(0u, 1u, global1.b, u_input.c)) >> (~global1.b % 32u), false), 2147483647i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(global1.d.x, -1316f, global1.d.x), global1.d) - global1.d), global1.d)));
    let var_0 = func_2();
    global0 = global1.c;
    let var_1 = var_0;
    global1 = var_0;
    return _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.d * _wgslsmith_f_op_vec3_f32(global1.d + _wgslsmith_f_op_vec3_f32(-global1.d))) + _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(308f, _wgslsmith_f_op_f32(-var_0.d.x), _wgslsmith_f_op_f32(f32(-1f) * -1195f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_clamp_i32(abs(1i), 48334i, -2147483647i);
    var var_0 = _wgslsmith_f_op_f32(-184f * _wgslsmith_f_op_f32(floor(-357f)));
    let var_1 = vec3<u32>(global1.b, global1.b, _wgslsmith_dot_vec3_u32(~_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, 0u, 1u), vec3<u32>(global1.b, u_input.b, global1.a)), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, u_input.b, global1.a), vec3<u32>(27828u, global1.a, 0u), vec3<u32>(global1.a, global1.a, 40684u)))) ^ ~(~vec3<u32>(_wgslsmith_sub_u32(29789u, global1.a), 30299u & global1.b, global1.a));
    var var_2 = Struct_1(reverseBits(_wgslsmith_add_u32(17612u, 21116u)), 60842u, global1.c, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_1())));
    let var_3 = firstTrailingBit(vec2<u32>(~u_input.c, ~global1.a | 1u) ^ vec2<u32>(func_3(global1.c, func_2(), var_2.c <= -1i, func_2()), ~firstLeadingBit(global1.a)));
    var var_4 = -303f;
    global1 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(-14713i);
}

