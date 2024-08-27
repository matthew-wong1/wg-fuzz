struct Struct_1 {
    a: u32,
    b: f32,
    c: i32,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec4<bool>,
    d: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: i32,
    d: vec3<i32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 31>;

var<private> global1: array<Struct_2, 20> = array<Struct_2, 20>(Struct_2(Struct_1(16218u, 555f, 3996i, -508i), Struct_1(39590u, -964f, -1i, -26591i)), Struct_2(Struct_1(63558u, -119f, 50514i, 14663i), Struct_1(4294967295u, -292f, -18841i, -1i)), Struct_2(Struct_1(1u, -517f, i32(-2147483648), -5479i), Struct_1(44803u, 1000f, 23270i, 2147483647i)), Struct_2(Struct_1(34927u, -131f, 1i, -8362i), Struct_1(12803u, 473f, 25200i, -1i)), Struct_2(Struct_1(0u, 829f, 17205i, -38079i), Struct_1(57669u, -272f, 71471i, -37331i)), Struct_2(Struct_1(0u, 1139f, 10037i, i32(-2147483648)), Struct_1(25590u, -1096f, -11747i, 70379i)), Struct_2(Struct_1(6659u, 920f, i32(-2147483648), 1i), Struct_1(1u, 1000f, -22983i, -7339i)), Struct_2(Struct_1(45615u, -283f, 1i, i32(-2147483648)), Struct_1(1u, -691f, -8006i, -1i)), Struct_2(Struct_1(54884u, -1200f, i32(-2147483648), -10248i), Struct_1(26561u, 1018f, -1i, -70563i)), Struct_2(Struct_1(1u, 1000f, i32(-2147483648), -1439i), Struct_1(1u, 999f, 2147483647i, -10469i)), Struct_2(Struct_1(4294967295u, 2082f, 1i, -9455i), Struct_1(39600u, -304f, 2147483647i, 22365i)), Struct_2(Struct_1(20170u, -1333f, 1i, 0i), Struct_1(1u, 1000f, 56650i, 40265i)), Struct_2(Struct_1(0u, 860f, 24984i, 14251i), Struct_1(12926u, 267f, 1i, 32905i)), Struct_2(Struct_1(74517u, -300f, 20525i, 1i), Struct_1(13374u, -321f, 42348i, 6162i)), Struct_2(Struct_1(0u, -1576f, 1i, 0i), Struct_1(9174u, -1212f, 2360i, 1i)), Struct_2(Struct_1(18408u, -334f, 32709i, i32(-2147483648)), Struct_1(4294967295u, -264f, 2540i, -28i)), Struct_2(Struct_1(32523u, -658f, 39191i, 31419i), Struct_1(4294967295u, -877f, 25749i, -15089i)), Struct_2(Struct_1(89565u, -458f, 23418i, 49668i), Struct_1(13059u, 303f, 1i, 2147483647i)), Struct_2(Struct_1(22256u, -147f, -6506i, 4951i), Struct_1(1u, -2107f, 2147483647i, 1i)), Struct_2(Struct_1(35269u, 121f, -1i, -41530i), Struct_1(4294967295u, -443f, 21666i, 36964i)));

var<private> global2: Struct_1;

var<private> global3: Struct_3;

var<private> global4: array<Struct_2, 11>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
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

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
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

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: vec3<f32>, arg_1: Struct_3) -> Struct_1 {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(ceil(arg_1.b.b)), -1054f, -301f);
    var var_1 = global1[_wgslsmith_index_u32(~7994u, 20u)];
    global3 = Struct_3(Struct_2(arg_1.a.b, global3.a.b), Struct_1(~(91329u | global2.a) ^ _wgslsmith_sub_u32(0u, _wgslsmith_dot_vec3_u32(vec3<u32>(global2.a, global2.a, global3.b.a), vec3<u32>(var_1.b.a, arg_1.b.a, 4294967295u))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -165f))), var_1.a.d, ~((var_1.a.d << (7993u % 32u)) << (1u % 32u))), vec4<bool>(arg_1.c.x, global2.a < select(var_1.a.a, _wgslsmith_sub_u32(global2.a, 98793u), true), select(arg_0.x <= _wgslsmith_f_op_f32(exp2(global2.b)), arg_1.c.x, true), false), 1i);
    var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f - global2.b), _wgslsmith_f_op_f32(max(-130f, arg_1.b.b))))) * _wgslsmith_f_op_f32(min(var_1.a.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.a.a.b + arg_0.x))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.b * global2.b) - var_0.x)))), arg_1.b.b);
    var_0 = arg_0;
    return arg_1.a.b;
}

