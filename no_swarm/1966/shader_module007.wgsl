struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 32>;

var<private> global1: array<Struct_2, 5> = array<Struct_2, 5>(Struct_2(Struct_1(true), Struct_1(true), 16749i), Struct_2(Struct_1(false), Struct_1(true), -31868i), Struct_2(Struct_1(true), Struct_1(false), 43597i), Struct_2(Struct_1(false), Struct_1(false), -52543i), Struct_2(Struct_1(true), Struct_1(false), 0i));

var<private> global2: array<f32, 13>;

var<private> global3: array<Struct_1, 27> = array<Struct_1, 27>(Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(false));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
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

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: u32) -> f32 {
    global1 = array<Struct_2, 5>();
    global3 = array<Struct_1, 27>();
    let var_0 = arg_1;
    var var_1 = Struct_1(!arg_0.a);
    var var_2 = !(!vec2<bool>(true || (1i >= u_input.a.x), !any(vec3<bool>(var_1.a, true, true))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1971f * _wgslsmith_f_op_f32(1412f * _wgslsmith_div_f32(-1686f, global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(37991u, 1u), 13u)]))));
}

fn func_3() -> u32 {
    var var_0 = global2[_wgslsmith_index_u32(countOneBits(u_input.b), 13u)];
    let var_1 = Struct_2(global3[_wgslsmith_index_u32(countOneBits(u_input.b), 27u)], Struct_1(!(!any(vec3<bool>(false, false, true)))), (i32(-1i) * -5334i) & (-1i << ((1u >> (~u_input.b % 32u)) % 32u)));
    let var_2 = var_1.a.a;
    var var_3 = Struct_1(var_1.b.a);
    let var_4 = global2[_wgslsmith_index_u32(u_input.b, 13u)];
    return u_input.b;
}

fn func_1() -> StorageBuffer {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(max(global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_mult_u32(4294967295u >> (1u % 32u), u_input.b << (u_input.b % 32u)), ~12441u), 13u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(max(u_input.b, u_input.b), 13u)] - 408f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, 1u), 13u)]))) - _wgslsmith_div_f32(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(4294967295u, u_input.b) >> ((u_input.b & 0u) % 32u), 13u)], global2[_wgslsmith_index_u32(~(~22281u), 13u)])), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(1u, 13u)])) - 1000f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-233f - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -100f), global2[_wgslsmith_index_u32(~4294967295u, 13u)]))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(Struct_1(true), u_input.a.wy, 1u)) - _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.b, 13u)] + -2037f)) + -1000f))));
    var var_1 = u_input.a;
    var var_2 = global1[_wgslsmith_index_u32(1u << (1u % 32u), 5u)];
    var var_3 = vec4<u32>(u_input.b, ~(~(~31201u)), u_input.b, 12169u) >> (_wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(~(~vec4<u32>(1580u, u_input.b, 1u, 1u)), ~vec4<u32>(u_input.b, u_input.b, 4294967295u, 4294967295u)), vec4<u32>(min(1u, u_input.b), 44017u, func_3(), reverseBits(u_input.b)) & (vec4<u32>(0u, 0u, u_input.b, 8547u) & _wgslsmith_div_vec4_u32(vec4<u32>(u_input.b, u_input.b, u_input.b, 1u), vec4<u32>(u_input.b, 0u, u_input.b, 85808u)))) % vec4<u32>(32u));
    let var_4 = var_3.wyy;
    return StorageBuffer(vec4<i32>(0i << (1u % 32u), u_input.a.x, 1i, u_input.a.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_0.x, var_0.x, global2[_wgslsmith_index_u32(var_4.x, 13u)]))) - _wgslsmith_f_op_vec3_f32(abs(var_0.xzz))) * _wgslsmith_f_op_vec3_f32(floor(var_0.yyw)))), _wgslsmith_mod_u32(func_3(), var_3.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(~(~35311u), 13u)]);
    global1 = array<Struct_2, 5>();
    let x = u_input.a;
    s_output = func_1();
}

