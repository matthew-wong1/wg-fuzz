struct Struct_1 {
    a: bool,
    b: f32,
}

struct Struct_2 {
    a: i32,
    b: vec3<bool>,
    c: Struct_1,
    d: Struct_1,
    e: vec4<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: bool,
    d: Struct_2,
    e: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 10> = array<Struct_2, 10>(Struct_2(1i, vec3<bool>(false, true, false), Struct_1(true, 325f), Struct_1(false, -418f), vec4<f32>(-314f, 140f, -849f, 399f)), Struct_2(-8797i, vec3<bool>(true, true, false), Struct_1(false, 188f), Struct_1(false, 1241f), vec4<f32>(-282f, 867f, 951f, 539f)), Struct_2(0i, vec3<bool>(true, true, false), Struct_1(true, 173f), Struct_1(false, 1155f), vec4<f32>(883f, -2074f, 1752f, -1183f)), Struct_2(-5476i, vec3<bool>(true, true, false), Struct_1(false, -231f), Struct_1(false, -1366f), vec4<f32>(885f, -280f, -1000f, 159f)), Struct_2(1135i, vec3<bool>(false, true, false), Struct_1(false, -222f), Struct_1(false, 1737f), vec4<f32>(292f, 728f, 891f, -956f)), Struct_2(-41855i, vec3<bool>(true, true, false), Struct_1(true, -466f), Struct_1(true, -1887f), vec4<f32>(156f, 2092f, 315f, -1000f)), Struct_2(-18943i, vec3<bool>(true, true, false), Struct_1(true, -304f), Struct_1(true, 479f), vec4<f32>(343f, -309f, -799f, -1000f)), Struct_2(3920i, vec3<bool>(true, false, true), Struct_1(false, 2154f), Struct_1(true, -348f), vec4<f32>(-1391f, -601f, 1139f, 1977f)), Struct_2(1i, vec3<bool>(false, false, true), Struct_1(true, -1017f), Struct_1(true, -450f), vec4<f32>(-337f, 1089f, 294f, 798f)), Struct_2(1i, vec3<bool>(true, true, true), Struct_1(false, -1230f), Struct_1(false, 602f), vec4<f32>(1354f, 1113f, -388f, 318f)));

var<private> global1: bool;

var<private> global2: array<Struct_1, 1>;

var<private> global3: array<bool, 27>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_3) -> bool {
    var var_0 = arg_0.b;
    var var_1 = Struct_2(1i, vec3<bool>(global3[_wgslsmith_index_u32(~_wgslsmith_mult_u32(1u, 1u), 27u)] | global3[_wgslsmith_index_u32(~u_input.b, 27u)], any(select(vec3<bool>(global3[_wgslsmith_index_u32(21667u, 27u)], false, global3[_wgslsmith_index_u32(u_input.b, 27u)]), !arg_0.d.b, var_0.a)), !(any(vec2<bool>(false, false)) | (1u < u_input.b))), Struct_1(var_0.a && (global3[_wgslsmith_index_u32(4294967295u, 27u)] && var_0.a), var_0.b), Struct_1(all(select(select(vec4<bool>(arg_0.d.d.a, var_0.a, false, global3[_wgslsmith_index_u32(u_input.b, 27u)]), vec4<bool>(true, var_0.a, true, true), false), !vec4<bool>(true, true, var_0.a, false), !vec4<bool>(arg_0.a.d.a, arg_0.b.a, false, arg_0.d.d.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1739f)))), arg_0.d.e);
    global2 = array<Struct_1, 1>();
    var var_2 = arg_0;
    var var_3 = vec4<u32>(0u, _wgslsmith_mult_u32(52264u, firstTrailingBit(~1u)), u_input.b, _wgslsmith_dot_vec4_u32(firstTrailingBit(firstTrailingBit(select(vec4<u32>(3351u, u_input.b, u_input.b, u_input.b), vec4<u32>(1u, u_input.b, u_input.b, u_input.b), global3[_wgslsmith_index_u32(0u, 27u)]))), ~vec4<u32>(max(u_input.b, u_input.b), u_input.b, u_input.b, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 1u, u_input.b), vec3<u32>(u_input.b, 4294967295u, u_input.b)))));
    return !var_2.a.c.a;
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: Struct_1) -> i32 {
    let var_0 = any(!select(select(vec2<bool>(arg_2.a, true), vec2<bool>(true, true), false), vec2<bool>(all(vec3<bool>(arg_1.a, true, arg_1.a)), !arg_2.a), func_3(Struct_3(Struct_2(arg_0.x, vec3<bool>(false, false, false), Struct_1(false, 1985f), Struct_1(global3[_wgslsmith_index_u32(u_input.b, 27u)], arg_1.b), vec4<f32>(324f, arg_2.b, arg_1.b, -1000f)), arg_1, false, global0[_wgslsmith_index_u32(8984u, 10u)], global0[_wgslsmith_index_u32(4294967295u, 10u)]))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(arg_2.b)))) + _wgslsmith_div_f32(-1481f, _wgslsmith_div_f32(-512f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(arg_1.b)))))));
    var var_2 = arg_2.b;
    var var_3 = Struct_3(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(1u, 1u), 10u)], Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(arg_1.b, 508f)))) >= arg_2.b, 1814f), countOneBits(firstTrailingBit(u_input.b << (108723u % 32u))) <= ~(~_wgslsmith_mod_u32(u_input.b, 9984u)), global0[_wgslsmith_index_u32(u_input.b, 10u)], Struct_2(arg_0.x, vec3<bool>(global3[_wgslsmith_index_u32(~4294967295u, 27u)], select(all(vec3<bool>(arg_1.a, arg_1.a, arg_2.a)), var_0, all(vec4<bool>(var_0, arg_2.a, true, arg_1.a))), false), arg_1, arg_1, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.b, -480f, -642f, arg_2.b)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.b, 1008f, arg_1.b, -644f))) - vec4<f32>(_wgslsmith_f_op_f32(-arg_2.b), _wgslsmith_f_op_f32(ceil(arg_2.b)), _wgslsmith_div_f32(arg_2.b, 375f), arg_1.b))));
    var var_4 = Struct_2(arg_0.x, vec3<bool>(all(var_3.a.b), true, true), Struct_1(all(!var_3.a.b.yz), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * arg_1.b))), arg_2, vec4<f32>(_wgslsmith_f_op_f32(trunc(854f)), _wgslsmith_f_op_f32(trunc(-897f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.b) - arg_2.b)), arg_1.b));
    return arg_0.x;
}

