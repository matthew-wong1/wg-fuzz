struct Struct_1 {
    a: vec3<i32>,
    b: u32,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 6> = array<Struct_1, 6>(Struct_1(vec3<i32>(6236i, 0i, 1i), 32549u), Struct_1(vec3<i32>(2147483647i, 0i, 29732i), 72623u), Struct_1(vec3<i32>(0i, 18102i, 59637i), 4294967295u), Struct_1(vec3<i32>(1i, i32(-2147483648), -1i), 1u), Struct_1(vec3<i32>(2147483647i, 2147483647i, 30193i), 0u), Struct_1(vec3<i32>(-1i, -1i, 2147483647i), 4294967295u));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_1(arg_0: u32, arg_1: i32, arg_2: Struct_2, arg_3: Struct_3) -> i32 {
    var var_0 = true;
    global0 = array<Struct_1, 6>();
    var var_1 = abs(~(~_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.d, -2147483647i), vec2<i32>(u_input.b, u_input.b))));
    let var_2 = arg_3.a;
    global0 = array<Struct_1, 6>();
    return -u_input.b;
}

fn func_2(arg_0: vec3<bool>, arg_1: Struct_1) -> i32 {
    let var_0 = vec3<bool>(arg_0.x, true, 1u <= ~(~firstLeadingBit(u_input.c)));
    var var_1 = !select(!(!vec4<bool>(var_0.x, false, false, false)), !select(vec4<bool>(true, arg_0.x, arg_0.x, false), select(vec4<bool>(false, var_0.x, false, var_0.x), vec4<bool>(false, false, arg_0.x, var_0.x), arg_0.x), vec4<bool>(arg_0.x, false, var_0.x, false)), var_0.x);
    var_1 = !(!(!(!vec4<bool>(true, arg_0.x, var_0.x, arg_0.x))));
    var var_2 = ~max(vec2<u32>(1u, u_input.a.x), ~u_input.a.wx);
    var var_3 = !any(vec3<bool>(var_1.x, var_1.x && var_0.x, !(!var_0.x)));
    return i32(-1i) * -arg_1.a.x;
}

fn func_3(arg_0: u32, arg_1: Struct_3) -> f32 {
    let var_0 = Struct_4(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(countOneBits(arg_0), ~(arg_0 | 63964u), 4294967295u, 47902u), vec4<u32>(~(u_input.c << (9193u % 32u)), arg_0, reverseBits(arg_0) >> (_wgslsmith_mod_u32(8768u, u_input.a.x) % 32u), abs(min(21329u, u_input.c)))), 6u)]);
    let var_1 = u_input.a.wzx & _wgslsmith_clamp_vec3_u32(_wgslsmith_add_vec3_u32(~reverseBits(vec3<u32>(0u, 17259u, var_0.a.b)), vec3<u32>(var_0.a.b, u_input.a.x, max(4294967295u, 11880u))), vec3<u32>(_wgslsmith_dot_vec3_u32(u_input.a.xzy, abs(u_input.a.wyz)), 1u, var_0.a.b), u_input.a.yzx);
    return _wgslsmith_f_op_f32(ceil(arg_1.a.a));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 6>();
    var var_0 = _wgslsmith_sub_vec4_i32(abs(~vec4<i32>(2147483647i, u_input.d ^ 2333i, func_1(98227u, u_input.b, Struct_2(777f), Struct_3(Struct_2(-1000f))), _wgslsmith_div_i32(-14889i, u_input.d))), select(vec4<i32>(func_2(vec3<bool>(true, false, true), global0[_wgslsmith_index_u32(u_input.a.x, 6u)]) << ((u_input.a.x ^ u_input.c) % 32u), 15590i, i32(-1i) * -15839i, _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, u_input.b, 12241i), vec3<i32>(-1i, u_input.d, -1i)), u_input.b)), vec4<i32>(-2147483647i, u_input.b, u_input.b, u_input.d), _wgslsmith_f_op_f32(130f - _wgslsmith_f_op_f32(ceil(-778f))) <= -982f));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(-185f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(u_input.c, Struct_3(Struct_2(117f)))) + 1500f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-182f, 1080f))) + vec2<f32>(1f, 1f))));
}

