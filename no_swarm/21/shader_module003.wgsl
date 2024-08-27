struct Struct_1 {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec2<u32>,
    d: vec4<u32>,
}

struct Struct_2 {
    a: u32,
    b: vec3<u32>,
    c: Struct_1,
    d: vec4<bool>,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: u32;

var<private> global2: array<Struct_2, 27> = array<Struct_2, 27>(Struct_2(4294967295u, vec3<u32>(4294967295u, 45638u, 1u), Struct_1(vec4<u32>(35531u, 18239u, 43807u, 11107u), vec2<i32>(i32(-2147483648), i32(-2147483648)), vec2<u32>(35613u, 1u), vec4<u32>(0u, 4294967295u, 10529u, 4294967295u)), vec4<bool>(true, false, true, false), 4294967295u), Struct_2(4294967295u, vec3<u32>(16274u, 7256u, 1u), Struct_1(vec4<u32>(42266u, 14805u, 4294967295u, 0u), vec2<i32>(-1i, -22641i), vec2<u32>(4294967295u, 1u), vec4<u32>(4294967295u, 26086u, 75181u, 4179u)), vec4<bool>(true, false, false, true), 0u), Struct_2(24404u, vec3<u32>(66468u, 4294967295u, 47324u), Struct_1(vec4<u32>(24781u, 29092u, 21506u, 1u), vec2<i32>(-1i, -47182i), vec2<u32>(30134u, 59659u), vec4<u32>(25353u, 30726u, 4294967295u, 1u)), vec4<bool>(false, false, true, true), 0u), Struct_2(1u, vec3<u32>(2855u, 46380u, 1u), Struct_1(vec4<u32>(0u, 0u, 55874u, 61152u), vec2<i32>(-2498i, 19524i), vec2<u32>(53472u, 29177u), vec4<u32>(0u, 0u, 0u, 1u)), vec4<bool>(true, true, false, true), 54379u), Struct_2(1u, vec3<u32>(17714u, 14227u, 4294967295u), Struct_1(vec4<u32>(119802u, 0u, 0u, 118679u), vec2<i32>(0i, 1i), vec2<u32>(4631u, 1u), vec4<u32>(0u, 45613u, 0u, 4294967295u)), vec4<bool>(false, true, false, false), 58938u), Struct_2(32887u, vec3<u32>(5258u, 4294967295u, 19211u), Struct_1(vec4<u32>(22431u, 82243u, 59222u, 0u), vec2<i32>(57532i, i32(-2147483648)), vec2<u32>(19498u, 73028u), vec4<u32>(36441u, 0u, 4294967295u, 4294967295u)), vec4<bool>(false, true, true, false), 50572u), Struct_2(32603u, vec3<u32>(13647u, 4294967295u, 46980u), Struct_1(vec4<u32>(4294967295u, 0u, 1u, 1u), vec2<i32>(-26432i, i32(-2147483648)), vec2<u32>(0u, 21118u), vec4<u32>(24514u, 9750u, 1u, 17312u)), vec4<bool>(false, true, false, true), 26370u), Struct_2(4294967295u, vec3<u32>(42943u, 0u, 49704u), Struct_1(vec4<u32>(4294967295u, 17955u, 0u, 4294967295u), vec2<i32>(2147483647i, 21719i), vec2<u32>(78467u, 38154u), vec4<u32>(2315u, 46190u, 1u, 65925u)), vec4<bool>(true, false, true, true), 20107u), Struct_2(27148u, vec3<u32>(0u, 8866u, 31938u), Struct_1(vec4<u32>(42157u, 0u, 0u, 38324u), vec2<i32>(-6708i, 0i), vec2<u32>(4294967295u, 0u), vec4<u32>(0u, 26265u, 14373u, 140736u)), vec4<bool>(true, true, false, false), 16031u), Struct_2(28780u, vec3<u32>(0u, 57652u, 66423u), Struct_1(vec4<u32>(1u, 40020u, 1u, 4294967295u), vec2<i32>(0i, 70962i), vec2<u32>(63350u, 1u), vec4<u32>(0u, 6565u, 0u, 26711u)), vec4<bool>(true, true, true, false), 11323u), Struct_2(4294967295u, vec3<u32>(0u, 4294967295u, 4294967295u), Struct_1(vec4<u32>(1u, 1124u, 22461u, 4294967295u), vec2<i32>(22205i, -50794i), vec2<u32>(32121u, 6225u), vec4<u32>(1u, 0u, 1u, 4294967295u)), vec4<bool>(true, false, false, false), 76278u), Struct_2(1u, vec3<u32>(36561u, 4294967295u, 4294967295u), Struct_1(vec4<u32>(13866u, 19297u, 16091u, 23376u), vec2<i32>(-9183i, 63095i), vec2<u32>(55867u, 4294967295u), vec4<u32>(19140u, 0u, 0u, 107946u)), vec4<bool>(true, false, true, false), 0u), Struct_2(78137u, vec3<u32>(0u, 0u, 39886u), Struct_1(vec4<u32>(44767u, 4294967295u, 1u, 1u), vec2<i32>(2147483647i, -1i), vec2<u32>(4294967295u, 15769u), vec4<u32>(4294967295u, 0u, 1u, 1u)), vec4<bool>(true, true, false, true), 23162u), Struct_2(3427u, vec3<u32>(4294967295u, 1u, 35279u), Struct_1(vec4<u32>(1u, 3780u, 43989u, 53558u), vec2<i32>(4324i, i32(-2147483648)), vec2<u32>(79234u, 77410u), vec4<u32>(0u, 1u, 1u, 4294967295u)), vec4<bool>(false, true, false, true), 8963u), Struct_2(4294967295u, vec3<u32>(37735u, 29981u, 4294967295u), Struct_1(vec4<u32>(36270u, 4294967295u, 4294967295u, 1u), vec2<i32>(0i, -32446i), vec2<u32>(41891u, 97088u), vec4<u32>(1156u, 1u, 17625u, 42257u)), vec4<bool>(false, false, true, false), 21193u), Struct_2(9156u, vec3<u32>(0u, 4294967295u, 4294967295u), Struct_1(vec4<u32>(0u, 0u, 0u, 0u), vec2<i32>(-1i, 4922i), vec2<u32>(6406u, 15326u), vec4<u32>(4294967295u, 4294967295u, 1u, 0u)), vec4<bool>(true, false, true, true), 0u), Struct_2(1u, vec3<u32>(1u, 35819u, 75016u), Struct_1(vec4<u32>(3647u, 32107u, 29143u, 0u), vec2<i32>(-40445i, -4372i), vec2<u32>(24455u, 12814u), vec4<u32>(11718u, 90157u, 81747u, 4294967295u)), vec4<bool>(false, false, false, true), 1u), Struct_2(138310u, vec3<u32>(1u, 7672u, 4294967295u), Struct_1(vec4<u32>(1u, 0u, 88793u, 0u), vec2<i32>(1i, 19857i), vec2<u32>(10727u, 0u), vec4<u32>(0u, 1u, 1u, 1u)), vec4<bool>(false, true, true, true), 1u), Struct_2(24796u, vec3<u32>(4294967295u, 43254u, 4294967295u), Struct_1(vec4<u32>(4294967295u, 74939u, 9058u, 13819u), vec2<i32>(7815i, -676i), vec2<u32>(45818u, 0u), vec4<u32>(1u, 4294967295u, 16850u, 15007u)), vec4<bool>(true, false, false, true), 1u), Struct_2(1u, vec3<u32>(39766u, 61004u, 1u), Struct_1(vec4<u32>(54888u, 1608u, 68109u, 26420u), vec2<i32>(48472i, i32(-2147483648)), vec2<u32>(93660u, 20794u), vec4<u32>(1u, 39096u, 0u, 4294967295u)), vec4<bool>(false, false, true, false), 0u), Struct_2(0u, vec3<u32>(36720u, 31918u, 4294967295u), Struct_1(vec4<u32>(0u, 39111u, 1u, 0u), vec2<i32>(1i, -1i), vec2<u32>(0u, 7415u), vec4<u32>(4294967295u, 4294967295u, 1u, 29557u)), vec4<bool>(false, false, false, true), 4294967295u), Struct_2(1u, vec3<u32>(6542u, 2020u, 58396u), Struct_1(vec4<u32>(4294967295u, 4294967295u, 1u, 0u), vec2<i32>(5393i, 0i), vec2<u32>(9172u, 31613u), vec4<u32>(0u, 0u, 61141u, 1u)), vec4<bool>(false, true, true, false), 1u), Struct_2(67582u, vec3<u32>(31484u, 1u, 1u), Struct_1(vec4<u32>(5344u, 52348u, 47354u, 4294967295u), vec2<i32>(-32226i, 10207i), vec2<u32>(45484u, 46744u), vec4<u32>(47279u, 1u, 7571u, 15364u)), vec4<bool>(false, true, true, false), 1u), Struct_2(4294967295u, vec3<u32>(19589u, 1u, 4294967295u), Struct_1(vec4<u32>(0u, 1u, 91386u, 4294967295u), vec2<i32>(-1i, -1i), vec2<u32>(0u, 1u), vec4<u32>(2701u, 1u, 8423u, 1u)), vec4<bool>(true, true, true, false), 56083u), Struct_2(114490u, vec3<u32>(1u, 33703u, 91319u), Struct_1(vec4<u32>(79185u, 24746u, 0u, 6918u), vec2<i32>(1i, 0i), vec2<u32>(0u, 0u), vec4<u32>(0u, 39640u, 25334u, 14345u)), vec4<bool>(false, false, true, false), 1u), Struct_2(4294967295u, vec3<u32>(8102u, 4294967295u, 9104u), Struct_1(vec4<u32>(4294967295u, 42665u, 0u, 129236u), vec2<i32>(-3400i, 12773i), vec2<u32>(55825u, 6658u), vec4<u32>(0u, 2627u, 58691u, 4294967295u)), vec4<bool>(true, false, false, false), 1u), Struct_2(3974u, vec3<u32>(214u, 4294967295u, 36014u), Struct_1(vec4<u32>(4294967295u, 11488u, 0u, 1u), vec2<i32>(25344i, 1i), vec2<u32>(23400u, 4294967295u), vec4<u32>(13168u, 1u, 0u, 1u)), vec4<bool>(false, false, false, true), 1u));

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2, arg_2: bool, arg_3: vec4<f32>) -> bool {
    let var_0 = any(arg_1.d.zw);
    global2 = array<Struct_2, 27>();
    global2 = array<Struct_2, 27>();
    return any(select(arg_1.d, vec4<bool>(arg_2, true, true, true), !(!arg_1.d))) & false;
}