fn func_4(arg_0: i32, arg_1: u32) -> Struct_2 {
    global1 = global3[_wgslsmith_index_u32(0u, 27u)];
    let var_0 = false;
    let var_1 = Struct_1(!(!var_0), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(431f, 1465f), _wgslsmith_f_op_f32(-1158f + 655f)))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(2097f))), -747f)));
    var var_2 = _wgslsmith_mod_u32(~_wgslsmith_dot_vec3_u32(select(vec3<u32>(arg_1, 4294967295u, arg_1), vec3<u32>(arg_1, u_input.b, 4294967295u), vec3<bool>(var_0, true, var_1.a)), vec3<u32>(0u, 4294967295u, arg_1)) & _wgslsmith_sub_u32(select(u_input.b, 31092u, var_1.a) & arg_1, ~91506u ^ (arg_1 >> (34036u % 32u))), ~0u);
    var_2 = 4294967295u;
    return global0[_wgslsmith_index_u32(arg_1 << ((~_wgslsmith_div_u32(u_input.b, ~u_input.b) & firstTrailingBit(~abs(arg_1))) % 32u), 10u)];
}

fn func_1() -> vec3<i32> {
    var var_0 = vec4<u32>(~(~(~(~u_input.b))), 1u, 18607u, u_input.b);
    let var_1 = u_input.a;
    global3 = array<bool, 27>();
    global3 = array<bool, 27>();
    let var_2 = func_4(func_2(vec3<i32>(firstLeadingBit(1i), reverseBits(reverseBits(u_input.a)), 1i), global2[_wgslsmith_index_u32(41384u, 1u)], Struct_1(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -949f)))), _wgslsmith_sub_u32(~_wgslsmith_dot_vec4_u32(~vec4<u32>(17337u, var_0.x, u_input.b, 2376u), ~vec4<u32>(0u, 1u, 0u, u_input.b)), u_input.b));
    return min(firstLeadingBit(~(-vec3<i32>(u_input.c, var_1, -1i))), vec3<i32>(0i, -35424i, ~_wgslsmith_mult_i32(24151i, _wgslsmith_dot_vec2_i32(vec2<i32>(40893i, u_input.a), vec2<i32>(-2147483647i, u_input.c)))));
}

