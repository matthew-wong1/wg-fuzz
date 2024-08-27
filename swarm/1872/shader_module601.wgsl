struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: u32,
    d: bool,
    e: vec4<i32>,
}

struct Struct_2 {
    a: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: vec2<u32>,
    d: vec3<f32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 56496u;

var<private> global1: vec2<bool>;

var<private> global2: array<i32, 20> = array<i32, 20>(i32(-2147483648), 24160i, -10429i, 0i, 64844i, -3644i, 42392i, i32(-2147483648), 28494i, -1i, 0i, 2147483647i, i32(-2147483648), i32(-2147483648), 24870i, -2266i, 139i, -37550i, 2777i, 33671i);

var<private> global3: array<u32, 30> = array<u32, 30>(0u, 4294967295u, 72415u, 1u, 0u, 0u, 4294967295u, 27877u, 19264u, 1u, 1u, 72213u, 27520u, 0u, 1u, 41469u, 0u, 0u, 0u, 0u, 4294967295u, 28496u, 35544u, 0u, 53240u, 9986u, 12205u, 0u, 78905u, 33612u);

var<private> global4: array<Struct_1, 22>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_1) -> f32 {
    let var_0 = !vec4<bool>(any(!(!vec2<bool>(arg_1.b, arg_1.d))), _wgslsmith_f_op_f32(f32(-1f) * -429f) <= _wgslsmith_f_op_f32(_wgslsmith_div_f32(1162f, -360f) + _wgslsmith_f_op_f32(floor(1000f))), !((arg_1.c > u_input.a.x) && true), 1u >= ~(~arg_1.c));
    let var_1 = _wgslsmith_div_u32(abs(u_input.a.x << (_wgslsmith_mult_u32(67750u, _wgslsmith_add_u32(global3[_wgslsmith_index_u32(0u, 30u)], arg_0.a)) % 32u)), ~37448u);
    let var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(316f, 529f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)) + vec3<f32>(-549f, _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-350f, _wgslsmith_f_op_f32(f32(-1f) * -1037f)), 665f, true)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(-256f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -376f) * _wgslsmith_f_op_f32(round(949f))), global3[_wgslsmith_index_u32(abs(arg_2.a.x), 30u)] >= 1u))));
    global2 = array<i32, 20>();
    var var_3 = arg_1.e.xy;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1155f * 893f))))));
}

fn func_2(arg_0: Struct_2, arg_1: f32) -> f32 {
    let var_0 = arg_0;
    let var_1 = _wgslsmith_f_op_f32(arg_1 * _wgslsmith_f_op_f32(-arg_1));
    var var_2 = vec2<bool>(false, u_input.b.x == -40329i);
    var var_3 = u_input.b.x;
    var_3 = abs(~(~global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(36905u, 4294967295u, arg_0.a, 1u), vec4<u32>(u_input.a.x, 4294967295u, arg_0.a, u_input.a.x)) & 1u, 20u)]));
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_3(Struct_2(1u), global4[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_mod_u32(var_0.a >> (u_input.a.x % 32u), 4294967295u), var_0.a), 22u)], global4[_wgslsmith_index_u32(_wgslsmith_add_u32(~var_0.a, 24186u | ~var_0.a), 22u)]))));
}

fn func_1() -> u32 {
    var var_0 = global4[_wgslsmith_index_u32(3820u >> (~abs(~(~global3[_wgslsmith_index_u32(4294967295u, 30u)])) % 32u), 22u)];
    global0 = firstTrailingBit(var_0.c);
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(-592f)))), -1310f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(Struct_2(global3[_wgslsmith_index_u32(u_input.a.x, 30u)]), -589f)) + _wgslsmith_f_op_f32(round(494f)))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(545f)), 229f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-385f, 328f, global1.x)) * -1316f)))));
    let var_2 = var_0.e;
    var var_3 = Struct_2(~_wgslsmith_mult_u32(firstTrailingBit(global3[_wgslsmith_index_u32(4294967295u, 30u)]), ~global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(var_0.a.xw, vec2<u32>(30165u, u_input.a.x)), 30u)]));
    return _wgslsmith_mult_u32(~_wgslsmith_dot_vec3_u32(var_0.a.zxw, var_0.a.xxz), var_0.c);
}

fn func_4(arg_0: vec4<u32>, arg_1: vec2<i32>, arg_2: Struct_2, arg_3: vec4<f32>) -> vec2<i32> {
    var var_0 = arg_2;
    let var_1 = global4[_wgslsmith_index_u32(~arg_0.x, 22u)];
    var_0 = Struct_2(arg_2.a);
    global0 = abs(0u);
    let var_2 = abs(vec3<u32>(var_0.a, 0u, arg_2.a));
    return vec2<i32>(arg_1.x, ~countOneBits(~(-28125i)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(-(firstLeadingBit(vec2<i32>(global2[_wgslsmith_index_u32(1u, 20u)], -20733i)) | min(vec2<i32>(1i, u_input.b.x), vec2<i32>(u_input.b.x, global2[_wgslsmith_index_u32(33758u, 20u)]) >> (u_input.a % vec2<u32>(32u)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -797f) - _wgslsmith_f_op_f32(f32(-1f) * -676f))), 1370f)), u_input.a, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(min(266f, -512f)), _wgslsmith_f_op_f32(round(2858f)), -908f), vec3<f32>(_wgslsmith_f_op_f32(960f - 679f), _wgslsmith_div_f32(-121f, 292f), -280f))))), func_4(~vec4<u32>(func_1(), global3[_wgslsmith_index_u32(~15135u, 30u)], 85361u, 0u), u_input.b.yx ^ _wgslsmith_mult_vec2_i32(u_input.b.zz, _wgslsmith_mod_vec2_i32(u_input.b.xx, u_input.b.yx)), Struct_2(38202u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-801f, 707f, 1000f, -1009f))) + _wgslsmith_f_op_vec4_f32(min(vec4<f32>(1701f, 1434f, 735f, -548f), vec4<f32>(745f, 2915f, 480f, -980f)))))));
}

