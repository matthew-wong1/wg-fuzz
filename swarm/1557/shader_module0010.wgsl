struct Struct_1 {
    a: vec4<f32>,
    b: f32,
    c: i32,
    d: vec4<bool>,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec2<i32>,
    d: bool,
}

struct Struct_3 {
    a: bool,
    b: vec2<bool>,
    c: f32,
    d: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: vec4<f32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 10>;

var<private> global1: array<Struct_2, 13>;

var<private> global2: array<vec2<f32>, 15>;

var<private> global3: array<f32, 14> = array<f32, 14>(-341f, -1076f, 595f, -1990f, 1955f, 225f, 1071f, 322f, 810f, 1304f, 1364f, -644f, 241f, -1111f);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1() -> u32 {
    global3 = array<f32, 14>();
    global1 = array<Struct_2, 13>();
    let var_0 = countOneBits(~0u);
    var var_1 = ~42810i;
    global2 = array<vec2<f32>, 15>();
    return var_0 ^ ~56074u;
}

fn func_3(arg_0: vec4<i32>, arg_1: bool, arg_2: Struct_3) -> vec4<bool> {
    var var_0 = Struct_1(vec4<f32>(arg_2.c, arg_2.c, global3[_wgslsmith_index_u32((u_input.a.x | u_input.a.x) & (reverseBits(4294967295u) | reverseBits(u_input.a.x)), 14u)], arg_2.c), 1597f, arg_0.x, select(!vec4<bool>(true, false, arg_1 | true, arg_1), vec4<bool>(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(u_input.a.x, 14u)] + -1376f) < -279f, -1i < arg_0.x, all(vec4<bool>(true, false, arg_2.b.x, arg_1)) && arg_1, any(vec3<bool>(true, true, true))), !vec4<bool>(all(vec4<bool>(true, true, arg_1, arg_1)), any(vec4<bool>(false, arg_2.a, arg_1, true)), false, false)), _wgslsmith_f_op_f32(-arg_2.c));
    var var_1 = 1f;
    var var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-198f, arg_2.c, 1206f, -1082f) - vec4<f32>(445f, 353f, -950f, global3[_wgslsmith_index_u32(0u, 14u)])))), arg_2.c, _wgslsmith_clamp_i32(select(arg_0.x, -26659i, !arg_2.d) >> (abs(u_input.a.x | u_input.a.x) % 32u), ~var_0.c, -_wgslsmith_div_i32(arg_0.x, 21653i << (u_input.a.x % 32u))), select(!var_0.d, vec4<bool>(true, !(!var_0.d.x), true != arg_1, true), all(vec3<bool>(true, false, all(var_0.d.wzx)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -680f) + -438f))));
    let var_3 = !arg_1;
    var var_4 = _wgslsmith_f_op_vec4_f32(-var_2.a);
    return !(!(!(!var_2.d)));
}

fn func_2(arg_0: vec3<f32>, arg_1: i32, arg_2: f32, arg_3: Struct_1) -> StorageBuffer {
    global0 = array<Struct_2, 10>();
    var var_0 = !arg_3.d;
    let var_1 = select(arg_3.d, select(!arg_3.d, select(vec4<bool>(!var_0.x, true, var_0.x, arg_3.d.x), func_3(-vec4<i32>(-1i, 0i, -2147483647i, 36293i), true, Struct_3(true, vec2<bool>(false, var_0.x), -1292f, var_0.x)), !arg_3.d), arg_3.d.x), select(select(arg_3.d, arg_3.d, true && var_0.x), select(!arg_3.d, !arg_3.d, select(false, true, var_0.x)), true));
    let var_2 = firstLeadingBit(~4522u);
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(arg_3.a.xyw * arg_0), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_3.b, arg_2, 2044f))))), var_1.x))));
    return StorageBuffer(reverseBits(abs(vec3<i32>(arg_1, 45229i, 4298i)) << (_wgslsmith_sub_vec3_u32(u_input.a.zzz, vec3<u32>(u_input.a.x, u_input.a.x, var_2)) % vec3<u32>(32u))), min(vec3<u32>(select(abs(u_input.a.x), var_2 ^ 4294967295u, false), _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(u_input.a, vec4<u32>(10085u, 44283u, 0u, u_input.a.x)), countOneBits(u_input.a)), ~var_2 ^ (u_input.a.x & u_input.a.x)), vec3<u32>(~_wgslsmith_sub_u32(u_input.a.x, 82350u), var_2, _wgslsmith_dot_vec4_u32(u_input.a, ~vec4<u32>(1u, var_2, 36582u, u_input.a.x)))), vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-721f)) + arg_3.b), 339f)), 1f, arg_3.e, -910f), _wgslsmith_sub_vec2_u32(_wgslsmith_clamp_vec2_u32(~u_input.a.yw, vec2<u32>(_wgslsmith_mult_u32(var_2, 4294967295u), max(0u, u_input.a.x)), u_input.a.wy >> (vec2<u32>(var_2, 1u) % vec2<u32>(32u))), ~firstLeadingBit(vec2<u32>(u_input.a.x, u_input.a.x) | u_input.a.zz)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~u_input.a.x ^ firstLeadingBit(40182u);
    global0 = array<Struct_2, 10>();
    global3 = array<f32, 14>();
    global3 = array<f32, 14>();
    let var_1 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-632f - global3[_wgslsmith_index_u32(var_0, 14u)]), _wgslsmith_f_op_f32(select(-357f, global3[_wgslsmith_index_u32(var_0, 14u)], false)), global3[_wgslsmith_index_u32(var_0, 14u)], -458f) * vec4<f32>(global3[_wgslsmith_index_u32(1u, 14u)], _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(u_input.a.x, 14u)]), _wgslsmith_f_op_f32(498f + global3[_wgslsmith_index_u32(12047u, 14u)]), _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(23461u, 14u)]))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-2032f * -639f), global3[_wgslsmith_index_u32(var_0, 14u)], _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(1u, 14u)]), _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(u_input.a.x, 14u)])) - _wgslsmith_div_vec4_f32(vec4<f32>(global3[_wgslsmith_index_u32(u_input.a.x, 14u)], 1259f, -1196f, global3[_wgslsmith_index_u32(u_input.a.x, 14u)]), vec4<f32>(global3[_wgslsmith_index_u32(45312u, 14u)], global3[_wgslsmith_index_u32(34637u, 14u)], global3[_wgslsmith_index_u32(var_0, 14u)], -1277f)))))));
    let x = u_input.a;
    s_output = func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3[_wgslsmith_index_u32(u_input.a.x, 14u)], var_1.x, var_1.x)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2333f, var_1.x, var_1.x)) - var_1.wxw))), 2147483647i, 1f, Struct_1(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-var_1))), global3[_wgslsmith_index_u32(func_1(), 14u)], countOneBits(_wgslsmith_div_i32(1i, _wgslsmith_dot_vec3_i32(vec3<i32>(0i, 17218i, 2147483647i), vec3<i32>(-25005i, -46035i, 53041i)))), vec4<bool>(true, true, true, true), var_1.x));
}

