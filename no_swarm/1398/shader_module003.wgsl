struct Struct_1 {
    a: i32,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
    c: Struct_1,
    d: Struct_3,
    e: u32,
}

struct Struct_5 {
    a: i32,
    b: Struct_4,
    c: i32,
    d: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: i32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 12>;

var<private> global1: vec2<i32>;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_2(arg_0: Struct_5, arg_1: vec2<i32>) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(arg_0.b.c.b - arg_0.b.c.b);
    global1 = _wgslsmith_div_vec2_i32(vec2<i32>(-arg_1.x, arg_1.x), ~vec2<i32>(-2147483647i, arg_1.x));
    return arg_1.x;
}

fn func_3(arg_0: bool, arg_1: f32, arg_2: vec3<i32>, arg_3: Struct_5) -> i32 {
    let var_0 = any(vec4<bool>(!select(arg_0, true, false), !any(!vec3<bool>(arg_0, arg_0, arg_3.b.a.a.x)), arg_3.b.a.a.x, arg_3.b.d.a.x));
    global0 = array<vec2<i32>, 12>();
    let var_1 = Struct_1(-_wgslsmith_mult_i32(-1i, -54764i), _wgslsmith_f_op_f32(f32(-1f) * -721f));
    var var_2 = Struct_3(arg_3.b.d.a, Struct_1(16623i, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_1)))))));
    var var_3 = -34095i << ((~1u & ~arg_3.d) % 32u);
    return ~(global1.x & firstTrailingBit(~(~global1.x)));
}

fn func_1(arg_0: u32, arg_1: f32) -> Struct_1 {
    global1 = global0[_wgslsmith_index_u32(abs(~_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0, ~u_input.d, u_input.d ^ arg_0), ~(~u_input.b.zyy))), 12u)];
    global1 = firstTrailingBit(min(~vec2<i32>(firstTrailingBit(-56770i), func_2(Struct_5(u_input.e, Struct_4(Struct_3(vec4<bool>(false, true, false, true), Struct_1(u_input.e, 1410f)), Struct_2(Struct_1(u_input.e, -1000f), global1.x), Struct_1(global1.x, arg_1), Struct_3(vec4<bool>(false, true, true, true), Struct_1(0i, arg_1)), 57u), u_input.e, 1u), global0[_wgslsmith_index_u32(37856u, 12u)])), vec2<i32>(reverseBits(~10279i), -func_3(false, arg_1, vec3<i32>(global1.x, 22763i, -1i), Struct_5(u_input.e, Struct_4(Struct_3(vec4<bool>(true, false, true, true), Struct_1(u_input.a.x, -726f)), Struct_2(Struct_1(10263i, arg_1), u_input.a.x), Struct_1(2147483647i, -1412f), Struct_3(vec4<bool>(true, false, true, false), Struct_1(global1.x, arg_1)), u_input.b.x), -1i, u_input.d)))));
    var var_0 = -10739i;
    var var_1 = select(~u_input.b.wy, _wgslsmith_mod_vec2_u32(~(~_wgslsmith_mod_vec2_u32(vec2<u32>(79271u, u_input.d), u_input.b.xw)), ~vec2<u32>(countOneBits(4294967295u), abs(u_input.d))), !vec2<bool>(_wgslsmith_f_op_f32(-arg_1) > arg_1, false));
    let var_2 = _wgslsmith_add_vec2_i32(u_input.a, vec2<i32>(global1.x, -countOneBits(global1.x) ^ abs(-5506i)));
    return Struct_1(0i ^ u_input.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(458f + arg_1)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(2051f)) * arg_1))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2) -> vec2<i32> {
    global1 = u_input.a;
    var var_0 = Struct_3(!vec4<bool>(arg_0.a == -arg_0.a, true, false, all(vec3<bool>(true, true, true))), arg_1.a);
    let var_1 = var_0.a.x;
    global1 = vec2<i32>(-2147483647i, -(arg_1.a.a ^ -_wgslsmith_mod_i32(0i, arg_0.a)));
    let var_2 = var_0.b.a;
    return reverseBits(~_wgslsmith_div_vec2_i32(max(countOneBits(vec2<i32>(-36081i, u_input.c)), firstLeadingBit(global0[_wgslsmith_index_u32(u_input.d, 12u)])), ~(u_input.a | global0[_wgslsmith_index_u32(49654u, 12u)])));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 16058u;
    let var_1 = vec2<i32>(~_wgslsmith_mod_i32(global1.x, u_input.e), u_input.a.x);
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    global1 = countOneBits(func_4(func_1(u_input.b.x, _wgslsmith_f_op_f32(round(-1219f))), Struct_2(func_1(0u, -1317f), reverseBits(0i)))) << (u_input.b.wx % vec2<u32>(32u));
    let var_3 = firstTrailingBit(~(-38582i));
    let var_4 = -firstTrailingBit(select(min(~global1.x, ~var_3), func_4(func_1(60506u, 485f), Struct_2(Struct_1(var_1.x, var_2), -1743i)).x, any(select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false), true))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_i32(~(-abs(vec3<i32>(global1.x, var_4, var_3))), vec3<i32>(~2147483647i, _wgslsmith_mult_i32(1i, _wgslsmith_sub_i32(18859i, var_4)), _wgslsmith_mult_i32(var_4, max(66205i, var_1.x)))), 2147483647i, _wgslsmith_f_op_f32(min(-193f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_2 - 369f), _wgslsmith_f_op_f32(-var_2))))))));
}

