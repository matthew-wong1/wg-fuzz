struct Struct_1 {
    a: f32,
    b: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec4<i32>,
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

var<private> global0: vec3<f32>;

var<private> global1: u32 = 726u;

var<private> global2: vec2<bool> = vec2<bool>(false, false);

var<private> global3: array<vec2<bool>, 4> = array<vec2<bool>, 4>(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec3<i32>, arg_1: f32, arg_2: vec4<i32>, arg_3: Struct_1) -> f32 {
    global1 = u_input.b.x;
    var var_0 = 0u ^ _wgslsmith_sub_u32(4294967295u, ~_wgslsmith_mod_u32(u_input.b.x, _wgslsmith_sub_u32(u_input.b.x, u_input.b.x)));
    var var_1 = vec4<i32>(i32(-1i) * -10214i, u_input.a.x, arg_0.x, 4757i);
    var var_2 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1558f), -1195f), 417f);
    global2 = global3[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(~u_input.b, _wgslsmith_sub_vec2_u32(u_input.b, vec2<u32>(u_input.b.x, 0u)) >> ((vec2<u32>(u_input.b.x, 30326u) & u_input.b) % vec2<u32>(32u))), _wgslsmith_mod_vec2_u32(abs(vec2<u32>(u_input.b.x, 1u)) >> (vec2<u32>(u_input.b.x, u_input.b.x) % vec2<u32>(32u)), vec2<u32>(abs(u_input.b.x), ~21483u)))), 4u)];
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_2.a)));
}

fn func_2() -> bool {
    global3 = array<vec2<bool>, 4>();
    global3 = array<vec2<bool>, 4>();
    let var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(max(-289f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_3(vec3<i32>(u_input.a.x, u_input.c.x, u_input.c.x), global0.x, vec4<i32>(u_input.a.x, u_input.c.x, -1i, u_input.a.x), Struct_1(-109f, -1957f))), _wgslsmith_f_op_f32(global0.x - 1070f), -177f <= global0.x)))), global0.x));
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, -231f, 118f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, -184f, global0.x))))))) * _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, -242f, -763f) - vec3<f32>(var_0.x, 205f, global0.x))))))));
    let var_1 = Struct_1(-1353f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(-839f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_3(~u_input.a.yyz, _wgslsmith_div_f32(-807f, global0.x), max(u_input.a, vec4<i32>(10589i, u_input.c.x, u_input.c.x, -16089i)), Struct_1(357f, -846f)))))));
    return global2.x;
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(global0.x))));
    global2 = select(vec2<bool>(false, global2.x), select(vec2<bool>(func_2(), global2.x | any(global3[_wgslsmith_index_u32(26029u, 4u)])), vec2<bool>(any(!vec4<bool>(global2.x, true, global2.x, false)), u_input.a.x != u_input.a.x), ~u_input.c.x > ~(i32(-1i) * -46095i)), global3[_wgslsmith_index_u32(~(4294967295u << (_wgslsmith_dot_vec3_u32(vec3<u32>(69099u, 28190u, 1u), vec3<u32>(u_input.b.x, 28281u, u_input.b.x)) % 32u)), 4u)]);
    let var_1 = u_input.b;
    var var_2 = Struct_1(var_0, -1388f);
    let var_3 = Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(var_0, _wgslsmith_f_op_f32(step(var_2.a, _wgslsmith_div_f32(770f, global0.x))), !(388f > var_2.a))))), global0.x);
    return Struct_1(var_3.a, global0.x);
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1, arg_3: bool) -> Struct_1 {
    global3 = array<vec2<bool>, 4>();
    global2 = vec2<bool>(false, true);
    let var_0 = select(vec2<u32>(~1u, firstLeadingBit(144u)) ^ ~vec2<u32>(u_input.b.x & 46024u, 8628u), vec2<u32>(~_wgslsmith_mod_u32(_wgslsmith_div_u32(u_input.b.x, u_input.b.x), ~u_input.b.x), _wgslsmith_mod_u32(u_input.b.x, ~0u)), global2.x);
    var var_1 = arg_2;
    let var_2 = _wgslsmith_f_op_f32(584f + arg_0.b);
    return arg_0;
}

fn func_5(arg_0: f32, arg_1: vec3<f32>, arg_2: Struct_1, arg_3: f32) -> Struct_1 {
    let var_0 = u_input.c.x;
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(arg_1)));
    global0 = vec3<f32>(_wgslsmith_f_op_f32(round(arg_0)), -658f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.b + _wgslsmith_f_op_f32(148f - _wgslsmith_f_op_f32(ceil(arg_0)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) + _wgslsmith_f_op_f32(-1778f + -149f)))));
    global2 = !global3[_wgslsmith_index_u32(41443u, 4u)];
    var var_1 = all(!select(select(vec3<bool>(false, global2.x, false), vec3<bool>(global2.x, global2.x, false), select(vec3<bool>(true, true, global2.x), vec3<bool>(global2.x, true, global2.x), false)), select(vec3<bool>(true, global2.x, global2.x), select(vec3<bool>(false, global2.x, global2.x), vec3<bool>(global2.x, global2.x, global2.x), vec3<bool>(global2.x, global2.x, global2.x)), all(vec4<bool>(global2.x, global2.x, global2.x, false))), vec3<bool>(all(vec4<bool>(false, false, global2.x, global2.x)), all(vec4<bool>(global2.x, global2.x, global2.x, global2.x)), true)));
    return func_1();
}

fn func_6(arg_0: vec3<i32>, arg_1: bool, arg_2: vec3<f32>, arg_3: Struct_1) -> Struct_1 {
    return arg_3;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0.x;
    var var_1 = func_6(u_input.c.zxx, any(vec3<bool>(global2.x, all(vec4<bool>(true, false, global2.x, global2.x)), true)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-266f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1241f, global0.x)), _wgslsmith_f_op_f32(trunc(499f)))), func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(260f + -194f)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, global0.x, global0.x) * vec3<f32>(global0.x, 198f, global0.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, global0.x, global0.x) - vec3<f32>(global0.x, -221f, global0.x)))), func_4(Struct_1(-941f, 889f), global2.x, func_1(), true), _wgslsmith_f_op_f32(global0.x + global0.x)));
    var var_2 = _wgslsmith_mult_vec2_u32(firstLeadingBit(u_input.b) << (abs(u_input.b) % vec2<u32>(32u)), ~countOneBits(~(~u_input.b)));
    global3 = array<vec2<bool>, 4>();
    let var_3 = Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.x), 1156f) - _wgslsmith_f_op_f32(-var_1.b)), 982f, global2.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(968f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x + 254f) - _wgslsmith_f_op_f32(-var_1.b))))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c.x, firstTrailingBit(u_input.b.x));
}

