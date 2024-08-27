struct Struct_1 {
    a: i32,
    b: vec4<f32>,
    c: u32,
    d: vec2<i32>,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<f32>,
    c: u32,
    d: u32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: array<Struct_1, 14> = array<Struct_1, 14>(Struct_1(2147483647i, vec4<f32>(500f, -1304f, 1000f, 1330f), 6283u, vec2<i32>(0i, 1i), vec4<bool>(false, false, true, false)), Struct_1(-2990i, vec4<f32>(592f, -601f, -944f, 1000f), 70413u, vec2<i32>(i32(-2147483648), 5692i), vec4<bool>(true, false, true, true)), Struct_1(5354i, vec4<f32>(-3559f, -393f, -484f, -193f), 16970u, vec2<i32>(0i, i32(-2147483648)), vec4<bool>(false, true, true, true)), Struct_1(0i, vec4<f32>(1000f, 696f, 864f, 703f), 4294967295u, vec2<i32>(2147483647i, i32(-2147483648)), vec4<bool>(false, true, true, false)), Struct_1(36758i, vec4<f32>(1883f, 895f, 312f, 317f), 1u, vec2<i32>(18829i, i32(-2147483648)), vec4<bool>(true, false, false, true)), Struct_1(3392i, vec4<f32>(-639f, -864f, 481f, 290f), 1u, vec2<i32>(11875i, i32(-2147483648)), vec4<bool>(false, true, false, true)), Struct_1(0i, vec4<f32>(-279f, 557f, 519f, -1662f), 33475u, vec2<i32>(-13663i, 1i), vec4<bool>(true, true, true, false)), Struct_1(i32(-2147483648), vec4<f32>(-408f, -1096f, -1662f, -342f), 40124u, vec2<i32>(19174i, -28263i), vec4<bool>(false, false, true, false)), Struct_1(-27032i, vec4<f32>(-195f, -878f, -339f, 628f), 37759u, vec2<i32>(2147483647i, 0i), vec4<bool>(true, false, true, true)), Struct_1(-34713i, vec4<f32>(-473f, -1015f, -2401f, 418f), 4294967295u, vec2<i32>(30160i, 0i), vec4<bool>(false, false, false, false)), Struct_1(-40803i, vec4<f32>(406f, -1853f, 1198f, 351f), 1u, vec2<i32>(29371i, -7998i), vec4<bool>(false, false, false, false)), Struct_1(2147483647i, vec4<f32>(-116f, 172f, 283f, 1000f), 4294967295u, vec2<i32>(1i, -18462i), vec4<bool>(false, false, false, false)), Struct_1(1i, vec4<f32>(879f, -500f, 1090f, 1000f), 4294967295u, vec2<i32>(24719i, 1i), vec4<bool>(false, false, false, true)), Struct_1(37212i, vec4<f32>(1000f, 858f, 198f, -110f), 1u, vec2<i32>(-31453i, 39735i), vec4<bool>(false, false, false, false)));

var<private> global2: Struct_1 = Struct_1(11581i, vec4<f32>(-335f, 1000f, 903f, 1299f), 0u, vec2<i32>(0i, 2147483647i), vec4<bool>(true, false, false, false));

var<private> global3: Struct_1;

var<private> global4: array<vec4<i32>, 14> = array<vec4<i32>, 14>(vec4<i32>(0i, -62608i, 2147483647i, 2147483647i), vec4<i32>(2147483647i, -56252i, -1966i, 0i), vec4<i32>(-1940i, 1i, -43137i, 22420i), vec4<i32>(16468i, -4353i, 55553i, -12714i), vec4<i32>(-57834i, 2147483647i, 30684i, 5566i), vec4<i32>(15052i, 8512i, -28212i, 1i), vec4<i32>(16773i, 0i, 2147483647i, -1i), vec4<i32>(53909i, 2147483647i, 14169i, -77290i), vec4<i32>(15947i, 1i, 1i, 0i), vec4<i32>(31096i, 1i, 23009i, 33880i), vec4<i32>(42126i, 44413i, 2147483647i, -11388i), vec4<i32>(i32(-2147483648), 1i, -1i, i32(-2147483648)), vec4<i32>(1i, i32(-2147483648), -10281i, -1i), vec4<i32>(20053i, i32(-2147483648), 70361i, -12827i));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec3<u32>) -> bool {
    let var_0 = global0.zz;
    let var_1 = global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(firstTrailingBit(_wgslsmith_div_u32(~global0.x, 28986u)), 13239u << (~max(firstTrailingBit(var_0.x), firstLeadingBit(13218u)) % 32u)), 14u)];
    let var_2 = var_1.c;
    global4 = array<vec4<i32>, 14>();
    let var_3 = !all(var_1.e.xwy);
    return any(select(vec3<bool>(true, arg_0.x <= var_0.x, true | (var_3 && var_3)), select(!var_1.e.zww, !vec3<bool>(false, var_3, false), !all(vec3<bool>(global2.e.x, var_3, var_3))), var_0.x <= ~4294967295u));
}

