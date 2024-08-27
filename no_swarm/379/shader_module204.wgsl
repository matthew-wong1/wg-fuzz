struct Struct_1 {
    a: vec2<i32>,
    b: u32,
    c: vec2<u32>,
    d: vec2<f32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<i32>,
    c: i32,
    d: f32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: array<Struct_2, 28> = array<Struct_2, 28>(Struct_2(vec4<u32>(27647u, 0u, 4294967295u, 1u), Struct_1(vec2<i32>(-3619i, -1i), 48152u, vec2<u32>(0u, 1u), vec2<f32>(-954f, 673f))), Struct_2(vec4<u32>(4294967295u, 20013u, 22741u, 0u), Struct_1(vec2<i32>(2147483647i, i32(-2147483648)), 2897u, vec2<u32>(23142u, 2475u), vec2<f32>(-1000f, 232f))), Struct_2(vec4<u32>(4294967295u, 1u, 4294967295u, 12779u), Struct_1(vec2<i32>(-8214i, 0i), 1u, vec2<u32>(4294967295u, 58409u), vec2<f32>(-1910f, 184f))), Struct_2(vec4<u32>(0u, 76261u, 19148u, 63296u), Struct_1(vec2<i32>(15104i, 46314i), 1u, vec2<u32>(4294967295u, 0u), vec2<f32>(1586f, -549f))), Struct_2(vec4<u32>(1u, 37142u, 0u, 33705u), Struct_1(vec2<i32>(14327i, 1i), 33686u, vec2<u32>(13071u, 48606u), vec2<f32>(-1513f, 732f))), Struct_2(vec4<u32>(4294967295u, 0u, 4294967295u, 4153u), Struct_1(vec2<i32>(0i, 0i), 95808u, vec2<u32>(94177u, 4294967295u), vec2<f32>(-364f, -1139f))), Struct_2(vec4<u32>(107729u, 28483u, 0u, 0u), Struct_1(vec2<i32>(31298i, -11668i), 69682u, vec2<u32>(0u, 1u), vec2<f32>(555f, 1401f))), Struct_2(vec4<u32>(4294967295u, 1u, 45455u, 0u), Struct_1(vec2<i32>(29594i, 3115i), 1u, vec2<u32>(64411u, 1u), vec2<f32>(-499f, -442f))), Struct_2(vec4<u32>(24928u, 22471u, 4294967295u, 0u), Struct_1(vec2<i32>(1i, 31794i), 129972u, vec2<u32>(4294967295u, 1u), vec2<f32>(1695f, 280f))), Struct_2(vec4<u32>(1u, 43886u, 1u, 0u), Struct_1(vec2<i32>(-21383i, -1i), 4294967295u, vec2<u32>(42735u, 30177u), vec2<f32>(-680f, -1354f))), Struct_2(vec4<u32>(62955u, 37723u, 47600u, 21868u), Struct_1(vec2<i32>(49246i, 21830i), 65390u, vec2<u32>(0u, 25294u), vec2<f32>(-1268f, 204f))), Struct_2(vec4<u32>(17845u, 4294967295u, 4294967295u, 1u), Struct_1(vec2<i32>(2147483647i, 2147483647i), 77333u, vec2<u32>(26333u, 22779u), vec2<f32>(657f, 715f))), Struct_2(vec4<u32>(19040u, 35749u, 4294967295u, 42672u), Struct_1(vec2<i32>(0i, 2147483647i), 0u, vec2<u32>(28317u, 4294967295u), vec2<f32>(760f, 2281f))), Struct_2(vec4<u32>(42028u, 50245u, 18397u, 82292u), Struct_1(vec2<i32>(-17288i, -1i), 4294967295u, vec2<u32>(8949u, 25581u), vec2<f32>(401f, -2019f))), Struct_2(vec4<u32>(1u, 0u, 21202u, 67573u), Struct_1(vec2<i32>(-1i, 1i), 412u, vec2<u32>(6479u, 62321u), vec2<f32>(201f, -114f))), Struct_2(vec4<u32>(79342u, 10290u, 4294967295u, 1u), Struct_1(vec2<i32>(0i, -1i), 1u, vec2<u32>(2271u, 20124u), vec2<f32>(-862f, -214f))), Struct_2(vec4<u32>(48154u, 23689u, 1u, 38569u), Struct_1(vec2<i32>(0i, -12294i), 1u, vec2<u32>(36004u, 38486u), vec2<f32>(1000f, -791f))), Struct_2(vec4<u32>(8878u, 0u, 85262u, 4294967295u), Struct_1(vec2<i32>(-30328i, -31022i), 52736u, vec2<u32>(0u, 4294967295u), vec2<f32>(987f, -1254f))), Struct_2(vec4<u32>(0u, 73421u, 4294967295u, 0u), Struct_1(vec2<i32>(1i, -1i), 1u, vec2<u32>(1u, 0u), vec2<f32>(-498f, -1000f))), Struct_2(vec4<u32>(0u, 68158u, 105962u, 112097u), Struct_1(vec2<i32>(1i, 57472i), 70667u, vec2<u32>(24929u, 33502u), vec2<f32>(180f, -476f))), Struct_2(vec4<u32>(4294967295u, 1u, 1u, 86498u), Struct_1(vec2<i32>(5177i, 0i), 71806u, vec2<u32>(1u, 8895u), vec2<f32>(378f, -610f))), Struct_2(vec4<u32>(1u, 61823u, 47824u, 4294967295u), Struct_1(vec2<i32>(11272i, 0i), 1u, vec2<u32>(0u, 1u), vec2<f32>(-402f, 206f))), Struct_2(vec4<u32>(4294967295u, 1u, 11443u, 0u), Struct_1(vec2<i32>(0i, i32(-2147483648)), 70334u, vec2<u32>(0u, 1u), vec2<f32>(849f, 776f))), Struct_2(vec4<u32>(1u, 1u, 75171u, 44648u), Struct_1(vec2<i32>(6754i, i32(-2147483648)), 8252u, vec2<u32>(89937u, 0u), vec2<f32>(-1765f, 1000f))), Struct_2(vec4<u32>(19334u, 34104u, 65505u, 8384u), Struct_1(vec2<i32>(40131i, 9036i), 29731u, vec2<u32>(47431u, 1u), vec2<f32>(1000f, -319f))), Struct_2(vec4<u32>(4294967295u, 64748u, 0u, 1u), Struct_1(vec2<i32>(23740i, 27498i), 27802u, vec2<u32>(21607u, 67576u), vec2<f32>(1390f, -629f))), Struct_2(vec4<u32>(0u, 4294967295u, 70492u, 0u), Struct_1(vec2<i32>(2147483647i, 0i), 62853u, vec2<u32>(4294967295u, 1u), vec2<f32>(-426f, 357f))), Struct_2(vec4<u32>(31743u, 0u, 45492u, 0u), Struct_1(vec2<i32>(48025i, 41428i), 9876u, vec2<u32>(4294967295u, 50631u), vec2<f32>(1283f, 1571f))));

var<private> global2: Struct_1 = Struct_1(vec2<i32>(-37738i, -32528i), 20855u, vec2<u32>(52720u, 32364u), vec2<f32>(606f, -931f));

var<private> global3: vec2<bool> = vec2<bool>(true, false);

var<private> global4: array<Struct_2, 2> = array<Struct_2, 2>(Struct_2(vec4<u32>(1u, 0u, 4294967295u, 1u), Struct_1(vec2<i32>(14147i, -1i), 27816u, vec2<u32>(4294967295u, 19950u), vec2<f32>(-1695f, -1000f))), Struct_2(vec4<u32>(0u, 4294967295u, 1u, 69922u), Struct_1(vec2<i32>(-10081i, 0i), 12538u, vec2<u32>(0u, 4294967295u), vec2<f32>(-869f, -652f))));

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: i32, arg_1: bool, arg_2: u32) -> u32 {
    global3 = !select(select(!(!vec2<bool>(false, arg_1)), select(vec2<bool>(false, global3.x), vec2<bool>(true, true), arg_1), vec2<bool>(!global3.x, all(vec3<bool>(arg_1, true, true)))), vec2<bool>(true, any(select(vec2<bool>(arg_1, arg_1), vec2<bool>(global3.x, arg_1), arg_1))), !(!(!vec2<bool>(arg_1, false))));
    global1 = array<Struct_2, 28>();
    let var_0 = global4[_wgslsmith_index_u32(1u, 2u)];
    let var_1 = Struct_1(global2.a, 78551u & countOneBits(~var_0.a.x), var_0.a.zx, vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.d.x), var_0.b.d.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1098f, global0.x))), global3.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -315f)))));
    var var_2 = Struct_1(~_wgslsmith_mod_vec2_i32(-(var_0.b.a & var_1.a), reverseBits(var_1.a) & vec2<i32>(7806i, u_input.c)), ~(~(~(var_1.c.x | var_1.b))), abs(~_wgslsmith_add_vec2_u32(~global2.c, ~global2.c)), var_0.b.d);
    return global2.c.x;
}

