struct Struct_1 {
    a: vec3<f32>,
    b: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: f32,
    d: i32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: Struct_2;

var<private> global2: array<vec2<u32>, 19> = array<vec2<u32>, 19>(vec2<u32>(4294967295u, 30986u), vec2<u32>(0u, 4294967295u), vec2<u32>(44274u, 52790u), vec2<u32>(36211u, 4294967295u), vec2<u32>(92350u, 39295u), vec2<u32>(1u, 4294967295u), vec2<u32>(4294967295u, 7622u), vec2<u32>(10714u, 66776u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(0u, 1u), vec2<u32>(1u, 4294967295u), vec2<u32>(57637u, 0u), vec2<u32>(4294967295u, 4597u), vec2<u32>(25965u, 61580u), vec2<u32>(1u, 96143u), vec2<u32>(0u, 4286u), vec2<u32>(1u, 10763u), vec2<u32>(26006u, 0u), vec2<u32>(4294967295u, 1u));

var<private> global3: array<vec3<bool>, 23> = array<vec3<bool>, 23>(vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(true, false, false));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2(arg_0: Struct_2) -> vec3<u32> {
    let var_0 = _wgslsmith_mod_u32(select(1u, _wgslsmith_sub_u32(arg_0.a.b.x, global1.a.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(2550f))) <= _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_0.a.a.x + arg_0.a.a.x)))), u_input.a.x);
    let var_1 = arg_0.a;
    let var_2 = countOneBits(global1.c) <= ~(~arg_0.c);
    global2 = array<vec2<u32>, 19>();
    return vec3<u32>(abs(_wgslsmith_sub_u32(firstTrailingBit(var_0), 0u)) << (_wgslsmith_div_u32(countOneBits(global1.a.b.x), 36437u) % 32u), 48169u, firstTrailingBit(firstLeadingBit(~(~0u))));
}

fn func_1(arg_0: vec2<i32>) -> Struct_1 {
    var var_0 = select(~vec3<u32>(~25763u << ((global1.a.b.x << (4294967295u % 32u)) % 32u), 0u, 0u), vec3<u32>(_wgslsmith_sub_u32(firstLeadingBit(u_input.b.x << (0u % 32u)), _wgslsmith_add_u32(~0u, _wgslsmith_dot_vec4_u32(u_input.b, u_input.b))), _wgslsmith_dot_vec3_u32(~vec3<u32>(global1.a.b.x, 70118u, global1.a.b.x), func_2(Struct_2(Struct_1(global1.a.a, vec3<u32>(global1.a.b.x, global1.a.b.x, 1576u)), vec4<i32>(arg_0.x, -2147483647i, arg_0.x, global1.c), arg_0.x))) & global1.a.b.x, global1.a.b.x), true);
    global3 = array<vec3<bool>, 23>();
    let var_1 = 4294967295u;
    global3 = array<vec3<bool>, 23>();
    var_0 = abs(func_2(Struct_2(global1.a, global1.b, 0i)));
    return global1.a;
}

fn func_3(arg_0: Struct_2, arg_1: bool, arg_2: vec4<i32>) -> vec3<i32> {
    let var_0 = select(select(select(!(!vec2<bool>(arg_1, arg_1)), select(vec2<bool>(arg_1, true), select(vec2<bool>(arg_1, arg_1), vec2<bool>(arg_1, false), vec2<bool>(true, true)), select(vec2<bool>(true, arg_1), vec2<bool>(true, true), true)), !(!vec2<bool>(arg_1, arg_1))), !(!vec2<bool>(arg_1, true)), false), vec2<bool>(true, !all(!global3[_wgslsmith_index_u32(arg_0.a.b.x, 23u)])), arg_1);
    var var_1 = Struct_2(func_1(u_input.c.yy), ~arg_2, i32(-1i) * -12538i);
    var var_2 = ~(~global1.a.b.x);
    let var_3 = func_1(~(-vec2<i32>(43864i, arg_0.b.x)) & vec2<i32>(-2245i, -(u_input.c.x | var_1.c)));
    let var_4 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(global1.a.a.xx * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(arg_0.a.a.xz, vec2<f32>(global1.a.a.x, arg_0.a.a.x), false)), var_3.a.yx)), _wgslsmith_f_op_vec2_f32(-var_3.a.xx));
    return _wgslsmith_add_vec3_i32(select(u_input.c, select(vec3<i32>(var_1.b.x, 1i, arg_2.x), _wgslsmith_mod_vec3_i32(arg_2.zwz | var_1.b.zyy, -vec3<i32>(-1i, arg_2.x, arg_2.x)), global1.a.b.x <= var_3.b.x), !(!(!vec3<bool>(false, false, var_0.x)))), ~arg_2.zyz);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1.a.a.x;
    global3 = array<vec3<bool>, 23>();
    global2 = array<vec2<u32>, 19>();
    global1 = Struct_2(func_1(u_input.c.yy), vec4<i32>(select(~(-u_input.c.x), _wgslsmith_mult_i32(global1.b.x, -u_input.c.x), true), _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(u_input.c, reverseBits(vec3<i32>(u_input.c.x, -2207i, -34719i)), countOneBits(vec3<i32>(u_input.c.x, -814i, global1.b.x))), global1.b.yzy ^ u_input.c), _wgslsmith_dot_vec3_i32(select(~vec3<i32>(20881i, 1i, 2147483647i), _wgslsmith_mod_vec3_i32(global1.b.xxw, vec3<i32>(-1i, -2147483647i, 1i)), true), min(global1.b.zyw, func_3(Struct_2(global1.a, vec4<i32>(u_input.c.x, -2147483647i, u_input.c.x, -2147483647i), u_input.c.x), true, vec4<i32>(u_input.c.x, -2147483647i, 0i, 2147483647i)))), u_input.c.x), -8384i);
    let var_1 = global1.a.b.x;
    var var_2 = max(vec2<u32>(global1.a.b.x | func_2(Struct_2(Struct_1(global1.a.a, u_input.b.wwx), global1.b, -2147483647i)).x, reverseBits(global1.a.b.x) >> (u_input.b.x % 32u)), func_1(u_input.c.yx).b.xy) & ~u_input.a.xz;
    let x = u_input.a;
    s_output = StorageBuffer(global1.b.xyx, global1.a.a.x, _wgslsmith_div_f32(global1.a.a.x, _wgslsmith_f_op_f32(round(global1.a.a.x))), 30515i, vec4<f32>(global1.a.a.x, global1.a.a.x, global1.a.a.x, -1292f));
}

