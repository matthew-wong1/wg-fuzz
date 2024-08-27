struct Struct_1 {
    a: vec4<bool>,
    b: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 12>;

var<private> global1: array<vec4<i32>, 26>;

var<private> global2: array<Struct_1, 1>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: Struct_1) -> vec4<f32> {
    global0 = array<Struct_1, 12>();
    let var_0 = firstTrailingBit(reverseBits(abs(_wgslsmith_add_vec3_u32(select(vec3<u32>(u_input.a, u_input.a, 90802u), vec3<u32>(u_input.a, 35375u, 12695u), vec3<bool>(true, true, arg_0.a.x)), vec3<u32>(u_input.a, 4294967295u, u_input.a)))));
    let var_1 = vec3<i32>(_wgslsmith_mod_i32(-1i, 1i), -8066i, 61484i);
    let var_2 = Struct_1(vec4<bool>(all(arg_0.a), arg_0.b < _wgslsmith_f_op_f32(sign(arg_0.b)), true, false), arg_0.b);
    global0 = array<Struct_1, 12>();
    return vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -556f) + _wgslsmith_div_f32(var_2.b, 1500f)), _wgslsmith_div_f32(-110f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(arg_0.b, _wgslsmith_f_op_f32(select(-934f, arg_0.b, var_2.a.x)), true)), var_2.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1239f)) - _wgslsmith_f_op_f32(-arg_0.b))))), var_2.b);
}

fn func_2(arg_0: i32) -> bool {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(819f, -306f, -497f, -663f), vec4<f32>(-220f, 355f, -322f, -1454f)) + _wgslsmith_f_op_vec4_f32(func_3(Struct_1(vec4<bool>(false, false, true, false), 1726f)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(961f, 748f, 1266f, 133f) + vec4<f32>(-1000f, 626f, -459f, -1348f)) - _wgslsmith_f_op_vec4_f32(round(vec4<f32>(234f, 300f, 642f, -527f))))), vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(121f, 588f)))), -2789f, _wgslsmith_f_op_f32(f32(-1f) * -1249f), _wgslsmith_f_op_f32(-2580f - _wgslsmith_f_op_f32(abs(-2263f)))))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-596f - -1096f), _wgslsmith_div_f32(331f, -1147f))), -1916f, _wgslsmith_f_op_f32(trunc(-108f)), _wgslsmith_f_op_f32(f32(-1f) * -791f))));
    global1 = array<vec4<i32>, 26>();
    global1 = array<vec4<i32>, 26>();
    global1 = array<vec4<i32>, 26>();
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -641f);
    return -((_wgslsmith_sub_i32(arg_0, -1i) >> ((u_input.a << (10611u % 32u)) % 32u)) | 1i) == 22706i;
}

fn func_1() -> Struct_1 {
    var var_0 = !select(!vec4<bool>(false, true, true, all(vec3<bool>(true, false, false))), vec4<bool>(!all(vec3<bool>(false, true, true)), true, true, true), select(vec4<bool>(true, all(vec2<bool>(false, false)), all(vec3<bool>(false, true, true)), true), vec4<bool>(true, true, true, true), func_2(~(-8478i))));
    global0 = array<Struct_1, 12>();
    var var_1 = _wgslsmith_f_op_f32(trunc(-418f));
    var var_2 = select(~vec4<u32>(u_input.a, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 15386u), ~vec2<u32>(47618u, u_input.a)), max(max(u_input.a, 25538u), u_input.a), u_input.a), _wgslsmith_sub_vec4_u32(~select(~vec4<u32>(0u, u_input.a, u_input.a, 0u), vec4<u32>(17257u, u_input.a, 0u, u_input.a), !vec4<bool>(true, var_0.x, var_0.x, true)), select(~vec4<u32>(4294967295u, u_input.a, u_input.a, u_input.a), ~(~vec4<u32>(u_input.a, 49490u, u_input.a, 5484u)), func_2(_wgslsmith_sub_i32(115i, 7813i)))), !vec4<bool>(any(var_0.xwy), true, var_0.x, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.a, u_input.a, u_input.a), vec4<u32>(30547u, u_input.a, u_input.a, u_input.a)) < 67955u));
    global2 = array<Struct_1, 1>();
    return Struct_1(!vec4<bool>(true, var_0.x, !select(var_0.x, true, false), all(vec4<bool>(true, false, false, var_0.x)) && var_0.x), -794f);
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: i32, arg_3: bool) -> Struct_1 {
    var var_0 = _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(_wgslsmith_div_vec3_i32(max(select(vec3<i32>(arg_2, -1i, arg_2), vec3<i32>(-1i, arg_2, 0i), false), ~vec3<i32>(-33536i, -60663i, arg_2)), vec3<i32>(-1i, arg_2, 1i)), ~reverseBits(reverseBits(vec3<i32>(arg_2, 0i, arg_2)))), vec3<i32>(abs(arg_2), arg_2, 2147483647i >> (~(~u_input.a) % 32u)));
    return global2[_wgslsmith_index_u32(~(~(~(~1u))), 1u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<u32>(~(~u_input.a), 0u, u_input.a, (_wgslsmith_mult_u32(~u_input.a, ~1u) | 4294967295u) << (u_input.a % 32u));
    global1 = array<vec4<i32>, 26>();
    global0 = array<Struct_1, 12>();
    global0 = array<Struct_1, 12>();
    global1 = array<vec4<i32>, 26>();
    let var_1 = true;
    var var_2 = -378f;
    let var_3 = Struct_1(select(vec4<bool>(var_1, var_1, var_1, var_1), !select(!vec4<bool>(false, var_1, true, true), vec4<bool>(var_1, var_1, var_1, var_1), select(vec4<bool>(var_1, var_1, var_1, true), vec4<bool>(false, true, false, var_1), vec4<bool>(true, false, true, var_1))), true), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -822f), _wgslsmith_f_op_f32(min(-135f, -141f)))), _wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(110f - 231f))), var_1)))));
    var var_4 = func_4(var_3.a.zy, func_1(), _wgslsmith_sub_i32(-85623i, 1i), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_3.b + _wgslsmith_f_op_f32(f32(-1f) * -1190f)))) < -924f);
    let x = u_input.a;
    s_output = StorageBuffer(select(-(vec2<i32>(-1i) * -vec2<i32>(23373i, 13287i)), ~vec2<i32>(select(2147483647i, -21798i, var_1), ~(-1i)), true), min(_wgslsmith_sub_u32(56313u, _wgslsmith_add_u32(4294967295u, var_0.x)), ~u_input.a) << (max(var_0.x, ~countOneBits(0u)) % 32u));
}

