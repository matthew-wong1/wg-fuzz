struct Struct_1 {
    a: vec2<f32>,
    b: vec3<i32>,
    c: f32,
    d: vec4<u32>,
    e: vec4<u32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec3<bool>,
    c: Struct_2,
    d: Struct_1,
    e: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: Struct_2;

var<private> global2: array<Struct_2, 15> = array<Struct_2, 15>(Struct_2(vec4<bool>(false, false, true, false), Struct_1(vec2<f32>(-1000f, -720f), vec3<i32>(1i, -142i, 18927i), -1056f, vec4<u32>(57619u, 31721u, 1u, 1225u), vec4<u32>(4294967295u, 7053u, 15577u, 30014u))), Struct_2(vec4<bool>(false, true, true, false), Struct_1(vec2<f32>(-841f, 985f), vec3<i32>(-1i, 49293i, -53325i), -1069f, vec4<u32>(28283u, 4294967295u, 4294967295u, 16289u), vec4<u32>(1u, 62557u, 29605u, 11943u))), Struct_2(vec4<bool>(false, false, true, false), Struct_1(vec2<f32>(1406f, -803f), vec3<i32>(-1i, i32(-2147483648), i32(-2147483648)), 912f, vec4<u32>(21954u, 1u, 26793u, 1u), vec4<u32>(91639u, 64275u, 1u, 4294967295u))), Struct_2(vec4<bool>(false, true, true, false), Struct_1(vec2<f32>(121f, -220f), vec3<i32>(1i, 1i, -49852i), 725f, vec4<u32>(12459u, 0u, 4294967295u, 4294967295u), vec4<u32>(48386u, 0u, 0u, 0u))), Struct_2(vec4<bool>(true, false, false, false), Struct_1(vec2<f32>(-221f, 658f), vec3<i32>(-31385i, 2147483647i, -35087i), 2795f, vec4<u32>(16817u, 4294967295u, 36494u, 4294967295u), vec4<u32>(4294967295u, 0u, 67916u, 1u))), Struct_2(vec4<bool>(false, true, true, true), Struct_1(vec2<f32>(-801f, -118f), vec3<i32>(2147483647i, -74198i, -26743i), -1110f, vec4<u32>(89407u, 1603u, 36734u, 35610u), vec4<u32>(63811u, 45693u, 0u, 12623u))), Struct_2(vec4<bool>(false, false, true, true), Struct_1(vec2<f32>(1456f, 1000f), vec3<i32>(1i, 664i, -978i), 860f, vec4<u32>(1u, 19888u, 1u, 1u), vec4<u32>(62431u, 1u, 25386u, 10619u))), Struct_2(vec4<bool>(false, false, false, true), Struct_1(vec2<f32>(-1062f, 441f), vec3<i32>(-19623i, -53581i, 0i), -1240f, vec4<u32>(1u, 4294967295u, 21274u, 26414u), vec4<u32>(4294967295u, 61369u, 4294967295u, 80060u))), Struct_2(vec4<bool>(false, true, false, false), Struct_1(vec2<f32>(-1000f, -507f), vec3<i32>(70402i, -34479i, 2147483647i), 1247f, vec4<u32>(4294967295u, 1u, 13983u, 28404u), vec4<u32>(4294967295u, 50134u, 88256u, 6754u))), Struct_2(vec4<bool>(false, false, false, false), Struct_1(vec2<f32>(1415f, -758f), vec3<i32>(3132i, 2147483647i, -1i), 315f, vec4<u32>(31756u, 43142u, 1541u, 4294967295u), vec4<u32>(21520u, 1u, 4294967295u, 6336u))), Struct_2(vec4<bool>(true, true, false, true), Struct_1(vec2<f32>(374f, 257f), vec3<i32>(-31317i, 86711i, 13464i), 1061f, vec4<u32>(30840u, 4294967295u, 47149u, 1440u), vec4<u32>(1u, 4294967295u, 55762u, 14028u))), Struct_2(vec4<bool>(true, true, true, true), Struct_1(vec2<f32>(1268f, -287f), vec3<i32>(1i, -12732i, 0i), 1330f, vec4<u32>(38591u, 65716u, 0u, 25295u), vec4<u32>(9820u, 60869u, 0u, 1u))), Struct_2(vec4<bool>(false, false, false, true), Struct_1(vec2<f32>(417f, -1813f), vec3<i32>(-1i, -46801i, 0i), -1000f, vec4<u32>(4294967295u, 4294967295u, 36915u, 1u), vec4<u32>(56061u, 88252u, 4294967295u, 0u))), Struct_2(vec4<bool>(false, true, false, false), Struct_1(vec2<f32>(-608f, 110f), vec3<i32>(5755i, 1i, 29979i), 336f, vec4<u32>(59269u, 0u, 947u, 3988u), vec4<u32>(31303u, 0u, 1u, 1u))), Struct_2(vec4<bool>(true, true, true, false), Struct_1(vec2<f32>(1000f, -654f), vec3<i32>(44326i, -5668i, 16325i), 253f, vec4<u32>(4294967295u, 45077u, 41412u, 73036u), vec4<u32>(6408u, 1u, 86527u, 14073u))));

var<private> global3: vec4<u32>;

var<private> global4: vec2<f32>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec4<u32>, arg_2: Struct_2) -> vec2<u32> {
    var var_0 = arg_2;
    var var_1 = 2147483647i;
    global0 = vec3<u32>(41126u, var_0.b.d.x << ((~abs(1u) & var_0.b.e.x) % 32u), ~(select(1u, 646u, !global1.a.x) >> ((global3.x & (global3.x >> (1u % 32u))) % 32u)));
    let var_2 = (i32(-1i) * -min(~44633i, -1i << (global3.x % 32u))) >= 14242i;
    var var_3 = Struct_2(vec4<bool>(arg_2.b.c == _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global4.x))), all(vec2<bool>(arg_2.b.a.x <= arg_2.b.c, true)), global1.a.x, all(arg_2.a.wx)), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-181f * 1809f) + _wgslsmith_f_op_f32(step(1883f, -605f))), _wgslsmith_div_f32(2009f, _wgslsmith_f_op_f32(floor(global4.x)))), arg_2.b.b, -748f, arg_2.b.d, vec4<u32>(abs(~61604u), u_input.d, 1u, 983u)));
    return global3.ww;
}

