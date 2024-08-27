struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: bool,
}

struct Struct_3 {
    a: u32,
    b: vec2<i32>,
    c: Struct_1,
    d: f32,
    e: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: vec2<u32>,
    c: u32,
    d: f32,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(-156f);

var<private> global1: Struct_2;

var<private> global2: array<i32, 7> = array<i32, 7>(i32(-2147483648), -1i, 17268i, 3791i, -9172i, 1i, -25306i);

var<private> global3: f32 = -1000f;

var<private> global4: Struct_3 = Struct_3(0u, vec2<i32>(i32(-2147483648), 0i), Struct_1(-1000f), 283f, Struct_2(Struct_1(-1763f), vec2<bool>(false, true), true));

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

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_3, arg_2: vec3<bool>, arg_3: Struct_1) -> vec3<u32> {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1463f);
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global1.a.a, -201f, 518f, arg_3.a))) + vec4<f32>(257f, arg_0.d, arg_0.d, arg_1.c.a)))) - vec4<f32>(_wgslsmith_f_op_f32(-arg_0.e), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.e)), _wgslsmith_f_op_f32(-978f + -1935f), arg_3.a)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1011f, global1.a.a, global1.a.a, arg_1.e.a.a), vec4<f32>(arg_3.a, global4.e.a.a, global4.e.a.a, arg_1.d), vec4<bool>(true, arg_2.x, global1.c, false))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-611f, 1528f, 197f, arg_0.e) * vec4<f32>(-965f, global0.a, arg_1.d, arg_3.a))) - vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -461f), 699f, _wgslsmith_f_op_f32(select(global1.a.a, global4.c.a, global4.e.b.x)), _wgslsmith_f_op_f32(374f + 994f)))));
    var var_2 = global4.b.x | _wgslsmith_mod_i32(min(26250i, -global4.b.x), reverseBits(arg_1.b.x));
    let var_3 = var_1;
    global0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.a) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_3.a)))));
    return ~vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(min(68680u, arg_1.a), ~global4.a), arg_0.b & (vec2<u32>(1u, 1032u) ^ vec2<u32>(u_input.d, global4.a))), global4.a, _wgslsmith_mult_u32(arg_1.a, u_input.d));
}

fn func_2() -> Struct_1 {
    let var_0 = firstLeadingBit(_wgslsmith_dot_vec3_u32(~min(vec3<u32>(u_input.e, u_input.d, global4.a) << (vec3<u32>(u_input.d, 1897u, 26423u) % vec3<u32>(32u)), vec3<u32>(global4.a, u_input.c, 1u)), func_3(Struct_4(_wgslsmith_dot_vec2_i32(vec2<i32>(-7451i, global2[_wgslsmith_index_u32(84945u, 7u)]), vec2<i32>(0i, global2[_wgslsmith_index_u32(global4.a, 7u)])), vec2<u32>(20936u, global4.a), _wgslsmith_clamp_u32(4294967295u, 4294967295u, 1u), _wgslsmith_f_op_f32(-1318f - global4.d), _wgslsmith_f_op_f32(667f - global4.c.a)), Struct_3(firstTrailingBit(u_input.e), abs(global4.b), Struct_1(global0.a), _wgslsmith_div_f32(global0.a, 1204f), Struct_2(Struct_1(-1110f), vec2<bool>(false, true), true)), vec3<bool>(true, true, true), Struct_1(_wgslsmith_f_op_f32(max(global4.e.a.a, 405f))))));
    var var_1 = select(!(!(!(!vec4<bool>(global4.e.c, false, false, global4.e.b.x)))), vec4<bool>(any(!select(vec4<bool>(true, global1.c, false, false), vec4<bool>(global4.e.b.x, true, global1.c, global4.e.c), true)), global4.e.b.x, true, select(true, global1.b.x, false) || any(!vec2<bool>(global4.e.c, global4.e.c))), vec4<bool>(false, !(global1.b.x & true), true, global1.c));
    let var_2 = Struct_2(global4.c, vec2<bool>(!(!global1.b.x), !any(vec2<bool>(true, var_1.x)) | any(vec2<bool>(global4.e.b.x, true))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1854f), global1.a.a)) <= _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(global0.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(737f * global4.c.a) + 528f)));
    var var_3 = global4.e;
    let var_4 = Struct_3(~(~u_input.e), ~(~vec2<i32>(firstLeadingBit(global4.b.x), -u_input.b)), var_2.a, -779f, Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global4.c.a, var_3.a.a)))), vec2<bool>(true, false), var_3.b.x));
    return Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -226f));
}

