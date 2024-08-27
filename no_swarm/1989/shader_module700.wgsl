struct Struct_1 {
    a: vec3<u32>,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 16>;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec3<u32>) -> vec3<i32> {
    var var_0 = u_input.b.x;
    global0 = array<bool, 16>();
    let var_1 = _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(-1i) * -u_input.b, (u_input.b >> ((vec4<u32>(arg_1.a.x, 4294967295u, arg_3.x, arg_3.x) ^ vec4<u32>(arg_2.a.x, 4294967295u, 78451u, 0u)) % vec4<u32>(32u))) | _wgslsmith_clamp_vec4_i32(_wgslsmith_clamp_vec4_i32(u_input.b, vec4<i32>(-40936i, u_input.b.x, u_input.a, 26937i), u_input.b), vec4<i32>(u_input.b.x, u_input.b.x, -2147483647i, -2147483647i), u_input.b << (vec4<u32>(arg_3.x, 1u, arg_3.x, arg_2.a.x) % vec4<u32>(32u))), -vec4<i32>(-u_input.a, reverseBits(u_input.b.x), _wgslsmith_dot_vec4_i32(u_input.b, u_input.b), ~u_input.b.x)), reverseBits(firstTrailingBit(vec4<i32>(8779i, u_input.a, 1970i, _wgslsmith_clamp_i32(u_input.b.x, u_input.b.x, -34434i)))));
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.b, arg_2.b) - vec2<f32>(arg_1.b, 1080f))))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1552f, arg_2.b) - vec2<f32>(arg_1.b, -758f)) - vec2<f32>(1523f, arg_1.b)), vec2<f32>(arg_1.b, arg_2.b))));
    let var_3 = Struct_1(vec3<u32>(~(~(~1u)), 1u, _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(arg_3.x, arg_1.a.x, 1u, arg_1.a.x), ~vec4<u32>(arg_2.a.x, 1u, arg_2.a.x, arg_1.a.x)), reverseBits(vec4<u32>(45688u, 42185u, arg_1.a.x, arg_2.a.x) << (vec4<u32>(arg_2.a.x, arg_3.x, arg_1.a.x, 41579u) % vec4<u32>(32u))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2.b), _wgslsmith_div_f32(var_2.x, arg_1.b)) * arg_1.b))));
    return -u_input.b.xyy;
}

fn func_2(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: Struct_1) -> f32 {
    global0 = array<bool, 16>();
    global0 = array<bool, 16>();
    var var_0 = u_input.b;
    var_0 = vec4<i32>(~_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(func_3(true, Struct_1(vec3<u32>(18804u, arg_1.a.x, 51392u), arg_2.b), arg_2, vec3<u32>(arg_2.a.x, arg_2.a.x, arg_1.a.x)), vec3<i32>(u_input.b.x, 12967i, 1381i)), 1i), var_0.x, _wgslsmith_dot_vec2_i32(u_input.b.zy, ~_wgslsmith_add_vec2_i32(min(u_input.b.yz, u_input.b.yz), ~var_0.zy)), 24815i);
    global0 = array<bool, 16>();
    return _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1523f, -387f))), -779f), arg_2.b, global0[_wgslsmith_index_u32(firstTrailingBit(0u), 16u)]));
}

fn func_4(arg_0: i32, arg_1: f32, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    return Struct_1(select(firstTrailingBit(_wgslsmith_add_vec3_u32(arg_2.a, arg_2.a)), vec3<u32>(~57898u, abs(5699u), ~arg_2.a.x), -101f <= _wgslsmith_f_op_f32(333f * arg_2.b)) & vec3<u32>(arg_3.a.x, ~max(arg_3.a.x, arg_3.a.x), reverseBits(arg_2.a.x)), arg_3.b);
}

