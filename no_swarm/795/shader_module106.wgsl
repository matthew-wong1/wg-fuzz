struct Struct_1 {
    a: f32,
    b: vec2<bool>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: vec4<f32>,
    b: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
    d: vec4<u32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 17>;

var<private> global1: vec2<i32> = vec2<i32>(-14967i, 0i);

var<private> global2: vec2<f32>;

var<private> global3: bool;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
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

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: i32) -> vec4<f32> {
    let var_0 = firstLeadingBit(firstTrailingBit(1i) & 2147483647i);
    var var_1 = ~vec2<u32>(47502u, abs(u_input.b)) << (~(~select(~vec2<u32>(u_input.b, 1u), vec2<u32>(4294967295u, 18864u), true)) % vec2<u32>(32u));
    var var_2 = _wgslsmith_f_op_f32(-global2.x);
    global3 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1331f))) == _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global2.x - 1156f))), global2.x));
    let var_3 = Struct_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, -285f, global2.x, global2.x) * vec4<f32>(435f, global2.x, global2.x, global2.x))))))), _wgslsmith_f_op_f32(-global2.x));
    return vec4<f32>(774f, _wgslsmith_f_op_f32(floor(1184f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), -1231f);
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_3, arg_2: vec4<bool>, arg_3: vec3<u32>) -> vec2<u32> {
    let var_0 = !vec2<bool>(false, any(vec2<bool>(true, arg_2.x)));
    global3 = -1853f < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1154f * -1327f))), _wgslsmith_f_op_f32(min(global2.x, global2.x)))) * arg_1.b.a);
    let var_1 = Struct_1(-140f, var_0, select(!vec4<bool>(all(arg_2), arg_1.b.b.x, global0[_wgslsmith_index_u32(_wgslsmith_add_u32(4294967295u, 0u), 17u)], global0[_wgslsmith_index_u32(~u_input.c, 17u)]), select(arg_1.b.c, arg_1.b.c, arg_1.b.b.x), select(arg_2, !vec4<bool>(true, false, false, arg_1.b.b.x), any(vec3<bool>(true, false, true)))));
    var var_2 = Struct_5(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-476f + var_1.a), arg_1.b.a)), arg_0.x, _wgslsmith_div_f32(var_1.a, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(808f + -1771f)))), global2.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-652f + 835f) * var_1.a));
    let var_3 = global2.x;
    return arg_3.zz;
}