fn func_3(arg_0: i32, arg_1: vec2<bool>, arg_2: Struct_2) -> vec3<u32> {
    let var_0 = Struct_3(Struct_2(func_2(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.b, 741f, global3.a.a.b) - vec3<f32>(arg_2.a.b, arg_2.b.b, global2.b)), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.b.b, 777f, -1683f) + vec3<f32>(global3.b.b, global2.b, 198f)))), Struct_3(Struct_2(arg_2.b, Struct_1(0u, 1059f, u_input.e, 0i)), func_2(vec3<f32>(169f, global3.b.b, -238f), Struct_3(global1[_wgslsmith_index_u32(global3.a.a.a, 20u)], arg_2.a, vec4<bool>(false, global3.c.x, true, arg_1.x), global2.c)), select(global3.c, vec4<bool>(true, global3.c.x, global3.c.x, global3.c.x), global3.c), u_input.c)), Struct_1(~countOneBits(38056u), _wgslsmith_f_op_f32(-287f * 529f), -1i, global3.a.b.d)), Struct_1(~4294967295u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_2.a.b, _wgslsmith_f_op_f32(-arg_2.b.b)))), _wgslsmith_mult_i32(45132i, arg_2.b.c), ~min(arg_0, -2147483647i) << (_wgslsmith_mult_u32(arg_2.a.a, global2.a) % 32u)), vec4<bool>(global3.c.x, global0[_wgslsmith_index_u32(~arg_2.b.a & 53966u, 31u)] && true, false, true), 2147483647i);
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-304f, -1636f))))), vec2<f32>(_wgslsmith_f_op_f32(round(global2.b)), _wgslsmith_div_f32(350f, global3.a.b.b))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.a.b.b, _wgslsmith_f_op_f32(global2.b * 1292f)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global2.b, 1126f), vec2<f32>(global3.a.b.b, arg_2.a.b), vec2<bool>(false, false))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(global2.b, -1183f) + vec2<f32>(global2.b, -413f)))))));
    let var_2 = global3.c.x || var_0.c.x;
    var var_3 = _wgslsmith_clamp_vec2_i32(vec2<i32>(-4057i, ~(-arg_0)), vec2<i32>(i32(-1i) * -18842i, func_2(vec3<f32>(global2.b, 701f, var_1.x), Struct_3(Struct_2(Struct_1(global3.a.a.a, 884f, -2147483647i, var_0.b.c), Struct_1(global3.a.a.a, 827f, 3738i, -16377i)), global3.b, vec4<bool>(true, true, false, true), global3.a.b.c)).c ^ max(-37956i, ~55841i)), vec2<i32>(~select(_wgslsmith_sub_i32(var_0.a.b.d, 44953i), 0i, var_0.c.x), _wgslsmith_div_i32(u_input.c, u_input.e << (~34122u % 32u))));
    global3 = Struct_3(Struct_2(var_0.a.a, Struct_1(~global2.a, _wgslsmith_f_op_f32(select(global2.b, -901f, true)), -38940i, _wgslsmith_sub_i32(_wgslsmith_mult_i32(arg_2.b.d, u_input.a.x), 1i))), arg_2.a, !(!(!var_0.c)), -(abs(_wgslsmith_div_i32(var_0.d, 2147483647i)) & select(_wgslsmith_dot_vec2_i32(u_input.d.xy, vec2<i32>(-2147483647i, arg_2.b.d)), _wgslsmith_mod_i32(1i, -1i), all(vec4<bool>(arg_1.x, false, false, global3.c.x)))));
    return firstLeadingBit(vec3<u32>(firstTrailingBit(global2.a), func_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(569f, global2.b, 1470f) * vec3<f32>(-126f, 1424f, global2.b)), Struct_3(Struct_2(var_0.b, arg_2.b), Struct_1(28450u, arg_2.a.b, global2.d, 1i), vec4<bool>(global0[_wgslsmith_index_u32(global2.a, 31u)], false, arg_1.x, global0[_wgslsmith_index_u32(42617u, 31u)]), -2147483647i)).a ^ _wgslsmith_mod_u32(global3.a.a.a, var_0.b.a ^ global2.a), global3.b.a));
}

