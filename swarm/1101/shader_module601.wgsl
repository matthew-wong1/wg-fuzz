struct Struct_1 {
    a: i32,
    b: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<bool, 29>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: f32, arg_1: vec4<i32>) -> vec2<bool> {
    var var_0 = all(!select(vec4<bool>(any(vec2<bool>(false, global1[_wgslsmith_index_u32(global0.b, 29u)])), global1[_wgslsmith_index_u32(u_input.c.x, 29u)], arg_1.x <= 0i, true), vec4<bool>(1008f <= arg_0, true, !global1[_wgslsmith_index_u32(u_input.b, 29u)], any(vec3<bool>(false, global1[_wgslsmith_index_u32(0u, 29u)], false))), false & any(vec2<bool>(false, global1[_wgslsmith_index_u32(u_input.c.x, 29u)]))));
    let var_1 = -1164f;
    global1 = array<bool, 29>();
    global1 = array<bool, 29>();
    global0 = Struct_1(~select(~(1i << (global0.b % 32u)), max(-global0.a, -global0.a), global1[_wgslsmith_index_u32(~global0.b, 29u)]), 0u);
    return vec2<bool>(_wgslsmith_div_u32(~_wgslsmith_div_u32(0u, global0.b), select(41891u, firstLeadingBit(u_input.c.x), any(vec3<bool>(global1[_wgslsmith_index_u32(u_input.b, 29u)], true, global1[_wgslsmith_index_u32(u_input.c.x, 29u)])))) > select(global0.b, _wgslsmith_add_u32(9528u, 3939u), all(!vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 29u)], true))), all(!(!vec3<bool>(global1[_wgslsmith_index_u32(global0.b, 29u)], global1[_wgslsmith_index_u32(52412u, 29u)], global1[_wgslsmith_index_u32(6375u, 29u)]))));
}

fn func_2(arg_0: vec3<u32>) -> Struct_1 {
    let var_0 = false;
    var var_1 = select(arg_0.yz, u_input.c, func_3(_wgslsmith_f_op_f32(-203f + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(-441f, -1144f)), 1000f))), u_input.d));
    let var_2 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1385f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(100f, 761f, global1[_wgslsmith_index_u32(arg_0.x, 29u)]))), var_0 | false))), 994f));
    global1 = array<bool, 29>();
    let var_3 = u_input.d.x;
    return Struct_1(max(var_3, -(~var_3)) | u_input.a, arg_0.x);
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: vec2<bool>) -> vec2<u32> {
    global1 = array<bool, 29>();
    global1 = array<bool, 29>();
    global0 = Struct_1(select(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i & global0.a, global0.a), -vec2<i32>(u_input.d.x, arg_1.a) ^ u_input.d.zx), reverseBits(func_2(_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, 1u, 67448u), vec3<u32>(u_input.c.x, 8722u, u_input.b))).a), !any(vec4<bool>(true, false, arg_2.x, global1[_wgslsmith_index_u32(global0.b, 29u)]))), _wgslsmith_div_u32(arg_1.b, arg_1.b));
    global1 = array<bool, 29>();
    global1 = array<bool, 29>();
    return ~min(~u_input.c, ~vec2<u32>(u_input.b, u_input.b | arg_0));
}

fn func_5(arg_0: vec2<u32>, arg_1: i32, arg_2: Struct_1, arg_3: f32) -> Struct_1 {
    global1 = array<bool, 29>();
    global1 = array<bool, 29>();
    global1 = array<bool, 29>();
    let var_0 = func_2(vec3<u32>(4834u, u_input.c.x, abs(global0.b)));
    global0 = var_0;
    return func_2(vec3<u32>(1u & global0.b, select(73661u, 15205u, global1[_wgslsmith_index_u32(~4294967295u, 29u)]), arg_0.x) ^ ~reverseBits(vec3<u32>(arg_0.x, arg_0.x, 4294967295u)));
}