fn func_2(arg_0: vec4<u32>) -> vec2<u32> {
    var var_0 = Struct_2(min(select(arg_0, ~(~vec4<u32>(arg_0.x, 1u, global2.c.x, 34383u)), false), ~vec4<u32>(_wgslsmith_dot_vec4_u32(arg_0, arg_0), ~global2.b, func_3(-2147483647i, global3.x, u_input.a), min(10039u, u_input.b.x))), Struct_1(~(~_wgslsmith_add_vec2_i32(global2.a, vec2<i32>(u_input.c, -60320i))), ~global2.c.x, reverseBits(u_input.b), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.d.x, global0.x))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global2.d - global2.d) + global2.d))));
    let var_1 = _wgslsmith_f_op_f32(308f - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global0.x + _wgslsmith_f_op_f32(step(736f, 1f))), global2.d.x)));
    let var_2 = firstLeadingBit(vec2<u32>(1u, 43743u) | global2.c);
    var var_3 = ~(~(arg_0.zyy << ((arg_0.yyy | select(arg_0.wyz, arg_0.xzy, vec3<bool>(false, true, true))) % vec3<u32>(32u))));
    var var_4 = global4[_wgslsmith_index_u32(4294967295u, 2u)];
    return firstLeadingBit(select(_wgslsmith_sub_vec2_u32(~var_3.yz << (abs(arg_0.yy) % vec2<u32>(32u)), var_4.b.c), _wgslsmith_div_vec2_u32(~abs(var_4.a.wy), ~vec2<u32>(98511u, 72369u)), false));
}

