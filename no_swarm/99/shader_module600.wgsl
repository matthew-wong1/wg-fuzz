struct Struct_1 {
    a: u32,
    b: vec4<bool>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: vec3<i32>,
    d: f32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 30>;

var<private> global1: array<vec2<u32>, 20>;

var<private> global2: array<Struct_3, 30> = array<Struct_3, 30>(Struct_3(Struct_1(0u, vec4<bool>(false, false, false, false)), 26778u), Struct_3(Struct_1(4294967295u, vec4<bool>(false, true, true, true)), 0u), Struct_3(Struct_1(36651u, vec4<bool>(true, true, false, false)), 9790u), Struct_3(Struct_1(0u, vec4<bool>(true, true, true, false)), 30560u), Struct_3(Struct_1(63328u, vec4<bool>(true, false, false, true)), 1u), Struct_3(Struct_1(48945u, vec4<bool>(false, false, true, false)), 1u), Struct_3(Struct_1(7086u, vec4<bool>(true, false, true, true)), 14901u), Struct_3(Struct_1(51448u, vec4<bool>(false, true, false, true)), 15999u), Struct_3(Struct_1(7161u, vec4<bool>(true, true, true, true)), 4294967295u), Struct_3(Struct_1(4294967295u, vec4<bool>(true, false, false, false)), 45972u), Struct_3(Struct_1(61352u, vec4<bool>(false, false, true, true)), 0u), Struct_3(Struct_1(0u, vec4<bool>(true, false, false, true)), 4323u), Struct_3(Struct_1(20521u, vec4<bool>(false, true, false, true)), 17383u), Struct_3(Struct_1(48132u, vec4<bool>(true, true, true, false)), 0u), Struct_3(Struct_1(36772u, vec4<bool>(false, false, true, false)), 1u), Struct_3(Struct_1(53434u, vec4<bool>(true, false, false, true)), 0u), Struct_3(Struct_1(4294967295u, vec4<bool>(false, false, false, true)), 13966u), Struct_3(Struct_1(1u, vec4<bool>(false, false, true, false)), 32007u), Struct_3(Struct_1(1u, vec4<bool>(true, false, false, false)), 3855u), Struct_3(Struct_1(11286u, vec4<bool>(true, true, false, false)), 4294967295u), Struct_3(Struct_1(1u, vec4<bool>(true, true, false, false)), 6068u), Struct_3(Struct_1(1u, vec4<bool>(true, false, true, false)), 0u), Struct_3(Struct_1(0u, vec4<bool>(true, false, true, false)), 239u), Struct_3(Struct_1(30645u, vec4<bool>(true, true, false, false)), 1u), Struct_3(Struct_1(1u, vec4<bool>(false, true, true, false)), 4220u), Struct_3(Struct_1(1u, vec4<bool>(false, true, true, false)), 0u), Struct_3(Struct_1(83246u, vec4<bool>(false, true, true, false)), 58058u), Struct_3(Struct_1(0u, vec4<bool>(true, true, true, false)), 4294967295u), Struct_3(Struct_1(21957u, vec4<bool>(false, false, false, false)), 0u), Struct_3(Struct_1(12877u, vec4<bool>(true, false, true, true)), 38689u));

var<private> global3: array<bool, 21> = array<bool, 21>(true, true, true, false, true, true, true, false, true, true, false, false, true, false, false, true, true, true, false, false, false);

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: f32, arg_1: Struct_1) -> bool {
    let var_0 = vec3<f32>(arg_0, _wgslsmith_f_op_f32(-509f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_0, -1061f, arg_0 < -495f)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_0, arg_0))) - arg_0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 - arg_0)))));
    var var_1 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(arg_1.a, max(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.a, u_input.b.x, 23836u, 0u), vec4<u32>(4294967295u, 1u, u_input.c, 27552u)) & abs(u_input.c))), 20u)], u_input.b), 30u)];
    global2 = array<Struct_3, 30>();
    global2 = array<Struct_3, 30>();
    let var_2 = !select(vec3<bool>(false, !any(var_1.a.b.xz), select(arg_1.b.x, arg_1.a <= 4294967295u, false)), !select(!var_1.a.b.wxx, select(vec3<bool>(var_1.a.b.x, false, false), arg_1.b.ywz, vec3<bool>(var_1.a.b.x, false, global3[_wgslsmith_index_u32(u_input.b.x, 21u)])), true), !select(vec3<bool>(arg_1.b.x, true, true), !arg_1.b.yxx, vec3<bool>(false, true, var_1.a.b.x)));
    return !(select(arg_1.b.x, any(arg_1.b.wwy), false) & true);
}

