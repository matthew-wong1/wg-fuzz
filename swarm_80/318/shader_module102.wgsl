struct Struct_1 {
    a: u32,
    b: bool,
    c: vec3<bool>,
    d: vec2<f32>,
    e: f32,
}

struct Struct_2 {
    a: bool,
    b: f32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 13> = array<vec4<u32>, 13>(vec4<u32>(5706u, 1u, 112442u, 11844u), vec4<u32>(0u, 42131u, 17124u, 1u), vec4<u32>(63091u, 37681u, 4294967295u, 59082u), vec4<u32>(4294967295u, 14998u, 1u, 1u), vec4<u32>(4294967295u, 4294967295u, 26313u, 1u), vec4<u32>(7679u, 99691u, 0u, 1u), vec4<u32>(1u, 4294967295u, 18652u, 4294967295u), vec4<u32>(0u, 4294967295u, 1u, 12984u), vec4<u32>(41456u, 4294967295u, 4294967295u, 4294967295u), vec4<u32>(52084u, 0u, 21226u, 14415u), vec4<u32>(7488u, 0u, 1045u, 107152u), vec4<u32>(111069u, 95547u, 54148u, 4294967295u), vec4<u32>(0u, 0u, 23330u, 52321u));

var<private> global1: i32;

var<private> global2: f32 = -2801f;

var<private> global3: array<bool, 8> = array<bool, 8>(true, true, false, false, true, true, true, false);

var<private> global4: array<i32, 13>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: Struct_2) -> i32 {
    var var_0 = arg_0;
    global4 = array<i32, 13>();
    var var_1 = Struct_3(Struct_1(abs(1u), global4[_wgslsmith_index_u32(~firstTrailingBit(arg_0.c.a), 13u)] != -22346i, !var_0.c.c, var_0.c.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-767f, -198f)))), true);
    var var_2 = i32(-1i) * -16997i;
    global4 = array<i32, 13>();
    return 22350i;
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_1) -> Struct_1 {
    let var_0 = select(vec3<bool>(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~reverseBits(vec2<u32>(u_input.d, 0u)), select(vec2<u32>(arg_1.a, 1u) | vec2<u32>(arg_1.a, arg_1.a), vec2<u32>(15183u, u_input.d), !arg_1.c.zy)), 8u)], any(vec4<bool>(all(vec3<bool>(false, false, true)), all(arg_1.c), false, global3[_wgslsmith_index_u32(0u, 8u)])), global3[_wgslsmith_index_u32(~u_input.d, 8u)] & true), !(!(!arg_1.c)), !(!arg_1.c));
    let var_1 = select(!select(!vec2<bool>(var_0.x, false), !vec2<bool>(global3[_wgslsmith_index_u32(0u, 8u)], true), u_input.d <= (4294967295u >> (arg_1.a % 32u))), !vec2<bool>(arg_1.a > ~u_input.d, !var_0.x), arg_1.c.x);
    let var_2 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(2924f, arg_1.d.x))), arg_1.d), _wgslsmith_f_op_vec2_f32(-arg_1.d), all(select(var_0, vec3<bool>(arg_1.c.x, var_1.x, global3[_wgslsmith_index_u32(9200u, 8u)]), var_0)))), arg_1.d, !(!(!vec2<bool>(true, global3[_wgslsmith_index_u32(arg_1.a, 8u)]))))), vec2<f32>(arg_1.e, arg_1.e)));
    var var_3 = Struct_2(global4[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.d, ~_wgslsmith_clamp_u32(4294967295u, 13510u, u_input.d)), 13u)] == -2147483647i, -1126f, Struct_1(u_input.d, any(select(vec3<bool>(global3[_wgslsmith_index_u32(arg_1.a, 8u)], var_1.x, true), arg_1.c, vec3<bool>(var_0.x, true, var_0.x))), vec3<bool>(false, true, false), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(var_2)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-1572f, var_2.x) + vec2<f32>(-449f, -987f))))), arg_1.e));
    return arg_1;
}

