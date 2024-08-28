struct Struct_1 {
    a: vec3<i32>,
    b: vec4<i32>,
    c: bool,
    d: u32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: f32,
    d: bool,
    e: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 28>;

var<private> global1: vec2<f32> = vec2<f32>(-303f, -2445f);

var<private> global2: array<f32, 12> = array<f32, 12>(1127f, 1140f, -736f, 814f, 1319f, 163f, -2417f, 604f, -115f, -1527f, -766f, -1000f);

var<private> global3: Struct_2;

var<private> global4: array<Struct_2, 10>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_2(arg_0: u32, arg_1: Struct_1, arg_2: u32, arg_3: Struct_1) -> vec4<u32> {
    global4 = array<Struct_2, 10>();
    var var_0 = select(arg_3.c != (any(!vec4<bool>(arg_3.c, true, arg_3.c, arg_1.c)) | false), arg_3.c, global3.a);
    let var_1 = 0u;
    let var_2 = 16302u;
    global0 = array<Struct_1, 28>();
    return vec4<u32>((countOneBits(var_1) & _wgslsmith_dot_vec2_u32(vec2<u32>(0u, global3.e), ~u_input.a.zz)) << (firstLeadingBit(arg_2) % 32u), _wgslsmith_mult_u32(var_1, abs(1u)) << (_wgslsmith_dot_vec4_u32(u_input.c, u_input.c) % 32u), ~arg_1.d, _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(~u_input.a, u_input.c.wzw) << ((u_input.c.zxw << (_wgslsmith_add_vec3_u32(u_input.c.zzx, u_input.a) % vec3<u32>(32u))) % vec3<u32>(32u)), u_input.c.ywz));
}

