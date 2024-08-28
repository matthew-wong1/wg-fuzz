struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: bool,
    b: f32,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: u32,
}

struct Struct_4 {
    a: vec4<f32>,
    b: vec3<f32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 17>;

var<private> global1: array<vec2<u32>, 32>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2(arg_0: vec3<i32>, arg_1: u32) -> Struct_1 {
    global0 = array<Struct_1, 17>();
    var var_0 = Struct_1(false);
    var var_1 = var_0.a;
    var var_2 = Struct_2(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(1008f))))))));
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.b, 2108f))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.b, var_2.b))))));
    return Struct_1(any(vec4<bool>(_wgslsmith_f_op_f32(min(var_3.x, -733f)) == var_3.x, all(vec3<bool>(false, var_0.a, true)), !var_0.a && true, var_2.a)));
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: u32) -> Struct_3 {
    var var_0 = Struct_3(2147483647i, Struct_2(~firstLeadingBit(u_input.b) <= -20364i, -997f), arg_3);
    var var_1 = i32(-1i) * -1i;
    let var_2 = select(vec2<bool>(!all(vec4<bool>(false, var_0.b.a, var_0.b.a, true)) != var_0.b.a, !(all(vec4<bool>(var_0.b.a, true, var_0.b.a, arg_1.a)) || true)), !select(vec2<bool>(true, true), !select(vec2<bool>(arg_1.a, false), vec2<bool>(arg_1.a, arg_1.a), false), vec2<bool>(any(vec2<bool>(var_0.b.a, true)), arg_1.a)), true);
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(-139f, 1037f)))));
    let var_4 = arg_1;
    return Struct_3(countOneBits(arg_2.x), var_0.b, _wgslsmith_sub_u32(arg_0, arg_3));
}

fn func_1() -> vec3<bool> {
    let var_0 = func_3(u_input.c, func_2(~select(min(vec3<i32>(u_input.b, u_input.b, 2147483647i), vec3<i32>(u_input.b, 2147483647i, 4902i)), ~vec3<i32>(u_input.b, 2147483647i, u_input.b), false), ~_wgslsmith_sub_u32(u_input.e.x, ~u_input.a)), (countOneBits(max(vec2<i32>(u_input.b, 14965i), vec2<i32>(26597i, -1i))) ^ -(~vec2<i32>(u_input.b, u_input.b))) ^ vec2<i32>(-(u_input.b >> (u_input.a % 32u)), u_input.b), 53933u);
    let var_1 = global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(reverseBits(u_input.e.x), _wgslsmith_dot_vec2_u32(vec2<u32>(func_3(u_input.a, func_2(vec3<i32>(2147483647i, u_input.b, 2147483647i), 12045u), vec2<i32>(var_0.a, u_input.b), var_0.c).c, ~1u), ~reverseBits(u_input.e) << (~(~vec2<u32>(0u, 13577u)) % vec2<u32>(32u)))), 17u)];
    global1 = array<vec2<u32>, 32>();
    let var_2 = global0[_wgslsmith_index_u32(var_0.c, 17u)];
    global0 = array<Struct_1, 17>();
    return !vec3<bool>(all(select(vec4<bool>(true, var_1.a, var_0.b.a, var_2.a), vec4<bool>(false, var_2.a, var_0.b.a, var_1.a), vec4<bool>(false, var_2.a, false, var_2.a))) & var_1.a, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.b.b), _wgslsmith_div_f32(-158f, -250f))) < _wgslsmith_div_f32(862f, _wgslsmith_f_op_f32(min(678f, -1000f))), true);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 17>();
    global1 = array<vec2<u32>, 32>();
    global1 = array<vec2<u32>, 32>();
    let var_0 = Struct_2(!any(select(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false)), select(vec2<bool>(true, false), vec2<bool>(true, true), false), true)), -922f);
    var var_1 = u_input.c;
    var var_2 = vec4<bool>(true, true, all(func_1()), !all(select(!vec2<bool>(var_0.a, true), vec2<bool>(true, true), vec2<bool>(false, var_0.a))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec4_u32(~select(select(vec4<u32>(u_input.a, 1u, 21403u, u_input.c), vec4<u32>(159u, 15039u, 48616u, u_input.d), false), vec4<u32>(95760u, u_input.e.x, u_input.e.x, 0u), false), _wgslsmith_sub_vec4_u32(~_wgslsmith_clamp_vec4_u32(vec4<u32>(41374u, 1u, 429u, u_input.a), vec4<u32>(u_input.a, u_input.d, 4294967295u, 4294967295u), vec4<u32>(u_input.e.x, 20907u, u_input.c, u_input.d)), vec4<u32>(reverseBits(1u), select(15978u, u_input.c, true), u_input.d << (50325u % 32u), 4294967295u))), ~min(4294967295u, ~22249u), -1212f, u_input.b);
}