fn func_4(arg_0: vec2<f32>, arg_1: vec3<u32>, arg_2: Struct_1) -> Struct_3 {
    global1 = array<Struct_2, 20>();
    var var_0 = func_2(vec3<f32>(global3.a.b.b, _wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(-arg_2.b)), Struct_3(Struct_2(func_2(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1334f, arg_0.x, global2.b))), Struct_3(Struct_2(arg_2, Struct_1(arg_2.a, -1098f, -30681i, global2.c)), global3.b, global3.c, global3.a.a.d)), func_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1334f, global3.a.b.b, 1684f) + vec3<f32>(-245f, global2.b, 690f)), Struct_3(global1[_wgslsmith_index_u32(110811u, 20u)], global3.b, vec4<bool>(false, global0[_wgslsmith_index_u32(arg_2.a, 31u)], global0[_wgslsmith_index_u32(0u, 31u)], global0[_wgslsmith_index_u32(4294967295u, 31u)]), u_input.d.x))), func_2(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1204f, arg_2.b, global3.a.a.b) - vec3<f32>(-1847f, global3.a.a.b, 395f)))), Struct_3(Struct_2(Struct_1(arg_2.a, global3.a.b.b, -4675i, 2147483647i), Struct_1(arg_2.a, global3.a.b.b, -1i, u_input.b.x)), func_2(vec3<f32>(arg_0.x, 1174f, arg_2.b), Struct_3(Struct_2(Struct_1(arg_1.x, -1000f, arg_2.d, -2147483647i), Struct_1(75612u, arg_0.x, -1i, -49041i)), Struct_1(1840u, -344f, 1i, 14751i), global3.c, global3.d)), select(vec4<bool>(true, false, global0[_wgslsmith_index_u32(9667u, 31u)], true), global3.c, vec4<bool>(true, false, global0[_wgslsmith_index_u32(global3.b.a, 31u)], true)), _wgslsmith_dot_vec4_i32(vec4<i32>(23755i, global2.d, arg_2.c, u_input.c), vec4<i32>(global2.d, 1i, 2147483647i, global3.b.d)))), global3.c, arg_2.c));
    global4 = array<Struct_2, 11>();
    global2 = func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(-1000f)), -1240f, all(global3.c.xxw))), _wgslsmith_f_op_f32(abs(-948f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global2.b))))), Struct_3(global4[_wgslsmith_index_u32(1u, 11u)], func_2(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-1113f, -352f, global3.b.b))))), Struct_3(Struct_2(Struct_1(18340u, 126f, global2.d, -24479i), arg_2), Struct_1(arg_2.a, arg_0.x, 19241i, -33550i), global3.c, -global2.d)), select(!global3.c, !global3.c, select(global3.c, !global3.c, true)), global2.c));
    let var_1 = global1[_wgslsmith_index_u32(~(~(~4294967295u)), 20u)];
    return Struct_3(global3.a, Struct_1(func_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(671f, -996f, -1340f) - vec3<f32>(-869f, 1700f, -1545f)), Struct_3(Struct_2(global3.a.a, arg_2), arg_2, vec4<bool>(global0[_wgslsmith_index_u32(var_1.a.a, 31u)], true, false, false), 38342i)).a | 0u, _wgslsmith_f_op_f32(round(-1456f)), -490i, _wgslsmith_dot_vec4_i32(~max(vec4<i32>(var_1.a.c, -2147483647i, -67882i, -52408i), vec4<i32>(-1i, -31479i, 28213i, arg_2.c)), -(vec4<i32>(global3.b.d, arg_2.d, -2147483647i, 38001i) ^ vec4<i32>(arg_2.c, 2147483647i, u_input.c, 25266i)))), select(vec4<bool>(global3.c.x && true, true, any(vec2<bool>(global3.c.x, global0[_wgslsmith_index_u32(arg_2.a, 31u)])), false), vec4<bool>(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(5540u, 49745u, 2020u) ^ _wgslsmith_sub_u32(var_1.b.a, 117415u), 31u)], global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(abs(76785u), arg_1.x), 31u)], global3.c.x, any(vec2<bool>(true, global0[_wgslsmith_index_u32(1u, 31u)]))), global3.c), min(arg_2.d, ~(-7008i)));
}

