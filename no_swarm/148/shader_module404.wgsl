struct Struct_1 {
    a: vec2<i32>,
    b: vec4<f32>,
    c: vec4<u32>,
    d: vec4<bool>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 20> = array<vec2<u32>, 20>(vec2<u32>(12261u, 58133u), vec2<u32>(124u, 25222u), vec2<u32>(4294967295u, 1u), vec2<u32>(46913u, 1u), vec2<u32>(81257u, 0u), vec2<u32>(12805u, 14080u), vec2<u32>(80746u, 43475u), vec2<u32>(0u, 64596u), vec2<u32>(4294967295u, 21443u), vec2<u32>(38398u, 4294967295u), vec2<u32>(34208u, 51999u), vec2<u32>(1u, 31284u), vec2<u32>(1u, 1u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(6398u, 25401u), vec2<u32>(117468u, 4294967295u), vec2<u32>(54355u, 0u), vec2<u32>(1u, 0u), vec2<u32>(49682u, 1u), vec2<u32>(42134u, 0u));

var<private> global1: f32;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1() -> u32 {
    global0 = array<vec2<u32>, 20>();
    let var_0 = -1608f;
    global1 = -455f;
    global0 = array<vec2<u32>, 20>();
    let var_1 = firstTrailingBit(vec3<u32>(_wgslsmith_add_u32(u_input.a.x, ~_wgslsmith_dot_vec2_u32(u_input.c, u_input.c)), _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(~vec3<u32>(u_input.c.x, 93908u, u_input.c.x), vec3<u32>(27030u, 64606u, 5334u)), vec3<u32>(u_input.c.x, ~4294967295u, u_input.a.x)), _wgslsmith_dot_vec3_u32(vec3<u32>(~u_input.a.x, ~u_input.a.x, u_input.b ^ u_input.a.x), ~(vec3<u32>(1u, u_input.c.x, 1u) >> (vec3<u32>(u_input.b, 0u, 37665u) % vec3<u32>(32u))))));
    return 4818u;
}

fn func_2(arg_0: vec2<u32>, arg_1: Struct_2, arg_2: Struct_1) -> f32 {
    global0 = array<vec2<u32>, 20>();
    let var_0 = arg_1;
    let var_1 = arg_1;
    global0 = array<vec2<u32>, 20>();
    var var_2 = arg_0.x;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1624f, 232f))))) * var_1.d.x));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: vec2<f32>) -> vec2<f32> {
    var var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.x * _wgslsmith_f_op_f32(-arg_0.b.x)) * _wgslsmith_div_f32(2497f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-238f * arg_0.b.x) + arg_0.b.x)))));
    let var_1 = arg_0.c.xzz;
    global0 = array<vec2<u32>, 20>();
    global0 = array<vec2<u32>, 20>();
    var var_2 = _wgslsmith_f_op_f32(arg_0.b.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -557f))));
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = 1000f;
    let var_0 = 0i;
    var var_1 = vec4<u32>(func_1(), max(min(~4294967295u, ~u_input.a.x), 70866u), u_input.a.x, _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(u_input.a, ~global0[_wgslsmith_index_u32(u_input.c.x, 20u)]) & ~countOneBits(u_input.a), ~_wgslsmith_mod_vec2_u32(abs(vec2<u32>(u_input.c.x, 0u)), _wgslsmith_mod_vec2_u32(global0[_wgslsmith_index_u32(4294967295u, 20u)], global0[_wgslsmith_index_u32(78579u, 20u)]))));
    global1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1742f)))))))));
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-387f + _wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(func_2(vec2<u32>(1u, var_1.x), Struct_2(1379f, Struct_1(vec2<i32>(14699i, 12662i), vec4<f32>(1033f, -1520f, -2192f, -1000f), vec4<u32>(4294967295u, 16465u, 22823u, 40861u), vec4<bool>(true, false, true, true)), Struct_1(vec2<i32>(var_0, -5794i), vec4<f32>(-842f, 1264f, -382f, 534f), vec4<u32>(18999u, 0u, 0u, u_input.c.x), vec4<bool>(true, false, true, false)), vec3<f32>(1116f, -491f, 511f)), Struct_1(vec2<i32>(var_0, var_0), vec4<f32>(-262f, -221f, 2059f, -423f), vec4<u32>(0u, 13970u, 24598u, 31853u), vec4<bool>(false, false, true, false)))))) + _wgslsmith_div_f32(1583f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-256f, 189f) - -657f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -584f), _wgslsmith_f_op_f32(round(-293f)))), all(vec3<bool>(true, true, true))))));
    global0 = array<vec2<u32>, 20>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-291f, _wgslsmith_f_op_f32(-892f - 352f)) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(func_3(Struct_1(vec2<i32>(-14924i, var_0), vec4<f32>(1641f, -997f, -814f, 129f), vec4<u32>(var_1.x, var_1.x, 29671u, u_input.b), vec4<bool>(true, false, true, false)), vec3<i32>(var_0, var_0, var_0), vec2<f32>(-266f, 1236f))), vec2<f32>(554f, -1259f), select(false, false, true))))), countOneBits(_wgslsmith_add_vec4_u32(~(~vec4<u32>(u_input.a.x, var_1.x, 4294967295u, var_1.x)), min(~vec4<u32>(u_input.c.x, u_input.a.x, var_1.x, var_1.x), _wgslsmith_add_vec4_u32(vec4<u32>(1u, u_input.a.x, var_1.x, var_1.x), vec4<u32>(27147u, var_1.x, u_input.c.x, 0u))))));
}

