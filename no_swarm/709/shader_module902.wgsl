struct Struct_1 {
    a: vec2<f32>,
    b: u32,
    c: vec4<f32>,
    d: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: vec2<f32>,
    d: vec3<i32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 8>;

var<private> global1: Struct_1 = Struct_1(vec2<f32>(319f, -835f), 4294967295u, vec4<f32>(-787f, 1588f, 678f, 396f), 0u);

var<private> global2: u32 = 27615u;

var<private> global3: u32 = 0u;

var<private> global4: Struct_1;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: vec4<f32>, arg_3: Struct_1) -> u32 {
    global2 = _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(select(vec4<u32>(~global4.b, reverseBits(arg_0.x), 8940u, abs(global1.d)), reverseBits(u_input.c ^ vec4<u32>(4294967295u, 0u, arg_0.x, 5345u)), !select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true), false)), firstLeadingBit(abs(~u_input.c))), ~(~1u));
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_1.c.xx)), firstTrailingBit(arg_0.x), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(max(global4.c, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_2.x, arg_2.x, global4.a.x, arg_1.c.x), vec4<f32>(global4.c.x, 676f, -557f, arg_3.c.x))))))), arg_2)), 80265u);
    var var_1 = true;
    var var_2 = Struct_1(global4.a, global1.b, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(arg_1.c)) * _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-2314f, arg_1.a.x, global1.a.x, var_0.a.x), var_0.c))))), select(arg_1.d, _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(u_input.c, u_input.c), _wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, u_input.b.x, u_input.b.x, 1u), vec4<u32>(15497u, u_input.b.x, arg_0.x, arg_1.d), vec4<u32>(0u, global1.b, 4294967295u, 0u))), any(vec3<bool>(true, true, true))) ^ ~1u);
    var var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(var_0.c.x)))) * var_2.c.x), 1000f));
    return 4294967295u;
}

fn func_2(arg_0: vec3<i32>) -> u32 {
    global2 = ~(~func_3(_wgslsmith_mult_vec3_u32(vec3<u32>(6159u, u_input.c.x, global4.d), ~vec3<u32>(global4.b, u_input.b.x, global1.b)), Struct_1(_wgslsmith_f_op_vec2_f32(-global1.c.yw), global4.b, global1.c, u_input.b.x), vec4<f32>(1017f, 597f, _wgslsmith_f_op_f32(-global4.c.x), _wgslsmith_f_op_f32(floor(1000f))), Struct_1(_wgslsmith_f_op_vec2_f32(select(global4.a, global4.c.xz, vec2<bool>(true, true))), 1u, global1.c, ~global4.d)));
    global1 = Struct_1(global4.a, ~(~_wgslsmith_dot_vec4_u32(vec4<u32>(19840u, u_input.c.x, 0u, 31999u), vec4<u32>(0u, u_input.c.x, u_input.b.x, global4.b)) & global1.d), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global4.c)))) + vec4<f32>(_wgslsmith_f_op_f32(global1.c.x + -319f), global1.c.x, global4.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-460f, -674f)), global1.c.x))), max(global4.b, _wgslsmith_add_u32(global4.b, u_input.b.x)));
    let var_0 = global1.c.yyx;
    let var_1 = u_input.b.x;
    var var_2 = select(-30281i, u_input.a.x, all(vec4<bool>(true, true, true, reverseBits(arg_0.x) < arg_0.x)));
    return 1u;
}

fn func_4(arg_0: u32, arg_1: Struct_1) -> Struct_1 {
    let var_0 = arg_1;
    let var_1 = reverseBits(16654u ^ max(1u, _wgslsmith_add_u32(global1.d, 7823u)));
    let var_2 = arg_1;
    var var_3 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(global0[_wgslsmith_index_u32(u_input.b.x, 8u)] - vec3<f32>(global1.a.x, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(round(global1.a.x))))));
    global1 = Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(global4.c.x, var_0.a.x) * vec2<f32>(_wgslsmith_f_op_f32(floor(var_0.c.x)), _wgslsmith_f_op_f32(f32(-1f) * -1000f))), 4294967295u, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-730f - 1517f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a.x * var_0.c.x)), _wgslsmith_f_op_f32(-arg_1.a.x), -147f)), _wgslsmith_sub_u32(~(~1u) << (~firstTrailingBit(4294967295u) % 32u), var_0.d));
    return var_2;
}

