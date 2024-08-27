struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec3<f32>,
    c: Struct_1,
    d: vec2<u32>,
}

struct Struct_4 {
    a: f32,
    b: vec4<bool>,
}

struct Struct_5 {
    a: vec4<bool>,
    b: u32,
    c: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<f32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 10> = array<Struct_4, 10>(Struct_4(965f, vec4<bool>(true, false, false, true)), Struct_4(1358f, vec4<bool>(false, false, true, false)), Struct_4(-651f, vec4<bool>(true, true, false, false)), Struct_4(-336f, vec4<bool>(false, true, false, true)), Struct_4(-126f, vec4<bool>(false, false, true, false)), Struct_4(-860f, vec4<bool>(true, true, true, false)), Struct_4(1000f, vec4<bool>(true, false, true, false)), Struct_4(784f, vec4<bool>(false, false, false, false)), Struct_4(-2342f, vec4<bool>(false, false, false, false)), Struct_4(-887f, vec4<bool>(false, true, false, true)));

var<private> global1: array<Struct_4, 3> = array<Struct_4, 3>(Struct_4(907f, vec4<bool>(false, true, true, false)), Struct_4(-2228f, vec4<bool>(false, true, false, true)), Struct_4(1000f, vec4<bool>(true, true, false, false)));

var<private> global2: array<Struct_5, 31> = array<Struct_5, 31>(Struct_5(vec4<bool>(false, true, true, false), 4294967295u, 1u), Struct_5(vec4<bool>(false, true, false, true), 35387u, 0u), Struct_5(vec4<bool>(true, true, false, true), 1u, 39176u), Struct_5(vec4<bool>(false, false, false, true), 56758u, 4294967295u), Struct_5(vec4<bool>(true, false, true, false), 36621u, 10370u), Struct_5(vec4<bool>(true, true, false, true), 0u, 4294967295u), Struct_5(vec4<bool>(true, false, false, false), 1u, 3942u), Struct_5(vec4<bool>(true, true, true, true), 1u, 0u), Struct_5(vec4<bool>(false, false, true, false), 1u, 68568u), Struct_5(vec4<bool>(false, true, true, false), 29844u, 15897u), Struct_5(vec4<bool>(true, false, true, true), 39202u, 4294967295u), Struct_5(vec4<bool>(true, true, true, false), 0u, 37215u), Struct_5(vec4<bool>(true, true, true, true), 0u, 64u), Struct_5(vec4<bool>(false, false, false, true), 1u, 1u), Struct_5(vec4<bool>(true, true, true, true), 2574u, 4294967295u), Struct_5(vec4<bool>(true, false, false, true), 4294967295u, 1u), Struct_5(vec4<bool>(false, true, false, false), 33188u, 32374u), Struct_5(vec4<bool>(false, true, false, false), 0u, 1u), Struct_5(vec4<bool>(true, false, true, false), 1u, 1u), Struct_5(vec4<bool>(true, false, true, false), 1u, 1029u), Struct_5(vec4<bool>(false, true, true, true), 57951u, 1u), Struct_5(vec4<bool>(true, true, true, true), 29390u, 1u), Struct_5(vec4<bool>(true, true, false, false), 7779u, 1u), Struct_5(vec4<bool>(false, true, false, false), 1u, 36114u), Struct_5(vec4<bool>(false, false, false, true), 4294967295u, 18801u), Struct_5(vec4<bool>(true, false, true, true), 13408u, 1u), Struct_5(vec4<bool>(true, true, false, true), 0u, 4294967295u), Struct_5(vec4<bool>(false, true, false, false), 2463u, 4294967295u), Struct_5(vec4<bool>(false, true, true, false), 0u, 4294967295u), Struct_5(vec4<bool>(false, false, false, true), 5249u, 26686u), Struct_5(vec4<bool>(false, true, false, true), 1u, 1u));

var<private> global3: array<f32, 20>;

var<private> global4: array<Struct_5, 31> = array<Struct_5, 31>(Struct_5(vec4<bool>(true, false, false, true), 23095u, 4294967295u), Struct_5(vec4<bool>(false, false, false, true), 0u, 4294967295u), Struct_5(vec4<bool>(false, false, true, false), 4294967295u, 1624u), Struct_5(vec4<bool>(true, true, true, false), 105374u, 27835u), Struct_5(vec4<bool>(true, false, true, true), 102786u, 34227u), Struct_5(vec4<bool>(true, true, false, true), 4294967295u, 108541u), Struct_5(vec4<bool>(false, true, false, false), 0u, 1u), Struct_5(vec4<bool>(true, false, false, false), 1u, 11372u), Struct_5(vec4<bool>(false, false, true, true), 4294967295u, 1u), Struct_5(vec4<bool>(false, true, true, false), 1u, 15519u), Struct_5(vec4<bool>(false, true, false, true), 19324u, 62230u), Struct_5(vec4<bool>(true, true, true, false), 24905u, 4294967295u), Struct_5(vec4<bool>(true, true, true, false), 4294967295u, 4294967295u), Struct_5(vec4<bool>(true, true, true, false), 1u, 5956u), Struct_5(vec4<bool>(true, false, false, true), 45311u, 58503u), Struct_5(vec4<bool>(false, false, true, true), 4294967295u, 4294967295u), Struct_5(vec4<bool>(true, true, false, true), 4294967295u, 3468u), Struct_5(vec4<bool>(true, false, true, false), 27901u, 0u), Struct_5(vec4<bool>(true, false, false, true), 4294967295u, 4294967295u), Struct_5(vec4<bool>(false, true, true, false), 0u, 4294967295u), Struct_5(vec4<bool>(true, false, false, false), 35871u, 1u), Struct_5(vec4<bool>(false, false, false, false), 1748u, 4294967295u), Struct_5(vec4<bool>(false, false, true, true), 1u, 94969u), Struct_5(vec4<bool>(false, false, true, true), 12068u, 4852u), Struct_5(vec4<bool>(true, false, true, false), 0u, 0u), Struct_5(vec4<bool>(false, false, false, true), 0u, 4294967295u), Struct_5(vec4<bool>(false, true, true, false), 11669u, 0u), Struct_5(vec4<bool>(true, true, true, false), 70572u, 0u), Struct_5(vec4<bool>(false, false, false, false), 1u, 15568u), Struct_5(vec4<bool>(true, true, false, false), 1u, 1362u), Struct_5(vec4<bool>(false, true, false, true), 4294967295u, 4294967295u));

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: Struct_3, arg_1: vec2<u32>, arg_2: vec2<u32>, arg_3: bool) -> vec2<u32> {
    global3 = array<f32, 20>();
    return vec2<u32>(arg_2.x, abs(~0u));
}

