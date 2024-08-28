struct Struct_1 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 23>;

var<private> global1: Struct_1 = Struct_1(vec2<f32>(-323f, 631f));

var<private> global2: array<vec4<i32>, 3>;

var<private> global3: Struct_1;

var<private> global4: array<Struct_1, 27> = array<Struct_1, 27>(Struct_1(vec2<f32>(905f, 626f)), Struct_1(vec2<f32>(389f, 313f)), Struct_1(vec2<f32>(-670f, -1158f)), Struct_1(vec2<f32>(-172f, 793f)), Struct_1(vec2<f32>(-858f, -1487f)), Struct_1(vec2<f32>(-1000f, -207f)), Struct_1(vec2<f32>(-567f, -1278f)), Struct_1(vec2<f32>(-132f, -377f)), Struct_1(vec2<f32>(-532f, -289f)), Struct_1(vec2<f32>(-1336f, 828f)), Struct_1(vec2<f32>(-103f, 331f)), Struct_1(vec2<f32>(1455f, -678f)), Struct_1(vec2<f32>(572f, -291f)), Struct_1(vec2<f32>(-136f, 1289f)), Struct_1(vec2<f32>(574f, 1398f)), Struct_1(vec2<f32>(853f, 882f)), Struct_1(vec2<f32>(150f, -951f)), Struct_1(vec2<f32>(310f, 622f)), Struct_1(vec2<f32>(-370f, 815f)), Struct_1(vec2<f32>(145f, -1000f)), Struct_1(vec2<f32>(-1000f, -425f)), Struct_1(vec2<f32>(1901f, -109f)), Struct_1(vec2<f32>(-554f, -240f)), Struct_1(vec2<f32>(-1511f, 1136f)), Struct_1(vec2<f32>(711f, 1427f)), Struct_1(vec2<f32>(1103f, 166f)), Struct_1(vec2<f32>(-530f, 528f)));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_1(arg_0: vec2<i32>, arg_1: vec2<bool>) -> u32 {
    let var_0 = global4[_wgslsmith_index_u32(~(21446u >> (u_input.b % 32u)), 27u)];
    let var_1 = 0i;
    let var_2 = u_input.a.xx;
    let var_3 = _wgslsmith_mult_i32(max(_wgslsmith_dot_vec3_i32(u_input.a.wyx >> (abs(vec3<u32>(u_input.c, u_input.b, u_input.b)) % vec3<u32>(32u)), ~u_input.a.wzw & reverseBits(vec3<i32>(1i, var_2.x, arg_0.x))), _wgslsmith_mult_i32(1i >> (min(u_input.c, u_input.c) % 32u), 1i)), select(global0[_wgslsmith_index_u32(u_input.c, 23u)], 1i, arg_1.x));
    var var_4 = global4[_wgslsmith_index_u32(20728u, 27u)];
    return ~(~_wgslsmith_add_u32(~0u & _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 0u), vec2<u32>(20700u, 4294967295u)), _wgslsmith_sub_u32(u_input.b, _wgslsmith_mult_u32(59724u, 1u))));
}

fn func_3(arg_0: u32) -> i32 {
    var var_0 = global4[_wgslsmith_index_u32(~(~27578u), 27u)];
    global4 = array<Struct_1, 27>();
    let var_1 = global4[_wgslsmith_index_u32(arg_0, 27u)];
    let var_2 = 57829i;
    var_0 = global4[_wgslsmith_index_u32(~arg_0, 27u)];
    return 2147483647i;
}