fn func_1(arg_0: u32) -> f32 {
    var var_0 = func_4((0u ^ global1.b) | 10111u, Struct_1(vec2<f32>(-1353f, 663f), ~select(func_2(vec3<i32>(-21279i, u_input.a.x, -2147483647i)), _wgslsmith_mod_u32(global1.b, 0u), any(vec4<bool>(true, true, false, false))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(534f, 1000f, global1.c.x, 269f) - global1.c) + _wgslsmith_f_op_vec4_f32(step(global4.c, global1.c))))), arg_0));
    let var_1 = _wgslsmith_f_op_vec4_f32(global4.c - _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-958f, _wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(max(1635f, 1041f)), 1000f)))));
    global3 = _wgslsmith_dot_vec4_u32(vec4<u32>(1u << (global4.b % 32u), ~firstTrailingBit(~9324u), _wgslsmith_mod_u32(global1.d, _wgslsmith_dot_vec4_u32(u_input.c, u_input.c)) & (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, 4294967295u, u_input.c.x), u_input.c.ywx) | ~1u), ~4294967295u), min(_wgslsmith_add_vec4_u32(min(~u_input.c, vec4<u32>(arg_0, 4294967295u, u_input.c.x, global1.d)), countOneBits(vec4<u32>(global1.b, global1.b, 235u, global1.b)) ^ ~u_input.c), reverseBits(select(vec4<u32>(5424u, 0u, var_0.d, 15414u), u_input.c, true) & vec4<u32>(0u, 0u, 33691u, 0u))));
    let var_2 = firstLeadingBit(u_input.a.xx);
    global4 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global4.c.x, global4.c.x)) * vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.x - var_0.c.x)))), 1u, _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(f32(-1f) * -233f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(var_0.c.x)), _wgslsmith_div_f32(-1280f, -1219f)), 805f) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-231f, global1.c.x, -477f, var_1.x) + vec4<f32>(-939f, global4.c.x, -1123f, global1.c.x)) * var_1))), ~countOneBits(func_3(countOneBits(u_input.c.xyz), func_4(0u, Struct_1(vec2<f32>(global4.a.x, -900f), 74148u, var_1, arg_0)), vec4<f32>(1399f, 394f, 2078f, -1276f), func_4(arg_0, Struct_1(vec2<f32>(-384f, -1482f), var_0.b, vec4<f32>(105f, var_0.c.x, -1545f, 908f), 33210u)))));
    return var_1.x;
}

fn func_5(arg_0: vec4<f32>, arg_1: Struct_1) -> StorageBuffer {
    global3 = global4.b;
    var var_0 = ~vec2<u32>(func_2(~u_input.a), abs(16850u));
    var var_1 = !all(vec4<bool>(true, true, true, true));
    let var_2 = reverseBits(u_input.c);
    global1 = arg_1;
    return StorageBuffer(_wgslsmith_add_i32(u_input.a.x, ~(-_wgslsmith_add_i32(u_input.a.x, -52021i))), _wgslsmith_f_op_vec3_f32(-global1.c.wxx), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -995f), -842f))), abs(-(~(-u_input.a))), u_input.a.zx);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!vec2<bool>(_wgslsmith_f_op_f32(f32(-1f) * -1000f) != _wgslsmith_f_op_f32(step(-1180f, 1508f)), false));
    global0 = array<vec3<f32>, 8>();
    var var_1 = min(~countOneBits(vec3<u32>(~global4.d, global4.b, global1.b << (u_input.b.x % 32u))), u_input.c.xxz);
    var var_2 = Struct_1(global4.a, u_input.b.x, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(823f, 1557f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1279f - _wgslsmith_f_op_f32(floor(global1.c.x)))), global4.a.x, -1000f), 0u);
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1310f, _wgslsmith_f_op_f32(-130f + _wgslsmith_f_op_f32(step(global1.c.x, global1.c.x))))) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1352f, global1.c.x, true))) * -186f), _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1194f - 249f))))));
    let var_4 = global1.b;
    var var_5 = vec3<bool>(true, false, !var_0.x);
    let x = u_input.a;
    s_output = func_5(global4.c, Struct_1(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global1.c.wy)), vec2<f32>(_wgslsmith_f_op_f32(func_1(global4.b)), -425f))), ~35517u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global4.c.x, global4.a.x, 1157f, -674f), vec4<f32>(260f, var_2.c.x, global4.a.x, 2239f))) + _wgslsmith_f_op_vec4_f32(exp2(var_2.c)))), var_1.x));
}

