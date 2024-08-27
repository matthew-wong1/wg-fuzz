struct Struct_1 {
    a: vec2<i32>,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 8>;

var<private> global1: array<vec2<bool>, 6> = array<vec2<bool>, 6>(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true));

var<private> global2: vec3<bool>;

var<private> global3: Struct_1;

var<private> global4: vec2<bool> = vec2<bool>(false, true);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
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

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_1, arg_1: i32) -> u32 {
    let var_0 = vec4<u32>(u_input.b << (u_input.a.x % 32u), select(u_input.a.x, _wgslsmith_sub_u32(_wgslsmith_div_u32(~u_input.b, ~u_input.b), _wgslsmith_sub_u32(u_input.b, 4294967295u)), !(!global2.x | !global2.x)), 22998u, ~(~_wgslsmith_add_u32(abs(1u), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 8929u, 0u, u_input.a.x), vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.a.x)))));
    global3 = Struct_1(~_wgslsmith_mod_vec2_i32(reverseBits(firstLeadingBit(vec2<i32>(global3.a.x, -2147483647i))), global3.a), ~vec3<i32>(_wgslsmith_div_i32(select(3119i, -1i, false), countOneBits(-1i)), u_input.c, _wgslsmith_dot_vec2_i32(vec2<i32>(arg_1, -15369i), abs(arg_0.b.xx))));
    global1 = array<vec2<bool>, 6>();
    let var_1 = arg_0;
    global0 = array<vec3<bool>, 8>();
    return firstTrailingBit(4294967295u);
}

fn func_2(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: f32, arg_3: vec4<f32>) -> i32 {
    var var_0 = func_3(Struct_1(reverseBits(global3.a), arg_1.b), -2147483647i);
    let var_1 = !any(global1[_wgslsmith_index_u32(u_input.b, 6u)]);
    global3 = Struct_1(_wgslsmith_clamp_vec2_i32(-(~(-vec2<i32>(-28851i, -5592i))), vec2<i32>(u_input.c, firstLeadingBit(arg_1.a.x)), vec2<i32>(_wgslsmith_mod_i32(abs(u_input.c), arg_1.a.x), _wgslsmith_dot_vec2_i32(max(arg_1.b.yx, arg_1.a), -vec2<i32>(u_input.c, -2147483647i)))), arg_1.b & ~(_wgslsmith_clamp_vec3_i32(vec3<i32>(arg_1.a.x, arg_1.b.x, global3.b.x), global3.b, arg_1.b) | global3.b));
    let var_2 = vec2<i32>(-(~_wgslsmith_sub_i32(_wgslsmith_sub_i32(arg_1.b.x, arg_1.a.x), 1i)), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c << ((u_input.a.x | 4426u) % 32u), arg_1.a.x, ~abs(-1i)), global3.b));
    let var_3 = _wgslsmith_f_op_vec3_f32(abs(arg_3.xwz));
    return arg_1.b.x;
}

fn func_1(arg_0: f32, arg_1: Struct_1) -> i32 {
    let var_0 = 14443u;
    let var_1 = _wgslsmith_div_u32(u_input.b, u_input.b);
    let var_2 = Struct_1(_wgslsmith_mod_vec2_i32(~vec2<i32>(global3.a.x << (var_0 % 32u), _wgslsmith_add_i32(u_input.c, -1i)), vec2<i32>(-(~7500i), -arg_1.a.x)), arg_1.b);
    let var_3 = Struct_1(vec2<i32>(-1i, 40017i), vec3<i32>(i32(-1i) * -(global3.a.x ^ arg_1.a.x), select(_wgslsmith_sub_i32(func_2(vec3<f32>(586f, arg_0, arg_0), Struct_1(vec2<i32>(-14673i, 1i), vec3<i32>(var_2.a.x, u_input.c, global3.b.x)), arg_0, vec4<f32>(409f, -584f, arg_0, -732f)), ~23351i), _wgslsmith_dot_vec3_i32(vec3<i32>(var_2.a.x, var_2.b.x, global3.a.x) >> (vec3<u32>(u_input.b, 4294967295u, 0u) % vec3<u32>(32u)), vec3<i32>(15611i, 31010i, u_input.c)), !any(vec2<bool>(global2.x, false))), abs((arg_1.b.x >> (var_0 % 32u)) << (select(0u, 2122u, true) % 32u))));
    var var_4 = arg_1;
    return 46372i;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec2<bool>, 6>();
    global0 = array<vec3<bool>, 8>();
    var var_0 = Struct_1(-vec2<i32>(1i ^ u_input.c, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, u_input.c), vec2<i32>(global3.b.x, 2147483647i))), _wgslsmith_sub_vec3_i32(vec3<i32>(-(global3.b.x << (u_input.b % 32u)), ~func_1(742f, Struct_1(vec2<i32>(1i, -30857i), vec3<i32>(2147483647i, u_input.c, -6126i))), abs(abs(global3.b.x))), vec3<i32>(global3.a.x, _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(global3.a, vec2<i32>(-2147483647i, -1690i)), global3.a | global3.b.zy), -2147483647i)));
    global3 = Struct_1(var_0.b.yz, min(vec3<i32>(max(u_input.c, ~(-4299i)), -28431i, -30998i), vec3<i32>(countOneBits(var_0.b.x), countOneBits(43726i), min(var_0.b.x, 2147483647i))));
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-798f * 102f), -643f, true))), 166f, 246f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(f32(-1f) * -1101f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -447f) + _wgslsmith_div_f32(454f, -711f))))));
    var var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-561f, -236f, _wgslsmith_f_op_f32(-var_1.x), 1816f)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-837f, 121f, _wgslsmith_f_op_f32(abs(1364f)), var_1.x)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1281f, -1026f, 531f, -1000f) + vec4<f32>(-1750f, var_1.x, -1698f, var_1.x))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(vec4<f32>(1000f, 208f, 1340f, 1817f), vec4<f32>(var_1.x, var_1.x, var_1.x, var_1.x)))))));
    let x = u_input.a;
    s_output = StorageBuffer(10409i, abs(vec4<u32>(~(~u_input.a.x), 32746u, ~u_input.b, _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a.x, 27872u, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, 1u, u_input.b, u_input.b)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(211f, var_1.x, var_1.x) + var_1.zzx)))) - _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(var_2.zwz, vec3<f32>(1000f, var_2.x, var_2.x), !vec3<bool>(global4.x, global4.x, false)))))));
}

