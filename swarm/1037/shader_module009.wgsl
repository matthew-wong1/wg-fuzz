struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: f32,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 12>;

var<private> global1: array<bool, 31> = array<bool, 31>(true, false, true, false, false, true, true, true, true, true, true, false, false, false, true, true, false, false, false, false, false, false, false, false, true, true, false, false, false, false, true);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: bool, arg_1: vec2<f32>) -> bool {
    global0 = array<Struct_2, 12>();
    global0 = array<Struct_2, 12>();
    global0 = array<Struct_2, 12>();
    var var_0 = Struct_1(u_input.c);
    var var_1 = _wgslsmith_sub_u32(7385u, ~reverseBits(_wgslsmith_dot_vec2_u32(u_input.b.wz, firstTrailingBit(u_input.b.zx))));
    return global1[_wgslsmith_index_u32(var_0.a, 31u)];
}

fn func_2() -> Struct_1 {
    global1 = array<bool, 31>();
    let var_0 = all(vec3<bool>(false, ~2147483647i != (_wgslsmith_dot_vec3_i32(vec3<i32>(-18843i, 2147483647i, u_input.a), vec3<i32>(1i, -2147483647i, 2147483647i)) ^ (u_input.a >> (0u % 32u))), !func_3(true, _wgslsmith_f_op_vec2_f32(max(vec2<f32>(1288f, 1000f), vec2<f32>(-2025f, -155f))))));
    var var_1 = Struct_2(global1[_wgslsmith_index_u32(u_input.b.x, 31u)]);
    global1 = array<bool, 31>();
    let var_2 = Struct_1(u_input.c);
    return var_2;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<u32>) -> Struct_1 {
    let var_0 = global0[_wgslsmith_index_u32(arg_2.x, 12u)];
    let var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(538f)))));
    let var_2 = -4662i;
    global1 = array<bool, 31>();
    let var_3 = var_1;
    return func_2();
}

fn func_1() -> Struct_1 {
    var var_0 = u_input.a;
    global0 = array<Struct_2, 12>();
    var var_1 = 2147483647i;
    let var_2 = ~u_input.c;
    var var_3 = Struct_1(~u_input.b.x);
    return func_4(func_2(), func_2(), vec4<u32>(1u, 69606u, ~(4294967295u ^ u_input.c), ~var_3.a));
}

fn func_5(arg_0: Struct_1, arg_1: bool, arg_2: vec2<bool>, arg_3: vec4<u32>) -> bool {
    global1 = array<bool, 31>();
    global0 = array<Struct_2, 12>();
    var var_0 = Struct_2(false);
    var var_1 = Struct_2(true);
    var var_2 = Struct_1(91350u);
    return false;
}

fn func_6(arg_0: u32, arg_1: vec2<bool>, arg_2: bool, arg_3: vec2<bool>) -> u32 {
    var var_0 = global0[_wgslsmith_index_u32(u_input.c, 12u)];
    var var_1 = abs(abs(_wgslsmith_div_vec2_i32(vec2<i32>(-49860i, u_input.a), max(vec2<i32>(u_input.a, 1i), vec2<i32>(2147483647i, 46856i))) & _wgslsmith_div_vec2_i32(-vec2<i32>(-2147483647i, 31513i), ~vec2<i32>(u_input.a, u_input.a))));
    global0 = array<Struct_2, 12>();
    let var_2 = vec3<bool>(true, _wgslsmith_clamp_u32(arg_0, abs(0u | arg_0), arg_0) > ~u_input.c, true);
    var_0 = Struct_2(var_0.a);
    return reverseBits(0u);
}

fn func_7(arg_0: bool, arg_1: vec2<bool>, arg_2: u32) -> Struct_1 {
    let var_0 = vec4<i32>(u_input.a, abs(~(-u_input.a)) >> ((~_wgslsmith_sub_u32(0u, u_input.c) << (_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(89196u, 4294967295u, arg_2, u_input.c), u_input.b), ~4294967295u) % 32u)) % 32u), ~_wgslsmith_add_i32(u_input.a, 1i), abs(u_input.a));
    let var_1 = min(firstLeadingBit(-7025i), _wgslsmith_dot_vec3_i32(max(_wgslsmith_div_vec3_i32(countOneBits(var_0.wwz), var_0.zwz), vec3<i32>(-u_input.a, ~u_input.a, -19699i)), vec3<i32>(_wgslsmith_dot_vec2_i32(-var_0.zx, max(var_0.yy, vec2<i32>(0i, 1i))), _wgslsmith_dot_vec4_i32(var_0, vec4<i32>(u_input.a, -1i, u_input.a, -78085i)), _wgslsmith_mult_i32(u_input.a, u_input.a) ^ ~43524i)));
    global0 = array<Struct_2, 12>();
    global1 = array<bool, 31>();
    let var_2 = Struct_2(!(!(!global1[_wgslsmith_index_u32(arg_2, 31u)])));
    return func_4(func_4(Struct_1(_wgslsmith_mod_u32(60694u, 1u)), Struct_1(arg_2), _wgslsmith_add_vec4_u32(max(u_input.b, u_input.b), vec4<u32>(_wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(4294967295u, 4294967295u, arg_2, u_input.c)), ~4294967295u, func_6(66159u, arg_1, false, vec2<bool>(global1[_wgslsmith_index_u32(u_input.c, 31u)], true)), func_2().a))), Struct_1(func_4(Struct_1(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, arg_2, 4294967295u, u_input.b.x), u_input.b)), func_2(), u_input.b).a), ~vec4<u32>(0u, 1u, func_6(0u, vec2<bool>(true, true), !arg_0, arg_1), _wgslsmith_add_u32(~u_input.b.x, ~u_input.b.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 12>();
    var var_0 = -(-u_input.a << (u_input.c % 32u));
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(858f + _wgslsmith_f_op_f32(min(-179f, -590f)))))), 421f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1f, 1f, true)))));
    var var_2 = func_7(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-1123f, 352f), _wgslsmith_div_f32(-472f, -175f))) - _wgslsmith_f_op_f32(trunc(-963f))) <= _wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(var_1.x * var_1.x)), !vec2<bool>(global1[_wgslsmith_index_u32(~u_input.c, 31u)], all(!vec2<bool>(global1[_wgslsmith_index_u32(u_input.c, 31u)], true))), ~func_6(_wgslsmith_mod_u32(u_input.b.x | 97596u, u_input.c), select(vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 31u)], false), vec2<bool>(false, true), vec2<bool>(false, false)), func_5(func_1(), true, vec2<bool>(true, true), vec4<u32>(37804u, 0u, u_input.b.x, 26608u)), vec2<bool>(true, all(vec2<bool>(global1[_wgslsmith_index_u32(1u, 31u)], global1[_wgslsmith_index_u32(4294967295u, 31u)])))));
    var_0 = -32689i;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.yz, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(var_1.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(var_1.x)), _wgslsmith_f_op_f32(-501f + var_1.x))))))), _wgslsmith_div_f32(695f, 1379f), u_input.a, _wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-431f))))));
}

