struct Struct_1 {
    a: vec4<u32>,
    b: vec2<f32>,
    c: f32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<bool>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<f32>,
    c: bool,
    d: i32,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 21> = array<Struct_1, 21>(Struct_1(vec4<u32>(4294967295u, 1u, 0u, 98863u), vec2<f32>(-1482f, -662f), -3358f), Struct_1(vec4<u32>(10585u, 1u, 4294967295u, 51726u), vec2<f32>(112f, 686f), -1000f), Struct_1(vec4<u32>(39396u, 1u, 26594u, 1u), vec2<f32>(-937f, -151f), 863f), Struct_1(vec4<u32>(1u, 4294967295u, 4294967295u, 32461u), vec2<f32>(-999f, -1000f), -274f), Struct_1(vec4<u32>(56899u, 1u, 65504u, 0u), vec2<f32>(-565f, -1078f), -1597f), Struct_1(vec4<u32>(4294967295u, 1u, 81267u, 8959u), vec2<f32>(-978f, -910f), -1000f), Struct_1(vec4<u32>(1u, 0u, 19013u, 56870u), vec2<f32>(-729f, -701f), -1442f), Struct_1(vec4<u32>(1u, 0u, 4294967295u, 112128u), vec2<f32>(1087f, -1304f), -1046f), Struct_1(vec4<u32>(1u, 4294967295u, 92270u, 39819u), vec2<f32>(-1685f, -688f), 1178f), Struct_1(vec4<u32>(0u, 4294967295u, 37678u, 4294967295u), vec2<f32>(1101f, 3245f), -215f), Struct_1(vec4<u32>(4294967295u, 4294967295u, 4294967295u, 1u), vec2<f32>(416f, 236f), -479f), Struct_1(vec4<u32>(21271u, 0u, 60189u, 20939u), vec2<f32>(-206f, 3159f), 520f), Struct_1(vec4<u32>(21533u, 24612u, 4294967295u, 4294967295u), vec2<f32>(2096f, 887f), -915f), Struct_1(vec4<u32>(19776u, 770u, 18873u, 0u), vec2<f32>(1336f, 1800f), -844f), Struct_1(vec4<u32>(106126u, 0u, 0u, 1u), vec2<f32>(948f, -483f), -1574f), Struct_1(vec4<u32>(0u, 4294967295u, 17068u, 1u), vec2<f32>(620f, 825f), -409f), Struct_1(vec4<u32>(17457u, 0u, 121519u, 47453u), vec2<f32>(111f, -614f), -397f), Struct_1(vec4<u32>(32507u, 4294967295u, 39854u, 4294967295u), vec2<f32>(-448f, -1578f), -808f), Struct_1(vec4<u32>(38690u, 36065u, 4294967295u, 9866u), vec2<f32>(2310f, -1467f), 350f), Struct_1(vec4<u32>(12174u, 0u, 4294967295u, 1960u), vec2<f32>(-280f, -515f), 546f), Struct_1(vec4<u32>(72600u, 1u, 20750u, 0u), vec2<f32>(1000f, 1067f), 750f));

var<private> global1: Struct_4;

var<private> global2: f32 = 838f;

var<private> global3: Struct_2;

var<private> global4: bool = false;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> u32 {
    let var_0 = ~vec4<i32>(0i, _wgslsmith_div_i32(max(-1i, -89145i), select(2147483647i, -2147483647i, global1.c)) | -2147483647i, 0i, -_wgslsmith_mult_i32(_wgslsmith_div_i32(global1.d, -30767i), max(11040i, -3785i)));
    var var_1 = global0[_wgslsmith_index_u32(u_input.a.x, 21u)];
    var_1 = Struct_1(~(~(~(~vec4<u32>(91761u, u_input.a.x, 28298u, 43987u)))), _wgslsmith_f_op_vec2_f32(round(var_1.b)), _wgslsmith_f_op_f32(var_1.b.x + -1860f));
    let var_2 = _wgslsmith_div_vec2_i32(var_0.yz, ~var_0.wz);
    let var_3 = _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(414f * _wgslsmith_f_op_f32(f32(-1f) * -317f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_1.b.x * _wgslsmith_f_op_f32(round(global3.a.x))))))));
    return _wgslsmith_dot_vec3_u32(~_wgslsmith_sub_vec3_u32(~(~vec3<u32>(u_input.b, var_1.a.x, u_input.b)), _wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, 1u, 1u), vec3<u32>(u_input.a.x, 0u, var_1.a.x)) & ~var_1.a.wwy), firstLeadingBit(_wgslsmith_add_vec3_u32(var_1.a.zzw, min(select(vec3<u32>(4294967295u, var_1.a.x, var_1.a.x), var_1.a.xwy, global1.c), ~var_1.a.zzy))));
}