fn func_2(arg_0: vec4<i32>, arg_1: vec2<u32>) -> i32 {
    var var_0 = vec2<bool>(abs(~(global0.x & arg_1.x)) == _wgslsmith_div_u32(_wgslsmith_mod_u32(_wgslsmith_add_u32(0u, 4294967295u), ~13815u), 51463u ^ global2.c), func_3(vec3<u32>(59165u, global0.x, ~global2.c)));
    var var_1 = -_wgslsmith_add_i32(4923i, 0i);
    let var_2 = Struct_1(~_wgslsmith_mult_i32(i32(-1i) * -58538i, global3.a), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-global2.b.x), _wgslsmith_f_op_f32(abs(439f)), 1319f, global3.b.x), global3.b, !global3.e)), arg_1.x | _wgslsmith_sub_u32(~global2.c, 4294967295u), global3.d, global3.e);
    let var_3 = Struct_1(~global2.d.x, _wgslsmith_f_op_vec4_f32(exp2(global2.b)), global3.c, vec2<i32>(abs(countOneBits(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.x, -2147483647i, arg_0.x, var_2.d.x), global4[_wgslsmith_index_u32(79571u, 14u)]))), -(_wgslsmith_sub_i32(global2.d.x, -1i) >> (1u % 32u))), vec4<bool>(global3.e.x, global3.e.x, !select(true, true, false), true));
    let var_4 = !all(!global2.e.wyy);
    return firstTrailingBit(0i >> (~var_3.c % 32u));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: Struct_1, arg_3: i32) -> Struct_1 {
    let var_0 = 45709u;
    var var_1 = vec4<i32>(select(-39517i >> (0u % 32u), firstTrailingBit(global3.d.x), any(select(global2.e.zx, vec2<bool>(arg_0.e.x, global3.e.x), vec2<bool>(false, global2.e.x))) | !arg_0.e.x), ~countOneBits(arg_2.d.x), 1i << (~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, global0.x, 1u, 4324u), ~vec4<u32>(1u, 50902u, 53404u, arg_2.c)) % 32u), arg_3);
    global0 = vec4<u32>(1u, select(1u, ~42315u, true), 30283u, _wgslsmith_dot_vec2_u32(vec2<u32>(71357u & _wgslsmith_dot_vec3_u32(vec3<u32>(var_0, global3.c, var_0), vec3<u32>(1u, 54083u, arg_2.c)), global0.x >> (~0u % 32u)), ~select(select(global0.xx, vec2<u32>(global0.x, arg_0.c), true), global0.yw, global3.e.wy)));
    var var_2 = global3.e.x;
    var var_3 = 5914u;
    return Struct_1(-2147483647i, vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(775f)) + _wgslsmith_f_op_f32(-arg_1.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global3.b.x))) + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(arg_0.b.x))))), global3.b.x, _wgslsmith_f_op_f32(sign(307f))), _wgslsmith_dot_vec3_u32(global0.xyw, ~global0.wzx), ~vec2<i32>(global3.d.x, 2147483647i), global3.e);
}

fn func_1(arg_0: vec2<f32>) -> Struct_1 {
    let var_0 = vec4<bool>(global3.e.x, true, (u_input.a.x > (global2.a | ~global2.a)) || (1500f == global2.b.x), (abs(1u) & _wgslsmith_mod_u32(4294967295u, global3.c)) > global0.x);
    global1 = array<Struct_1, 14>();
    var var_1 = global0.x;
    var var_2 = select(var_0.zyx, vec3<bool>(_wgslsmith_sub_i32(~global3.a, global3.a) > -1i, var_0.x, all(select(global3.e.yyy, !global3.e.zzx, select(global2.e.xzy, vec3<bool>(global3.e.x, false, false), true)))), global3.e.zww);
    return func_4(global1[_wgslsmith_index_u32(global2.c, 14u)], vec2<f32>(-1450f, _wgslsmith_f_op_f32(global3.b.x + -2549f)), global1[_wgslsmith_index_u32(1u, 14u)], min(func_2(~u_input.a, _wgslsmith_div_vec2_u32(global0.yx, global0.wx)), ~firstLeadingBit(global2.a)) << (50388u % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(136f, 432f))) - vec2<f32>(-558f, _wgslsmith_f_op_f32(ceil(1273f)))), _wgslsmith_div_vec2_f32(global2.b.xz, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-global2.b.ww)))))));
    var var_1 = !func_4(Struct_1(firstLeadingBit(var_0.d.x << (global2.c % 32u)), _wgslsmith_f_op_vec4_f32(-global2.b), 4294967295u, vec2<i32>(u_input.a.x << (79073u % 32u), abs(global3.a)), vec4<bool>(var_0.e.x && true, true, true, global2.e.x)), vec2<f32>(_wgslsmith_f_op_f32(func_1(vec2<f32>(175f, global2.b.x)).b.x * _wgslsmith_div_f32(288f, -1608f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.b.x) - -2019f)), global1[_wgslsmith_index_u32(~(~global0.x), 14u)], func_2(_wgslsmith_mod_vec4_i32(select(vec4<i32>(u_input.a.x, global3.a, global2.a, 0i), u_input.a, false), u_input.a), ~abs(vec2<u32>(4294967295u, global0.x)))).e.zw;
    let var_2 = Struct_1(_wgslsmith_clamp_i32(global2.a, _wgslsmith_mod_i32(var_0.a, ~(global3.a | 0i)), u_input.a.x), _wgslsmith_f_op_vec4_f32(abs(global3.b)), 74315u, vec2<i32>(-1i) * -u_input.a.wx, !(!select(select(vec4<bool>(global3.e.x, global3.e.x, global3.e.x, var_0.e.x), vec4<bool>(global2.e.x, true, global2.e.x, global2.e.x), global2.e), !global2.e, vec4<bool>(global2.e.x, var_0.e.x, true, false))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.b.x, _wgslsmith_f_op_f32(-var_0.b.x)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1207f, global3.b.x)))), ~var_0.c, 19370u, global0.zw);
}