fn func_1(arg_0: vec3<u32>) -> i32 {
    global4 = array<i32, 13>();
    var var_0 = Struct_2(!(!(!global3[_wgslsmith_index_u32(~1u, 8u)])), -574f, func_3(_wgslsmith_clamp_vec4_i32(vec4<i32>(firstLeadingBit(u_input.a.x), func_2(Struct_2(global3[_wgslsmith_index_u32(9884u, 8u)], -1046f, Struct_1(54173u, global3[_wgslsmith_index_u32(arg_0.x, 8u)], vec3<bool>(false, global3[_wgslsmith_index_u32(57510u, 8u)], true), vec2<f32>(-603f, -866f), -822f))), ~global4[_wgslsmith_index_u32(u_input.d, 13u)], -u_input.b.x), vec4<i32>(u_input.c, global4[_wgslsmith_index_u32(18597u, 13u)], u_input.b.x, abs(0i)), -max(vec4<i32>(u_input.b.x, 1i, 24745i, 16768i), vec4<i32>(global4[_wgslsmith_index_u32(4294967295u, 13u)], -2147483647i, global4[_wgslsmith_index_u32(u_input.d, 13u)], u_input.a.x))), Struct_1(1u, true, select(!vec3<bool>(global3[_wgslsmith_index_u32(arg_0.x, 8u)], true, false), vec3<bool>(global3[_wgslsmith_index_u32(arg_0.x, 8u)], global3[_wgslsmith_index_u32(arg_0.x, 8u)], false), select(vec3<bool>(global3[_wgslsmith_index_u32(arg_0.x, 8u)], global3[_wgslsmith_index_u32(1u, 8u)], true), vec3<bool>(global3[_wgslsmith_index_u32(u_input.d, 8u)], global3[_wgslsmith_index_u32(26553u, 8u)], global3[_wgslsmith_index_u32(1u, 8u)]), true)), vec2<f32>(1f, 1f), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(720f, 737f))))));
    global3 = array<bool, 8>();
    global0 = array<vec4<u32>, 13>();
    global0 = array<vec4<u32>, 13>();
    return 1i ^ (reverseBits(u_input.b.x & -1i) >> (var_0.c.a % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~u_input.d;
    var var_1 = -648f;
    let var_2 = -2147483647i;
    global1 = firstLeadingBit(max(var_2, _wgslsmith_sub_i32(~27232i, global4[_wgslsmith_index_u32(u_input.d, 13u)])) ^ (func_1(_wgslsmith_mult_vec3_u32(vec3<u32>(35020u, 76223u, 46605u), vec3<u32>(u_input.d, 54735u, u_input.d))) | countOneBits(-var_2)));
    var_1 = _wgslsmith_f_op_f32(-1392f - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1000f))))));
    var var_3 = ~reverseBits(u_input.a.xy) << (vec2<u32>(u_input.d, 4294967295u) % vec2<u32>(32u));
    global3 = array<bool, 8>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_u32(func_3(~vec4<i32>(var_3.x, var_3.x, global4[_wgslsmith_index_u32(4294967295u, 13u)], u_input.c), Struct_1(16236u, global3[_wgslsmith_index_u32(u_input.d, 8u)], vec3<bool>(true, false, false), vec2<f32>(-283f, 487f), 645f)).a & 1u, ~37794u), _wgslsmith_sub_u32(~1u, 1u >> (~_wgslsmith_sub_u32(u_input.d, 30399u) % 32u)), (_wgslsmith_div_vec3_u32(vec3<u32>(u_input.d, 3462u, 2662u), firstTrailingBit(vec3<u32>(u_input.d, u_input.d, u_input.d))) & ~vec3<u32>(u_input.d, 0u, 49795u)) ^ _wgslsmith_sub_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.d, 1u, u_input.d), ~vec3<u32>(4294967295u, u_input.d, u_input.d)), _wgslsmith_mult_vec3_u32(abs(vec3<u32>(u_input.d, 18611u, 0u)), min(vec3<u32>(73165u, u_input.d, 4294967295u), vec3<u32>(4294967295u, 73071u, 32544u)))));
}