fn func_2(arg_0: Struct_2) -> Struct_1 {
    var var_0 = global0[_wgslsmith_index_u32(u_input.b, 10u)];
    let var_1 = arg_0;
    return Struct_1(select(vec2<u32>(u_input.b, u_input.b) ^ ~func_3(Struct_3(vec2<u32>(1u, 1u), vec3<f32>(var_0.a, var_0.a, var_0.a), Struct_1(vec2<u32>(u_input.b, u_input.b)), vec2<u32>(51441u, 0u)), vec2<u32>(u_input.b, u_input.b), vec2<u32>(u_input.b, u_input.b), var_1.a.x), _wgslsmith_div_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(17395u, 60169u), vec2<u32>(20174u, u_input.b)), firstLeadingBit(~vec2<u32>(31283u, u_input.b))), var_0.b.x));
}

fn func_1(arg_0: Struct_5) -> u32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global3[_wgslsmith_index_u32(arg_0.c, 20u)], global3[_wgslsmith_index_u32(u_input.b, 20u)], 1181f) + vec3<f32>(global3[_wgslsmith_index_u32(arg_0.c, 20u)], -300f, 605f)))))));
    global2 = array<Struct_5, 31>();
    let var_1 = firstTrailingBit(vec3<u32>(~u_input.b | _wgslsmith_add_u32(1u, ~u_input.b), min(~u_input.b, u_input.b), max(firstLeadingBit(u_input.b), 0u)));
    global4 = array<Struct_5, 31>();
    let var_2 = func_2(Struct_2(vec4<bool>(all(!arg_0.a), true, !arg_0.a.x, arg_0.a.x || true)));
    return _wgslsmith_div_u32(arg_0.b, 1u) >> (var_2.a.x % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<f32, 20>();
    global2 = array<Struct_5, 31>();
    let var_0 = Struct_3(vec2<u32>(~reverseBits(~88066u), _wgslsmith_mult_u32(u_input.b, u_input.b >> (11701u % 32u)) >> (u_input.b % 32u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3[_wgslsmith_index_u32(0u, 20u)], 1578f, global3[_wgslsmith_index_u32(u_input.b, 20u)])), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3[_wgslsmith_index_u32(46270u, 20u)], global3[_wgslsmith_index_u32(u_input.b, 20u)], -1416f))))) - vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -312f)), _wgslsmith_f_op_f32(step(1000f, -533f)), 1176f)), Struct_1(~min(_wgslsmith_mod_vec2_u32(vec2<u32>(45288u, 28525u), vec2<u32>(70264u, u_input.b)), ~vec2<u32>(1u, 8265u))), vec2<u32>(u_input.b ^ max(abs(24274u), 89398u), ~func_1(Struct_5(vec4<bool>(true, false, true, true), u_input.b, 4294967295u))));
    var var_1 = !select(vec4<bool>(!(1u < var_0.c.a.x), any(vec3<bool>(true, true, true)), any(vec3<bool>(true, false, false)) | true, all(select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true), true))), vec4<bool>(all(vec3<bool>(true, true, true)), false, any(vec3<bool>(true, false, false)), true), select(select(select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false)), vec4<bool>(false, false, false, true), select(false, true, true)), select(vec4<bool>(false, true, false, false), select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, true)), select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, true), false)), vec4<bool>(true, true, true, true)));
    let var_2 = Struct_2(select(vec4<bool>(any(!vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x)), var_1.x, false, all(!vec4<bool>(false, var_1.x, false, var_1.x))), select(!select(vec4<bool>(var_1.x, false, true, true), vec4<bool>(true, var_1.x, var_1.x, var_1.x), var_1.x), select(!vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), !vec4<bool>(var_1.x, true, var_1.x, false), 2160i <= u_input.a.x), !(!vec4<bool>(var_1.x, true, false, false))), var_1.x));
    global1 = array<Struct_4, 3>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(var_0.b.x * 552f), global3[_wgslsmith_index_u32(var_0.d.x, 20u)], -637f)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1829f, 831f, var_0.b.x)), var_0.b, !var_2.a.xyx))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(var_0.a.x, 20u)] * 961f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(870f, -1000f))), -737f)), _wgslsmith_f_op_f32(-var_0.b.x)), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1015f, -955f, _wgslsmith_f_op_f32(f32(-1f) * -496f), var_0.b.x))))));
}

