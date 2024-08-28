struct Struct_1 {
    a: u32,
    b: f32,
    c: u32,
    d: u32,
    e: vec4<bool>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: vec4<i32>,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<u32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: vec3<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 24> = array<i32, 24>(-105i, -30067i, 10070i, 1i, -1i, 11676i, -1i, 0i, i32(-2147483648), 0i, 1i, 2147483647i, i32(-2147483648), 17732i, 2147483647i, -51594i, 18358i, 2147483647i, -4535i, 14831i, 10560i, 16480i, i32(-2147483648), -1i);

var<private> global1: vec4<f32>;

var<private> global2: vec4<i32> = vec4<i32>(i32(-2147483648), -1i, 15302i, 5623i);

var<private> global3: bool = true;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_1(arg_0: bool, arg_1: Struct_1, arg_2: u32, arg_3: i32) -> f32 {
    let var_0 = arg_1.b;
    var var_1 = all(arg_1.e.wwy);
    global3 = arg_0;
    var_1 = arg_0;
    var var_2 = arg_0;
    return 969f;
}

fn func_3() -> bool {
    global1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-686f, 1000f, global1.x, global1.x) * vec4<f32>(global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x + global1.x)), global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(414f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, -1171f, 1488f, global1.x)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, global1.x, 270f, global1.x) - vec4<f32>(global1.x, 204f, 320f, 1000f)))))));
    var var_0 = !(!vec4<bool>(0i >= ~u_input.b, false, all(select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), false)), true));
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global1.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x))), _wgslsmith_f_op_f32(ceil(795f)), !any(vec4<bool>(true, var_0.x, true, var_0.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -787f) * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(-1352f))))), global1.x);
    global2 = abs(vec4<i32>(global0[_wgslsmith_index_u32(select(_wgslsmith_add_u32(_wgslsmith_mult_u32(u_input.a, u_input.a), ~1u), 29738u, var_0.x), 24u)], global2.x, -2147483647i, 45657i));
    global3 = false & (select(any(!var_0.xyz), all(vec3<bool>(true, true, false)) & false, select(-1780i < global2.x, var_0.x & var_0.x, var_0.x)) != !(_wgslsmith_f_op_f32(ceil(-1998f)) < var_1.x));
    return select(any(select(vec4<bool>(true, false, all(var_0.zwz), true), vec4<bool>(var_0.x & false, var_0.x && false, select(var_0.x, var_0.x, var_0.x), var_0.x), true)), false, true);
}

fn func_2(arg_0: vec4<u32>) -> bool {
    let var_0 = u_input.c;
    var var_1 = _wgslsmith_add_i32(global0[_wgslsmith_index_u32(u_input.a, 24u)], -503i ^ reverseBits(-71058i << (u_input.a % 32u)));
    global0 = array<i32, 24>();
    var var_2 = Struct_1(~_wgslsmith_clamp_u32(var_0.x, 9116u, 1u), _wgslsmith_f_op_f32(global1.x * _wgslsmith_f_op_f32(f32(-1f) * -1512f)), u_input.a, 26370u, !vec4<bool>(true, true && any(vec3<bool>(true, false, false)), select(all(vec2<bool>(false, true)), global1.x > global1.x, true), func_3()));
    var_2 = Struct_1(~(~8978u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-139f - -182f)), arg_0.x, u_input.a, !select(!select(vec4<bool>(var_2.e.x, true, true, var_2.e.x), vec4<bool>(false, true, var_2.e.x, var_2.e.x), vec4<bool>(true, var_2.e.x, var_2.e.x, false)), var_2.e, !all(var_2.e.wz)));
    return var_2.e.x;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1245f, _wgslsmith_f_op_f32(func_1(true, Struct_1(u_input.a, global1.x, u_input.a, u_input.c.x, vec4<bool>(false, true, false, false)), 4294967295u, 74658i)))) + _wgslsmith_f_op_f32(-223f * global1.x))) <= _wgslsmith_f_op_f32(func_1(func_2(~vec4<u32>(28501u, u_input.c.x, u_input.a, u_input.a)) | true, Struct_1(1u, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-987f - global1.x), 1012f)), ~0u, _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(77169u, u_input.a), u_input.c.xy), _wgslsmith_add_u32(u_input.a, 4495u)), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false)), true)), 40409u & u_input.a, (u_input.d.x << (~16265u % 32u)) << (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, 48734u, 1u, 27456u), vec4<u32>(4294967295u, u_input.c.x, u_input.a, u_input.c.x) >> (vec4<u32>(0u, 10562u, u_input.c.x, u_input.a) % vec4<u32>(32u))) % 32u)));
    var var_0 = Struct_2(firstLeadingBit(vec2<u32>(u_input.a, ~u_input.a)), Struct_1(_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.a, u_input.a), countOneBits(u_input.c.xz ^ vec2<u32>(u_input.c.x, 0u))), global1.x, ~(5052u & (u_input.c.x >> (u_input.a % 32u))), ~abs(u_input.c.x), select(vec4<bool>(true, true, true, true), vec4<bool>(true, global2.x == 0i, true, true), select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, true)))), countOneBits(vec4<i32>(global2.x, -(u_input.d.x | global0[_wgslsmith_index_u32(1u, 24u)]), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(select(vec3<u32>(u_input.a, 26403u, 66179u), u_input.c, vec3<bool>(false, false, false)), ~u_input.c), 24u)], ~2147483647i)), select(vec3<bool>(true, !func_3(), true), select(vec3<bool>(true, false, any(vec3<bool>(false, false, true))), vec3<bool>(true, true, true), all(select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), true))), select(!select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), false), vec3<bool>(true, func_3(), true), true)));
    global2 = var_0.c;
    let var_1 = !var_0.b.e.x;
    global1 = vec4<f32>(var_0.b.b, global1.x, var_0.b.b, global1.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(-1i) * -abs(vec3<i32>(var_0.c.x, 1i, 0i)), var_0.b.b, ~max(u_input.c & u_input.c, ~vec3<u32>(1u, 4294967295u, u_input.a)), var_0.a.x);
}