fn func_1() -> u32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1628f, 435f)) * _wgslsmith_div_f32(-1981f, 587f)) + -1086f), _wgslsmith_f_op_f32(f32(-1f) * -1000f))));
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-157f, 301f, -131f) * vec3<f32>(-415f, -1066f, -592f))) - vec3<f32>(_wgslsmith_f_op_f32(floor(-471f)), _wgslsmith_f_op_f32(f32(-1f) * -591f), 1328f)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1036f, -1844f, 722f), _wgslsmith_f_op_vec3_f32(vec3<f32>(538f, 449f, 214f) + vec3<f32>(604f, -1655f, 1000f)), true)))) + _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-102f, 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -570f))))));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-558f * 900f)));
    global1 = array<bool, 29>();
    let var_2 = func_5(func_4(u_input.c.x << (32985u % 32u), func_2(~(vec3<u32>(0u, 23993u, 1u) ^ vec3<u32>(u_input.c.x, u_input.c.x, 52192u))), vec2<bool>(!global1[_wgslsmith_index_u32(0u, 29u)], false)), u_input.d.x, func_2(vec3<u32>((global0.b ^ global0.b) | reverseBits(0u), 2490u, 39103u & ~global0.b)), 1929f);
    return var_2.b;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<bool, 29>();
    let var_0 = 17032u;
    var var_1 = !(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(func_1(), func_5(vec2<u32>(u_input.b, 4294967295u) >> (u_input.c % vec2<u32>(32u)), func_5(vec2<u32>(4294967295u, 1u), global0.a, Struct_1(global0.a, var_0), -385f).a, func_2(vec3<u32>(u_input.b, u_input.b, u_input.c.x)), _wgslsmith_f_op_f32(479f * 611f)).b), 29u)] | !global1[_wgslsmith_index_u32(func_5(u_input.c, u_input.a, Struct_1(0i, 19993u), -380f).b & 15167u, 29u)]);
    let var_2 = func_2(vec3<u32>(~_wgslsmith_add_u32(27290u, global0.b), func_5(u_input.c & u_input.c, countOneBits(global0.a), Struct_1(global0.a, 0u), 370f).b, 0u) << (_wgslsmith_mult_vec3_u32(select(vec3<u32>(0u, global0.b, 35887u), ~vec3<u32>(var_0, 1u, 0u), any(vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 29u)], true))), ~vec3<u32>(66092u, global0.b, global0.b) ^ select(vec3<u32>(1u, var_0, 46256u), vec3<u32>(58701u, global0.b, global0.b), false)) % vec3<u32>(32u)));
    let var_3 = vec2<bool>(global1[_wgslsmith_index_u32(max(_wgslsmith_sub_u32(_wgslsmith_add_u32(~var_2.b, global0.b), ~4294967295u), _wgslsmith_sub_u32(var_0, 1u)), 29u)], true);
    var_1 = false;
    var var_4 = abs(~countOneBits(firstTrailingBit(_wgslsmith_mod_vec4_i32(u_input.d, u_input.d))));
    var var_5 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1054f, -1000f, 191f))) * vec3<f32>(1f, 1f, 1f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(266f, 661f, -575f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1326f, -600f, -1557f))))) - vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1062f * _wgslsmith_f_op_f32(round(1112f)))), -896f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1312f))))));
    var var_6 = vec4<bool>(false, any(select(!vec3<bool>(global1[_wgslsmith_index_u32(u_input.b, 29u)], false, false), vec3<bool>(!global1[_wgslsmith_index_u32(0u, 29u)], true && global1[_wgslsmith_index_u32(4294967295u, 29u)], global1[_wgslsmith_index_u32(~104854u, 29u)]), var_3.x)), !global1[_wgslsmith_index_u32(var_0, 29u)], false);
    let x = u_input.a;
    s_output = StorageBuffer(0i, _wgslsmith_f_op_vec2_f32(trunc(var_5.zx)));
}

