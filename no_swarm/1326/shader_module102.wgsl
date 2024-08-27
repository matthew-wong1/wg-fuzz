struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct Struct_3 {
    a: vec2<u32>,
}

struct Struct_4 {
    a: u32,
    b: vec2<i32>,
    c: vec4<i32>,
    d: Struct_3,
    e: Struct_3,
}

struct Struct_5 {
    a: bool,
    b: Struct_4,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 18>;

var<private> global1: array<vec3<u32>, 13> = array<vec3<u32>, 13>(vec3<u32>(1u, 1u, 18788u), vec3<u32>(52413u, 4294967295u, 83384u), vec3<u32>(0u, 0u, 1u), vec3<u32>(35420u, 19104u, 29173u), vec3<u32>(20646u, 11666u, 38727u), vec3<u32>(56811u, 76106u, 4294967295u), vec3<u32>(4294967295u, 0u, 11840u), vec3<u32>(6216u, 88966u, 20008u), vec3<u32>(8534u, 1u, 31189u), vec3<u32>(1u, 28831u, 1u), vec3<u32>(9264u, 1u, 11296u), vec3<u32>(2835u, 4294967295u, 74909u), vec3<u32>(0u, 4294967295u, 55209u));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: f32) -> u32 {
    global1 = array<vec3<u32>, 13>();
    var var_0 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_0, arg_0)) * 1683f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_0, arg_0)))), arg_0, _wgslsmith_f_op_f32(f32(-1f) * -622f), arg_0));
    var var_1 = Struct_5(true, global0[_wgslsmith_index_u32(u_input.b, 18u)], Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, -273f, arg_0, arg_0) * vec4<f32>(1969f, arg_0, var_0.a.x, 2282f)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_0.a.x, 1846f, arg_0, -673f))))), var_0.a, select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true))))));
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(-586f - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.x - 1256f))))), _wgslsmith_f_op_f32(abs(1243f)), -1000f);
    let var_3 = _wgslsmith_f_op_f32(sign(var_1.c.a.x));
    return abs(select(32721u, 0u, (u_input.b ^ u_input.a.x) < (var_1.b.d.a.x >> (4294967295u % 32u))));
}

fn func_2(arg_0: vec4<i32>, arg_1: i32, arg_2: Struct_2, arg_3: Struct_5) -> f32 {
    let var_0 = Struct_1(arg_3.c.a);
    var var_1 = firstTrailingBit(vec2<u32>(0u, _wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(func_3(var_0.a.x), _wgslsmith_mod_u32(arg_3.b.e.a.x, 55654u), _wgslsmith_dot_vec3_u32(u_input.a.xwy, u_input.a.wyy), _wgslsmith_dot_vec2_u32(vec2<u32>(63957u, 0u), vec2<u32>(u_input.b, u_input.b))))));
    var_1 = select(arg_3.b.e.a, select(u_input.a.xw, ~vec2<u32>(1u, var_1.x), !(!vec2<bool>(false, arg_3.a))), vec2<bool>(true, arg_3.a)) << (~max(firstTrailingBit(vec2<u32>(var_1.x, 18392u)), vec2<u32>(10966u, 0u >> (0u % 32u))) % vec2<u32>(32u));
    var var_2 = all(vec3<bool>(arg_3.a, any(!select(vec3<bool>(arg_3.a, true, false), vec3<bool>(true, arg_3.a, true), vec3<bool>(true, true, arg_3.a))), _wgslsmith_div_f32(499f, var_0.a.x) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_3.c.a.x)))));
    global1 = array<vec3<u32>, 13>();
    return -321f;
}

fn func_1(arg_0: i32, arg_1: Struct_4, arg_2: vec4<u32>) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -713f))) < 1f;
    var var_1 = false;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-665f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(~arg_1.c, abs(arg_1.c.x), Struct_2(arg_1.c), Struct_5(true, arg_1, Struct_1(vec4<f32>(-1000f, -1359f, -984f, -467f))))), _wgslsmith_f_op_f32(func_2(arg_1.c, _wgslsmith_dot_vec3_i32(u_input.c.zzx, vec3<i32>(0i, arg_1.c.x, arg_0)), Struct_2(u_input.c), Struct_5(false, global0[_wgslsmith_index_u32(0u, 18u)], Struct_1(vec4<f32>(537f, -515f, 360f, 1000f)))))))));
    var_0 = !any(!vec4<bool>(true, any(vec2<bool>(true, false)), true, u_input.c.x >= u_input.c.x));
    var_0 = true;
    return var_2;
}

fn func_4(arg_0: f32, arg_1: Struct_5) -> vec3<u32> {
    global0 = array<Struct_4, 18>();
    var var_0 = global1[_wgslsmith_index_u32(u_input.a.x, 13u)];
    var_0 = vec3<u32>(_wgslsmith_sub_u32(func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(476f - -1000f) * arg_0)), u_input.b | var_0.x), var_0.x, var_0.x);
    var var_1 = Struct_1(vec4<f32>(arg_0, -321f, _wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.c.a.x + 1039f) + _wgslsmith_f_op_f32(step(972f, -1975f))))));
    var_0 = global1[_wgslsmith_index_u32(~4717u, 13u)];
    return global1[_wgslsmith_index_u32(~arg_1.b.d.a.x ^ 4294967295u, 13u)];
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec3<u32>, 13>();
    let var_0 = Struct_3(~(u_input.a.yz ^ vec2<u32>(_wgslsmith_mod_u32(0u, 49278u), u_input.b)));
    global1 = array<vec3<u32>, 13>();
    global1 = array<vec3<u32>, 13>();
    let var_1 = Struct_2(select(u_input.c, u_input.c, true));
    let var_2 = 56990u & _wgslsmith_dot_vec3_u32(func_4(_wgslsmith_f_op_f32(func_1(var_1.a.x, global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.b, u_input.a.x), 18u)], _wgslsmith_mod_vec4_u32(u_input.a, vec4<u32>(0u, u_input.b, 87672u, 4294967295u)))), Struct_5(all(vec2<bool>(true, true)), Struct_4(5441u, u_input.c.wz, vec4<i32>(-45701i, var_1.a.x, var_1.a.x, var_1.a.x), Struct_3(vec2<u32>(44811u, var_0.a.x)), var_0), Struct_1(vec4<f32>(-879f, -167f, -1044f, -790f)))), vec3<u32>(select(~28596u, var_0.a.x, true), 1u, 49189u));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(_wgslsmith_div_vec3_i32(countOneBits(vec3<i32>(1i, 0i, 8153i)), vec3<i32>(1i, 18966i, 2147483647i) << (global1[_wgslsmith_index_u32(0u, 13u)] % vec3<u32>(32u)))), var_1.a.x);
}

