struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: u32,
    b: i32,
    c: f32,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: Struct_2,
    d: f32,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec2<u32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec4<f32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 8>;

var<private> global1: array<bool, 10>;

var<private> global2: Struct_2;

var<private> global3: Struct_2;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: vec3<bool>, arg_1: u32, arg_2: f32) -> Struct_3 {
    return Struct_3(!(all(arg_0.xy) | (1548f == arg_2)) | false, Struct_2(~_wgslsmith_sub_u32(4294967295u, 4294967295u), _wgslsmith_mult_i32(global3.b, 0i), global2.c), Struct_2(global2.a, -25619i, 606f), -781f, -_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(global2.b, 41210i), ~vec2<i32>(global3.b, -1i)), _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(0i, global3.b, u_input.e, global3.b), vec4<i32>(22366i, -20908i, 1i, global2.b), vec4<i32>(0i, -2147483647i, global2.b, global2.b)), select(vec4<i32>(global3.b, 25936i, -2147483647i, 25371i), vec4<i32>(u_input.e, global2.b, u_input.e, global2.b), vec4<bool>(false, global1[_wgslsmith_index_u32(global2.a, 10u)], true, true)))));
}

fn func_3(arg_0: Struct_3) -> Struct_2 {
    global0 = array<vec3<f32>, 8>();
    global0 = array<vec3<f32>, 8>();
    global3 = Struct_2(0u, ~min(i32(-1i) * -36850i, u_input.a ^ (-2147483647i | global2.b)), _wgslsmith_f_op_f32(-global3.c));
    var var_0 = vec3<i32>(-max(_wgslsmith_mod_i32(~global3.b, global3.b ^ 2147483647i), global2.b), abs(-_wgslsmith_sub_i32(_wgslsmith_mult_i32(global3.b, u_input.a), u_input.a)), u_input.e);
    global1 = array<bool, 10>();
    return Struct_2(1u, global2.b, _wgslsmith_f_op_f32(-global2.c));
}