fn func_2(arg_0: vec4<f32>, arg_1: vec2<i32>, arg_2: i32) -> Struct_1 {
    global3 = array<bool, 21>();
    global3 = array<bool, 21>();
    let var_0 = 766f;
    let var_1 = var_0;
    var var_2 = Struct_2(~select(abs(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, 21740u), 20u)]), max(u_input.b & global1[_wgslsmith_index_u32(1u, 20u)], u_input.b), vec2<bool>(false, func_3(-597f, Struct_1(44270u, vec4<bool>(true, true, false, global3[_wgslsmith_index_u32(0u, 21u)]))))), Struct_1(4294967295u, vec4<bool>(all(vec4<bool>(true, false, global3[_wgslsmith_index_u32(73718u, 21u)], global3[_wgslsmith_index_u32(u_input.b.x, 21u)])), select(any(vec3<bool>(true, global3[_wgslsmith_index_u32(83969u, 21u)], global3[_wgslsmith_index_u32(23894u, 21u)])), !global3[_wgslsmith_index_u32(0u, 21u)], any(vec2<bool>(false, global3[_wgslsmith_index_u32(0u, 21u)]))), global3[_wgslsmith_index_u32(4294967295u, 21u)], any(vec2<bool>(true, true)))));
    return var_2.b;
}

fn func_1() -> Struct_1 {
    var var_0 = func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)), vec2<i32>(-16962i, u_input.a), _wgslsmith_mult_i32((~0i ^ abs(u_input.a)) >> (u_input.b.x % 32u), ~23357i));
    var_0 = func_2(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(458f, 2027f, 1983f, -360f)))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(750f * 517f)), 1f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1230f))), 1f))), -abs(~firstLeadingBit(vec2<i32>(u_input.a, u_input.a))), u_input.a);
    let var_1 = Struct_2(~u_input.b, Struct_1(_wgslsmith_div_u32(12385u, ~18218u) << (abs(func_2(vec4<f32>(-1000f, -1000f, 295f, 515f), vec2<i32>(29951i, 39948i), -2147483647i).a) % 32u), vec4<bool>(all(var_0.b), all(select(vec2<bool>(var_0.b.x, var_0.b.x), vec2<bool>(false, false), var_0.b.xx)), all(vec2<bool>(global3[_wgslsmith_index_u32(64230u, 21u)], true)), global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 52533u, u_input.b.x, var_0.a), vec4<u32>(u_input.c, 0u, u_input.b.x, 75444u)), 21u)])));
    global3 = array<bool, 21>();
    global0 = array<vec4<i32>, 30>();
    return func_2(vec4<f32>(_wgslsmith_f_op_f32(floor(-510f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-221f)))), 868f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -447f)))), _wgslsmith_mod_vec2_i32(-abs(-vec2<i32>(-21287i, u_input.a)), ~min(vec2<i32>(u_input.a, 1i), vec2<i32>(0i, 2147483647i))), u_input.a);
}