fn func_1() -> u32 {
    let var_0 = _wgslsmith_add_vec2_u32(vec2<u32>(~_wgslsmith_mult_u32(u_input.c, 1u), 1u), _wgslsmith_add_vec2_u32(~((vec2<u32>(u_input.c, 19748u) >> (vec2<u32>(u_input.c, u_input.c) % vec2<u32>(32u))) ^ ~vec2<u32>(4294967295u, u_input.c)), func_3(_wgslsmith_f_op_vec4_f32(func_2(global1.x)), Struct_3(vec3<f32>(global2.x, global2.x, global2.x), Struct_1(673f, vec2<bool>(false, false), vec4<bool>(global0[_wgslsmith_index_u32(u_input.b, 17u)], global0[_wgslsmith_index_u32(38394u, 17u)], global0[_wgslsmith_index_u32(4294967295u, 17u)], false))), select(!vec4<bool>(global0[_wgslsmith_index_u32(u_input.b, 17u)], global0[_wgslsmith_index_u32(0u, 17u)], false, false), !vec4<bool>(global0[_wgslsmith_index_u32(38041u, 17u)], false, global0[_wgslsmith_index_u32(u_input.c, 17u)], global0[_wgslsmith_index_u32(4294967295u, 17u)]), true), reverseBits(~vec3<u32>(u_input.c, u_input.b, u_input.c)))));
    let var_1 = vec3<bool>(global1.x < u_input.a.x, global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_mod_u32(func_3(vec4<f32>(-1000f, global2.x, -1033f, global2.x), Struct_3(vec3<f32>(700f, 300f, global2.x), Struct_1(-1152f, vec2<bool>(true, global0[_wgslsmith_index_u32(u_input.c, 17u)]), vec4<bool>(global0[_wgslsmith_index_u32(u_input.c, 17u)], true, global0[_wgslsmith_index_u32(4294967295u, 17u)], global0[_wgslsmith_index_u32(28282u, 17u)]))), vec4<bool>(global0[_wgslsmith_index_u32(u_input.b, 17u)], global0[_wgslsmith_index_u32(u_input.c, 17u)], global0[_wgslsmith_index_u32(4294967295u, 17u)], false), vec3<u32>(u_input.c, var_0.x, 1u)).x, _wgslsmith_add_u32(50284u, 0u)), var_0.x), 17u)] && all(select(!vec2<bool>(global0[_wgslsmith_index_u32(93108u, 17u)], global0[_wgslsmith_index_u32(u_input.c, 17u)]), select(vec2<bool>(global0[_wgslsmith_index_u32(24832u, 17u)], global0[_wgslsmith_index_u32(1u, 17u)]), vec2<bool>(global0[_wgslsmith_index_u32(var_0.x, 17u)], true), vec2<bool>(false, global0[_wgslsmith_index_u32(15861u, 17u)])), global0[_wgslsmith_index_u32(1u, 17u)])), true);
    var var_2 = _wgslsmith_div_u32(~(~1u), _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(10259u, max(16957u, 4294967295u), 47209u << (1u % 32u), firstTrailingBit(u_input.c)), _wgslsmith_div_vec4_u32(vec4<u32>(17510u, 1u, var_0.x, 44105u), vec4<u32>(39263u, var_0.x, u_input.c, var_0.x)) & ~vec4<u32>(var_0.x, 47662u, 4294967295u, var_0.x)), min(0u, firstLeadingBit(u_input.c))));
    global1 = -u_input.a;
    global1 = ~firstLeadingBit(reverseBits(vec2<i32>(-2147483647i, -1i) & firstTrailingBit(vec2<i32>(u_input.d, global1.x))));
    return 22401u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~_wgslsmith_mult_vec2_u32(abs(~vec2<u32>(u_input.c, u_input.c)), select(vec2<u32>(u_input.c, 4294967295u) & vec2<u32>(u_input.c, u_input.b), vec2<u32>(4294967295u, u_input.c) | vec2<u32>(4294967295u, u_input.b), !global0[_wgslsmith_index_u32(0u, 17u)])));
    global0 = array<bool, 17>();
    let var_1 = Struct_2(0u >> (u_input.b % 32u));
    var var_2 = min(max(min(vec4<u32>(_wgslsmith_add_u32(u_input.c, u_input.c), var_1.a & var_0.x, func_1(), _wgslsmith_div_u32(0u, var_0.x)), firstTrailingBit(~vec4<u32>(51589u, var_1.a, 25119u, 0u))), select(vec4<u32>(firstLeadingBit(var_0.x), firstLeadingBit(var_1.a), var_1.a ^ 0u, func_3(vec4<f32>(global2.x, global2.x, -622f, -1334f), Struct_3(vec3<f32>(-541f, -651f, 1906f), Struct_1(1000f, vec2<bool>(global0[_wgslsmith_index_u32(25632u, 17u)], false), vec4<bool>(true, true, global0[_wgslsmith_index_u32(var_1.a, 17u)], true))), vec4<bool>(false, false, global0[_wgslsmith_index_u32(4294967295u, 17u)], false), vec3<u32>(1u, 30331u, var_0.x)).x), ~vec4<u32>(u_input.b, 0u, 6653u, 42591u), u_input.c >= (var_1.a << (1u % 32u)))), vec4<u32>(_wgslsmith_add_u32(4294967295u, var_1.a), _wgslsmith_add_u32(var_0.x, u_input.c), var_0.x, ~(~_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, var_0.x, var_0.x), vec3<u32>(1u, var_0.x, 0u)))));
    global1 = vec2<i32>(~u_input.d, _wgslsmith_dot_vec2_i32((reverseBits(u_input.a) | vec2<i32>(0i, -1i)) >> (var_2.wy % vec2<u32>(32u)), max(countOneBits(u_input.a), vec2<i32>(u_input.d & -2147483647i, ~(-6329i)))));
    var var_3 = _wgslsmith_f_op_f32(min(global2.x, _wgslsmith_f_op_f32(exp2(global2.x))));
    var var_4 = true;
    let var_5 = _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-368f, _wgslsmith_f_op_f32(abs(-1464f))) - 350f), 287f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(abs(global2.x))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(global2.x + 1359f), global2.x)), global2.x)));
    let var_6 = 56704u;
    let x = u_input.a;
    s_output = StorageBuffer(max(~select(0u, 4294967295u, global0[_wgslsmith_index_u32(0u, 17u)]), u_input.b), 1u, vec4<u32>(~(1u | ~var_2.x), 21171u, ~var_6, 4294967295u), ~(~(~vec4<u32>(var_2.x, 0u, 48688u, 1u)) << (vec4<u32>(var_1.a, ~0u, abs(var_2.x), 19167u) % vec4<u32>(32u))), _wgslsmith_div_vec4_i32((_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a.x, u_input.d, 2147483647i, u_input.d), vec4<i32>(global1.x, 1i, 23388i, 1i)) << (_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b, var_2.x, 5257u, 27472u), vec4<u32>(var_0.x, var_1.a, 3501u, var_2.x)) % vec4<u32>(32u))) ^ reverseBits(vec4<i32>(global1.x, global1.x, 29946i, 157i) >> (vec4<u32>(u_input.c, 0u, 0u, 1u) % vec4<u32>(32u))), vec4<i32>(~(-1i), max(31547i << (var_2.x % 32u), u_input.d), global1.x, global1.x)));
}

