struct Struct_1 {
    a: i32,
    b: vec3<u32>,
    c: u32,
    d: vec3<u32>,
}

struct Struct_2 {
    a: i32,
    b: vec3<f32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec4<bool>,
}

struct Struct_5 {
    a: Struct_2,
    b: u32,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: f32,
    d: i32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 14> = array<i32, 14>(1i, -20971i, 17761i, -1i, 2258i, i32(-2147483648), 1i, -3647i, -2523i, 13355i, 2147483647i, 1i, -25619i, -531i);

var<private> global1: Struct_4 = Struct_4(vec4<bool>(true, true, false, true));

var<private> global2: u32;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
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

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_1(arg_0: u32, arg_1: u32, arg_2: vec3<u32>) -> u32 {
    return u_input.b;
}

fn func_3(arg_0: vec3<bool>, arg_1: u32) -> vec3<bool> {
    global0 = array<i32, 14>();
    var var_0 = Struct_3(Struct_2(_wgslsmith_dot_vec3_i32(-select(vec3<i32>(global0[_wgslsmith_index_u32(4294967295u, 14u)], u_input.a.x, -13522i), vec3<i32>(global0[_wgslsmith_index_u32(u_input.b, 14u)], u_input.a.x, global0[_wgslsmith_index_u32(0u, 14u)]), global1.a.yzy), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.c, 0i, 14750i) | u_input.a, u_input.a >> (vec3<u32>(39307u, arg_1, 0u) % vec3<u32>(32u)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(1439f, 206f, -384f), vec3<f32>(-1081f, 1405f, -282f))) * vec3<f32>(_wgslsmith_f_op_f32(1511f - 1436f), -1320f, _wgslsmith_f_op_f32(187f - -1000f)))));
    var var_1 = ~(~arg_1);
    global1 = Struct_4(select(!(!select(global1.a, global1.a, arg_0.x)), !select(!vec4<bool>(arg_0.x, arg_0.x, true, false), !vec4<bool>(arg_0.x, true, false, global1.a.x), global1.a), (var_0.a.a < _wgslsmith_mult_i32(2147483647i, global0[_wgslsmith_index_u32(30273u, 14u)])) | any(vec3<bool>(false, false, arg_0.x))));
    let var_2 = Struct_5(Struct_2(_wgslsmith_dot_vec3_i32(u_input.a | -vec3<i32>(1i, -35107i, 7182i), vec3<i32>(-1i, 0i, global0[_wgslsmith_index_u32(arg_1, 14u)]) & _wgslsmith_mod_vec3_i32(u_input.a, u_input.a)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_0.a.b.x, var_0.a.b.x, -1038f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(var_0.a.b, var_0.a.b)))), ~_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(38244u, 10124u, 4294967295u), firstLeadingBit(vec3<u32>(arg_1, arg_1, u_input.b))), reverseBits(u_input.b) >> (~arg_1 % 32u)), Struct_2(-2147483647i, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2464f * -454f)), _wgslsmith_f_op_f32(f32(-1f) * -1553f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_0.a.b.x + var_0.a.b.x))))));
    return vec3<bool>(arg_0.x, !arg_0.x, all(!(!(!vec3<bool>(false, arg_0.x, arg_0.x)))));
}

fn func_2() -> u32 {
    let var_0 = !select(select(global1.a.zwy, func_3(global1.a.wyw, firstTrailingBit(u_input.b)), func_3(global1.a.wxx, u_input.b)), !(!global1.a.yzy), any(select(global1.a, vec4<bool>(global1.a.x, global1.a.x, global1.a.x, true), vec4<bool>(global1.a.x, global1.a.x, global1.a.x, false))) | global1.a.x);
    var var_1 = -753f;
    let var_2 = vec2<u32>(~(~u_input.b), u_input.b) ^ ~(~select(_wgslsmith_add_vec2_u32(vec2<u32>(31288u, 4294967295u), vec2<u32>(u_input.b, u_input.b)), reverseBits(vec2<u32>(38971u, 4294967295u)), false));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-445f)) * _wgslsmith_div_f32(-472f, 1579f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-638f, -1000f, var_0.x)) - _wgslsmith_f_op_f32(ceil(272f))))));
    let var_4 = u_input.b;
    return 0u;
}

fn func_4(arg_0: u32, arg_1: vec4<u32>, arg_2: i32, arg_3: bool) -> Struct_2 {
    global2 = _wgslsmith_div_u32(~(~(~arg_1.x)), ~65878u);
    var var_0 = arg_3;
    global1 = Struct_4(select(vec4<bool>(true, true, all(!global1.a.zzz), true), select(vec4<bool>(true, arg_3, false, arg_3), global1.a, true), arg_3));
    var_0 = any(!(!vec4<bool>(true, arg_3, global1.a.x, true)));
    var_0 = global1.a.x;
    return Struct_2(_wgslsmith_div_i32(u_input.c, 27793i), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(164f * -346f), _wgslsmith_f_op_f32(ceil(1315f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1313f) * -680f))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = 1u;
    var var_0 = Struct_3(func_4(func_1(41970u >> (u_input.b % 32u), _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.b, 33492u), vec2<u32>(0u, u_input.b)), ~vec2<u32>(u_input.b, 0u)), firstLeadingBit(~vec3<u32>(u_input.b, u_input.b, u_input.b))), ~vec4<u32>(func_2(), reverseBits(u_input.b), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 4294967295u, 6728u, 41473u), vec4<u32>(71851u, 4294967295u, 52362u, 58059u)), u_input.b), ~0i, true));
    global1 = Struct_4(global1.a);
    global0 = array<i32, 14>();
    var var_1 = Struct_4(vec4<bool>(select(true, global1.a.x, global1.a.x), !global1.a.x, select(!(global0[_wgslsmith_index_u32(u_input.b, 14u)] > u_input.c), all(global1.a.yx), !global1.a.x), _wgslsmith_div_f32(var_0.a.b.x, -1000f) <= 281f));
    global0 = array<i32, 14>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_i32(~vec2<i32>(abs(global0[_wgslsmith_index_u32(19007u, 14u)]), -2147483647i), ~u_input.a.zx), 1u, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-995f - -418f), var_0.a.b.x) - 1187f), ~u_input.c, vec4<u32>(~1u, func_2(), ~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(32417u, 0u)), ~4294967295u) << (~max(~vec4<u32>(12674u, u_input.b, 21237u, 4294967295u), vec4<u32>(u_input.b, u_input.b, 51150u, 327u)) % vec4<u32>(32u)));
}

