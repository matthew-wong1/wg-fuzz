struct Struct_1 {
    a: vec3<u32>,
    b: f32,
    c: vec3<bool>,
    d: vec2<i32>,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec4<bool>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<u32>,
    c: u32,
}

struct Struct_4 {
    a: vec4<f32>,
    b: Struct_3,
    c: f32,
    d: vec3<bool>,
}

struct Struct_5 {
    a: vec4<f32>,
    b: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: Struct_5;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_3) -> vec2<bool> {
    var var_0 = vec4<i32>(_wgslsmith_dot_vec2_i32(~vec2<i32>(max(-13660i, global1.b.d.d.x), -2147483647i), vec2<i32>(u_input.c.x, -2147483647i)), arg_0.a.d.d.x, _wgslsmith_sub_i32(~(~(-41685i)), 1i), 1i);
    var var_1 = -countOneBits(vec3<i32>(firstLeadingBit(-1i), firstTrailingBit(u_input.c.x), ~global1.b.a.e) & vec3<i32>(_wgslsmith_dot_vec4_i32(u_input.c, u_input.c), _wgslsmith_clamp_i32(0i, -18367i, 2147483647i), global1.b.d.e));
    var var_2 = global1.a.yw;
    var_0 = ~u_input.c;
    let var_3 = vec4<bool>(arg_0.a.c.x, arg_0.a.c.x, all(!select(global1.b.c.wx, vec2<bool>(true, false), global1.b.c.x)) & false, !(~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, arg_0.b.x), arg_0.a.d.a.zx) <= firstLeadingBit(firstTrailingBit(0u))));
    return !select(!(!(!global1.b.d.c.zy)), !(!vec2<bool>(true, var_3.x)), global1.b.a.c.x);
}

fn func_2() -> u32 {
    var var_0 = !global1.b.a.c.yx;
    var_0 = !(!func_3(Struct_3(Struct_2(global1.b.d, u_input.a, global1.b.c, Struct_1(vec3<u32>(global1.b.b, 1u, 1u), global0.x, global1.b.d.c, vec2<i32>(4779i, global1.b.a.d.x), u_input.c.x)), vec4<u32>(1421u, 1u, u_input.a, 1u) << (vec4<u32>(1u, u_input.a, u_input.a, global1.b.d.a.x) % vec4<u32>(32u)), global1.b.d.a.x)));
    let var_1 = Struct_5(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(global1.a.x * _wgslsmith_f_op_f32(round(global0.x))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(global1.b.d.b)), _wgslsmith_f_op_f32(380f * -1000f))), _wgslsmith_f_op_f32(trunc(-630f)), global1.a.x) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-242f, 1654f, -321f, global0.x))))), global1.b);
    let var_2 = (~u_input.c ^ u_input.c) & u_input.c;
    global1 = Struct_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_1.a)), global1.b);
    return 0u;
}

fn func_1() -> Struct_2 {
    let var_0 = false;
    var var_1 = _wgslsmith_div_f32(global0.x, -181f);
    var var_2 = 50519u;
    var var_3 = ~vec3<u32>(abs(u_input.a), reverseBits(func_2()), ~global1.b.d.a.x);
    var var_4 = -53996i;
    return global1.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<i32>(_wgslsmith_add_i32(max(0i, min(global1.b.d.d.x ^ 1i, reverseBits(52952i))), 25780i), reverseBits(1i));
    var var_1 = Struct_4(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(global1.a, vec4<f32>(global1.b.a.b, global0.x, global1.b.a.b, 625f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, global0.x, global1.b.d.b, global1.b.a.b) - global1.a))))), Struct_3(func_1(), select(_wgslsmith_mult_vec4_u32(min(vec4<u32>(44988u, u_input.a, global1.b.d.a.x, u_input.a), vec4<u32>(11015u, 0u, global1.b.a.a.x, 41255u)), vec4<u32>(67906u, global1.b.a.a.x, global1.b.a.a.x, global1.b.d.a.x) & vec4<u32>(2798u, 31079u, global1.b.a.a.x, 28861u)), vec4<u32>(24002u ^ global1.b.b, u_input.a, u_input.a, u_input.a), global1.b.c.x & func_3(Struct_3(Struct_2(global1.b.a, u_input.a, global1.b.c, global1.b.d), vec4<u32>(global1.b.b, u_input.a, u_input.a, global1.b.a.a.x), 3001u)).x), 6586u), global1.a.x, func_1().d.c);
    var var_2 = !vec2<bool>(func_1().d.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-347f, global0.x))) > _wgslsmith_f_op_f32(-global1.b.a.b));
    var var_3 = vec2<u32>(min(min(8651u, _wgslsmith_mult_u32(1u, global1.b.b) & 4294967295u), _wgslsmith_sub_u32(~(~7379u), ~var_1.b.b.x << (~u_input.a % 32u))), u_input.a);
    let var_4 = Struct_3(Struct_2(global1.b.a, _wgslsmith_clamp_u32(~global1.b.a.a.x << ((61638u & global1.b.d.a.x) % 32u), 0u, global1.b.a.a.x), !vec4<bool>(any(var_1.d), all(vec2<bool>(var_1.b.a.c.x, true)), global1.b.d.c.x, true), func_1().a), vec4<u32>(var_1.b.b.x, var_1.b.a.a.a.x, 0u, 34645u) ^ _wgslsmith_add_vec4_u32(reverseBits(select(vec4<u32>(1u, 0u, global1.b.a.a.x, 0u), var_1.b.b, true)), _wgslsmith_sub_vec4_u32(vec4<u32>(var_1.b.a.a.a.x, 0u, u_input.a, 4294967295u), select(var_1.b.b, vec4<u32>(var_1.b.c, 21099u, global1.b.b, u_input.a), global1.b.c.x))), _wgslsmith_sub_u32(var_3.x, ~var_1.b.a.a.a.x));
    var var_5 = Struct_1(vec3<u32>(1u, 1u, var_3.x << ((_wgslsmith_add_u32(u_input.a, 1u) ^ reverseBits(global1.b.d.a.x)) % 32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(var_1.c, _wgslsmith_f_op_f32(global1.a.x * -1033f)), _wgslsmith_f_op_f32(-var_1.b.a.a.b))) + var_1.c), global1.b.a.c, vec2<i32>(-84i, -11890i), firstLeadingBit(var_1.b.a.d.e & var_1.b.a.d.d.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_i32(_wgslsmith_clamp_vec4_i32(max(-vec4<i32>(0i, var_1.b.a.d.e, 40342i, 1i), -u_input.c), abs(u_input.c), _wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, var_5.d.x, var_4.a.a.e, var_4.a.a.d.x), -vec4<i32>(u_input.b, -1i, var_5.d.x, u_input.c.x))), u_input.c));
}

