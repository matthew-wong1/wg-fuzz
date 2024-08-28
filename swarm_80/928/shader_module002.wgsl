struct Struct_1 {
    a: vec4<bool>,
    b: f32,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 4> = array<Struct_1, 4>(Struct_1(vec4<bool>(false, true, false, true), -2334f, vec3<f32>(1803f, -424f, 350f)), Struct_1(vec4<bool>(false, true, false, true), -307f, vec3<f32>(-257f, 1682f, -709f)), Struct_1(vec4<bool>(true, false, false, false), -1030f, vec3<f32>(219f, -461f, -461f)), Struct_1(vec4<bool>(true, false, true, false), -676f, vec3<f32>(-398f, -1000f, 1360f)));

var<private> global1: array<u32, 9> = array<u32, 9>(1u, 4221u, 0u, 4294967295u, 57498u, 67660u, 0u, 21578u, 1u);

var<private> global2: array<Struct_1, 10>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_1(arg_0: i32, arg_1: u32, arg_2: bool) -> Struct_1 {
    var var_0 = vec3<bool>(!arg_2, !all(vec2<bool>(arg_2, true)), arg_2);
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(1973f, -479f), vec2<f32>(1093f, 1000f)))), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(2014f, -1711f, true)), _wgslsmith_f_op_f32(f32(-1f) * -303f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(460f)) - _wgslsmith_f_op_f32(f32(-1f) * -683f)))));
    var var_2 = -vec2<i32>(1i << (_wgslsmith_dot_vec4_u32(~vec4<u32>(373u, u_input.b, 1u, 1u), min(vec4<u32>(6702u, 7127u, global1[_wgslsmith_index_u32(4294967295u, 9u)], u_input.b), vec4<u32>(u_input.b, 29039u, u_input.b, 1u))) % 32u), u_input.a);
    var_0 = !vec3<bool>(arg_2, arg_2 && !arg_2, true);
    global1 = array<u32, 9>();
    return global2[_wgslsmith_index_u32(1u, 10u)];
}

fn func_3(arg_0: vec2<bool>, arg_1: vec4<i32>) -> u32 {
    let var_0 = max(_wgslsmith_dot_vec3_i32((min(arg_1.xzw, arg_1.zxy) << (vec3<u32>(1u, u_input.b, 0u) % vec3<u32>(32u))) & -vec3<i32>(1i, 0i, u_input.a), arg_1.xyy), ~_wgslsmith_sub_i32(arg_1.x, ~u_input.a));
    global2 = array<Struct_1, 10>();
    let var_1 = ~(~(~abs(vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b, 9u)], 9u)], 9u)], 67336u)))) & ~select(countOneBits(~vec2<u32>(10398u, 20778u)), select(~vec2<u32>(16587u, 29933u), vec2<u32>(0u, u_input.b), !arg_0), arg_0);
    return 34504u;
}

fn func_2(arg_0: vec3<i32>) -> bool {
    var var_0 = Struct_1(func_1(_wgslsmith_add_i32(1i & u_input.c, -2147483647i) ^ ~countOneBits(44297i), func_3(vec2<bool>(true, true), -min(vec4<i32>(u_input.c, -1i, arg_0.x, arg_0.x), vec4<i32>(u_input.c, u_input.a, 2147483647i, 28279i))), true).a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1f))), func_1((_wgslsmith_clamp_i32(-2147483647i, 54958i, 12782i) << (14308u % 32u)) | firstLeadingBit(_wgslsmith_div_i32(arg_0.x, 1i)), firstTrailingBit(u_input.b), true).c);
    var var_1 = arg_0.x;
    var var_2 = ~_wgslsmith_add_vec2_u32(countOneBits(vec2<u32>(~global1[_wgslsmith_index_u32(u_input.b, 9u)], 1u)), ~(~reverseBits(vec2<u32>(24801u, 62291u))));
    let var_3 = u_input.c;
    var_0 = global0[_wgslsmith_index_u32(countOneBits(~_wgslsmith_dot_vec3_u32(vec3<u32>(var_2.x, 4397u, _wgslsmith_mod_u32(global1[_wgslsmith_index_u32(1u, 9u)], var_2.x)), vec3<u32>(_wgslsmith_mult_u32(0u, var_2.x), _wgslsmith_dot_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(var_2.x, 9u)], u_input.b, var_2.x), vec3<u32>(global1[_wgslsmith_index_u32(var_2.x, 9u)], 88150u, var_2.x)), var_2.x << (72561u % 32u)))), 4u)];
    return select(any(vec4<bool>(false, false, true, true)), select((i32(-1i) * -1i) != abs(u_input.a), all(!select(var_0.a.yx, var_0.a.xx, var_0.a.x)), !(~global1[_wgslsmith_index_u32(52992u, 9u)] <= global1[_wgslsmith_index_u32(~0u, 9u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(929f + -231f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.b)))) >= var_0.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(max(u_input.c, 5748i), ~abs(u_input.b ^ max(4294967295u, u_input.b)), any(vec4<bool>(true, !(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b, 9u)], 9u)] == global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 9u)], 9u)], 9u)], 9u)], 9u)]), -1232f >= _wgslsmith_f_op_f32(step(-1035f, 1072f)), true)));
    let var_1 = Struct_1(select(var_0.a, func_1(-7977i, ~(u_input.b ^ global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b, 9u)], 9u)], 9u)]), var_0.b > var_0.c.x).a, vec4<bool>(func_1(1i, ~u_input.b, func_2(vec3<i32>(u_input.c, -38213i, 0i))).a.x, false, true, var_0.a.x)), _wgslsmith_f_op_f32(var_0.c.x - _wgslsmith_f_op_f32(f32(-1f) * -1454f)), _wgslsmith_div_vec3_f32(var_0.c, var_0.c));
    let var_2 = vec3<i32>(-2289i, ~(~u_input.c), 1i);
    var_0 = global0[_wgslsmith_index_u32(func_3(var_0.a.wy, vec4<i32>(var_2.x, u_input.c, _wgslsmith_div_i32(~(-1223i), select(var_2.x, 2147483647i, var_0.a.x)), reverseBits(u_input.a & -25711i)) >> ((countOneBits(~vec4<u32>(49833u, 68294u, global1[_wgslsmith_index_u32(39224u, 9u)], 1u)) ^ _wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(34921u, 11222u, 0u, 4294967295u), vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 9u)], 9u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 9u)], 9u)], 18284u, 22185u)), min(vec4<u32>(1u, 88397u, 4294967295u, 1u), vec4<u32>(global1[_wgslsmith_index_u32(51601u, 9u)], u_input.b, 56100u, global1[_wgslsmith_index_u32(4294967295u, 9u)])))) % vec4<u32>(32u))), 4u)];
    let var_3 = _wgslsmith_f_op_f32(func_1(_wgslsmith_mult_i32(-var_2.x, u_input.c), ~_wgslsmith_div_u32(1u, 104500u << (1u % 32u)), true).c.x + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b) - _wgslsmith_f_op_f32(round(var_1.b))), 1000f)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-795f + 1790f), _wgslsmith_f_op_f32(ceil(-382f))))), min(-countOneBits(var_2), vec3<i32>(2147483647i, 2147483647i, reverseBits(-42156i))), global1[_wgslsmith_index_u32(u_input.b, 9u)]);
}