fn func_2(arg_0: i32) -> bool {
    var var_0 = Struct_2(vec4<bool>(true, any(select(global1.a.yy, !global1.a.yz, vec2<bool>(true, global1.a.x))), select(global1.a.x, all(!vec4<bool>(global1.a.x, false, true, true)), global1.a.x), true), global1.b);
    var_0 = Struct_2(global1.a, var_0.b);
    let var_1 = ~(~func_3(var_0.b.b.zx, _wgslsmith_add_vec4_u32(~vec4<u32>(0u, global0.x, global1.b.d.x, 4294967295u), select(u_input.c, vec4<u32>(15267u, u_input.d, var_0.b.e.x, global3.x), var_0.a.x)), global2[_wgslsmith_index_u32(_wgslsmith_div_u32(global1.b.d.x, global3.x ^ 1u), 15u)]));
    let var_2 = vec3<f32>(global1.b.a.x, _wgslsmith_f_op_f32(353f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1000f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(global1.b.a.x)))));
    var var_3 = ~vec3<u32>(4294967295u, _wgslsmith_clamp_u32(4379u << (global0.x % 32u), ~1u, 13983u), ~(_wgslsmith_add_u32(var_0.b.d.x, 13404u) & global3.x));
    return 869f != _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(185f))));
}

