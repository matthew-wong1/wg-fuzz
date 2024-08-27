struct Struct_1 {
    a: u32,
    b: bool,
    c: bool,
    d: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec2<i32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 30>;

var<private> global1: array<vec2<f32>, 24>;

var<private> global2: Struct_1 = Struct_1(1u, true, true, 1309f);

var<private> global3: vec4<f32>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> vec3<bool> {
    return vec3<bool>(false, !global2.c, global2.b);
}

fn func_2() -> Struct_1 {
    var var_0 = !select(!select(vec3<bool>(false, global2.c, false), vec3<bool>(true, global2.b, false), func_3()), vec3<bool>(any(vec4<bool>(global2.c, true, global2.b, global2.b)), -145f <= _wgslsmith_f_op_f32(global2.d * -179f), global2.b), vec3<bool>(global2.c, func_3().x, all(vec2<bool>(global2.c, global2.b))));
    global1 = array<vec2<f32>, 24>();
    global3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(778f, _wgslsmith_f_op_f32(-global2.d), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(global2.d, global2.d)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(global3.x, 524f))))), _wgslsmith_div_f32(162f, _wgslsmith_f_op_f32(-global3.x))));
    var var_1 = vec4<i32>(_wgslsmith_dot_vec2_i32(countOneBits(~reverseBits(u_input.c)), abs(u_input.a.xz)), ~u_input.c.x, _wgslsmith_div_i32(-54602i, _wgslsmith_dot_vec4_i32(~u_input.b, u_input.b << (vec4<u32>(0u, 0u, 1u, global2.a) % vec4<u32>(32u))) & u_input.c.x), reverseBits(reverseBits(i32(-1i) * -17902i)));
    var var_2 = 82500i;
    return global0[_wgslsmith_index_u32(u_input.e, 30u)];
}

fn func_1() -> Struct_1 {
    global1 = array<vec2<f32>, 24>();
    let var_0 = Struct_1(4294967295u, !(!global2.b), global2.c, -402f);
    global1 = array<vec2<f32>, 24>();
    var var_1 = global0[_wgslsmith_index_u32(18641u, 30u)];
    var var_2 = Struct_1(~min(~var_0.a, _wgslsmith_div_u32(var_0.a, u_input.d)) >> (38062u % 32u), false, global2.c, 329f);
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(abs(~vec3<u32>(38491u, global2.a, u_input.d)), ~vec3<u32>(1u, u_input.d, global2.a)), 86034u), global2.b, any(select(vec4<bool>(true, true, 2147483647i > u_input.b.x, true), select(vec4<bool>(false, true, false, true), select(vec4<bool>(global2.b, true, global2.c, true), vec4<bool>(true, true, true, false), vec4<bool>(global2.b, global2.b, global2.b, global2.c)), true), select(!vec4<bool>(true, false, global2.b, global2.c), select(vec4<bool>(false, global2.c, global2.c, global2.c), vec4<bool>(global2.c, global2.c, global2.b, true), false), vec4<bool>(global2.c, global2.c, global2.c, global2.b)))), _wgslsmith_f_op_f32(ceil(226f)));
    global2 = Struct_1(_wgslsmith_sub_u32(~u_input.d, firstLeadingBit(_wgslsmith_add_u32(65095u, countOneBits(0u)))), var_0.c, all(!vec2<bool>(var_0.c, var_0.a != u_input.d)), -398f);
    let var_1 = _wgslsmith_f_op_f32(-global2.d);
    global0 = array<Struct_1, 30>();
    var var_2 = func_1();
    var var_3 = global0[_wgslsmith_index_u32(u_input.e, 30u)];
    var var_4 = Struct_1(~var_3.a, false, true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(-869f))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global3.yz))));
}