fn func_1(arg_0: f32, arg_1: vec2<u32>, arg_2: f32, arg_3: vec2<f32>) -> vec4<i32> {
    global0 = array<bool, 31>();
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.b.b, 1000f, global2.b)))))) * vec3<f32>(1000f, _wgslsmith_f_op_f32(f32(-1f) * -275f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.a.a.b * global3.b.b)))));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, global2.b, 323f, global3.a.a.b)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-727f, global3.b.b, arg_0, -1000f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-413f, global2.b, global2.b, 1000f))))));
    var var_2 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, var_1.x, arg_2, global2.b))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-914f, -344f, global3.b.b, global3.b.b)))))));
    var var_3 = func_4(arg_3, ~func_3(-1i, vec2<bool>(true, true), Struct_2(func_2(vec3<f32>(886f, var_2.x, global2.b), Struct_3(Struct_2(Struct_1(4294967295u, arg_2, 14279i, -22770i), Struct_1(arg_1.x, 2133f, global3.a.b.c, -29031i)), global3.b, global3.c, global3.d)), global3.b)), global3.a.a);
    return vec4<i32>(~(~firstTrailingBit(global3.a.b.c)), min(var_3.d, var_3.a.a.c), max(-_wgslsmith_dot_vec4_i32(-vec4<i32>(global2.d, global2.d, 65565i, 0i), vec4<i32>(0i, -1i, -77898i, -1i)), -func_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_3.x, 1000f, 239f) - var_2.wzw), Struct_3(Struct_2(Struct_1(29933u, -901f, -2147483647i, u_input.d.x), Struct_1(36152u, 1941f, 2147483647i, 15892i)), Struct_1(4294967295u, -186f, var_3.d, var_3.b.d), vec4<bool>(global0[_wgslsmith_index_u32(1179u, 31u)], global3.c.x, var_3.c.x, true), var_3.d)).c), _wgslsmith_sub_i32(_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, 0i, 1i, var_3.d), vec4<i32>(20883i, 0i, var_3.a.a.d, 57245i)), global2.d << (arg_1.x % 32u)) | func_2(var_2.xzz, func_4(var_1.yw, vec3<u32>(39053u, arg_1.x, 0u), var_3.b)).c, _wgslsmith_add_i32(var_3.a.a.d & (i32(-1i) * -2147483647i), 1i)));
}

