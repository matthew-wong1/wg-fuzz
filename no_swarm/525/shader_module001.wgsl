struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 1>;

var<private> global1: Struct_2 = Struct_2(vec4<bool>(true, true, true, true));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: bool, arg_1: vec4<f32>) -> Struct_1 {
    let var_0 = vec2<u32>(abs(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(4294967295u, u_input.a, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 1u)], 1u)], 1u)], u_input.a)), vec4<u32>(~0u, global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(20248u, u_input.a, 1u), 1u)], global0[_wgslsmith_index_u32(min(2575u, 0u), 1u)], 0u))), 1u);
    var var_1 = !(!(!(!(!global1.a.wzz))));
    global1 = Struct_2(!vec4<bool>(false, arg_0, any(global1.a.ww), any(global1.a)));
    var_1 = vec3<bool>(!arg_0, false & global1.a.x, any(vec2<bool>(any(!global1.a.zxy), min(4294967295u, global0[_wgslsmith_index_u32(u_input.a, 1u)]) < 1u)));
    var var_2 = 0u;
    return Struct_1(1000f);
}

fn func_1(arg_0: u32, arg_1: i32, arg_2: vec3<u32>, arg_3: f32) -> Struct_3 {
    var var_0 = func_2(true, vec4<f32>(arg_3, -1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-983f * 610f)) + _wgslsmith_f_op_f32(1f + arg_3)), _wgslsmith_f_op_f32(f32(-1f) * -1235f)));
    var var_1 = vec4<u32>(~1u, firstTrailingBit(~25766u) & ~countOneBits(~u_input.a), abs(1u), arg_0);
    let var_2 = i32(-1i) * -44542i;
    return Struct_3(Struct_2(global1.a), Struct_2(global1.a));
}

fn func_3(arg_0: i32, arg_1: vec3<f32>, arg_2: Struct_1, arg_3: bool) -> Struct_3 {
    global0 = array<u32, 1>();
    let var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.a, arg_2.a, arg_1.x) + arg_1)), vec3<f32>(_wgslsmith_f_op_f32(arg_1.x * arg_2.a), arg_1.x, _wgslsmith_f_op_f32(abs(arg_2.a))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(arg_1.x * arg_2.a), _wgslsmith_f_op_f32(step(arg_2.a, arg_2.a)), arg_1.x) * vec3<f32>(-868f, _wgslsmith_f_op_f32(arg_2.a + -618f), -731f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(233f, arg_2.a, arg_2.a) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(715f, -866f, -579f)) * _wgslsmith_f_op_vec3_f32(-arg_1)))), !func_1(43739u & max(0u, global0[_wgslsmith_index_u32(76804u, 1u)]), min(arg_0, _wgslsmith_mult_i32(11845i, u_input.b)), vec3<u32>(u_input.a, 4294967295u, u_input.a | global0[_wgslsmith_index_u32(110626u, 1u)]), _wgslsmith_f_op_f32(1f - 861f)).a.a.xzx));
    return Struct_3(func_1(63816u, firstLeadingBit(_wgslsmith_mod_i32(arg_0, min(-1i, 35859i))), ~vec3<u32>(~4294967295u, global0[_wgslsmith_index_u32(u_input.a, 1u)] >> (u_input.a % 32u), 4294967295u & u_input.a), arg_2.a).a, func_1(4294967295u, _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(countOneBits(vec2<i32>(1i, 0i)), -vec2<i32>(u_input.b, arg_0), vec2<i32>(-2147483647i, arg_0) >> (vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u))), -select(vec2<i32>(arg_0, -2147483647i), vec2<i32>(-61534i, -3575i), true)), vec3<u32>(_wgslsmith_div_u32(27957u, firstLeadingBit(u_input.a)), firstLeadingBit(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4834u, 1u)], 1u)]), ~u_input.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_2.a))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -146f)))).b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(_wgslsmith_mod_u32(~global0[_wgslsmith_index_u32(u_input.a, 1u)], 5347u), u_input.b, _wgslsmith_clamp_vec3_u32(~(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(39083u, 1u)], 1u)], u_input.a), vec3<u32>(36681u, u_input.a, global0[_wgslsmith_index_u32(0u, 1u)])) >> (~vec3<u32>(41348u, u_input.a, 44109u) % vec3<u32>(32u))), select(vec3<u32>(~4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(0u, 1u)], u_input.a, 0u), vec3<u32>(34538u, 4294967295u, 1u)), global0[_wgslsmith_index_u32(~u_input.a, 1u)]), select(~vec3<u32>(0u, 32955u, 43547u), vec3<u32>(65428u, u_input.a, 111227u) & vec3<u32>(13993u, global0[_wgslsmith_index_u32(28901u, 1u)], 5293u), !global1.a.zyz), global1.a.x), firstTrailingBit(~(~vec3<u32>(1u, 0u, global0[_wgslsmith_index_u32(0u, 1u)])))), 1308f);
    global1 = func_1(abs(global0[_wgslsmith_index_u32(9800u, 1u)]), -_wgslsmith_mult_i32(1i, _wgslsmith_sub_i32(-u_input.b, -u_input.b)), ~(max(reverseBits(vec3<u32>(36375u, global0[_wgslsmith_index_u32(u_input.a, 1u)], u_input.a)), ~vec3<u32>(u_input.a, 1u, 18841u)) >> (~abs(vec3<u32>(18357u, 4294967295u, global0[_wgslsmith_index_u32(55101u, 1u)])) % vec3<u32>(32u))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(1000f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(-1093f)), -416f)))).a;
    let var_1 = func_3(u_input.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-790f, -486f, -799f) * vec3<f32>(429f, 724f, 199f))))), func_2(any(vec4<bool>(true, global1.a.x, var_0.b.a.x, false)) | any(!vec3<bool>(global1.a.x, false, global1.a.x)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(vec4<f32>(1000f, -1200f, 2155f, 777f), vec4<f32>(-757f, -196f, 1240f, -128f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(388f, -2954f, 2672f, -684f), vec4<f32>(3089f, -350f, -400f, -192f), vec4<bool>(global1.a.x, false, false, var_0.a.a.x)))))))), global1.a.x);
    let var_2 = !vec2<bool>(!all(var_0.a.a.xyy), !(!(!var_0.a.a.x)));
    var var_3 = var_1.b;
    let var_4 = var_1;
    var var_5 = Struct_1(_wgslsmith_f_op_f32(abs(824f)));
    let x = u_input.a;
    s_output = StorageBuffer(~abs(_wgslsmith_clamp_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 1u)], 1u)], u_input.a, global0[_wgslsmith_index_u32(48954u, 1u)]), vec3<u32>(u_input.a, 34265u, global0[_wgslsmith_index_u32(1u, 1u)]), vec3<u32>(global0[_wgslsmith_index_u32(u_input.a, 1u)], u_input.a, 0u))) & min(vec3<u32>(~1151u, global0[_wgslsmith_index_u32(11691u, 1u)], _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(4294967295u, global0[_wgslsmith_index_u32(u_input.a, 1u)]))), vec3<u32>(u_input.a, ~0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 1u)], 1u)], 1u)] | 6535u)), 1u, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_5.a, var_5.a, var_5.a, 247f)))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_5.a, var_5.a, var_5.a, var_5.a)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_5.a, -846f, -1194f, var_5.a) - vec4<f32>(839f, -783f, var_5.a, var_5.a)))))));
}

