struct Struct_1 {
    a: u32,
    b: vec4<f32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec2<bool>,
    d: bool,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_2,
    c: i32,
    d: Struct_1,
}

struct Struct_4 {
    a: vec2<bool>,
    b: Struct_3,
    c: bool,
}

struct Struct_5 {
    a: Struct_4,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec3<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 23>;

var<private> global1: Struct_1 = Struct_1(15347u, vec4<f32>(-1000f, 384f, 447f, -1577f));

var<private> global2: array<bool, 20> = array<bool, 20>(false, false, true, true, false, false, false, true, false, false, true, true, true, true, true, false, false, false, true, true);

var<private> global3: Struct_5;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
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

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: i32, arg_1: vec3<bool>, arg_2: u32, arg_3: vec4<f32>) -> vec2<bool> {
    var var_0 = true;
    global2 = array<bool, 20>();
    var var_1 = vec4<i32>(global3.a.b.c, 2147483647i, firstTrailingBit(u_input.b), 18538i);
    global3 = Struct_5(global3.a);
    var var_2 = true;
    return vec2<bool>((10101i ^ (~arg_0 | arg_0)) >= reverseBits(countOneBits(~(-13614i))), global3.a.b.b.c.x);
}

fn func_2() -> u32 {
    var var_0 = global3.a.b.b.c;
    global3 = Struct_5(Struct_4(select(select(global3.a.b.b.c, func_3(-2147483647i, vec3<bool>(false, true, global3.a.a.x), 30508u, vec4<f32>(global1.b.x, global1.b.x, global3.a.b.b.e.b.x, global3.a.b.d.b.x)), select(vec2<bool>(global2[_wgslsmith_index_u32(0u, 20u)], false), global3.a.a, var_0.x)), func_3(4275i, vec3<bool>(false, false, global2[_wgslsmith_index_u32(4294967295u, 20u)]), global3.a.b.d.a, _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.b.x, global1.b.x, -425f, 126f) * global1.b)), vec2<bool>(var_0.x, false)), Struct_3(~(~global3.a.b.a), Struct_2(_wgslsmith_f_op_f32(-global1.b.x), Struct_1(global3.a.b.b.e.a, global3.a.b.d.b), select(global3.a.b.b.c, global3.a.a, global3.a.a), true, Struct_1(59572u, global1.b)), 1i, global3.a.b.b.e), true));
    global1 = global3.a.b.b.b;
    global3 = Struct_5(Struct_4(vec2<bool>(var_0.x, false), Struct_3(_wgslsmith_clamp_vec2_u32(global3.a.b.a, u_input.d.yz, vec2<u32>(global3.a.b.b.b.a, 94997u)) | u_input.d.yz, Struct_2(global3.a.b.b.a, global3.a.b.b.e, !global3.a.b.b.c, false, global3.a.b.b.e), u_input.b & reverseBits(35712i), global3.a.b.b.b), any(vec4<bool>(true, global3.a.b.b.d, true, all(vec3<bool>(global3.a.b.b.d, global3.a.c, global3.a.b.b.d))))));
    var_0 = global3.a.b.b.c;
    return 0u;
}

fn func_4(arg_0: u32, arg_1: f32, arg_2: vec3<bool>) -> Struct_4 {
    let var_0 = vec2<u32>(~4294967295u, ~global3.a.b.a.x);
    global2 = array<bool, 20>();
    let var_1 = vec4<bool>(false, !all(select(vec2<bool>(global2[_wgslsmith_index_u32(u_input.d.x, 20u)], global2[_wgslsmith_index_u32(55871u, 20u)]), vec2<bool>(false, global3.a.a.x), false)) && true, arg_2.x, false);
    let var_2 = !vec3<bool>(var_1.x, true, !global3.a.c);
    global0 = array<Struct_3, 23>();
    return Struct_4(vec2<bool>(global2[_wgslsmith_index_u32(global3.a.b.d.a, 20u)], true), Struct_3(global3.a.b.a, global3.a.b.b, _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, global3.a.b.c, 95635i) >> (vec3<u32>(15236u, u_input.d.x, 1u) % vec3<u32>(32u)), vec3<i32>(_wgslsmith_mod_i32(60140i, 1i), ~(-19679i), -33207i)), Struct_1(countOneBits(~20009u), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.b.x, 668f, 1754f, -531f)))))), any(vec3<bool>(global3.a.b.b.d, var_2.x, true)));
}

