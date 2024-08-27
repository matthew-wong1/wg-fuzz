struct Struct_1 {
    a: vec3<u32>,
    b: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_1,
    c: vec3<i32>,
}

struct Struct_4 {
    a: bool,
    b: f32,
}

struct Struct_5 {
    a: vec3<f32>,
    b: Struct_2,
    c: Struct_2,
    d: i32,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec4<i32>,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 15>;

var<private> global1: array<vec3<f32>, 29>;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_1() -> u32 {
    return 0u;
}

fn func_3(arg_0: Struct_4, arg_1: vec4<u32>, arg_2: vec3<f32>, arg_3: vec3<bool>) -> vec3<u32> {
    return arg_1.yyw << (vec3<u32>(u_input.b, min(41890u, 44106u), _wgslsmith_dot_vec4_u32(arg_1 | ~arg_1, _wgslsmith_add_vec4_u32(arg_1, countOneBits(vec4<u32>(u_input.b, u_input.b, u_input.b, arg_1.x))))) % vec3<u32>(32u));
}

fn func_2(arg_0: Struct_5) -> Struct_4 {
    var var_0 = u_input.c.zx;
    global1 = array<vec3<f32>, 29>();
    let var_1 = Struct_2(Struct_1(~arg_0.c.a.a, select(vec3<u32>(31911u, 40381u, u_input.b), func_3(Struct_4(true, arg_0.a.x), min(vec4<u32>(arg_0.b.a.a.x, 6533u, arg_0.c.b.a.x, 20876u), vec4<u32>(0u, 4294967295u, u_input.b, 95477u)), vec3<f32>(-690f, -444f, arg_0.a.x), select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(false, false, false))), ~u_input.b != ~9828u)), Struct_1(~arg_0.c.c.a, ~vec3<u32>(26879u, ~arg_0.c.b.a.x, u_input.b)), arg_0.c.b);
    global0 = array<vec4<f32>, 15>();
    var_0 = _wgslsmith_sub_vec2_i32(~u_input.d, ~(u_input.c.yx & _wgslsmith_add_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(-1i, var_0.x), vec2<i32>(u_input.c.x, var_0.x)), ~vec2<i32>(-8627i, var_0.x))));
    return Struct_4(any(vec2<bool>(true, true)), arg_0.a.x);
}

fn func_4(arg_0: vec3<bool>, arg_1: bool, arg_2: vec4<f32>, arg_3: Struct_4) -> u32 {
    global0 = array<vec4<f32>, 15>();
    let var_0 = arg_3;
    return u_input.b;
}

