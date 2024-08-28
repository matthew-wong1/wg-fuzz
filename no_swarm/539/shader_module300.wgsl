struct Struct_1 {
    a: bool,
    b: vec3<u32>,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 1000f;

var<private> global1: array<Struct_1, 8> = array<Struct_1, 8>(Struct_1(false, vec3<u32>(39210u, 1u, 4294967295u)), Struct_1(true, vec3<u32>(4294967295u, 4294967295u, 1u)), Struct_1(false, vec3<u32>(26184u, 1u, 0u)), Struct_1(false, vec3<u32>(51858u, 1u, 0u)), Struct_1(true, vec3<u32>(43937u, 32264u, 44128u)), Struct_1(false, vec3<u32>(4327u, 19696u, 5734u)), Struct_1(false, vec3<u32>(23285u, 0u, 1u)), Struct_1(false, vec3<u32>(48604u, 69451u, 2046u)));

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: vec2<bool>) -> bool {
    let var_0 = u_input.a <= min(_wgslsmith_dot_vec2_i32(min(min(u_input.c.yz, vec2<i32>(9573i, 32515i)), u_input.c.xz), vec2<i32>(_wgslsmith_add_i32(-1i, -5969i), -25812i)), ~_wgslsmith_mod_i32(17059i, 41357i));
    var var_1 = _wgslsmith_div_vec3_u32(vec3<u32>(1u, 4294967295u, _wgslsmith_clamp_u32(~(~0u), ~(~1u), arg_1.b.x)), vec3<u32>(4294967295u, ~(countOneBits(1u) ^ u_input.b), firstLeadingBit(abs(reverseBits(arg_1.b.x)))));
    global1 = array<Struct_1, 8>();
    global1 = array<Struct_1, 8>();
    let var_2 = min(~u_input.c, reverseBits(_wgslsmith_mult_vec4_i32(_wgslsmith_add_vec4_i32(-vec4<i32>(u_input.c.x, u_input.c.x, u_input.a, u_input.c.x), ~vec4<i32>(26471i, 2147483647i, u_input.c.x, u_input.c.x)), vec4<i32>(~u_input.c.x, ~u_input.a, 0i, -2227i))));
    return false;
}

fn func_2(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> i32 {
    let var_0 = ~vec4<u32>(arg_3.b.x, 4536u, ~select(_wgslsmith_add_u32(arg_1.b.x, 32058u), firstTrailingBit(arg_3.b.x), true), _wgslsmith_sub_u32(_wgslsmith_add_u32(u_input.b, 1u), 1u) | _wgslsmith_div_u32(firstLeadingBit(44118u), _wgslsmith_add_u32(1u, 11301u)));
    var var_1 = Struct_1(select(func_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1155f, 1000f)), Struct_1(true, ~vec3<u32>(arg_3.b.x, 24061u, arg_3.b.x)), vec2<bool>(all(arg_0), true)), !all(vec3<bool>(arg_3.a, false, false)), arg_3.a), arg_2.b);
    global0 = 464f;
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(sign(-1233f)), -540f);
    global1 = array<Struct_1, 8>();
    return ((_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, u_input.a, u_input.c.x), u_input.c.yzy) ^ u_input.c.x) & -8210i) >> (_wgslsmith_add_u32(arg_2.b.x, 1u) % 32u);
}

fn func_1(arg_0: i32) -> f32 {
    let var_0 = u_input.c.x;
    global1 = array<Struct_1, 8>();
    let var_1 = countOneBits(countOneBits(vec3<i32>(_wgslsmith_sub_i32(var_0, ~u_input.c.x), _wgslsmith_mult_i32(u_input.a, func_2(vec3<bool>(false, false, true), global1[_wgslsmith_index_u32(u_input.b, 8u)], global1[_wgslsmith_index_u32(1u, 8u)], global1[_wgslsmith_index_u32(u_input.b, 8u)])), ~_wgslsmith_div_i32(arg_0, arg_0))));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-674f - -1789f) - _wgslsmith_f_op_f32(-749f * -1953f)))) >= _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -796f))), ~(select(vec3<u32>(46459u, 70288u, 3573u), vec3<u32>(u_input.b, u_input.b, u_input.b), false) ^ vec3<u32>(u_input.b, u_input.b, 4294967295u)) ^ _wgslsmith_sub_vec3_u32(select(vec3<u32>(u_input.b, u_input.b, u_input.b), vec3<u32>(u_input.b, 56314u, 1u), vec3<bool>(false, true, false)) >> (vec3<u32>(u_input.b, u_input.b, 7978u) % vec3<u32>(32u)), vec3<u32>(u_input.b, firstTrailingBit(0u), max(u_input.b, 0u))));
    var_2 = Struct_1(true, _wgslsmith_clamp_vec3_u32(vec3<u32>(var_2.b.x, _wgslsmith_div_u32(abs(0u), u_input.b), ~abs(4294967295u)), abs(~firstTrailingBit(vec3<u32>(u_input.b, 1u, 118899u))), select(var_2.b, abs(vec3<u32>(var_2.b.x, 0u, 198765u)), vec3<bool>(true, false, false)) & select(var_2.b, var_2.b ^ vec3<u32>(18314u, var_2.b.x, var_2.b.x), vec3<bool>(var_2.a, var_2.a, true))));
    return _wgslsmith_f_op_f32(f32(-1f) * -1639f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -839f))) + -1605f), 1000f, 1431f) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(1000f, 475f, -542f), vec3<f32>(-921f, 1855f, -1000f))) * _wgslsmith_div_vec3_f32(vec3<f32>(-1533f, 379f, 205f), vec3<f32>(-588f, -798f, -1000f))) + vec3<f32>(_wgslsmith_f_op_f32(ceil(-1430f)), -359f, _wgslsmith_f_op_f32(step(1848f, 947f)))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1090f, 583f, 629f), vec3<f32>(-237f, -1000f, 709f)))))))));
    let var_1 = _wgslsmith_dot_vec3_i32(min(select(select(_wgslsmith_mult_vec3_i32(u_input.c.wwx, vec3<i32>(u_input.a, u_input.c.x, 5102i)), _wgslsmith_sub_vec3_i32(u_input.c.wxw, vec3<i32>(u_input.a, u_input.c.x, 19352i)), select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), true)), vec3<i32>(-26299i, 4166i, 1i) & (u_input.c.zxz & u_input.c.zwz), vec3<bool>(false, true, true)), abs(vec3<i32>(u_input.c.x, u_input.c.x, 42740i))), firstTrailingBit(vec3<i32>(countOneBits(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, u_input.c.x), u_input.c.zz)), min(u_input.a, u_input.c.x), 24547i)));
    var var_2 = 7716u;
    var var_3 = vec2<i32>(_wgslsmith_add_i32(firstTrailingBit(var_1), -43430i), countOneBits(var_1));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(var_0.x, _wgslsmith_f_op_f32(func_1(77098i)), true)), _wgslsmith_f_op_f32(-var_0.x)))), _wgslsmith_clamp_vec3_i32(-abs(abs(u_input.c.wxw)), ~(-(u_input.c.xyy ^ u_input.c.xyz)), u_input.c.xyx));
}

