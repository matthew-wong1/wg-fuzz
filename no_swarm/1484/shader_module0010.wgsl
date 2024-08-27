struct Struct_1 {
    a: vec3<u32>,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
    d: vec4<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 28>;

var<private> global1: array<Struct_1, 28> = array<Struct_1, 28>(Struct_1(vec3<u32>(28298u, 4294967295u, 40779u), false), Struct_1(vec3<u32>(7502u, 35183u, 57455u), true), Struct_1(vec3<u32>(0u, 1636u, 63159u), true), Struct_1(vec3<u32>(4294967295u, 48143u, 4294967295u), true), Struct_1(vec3<u32>(0u, 21220u, 80477u), false), Struct_1(vec3<u32>(34175u, 2835u, 1u), false), Struct_1(vec3<u32>(22584u, 4294967295u, 4294967295u), false), Struct_1(vec3<u32>(0u, 4294967295u, 81423u), true), Struct_1(vec3<u32>(9434u, 1u, 4294967295u), false), Struct_1(vec3<u32>(4294967295u, 0u, 5150u), true), Struct_1(vec3<u32>(4294967295u, 0u, 1u), false), Struct_1(vec3<u32>(16486u, 54330u, 1u), true), Struct_1(vec3<u32>(26567u, 31586u, 4294967295u), true), Struct_1(vec3<u32>(4294967295u, 44351u, 1u), false), Struct_1(vec3<u32>(4623u, 4294967295u, 1u), true), Struct_1(vec3<u32>(4546u, 0u, 1u), false), Struct_1(vec3<u32>(0u, 45449u, 1u), true), Struct_1(vec3<u32>(13393u, 41789u, 18487u), true), Struct_1(vec3<u32>(0u, 1u, 11588u), true), Struct_1(vec3<u32>(21852u, 4294967295u, 0u), false), Struct_1(vec3<u32>(1u, 4294967295u, 4294967295u), false), Struct_1(vec3<u32>(61434u, 0u, 4294967295u), false), Struct_1(vec3<u32>(38298u, 9176u, 9630u), true), Struct_1(vec3<u32>(22254u, 49840u, 42344u), false), Struct_1(vec3<u32>(4294967295u, 4294967295u, 4294967295u), true), Struct_1(vec3<u32>(0u, 0u, 4294967295u), true), Struct_1(vec3<u32>(41980u, 17800u, 9587u), true), Struct_1(vec3<u32>(0u, 7102u, 57804u), false));

var<private> global2: array<Struct_1, 8> = array<Struct_1, 8>(Struct_1(vec3<u32>(66624u, 74337u, 1u), true), Struct_1(vec3<u32>(64054u, 1u, 1u), true), Struct_1(vec3<u32>(0u, 0u, 1u), false), Struct_1(vec3<u32>(31296u, 10590u, 48617u), true), Struct_1(vec3<u32>(26170u, 50663u, 4294967295u), true), Struct_1(vec3<u32>(4294967295u, 15892u, 43587u), false), Struct_1(vec3<u32>(1u, 22600u, 1u), false), Struct_1(vec3<u32>(0u, 0u, 0u), true));

var<private> global3: array<vec3<u32>, 28>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_2(arg_0: vec2<u32>, arg_1: vec4<f32>) -> vec2<bool> {
    global1 = array<Struct_1, 28>();
    var var_0 = arg_1.x;
    var var_1 = global2[_wgslsmith_index_u32(~(~u_input.c.x), 8u)];
    global0 = array<Struct_1, 28>();
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) * _wgslsmith_f_op_f32(select(593f, -321f, true))))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-782f + -1433f) + _wgslsmith_f_op_f32(step(arg_1.x, -554f))))) + _wgslsmith_f_op_f32(arg_1.x * arg_1.x)));
    return vec2<bool>((var_1.a.x | 1u) < 1u, true);
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1) -> f32 {
    var var_0 = global1[_wgslsmith_index_u32(arg_2.a.x, 28u)];
    var var_1 = arg_2;
    let var_2 = ~(-1i);
    var_1 = Struct_1(arg_0.a, 27542i < u_input.e.x);
    global2 = array<Struct_1, 8>();
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-268f - 691f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1192f)) * _wgslsmith_f_op_f32(1038f + 1816f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-399f)) * -289f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1236f))))))));
}

