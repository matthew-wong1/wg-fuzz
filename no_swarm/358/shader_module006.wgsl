struct Struct_1 {
    a: u32,
    b: vec4<f32>,
    c: vec3<f32>,
    d: vec3<f32>,
    e: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 13>;

var<private> global1: Struct_1;

var<private> global2: array<u32, 29> = array<u32, 29>(1u, 73881u, 15579u, 1u, 4294967295u, 0u, 1u, 87023u, 0u, 4294967295u, 1u, 23933u, 23525u, 4294967295u, 4294967295u, 46534u, 0u, 32658u, 0u, 29268u, 1u, 1u, 4294967295u, 3302u, 62764u, 1u, 75689u, 104531u, 24497u);

var<private> global3: array<vec3<bool>, 9>;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: u32, arg_1: vec3<u32>, arg_2: vec2<u32>) -> vec3<f32> {
    var var_0 = arg_1;
    let var_1 = vec4<i32>(firstTrailingBit(~(i32(-1i) * -2147483647i)), u_input.a.x, _wgslsmith_add_i32(5147i, 0i), 1i);
    let var_2 = Struct_2(Struct_1(arg_2.x, vec4<f32>(_wgslsmith_f_op_f32(sign(global1.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-122f))), global1.e.x, _wgslsmith_f_op_f32(round(-616f))), global1.b.zzy, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-global1.c.x), _wgslsmith_f_op_f32(-global1.b.x), global1.e.x)), vec2<f32>(-388f, _wgslsmith_f_op_f32(global1.e.x - -543f))), global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(~_wgslsmith_sub_u32(38150u, arg_1.x), 29u)], 13u)], Struct_1(min(arg_0, ~var_0.x), global1.b, global1.b.xyy, _wgslsmith_f_op_vec3_f32(-global1.c), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-1402f + 101f), _wgslsmith_f_op_f32(-global1.e.x)), global1.c.yy, !(u_input.a.x > 1i)))), !vec2<bool>(!any(vec4<bool>(false, false, false, false)), false));
    let var_3 = firstLeadingBit(_wgslsmith_sub_u32(~arg_1.x, 1u));
    global2 = array<u32, 29>();
    return _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(global1.c.x * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global1.c.x * var_2.c.b.x)))), var_2.a.c.x, _wgslsmith_f_op_f32(max(global1.b.x, 182f))));
}

fn func_2() -> vec3<u32> {
    let var_0 = min(2147483647i, 1i);
    let var_1 = Struct_1(_wgslsmith_dot_vec2_u32(firstLeadingBit(~vec2<u32>(4294967295u, 7454u)), vec2<u32>(44155u, _wgslsmith_add_u32(global1.a, global2[_wgslsmith_index_u32(0u, 29u)]) << (~global2[_wgslsmith_index_u32(46932u, 29u)] % 32u))), global1.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(1u, ~vec3<u32>(0u, 1u, u_input.b), vec2<u32>(31189u, 43369u))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(global1.d.x * _wgslsmith_f_op_f32(select(-1000f, -1120f, false))), -1211f, -1900f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(max(1f, 226f)), 155f)));
    global1 = Struct_1(~_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(17977u, global1.a, 1u, 2843u), vec4<u32>(global2[_wgslsmith_index_u32(global1.a, 29u)], u_input.b, 4294967295u, 0u)) << ((vec4<u32>(var_1.a, 40766u, 1u, var_1.a) & vec4<u32>(4294967295u, 4294967295u, 35452u, global1.a)) % vec4<u32>(32u)), _wgslsmith_div_vec4_u32(vec4<u32>(52109u, global1.a, global1.a, 28113u), firstLeadingBit(vec4<u32>(88836u, 50552u, 0u, 75252u)))), _wgslsmith_f_op_vec4_f32(var_1.b * vec4<f32>(global1.b.x, global1.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.e.x - 411f) * _wgslsmith_f_op_f32(min(global1.c.x, global1.c.x))), 156f)), vec3<f32>(616f, _wgslsmith_f_op_f32(global1.d.x + var_1.d.x), global1.d.x), vec3<f32>(var_1.e.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -397f), 1086f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1113f + 590f)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.d.x, _wgslsmith_f_op_f32(var_1.d.x * var_1.d.x))), var_1.d.yy));
    let var_2 = Struct_2(Struct_1(_wgslsmith_add_u32(45250u, _wgslsmith_add_u32(global2[_wgslsmith_index_u32(23625u, 29u)], _wgslsmith_dot_vec3_u32(vec3<u32>(91422u, var_1.a, var_1.a), vec3<u32>(global2[_wgslsmith_index_u32(54876u, 29u)], global2[_wgslsmith_index_u32(var_1.a, 29u)], 12850u)))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global1.b.x, global1.d.x, var_1.c.x, -1050f), var_1.b)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_1.b)))), _wgslsmith_f_op_vec3_f32(-global1.c), _wgslsmith_f_op_vec3_f32(global1.c + _wgslsmith_f_op_vec3_f32(select(var_1.d, _wgslsmith_f_op_vec3_f32(min(global1.d, vec3<f32>(1000f, global1.b.x, global1.e.x))), false))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(var_1.b.x * 1152f), _wgslsmith_f_op_f32(ceil(-405f))))), var_1, global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(12712u, ~_wgslsmith_dot_vec2_u32(~vec2<u32>(global2[_wgslsmith_index_u32(global1.a, 29u)], u_input.b), max(vec2<u32>(0u, global1.a), vec2<u32>(u_input.b, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b, 29u)], 29u)]))), 0u), 13u)], select(select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false)), vec2<bool>(false, true), vec2<bool>(all(vec2<bool>(true, true)), true)), vec2<bool>(any(vec2<bool>(false, true)), true), any(!select(vec3<bool>(true, false, true), global3[_wgslsmith_index_u32(47848u, 9u)], global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 29u)], 9u)]))));
    let var_3 = Struct_1(~0u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_2.b.b) * vec4<f32>(1000f, _wgslsmith_f_op_f32(-301f - global1.e.x), -362f, var_2.c.e.x))), global1.d, vec3<f32>(var_1.d.x, _wgslsmith_f_op_f32(var_2.c.b.x * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_1.c.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_2.b.e.x)))), global1.c.yz);
    return vec3<u32>(u_input.b, _wgslsmith_sub_u32(~1u, 119560u ^ ~global2[_wgslsmith_index_u32(abs(65035u), 29u)]), var_2.c.a);
}