fn func_2(arg_0: i32, arg_1: i32, arg_2: vec4<f32>, arg_3: bool) -> Struct_1 {
    let var_0 = select(select(vec3<bool>(func_3(Struct_1(vec4<u32>(global0.a.x, u_input.a, 1u, 24360u), vec2<i32>(arg_1, global0.b.x), vec2<u32>(9590u, u_input.a), global0.d), Struct_2(61698u, vec3<u32>(global0.d.x, global0.a.x, 1u), Struct_1(global0.d, global0.b, vec2<u32>(4294967295u, u_input.a), vec4<u32>(global0.c.x, 4294967295u, 36626u, u_input.a)), vec4<bool>(true, true, arg_3, arg_3), u_input.a), arg_3, vec4<f32>(-484f, arg_2.x, arg_2.x, arg_2.x)), any(select(vec4<bool>(true, true, arg_3, arg_3), vec4<bool>(false, true, false, arg_3), false)), any(!vec4<bool>(arg_3, arg_3, arg_3, arg_3))), select(vec3<bool>(true, false, arg_3), !select(vec3<bool>(arg_3, arg_3, false), vec3<bool>(arg_3, arg_3, arg_3), false), !arg_3), false), vec3<bool>(false, false, !(-680f != arg_2.x)), true);
    global0 = Struct_1(global0.a, global0.b, global0.a.zz, vec4<u32>(1u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 1632u, 28256u, global0.d.x), vec4<u32>(4294967295u, 4294967295u, u_input.a, u_input.a)), _wgslsmith_clamp_u32(_wgslsmith_div_u32(64267u, u_input.a & global0.c.x), u_input.a, u_input.a), ~1u));
    global2 = array<Struct_2, 27>();
    var var_1 = Struct_1(~_wgslsmith_mult_vec4_u32(max(vec4<u32>(0u, 0u, u_input.a, global0.a.x), ~global0.a), ~(vec4<u32>(1940u, global0.a.x, 0u, 12206u) | vec4<u32>(1u, global0.a.x, u_input.a, 14590u))), global0.b, global0.a.xw, global0.a ^ reverseBits(global0.d));
    var_1 = Struct_1(_wgslsmith_div_vec4_u32(~global0.a, ~(~countOneBits(var_1.d))), _wgslsmith_mult_vec2_i32(-select(_wgslsmith_div_vec2_i32(global0.b, vec2<i32>(-4775i, -71059i)), global0.b, true), var_1.b), ~(abs(_wgslsmith_clamp_vec2_u32(var_1.d.xx, vec2<u32>(4294967295u, 4294967295u), vec2<u32>(41737u, 69455u))) | vec2<u32>(select(0u, 51918u, arg_3), _wgslsmith_add_u32(global0.a.x, 94486u))), ~global0.d);
    return Struct_1(_wgslsmith_mult_vec4_u32(var_1.d, ~(_wgslsmith_clamp_vec4_u32(global0.d, global0.a, vec4<u32>(0u, 1443u, 25482u, global0.c.x)) ^ global0.d)), -_wgslsmith_clamp_vec2_i32(var_1.b << ((global0.c ^ vec2<u32>(u_input.a, global0.a.x)) % vec2<u32>(32u)), vec2<i32>(-6561i, var_1.b.x), global0.b), firstLeadingBit(global0.d.yw), abs(vec4<u32>(global0.d.x, var_1.a.x, var_1.a.x, firstLeadingBit(~4294967295u))));
}