fn func_5(arg_0: vec4<i32>, arg_1: vec2<f32>, arg_2: vec3<i32>) -> Struct_2 {
    let var_0 = 1f;
    let var_1 = Struct_3(Struct_2(Struct_1(0u, global2.b, 2189i, firstTrailingBit(i32(-1i) * -5563i)), global3.b), Struct_1(~(~(~1u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global3.b.b)))), max(_wgslsmith_clamp_i32(42976i, ~(-9162i), func_4(arg_1, vec3<u32>(global2.a, global3.b.a, global3.b.a), global3.a.b).a.a.d), -arg_2.x), -(~_wgslsmith_dot_vec4_i32(arg_0, arg_0))), global3.c, select(-2147483647i, arg_0.x, _wgslsmith_mult_u32(_wgslsmith_mult_u32(25651u, 0u), _wgslsmith_dot_vec3_u32(vec3<u32>(global2.a, 1u, global3.a.a.a), vec3<u32>(global3.a.b.a, global3.a.a.a, global2.a))) != global2.a));
    var var_2 = global3.c.xzy;
    global0 = array<bool, 31>();
    let var_3 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_1.b.b, func_4(_wgslsmith_f_op_vec2_f32(step(arg_1, vec2<f32>(var_1.a.b.b, -1000f))), _wgslsmith_sub_vec3_u32(vec3<u32>(135200u, global2.a, var_1.a.a.a), vec3<u32>(global3.a.a.a, var_1.a.b.a, global2.a)), func_4(arg_1, vec3<u32>(30753u, var_1.b.a, var_1.a.b.a), var_1.b).a.a).a.a.b, 225f, -1677f)))));
    return Struct_2(global3.a.a, global3.a.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(func_5(reverseBits(_wgslsmith_mult_vec4_i32(-vec4<i32>(54943i, global3.d, global3.d, global2.c), func_1(473f, vec2<u32>(global2.a, 21642u), global2.b, vec2<f32>(global3.a.b.b, global3.b.b)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global3.b.b, 1267f) + vec2<f32>(852f, -928f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1180f, global2.b)))), u_input.d), Struct_1(~(9884u & (global3.b.a << (0u % 32u))), _wgslsmith_f_op_f32(floor(-1199f)), ~(-21481i), global3.b.d), select(!select(vec4<bool>(false, global0[_wgslsmith_index_u32(global2.a, 31u)], global0[_wgslsmith_index_u32(global3.b.a, 31u)], true), select(global3.c, global3.c, vec4<bool>(global3.c.x, global0[_wgslsmith_index_u32(global2.a, 31u)], true, true)), true), func_4(vec2<f32>(_wgslsmith_f_op_f32(-global3.b.b), _wgslsmith_f_op_f32(-global2.b)), vec3<u32>(0u, _wgslsmith_div_u32(48479u, global2.a), ~global2.a), Struct_1(global3.a.a.a, 470f, -12795i, ~2147483647i)).c, true), -29110i);
    let var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-738f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.b + global3.b.b) * global2.b)), _wgslsmith_f_op_f32(ceil(global3.b.b))));
    global0 = array<bool, 31>();
    var var_2 = Struct_1(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 4294967295u), vec2<u32>(13514u, ~global3.b.a)) << (~func_4(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.b.b, -457f), var_1.zz, global3.c.xy)), ~vec3<u32>(34827u, var_0.b.a, 4294967295u), func_2(vec3<f32>(var_1.x, 198f, var_0.b.b), Struct_3(Struct_2(var_0.b, global3.b), var_0.b, var_0.c, global3.a.a.d))).a.b.a % 32u), -1330f, ~_wgslsmith_add_i32(func_5(vec4<i32>(25133i, var_0.b.d, u_input.c, -2147483647i), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(global2.b, -1585f))), ~vec3<i32>(-2147483647i, global3.a.a.d, 2617i)).b.c, func_1(_wgslsmith_f_op_f32(-1000f - var_1.x), vec2<u32>(global3.b.a, var_0.b.a) | vec2<u32>(46170u, 1582u), 2344f, var_1.zz).x), global3.b.c);
    global2 = Struct_1(~var_0.a.b.a, var_2.b, _wgslsmith_mult_i32(global3.a.a.d, ~func_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1369f, 679f, -404f) * var_1), func_4(var_1.yz, vec3<u32>(35829u, global2.a, var_2.a), global3.a.b)).d), u_input.b.x);
    let var_3 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(func_2(var_1, Struct_3(Struct_2(global3.b, Struct_1(15476u, global3.a.a.b, var_2.d, var_2.c)), Struct_1(var_0.b.a, var_1.x, 1i, 2147483647i), global3.c, global2.d)).b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_2.b, -244f)) - _wgslsmith_f_op_f32(-490f - -1000f))) - var_0.a.b.b)));
    var var_4 = func_5(vec4<i32>(_wgslsmith_dot_vec3_i32(~firstLeadingBit(u_input.d), u_input.d), -(~(-29221i)) << ((1u | _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, global2.a, global3.b.a, 57083u), vec4<u32>(0u, global2.a, var_0.a.a.a, 1u))) % 32u), var_2.d, _wgslsmith_sub_i32(2274i, global3.b.d)), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(var_1.xz, _wgslsmith_f_op_vec2_f32(step(vec2<f32>(1000f, global2.b), _wgslsmith_div_vec2_f32(var_1.xz, var_1.xy)))) - vec2<f32>(_wgslsmith_f_op_f32(select(-137f, _wgslsmith_f_op_f32(f32(-1f) * -701f), false)), func_4(vec2<f32>(var_1.x, var_0.a.a.b), vec3<u32>(1u, 98068u, global2.a), func_4(var_1.xx, vec3<u32>(0u, global3.a.a.a, global3.a.a.a), global3.a.b).a.a).a.b.b)), firstTrailingBit(firstLeadingBit(vec3<i32>(u_input.c, -48605i, var_2.c) ^ vec3<i32>(var_0.a.a.c, -13069i, global3.a.b.d)))).a;
    let var_5 = func_4(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(func_2(vec3<f32>(var_3, var_0.b.b, 1034f), Struct_3(global4[_wgslsmith_index_u32(21659u, 11u)], Struct_1(var_4.a, 1000f, var_2.c, var_4.c), global3.c, var_4.d)).b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_3), var_0.b.b)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(var_1.zy, vec2<f32>(309f, var_0.a.b.b), vec2<bool>(true, true))) * _wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_1.x, 1186f))))))), select(select(vec3<u32>(var_4.a, var_4.a, var_0.a.a.a) & select(vec3<u32>(var_4.a, 4294967295u, var_0.a.a.a), vec3<u32>(var_2.a, global3.a.a.a, global2.a), false), ~vec3<u32>(40916u, 17539u, global2.a), func_4(_wgslsmith_f_op_vec2_f32(select(var_1.xy, vec2<f32>(182f, -795f), vec2<bool>(true, false))), vec3<u32>(global2.a, global2.a, var_0.a.a.a), Struct_1(global3.b.a, var_3, -22475i, -1i)).c.zzw), ~(~(~vec3<u32>(25581u, global3.b.a, 46589u))), all(vec2<bool>(select(global3.c.x, var_0.c.x, false), var_0.a.b.a != 76024u))), Struct_1(~(~func_3(u_input.c, var_0.c.ww, global4[_wgslsmith_index_u32(global2.a, 11u)]).x), _wgslsmith_f_op_f32(trunc(-1949f)), global2.d, _wgslsmith_div_i32(global3.d, abs(_wgslsmith_dot_vec3_i32(u_input.d, u_input.d))))).a.a;
    let x = u_input.a;
    s_output = StorageBuffer(6954u, select(reverseBits(~_wgslsmith_add_vec4_i32(vec4<i32>(var_5.c, var_4.d, global2.c, 0i), vec4<i32>(12932i, 9413i, var_4.d, var_5.c))), _wgslsmith_add_vec4_i32(vec4<i32>(55252i, var_5.d, -1i, var_4.d) ^ vec4<i32>(0i, -2147483647i, -17419i, 1i), min(~vec4<i32>(-11179i, 0i, u_input.b.x, -1i), vec4<i32>(global2.c, 2147483647i, 1i, 11101i))), func_4(var_1.xy, ~countOneBits(vec3<u32>(global3.b.a, 17214u, 13877u)), Struct_1(min(0u, 64062u), _wgslsmith_f_op_f32(trunc(304f)), var_0.a.a.d, abs(-3453i))).c.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(min(var_5.b, _wgslsmith_f_op_f32(var_5.b + 534f))), -771f, -333f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
}

