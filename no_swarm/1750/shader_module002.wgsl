struct Struct_1 {
    a: vec3<u32>,
    b: vec2<i32>,
    c: u32,
    d: i32,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: f32,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: vec4<bool>,
}

struct Struct_4 {
    a: bool,
    b: Struct_3,
    c: vec4<i32>,
    d: f32,
}

struct Struct_5 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5;

var<private> global1: u32;

var<private> global2: array<Struct_5, 1> = array<Struct_5, 1>(Struct_5(vec3<f32>(493f, -376f, -936f)));

var<private> global3: array<f32, 13>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: Struct_4, arg_3: i32) -> vec3<u32> {
    global0 = Struct_5(vec3<f32>(_wgslsmith_f_op_f32(max(-711f, arg_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(245f)))), _wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    global0 = Struct_5(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(805f, -468f, 1083f), global0.a)), _wgslsmith_div_vec3_f32(global0.a, vec3<f32>(global3[_wgslsmith_index_u32(arg_2.b.b.c, 13u)], -1706f, -125f)), arg_2.d != -900f)))), global0.a)));
    global2 = array<Struct_5, 1>();
    let var_0 = true;
    global3 = array<f32, 13>();
    return vec3<u32>(arg_1.a.x, 99u, reverseBits(~0u));
}

fn func_2(arg_0: Struct_5) -> vec3<u32> {
    var var_0 = global0.a.x;
    let var_1 = Struct_5(global0.a);
    let var_2 = ~firstLeadingBit(vec4<i32>(-1i, ~(u_input.a | u_input.a), countOneBits(~u_input.a), 18452i));
    var var_3 = Struct_2(Struct_1(~func_3(var_1.a.x, Struct_1(vec3<u32>(73034u, 0u, 39082u), var_2.yz, 4590u, -1i, 1793f), Struct_4(true, Struct_3(true, Struct_1(vec3<u32>(62715u, 35897u, 50523u), var_2.ww, 1u, 21323i, global0.a.x), vec4<bool>(true, false, false, false)), vec4<i32>(var_2.x, var_2.x, -2147483647i, -19890i), 478f), -27610i), min(var_2.zy, vec2<i32>(1i, 1i)), _wgslsmith_add_u32(~(~34024u), 26164u), _wgslsmith_dot_vec2_i32(var_2.wy & -vec2<i32>(0i, u_input.a), -countOneBits(var_2.zz)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1929f, _wgslsmith_f_op_f32(abs(1000f))))), Struct_1(~countOneBits(~vec3<u32>(0u, 1u, 721u)), var_2.xw, countOneBits(1u), var_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.x))), Struct_1(vec3<u32>(38874u, _wgslsmith_clamp_u32(_wgslsmith_add_u32(0u, 66190u), 0u, 30181u), 1u), ~(-var_2.xy), 4294967295u, var_2.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(arg_0.a.x))))), 648f);
    let var_4 = Struct_1(select(reverseBits(var_3.a.a), ~(~vec3<u32>(4294967295u, 1u, 0u)) | _wgslsmith_sub_vec3_u32(~var_3.c.a, vec3<u32>(29887u, var_3.a.a.x, var_3.c.a.x)), any(select(select(vec2<bool>(false, false), vec2<bool>(true, true), true), vec2<bool>(true, false), true))), var_3.c.b, ~_wgslsmith_mod_u32(2430u, firstTrailingBit(var_3.a.c)), 1i, _wgslsmith_f_op_f32(-1097f - -390f));
    return var_3.c.a | _wgslsmith_sub_vec3_u32(firstLeadingBit(countOneBits(reverseBits(var_3.a.a))), ~vec3<u32>(var_3.b.a.x, var_4.c, ~var_4.c));
}

fn func_1(arg_0: vec3<u32>) -> i32 {
    let var_0 = Struct_1(~abs(~func_2(global2[_wgslsmith_index_u32(arg_0.x, 1u)])), vec2<i32>(1i, -1i), 4294967295u, 2147483647i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a.x) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-473f + global0.a.x))) + -1721f));
    var var_1 = Struct_3(all(vec2<bool>(all(vec3<bool>(false, true, false)) | true, true)), Struct_1(vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.x, 8716u), var_0.a.yx), 78959u, min(arg_0.x, _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.c, arg_0.x, arg_0.x, 1u), vec4<u32>(var_0.c, 79049u, arg_0.x, 4294967295u)))), select(vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, -62548i), var_0.b), -2147483647i << (var_0.a.x % 32u)), var_0.b, true), _wgslsmith_dot_vec2_u32(~arg_0.yx, select(vec2<u32>(1u, var_0.a.x), _wgslsmith_sub_vec2_u32(vec2<u32>(arg_0.x, arg_0.x), vec2<u32>(1u, 50986u)), true)), -(var_0.b.x & _wgslsmith_sub_i32(var_0.d, -47177i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-831f, _wgslsmith_div_f32(global0.a.x, 762f))) + global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(arg_0.x, var_0.c), 13u)])), vec4<bool>(!(arg_0.x > (937u >> (arg_0.x % 32u))), any(!select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, false))), true, any(vec3<bool>(true, true, true))));
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -1379f);
    var_1 = Struct_3(false, Struct_1(vec3<u32>(71359u, _wgslsmith_sub_u32(func_2(Struct_5(global0.a)).x, var_0.a.x), 4294967295u), (var_0.b & vec2<i32>(var_1.b.d, var_1.b.b.x)) >> (~(~vec2<u32>(arg_0.x, 17647u)) % vec2<u32>(32u)), 6719u, -2147483647i, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(155f, global3[_wgslsmith_index_u32(var_0.a.x, 13u)]))))), select(vec4<bool>(true != any(vec2<bool>(false, var_1.a)), u_input.a < -15474i, -var_1.b.d >= var_0.d, !var_1.c.x || var_1.c.x), vec4<bool>(!var_1.c.x, var_1.c.x, var_1.c.x, var_1.c.x), var_1.c));
    var var_3 = Struct_5(global0.a);
    return -1i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~vec2<i32>(func_1(_wgslsmith_clamp_vec3_u32(reverseBits(vec3<u32>(9435u, 1u, 0u)), vec3<u32>(1u, 1u, 1u), min(vec3<u32>(4453u, 0u, 29823u), vec3<u32>(24443u, 0u, 1u)))), firstLeadingBit(u_input.a));
    global3 = array<f32, 13>();
    var var_1 = vec2<i32>(reverseBits(31967i), 34179i);
    var var_2 = !(!vec3<bool>(true, true, !any(vec2<bool>(true, true))));
    let var_3 = 2139f;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.x ^ -var_0.x, 1u);
}