fn func_5(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: Struct_1, arg_3: vec4<u32>) -> i32 {
    global0 = array<bool, 16>();
    global0 = array<bool, 16>();
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(1313f, 310f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-190f, -1127f)) - vec2<f32>(arg_2.b, _wgslsmith_f_op_f32(812f - arg_0.b)))));
    let var_1 = vec4<u32>(_wgslsmith_mod_u32(arg_2.a.x, firstLeadingBit(arg_3.x)), firstTrailingBit(_wgslsmith_sub_u32(arg_3.x, 41532u)), ~arg_3.x, arg_2.a.x);
    let var_2 = func_4(~reverseBits(abs(abs(10822i))), arg_0.b, arg_2, Struct_1(_wgslsmith_clamp_vec3_u32(~_wgslsmith_sub_vec3_u32(vec3<u32>(arg_0.a.x, 4294967295u, 87784u), arg_0.a), ~arg_3.ywz, ~(~vec3<u32>(27540u, 19796u, arg_2.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.b + arg_0.b), var_0.x))));
    return arg_1.x;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32) -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(2405f, arg_1.b, 404f, -596f), vec4<f32>(arg_0.b, 171f, arg_0.b, 183f))))));
    global0 = array<bool, 16>();
    global0 = array<bool, 16>();
    global0 = array<bool, 16>();
    var var_1 = func_5(func_4(arg_2, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(arg_0.a ^ vec3<u32>(4294967295u, arg_0.a.x, arg_1.a.x), arg_1, arg_1)) * _wgslsmith_f_op_f32(arg_0.b + -110f)), arg_1, Struct_1(arg_0.a, -906f)), ~vec4<i32>(~u_input.a, 0i, ~_wgslsmith_dot_vec2_i32(u_input.b.zy, vec2<i32>(0i, 80286i)), -1i), arg_0, vec4<u32>(1u, firstLeadingBit(arg_1.a.x), 5312u, arg_1.a.x & arg_1.a.x));
    return vec3<bool>(all(!vec4<bool>(false, global0[_wgslsmith_index_u32(arg_1.a.x, 16u)], global0[_wgslsmith_index_u32(arg_1.a.x, 16u)], any(vec4<bool>(global0[_wgslsmith_index_u32(arg_0.a.x, 16u)], false, global0[_wgslsmith_index_u32(arg_0.a.x, 16u)], global0[_wgslsmith_index_u32(0u, 16u)])))), !(!global0[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_dot_vec3_u32(arg_1.a, arg_1.a)), 16u)]), true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b.x;
    var var_1 = !select(select(vec3<bool>(any(vec4<bool>(global0[_wgslsmith_index_u32(72034u, 16u)], global0[_wgslsmith_index_u32(85819u, 16u)], false, false)), any(vec3<bool>(true, global0[_wgslsmith_index_u32(48682u, 16u)], global0[_wgslsmith_index_u32(55529u, 16u)])), false), select(!vec3<bool>(true, true, global0[_wgslsmith_index_u32(0u, 16u)]), func_1(Struct_1(vec3<u32>(0u, 27145u, 0u), 316f), Struct_1(vec3<u32>(62261u, 0u, 9701u), 693f), var_0), global0[_wgslsmith_index_u32(~0u, 16u)]), !(!vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 16u)], global0[_wgslsmith_index_u32(385u, 16u)], global0[_wgslsmith_index_u32(1u, 16u)]))), select(vec3<bool>(global0[_wgslsmith_index_u32(~35493u, 16u)], false, false), vec3<bool>(true, true, true), !(!vec3<bool>(false, true, global0[_wgslsmith_index_u32(5094u, 16u)]))), true);
    var_1 = !(!vec3<bool>(global0[_wgslsmith_index_u32(~44861u, 16u)], var_1.x, true));
    let var_2 = global0[_wgslsmith_index_u32(~53469u, 16u)];
    let var_3 = max(u_input.a, var_0);
    global0 = array<bool, 16>();
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(vec3<i32>(1i | _wgslsmith_sub_i32(var_0, 1i), _wgslsmith_sub_i32(max(0i, var_0), -var_3), 1i)), u_input.b.x, countOneBits(~(~reverseBits(15179i))), -1172f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(614f, func_4(var_0, 206f, Struct_1(vec3<u32>(4294967295u, 2353u, 4294967295u), -396f), Struct_1(vec3<u32>(20787u, 0u, 1786u), -1000f)).b, true))))));
}

