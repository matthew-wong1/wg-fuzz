struct Struct_1 {
    a: u32,
    b: vec4<u32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 0i;

var<private> global1: array<vec4<bool>, 25> = array<vec4<bool>, 25>(vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, true));

var<private> global2: array<bool, 30>;

var<private> global3: array<Struct_1, 23> = array<Struct_1, 23>(Struct_1(11844u, vec4<u32>(0u, 4294967295u, 1u, 76251u)), Struct_1(30053u, vec4<u32>(4483u, 0u, 1u, 27842u)), Struct_1(0u, vec4<u32>(58295u, 10316u, 10064u, 0u)), Struct_1(4294967295u, vec4<u32>(0u, 4294967295u, 1u, 98773u)), Struct_1(4294967295u, vec4<u32>(4294967295u, 352u, 0u, 28100u)), Struct_1(31309u, vec4<u32>(0u, 12395u, 0u, 734u)), Struct_1(4294967295u, vec4<u32>(0u, 54749u, 37387u, 4294967295u)), Struct_1(20178u, vec4<u32>(0u, 9841u, 4294967295u, 20805u)), Struct_1(6069u, vec4<u32>(4294967295u, 74709u, 4294967295u, 4294967295u)), Struct_1(63793u, vec4<u32>(24774u, 4294967295u, 16674u, 53823u)), Struct_1(8531u, vec4<u32>(87381u, 28223u, 54080u, 4294967295u)), Struct_1(0u, vec4<u32>(4294967295u, 42112u, 1u, 81361u)), Struct_1(29617u, vec4<u32>(8878u, 4294967295u, 25003u, 66523u)), Struct_1(4294967295u, vec4<u32>(1u, 4294967295u, 28433u, 1u)), Struct_1(1u, vec4<u32>(0u, 0u, 1u, 0u)), Struct_1(42066u, vec4<u32>(4294967295u, 7350u, 21641u, 1u)), Struct_1(66096u, vec4<u32>(4294967295u, 25884u, 0u, 0u)), Struct_1(4294967295u, vec4<u32>(4294967295u, 4294967295u, 1u, 0u)), Struct_1(24803u, vec4<u32>(1u, 1u, 1u, 1u)), Struct_1(1u, vec4<u32>(0u, 46787u, 3907u, 0u)), Struct_1(30148u, vec4<u32>(4294967295u, 6661u, 1u, 4294967295u)), Struct_1(37797u, vec4<u32>(1u, 0u, 25437u, 19340u)), Struct_1(0u, vec4<u32>(0u, 26372u, 32967u, 14773u)));

var<private> global4: Struct_2 = Struct_2(vec2<bool>(false, false), Struct_1(4294967295u, vec4<u32>(55684u, 75367u, 46982u, 0u)), 14995u);

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: u32) -> vec4<i32> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(1717f, _wgslsmith_f_op_f32(min(1f, 471f)))))));
    var var_1 = Struct_2(select(global4.a, select(!select(global4.a, global4.a, global2[_wgslsmith_index_u32(u_input.a.x, 30u)]), !vec2<bool>(global4.a.x, global2[_wgslsmith_index_u32(18423u, 30u)]), global4.a), all(vec2<bool>(all(vec4<bool>(global4.a.x, global2[_wgslsmith_index_u32(0u, 30u)], true, false)), all(vec3<bool>(true, true, false))))), Struct_1(59615u, _wgslsmith_add_vec4_u32(firstTrailingBit(abs(global4.b.b)), arg_1.b ^ (global4.b.b >> (vec4<u32>(global4.b.a, 10600u, arg_0, global4.c) % vec4<u32>(32u))))), ~(~(~44527u)));
    global2 = array<bool, 30>();
    let var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1000f))), -1000f))));
    var_1 = Struct_2(!vec2<bool>(true, all(vec3<bool>(global4.a.x, false, true))), Struct_1(~arg_2, ~_wgslsmith_div_vec4_u32(firstTrailingBit(global4.b.b), firstTrailingBit(vec4<u32>(arg_0, arg_1.a, 7996u, arg_1.a)))), arg_1.a);
    return ~(-firstLeadingBit(vec4<i32>(-11197i, ~(-1i), 1i, 49702i)));
}