fn func_1() -> Struct_3 {
    global1 = array<bool, 10>();
    global3 = func_3(func_2(select(!(!vec3<bool>(false, false, global1[_wgslsmith_index_u32(0u, 10u)])), vec3<bool>(select(global1[_wgslsmith_index_u32(u_input.b.x, 10u)], true, true), true, true), vec3<bool>(global1[_wgslsmith_index_u32(select(0u, 4294967295u, global1[_wgslsmith_index_u32(4294967295u, 10u)]), 10u)], true, global1[_wgslsmith_index_u32(19500u, 10u)])), _wgslsmith_mult_u32(1u, 1u), 1000f));
    global3 = func_3(func_2(!vec3<bool>(global1[_wgslsmith_index_u32(~1u, 10u)], any(vec3<bool>(global1[_wgslsmith_index_u32(23797u, 10u)], global1[_wgslsmith_index_u32(4294967295u, 10u)], true)), any(vec3<bool>(false, global1[_wgslsmith_index_u32(global2.a, 10u)], global1[_wgslsmith_index_u32(4294967295u, 10u)]))), abs(max(u_input.d, _wgslsmith_mod_u32(global3.a, 33811u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-126f - global2.c))));
    global2 = func_2(!vec3<bool>(true, any(!vec3<bool>(false, false, global1[_wgslsmith_index_u32(0u, 10u)])), !(1493f == global2.c)), _wgslsmith_clamp_u32(~global3.a, ~_wgslsmith_dot_vec2_u32(u_input.c, vec2<u32>(global3.a, 55362u) | u_input.b), 53006u), func_2(vec3<bool>(_wgslsmith_div_f32(442f, global2.c) != _wgslsmith_div_f32(global3.c, global2.c), !all(vec4<bool>(true, true, global1[_wgslsmith_index_u32(1u, 10u)], global1[_wgslsmith_index_u32(1u, 10u)])), any(!vec4<bool>(true, true, global1[_wgslsmith_index_u32(0u, 10u)], true))), ~(~20202u), global2.c).c.c).b;
    var var_0 = func_2(vec3<bool>(any(select(!vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 10u)], false, global1[_wgslsmith_index_u32(u_input.d, 10u)], false), vec4<bool>(false, false, false, global1[_wgslsmith_index_u32(16588u, 10u)]), vec4<bool>(false, global1[_wgslsmith_index_u32(global2.a, 10u)], false, global1[_wgslsmith_index_u32(28322u, 10u)]))), false, all(select(!vec3<bool>(global1[_wgslsmith_index_u32(30258u, 10u)], global1[_wgslsmith_index_u32(u_input.d, 10u)], global1[_wgslsmith_index_u32(global3.a, 10u)]), select(vec3<bool>(global1[_wgslsmith_index_u32(u_input.d, 10u)], global1[_wgslsmith_index_u32(global2.a, 10u)], global1[_wgslsmith_index_u32(global3.a, 10u)]), vec3<bool>(global1[_wgslsmith_index_u32(61831u, 10u)], global1[_wgslsmith_index_u32(1u, 10u)], true), false), all(vec4<bool>(true, global1[_wgslsmith_index_u32(global3.a, 10u)], false, global1[_wgslsmith_index_u32(global2.a, 10u)]))))), abs(_wgslsmith_clamp_u32(global2.a, 2002u, firstLeadingBit(~u_input.b.x))), _wgslsmith_f_op_f32(ceil(-1350f)));
    return func_2(select(vec3<bool>(false, all(vec4<bool>(false, var_0.a, var_0.a, global1[_wgslsmith_index_u32(global2.a, 10u)])), false), select(!vec3<bool>(false, global1[_wgslsmith_index_u32(0u, 10u)], false), !(!vec3<bool>(global1[_wgslsmith_index_u32(0u, 10u)], var_0.a, true)), any(select(vec2<bool>(true, var_0.a), vec2<bool>(var_0.a, false), vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 10u)], false)))), !global1[_wgslsmith_index_u32(max(36762u, ~23603u), 10u)]), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, global3.a, _wgslsmith_div_u32(global3.a >> (52313u % 32u), global3.a)), reverseBits(vec4<u32>(4294967295u, func_3(Struct_3(false, var_0.c, var_0.c, 1393f, global2.b)).a, _wgslsmith_mod_u32(global3.a, u_input.b.x), u_input.d | 41181u))), _wgslsmith_f_op_f32(var_0.b.c + _wgslsmith_f_op_f32(-global2.c)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = func_2(vec3<bool>(true & func_2(!vec3<bool>(true, false, global1[_wgslsmith_index_u32(0u, 10u)]), 0u, -1415f).a, !any(vec3<bool>(global1[_wgslsmith_index_u32(0u, 10u)], false, false)), !all(!vec2<bool>(true, var_0.a))), 1u, global2.c);
    global3 = func_2(!(!vec3<bool>(var_1.a, !var_1.a, false)), global2.a, _wgslsmith_f_op_f32(step(100f, -442f))).c;
    let var_2 = var_1.d;
    global3 = Struct_2(global3.a, var_1.b.b, func_1().b.c);
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(vec2<u32>(~10251u, global2.a) ^ ~abs(u_input.c)), _wgslsmith_dot_vec3_i32(vec3<i32>(global3.b, 2147483647i, _wgslsmith_sub_i32(global3.b, var_1.b.b)), vec3<i32>(_wgslsmith_mult_i32(global2.b, abs(global2.b)), 0i, -2147483647i)), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)))), vec4<i32>(_wgslsmith_mult_i32(reverseBits(_wgslsmith_mult_i32(global3.b, 1i)), 7230i), _wgslsmith_mult_i32(-global2.b, 1i), var_0.b.b, 1i));
}