fn func_4(arg_0: vec3<u32>) -> Struct_1 {
    let var_0 = Struct_2(global0[_wgslsmith_index_u32(select(~arg_0.x, 1u, true), 13u)], global0[_wgslsmith_index_u32(arg_0.x, 13u)], Struct_1(max(~u_input.b, ~_wgslsmith_div_u32(4294967295u, 82208u)), _wgslsmith_f_op_vec4_f32(global1.b + vec4<f32>(global1.e.x, _wgslsmith_f_op_f32(f32(-1f) * -361f), global1.c.x, global1.c.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global1.d - _wgslsmith_f_op_vec3_f32(-global1.b.xzx))), _wgslsmith_f_op_vec3_f32(step(global1.c, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(global1.d))))), _wgslsmith_f_op_vec3_f32(func_3(~(~global2[_wgslsmith_index_u32(global1.a, 29u)]), reverseBits(abs(vec3<u32>(1u, 13968u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(33253u, 29u)], 29u)]))), ~_wgslsmith_div_vec2_u32(vec2<u32>(u_input.b, 9029u), vec2<u32>(1u, arg_0.x)))).yy), select(!select(select(vec2<bool>(true, false), vec2<bool>(false, false), true), vec2<bool>(true, true), vec2<bool>(true, true)), select(vec2<bool>(true, true), select(vec2<bool>(false, false), select(vec2<bool>(true, true), vec2<bool>(true, false), true), vec2<bool>(true, true)), vec2<bool>(true, true)), vec2<bool>(true, all(select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false), false)))));
    let var_1 = Struct_1(u_input.b, _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.c.x - var_0.b.b.x) + _wgslsmith_f_op_f32(round(1319f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.b.e.x, var_0.b.e.x))), global1.e.x, _wgslsmith_f_op_f32(max(1119f, _wgslsmith_f_op_f32(step(var_0.b.b.x, global1.e.x))))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(var_0.b.c, vec3<f32>(var_0.a.e.x, 800f, -1066f))) * _wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_0.c.c.x, -584f, global1.e.x), var_0.c.b.ywy))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.c.x, var_0.c.e.x, 580f)))), false)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a.e.x, var_0.a.e.x, -239f) - vec3<f32>(516f, 328f, -1000f)) + _wgslsmith_f_op_vec3_f32(global1.b.wzx + vec3<f32>(-372f, global1.d.x, -1000f))))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1440f, global1.b.x, all(vec4<bool>(var_0.d.x, var_0.d.x, true, var_0.d.x)))) + -1130f), var_0.a.c.x, 1114f), _wgslsmith_f_op_vec2_f32(floor(var_0.c.c.zy)));
    let var_2 = _wgslsmith_f_op_f32(max(global1.c.x, -127f));
    global3 = array<vec3<bool>, 9>();
    let var_3 = Struct_2(global0[_wgslsmith_index_u32(26045u, 13u)], Struct_1(u_input.b, global1.b, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.b.b.zwz)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global1.e.x, 974f, var_2), global1.c, var_0.d.x)) - var_1.c)), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-global1.c))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global1.c.zx - vec2<f32>(global1.b.x, var_1.e.x)))), Struct_1(0u, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(var_0.c.b + var_1.b))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(373f, var_1.e.x, var_1.d.x, 992f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(global1.c, var_0.a.b.wzw, global3[_wgslsmith_index_u32(0u, 9u)])))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(vec3<f32>(var_0.c.d.x, -1213f, var_1.e.x), vec3<f32>(var_2, 1000f, -274f)))))), vec2<f32>(var_1.e.x, global1.b.x)), !vec2<bool>(true, all(!vec3<bool>(var_0.d.x, false, var_0.d.x))));
    return var_1;
}

fn func_1(arg_0: u32, arg_1: i32) -> StorageBuffer {
    var var_0 = func_4(func_2());
    var var_1 = _wgslsmith_f_op_vec4_f32(-global1.b);
    global2 = array<u32, 29>();
    return StorageBuffer(max(~abs(vec2<u32>(var_0.a, 4294967295u)), firstTrailingBit(select(vec2<u32>(81591u, global1.a), vec2<u32>(arg_0, global2[_wgslsmith_index_u32(u_input.b, 29u)]), true) | vec2<u32>(39782u, u_input.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x + global1.d.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<u32, 29>();
    let x = u_input.a;
    s_output = func_1(37620u, ~0i);
}