fn func_5(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: u32) -> Struct_2 {
    let var_0 = select(!(!func_4(i32(-1i) * -52160i, u_input.b).b.yx), !select(vec2<bool>(!global3[_wgslsmith_index_u32(u_input.b, 27u)], !arg_1.a), vec2<bool>(arg_1.b == -459f, true), any(!vec4<bool>(false, arg_1.a, false, true))), vec2<bool>(any(vec2<bool>(true, true)), abs(firstLeadingBit(43623i)) > _wgslsmith_div_i32(u_input.c, _wgslsmith_sub_i32(arg_0.x, u_input.a))));
    let var_1 = Struct_3(func_4(_wgslsmith_mod_i32(-34599i, func_4(abs(arg_0.x), arg_2).a), arg_2), Struct_1(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.b + arg_1.b)))), var_0.x, Struct_2(-18052i, func_4(_wgslsmith_div_i32(1i, 948i << (arg_2 % 32u)), select(14072u >> (u_input.b % 32u), 1u, u_input.a > u_input.c)).b, func_4(abs(-5609i), ~(1u >> (arg_2 % 32u))).c, global2[_wgslsmith_index_u32(u_input.b, 1u)], _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(319f)), _wgslsmith_f_op_f32(arg_1.b * 222f), _wgslsmith_f_op_f32(step(105f, 1393f)), _wgslsmith_f_op_f32(-arg_1.b)))), global0[_wgslsmith_index_u32(u_input.b, 10u)]);
    let var_2 = _wgslsmith_f_op_vec2_f32(max(var_1.d.e.xz, _wgslsmith_f_op_vec2_f32(-vec2<f32>(2403f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-234f)) - -1258f)))));
    let var_3 = Struct_2(-_wgslsmith_mult_i32(i32(-1i) * -arg_0.x, -24182i), !var_1.a.b, func_4(var_1.a.a, 1u).d, Struct_1(any(select(!vec4<bool>(global3[_wgslsmith_index_u32(1u, 27u)], arg_1.a, global3[_wgslsmith_index_u32(22195u, 27u)], var_1.e.d.a), !vec4<bool>(true, arg_1.a, false, false), vec4<bool>(true, arg_1.a, var_0.x, false))), var_1.d.e.x), vec4<f32>(316f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_1.b), -156f)), var_1.b.b, var_1.d.e.x));
    return Struct_2(_wgslsmith_clamp_i32(var_1.e.a, ~_wgslsmith_clamp_i32(~var_1.d.a, _wgslsmith_add_i32(u_input.c, 31991i), -8097i), _wgslsmith_add_i32(var_1.a.a, ~(-53133i))), vec3<bool>(false | (false & any(var_1.a.b)), false == (~var_1.d.a >= -58673i), true), Struct_1(var_1.a.b.x, _wgslsmith_f_op_f32(arg_1.b * var_2.x)), func_4(var_3.a, ~arg_2).c, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(arg_1.b)), _wgslsmith_f_op_f32(select(-1297f, -346f, func_3(Struct_3(var_3, Struct_1(true, -1181f), arg_1.a, var_3, Struct_2(arg_0.x, vec3<bool>(false, false, arg_1.a), Struct_1(global3[_wgslsmith_index_u32(u_input.b, 27u)], -366f), Struct_1(false, 385f), vec4<f32>(var_3.d.b, -249f, var_1.b.b, 1243f)))))), _wgslsmith_f_op_f32(step(-1184f, 1f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.x * var_3.e.x) - _wgslsmith_f_op_f32(-185f - arg_1.b)))));
}