fn func_1(arg_0: Struct_3, arg_1: vec2<f32>) -> f32 {
    global0 = global3.zzy | min(~(~u_input.c.zzw), ~global3.xzx);
    global3 = ~global1.b.e;
    global1 = Struct_2(select(global1.a, select(global1.a, vec4<bool>(any(arg_0.c.a), true, func_2(arg_0.d.b.x), arg_0.c.a.x), all(arg_0.c.a)), global1.b.a.x > global4.x), Struct_1(vec2<f32>(global1.b.a.x, _wgslsmith_f_op_f32(f32(-1f) * -846f)), ~arg_0.d.b, -303f, firstLeadingBit(~(~u_input.c)), min(max(_wgslsmith_mod_vec4_u32(vec4<u32>(global1.b.e.x, arg_0.a.x, 4294967295u, 15359u), arg_0.d.e), countOneBits(global1.b.e)), vec4<u32>(_wgslsmith_mod_u32(arg_0.a.x, 73780u), _wgslsmith_mult_u32(4294967295u, global1.b.d.x), arg_0.e, select(11837u, 26212u, arg_0.b.x)))));
    var var_0 = Struct_2(!select(global1.a, global1.a, vec4<bool>(select(true, global1.a.x, global1.a.x), arg_0.c.a.x, global4.x <= 1440f, -1i < global1.b.b.x)), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1155f, 677f)), -(~(~vec3<i32>(u_input.b.x, 41534i, 6686i))), 384f, _wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(global1.b.d, global1.b.d >> (arg_0.d.d % vec4<u32>(32u))), select(~u_input.c, firstLeadingBit(vec4<u32>(global0.x, global0.x, 0u, global1.b.d.x)), vec4<bool>(false, global1.a.x, false, arg_0.c.a.x))), ~global1.b.d));
    let var_1 = arg_0.c.b.c;
    return arg_0.d.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    global4 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global1.b.a * global1.b.a) * _wgslsmith_div_vec2_f32(vec2<f32>(1077f, global4.x), global1.b.a)), vec2<f32>(_wgslsmith_f_op_f32(func_1(Struct_3(u_input.c, vec3<bool>(global1.a.x, global1.a.x, false), Struct_2(vec4<bool>(true, true, global1.a.x, global1.a.x), global1.b), Struct_1(vec2<f32>(1613f, global1.b.a.x), vec3<i32>(-1i, u_input.b.x, global1.b.b.x), global4.x, vec4<u32>(global3.x, 19428u, 31332u, global3.x), vec4<u32>(global0.x, global1.b.e.x, global1.b.e.x, 20011u)), 51177u), global1.b.a)), _wgslsmith_f_op_f32(min(812f, global4.x))))))));
    var var_0 = u_input.a;
    global4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global1.b.a) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global4.x, 1000f) + vec2<f32>(global1.b.a.x, 426f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.b.c, 357f))))));
    var_0 = ~func_3(max(~(~vec2<i32>(2147483647i, -1i)), u_input.b.zy), u_input.c, global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(select(u_input.c, vec4<u32>(global0.x, 0u, var_0.x, var_0.x), global1.a), ~vec4<u32>(global1.b.d.x, global3.x, global3.x, 4294967295u)), 15u)]);
    var var_1 = vec2<i32>(u_input.b.x << (~_wgslsmith_mod_u32(var_0.x, 1u) % 32u), _wgslsmith_clamp_i32(global1.b.b.x, 2147483647i, u_input.b.x >> (global1.b.d.x % 32u)));
    var var_2 = var_0.x;
    var_2 = ~_wgslsmith_mult_u32(1u, _wgslsmith_div_u32(68745u, _wgslsmith_dot_vec3_u32(firstLeadingBit(u_input.c.yxx), u_input.c.ywx)));
    var_1 = ~vec2<i32>(-_wgslsmith_mod_i32(~var_1.x, abs(var_1.x)), 12874i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4.x - 586f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(782f, _wgslsmith_f_op_f32(max(global4.x, -510f)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global1.b.c)) + _wgslsmith_div_f32(1822f, 1000f))))), 1i);
}

