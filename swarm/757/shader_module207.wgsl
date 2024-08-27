struct Struct_1 {
    a: f32,
    b: vec4<u32>,
    c: u32,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(-1000f, vec4<u32>(17440u, 4294967295u, 29821u, 88029u), 17604u, 1141f), false, Struct_1(-1434f, vec4<u32>(38454u, 1u, 0u, 12193u), 4294967295u, 1000f));

var<private> global1: Struct_3 = Struct_3(2147483647i);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: vec2<f32>, arg_1: vec2<u32>) -> vec4<u32> {
    var var_0 = !global0.b;
    let var_1 = Struct_4(Struct_3(global1.a), Struct_1(global0.a.d, global0.c.b, 8958u, -1472f));
    var var_2 = ~global0.c.b;
    let var_3 = ~global0.c.b.zzy;
    let var_4 = var_1.a.a;
    return ~abs(_wgslsmith_mod_vec4_u32(select(vec4<u32>(0u, 33367u, 56177u, 4294967295u), abs(vec4<u32>(42940u, var_3.x, 4294967295u, arg_1.x)), true), _wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 10514u, 52492u, 93427u), vec4<u32>(arg_1.x, var_1.b.c, var_3.x, var_3.x)) & global0.a.b));
}

fn func_3() -> u32 {
    global1 = Struct_3(-8205i);
    global1 = Struct_3(global1.a);
    var var_0 = false;
    let var_1 = -global1.a;
    var var_2 = ~(~_wgslsmith_mod_u32(63103u << (0u % 32u), ~global0.c.c)) << (select(~60290u, u_input.a.x, global0.b) % 32u);
    return ~(max(12226u, _wgslsmith_div_u32(firstLeadingBit(1u), _wgslsmith_dot_vec2_u32(vec2<u32>(global0.c.b.x, u_input.a.x), vec2<u32>(1u, global0.a.b.x)))) ^ ~(4294967295u >> (u_input.a.x % 32u)));
}

fn func_2(arg_0: Struct_3) -> Struct_1 {
    let var_0 = vec3<u32>(80993u, u_input.a.x, ~firstTrailingBit(~global0.a.b.x) >> (39910u % 32u));
    let var_1 = ~_wgslsmith_div_vec4_u32(vec4<u32>(~u_input.a.x, global0.a.c, ~67618u, _wgslsmith_div_u32(u_input.a.x, u_input.a.x) >> (func_1(vec2<f32>(1037f, global0.c.d), var_0.zz).x % 32u)), reverseBits(~_wgslsmith_mod_vec4_u32(vec4<u32>(global0.a.b.x, var_0.x, u_input.a.x, var_0.x), vec4<u32>(global0.c.c, 4294967295u, global0.a.b.x, 98626u))));
    var var_2 = abs(_wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_add_i32(16005i, arg_0.a), _wgslsmith_dot_vec3_i32(vec3<i32>(0i, global1.a, arg_0.a), vec3<i32>(-20637i, -2147483647i, arg_0.a))) ^ _wgslsmith_mod_vec2_i32(vec2<i32>(global1.a, 0i), vec2<i32>(global1.a, -6308i)), ~(-vec2<i32>(2147483647i, -17676i))));
    var_2 = ~_wgslsmith_clamp_i32(~(arg_0.a >> (40177u % 32u)), ~(-abs(global1.a)), arg_0.a);
    let var_3 = -_wgslsmith_sub_i32(~arg_0.a, reverseBits(~(global1.a << (var_0.x % 32u))));
    return Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1135f), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(func_1(vec2<f32>(1381f, 1000f), vec2<u32>(global0.c.c, 13581u)).x, 0u, countOneBits(var_0.x), 4294967295u), ~(~vec4<u32>(4294967295u, var_1.x, u_input.a.x, 4294967295u))), _wgslsmith_clamp_u32(8945u, ~var_0.x << (51018u % 32u), global0.a.b.x & ~var_0.x), var_1.x, 0u), select(~func_3(), ~68766u, any(select(select(vec4<bool>(global0.b, global0.b, global0.b, true), vec4<bool>(global0.b, global0.b, false, global0.b), vec4<bool>(false, global0.b, global0.b, global0.b)), vec4<bool>(global0.b, false, global0.b, global0.b), select(vec4<bool>(global0.b, false, global0.b, global0.b), vec4<bool>(global0.b, global0.b, false, global0.b), vec4<bool>(true, false, true, global0.b))))), _wgslsmith_f_op_f32(sign(1112f)));
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: bool, arg_3: vec4<u32>) -> vec3<f32> {
    let var_0 = Struct_1(global0.a.a, ~arg_1.b, u_input.a.x, _wgslsmith_f_op_f32(ceil(arg_1.a)));
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(-global0.a.a), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(global0.c.a, var_0.d))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(max(-702f, 759f)), _wgslsmith_f_op_f32(f32(-1f) * -1138f), arg_1.a), vec3<f32>(-1446f, _wgslsmith_f_op_f32(-arg_1.a), arg_1.a), vec3<bool>(true, true, !arg_2))))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-global0.c.a), 951f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-493f, global0.a.d, true)), _wgslsmith_f_op_f32(var_0.d + -1000f)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(-664f, ~max((global0.c.b | vec4<u32>(1u, global0.c.b.x, 21263u, 0u)) << (global0.c.b % vec4<u32>(32u)), func_1(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(global0.a.a, -1817f), vec2<f32>(global0.c.a, global0.c.a))), u_input.a)), 42310u, -1556f);
    global1 = Struct_3(global1.a);
    var var_1 = _wgslsmith_f_op_vec3_f32(func_4(-45400i, func_2(Struct_3(37214i)), -global1.a > 1i, vec4<u32>(_wgslsmith_mult_u32(~(~global0.c.b.x), 0u), ~10895u, 1u, ~u_input.a.x)));
    global0 = Struct_2(global0.a, global0.b && global0.b, Struct_1(_wgslsmith_f_op_f32(sign(var_1.x)), abs(vec4<u32>(u_input.a.x, max(1u, var_0.b.x), 1u, ~global0.a.c)), ~(~_wgslsmith_sub_u32(u_input.a.x, u_input.a.x)), -304f));
    var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d)), _wgslsmith_f_op_f32(f32(-1f) * -210f), var_0.a);
    global1 = Struct_3(-163i);
    var var_2 = !(!select(select(vec4<bool>(global0.b, global0.b, global0.b, global0.b), select(vec4<bool>(false, global0.b, global0.b, false), vec4<bool>(true, true, global0.b, false), vec4<bool>(global0.b, global0.b, true, false)), all(vec2<bool>(global0.b, global0.b))), !(!vec4<bool>(true, true, global0.b, true)), true));
    var_0 = global0.c;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(1u, u_input.a.x, ~(0u >> (_wgslsmith_sub_u32(67450u, u_input.a.x) % 32u))), var_0.c);
}