fn func_4(arg_0: bool, arg_1: f32, arg_2: u32) -> u32 {
    var var_0 = arg_2;
    var var_1 = global2[_wgslsmith_index_u32(min(~countOneBits(max(~arg_2, max(29451u, 0u))), 13034u << (arg_2 % 32u)), 8u)];
    let var_2 = -u_input.a;
    global1 = array<Struct_1, 28>();
    let var_3 = true;
    return firstLeadingBit(~7754u);
}

fn func_1() -> vec3<f32> {
    let var_0 = global1[_wgslsmith_index_u32(7886u, 28u)];
    let var_1 = any(select(!func_2(~var_0.a.yy, _wgslsmith_f_op_vec4_f32(-vec4<f32>(762f, -2507f, -420f, 2089f))), select(vec2<bool>(true, var_0.b), vec2<bool>(var_0.b, var_0.b || var_0.b), false), true));
    var var_2 = Struct_1(min(vec3<u32>(u_input.c.x, ~_wgslsmith_dot_vec4_u32(vec4<u32>(72996u, 47552u, 48014u, u_input.c.x), vec4<u32>(12801u, 54740u, 0u, 1u)), 1u), vec3<u32>(func_4(!var_0.b, _wgslsmith_f_op_f32(func_3(Struct_1(vec3<u32>(8766u, var_0.a.x, var_0.a.x), var_0.b), u_input.d.x, global0[_wgslsmith_index_u32(46904u, 28u)])), ~var_0.a.x), firstTrailingBit(_wgslsmith_div_u32(15227u, 2977u)), min(var_0.a.x >> (var_0.a.x % 32u), countOneBits(1u)))), any(select(!vec4<bool>(false, var_0.b, var_0.b, var_1), !(!vec4<bool>(var_1, false, var_1, true)), select(select(vec4<bool>(var_0.b, var_1, true, var_1), vec4<bool>(var_0.b, true, false, false), vec4<bool>(false, var_1, var_1, var_0.b)), !vec4<bool>(var_0.b, var_0.b, var_0.b, true), !vec4<bool>(var_0.b, var_1, var_0.b, var_0.b)))));
    let var_3 = global2[_wgslsmith_index_u32(_wgslsmith_div_u32(~(u_input.c.x | _wgslsmith_dot_vec4_u32(vec4<u32>(70324u, var_2.a.x, 0u, 0u), vec4<u32>(u_input.c.x, var_2.a.x, 81586u, 53292u))), 17116u) & ~u_input.c.x, 8u)];
    let var_4 = var_3.b;
    return _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1295f + -231f) - -709f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(640f * 1145f)), false)), 149f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-544f * -208f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec3<u32>, 28>();
    global2 = array<Struct_1, 8>();
    global1 = array<Struct_1, 28>();
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(func_1())))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(145f, -852f, -601f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1216f, 1437f, -630f))))));
    global3 = array<vec3<u32>, 28>();
    var var_1 = ~max(vec2<i32>(max(u_input.a, 2147483647i), u_input.e.x) ^ select(reverseBits(u_input.e.zy), vec2<i32>(u_input.a, -9005i), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true))), vec2<i32>(-1i, 0i));
    var var_2 = !vec4<bool>(false, !(79394u == ~u_input.c.x), all(vec2<bool>(true, u_input.c.x > u_input.c.x)), all(vec3<bool>(true, true, true)));
    let x = u_input.a;
    s_output = StorageBuffer(~select(~u_input.c, _wgslsmith_div_vec2_u32(_wgslsmith_add_vec2_u32(u_input.c, u_input.c), firstLeadingBit(vec2<u32>(u_input.c.x, 4294967295u))), vec2<bool>(true, false)));
}

