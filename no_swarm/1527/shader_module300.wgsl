struct Struct_1 {
    a: vec3<bool>,
    b: u32,
    c: f32,
}

struct Struct_2 {
    a: f32,
    b: vec3<u32>,
}

struct Struct_3 {
    a: u32,
    b: vec3<i32>,
    c: vec2<i32>,
    d: vec3<i32>,
    e: vec4<u32>,
}

struct Struct_4 {
    a: Struct_3,
    b: bool,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: u32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 18>;

var<private> global1: array<Struct_4, 27>;

var<private> global2: array<vec2<u32>, 11>;

var<private> global3: array<i32, 31>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec4<i32>, arg_1: f32) -> u32 {
    let var_0 = countOneBits(-1i);
    let var_1 = Struct_1(!select(vec3<bool>(any(vec3<bool>(false, true, false)), any(vec3<bool>(false, false, false)), all(vec4<bool>(false, true, true, false))), vec3<bool>(any(vec2<bool>(false, true)), all(vec2<bool>(false, false)), true), vec3<bool>(true, false, true)), ~(~(~(~1u))), _wgslsmith_f_op_f32(arg_1 + arg_1));
    let var_2 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-185f, 200f, var_1.c)))))));
    global0 = array<vec3<f32>, 18>();
    global2 = array<vec2<u32>, 11>();
    return ~var_1.b;
}

fn func_2(arg_0: f32) -> Struct_2 {
    global2 = array<vec2<u32>, 11>();
    let var_0 = Struct_3(24790u, -vec3<i32>(_wgslsmith_div_i32(firstLeadingBit(-1i), _wgslsmith_mult_i32(u_input.a.x, -8664i)), select(-23617i, _wgslsmith_mult_i32(global3[_wgslsmith_index_u32(101086u, 31u)], 12985i), true), 38591i), vec2<i32>(_wgslsmith_mult_i32(-2147483647i, 1i), 0i) << (global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u)), 11u)] % vec2<u32>(32u)), vec3<i32>(~2147483647i << (reverseBits(func_3(vec4<i32>(-1i, 6216i, u_input.a.x, 2147483647i), -432f)) % 32u), 6033i, i32(-1i) * -global3[_wgslsmith_index_u32(1u, 31u)]), select(max(~min(vec4<u32>(0u, 13468u, 4294967295u, 0u), vec4<u32>(12365u, 5340u, 1u, 15530u)), ~vec4<u32>(6731u, 59455u, 0u, 0u)), vec4<u32>(4294967295u, 76780u, _wgslsmith_dot_vec2_u32(vec2<u32>(85220u, 52258u), global2[_wgslsmith_index_u32(81560u, 11u)] << (vec2<u32>(979u, 5573u) % vec2<u32>(32u))), ~(~3165u)), select(select(select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false)), select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false), false), select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, false))), vec4<bool>(all(vec2<bool>(false, false)), any(vec3<bool>(true, false, false)), true, true), true)));
    global0 = array<vec3<f32>, 18>();
    let var_1 = 176f;
    let var_2 = any(vec2<bool>(false, true));
    return Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_0)))), var_0.e.wzz);
}

fn func_4(arg_0: Struct_2, arg_1: i32, arg_2: vec4<i32>) -> f32 {
    var var_0 = vec4<bool>(false, true, ~1u > arg_0.b.x, any(select(select(vec2<bool>(true, true), vec2<bool>(true, false), true), vec2<bool>(false, false), any(vec2<bool>(true, false)))) & any(vec4<bool>(false, any(vec3<bool>(true, false, false)), any(vec2<bool>(true, true)), arg_0.a != arg_0.a)));
    var var_1 = -2147483647i;
    return -823f;
}

fn func_1() -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(func_2(-973f), global3[_wgslsmith_index_u32(69486u, 31u)] | global3[_wgslsmith_index_u32(33227u, 31u)], ~vec4<i32>(global3[_wgslsmith_index_u32(1u, 31u)], -1i, u_input.a.x, 19682i))) - -542f))));
    return Struct_2(var_0, ~(~vec3<u32>(~0u, ~36840u, ~1u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(!all(select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, true), false)), !select(any(select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, true), false)), any(vec4<bool>(true, true, true, true)), true));
    global1 = array<Struct_4, 27>();
    var var_1 = !(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1000f))) * -127f) == -1508f);
    global1 = array<Struct_4, 27>();
    let var_2 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-941f, _wgslsmith_f_op_f32(-var_2.a))))), vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, -1i, -24424i) & vec3<i32>(17173i, global3[_wgslsmith_index_u32(var_2.b.x, 31u)], -56112i), -vec3<i32>(global3[_wgslsmith_index_u32(var_2.b.x, 31u)], 1i, 0i)) >> (~var_2.b.x % 32u), abs(-1i ^ _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, global3[_wgslsmith_index_u32(var_2.b.x, 31u)], global3[_wgslsmith_index_u32(var_2.b.x, 31u)], global3[_wgslsmith_index_u32(var_2.b.x, 31u)]), vec4<i32>(global3[_wgslsmith_index_u32(1u, 31u)], 5560i, 1i, 2147483647i))), i32(-1i) * -u_input.a.x, ~global3[_wgslsmith_index_u32(abs(var_2.b.x) >> (var_2.b.x % 32u), 31u)]), 4294967295u, -vec3<i32>(-26608i, ~(~32688i), 1i >> (var_2.b.x % 32u)));
}

