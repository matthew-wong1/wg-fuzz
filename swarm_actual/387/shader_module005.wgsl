struct Struct_1 {
    a: vec3<f32>,
    b: vec3<f32>,
    c: vec4<u32>,
    d: u32,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct Struct_3 {
    a: vec4<f32>,
    b: f32,
    c: vec4<i32>,
    d: Struct_1,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec2<i32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: Struct_3;

var<private> global2: Struct_3;

var<private> global3: array<vec2<f32>, 22> = array<vec2<f32>, 22>(vec2<f32>(1405f, 651f), vec2<f32>(-1240f, 1135f), vec2<f32>(-523f, 529f), vec2<f32>(-1000f, -1000f), vec2<f32>(355f, 417f), vec2<f32>(1672f, -1000f), vec2<f32>(-328f, 509f), vec2<f32>(-847f, 301f), vec2<f32>(-543f, -1000f), vec2<f32>(1963f, -1216f), vec2<f32>(-606f, 524f), vec2<f32>(1036f, -570f), vec2<f32>(-760f, 653f), vec2<f32>(-566f, 1395f), vec2<f32>(-632f, 1266f), vec2<f32>(449f, -307f), vec2<f32>(-1000f, -706f), vec2<f32>(350f, -189f), vec2<f32>(131f, 1000f), vec2<f32>(-1594f, -796f), vec2<f32>(964f, -1000f), vec2<f32>(-1000f, -668f));

var<private> global4: array<bool, 32>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec3<u32>, arg_1: vec4<u32>, arg_2: vec3<f32>) -> vec3<i32> {
    var var_0 = true;
    global4 = array<bool, 32>();
    var var_1 = global1.c.zw;
    global1 = Struct_3(global2.a, _wgslsmith_f_op_f32(f32(-1f) * -1235f), vec4<i32>(_wgslsmith_dot_vec3_i32(~(-vec3<i32>(1i, global2.c.x, global1.c.x)), _wgslsmith_clamp_vec3_i32(global1.c.xzy, ~vec3<i32>(var_1.x, 2147483647i, 2147483647i), vec3<i32>(31552i, 41024i, 15193i))), 0i, firstLeadingBit(_wgslsmith_sub_i32(var_1.x, 1i) | global2.c.x), min(u_input.b.x, global0.c.x | -34748i)), global2.d, min(global1.e, _wgslsmith_clamp_vec3_u32(min(select(global2.d.c.xxy, arg_0, vec3<bool>(global0.d.e, true, global1.d.e)), ~vec3<u32>(global0.d.d, 22738u, 1u)), _wgslsmith_sub_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(0u, global0.d.c.x, 43012u), global1.d.c.wxy), reverseBits(global2.e)), global1.d.c.yyz)));
    let var_2 = select(vec4<bool>(!select(any(vec4<bool>(true, true, true, global4[_wgslsmith_index_u32(1u, 32u)])), global0.d.e, false), global0.e.x >= (4294967295u << (_wgslsmith_mult_u32(0u, global0.e.x) % 32u)), true, _wgslsmith_dot_vec2_u32(vec2<u32>(global1.d.c.x, global0.e.x), vec2<u32>(global2.d.c.x, 23805u)) == global2.d.c.x), !(!select(!vec4<bool>(global0.d.e, true, false, global2.d.e), vec4<bool>(true, true, true, true), select(vec4<bool>(global2.d.e, false, false, true), vec4<bool>(global0.d.e, global4[_wgslsmith_index_u32(arg_1.x, 32u)], true, global0.d.e), true))), false);
    return ~select(u_input.a.zyw, firstLeadingBit(vec3<i32>(1i, abs(global2.c.x), global2.c.x)), !select(!var_2.xzx, var_2.zww, !var_2.wyx));
}

