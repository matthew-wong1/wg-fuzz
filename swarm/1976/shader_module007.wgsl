struct Struct_1 {
    a: vec3<i32>,
    b: vec2<bool>,
    c: vec4<f32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: u32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec2<bool>,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_3,
    c: Struct_4,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: u32,
    d: vec2<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 16> = array<u32, 16>(4294967295u, 0u, 4294967295u, 4294967295u, 92828u, 1u, 13481u, 1u, 0u, 1u, 1u, 1u, 22889u, 4294967295u, 23290u, 4294967295u);

var<private> global1: Struct_2;

var<private> global2: u32;

var<private> global3: array<f32, 10>;

var<private> global4: array<Struct_3, 16>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_1() -> u32 {
    let var_0 = abs(~u_input.c << (u_input.c % vec2<u32>(32u)));
    global3 = array<f32, 10>();
    global3 = array<f32, 10>();
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2431f + global3[_wgslsmith_index_u32(var_0.x, 10u)]) + _wgslsmith_f_op_f32(f32(-1f) * -1222f)))), _wgslsmith_f_op_f32(f32(-1f) * -776f));
    let var_2 = ~countOneBits(~abs(_wgslsmith_mult_vec3_u32(vec3<u32>(var_0.x, u_input.c.x, 1u), vec3<u32>(var_0.x, global1.c, 10329u))));
    return var_2.x;
}

fn func_3(arg_0: Struct_2, arg_1: Struct_4) -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -606f);
    let var_1 = Struct_3(arg_0);
    global4 = array<Struct_3, 16>();
    global3 = array<f32, 10>();
    var var_2 = ~(vec3<u32>(~4294967295u, _wgslsmith_dot_vec3_u32(~vec3<u32>(0u, arg_0.c, var_1.a.c), vec3<u32>(16448u, 27264u, 8092u)), countOneBits(0u)) << (vec3<u32>(_wgslsmith_mult_u32(1u, ~1u), ~1u, _wgslsmith_add_u32(global0[_wgslsmith_index_u32(8599u, 16u)], 17546u) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(global1.c, global1.c, u_input.c.x), vec3<u32>(33132u, 1u, global0[_wgslsmith_index_u32(global1.c, 16u)])) % 32u)) % vec3<u32>(32u)));
    return vec4<bool>(false, arg_1.a.x, true, all(vec4<bool>(all(vec3<bool>(false, true, global1.b.b.x)) && (-330f != global3[_wgslsmith_index_u32(0u, 10u)]), false, arg_1.a.x, global1.d.b.x)));
}

fn func_2() -> u32 {
    let var_0 = Struct_4(!global1.d.b);
    let var_1 = !func_3(Struct_2(var_0.a.x, Struct_1(global1.e.a | vec3<i32>(u_input.a.x, -1i, global1.e.a.x), global1.d.b, _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 506f, global3[_wgslsmith_index_u32(global1.c, 10u)], global3[_wgslsmith_index_u32(22810u, 10u)]) - global1.e.c)), u_input.c.x, global1.d, Struct_1(~vec3<i32>(14424i, -2147483647i, global1.e.a.x), !vec2<bool>(true, var_0.a.x), vec4<f32>(-936f, -1299f, 1875f, global3[_wgslsmith_index_u32(4294967295u, 10u)]))), Struct_4(!vec2<bool>(global1.b.b.x, var_0.a.x)));
    let var_2 = _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(~(~global0[_wgslsmith_index_u32(39067u, 16u)]), 10u)]);
    let var_3 = global1.b.b;
    let var_4 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(ceil(global1.b.c.xzz))));
    return global1.c >> (~(~firstTrailingBit(4294967295u)) % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<i32>(2147483647i >> (max(select(~4294967295u, 7864u, false & global1.e.b.x), 47508u) % 32u), 0i);
    let var_1 = -1007f;
    var var_2 = u_input.a;
    let var_3 = _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(u_input.c, u_input.c), u_input.c.x);
    let var_4 = vec4<u32>(~(~func_1()), select(var_3 >> ((var_3 ^ _wgslsmith_dot_vec2_u32(u_input.c, vec2<u32>(var_3, global1.c))) % 32u), global0[_wgslsmith_index_u32(~(~min(var_3, 10441u)), 16u)], !global1.d.b.x), ~1u, 5653u);
    let x = u_input.a;
    s_output = StorageBuffer(func_2(), global1.e.c, ~(~max(0u, var_3)) | ~firstTrailingBit(_wgslsmith_mod_u32(59236u, 14155u)), _wgslsmith_div_vec2_u32(select(u_input.c, max(var_4.wz, u_input.c), vec2<bool>(global1.d.b.x, global1.e.b.x)), ~vec2<u32>(155150u, global0[_wgslsmith_index_u32(global1.c, 16u)]) << (vec2<u32>(4294967295u, 24472u) % vec2<u32>(32u))) << (abs(vec2<u32>(_wgslsmith_div_u32(global0[_wgslsmith_index_u32(var_4.x, 16u)], var_4.x), var_3)) % vec2<u32>(32u)), _wgslsmith_f_op_f32(sign(1209f)));
}