fn func_4(arg_0: Struct_2, arg_1: vec4<u32>) -> vec4<bool> {
    global3 = array<bool, 21>();
    let var_0 = arg_0.b;
    var var_1 = arg_0.b.b.x && func_3(479f, Struct_1(countOneBits(_wgslsmith_div_u32(arg_1.x, u_input.c)), vec4<bool>(global3[_wgslsmith_index_u32(3817u, 21u)] & true, var_0.b.x, any(var_0.b.yy), global3[_wgslsmith_index_u32(firstLeadingBit(arg_1.x), 21u)])));
    let var_2 = vec3<i32>(firstTrailingBit(-u_input.a | (u_input.a | _wgslsmith_sub_i32(u_input.a, u_input.a))), -1i, _wgslsmith_dot_vec3_i32(-firstTrailingBit(vec3<i32>(-2147483647i, u_input.a, 0i)), min(reverseBits(vec3<i32>(u_input.a, 20541i, 7030i)), vec3<i32>(u_input.a, 2147483647i, u_input.a)) | vec3<i32>(firstLeadingBit(-1i), 1i, u_input.a)));
    global3 = array<bool, 21>();
    return !select(arg_0.b.b, !(!vec4<bool>(global3[_wgslsmith_index_u32(arg_0.a.x, 21u)], false, var_0.b.x, true)), func_2(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1f, 1f, 1f, 1f), vec4<f32>(874f, -1009f, -277f, 1000f), func_1().b)), abs(vec2<i32>(-1i, 2147483647i) << (vec2<u32>(0u, 0u) % vec2<u32>(32u))), reverseBits(-1i)).b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_add_u32(u_input.c, ~(_wgslsmith_div_u32(57700u, u_input.c) << (1u % 32u))), select(func_4(Struct_2(vec2<u32>(u_input.b.x, 1u), func_1()), min(~vec4<u32>(25901u, u_input.c, 4294967295u, u_input.b.x), firstLeadingBit(vec4<u32>(4294967295u, u_input.c, u_input.c, u_input.b.x)))), func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-389f, -1604f, 435f, 1149f)) * vec4<f32>(1f, 1f, 1f, 1f)), vec2<i32>(countOneBits(1i), abs(1i)), u_input.a).b, !((global3[_wgslsmith_index_u32(106386u, 21u)] & global3[_wgslsmith_index_u32(64362u, 21u)]) | any(vec4<bool>(global3[_wgslsmith_index_u32(u_input.c, 21u)], global3[_wgslsmith_index_u32(12758u, 21u)], global3[_wgslsmith_index_u32(u_input.c, 21u)], false)))));
    let var_1 = Struct_2(global1[_wgslsmith_index_u32(~(~4294967295u), 20u)], var_0);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(u_input.a, 5985i << ((0u << (u_input.b.x % 32u)) % 32u)) | -_wgslsmith_clamp_vec2_i32(vec2<i32>(-34766i, -1i) & vec2<i32>(u_input.a, u_input.a), select(vec2<i32>(1i, -1i), vec2<i32>(1i, -2147483647i), false), min(vec2<i32>(u_input.a, 1i), vec2<i32>(u_input.a, 2147483647i))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(-891f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-2740f)) + -862f), func_4(Struct_2(vec2<u32>(var_0.a, 1u), Struct_1(u_input.b.x, vec4<bool>(false, false, true, var_1.b.b.x))), vec4<u32>(23072u, 0u, u_input.b.x, 0u)).x != var_1.b.b.x)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-481f - -1792f))) - _wgslsmith_f_op_f32(-119f * -520f))), -(~(-(vec3<i32>(u_input.a, 2147483647i, -38275i) >> (vec3<u32>(u_input.b.x, u_input.b.x, 0u) % vec3<u32>(32u))))), _wgslsmith_f_op_f32(471f - _wgslsmith_f_op_f32(-1f)), abs(countOneBits(vec3<i32>(2147483647i, -35472i, 18624i) >> (_wgslsmith_add_vec3_u32(vec3<u32>(u_input.b.x, var_0.a, 13925u), vec3<u32>(65938u, 4294967295u, 1u)) % vec3<u32>(32u)))));
}

