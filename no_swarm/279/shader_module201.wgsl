struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: u32,
    c: vec3<u32>,
    d: vec2<u32>,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 29> = array<i32, 29>(1i, 27048i, 58781i, -1i, -1i, -57301i, 2565i, 0i, 38343i, 0i, -1i, -9308i, -26254i, 0i, i32(-2147483648), -1i, 0i, 2147483647i, 23490i, -29603i, i32(-2147483648), 2147483647i, -14325i, 2147483647i, 2147483647i, 1i, -12688i, -39496i, -52496i);

var<private> global1: array<Struct_1, 30>;

var<private> global2: Struct_2 = Struct_2(vec4<u32>(34281u, 0u, 1u, 1u), 4294967295u, vec3<u32>(1u, 4294967295u, 1u), vec2<u32>(4140u, 1u), vec3<bool>(true, true, true));

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec3<f32>) -> u32 {
    let var_0 = Struct_2(_wgslsmith_mod_vec4_u32(~(global2.a ^ global2.a), global2.a), ~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, _wgslsmith_sub_u32(23379u, u_input.b), ~0u), firstLeadingBit(global2.c)), max(~reverseBits(u_input.a), ~global2.c), global2.a.yx << (global2.c.yx % vec2<u32>(32u)), select(global2.e, global2.e, all(global2.e.zx)));
    global2 = Struct_2(select(_wgslsmith_sub_vec4_u32(global2.a, var_0.a), _wgslsmith_div_vec4_u32(countOneBits(~global2.a), ~vec4<u32>(4294967295u, 0u, 0u, 66294u)), !select(select(vec4<bool>(global2.e.x, true, false, false), vec4<bool>(var_0.e.x, var_0.e.x, var_0.e.x, false), vec4<bool>(var_0.e.x, global2.e.x, false, global2.e.x)), vec4<bool>(true, false, false, global2.e.x), select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, global2.e.x, global2.e.x), vec4<bool>(global2.e.x, false, var_0.e.x, true)))), global2.d.x, var_0.a.xxz, select(_wgslsmith_clamp_vec2_u32(reverseBits(vec2<u32>(global2.b, 1u)), firstLeadingBit(_wgslsmith_mult_vec2_u32(vec2<u32>(34363u, 85819u), var_0.a.yw)), u_input.a.yy), ~vec2<u32>(abs(var_0.b), global2.c.x), all(vec2<bool>(var_0.e.x, select(true, false, true)))), vec3<bool>(global2.e.x || ((u_input.a.x ^ var_0.d.x) > 17620u), all(global2.e.xy), global2.e.x));
    let var_1 = 817f;
    global0 = array<i32, 29>();
    global2 = Struct_2((global2.a & select(var_0.a, vec4<u32>(4294967295u, 1u, 1u, 4294967295u), !vec4<bool>(true, false, true, var_0.e.x))) << (select(~_wgslsmith_add_vec4_u32(var_0.a, vec4<u32>(u_input.a.x, global2.b, u_input.b, var_0.b)), ~global2.a >> ((global2.a ^ vec4<u32>(10230u, var_0.a.x, 1u, global2.d.x)) % vec4<u32>(32u)), var_0.e.x) % vec4<u32>(32u)), u_input.b, vec3<u32>(_wgslsmith_mult_u32(~select(1u, 55120u, true), u_input.a.x), _wgslsmith_clamp_u32(u_input.b, 0u, 63208u), firstLeadingBit(63733u)), max(~vec2<u32>(u_input.b, ~u_input.b), global2.c.yx), global2.e);
    return 0u & ~var_0.b;
}

fn func_2() -> Struct_2 {
    global0 = array<i32, 29>();
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -903f))), _wgslsmith_f_op_f32(ceil(-1071f)), -1558f)) * _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-666f, -451f, -1000f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-313f, -1338f, -1096f)))))));
    return Struct_2(global2.a, func_3(vec3<f32>(-1414f, _wgslsmith_f_op_f32(sign(var_0.x)), _wgslsmith_f_op_f32(f32(-1f) * -465f))), _wgslsmith_mod_vec3_u32(~_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, 1u), _wgslsmith_sub_vec3_u32(vec3<u32>(39024u, global2.b, 13698u), u_input.a)), _wgslsmith_div_vec3_u32(~vec3<u32>(1u, global2.c.x, global2.d.x), ~global2.a.zxy) ^ vec3<u32>(20925u, 37011u, firstLeadingBit(u_input.a.x))), vec2<u32>(abs(1u >> (~u_input.b % 32u)), 1u), global2.e);
}

fn func_1() -> vec2<u32> {
    let var_0 = global1[_wgslsmith_index_u32(countOneBits(u_input.a.x), 30u)];
    var var_1 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(235f, -2433f))), _wgslsmith_div_vec2_f32(vec2<f32>(-1283f, -227f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-697f, 1000f)))))))));
    var var_2 = true;
    global2 = func_2();
    var var_3 = _wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(step(var_1.x, _wgslsmith_f_op_f32(ceil(-759f)))));
    return ~u_input.a.zz;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global2.e.x;
    var var_1 = -max(_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(~vec2<i32>(global0[_wgslsmith_index_u32(0u, 29u)], 0i), vec2<i32>(global0[_wgslsmith_index_u32(14915u, 29u)], -15507i) << (u_input.a.zz % vec2<u32>(32u))), vec2<i32>(i32(-1i) * -34837i, _wgslsmith_mod_i32(global0[_wgslsmith_index_u32(u_input.a.x, 29u)], 1i))), -2147483647i);
    global0 = array<i32, 29>();
    global1 = array<Struct_1, 30>();
    var var_2 = ~(~reverseBits(max(func_1(), global2.a.xz)));
    let x = u_input.a;
    s_output = StorageBuffer(-2147483647i, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1000f * -1640f), -1707f)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-183f)), _wgslsmith_f_op_f32(f32(-1f) * -242f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -667f)) + _wgslsmith_f_op_f32(floor(1f))), _wgslsmith_f_op_f32(-283f + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1534f, -874f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1900f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1344f)) - 1f))));
}

