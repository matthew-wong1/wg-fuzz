struct Struct_1 {
    a: vec3<f32>,
    b: f32,
    c: f32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: u32,
}

struct Struct_3 {
    a: vec4<i32>,
}

struct Struct_4 {
    a: bool,
    b: vec2<u32>,
    c: Struct_3,
    d: vec3<f32>,
    e: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -1i;

var<private> global1: array<vec3<bool>, 11>;

var<private> global2: i32 = 7626i;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: bool, arg_1: vec4<bool>, arg_2: vec3<f32>) -> u32 {
    global1 = array<vec3<bool>, 11>();
    let var_0 = !select(arg_1, vec4<bool>(true, arg_0, !arg_1.x || true, all(arg_1)), !vec4<bool>(true, arg_1.x, true, arg_1.x));
    global1 = array<vec3<bool>, 11>();
    let var_1 = select(var_0.x, false, all(vec2<bool>(!(!var_0.x), true)));
    let var_2 = Struct_1(vec3<f32>(681f, _wgslsmith_f_op_f32(ceil(arg_2.x)), _wgslsmith_div_f32(arg_2.x, _wgslsmith_f_op_f32(-arg_2.x))), arg_2.x, -1362f);
    return u_input.b.x;
}

fn func_2(arg_0: bool, arg_1: Struct_4, arg_2: Struct_1) -> bool {
    global2 = i32(-1i) * -2912i;
    let var_0 = arg_1.c.a.ywz;
    var var_1 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(select(arg_1.b.x, reverseBits(u_input.a.x), !arg_1.a), 0u), func_3(select(true, arg_1.a & false, arg_2.b >= 338f), !vec4<bool>(arg_1.a, false, arg_1.a, true), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_2.a - arg_2.a), _wgslsmith_f_op_vec3_f32(round(arg_2.a)))), _wgslsmith_dot_vec3_u32(max(~vec3<u32>(arg_1.b.x, arg_1.b.x, u_input.b.x), ~vec3<u32>(1u, 1u, arg_1.b.x)), abs(_wgslsmith_clamp_vec3_u32(vec3<u32>(arg_1.b.x, 52948u, 4294967295u), u_input.b.xzx, u_input.b.wyy))), u_input.a.x), u_input.b), 11u)];
    let var_2 = arg_1;
    var var_3 = 63581u;
    return true;
}

fn func_1(arg_0: vec2<u32>) -> Struct_3 {
    var var_0 = select(all(!select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), func_2(false, Struct_4(true, vec2<u32>(27220u, arg_0.x), Struct_3(vec4<i32>(-2147483647i, -2147483647i, 2147483647i, 2147483647i)), vec3<f32>(-137f, 884f, -572f), 2147483647i), Struct_1(vec3<f32>(1444f, -960f, 165f), 786f, 199f)))), _wgslsmith_add_u32(~4294967295u, ~max(1u, arg_0.x)) > 1u, all(vec4<bool>(any(vec2<bool>(true, true)), any(vec4<bool>(true, true, true, true)), !all(global1[_wgslsmith_index_u32(arg_0.x, 11u)]), true)));
    let var_1 = -11309i;
    var var_2 = 66347u;
    global0 = var_1;
    var var_3 = Struct_3(-_wgslsmith_mult_vec4_i32(~_wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, var_1, var_1, -1i), vec4<i32>(1i, var_1, var_1, var_1)), _wgslsmith_mult_vec4_i32(select(vec4<i32>(-2147483647i, var_1, -29964i, var_1), vec4<i32>(-17682i, -2147483647i, -48531i, 36300i), vec4<bool>(true, false, false, false)), _wgslsmith_div_vec4_i32(vec4<i32>(var_1, -80287i, -3544i, var_1), vec4<i32>(-2147483647i, 0i, -32994i, 31237i)))));
    return Struct_3(min(~vec4<i32>(var_3.a.x, var_3.a.x, 0i, 0i), vec4<i32>(1i, var_3.a.x, 2147483647i, var_3.a.x)) & ~_wgslsmith_div_vec4_i32(vec4<i32>(88756i, var_1, -4508i, -1i), ~var_3.a));
}

fn func_4(arg_0: Struct_4) -> u32 {
    return 8564u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~_wgslsmith_add_u32(0u, u_input.b.x);
    global1 = array<vec3<bool>, 11>();
    global2 = _wgslsmith_sub_i32((1i >> (u_input.a.x % 32u)) | ~firstTrailingBit(0i), reverseBits(1i)) ^ countOneBits(1i);
    global2 = (i32(-1i) * -1i) >> (max(func_4(Struct_4(false, vec2<u32>(u_input.b.x, 22767u), func_1(vec2<u32>(u_input.b.x, 31058u)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-573f, 217f, 2087f) * vec3<f32>(-163f, 1180f, 404f)), countOneBits(-1i))), reverseBits(firstLeadingBit(abs(u_input.b.x)))) % 32u);
    global0 = -2451i >> (u_input.a.x % 32u);
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -296f)) * 1767f)), _wgslsmith_f_op_f32(-237f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1000f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -689f) * 1f))));
    let x = u_input.a;
    s_output = StorageBuffer(~max(1u, 4294967295u));
}