fn func_1(arg_0: f32, arg_1: vec4<i32>) -> vec2<i32> {
    global3 = arg_0;
    var var_0 = _wgslsmith_clamp_u32(~global4.a, 40793u, ~_wgslsmith_add_u32(u_input.c, 30241u));
    global4 = Struct_3(11378u, firstLeadingBit(arg_1.xy) >> (vec2<u32>(~(~global4.a), global4.a) % vec2<u32>(32u)), func_2(), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-407f))))), Struct_2(func_2(), select(!global4.e.b, vec2<bool>(true, true), select(global1.c & global1.b.x, true, true)), global4.e.c));
    var var_1 = ~countOneBits(func_3(Struct_4(u_input.b, vec2<u32>(4294967295u, u_input.c), 49069u, 191f, global4.e.a.a), Struct_3(49591u, vec2<i32>(arg_1.x, arg_1.x), global4.e.a, -1354f, Struct_2(global1.a, vec2<bool>(true, global4.e.c), global1.c)), !vec3<bool>(global1.c, global4.e.b.x, global4.e.b.x), func_2()).x | abs(firstTrailingBit(93067u)));
    var var_2 = func_2();
    return firstTrailingBit(firstLeadingBit(abs(reverseBits(~vec2<i32>(global2[_wgslsmith_index_u32(u_input.c, 7u)], global2[_wgslsmith_index_u32(u_input.e, 7u)])))));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = Struct_3(max(_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(1u, global4.a), ~vec2<u32>(global4.a, 1u)), reverseBits(~global4.a)), ~_wgslsmith_dot_vec4_u32(vec4<u32>(8019u, u_input.c, u_input.c, 11724u), min(vec4<u32>(1u, global4.a, 1u, 2371u), vec4<u32>(u_input.c, u_input.e, 0u, 0u)))), -abs(max(global4.b ^ global4.b, func_1(-218f, vec4<i32>(-1i, u_input.b, global2[_wgslsmith_index_u32(global4.a, 7u)], global2[_wgslsmith_index_u32(7903u, 7u)])))), Struct_1(global4.c.a), global1.a.a, Struct_2(Struct_1(global1.a.a), vec2<bool>(all(select(vec3<bool>(false, true, global1.c), vec3<bool>(global1.c, global1.c, global1.b.x), vec3<bool>(global4.e.b.x, false, false))), false), global1.b.x));
    global3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(global1.a.a, global0.a)), _wgslsmith_f_op_f32(f32(-1f) * -951f))))));
    let var_0 = vec3<i32>(u_input.b, abs(-global4.b.x), ~(-max(i32(-1i) * -16766i, global2[_wgslsmith_index_u32(~4294967295u, 7u)])));
    let var_1 = 1000f;
    var var_2 = Struct_1(global0.a);
    let var_3 = global1.a;
    let var_4 = ~_wgslsmith_clamp_i32(countOneBits(-2147483647i), u_input.b << (1u % 32u), -(var_0.x | reverseBits(global4.b.x)));
    let var_5 = global2[_wgslsmith_index_u32(1u, 7u)];
    global1 = global4.e;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(u_input.d, ~abs(~u_input.e), ~u_input.d, _wgslsmith_mod_u32(u_input.e, _wgslsmith_div_u32(u_input.e, 0u ^ u_input.d))), ~vec3<u32>(83522u ^ _wgslsmith_add_u32(global4.a, 0u), 0u, 41351u), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_1, _wgslsmith_f_op_f32(sign(124f)))) * _wgslsmith_f_op_f32(f32(-1f) * -534f)))));
}