fn func_1(arg_0: vec4<u32>, arg_1: Struct_4, arg_2: u32) -> Struct_2 {
    let var_0 = vec2<u32>(~u_input.a, _wgslsmith_mult_u32(1u, ~(~arg_1.b.d.a ^ ~global1.a)));
    let var_1 = func_4(func_2(), _wgslsmith_f_op_f32(f32(-1f) * -758f), vec3<bool>(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_mult_u32(global1.a, abs(arg_2)), 4294967295u), 20u)], false, -567f <= global3.a.b.b.b.b.x));
    let var_2 = arg_1.b.b;
    let var_3 = func_4(83966u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_1.b.d.b.x)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(global3.a.b.b.e.b.x)), 164f)), !vec3<bool>(var_2.d, !var_2.d | true, any(func_3(var_1.b.c, vec3<bool>(false, var_1.a.x, false), 1u, global3.a.b.b.e.b)))).b;
    global1 = func_4(~countOneBits(~var_0.x), var_2.b.b.x, !(!vec3<bool>(any(vec4<bool>(var_1.b.b.d, var_3.b.d, var_2.c.x, false)), var_1.b.b.d, u_input.e >= 101509u))).b.d;
    return func_4(_wgslsmith_dot_vec3_u32(~firstTrailingBit(countOneBits(vec3<u32>(10711u, 0u, 0u))), max(arg_0.yzx, u_input.d)), -440f, !(!(!vec3<bool>(var_2.d, var_1.b.b.c.x, var_3.b.d)))).b.b;
}

fn func_5(arg_0: Struct_3, arg_1: Struct_2, arg_2: f32) -> Struct_1 {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1057f), _wgslsmith_f_op_f32(select(716f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global1.b.x + arg_0.b.e.b.x))))), !(_wgslsmith_f_op_f32(floor(arg_1.b.b.x)) != global1.b.x))));
    var var_1 = Struct_5(global3.a);
    var var_2 = arg_0.d;
    var var_3 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(func_4(~var_1.a.b.d.a, _wgslsmith_f_op_f32(arg_1.a * 2017f), select(vec3<bool>(true, true, false), vec3<bool>(global3.a.b.b.d, true, true), vec3<bool>(arg_0.b.d, var_1.a.a.x, true))).b.d.b.x - _wgslsmith_f_op_f32(f32(-1f) * -835f)), var_0.x) + _wgslsmith_f_op_vec2_f32(sign(func_1(select(vec4<u32>(68124u, arg_1.b.a, global3.a.b.a.x, global3.a.b.d.a), select(vec4<u32>(arg_1.e.a, 1u, u_input.e, u_input.d.x), vec4<u32>(88143u, arg_1.e.a, var_1.a.b.a.x, global3.a.b.b.e.a), vec4<bool>(arg_1.d, true, var_1.a.a.x, global3.a.b.b.d)), true), Struct_4(func_3(arg_0.c, vec3<bool>(global3.a.c, global2[_wgslsmith_index_u32(7431u, 20u)], global2[_wgslsmith_index_u32(45107u, 20u)]), var_2.a, vec4<f32>(arg_1.b.b.x, global1.b.x, 416f, -213f)), Struct_3(vec2<u32>(4294967295u, 50577u), global3.a.b.b, u_input.b, global3.a.b.d), var_1.a.c), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.b.e.a, global1.a, var_1.a.b.b.b.a, 7774u), vec4<u32>(1u, global3.a.b.b.e.a, u_input.e, 0u)) ^ _wgslsmith_sub_u32(4294967295u, 0u)).e.b.wx)));
    global0 = array<Struct_3, 23>();
    return var_1.a.b.d;
}

