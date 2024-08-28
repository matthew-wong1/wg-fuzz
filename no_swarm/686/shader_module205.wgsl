struct Struct_1 {
    a: u32,
    b: vec3<f32>,
    c: vec2<f32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec4<u32>,
    c: vec2<u32>,
    d: Struct_1,
    e: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<i32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec3<f32>,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 9>;

var<private> global1: Struct_2 = Struct_2(vec3<bool>(false, false, false), vec4<u32>(4294967295u, 3155u, 1u, 4294967295u), vec2<u32>(1u, 54029u), Struct_1(9773u, vec3<f32>(786f, -673f, 802f), vec2<f32>(-115f, 391f)), -1i);

var<private> global2: array<vec2<i32>, 1>;

var<private> global3: vec3<u32>;

var<private> global4: vec2<f32> = vec2<f32>(329f, 1000f);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_1(arg_0: Struct_2) -> vec3<bool> {
    let var_0 = global3.x < ~global0[_wgslsmith_index_u32(~_wgslsmith_mod_u32(1u, ~global3.x), 9u)];
    global0 = array<u32, 9>();
    let var_1 = _wgslsmith_div_i32(arg_0.e, max(~(-global1.e), -1i));
    let var_2 = _wgslsmith_mod_u32(~(~firstTrailingBit(19210u)), _wgslsmith_mult_u32(0u, (select(16449u, global3.x, false) << (global1.d.a % 32u)) >> (4294967295u % 32u)));
    global2 = array<vec2<i32>, 1>();
    return global1.a;
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_3, arg_2: vec4<f32>, arg_3: vec3<bool>) -> u32 {
    global4 = global1.d.c;
    return arg_1.a.a;
}

fn func_2(arg_0: u32, arg_1: Struct_2, arg_2: vec4<u32>, arg_3: f32) -> u32 {
    global2 = array<vec2<i32>, 1>();
    global3 = _wgslsmith_clamp_vec3_u32(firstTrailingBit(min(vec3<u32>(reverseBits(arg_0), arg_1.d.a, func_3(vec4<f32>(global1.d.c.x, 104f, arg_3, arg_1.d.b.x), Struct_3(arg_1.d, vec3<i32>(3425i, -1i, u_input.b), arg_1.d), vec4<f32>(1564f, arg_1.d.b.x, -493f, 613f), arg_1.a)), ~(~global1.b.wxz))), _wgslsmith_sub_vec3_u32(u_input.c, vec3<u32>(_wgslsmith_sub_u32(arg_1.c.x, 4870u), _wgslsmith_add_u32(global0[_wgslsmith_index_u32(arg_1.c.x, 9u)], arg_1.b.x), 0u) | vec3<u32>(_wgslsmith_div_u32(global3.x, 46496u), min(global1.d.a, 17247u), ~45603u)), global1.b.zwz);
    global2 = array<vec2<i32>, 1>();
    let var_0 = global1.a.x;
    global2 = array<vec2<i32>, 1>();
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_mod_u32(func_2(_wgslsmith_add_u32(countOneBits(global1.d.a), abs(global3.x)), Struct_2(func_1(Struct_2(global1.a, u_input.a, global1.b.wy, Struct_1(global1.d.a, global1.d.b, vec2<f32>(-975f, 738f)), 2147483647i)), _wgslsmith_mult_vec4_u32(vec4<u32>(9148u, 11980u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 9u)], 9u)], 0u), u_input.a), vec2<u32>(102467u, 63937u), global1.d, ~global1.e), ~u_input.a, 639f), (global1.d.a >> (_wgslsmith_add_u32(global0[_wgslsmith_index_u32(4294967295u, 9u)], global0[_wgslsmith_index_u32(105379u, 9u)]) % 32u)) >> (~(~u_input.c.x) % 32u)), vec3<f32>(global4.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global4.x, global1.d.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-624f - 452f)))), -514f), _wgslsmith_f_op_vec2_f32(vec2<f32>(1253f, global4.x) + _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(select(global1.d.c, global1.d.c, false))))))));
    let var_1 = _wgslsmith_f_op_f32(sign(-1000f));
    global4 = global1.d.b.xz;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.b.x)))));
    var var_3 = vec2<u32>(abs(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(u_input.c, vec3<u32>(global1.b.x, global1.d.a, 0u)), firstTrailingBit(global1.b.yyx)) << (~1u % 32u)), ~4294967295u);
    let x = u_input.a;
    s_output = StorageBuffer(global2[_wgslsmith_index_u32(var_3.x, 1u)], firstLeadingBit(_wgslsmith_div_vec3_u32(vec3<u32>(_wgslsmith_div_u32(var_3.x, 1u), 0u, global3.x), max(global1.b.wzw, u_input.c))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(-950f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.x)), _wgslsmith_f_op_f32(floor(362f)))), -160f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_0.b.x - var_0.b.x))))));
}