fn func_1() -> Struct_2 {
    let var_0 = ~u_input.c;
    var var_1 = Struct_1(_wgslsmith_clamp_vec2_i32(_wgslsmith_add_vec2_i32(global2.a, vec2<i32>(-1i, global2.a.x) | vec2<i32>(-23699i, u_input.c)), -(vec2<i32>(var_0, 29836i) << (vec2<u32>(global2.b, 1761u) % vec2<u32>(32u))), global2.a) | ~abs(_wgslsmith_mult_vec2_i32(global2.a, global2.a)), 0u, func_2(_wgslsmith_mod_vec4_u32(countOneBits(max(vec4<u32>(15409u, global2.c.x, u_input.b.x, global2.b), vec4<u32>(u_input.b.x, global2.b, 1u, 9566u))), _wgslsmith_div_vec4_u32(~vec4<u32>(1u, 43678u, u_input.b.x, u_input.a), vec4<u32>(global2.b, 0u, global2.b, global2.c.x)))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(global0.x, _wgslsmith_f_op_f32(select(global2.d.x, 1317f, true))), vec2<f32>(-1000f, -1633f))))));
    let var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.d.x, global2.d.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global2.d.x * _wgslsmith_f_op_f32(step(global2.d.x, var_1.d.x))), 342f)), -945f) + vec4<f32>(var_1.d.x, 173f, global0.x, _wgslsmith_div_f32(-805f, _wgslsmith_f_op_f32(-var_1.d.x))));
    global1 = array<Struct_2, 28>();
    let var_3 = vec4<f32>(global0.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(487f, 1638f)), 484f, global3.x)))), global0.x, 213f);
    return Struct_2(abs(~abs(~vec4<u32>(4294967295u, 43746u, 76792u, global2.b))), Struct_1(abs(vec2<i32>(-32177i, var_0) >> (var_1.c % vec2<u32>(32u))) >> (func_2(~vec4<u32>(var_1.c.x, global2.c.x, var_1.b, 79530u)) % vec2<u32>(32u)), 4294967295u, global2.c, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(var_1.d, vec2<f32>(-1608f, 327f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = var_0.b;
    let var_2 = !(!(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x - global2.d.x) - -1104f) >= _wgslsmith_div_f32(var_0.b.d.x, _wgslsmith_f_op_f32(ceil(-798f)))));
    var var_3 = func_1().b;
    var var_4 = vec2<i32>(firstTrailingBit(_wgslsmith_dot_vec3_i32(~(~vec3<i32>(1i, var_3.a.x, 3128i)), ~(vec3<i32>(u_input.c, var_3.a.x, var_0.b.a.x) & vec3<i32>(u_input.c, 12877i, u_input.c)))), 12791i);
    let var_5 = global3.x;
    let var_6 = 689f;
    var_1 = var_0.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_3.d.x, var_3.d.x, -335f), vec3<f32>(-1386f, 679f, 1000f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1320f, 862f, -1373f))))))), ~(vec4<i32>(-40824i, 1i, 1i, var_3.a.x) | firstLeadingBit(max(vec4<i32>(u_input.c, -2147483647i, 35275i, var_4.x), vec4<i32>(2147483647i, -1i, u_input.c, var_3.a.x)))), abs(var_0.b.a.x) | -13883i, _wgslsmith_f_op_f32(ceil(var_1.d.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, global0.x))));
}