fn func_6(arg_0: Struct_2, arg_1: u32) -> Struct_1 {
    global3 = array<bool, 27>();
    var var_0 = global0[_wgslsmith_index_u32(96442u, 10u)];
    let var_1 = ~firstLeadingBit(countOneBits(firstLeadingBit(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_0.a, var_0.a, 0i, var_0.a), vec4<i32>(-57992i, u_input.c, 0i, 36501i), vec4<i32>(34177i, var_0.a, var_0.a, 15111i)))));
    var var_2 = Struct_1(true, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(var_0.e.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.d.b - var_0.c.b)))))));
    var var_3 = Struct_3(func_5(reverseBits(vec3<i32>(var_1.x | var_0.a, i32(-1i) * -4121i, 66141i)), Struct_1(arg_0.d.a, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_0.e.x)))), ~((42556u << (0u % 32u)) >> (_wgslsmith_clamp_u32(u_input.b, arg_1, arg_1) % 32u))), func_4(reverseBits(~_wgslsmith_mult_i32(0i, -78835i)), abs(abs(83547u | arg_1))).c, true, func_4(~(-1i), _wgslsmith_add_u32(select(0u, 1u, arg_0.c.a) >> (arg_1 % 32u), firstLeadingBit(~u_input.b))), arg_0);
    return func_4(_wgslsmith_dot_vec3_i32(~var_1.wxy, -_wgslsmith_mod_vec3_i32(countOneBits(vec3<i32>(46378i, 17443i, var_1.x)), firstLeadingBit(var_1.xzy))), 19236u).c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(func_5(select(abs(vec3<i32>(20954i, u_input.c, u_input.c)) >> (vec3<u32>(37231u, 1u, 2732u) % vec3<u32>(32u)), func_1(), !func_4(-41368i, 4294967295u).b), Struct_1(select(global3[_wgslsmith_index_u32(u_input.b ^ 91895u, 27u)], all(vec4<bool>(global3[_wgslsmith_index_u32(u_input.b, 27u)], global3[_wgslsmith_index_u32(4294967295u, 27u)], false, global3[_wgslsmith_index_u32(0u, 27u)])), func_4(u_input.c, u_input.b).c.a), -973f), max(1u, ~135341u)), 4294967295u);
    global0 = array<Struct_2, 10>();
    global2 = array<Struct_1, 1>();
    global3 = array<bool, 27>();
    let var_1 = vec3<bool>(true || all(vec4<bool>(!global3[_wgslsmith_index_u32(u_input.b, 27u)], false, func_5(vec3<i32>(-31486i, u_input.a, 8331i), Struct_1(true, var_0.b), u_input.b).d.a, all(vec2<bool>(var_0.a, global3[_wgslsmith_index_u32(4294967295u, 27u)])))), var_0.a, !var_0.a);
    let x = u_input.a;
    s_output = StorageBuffer(select(vec4<u32>(firstTrailingBit(1u), 27608u, u_input.b, _wgslsmith_sub_u32(u_input.b, 31687u)), ~vec4<u32>(2578u, 0u, u_input.b, 49042u), var_1.x) >> (vec4<u32>(_wgslsmith_mod_u32(~4801u, min(u_input.b, 5767u)), u_input.b, u_input.b, ~4294967295u) % vec4<u32>(32u)), max(u_input.b, ~50654u));
}