fn func_2() -> vec3<u32> {
    let var_0 = global4.a.x;
    let var_1 = Struct_1(_wgslsmith_mod_u32(u_input.a.x, 1u), vec4<u32>(~(~global4.c), 0u, u_input.b, 29740u));
    let var_2 = abs(vec2<i32>(reverseBits(-10964i), abs(6707i)));
    let var_3 = _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(firstTrailingBit(-1i), min(var_2.x, var_2.x), ~(-1i), i32(-1i) * -2150i)), func_3(var_1.a, Struct_1(var_1.b.x, vec4<u32>(44189u, 0u, u_input.a.x, var_1.b.x)), var_1.b.x)), var_2.x);
    var var_4 = Struct_2(global4.a, global4.b, _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(_wgslsmith_mult_vec3_u32(min(var_1.b.zyw, vec3<u32>(u_input.b, 4294967295u, 1u)), var_1.b.wxx), ~vec3<u32>(var_1.a, 4294967295u, var_1.b.x), global4.b.b.zyw ^ var_1.b.yyy), var_1.b.zyw));
    return vec3<u32>(~_wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 23059u, 76372u, var_1.a) | select(vec4<u32>(0u, 0u, var_4.c, u_input.a.x), global4.b.b, false), _wgslsmith_mult_vec4_u32(var_4.b.b, var_1.b)), var_1.b.x, 35710u);
}

fn func_4(arg_0: vec3<u32>, arg_1: u32, arg_2: vec2<f32>, arg_3: Struct_1) -> Struct_2 {
    var var_0 = ~(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.x, global4.b.a, ~0u, ~0u), ~_wgslsmith_div_vec4_u32(vec4<u32>(arg_3.b.x, 4294967295u, 1u, 100713u), vec4<u32>(u_input.b, u_input.b, arg_1, arg_3.b.x))) ^ _wgslsmith_dot_vec3_u32(vec3<u32>(arg_3.b.x, firstLeadingBit(global4.c), ~arg_1), ~(vec3<u32>(arg_3.b.x, arg_1, 1u) >> (global4.b.b.wyz % vec3<u32>(32u)))));
    var var_1 = _wgslsmith_f_op_f32(exp2(arg_2.x));
    var var_2 = !select(!vec3<bool>(global4.a.x, true, true), vec3<bool>(any(!global4.a), !(18501u > arg_0.x), !(arg_2.x >= arg_2.x)), select(select(!vec3<bool>(global4.a.x, false, false), vec3<bool>(true, true, true), true), vec3<bool>(global2[_wgslsmith_index_u32(~u_input.b, 30u)], !global4.a.x, true), all(!vec3<bool>(global2[_wgslsmith_index_u32(4294967295u, 30u)], global4.a.x, global2[_wgslsmith_index_u32(52554u, 30u)]))));
    var var_3 = _wgslsmith_sub_u32(_wgslsmith_sub_u32(u_input.a.x, 4294967295u), ~1u);
    var var_4 = vec4<i32>(56081i, 1i, -_wgslsmith_dot_vec4_i32(vec4<i32>(0i, 54445i, 56699i, 1i), vec4<i32>(1i, -2458i, 1i, -1i)) ^ (~43843i >> (0u % 32u)), func_3(arg_3.a, global4.b, 1u).x);
    return Struct_2(select(!vec2<bool>(true, any(vec4<bool>(global2[_wgslsmith_index_u32(70428u, 30u)], true, global4.a.x, var_2.x))), !(!global4.a), vec2<bool>(var_2.x, arg_0.x != arg_3.a)), Struct_1(1u, ~(~vec4<u32>(0u, 29263u, global4.b.a, u_input.a.x))), min(~arg_0.x, arg_0.x));
}

fn func_1(arg_0: Struct_1) -> Struct_2 {
    let var_0 = 4294967295u;
    global2 = array<bool, 30>();
    global3 = array<Struct_1, 23>();
    let var_1 = true;
    var var_2 = -593f;
    return func_4(~abs(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b, 25694u, u_input.a.x), vec3<u32>(arg_0.b.x, arg_0.b.x, u_input.a.x))) | func_2(), ~_wgslsmith_mod_u32(22326u, abs(u_input.a.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-941f, 1f))), Struct_1(~select(u_input.a.x ^ 1u, u_input.a.x, true), arg_0.b));
}

