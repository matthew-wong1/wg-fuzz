struct Struct_1 {
    a: vec2<u32>,
    b: vec4<f32>,
    c: vec3<i32>,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 23> = array<i32, 23>(0i, 3312i, 36223i, 2147483647i, i32(-2147483648), 2147483647i, 1i, 2147483647i, -1i, i32(-2147483648), 2147483647i, 0i, -3239i, -30282i, 11809i, 4005i, 0i, 1i, -800i, -22838i, 0i, -49736i, i32(-2147483648));

var<private> global1: i32;

var<private> global2: array<vec3<bool>, 6>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: i32) -> i32 {
    var var_0 = Struct_2(arg_0, 827f, Struct_1(vec2<u32>(~_wgslsmith_mod_u32(4294967295u, 1u), max(countOneBits(0u), 17920u)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(arg_0.b, vec4<f32>(-492f, arg_0.b.x, 795f, 605f))), arg_0.b), arg_0.c, 44475i));
    var var_1 = ~(~u_input.c);
    let var_2 = !select(select(vec2<bool>(any(vec3<bool>(false, true, true)), false), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true))), vec2<bool>(all(global2[_wgslsmith_index_u32(4172u, 6u)]), all(vec2<bool>(true, true))), all(select(vec2<bool>(false, true), vec2<bool>(true, true), global0[_wgslsmith_index_u32(4294967295u, 23u)] < -2147483647i)));
    global2 = array<vec3<bool>, 6>();
    var var_3 = Struct_2(Struct_1(u_input.c.yx, vec4<f32>(_wgslsmith_f_op_f32(step(arg_0.b.x, _wgslsmith_f_op_f32(var_0.b * var_0.a.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -825f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -513f), var_0.b), _wgslsmith_f_op_f32(floor(852f))), arg_0.c, reverseBits(-4059i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c.b.x)), arg_0);
    return var_3.c.d;
}

fn func_2(arg_0: vec3<bool>) -> Struct_3 {
    var var_0 = Struct_2(Struct_1(countOneBits(vec2<u32>(4294967295u, _wgslsmith_sub_u32(u_input.c.x, u_input.d))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1149f, 317f, 702f, -692f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1085f, -552f, 2577f, -1084f)))), ~(vec3<i32>(4877i, -2147483647i, global0[_wgslsmith_index_u32(u_input.d, 23u)]) & ~vec3<i32>(u_input.b.x, u_input.b.x, global0[_wgslsmith_index_u32(60593u, 23u)])), -14123i | _wgslsmith_mod_i32(-15429i | u_input.b.x, 49953i)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(641f)))), Struct_1(abs(u_input.c.zz), _wgslsmith_f_op_vec4_f32(vec4<f32>(637f, 224f, -198f, _wgslsmith_f_op_f32(step(-768f, 1008f))) - _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-202f, -275f, -223f, 709f)))), min(vec3<i32>(func_3(Struct_1(vec2<u32>(0u, u_input.a), vec4<f32>(-476f, 2241f, 421f, 479f), vec3<i32>(u_input.b.x, 19817i, u_input.b.x), global0[_wgslsmith_index_u32(27223u, 23u)]), vec4<u32>(1u, u_input.d, 1u, 0u), global0[_wgslsmith_index_u32(u_input.d, 23u)]), _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, u_input.b.x, 1239i, global0[_wgslsmith_index_u32(27361u, 23u)]), vec4<i32>(5855i, global0[_wgslsmith_index_u32(22847u, 23u)], -2147483647i, u_input.b.x)), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.d, u_input.c.x), 23u)]), min(-vec3<i32>(global0[_wgslsmith_index_u32(1u, 23u)], -1436i, -1i), vec3<i32>(u_input.b.x, 3807i, 21295i) << (vec3<u32>(17218u, u_input.a, u_input.d) % vec3<u32>(32u)))), -25788i));
    let var_1 = u_input.b.x;
    global1 = countOneBits(abs(~min(var_1, _wgslsmith_add_i32(6160i, var_0.c.d))));
    let var_2 = 4294967295u;
    let var_3 = true;
    return Struct_3(~(vec3<u32>(~1u, select(var_2, 13522u, arg_0.x), 0u) >> (((u_input.c | vec3<u32>(101857u, 4294967295u, var_0.a.a.x)) << (u_input.c % vec3<u32>(32u))) % vec3<u32>(32u))));
}

fn func_1() -> Struct_3 {
    return func_2(vec3<bool>(true, all(select(!global2[_wgslsmith_index_u32(4294967295u, 6u)], select(global2[_wgslsmith_index_u32(u_input.a, 6u)], vec3<bool>(true, false, true), true), true)), false));
}

fn func_4(arg_0: Struct_3, arg_1: f32, arg_2: Struct_3) -> Struct_3 {
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(max(u_input.b.x, ~global0[_wgslsmith_index_u32(u_input.c.x << (_wgslsmith_div_u32(u_input.d, 11566u) % 32u), 23u)]));
    let var_1 = -4119i;
    var var_2 = Struct_3(u_input.c);
    let var_3 = !(!select(all(global2[_wgslsmith_index_u32(61117u, 6u)]), select(true, false, true), all(vec2<bool>(true, true))));
    global1 = var_1;
    var var_4 = func_4(func_1(), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(-413f)))) + -697f)), Struct_3(abs(firstLeadingBit(vec3<u32>(57877u, var_2.a.x, 0u)))));
    global1 = max(-var_1, _wgslsmith_add_i32(0i, -13785i));
    global2 = array<vec3<bool>, 6>();
    let x = u_input.a;
    s_output = StorageBuffer(var_2.a, _wgslsmith_add_vec4_u32(~_wgslsmith_sub_vec4_u32(~vec4<u32>(var_4.a.x, 4294967295u, var_4.a.x, 77776u), ~vec4<u32>(1u, var_4.a.x, 0u, var_2.a.x)), ~_wgslsmith_div_vec4_u32(vec4<u32>(var_2.a.x, 51337u, var_2.a.x, 4294967295u), vec4<u32>(1u, 1u, var_2.a.x, var_2.a.x)) | vec4<u32>(var_2.a.x >> (38472u % 32u), 79118u, abs(25857u), _wgslsmith_dot_vec3_u32(var_2.a, vec3<u32>(28666u, 0u, 111237u)))), ~(~(-(~vec3<i32>(6296i, u_input.b.x, var_0)))));
}

