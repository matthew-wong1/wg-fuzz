struct Struct_1 {
    a: u32,
    b: vec2<u32>,
    c: vec3<i32>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 1> = array<f32, 1>(-1048f);

var<private> global1: array<i32, 29>;

var<private> global2: bool;

var<private> global3: array<i32, 17> = array<i32, 17>(-29994i, -14631i, -4824i, 2147483647i, 1i, 33729i, 19997i, -1i, 2147483647i, 0i, i32(-2147483648), 1i, 30871i, 40390i, -1i, 0i, 2147483647i);

var<private> global4: vec2<f32> = vec2<f32>(-1000f, 807f);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2() -> u32 {
    var var_0 = Struct_2(Struct_1(~reverseBits(1u), vec2<u32>(4294967295u, 1u), firstTrailingBit(u_input.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(0u, 1u)] - -1342f) + -1213f))));
    global3 = array<i32, 17>();
    global1 = array<i32, 29>();
    var var_1 = Struct_2(var_0.a);
    global0 = array<f32, 1>();
    return 1u;
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_2) -> vec2<u32> {
    var var_0 = arg_1;
    let var_1 = ~_wgslsmith_sub_vec3_u32(vec3<u32>(~func_2(), var_0.a.b.x, countOneBits(0u)), ~(~(~vec3<u32>(1u, arg_1.a.a, var_0.a.a))));
    global2 = !(!(var_1.x > (~arg_1.a.a ^ u_input.c)));
    var var_2 = var_0.a.d;
    let var_3 = Struct_2(arg_1.a);
    return vec2<u32>(~(~var_0.a.b.x), var_0.a.b.x);
}

fn func_3(arg_0: vec4<f32>) -> u32 {
    let var_0 = reverseBits(u_input.a.xx & u_input.e.yy);
    var var_1 = Struct_2(Struct_1(u_input.d, vec2<u32>(1u >> (1u % 32u), u_input.b), -(u_input.e.xzx >> (select(vec3<u32>(53527u, u_input.d, 66509u), vec3<u32>(0u, 1u, 25231u), false) % vec3<u32>(32u))), _wgslsmith_f_op_f32(round(1532f))));
    let var_2 = vec2<i32>(var_1.a.c.x & global3[_wgslsmith_index_u32(u_input.b, 17u)], _wgslsmith_mod_i32(-1632i, 37729i));
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(25022u, 1u)] * -761f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -428f))) * 1000f), -1262f, var_1.a.d, 1345f);
    let var_4 = ~1u;
    return var_1.a.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_dot_vec2_u32(~(~abs(vec2<u32>(0u, 16205u))), vec2<u32>(47924u, u_input.d)), ~(~func_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(u_input.b, 1u)], 2071f, -390f) + vec3<f32>(603f, global0[_wgslsmith_index_u32(u_input.b, 1u)], global0[_wgslsmith_index_u32(u_input.b, 1u)])), Struct_2(Struct_1(1u, vec2<u32>(u_input.b, 23224u), vec3<i32>(global1[_wgslsmith_index_u32(0u, 29u)], 38505i, u_input.e.x), -659f)))), u_input.e.ywx, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(func_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(160f, -692f, 1666f, global4.x) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-346f, global0[_wgslsmith_index_u32(u_input.b, 1u)], 509f, global0[_wgslsmith_index_u32(u_input.d, 1u)]) + vec4<f32>(-1666f, 1238f, global4.x, global0[_wgslsmith_index_u32(666u, 1u)])))), 1u)] - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global4.x) + 1803f)));
    let var_1 = Struct_2(Struct_1(74086u ^ _wgslsmith_mult_u32(abs(u_input.d), countOneBits(4294967295u)), _wgslsmith_mult_vec2_u32(vec2<u32>(var_0.b.x, firstTrailingBit(74694u)), var_0.b), vec3<i32>(u_input.a.x & 2147483647i, ~(-global3[_wgslsmith_index_u32(1u, 17u)]), 5654i), _wgslsmith_f_op_f32(788f + global4.x)));
    let var_2 = vec2<bool>(any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), _wgslsmith_f_op_f32(sign(var_0.d)) > _wgslsmith_f_op_f32(-2150f + 122f))), !all(vec3<bool>(all(vec3<bool>(false, true, false)), true, true)));
    var var_3 = Struct_1(0u, func_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-122f, -909f, 237f), vec3<f32>(532f, -1253f, global4.x), var_2.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(200f, -1000f, -1357f)))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_1.a.d, 1431f, 446f)))), Struct_2(var_1.a)), -(~var_1.a.c), -1239f);
    var var_4 = ~vec2<u32>(~var_1.a.b.x | var_3.b.x, u_input.d);
    global2 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -1480f), ~(~(vec4<u32>(1u, 11330u, 66726u, var_1.a.b.x) | firstTrailingBit(vec4<u32>(var_1.a.b.x, 24796u, var_4.x, var_4.x)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(202f, _wgslsmith_f_op_f32(var_1.a.d - _wgslsmith_f_op_f32(-953f - -874f)), -1075f)));
}