fn func_3(arg_0: u32, arg_1: Struct_1) -> vec4<i32> {
    global1 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(314f, -649f), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global3.b.d, 17510u, 1u, 31390u), u_input.c) >> (1u % 32u), 12u)])), global1.x), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2[_wgslsmith_index_u32(arg_1.d, 12u)], 684f) - vec2<f32>(1107f, -2206f)) * vec2<f32>(-445f, global1.x)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-1030f, global2[_wgslsmith_index_u32(global3.e, 12u)]) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.c, global3.c)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2[_wgslsmith_index_u32(4294967295u, 12u)], global1.x) + vec2<f32>(global1.x, global1.x)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2[_wgslsmith_index_u32(28800u, 12u)], 294f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(global2[_wgslsmith_index_u32(1u, 12u)], global2[_wgslsmith_index_u32(global3.e, 12u)]))))))), 1u <= (global3.e | (4294967295u ^ _wgslsmith_mult_u32(global3.e, 4294967295u)))));
    global2 = array<f32, 12>();
    global1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1133f, 1000f))) - _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global2[_wgslsmith_index_u32(arg_1.d, 12u)], -570f)))) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(164f, -305f), _wgslsmith_div_vec2_f32(vec2<f32>(-800f, global3.c), vec2<f32>(global2[_wgslsmith_index_u32(4294967295u, 12u)], global3.c)), arg_1.c))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1268f, global3.c)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-2732f, _wgslsmith_f_op_f32(global3.c - 372f)) * _wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(vec2<f32>(-1000f, -552f), vec2<f32>(global1.x, global1.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1255f, global2[_wgslsmith_index_u32(13038u, 12u)]))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1215f, global2[_wgslsmith_index_u32(global3.b.d, 12u)])) * _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1247f, 436f)))))));
    var var_0 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(vec2<f32>(global3.c, -1224f), vec2<f32>(global3.c, global2[_wgslsmith_index_u32(arg_0, 12u)])))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(global2[_wgslsmith_index_u32(arg_1.d, 12u)], -148f) * vec2<f32>(global1.x, global2[_wgslsmith_index_u32(arg_1.d, 12u)]))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(global3.c, global3.c), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global2[_wgslsmith_index_u32(1u, 12u)], -496f)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1335f, global1.x) + vec2<f32>(global2[_wgslsmith_index_u32(global3.e, 12u)], 765f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.c, 237f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(0u, 12u)] - 274f), 505f) + _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(947f, global1.x) * vec2<f32>(-1000f, global3.c))))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, -377f)), _wgslsmith_div_vec2_f32(vec2<f32>(global3.c, 294f), vec2<f32>(global2[_wgslsmith_index_u32(arg_1.d, 12u)], 272f)), true)) + _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(1079f, -1000f) + vec2<f32>(global2[_wgslsmith_index_u32(arg_1.d, 12u)], global3.c))))))));
    return ~firstLeadingBit(firstTrailingBit(vec4<i32>(-1i, -3715i, 34022i, global3.b.a.x)) << (_wgslsmith_sub_vec4_u32(vec4<u32>(global3.e, 0u, arg_0, 72547u), abs(u_input.c)) % vec4<u32>(32u)));
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_2(all(select(select(!vec4<bool>(true, global3.d, global3.a, global3.d), select(vec4<bool>(global3.b.c, global3.b.c, global3.d, global3.b.c), vec4<bool>(global3.b.c, true, global3.a, global3.a), false), select(vec4<bool>(global3.a, false, global3.b.c, global3.a), vec4<bool>(true, true, false, global3.b.c), global3.a)), vec4<bool>(!global3.d, global3.a, true, global3.a), all(!vec2<bool>(false, global3.b.c)))), Struct_1(global3.b.a << ((~u_input.a ^ ~vec3<u32>(2055u, 4294967295u, 95728u)) % vec3<u32>(32u)), -max(global3.b.b ^ vec4<i32>(global3.b.a.x, global3.b.b.x, -2147483647i, global3.b.b.x), -global3.b.b), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(-2877f)))) <= global2[_wgslsmith_index_u32(global3.b.d, 12u)], reverseBits(_wgslsmith_dot_vec3_u32(~u_input.c.zxz, u_input.c.wzy))), -572f, global3.d, 0u);
    let var_1 = u_input.a.x;
    global2 = array<f32, 12>();
    global0 = array<Struct_1, 28>();
    global4 = array<Struct_2, 10>();
    return Struct_1((vec3<i32>(-1i) * -(vec3<i32>(-48590i, -1i, global3.b.a.x) & global3.b.b.yxy)) ^ firstLeadingBit(var_0.b.b.xwz), func_3(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(65083u, u_input.b, 53255u, 1u), func_2(4294967295u, global3.b, var_0.b.d, var_0.b)), ~_wgslsmith_dot_vec4_u32(vec4<u32>(var_1, var_1, 0u, global3.b.d), vec4<u32>(var_1, 1u, global3.b.d, 1u))), Struct_1(abs(var_0.b.a), firstLeadingBit(-vec4<i32>(-29786i, var_0.b.a.x, 20865i, global3.b.b.x)), all(vec4<bool>(var_0.b.c, false, true, global3.b.c)), global3.e)), false, global3.b.d);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a;
    var var_1 = func_1();
    var var_2 = ~global3.b.d;
    var var_3 = 402f;
    let var_4 = 1u;
    global1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global3.c, -284f), vec2<f32>(1323f, 984f), vec2<bool>(false, true))), _wgslsmith_f_op_vec2_f32(vec2<f32>(global3.c, global1.x) + vec2<f32>(596f, -960f))))))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global3.c, global1.x))))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, -461f)) + _wgslsmith_div_vec2_f32(vec2<f32>(-1590f, -1053f), vec2<f32>(global1.x, global2[_wgslsmith_index_u32(53227u, 12u)])))))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec2<i32>(~1i, _wgslsmith_dot_vec4_i32(vec4<i32>(-85386i, 0i, var_1.b.x, -39719i), global3.b.b))) & vec2<i32>(-28995i, (-2147483647i << (var_4 % 32u)) >> (var_4 % 32u)));
}