fn func_5(arg_0: u32, arg_1: bool, arg_2: Struct_5) -> StorageBuffer {
    let var_0 = _wgslsmith_f_op_f32(-608f + _wgslsmith_f_op_f32(func_2(Struct_5(_wgslsmith_f_op_vec3_f32(-vec3<f32>(604f, -1544f, arg_2.a.x)), Struct_2(arg_2.c.b, arg_2.b.a, Struct_1(arg_2.c.a.b, vec3<u32>(57095u, arg_0, arg_0))), Struct_2(Struct_1(arg_2.b.c.a, arg_2.b.b.b), arg_2.b.b, arg_2.b.a), u_input.e, vec4<i32>(-1i, arg_2.d, 2147483647i, arg_2.e.x) & vec4<i32>(arg_2.d, u_input.d.x, u_input.e, arg_2.e.x))).b * 1415f));
    return StorageBuffer(reverseBits(_wgslsmith_mod_vec2_i32(u_input.a, vec2<i32>(65106i, -1i & u_input.a.x))), vec3<u32>(~_wgslsmith_dot_vec2_u32(arg_2.c.a.b.zz, ~vec2<u32>(arg_2.b.b.a.x, 0u)), min(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(arg_2.b.b.a.x, 1u)), 99277u) & ~(0u & arg_2.b.a.b.x), arg_0), 1u, _wgslsmith_div_f32(-1319f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_2.a.x)) * _wgslsmith_f_op_f32(exp2(var_0))))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec3<f32>, 29>();
    var var_0 = global1[_wgslsmith_index_u32(abs(func_1()), 29u)];
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), 742f) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-163f, var_0.x))));
    global1 = array<vec3<f32>, 29>();
    var_0 = global1[_wgslsmith_index_u32(~64677u, 29u)];
    let x = u_input.a;
    s_output = func_5(min(_wgslsmith_add_u32(min(reverseBits(63811u), abs(54817u)), u_input.b), func_4(vec3<bool>(any(vec4<bool>(true, true, true, true)), all(vec4<bool>(false, true, true, true)), true), all(vec3<bool>(false, false, false)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global0[_wgslsmith_index_u32(1u, 15u)] * vec4<f32>(-1107f, var_0.x, var_0.x, -1153f))), func_2(Struct_5(vec3<f32>(var_1, 1009f, var_1), Struct_2(Struct_1(vec3<u32>(u_input.b, 4294967295u, u_input.b), vec3<u32>(3973u, 4294967295u, u_input.b)), Struct_1(vec3<u32>(39301u, 4294967295u, u_input.b), vec3<u32>(4294967295u, u_input.b, u_input.b)), Struct_1(vec3<u32>(0u, u_input.b, u_input.b), vec3<u32>(u_input.b, 21947u, 4625u))), Struct_2(Struct_1(vec3<u32>(1u, u_input.b, u_input.b), vec3<u32>(u_input.b, u_input.b, u_input.b)), Struct_1(vec3<u32>(0u, u_input.b, u_input.b), vec3<u32>(1u, 45974u, 0u)), Struct_1(vec3<u32>(46794u, 0u, u_input.b), vec3<u32>(u_input.b, 1u, u_input.b))), u_input.a.x, vec4<i32>(u_input.a.x, u_input.a.x, u_input.d.x, u_input.a.x))))), select(~u_input.a.x != 2147483647i, all(vec2<bool>(98039u != u_input.b, false)), all(!select(vec2<bool>(false, true), vec2<bool>(true, true), true))), Struct_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global1[_wgslsmith_index_u32(27775u | u_input.b, 29u)] - vec3<f32>(var_0.x, var_0.x, var_0.x))), Struct_2(Struct_1(max(vec3<u32>(4294967295u, 4294967295u, 18502u), vec3<u32>(u_input.b, u_input.b, u_input.b)), ~vec3<u32>(u_input.b, 1u, 1u)), Struct_1(vec3<u32>(36636u, u_input.b, u_input.b) ^ vec3<u32>(u_input.b, 0u, 27909u), vec3<u32>(u_input.b, u_input.b, 25153u) & vec3<u32>(u_input.b, 12057u, u_input.b)), Struct_1(vec3<u32>(u_input.b, u_input.b, 55177u) & vec3<u32>(0u, 4294967295u, 4294967295u), vec3<u32>(5796u, u_input.b, 0u) | vec3<u32>(u_input.b, 4294967295u, u_input.b))), Struct_2(Struct_1(~vec3<u32>(u_input.b, u_input.b, u_input.b), func_3(Struct_4(true, var_0.x), vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b), global1[_wgslsmith_index_u32(37109u, 29u)], vec3<bool>(false, false, false))), Struct_1(vec3<u32>(0u, 1u, u_input.b) >> (vec3<u32>(27957u, 45966u, 1u) % vec3<u32>(32u)), _wgslsmith_mod_vec3_u32(vec3<u32>(16864u, u_input.b, 4294967295u), vec3<u32>(0u, 4294967295u, 91254u))), Struct_1(_wgslsmith_add_vec3_u32(vec3<u32>(3299u, u_input.b, u_input.b), vec3<u32>(0u, 42633u, 62807u)), ~vec3<u32>(12270u, 34855u, u_input.b))), countOneBits(-u_input.e >> (0u % 32u)), -reverseBits(_wgslsmith_sub_vec4_i32(u_input.c, vec4<i32>(68673i, 25132i, u_input.c.x, -25883i)))));
}