fn func_5(arg_0: Struct_2) -> Struct_2 {
    var var_0 = ~(-(~_wgslsmith_sub_vec3_i32(vec3<i32>(0i, -1i, 0i), vec3<i32>(-19457i, -78221i, 1i)))) & (((~vec3<i32>(-21739i, -1i, -1i) >> ((global4.b.b.wzw & vec3<u32>(1959u, arg_0.c, u_input.b)) % vec3<u32>(32u))) << ((vec3<u32>(49313u, 0u, arg_0.c) ^ max(global4.b.b.yzy, vec3<u32>(u_input.b, 4294967295u, arg_0.b.b.x))) % vec3<u32>(32u))) | vec3<i32>(1i, 1i, 1i));
    var var_1 = Struct_1(~u_input.a.x, firstTrailingBit(~((arg_0.b.b ^ global4.b.b) | vec4<u32>(u_input.a.x, arg_0.b.b.x, arg_0.c, arg_0.b.b.x))));
    var var_2 = countOneBits(-2147483647i);
    var var_3 = vec2<bool>(true, true);
    global4 = func_1(func_1(func_4(_wgslsmith_div_vec3_u32(abs(var_1.b.yyx), countOneBits(vec3<u32>(51655u, u_input.a.x, global4.c))), global4.b.b.x, vec2<f32>(-1492f, _wgslsmith_f_op_f32(1000f + 454f)), func_1(arg_0.b).b).b).b);
    return Struct_2(func_1(func_1(func_4(vec3<u32>(33088u, 0u, 1u), 0u, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-206f, -630f)), arg_0.b).b).b).a, global4.b, ~_wgslsmith_clamp_u32(global4.c & select(global4.c, global4.b.a, true), firstTrailingBit(6319u), 1u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!select(vec3<bool>(true, true, true), !(!vec3<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 30u)], global4.a.x, true)), !select(vec3<bool>(global2[_wgslsmith_index_u32(43222u, 30u)], global2[_wgslsmith_index_u32(u_input.b, 30u)], true), vec3<bool>(false, true, false), global4.a.x)));
    global4 = func_5(func_1(global4.b));
    let var_1 = false;
    let var_2 = -1000f;
    var var_3 = global1[_wgslsmith_index_u32(func_1(global4.b).b.b.x, 25u)];
    let var_4 = vec2<u32>(~firstLeadingBit(global4.b.b.x), func_4(~_wgslsmith_mod_vec3_u32(~global4.b.b.wwx, global4.b.b.ywy), ~func_2().x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) + _wgslsmith_f_op_vec2_f32(vec2<f32>(var_2, var_2) - vec2<f32>(var_2, var_2)))), func_1(func_5(Struct_2(vec2<bool>(global2[_wgslsmith_index_u32(1u, 30u)], var_0.x), Struct_1(global4.b.b.x, global4.b.b), global4.b.b.x)).b).b).b.b.x);
    var_3 = select(select(global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(global4.c, global4.c, global4.c, 0u), global4.b.b), 25u)], select(vec4<bool>(func_5(Struct_2(global4.a, Struct_1(var_4.x, global4.b.b), global4.b.a)).a.x, var_3.x, false, false), vec4<bool>(!var_3.x, all(global4.a), var_0.x | global4.a.x, global2[_wgslsmith_index_u32(4294967295u, 30u)]), select(vec4<bool>(global2[_wgslsmith_index_u32(global4.b.a, 30u)], var_1, false, true), vec4<bool>(true, false, true, var_3.x), select(vec4<bool>(global4.a.x, var_0.x, false, global2[_wgslsmith_index_u32(var_4.x, 30u)]), global1[_wgslsmith_index_u32(global4.c, 25u)], global2[_wgslsmith_index_u32(30942u, 30u)]))), !select(select(global1[_wgslsmith_index_u32(1u, 25u)], global1[_wgslsmith_index_u32(global4.c, 25u)], vec4<bool>(var_0.x, true, false, false)), select(vec4<bool>(var_0.x, false, true, var_1), vec4<bool>(true, var_3.x, global4.a.x, false), true), !vec4<bool>(false, global4.a.x, true, global4.a.x))), vec4<bool>(true, !global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(50758u, var_4.x), var_4), _wgslsmith_mod_u32(7161u, 4293u)), 30u)], true, select(select(true, true, var_0.x), func_1(func_4(vec3<u32>(var_4.x, 7467u, 4294967295u), 4294967295u, vec2<f32>(var_2, 418f), Struct_1(37700u, vec4<u32>(var_4.x, 17289u, global4.c, 1u))).b).a.x, true)), all(!var_3.yzx));
    let var_5 = global4.a;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x);
}

