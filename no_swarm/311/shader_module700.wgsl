struct Struct_1 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec3<i32>,
    d: vec4<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -7061i;

var<private> global1: f32 = -826f;

var<private> global2: vec4<i32>;

var<private> global3: array<Struct_1, 10>;

var<private> global4: array<bool, 20> = array<bool, 20>(false, false, false, true, false, false, false, false, true, false, false, false, true, true, true, true, false, true, true, true);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec4<f32>) -> u32 {
    let var_0 = global2.zx;
    var var_1 = global3[_wgslsmith_index_u32(1u, 10u)];
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(arg_0.zww)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_1.a) + _wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_1.a.x, var_1.a.x, -1622f), arg_0.xyz)))));
    let var_3 = all(!(!vec4<bool>(global4[_wgslsmith_index_u32(1573u, 20u)], true, global4[_wgslsmith_index_u32(u_input.b.x, 20u)], true)));
    let var_4 = Struct_1(vec3<f32>(var_2.a.x, _wgslsmith_f_op_f32(abs(var_2.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1593f - 1123f) - var_1.a.x))));
    return u_input.b.x;
}

fn func_2(arg_0: u32) -> u32 {
    var var_0 = ~vec4<u32>(~15723u, reverseBits(reverseBits(_wgslsmith_div_u32(89050u, 109876u))), func_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1524f, -2241f, -1330f, 176f)))), ~_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(0u, 12729u), vec2<u32>(1u, 57764u)), u_input.b.wy));
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-109f, _wgslsmith_div_f32(169f, -1209f), _wgslsmith_f_op_f32(f32(-1f) * -625f))));
    let var_2 = global2.x;
    global0 = abs(-28190i);
    let var_3 = global3[_wgslsmith_index_u32(9565u, 10u)];
    return ~arg_0;
}

fn func_1(arg_0: vec2<i32>, arg_1: u32, arg_2: vec3<i32>, arg_3: vec2<f32>) -> vec4<u32> {
    global1 = arg_3.x;
    global0 = arg_2.x;
    global1 = arg_3.x;
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_3.x, arg_3.x, arg_3.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3.x, arg_3.x, -379f))), !vec3<bool>(false, global4[_wgslsmith_index_u32(1u, 20u)], global4[_wgslsmith_index_u32(u_input.b.x, 20u)])))));
    var var_1 = true;
    return vec4<u32>(1u, ~u_input.c, ~_wgslsmith_dot_vec4_u32(min(~u_input.b, _wgslsmith_mult_vec4_u32(u_input.b, u_input.b)), ~vec4<u32>(u_input.c, 6316u, 1u, u_input.c)), abs(~max(func_2(arg_1), 68706u)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = reverseBits(_wgslsmith_mod_vec4_i32(max(countOneBits(vec4<i32>(7936i, -2147483647i, -2147483647i, 46977i)), abs(vec4<i32>(1i, -1i, global2.x, global2.x))), -(~vec4<i32>(u_input.a, 15664i, global2.x, u_input.d))) ^ ((vec4<i32>(u_input.a, global2.x, 0i, 1i) << (func_1(global2.wz, u_input.b.x, global2.yyw, vec2<f32>(-1098f, 1966f)) % vec4<u32>(32u))) | _wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, -2147483647i, u_input.a, 2147483647i), vec4<i32>(global2.x, global2.x, 8560i, u_input.d)), vec4<i32>(u_input.a, global2.x, global2.x, global2.x) >> (vec4<u32>(1u, u_input.b.x, u_input.c, u_input.c) % vec4<u32>(32u)))));
    global3 = array<Struct_1, 10>();
    let var_0 = _wgslsmith_div_vec2_u32(_wgslsmith_clamp_vec2_u32(~abs(_wgslsmith_div_vec2_u32(u_input.b.wy, u_input.b.xw)), ~u_input.b.xy, u_input.b.yx), _wgslsmith_sub_vec2_u32(u_input.b.xy, u_input.b.zx));
    var var_1 = vec4<i32>(1i, global2.x, select(~_wgslsmith_add_i32(global2.x, reverseBits(u_input.d)), global2.x, all(!vec3<bool>(true, global4[_wgslsmith_index_u32(27198u, 20u)], global4[_wgslsmith_index_u32(u_input.b.x, 20u)]))), 1i);
    var var_2 = _wgslsmith_mod_i32(27314i, _wgslsmith_div_i32(_wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(var_1.yyw, vec3<i32>(var_1.x, global2.x, u_input.d)), _wgslsmith_sub_i32(43950i, var_1.x)), _wgslsmith_dot_vec3_i32(global2.ywx, var_1.yzw) & 1i) ^ u_input.d);
    global3 = array<Struct_1, 10>();
    global2 = vec4<i32>(max(_wgslsmith_mod_i32(global2.x, global2.x), 2147483647i) << (var_0.x % 32u), ~2147483647i, -10147i, ~29813i);
    global4 = array<bool, 20>();
    let var_3 = firstTrailingBit(2147483647i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1000f, 186f, !(u_input.a < u_input.d)))), ~countOneBits(38948u), vec3<i32>(var_1.x, reverseBits(global2.x) & _wgslsmith_mod_i32(-48655i, 34353i), -firstLeadingBit(-28412i)) & var_1.yww, firstLeadingBit(_wgslsmith_mult_vec4_i32(vec4<i32>(countOneBits(u_input.d), ~0i, ~var_1.x, var_1.x), -abs(vec4<i32>(-12837i, u_input.d, var_3, -1i)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-496f + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-601f, -2369f))) * _wgslsmith_f_op_f32(floor(1f))));
}