fn func_4(arg_0: Struct_1) -> f32 {
    global0 = func_2(0i >> (max(global0.c.x & abs(global0.c.x), ~select(global0.a.x, 53372u, true)) % 32u), u_input.b, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-452f))), _wgslsmith_f_op_f32(select(419f, _wgslsmith_f_op_f32(f32(-1f) * -1208f), any(vec2<bool>(true, false)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-332f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1981f * -849f))) - _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(vec4<f32>(-2101f, 168f, -1607f, 686f), vec4<f32>(-926f, -493f, 2061f, -107f)))), vec4<f32>(1105f, _wgslsmith_f_op_f32(f32(-1f) * -1031f), -1000f, -651f)))), true);
    global0 = arg_0;
    let var_0 = !(!all(select(vec2<bool>(false, true), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, false), true))));
    global2 = array<Struct_2, 27>();
    var var_1 = _wgslsmith_mod_u32(global0.c.x, ~(~_wgslsmith_add_u32(global0.c.x, arg_0.c.x))) < ~global0.a.x;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f + -2344f));
}

fn func_1(arg_0: vec3<bool>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_4(func_2(-1i, u_input.b, vec4<f32>(-1000f, 576f, -1150f, 2149f), arg_0.x))), _wgslsmith_f_op_f32(func_4(Struct_1(global0.a, vec2<i32>(global0.b.x, global0.b.x), global0.a.yy, vec4<u32>(78442u, 4294967295u, 4294967295u, 83514u)))), true)), -1192f)));
    var_0 = -337f;
    var var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-554f, -948f) - -1386f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -417f)), -1972f));
    let var_2 = 1054f;
    global2 = array<Struct_2, 27>();
    return func_2(_wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(global0.b, global0.b, global0.b), -(~global0.b)), global0.b.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2, var_2, 104f, 703f) - _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1039f, var_2, var_2, var_1.x)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, -148f, -726f, 134f))))), arg_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = 0u;
    global0 = func_1(vec3<bool>(true, true, any(vec3<bool>(true, true, true))));
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f))));
    var_0 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(var_0.x - 916f), var_0.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-263f, var_0.x))))) - _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1000f, var_0.x))))))));
    global0 = Struct_1(~vec4<u32>(~firstTrailingBit(0u), u_input.a, ~global0.a.x >> (global0.d.x % 32u), countOneBits(u_input.a)), vec2<i32>(_wgslsmith_mult_i32(33956i, global0.b.x << (39966u % 32u)), 13250i) ^ ~(-vec2<i32>(u_input.b, 21794i) >> (vec2<u32>(global0.d.x, global0.c.x) % vec2<u32>(32u))), global0.c, vec4<u32>(~u_input.a, global0.d.x, u_input.a, u_input.a));
    var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(529f * _wgslsmith_f_op_f32(ceil(-755f))) + _wgslsmith_div_f32(-301f, -1355f))), _wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(Struct_1(global0.d, global0.b, vec2<u32>(15695u, global0.c.x), vec4<u32>(u_input.a, global0.c.x, global0.c.x, global0.a.x)))))));
    let x = u_input.a;
    s_output = StorageBuffer(global0.b.x, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(var_0.x, var_0.x, true)), _wgslsmith_f_op_f32(step(var_0.x, -479f)), _wgslsmith_f_op_f32(var_0.x * var_0.x))))), -global0.b.x & _wgslsmith_dot_vec2_i32(vec2<i32>(-u_input.b, countOneBits(u_input.b)), abs(vec2<i32>(-2147483647i, 12148i)) & _wgslsmith_div_vec2_i32(global0.b, global0.b)));
}