fn func_2(arg_0: i32, arg_1: Struct_2, arg_2: bool) -> Struct_3 {
    let var_0 = true;
    var var_1 = Struct_4(arg_1, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1008f, _wgslsmith_f_op_f32(-global3.b)) + _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-697f, global1.a.a.x), global3.b, false))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-477f * _wgslsmith_f_op_f32(-253f + arg_1.a.x)), -1865f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.e.b * _wgslsmith_f_op_f32(-arg_1.a.x)))), _wgslsmith_mod_u32(u_input.b, func_3()) <= _wgslsmith_sub_u32(4294967295u, min(18016u, u_input.b ^ 21145u)), abs(arg_0), global1.a);
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(step(600f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(319f, 1976f, var_1.c)))))), _wgslsmith_f_op_f32(max(-133f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(-643f, -2068f)), 278f)))))), _wgslsmith_f_op_f32(global1.b.x - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_1.e.a.x)))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1159f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-390f)), global3.a.x) * _wgslsmith_f_op_f32(-global3.b))));
    var var_3 = Struct_3(global0[_wgslsmith_index_u32(abs(u_input.a.x), 21u)], select(select(!vec4<bool>(var_1.c, true, true, true), vec4<bool>(true, true, all(vec3<bool>(true, global1.c, true)), global1.d <= -2147483647i), !(!vec4<bool>(arg_2, false, true, false))), vec4<bool>(true, any(vec3<bool>(true, true, true)), all(select(vec4<bool>(var_1.c, global1.c, var_0, true), vec4<bool>(global1.c, true, var_1.c, arg_2), false)), var_0), vec4<bool>(false, false, true, all(!vec3<bool>(var_1.c, arg_2, global1.c)))));
    var_3 = Struct_3(var_3.a, var_3.b);
    return Struct_3(global0[_wgslsmith_index_u32(countOneBits(1u), 21u)], !select(var_3.b, var_3.b, true));
}

fn func_1(arg_0: vec3<f32>) -> Struct_3 {
    return func_2(-2147483647i, global1.a, global1.c);
}

fn func_4(arg_0: i32, arg_1: Struct_3, arg_2: Struct_1) -> Struct_1 {
    let var_0 = Struct_4(Struct_2(global3.a, _wgslsmith_f_op_f32(-1476f * _wgslsmith_f_op_f32(-global3.a.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(global3.a.wxw, vec3<f32>(424f, global1.e.b, 1850f))), _wgslsmith_f_op_vec3_f32(-global3.a.yxx)) - _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(1076f, -201f, -378f), global1.e.a.zyy)))), global1.e.a.zyw))), any(vec4<bool>(true, true & all(arg_1.b.yxw), any(!arg_1.b.ww), false)), 1i, global1.e);
    let var_1 = arg_2.a.x;
    let var_2 = _wgslsmith_mod_i32(firstTrailingBit(max(firstTrailingBit(u_input.d) << (_wgslsmith_add_u32(4294967295u, u_input.b) % 32u), _wgslsmith_dot_vec4_i32(select(vec4<i32>(u_input.c, arg_0, arg_0, var_0.d), vec4<i32>(u_input.c, global1.d, 42463i, arg_0), var_0.c), abs(vec4<i32>(global1.d, 2147483647i, global1.d, 37433i))))), var_0.d);
    var var_3 = func_1(_wgslsmith_f_op_vec3_f32(-var_0.a.a.zwz)).a;
    let var_4 = _wgslsmith_f_op_f32(-var_3.b.x);
    return global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(~var_3.a.xxx << ((vec3<u32>(var_1, var_1, var_1) & vec3<u32>(1u, 0u, 4294967295u)) % vec3<u32>(32u)), min(vec3<u32>(var_3.a.x, arg_2.a.x, var_3.a.x), var_3.a.yyy) ^ ~arg_1.a.a.wyw), vec3<u32>(~80348u, select(_wgslsmith_clamp_u32(4294967295u, 49801u, 92673u), min(16929u, 63406u), true), max(arg_1.a.a.x | var_3.a.x, 4294967295u))), var_3.a.x), 21u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0[_wgslsmith_index_u32(~26148u, 21u)];
    var var_1 = Struct_3(func_4(-(_wgslsmith_add_i32(-1i, u_input.c) << (11796u % 32u)), func_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(global1.e.a.www, vec3<f32>(var_0.b.x, var_0.b.x, 793f)), global3.a.wzz, select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), true)))), Struct_1(~(var_0.a & var_0.a), _wgslsmith_f_op_vec2_f32(-global3.a.yy), 761f)), !vec4<bool>(true, true, !all(vec4<bool>(true, false, false, global1.c)), -u_input.d >= ~(-1i)));
    let var_2 = select(vec4<bool>(var_1.b.x, any(vec4<bool>(global1.c, any(var_1.b.zw), var_1.b.x, true)), !global1.c, var_1.b.x), var_1.b, func_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1206f)), _wgslsmith_f_op_f32(global1.a.b * _wgslsmith_f_op_f32(-global1.a.a.x)), 113f)).b);
    let var_3 = Struct_2(_wgslsmith_f_op_vec4_f32(select(global3.a, vec4<f32>(var_1.a.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.b)), 361f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global3.b, -1058f)))), var_2)), -2553f);
    var var_4 = !select(func_1(vec3<f32>(var_1.a.b.x, var_0.b.x, _wgslsmith_div_f32(606f, 1217f))).b.x, false, true);
    let var_5 = vec4<bool>(!var_2.x, global1.c, true, var_1.b.x && any(!select(var_2.zxy, vec3<bool>(true, var_2.x, false), vec3<bool>(true, var_1.b.x, var_2.x))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(var_3.b, 862f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1050f + -1722f)))), 1u, max(~(~max(0i, global1.d)), _wgslsmith_div_i32(global1.d, -(2147483647i | global1.d))));
}