fn func_2(arg_0: bool) -> Struct_3 {
    global4 = array<bool, 32>();
    var var_0 = 4294967295u < global0.d.c.x;
    global1 = Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global1.a - global1.a) - global2.a), global1.a))), _wgslsmith_f_op_f32(f32(-1f) * -827f), vec4<i32>(firstTrailingBit(-_wgslsmith_sub_i32(u_input.a.x, global0.c.x)), countOneBits(abs(-28081i)), _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, -3696i, global0.c.x), global2.c.yww), 3242i >> (global1.d.d % 32u), reverseBits(global2.c.x)), global2.c.zyw), _wgslsmith_dot_vec3_i32(func_3(vec3<u32>(0u, global1.e.x, 0u), ~global2.d.c, _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.a.x, -168f, global0.b) * global0.a.xyw)), reverseBits(global1.c.xzw))), global1.d, reverseBits(~vec3<u32>(global2.d.c.x, select(0u, global0.d.c.x, global2.d.e), min(24652u, 1u))));
    let var_1 = vec3<u32>(3521u, 4294967295u, 44598u);
    var var_2 = vec2<u32>(_wgslsmith_mult_u32(abs(0u), _wgslsmith_mod_u32(~28297u, global2.e.x)), _wgslsmith_add_u32(min(_wgslsmith_dot_vec2_u32(var_1.xz, global1.e.zx), ~1u), global1.e.x)) | (countOneBits(global2.d.c.yz) ^ _wgslsmith_mult_vec2_u32(global2.e.yz, ~global1.d.c.xy));
    return Struct_3(_wgslsmith_f_op_vec4_f32(global0.a + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global2.b, global0.a.x, global2.b, -457f), global0.a, global4[_wgslsmith_index_u32(global0.e.x, 32u)]))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(global1.a * vec4<f32>(133f, 190f, global0.b, global0.a.x)))), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, global0.c.x), vec2<i32>(global2.c.x, -1i)) >= 92151i))), global0.d.b.x, firstTrailingBit(select(vec4<i32>(-1i) * -global0.c, vec4<i32>(2147483647i, 7703i, global2.c.x, ~u_input.c), select(select(vec4<bool>(global4[_wgslsmith_index_u32(0u, 32u)], true, global2.d.e, global2.d.e), vec4<bool>(true, true, global1.d.e, true), vec4<bool>(global4[_wgslsmith_index_u32(var_1.x, 32u)], global4[_wgslsmith_index_u32(0u, 32u)], false, arg_0)), select(vec4<bool>(global0.d.e, global0.d.e, true, global1.d.e), vec4<bool>(true, global0.d.e, true, true), vec4<bool>(false, global0.d.e, true, false)), select(vec4<bool>(global0.d.e, global2.d.e, true, global0.d.e), vec4<bool>(global1.d.e, true, false, global4[_wgslsmith_index_u32(44825u, 32u)]), false)))), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.d.a.x, 461f, global2.a.x))) * _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(global2.d.a + global1.a.yzz), global1.a.wyw))), vec3<f32>(-672f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a.x) * _wgslsmith_f_op_f32(f32(-1f) * -166f)), global1.a.x), ~vec4<u32>(global1.d.c.x | global1.e.x, ~49205u, ~4294967295u, ~global0.d.c.x), var_1.x, !(!select(global0.d.e, false, true))), global2.d.c.yyx);
}

fn func_1(arg_0: i32, arg_1: bool, arg_2: vec4<u32>) -> Struct_2 {
    var var_0 = func_2(-885f <= global1.b);
    var var_1 = _wgslsmith_div_i32(_wgslsmith_div_i32(~(-4770i), -reverseBits(u_input.a.x)), 1i);
    var_0 = func_2(~(~(~global1.e.x)) < 17858u);
    var var_2 = -(~func_2(true).c.x >> (~83555u % 32u));
    let var_3 = abs(~global0.d.c.zw & _wgslsmith_mult_vec2_u32(global1.e.zy, global0.d.c.xy));
    return Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(global1.d.b.x, var_0.a.x), _wgslsmith_f_op_f32(round(global2.a.x)), 349f)), global1.a.xwz, vec4<u32>(arg_2.x, ~27662u, 4439u, _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(global0.d.c.xww, vec3<u32>(4294967295u, global0.d.d, 0u)), abs(vec3<u32>(var_0.e.x, 1u, global2.d.c.x)))), _wgslsmith_sub_u32(~3250u & _wgslsmith_dot_vec4_u32(global0.d.c, global2.d.c), var_3.x), global0.d.e), -2147483647i);
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: Struct_2, arg_3: vec3<u32>) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global2.d.b.x)));
    var var_1 = ~_wgslsmith_mult_u32(~4294967295u, _wgslsmith_dot_vec4_u32(~vec4<u32>(global1.d.d, arg_2.a.c.x, 1u, arg_3.x), firstLeadingBit(firstTrailingBit(vec4<u32>(16781u, 1u, 0u, 0u)))));
    var_1 = _wgslsmith_mod_u32(arg_2.a.d, global0.d.d);
    return _wgslsmith_f_op_f32(func_2(true).d.a.x + _wgslsmith_div_f32(arg_0.a.x, _wgslsmith_f_op_f32(arg_0.a.x - -134f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1881f)), global2.d.b.x)))), 1083f);
    global3 = array<vec2<f32>, 22>();
    global3 = array<vec2<f32>, 22>();
    global4 = array<bool, 32>();
    var var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.d.a.x, global0.d.b.x) - 1905f) - -1000f), _wgslsmith_f_op_f32(func_4(Struct_1(_wgslsmith_f_op_vec3_f32(-global0.a.zyw), _wgslsmith_f_op_vec3_f32(abs(global0.a.xyw)), firstTrailingBit(vec4<u32>(57718u, global2.d.d, 4294967295u, global1.e.x)), global2.d.d, global0.d.e | false), any(!vec4<bool>(global1.d.e, true, false, false)), func_1(~46389i, true, vec4<u32>(66271u, 1u, global1.e.x, 1u)), global0.d.c.wxz)))));
    var var_2 = ~global0.e;
    let x = u_input.a;
    s_output = StorageBuffer(global1.d.c.yzy, ~(-countOneBits(u_input.b)), _wgslsmith_clamp_vec2_i32(global2.c.wz, vec2<i32>(_wgslsmith_clamp_i32(0i, u_input.c, 1i), -firstTrailingBit(2147483647i)), min(-u_input.b.xx, ~func_2(true).c.wx)), vec4<u32>(~select(global2.e.x, func_2(false).e.x, global1.d.e), ~global2.d.c.x, ~_wgslsmith_mult_u32(0u, 41924u), 1u));
}