fn func_2(arg_0: u32) -> Struct_1 {
    global1 = Struct_1(_wgslsmith_f_op_vec2_f32(-global3.a));
    let var_0 = _wgslsmith_div_u32(~arg_0, arg_0 >> ((func_1(vec2<i32>(38397i, u_input.a.x), vec2<bool>(false, false)) ^ ~0u) % 32u)) ^ 56798u;
    let var_1 = vec3<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global3.a.x))) - _wgslsmith_f_op_f32(abs(global1.a.x))) == global3.a.x, abs(var_0) > 1u, _wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(global0[_wgslsmith_index_u32(var_0 << (u_input.b % 32u), 23u)], u_input.a.x, 1i, 1i)) <= func_3(abs(12163u ^ u_input.c)));
    let var_2 = Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global1.a) - vec2<f32>(1853f, global1.a.x)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(global1.a, global1.a)))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.a.x - 635f) + -1110f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a.x * global3.a.x)))));
    var var_3 = _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-1505f)), -764f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(global3.a.x)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a.x))), _wgslsmith_f_op_f32(-var_2.a.x), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global1.a.x)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-879f, -741f, global1.a.x, var_2.a.x)), select(vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), vec4<bool>(var_1.x, true, false, var_1.x), vec4<bool>(false, var_1.x, var_1.x, var_1.x)))) + _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global1.a.x, global3.a.x, -809f, var_2.a.x)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.a.x, -351f, -448f, global3.a.x) + vec4<f32>(var_2.a.x, global3.a.x, -354f, 2258f)))))));
    return Struct_1(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_2.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1229f - global3.a.x) - _wgslsmith_f_op_f32(var_2.a.x * -151f))))));
}

fn func_4(arg_0: Struct_1) -> f32 {
    let var_0 = vec2<bool>(!(any(vec4<bool>(false, true, true, true)) && true), u_input.c >= max(76118u, 1u));
    return arg_0.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(func_4(func_2(_wgslsmith_sub_u32(1u, func_1(vec2<i32>(u_input.a.x, 2701i), vec2<bool>(true, false)))))), _wgslsmith_div_f32(-921f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1240f) + global3.a.x) + -1000f)), _wgslsmith_f_op_f32(119f + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global3.a.x * _wgslsmith_f_op_f32(1000f * 819f))))));
    global4 = array<Struct_1, 27>();
    var var_1 = vec3<u32>(4294967295u, ~_wgslsmith_mult_u32(16327u ^ u_input.b, ~u_input.c), _wgslsmith_div_u32(reverseBits(u_input.b), u_input.b)) >> (_wgslsmith_div_vec3_u32(_wgslsmith_div_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(50921u, 7194u, u_input.b), vec3<u32>(33481u, u_input.b, 4294967295u) | vec3<u32>(17783u, 55150u, 0u)), (vec3<u32>(38875u, u_input.b, 3832u) ^ vec3<u32>(46917u, 0u, u_input.b)) << (~vec3<u32>(8645u, u_input.c, u_input.c) % vec3<u32>(32u))), (_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, 1u, 0u), vec3<u32>(u_input.c, 4294967295u, u_input.b)) << (reverseBits(vec3<u32>(1u, u_input.b, u_input.b)) % vec3<u32>(32u))) & vec3<u32>(max(u_input.b, 4294967295u), ~u_input.c, u_input.b)) % vec3<u32>(32u));
    var var_2 = func_2(~_wgslsmith_dot_vec4_u32(vec4<u32>(35045u, 33849u, u_input.c, 0u), vec4<u32>(1u, ~var_1.x, max(1u, 4294967295u), ~28795u)));
    let var_3 = _wgslsmith_mod_vec2_u32(var_1.xz, abs(var_1.zx));
    global0 = array<i32, 23>();
    let var_4 = func_2(1u);
    var_1 = abs(vec3<u32>(0u, ~u_input.c & max(~var_1.x, var_3.x | var_1.x), _wgslsmith_mod_u32(4294967295u, ~countOneBits(var_3.x))));
    let var_5 = func_2(~u_input.c);
    let x = u_input.a;
    s_output = StorageBuffer(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(func_1(vec2<i32>(-1i, 19492i), vec2<bool>(true, true)), abs(abs(1u)), select(_wgslsmith_add_u32(var_1.x, 4294967295u), _wgslsmith_dot_vec3_u32(vec3<u32>(7342u, 4294967295u, 0u), vec3<u32>(4294967295u, 4294967295u, 12823u)), true), var_3.x), ~_wgslsmith_sub_vec4_u32(vec4<u32>(0u, 1u, 0u, u_input.b) & vec4<u32>(1u, 4294967295u, 38421u, 0u), ~vec4<u32>(u_input.c, 15730u, var_1.x, u_input.c))), 3u)]);
}

