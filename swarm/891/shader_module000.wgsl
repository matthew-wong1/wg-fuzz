struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<i32>,
    c: vec4<f32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: Struct_1 = Struct_1(false);

var<private> global2: array<Struct_1, 25> = array<Struct_1, 25>(Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(false));

var<private> global3: vec4<i32> = vec4<i32>(35219i, 1i, -5592i, i32(-2147483648));

var<private> global4: vec2<u32>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_2(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: vec3<u32>) -> vec2<bool> {
    var var_0 = global2[_wgslsmith_index_u32(85029u, 25u)];
    var var_1 = Struct_1(var_0.a);
    let var_2 = global2[_wgslsmith_index_u32(1u, 25u)];
    var var_3 = -abs(u_input.a);
    global0 = ~global4.x;
    return select(!vec2<bool>(var_2.a, false), vec2<bool>(all(!vec3<bool>(false, true, var_0.a)), global1.a), !any(select(vec3<bool>(var_2.a, true, var_0.a), vec3<bool>(var_0.a, global1.a, true), vec3<bool>(true, false, arg_0.a))));
}

fn func_1(arg_0: f32) -> vec2<bool> {
    return !select(select(select(!vec2<bool>(global1.a, global1.a), func_2(Struct_1(true), vec4<u32>(46890u, global4.x, global4.x, global4.x), vec3<u32>(10112u, global4.x, global4.x)), false), !vec2<bool>(false, global1.a), false), !func_2(global2[_wgslsmith_index_u32(global4.x | 38039u, 25u)], _wgslsmith_mod_vec4_u32(vec4<u32>(global4.x, global4.x, global4.x, global4.x), vec4<u32>(2040u, 18912u, 0u, global4.x)), ~vec3<u32>(1u, global4.x, 20190u)), select(vec2<bool>(!global1.a, arg_0 < arg_0), !(!vec2<bool>(true, global1.a)), func_2(global2[_wgslsmith_index_u32(1u, 25u)], vec4<u32>(global4.x, global4.x, 91341u, 0u), _wgslsmith_div_vec3_u32(vec3<u32>(global4.x, 20987u, 29814u), vec3<u32>(global4.x, global4.x, global4.x)))));
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: bool, arg_3: Struct_1) -> vec2<u32> {
    global0 = global4.x;
    let var_0 = ~(min(firstTrailingBit(vec2<i32>(22751i, 3675i)), _wgslsmith_mod_vec2_i32(u_input.b, global3.xx) >> (reverseBits(arg_0.yz) % vec2<u32>(32u))) >> (~vec2<u32>(global4.x, global4.x) % vec2<u32>(32u)));
    let var_1 = Struct_1(false);
    var var_2 = ~(-_wgslsmith_sub_vec2_i32(u_input.b, u_input.b)) & _wgslsmith_sub_vec2_i32(~u_input.b, var_0);
    var var_3 = _wgslsmith_f_op_f32(f32(-1f) * -740f);
    return vec2<u32>(global4.x, arg_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(!all(func_1(1277f)) || global1.a);
    let var_1 = func_3(~(_wgslsmith_mult_vec3_u32(vec3<u32>(0u, global4.x, global4.x), vec3<u32>(global4.x, 1u, 19994u)) << (~(~vec3<u32>(4294967295u, global4.x, 0u)) % vec3<u32>(32u))), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32((~vec2<u32>(global4.x, 100423u) << (abs(vec2<u32>(global4.x, 1u)) % vec2<u32>(32u))) >> ((~vec2<u32>(global4.x, global4.x) ^ ~vec2<u32>(0u, 5497u)) % vec2<u32>(32u)), ~(~(~vec2<u32>(global4.x, 1u)))), 25u)], !(true && var_0.a), Struct_1(any(select(!vec4<bool>(var_0.a, global1.a, var_0.a, true), select(vec4<bool>(true, true, global1.a, var_0.a), vec4<bool>(global1.a, false, global1.a, var_0.a), global1.a), var_0.a))));
    let var_2 = -1033f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2 * var_2), _wgslsmith_f_op_f32(1366f - var_2)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_2, -252f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(961f * -1388f) * _wgslsmith_f_op_f32(var_2 - 1485f)))), -vec2<i32>(global3.x << (var_1.x % 32u), _wgslsmith_mod_i32(u_input.b.x, u_input.b.x & u_input.a.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-343f, -487f, var_2, var_2))) + _wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_2, var_2, 702f, var_2))))))), select(_wgslsmith_sub_vec2_u32(_wgslsmith_add_vec2_u32(~var_1, countOneBits(var_1)), ~_wgslsmith_sub_vec2_u32(vec2<u32>(global4.x, 37461u), var_1)), vec2<u32>(max(global4.x | 1u, _wgslsmith_add_u32(1u, var_1.x)), 0u), !(!(!vec2<bool>(var_0.a, var_0.a)))));
}