fn func_6(arg_0: Struct_2, arg_1: f32, arg_2: Struct_5) -> StorageBuffer {
    var var_0 = Struct_5(Struct_4(vec2<bool>(false, any(select(vec3<bool>(false, false, true), vec3<bool>(arg_0.d, arg_0.c.x, true), arg_2.a.c))), global0[_wgslsmith_index_u32(select(func_1(_wgslsmith_sub_vec4_u32(vec4<u32>(global3.a.b.a.x, global1.a, u_input.e, 1u), vec4<u32>(99219u, u_input.c, global1.a, global1.a)), func_4(global3.a.b.a.x, arg_2.a.b.d.b.x, vec3<bool>(arg_2.a.b.b.c.x, false, arg_0.d)), _wgslsmith_mod_u32(global3.a.b.b.b.a, 30715u)).e.a, func_5(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.d, vec3<u32>(1u, 89568u, 1u)), 23u)], Struct_2(arg_0.a, Struct_1(global3.a.b.b.e.a, global1.b), arg_2.a.b.b.c, arg_0.d, Struct_1(0u, global3.a.b.b.e.b)), -2125f).a, arg_2.a.a.x), 23u)], !global2[_wgslsmith_index_u32(func_2(), 20u)]));
    global1 = global3.a.b.b.e;
    var var_1 = select(vec4<bool>(false, !(!arg_0.c.x), false, arg_0.c.x), !vec4<bool>(!global2[_wgslsmith_index_u32(4294967295u, 20u)] && true, false, arg_2.a.a.x, false), !select(!(!vec4<bool>(false, false, false, global3.a.a.x)), vec4<bool>(false & var_0.a.a.x, func_4(97872u, 522f, vec3<bool>(global2[_wgslsmith_index_u32(var_0.a.b.b.b.a, 20u)], true, arg_0.d)).a.x, false, var_0.a.a.x), global3.a.a.x));
    var var_2 = u_input.d.zx;
    var_2 = ~vec2<u32>(1u, 0u);
    return StorageBuffer(~countOneBits(select(select(vec2<u32>(arg_2.a.b.b.b.a, 0u), vec2<u32>(46852u, 21795u), arg_0.c.x), vec2<u32>(arg_2.a.b.a.x, 37698u), var_0.a.a)), global1.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global1.b.x, 1000f, global1.b.x))) - _wgslsmith_div_vec3_f32(global3.a.b.d.b.wzy, _wgslsmith_f_op_vec3_f32(-vec3<f32>(1075f, -1000f, global1.b.x))))));
    global2 = array<bool, 20>();
    var var_1 = Struct_2(1000f, Struct_1(4294967295u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(global3.a.b.d.b))))), !vec2<bool>(true, any(vec3<bool>(false, global3.a.b.b.d, global3.a.b.b.d))), false, Struct_1(~firstLeadingBit(global1.a), _wgslsmith_f_op_vec4_f32(-global3.a.b.b.b.b)));
    global0 = array<Struct_3, 23>();
    let x = u_input.a;
    s_output = func_6(Struct_2(var_1.b.b.x, Struct_1(4937u, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.b.x, 2511f, 1000f, 142f)) * _wgslsmith_f_op_vec4_f32(max(global1.b, vec4<f32>(947f, 816f, var_0.x, -2710f))))), global3.a.b.b.c, any(!vec3<bool>(global2[_wgslsmith_index_u32(var_1.b.a, 20u)], global2[_wgslsmith_index_u32(1u, 20u)], var_1.d)), func_5(Struct_3(~global3.a.b.a, Struct_2(var_0.x, var_1.e, vec2<bool>(var_1.d, global3.a.b.b.d), false, global3.a.b.b.b), u_input.b, Struct_1(global3.a.b.b.e.a, global1.b)), func_1(_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, var_1.e.a, 4294967295u, 4283u), vec4<u32>(var_1.e.a, 2248u, var_1.b.a, var_1.e.a)), global3.a, ~u_input.d.x), func_4(reverseBits(u_input.c), -918f, vec3<bool>(global3.a.a.x, global3.a.b.b.c.x, global2[_wgslsmith_index_u32(16656u, 20u)])).b.d.b.x)), 326f, Struct_5(global3.a));
}

