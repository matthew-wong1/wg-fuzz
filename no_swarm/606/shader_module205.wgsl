struct Struct_1 {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec4<u32>,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -1i;

var<private> global1: Struct_1;

var<private> global2: array<Struct_1, 15> = array<Struct_1, 15>(Struct_1(vec4<i32>(1i, -1i, 19775i, i32(-2147483648)), vec2<u32>(1997u, 4294967295u), vec4<u32>(1265u, 0u, 4294967295u, 70844u), vec3<bool>(false, false, true)), Struct_1(vec4<i32>(1i, 14340i, 18925i, 2147483647i), vec2<u32>(0u, 4294967295u), vec4<u32>(4294967295u, 4294967295u, 4294967295u, 23705u), vec3<bool>(true, true, false)), Struct_1(vec4<i32>(i32(-2147483648), i32(-2147483648), -21852i, -11817i), vec2<u32>(29441u, 8873u), vec4<u32>(0u, 63848u, 1u, 49922u), vec3<bool>(true, false, false)), Struct_1(vec4<i32>(-28109i, 8805i, -1i, -12914i), vec2<u32>(0u, 94783u), vec4<u32>(44494u, 9093u, 1u, 48738u), vec3<bool>(false, false, false)), Struct_1(vec4<i32>(7063i, -32081i, -55511i, 49841i), vec2<u32>(0u, 1u), vec4<u32>(0u, 40424u, 155923u, 5970u), vec3<bool>(true, false, true)), Struct_1(vec4<i32>(1587i, 0i, -1i, -33122i), vec2<u32>(4294967295u, 1u), vec4<u32>(4294967295u, 30901u, 54237u, 12613u), vec3<bool>(false, true, true)), Struct_1(vec4<i32>(-18275i, 0i, 1i, 31125i), vec2<u32>(54359u, 14822u), vec4<u32>(1u, 4294967295u, 4294967295u, 80248u), vec3<bool>(false, false, false)), Struct_1(vec4<i32>(1i, -65289i, -1i, 1i), vec2<u32>(0u, 0u), vec4<u32>(4294967295u, 43689u, 5777u, 0u), vec3<bool>(true, false, true)), Struct_1(vec4<i32>(2147483647i, -1i, 56928i, 2147483647i), vec2<u32>(16797u, 4294967295u), vec4<u32>(0u, 4294967295u, 0u, 4294967295u), vec3<bool>(false, true, true)), Struct_1(vec4<i32>(-3966i, -793i, 1i, -48879i), vec2<u32>(1u, 21456u), vec4<u32>(15629u, 24307u, 38020u, 44038u), vec3<bool>(false, false, true)), Struct_1(vec4<i32>(-14142i, -11980i, -1i, i32(-2147483648)), vec2<u32>(4294967295u, 4294967295u), vec4<u32>(62052u, 4294967295u, 39560u, 4294967295u), vec3<bool>(true, false, false)), Struct_1(vec4<i32>(14910i, -30079i, 48952i, 0i), vec2<u32>(1u, 4294967295u), vec4<u32>(1u, 1u, 33918u, 4294967295u), vec3<bool>(false, true, false)), Struct_1(vec4<i32>(1i, 1i, 0i, i32(-2147483648)), vec2<u32>(3764u, 4294967295u), vec4<u32>(1110u, 4294967295u, 31143u, 64586u), vec3<bool>(true, false, true)), Struct_1(vec4<i32>(1i, 17024i, 2497i, 0i), vec2<u32>(4294967295u, 37083u), vec4<u32>(4294967295u, 31206u, 28637u, 67870u), vec3<bool>(true, true, false)), Struct_1(vec4<i32>(-1i, 2147483647i, 18847i, 1i), vec2<u32>(19054u, 57780u), vec4<u32>(21755u, 4294967295u, 1u, 1u), vec3<bool>(false, false, true)));

var<private> global3: bool = false;

var<private> global4: Struct_1 = Struct_1(vec4<i32>(0i, i32(-2147483648), -10220i, -31926i), vec2<u32>(32573u, 1u), vec4<u32>(1u, 2695u, 61745u, 0u), vec3<bool>(true, true, true));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
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

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: vec2<i32>, arg_1: f32, arg_2: u32, arg_3: Struct_1) -> vec4<i32> {
    global2 = array<Struct_1, 15>();
    global0 = arg_0.x;
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1))) - vec3<f32>(arg_1, _wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(f32(-1f) * -1350f))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-787f, arg_1, arg_1) + vec3<f32>(-148f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 + arg_1)), 2152f)));
    var var_1 = !(-1i < arg_0.x);
    global1 = global2[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_mod_u32(~global4.b.x, _wgslsmith_dot_vec2_u32(~(global4.c.wx & vec2<u32>(arg_3.c.x, global4.b.x)), vec2<u32>(41678u << (global1.c.x % 32u), ~4294967295u))), 4294967295u), 15u)];
    return global1.a;
}

fn func_2() -> Struct_1 {
    global2 = array<Struct_1, 15>();
    let var_0 = global2[_wgslsmith_index_u32(u_input.a.x, 15u)];
    let var_1 = Struct_1(_wgslsmith_mod_vec4_i32(~vec4<i32>(-var_0.a.x, global1.a.x >> (var_0.c.x % 32u), global4.a.x, 2147483647i), _wgslsmith_add_vec4_i32(global4.a | (u_input.c & vec4<i32>(var_0.a.x, 52160i, var_0.a.x, 10318i)), _wgslsmith_mult_vec4_i32(vec4<i32>(19615i, 10783i, global4.a.x, u_input.c.x), func_3(global4.a.yy, 146f, 111691u, Struct_1(vec4<i32>(-10452i, 9972i, var_0.a.x, var_0.a.x), global1.b, vec4<u32>(0u, 43388u, global4.c.x, global4.b.x), vec3<bool>(false, false, false)))))), vec2<u32>(var_0.c.x >> ((global4.c.x >> (var_0.c.x % 32u)) % 32u), ~u_input.b.x) & firstLeadingBit(vec2<u32>(25116u | global1.b.x, var_0.c.x ^ var_0.c.x)), ~firstLeadingBit(_wgslsmith_div_vec4_u32(min(vec4<u32>(var_0.c.x, global4.b.x, var_0.c.x, u_input.b.x), vec4<u32>(101903u, 19442u, var_0.b.x, 4294967295u)), ~vec4<u32>(12625u, global1.c.x, global1.c.x, var_0.c.x))), select(global1.d, var_0.d, global1.d));
    global4 = global2[_wgslsmith_index_u32(_wgslsmith_div_u32(~(~(~4294967295u)), _wgslsmith_clamp_u32(~0u, _wgslsmith_div_u32(min(max(4294967295u, 1u), global4.b.x), reverseBits(global1.b.x)), 39878u)), 15u)];
    var var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f));
    return Struct_1(~(~_wgslsmith_mult_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.c.x, u_input.c.x, 0i, var_1.a.x), vec4<i32>(global1.a.x, var_0.a.x, u_input.c.x, global1.a.x)), ~vec4<i32>(17231i, 0i, -1i, 2147483647i))), ~min(vec2<u32>(global4.c.x ^ var_1.b.x, countOneBits(var_1.b.x)), ~vec2<u32>(u_input.a.x, u_input.a.x)), ~abs(_wgslsmith_div_vec4_u32(var_1.c, _wgslsmith_mult_vec4_u32(vec4<u32>(var_0.b.x, 0u, 4294967295u, var_0.b.x), global1.c))), var_0.d);
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    var var_0 = false;
    global1 = func_2();
    global3 = true;
    global3 = !(firstLeadingBit(u_input.c.x) < _wgslsmith_clamp_i32(-1i, 0i, _wgslsmith_dot_vec4_i32(u_input.c, vec4<i32>(-17300i, u_input.c.x, global4.a.x, global4.a.x))));
    var var_1 = func_2();
    return func_2();
}

fn func_5(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: Struct_1) -> vec4<i32> {
    let var_0 = arg_1.x;
    let var_1 = Struct_1(firstTrailingBit(max(vec4<i32>(global1.a.x, global1.a.x, arg_0.a.x, 66427i), -vec4<i32>(-38780i, 16039i, 34762i, -2051i))) >> (_wgslsmith_mult_vec4_u32(vec4<u32>(global1.b.x, _wgslsmith_div_u32(20170u, 26279u), _wgslsmith_clamp_u32(23877u, 0u, global4.c.x), global1.b.x), firstLeadingBit(vec4<u32>(global4.b.x, 63392u, global4.c.x, global1.b.x))) % vec4<u32>(32u)), abs(arg_0.c.xy), firstTrailingBit(min(vec4<u32>(_wgslsmith_mod_u32(arg_0.b.x, arg_0.b.x), _wgslsmith_div_u32(global1.b.x, arg_0.c.x), arg_2.c.x, global1.b.x), func_4(Struct_1(vec4<i32>(arg_2.a.x, global1.a.x, arg_2.a.x, global1.a.x), vec2<u32>(global4.b.x, 0u), vec4<u32>(arg_2.b.x, global4.c.x, arg_2.c.x, global4.b.x), global4.d)).c)), global4.d);
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, var_0, var_0, -826f) - vec4<f32>(158f, 204f, -1538f, -825f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(655f, 684f, 1657f, 125f), vec4<f32>(var_0, arg_1.x, 365f, 906f))))));
    let var_3 = _wgslsmith_dot_vec4_i32(func_2().a | u_input.c, countOneBits(vec4<i32>(select(31719i, _wgslsmith_clamp_i32(-2147483647i, 28515i, global4.a.x), arg_0.a.x < global4.a.x), global1.a.x, -_wgslsmith_mod_i32(2147483647i, global4.a.x), _wgslsmith_add_i32(arg_2.a.x, u_input.c.x) & _wgslsmith_div_i32(0i, global4.a.x))));
    let var_4 = var_1.a.x ^ -2147483647i;
    return ~vec4<i32>(reverseBits(2587i), u_input.c.x, -11820i, 1i);
}

fn func_1(arg_0: bool) -> vec4<i32> {
    var var_0 = _wgslsmith_dot_vec4_i32(vec4<i32>(countOneBits(abs(global1.a.x)), ~(~u_input.c.x), _wgslsmith_dot_vec4_i32(max(vec4<i32>(-2147483647i, -16101i, 30845i, 1i), global4.a), _wgslsmith_add_vec4_i32(vec4<i32>(11228i, u_input.c.x, 3338i, u_input.c.x), u_input.c)), global1.a.x), abs(vec4<i32>(global4.a.x, global4.a.x, -2935i, 1536i) << (~vec4<u32>(19109u, u_input.b.x, global4.b.x, 43083u) % vec4<u32>(32u)))) >= 0i;
    var var_1 = !vec2<bool>(true && (true || global4.d.x), global4.d.x);
    var var_2 = func_5(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(global1.c, _wgslsmith_div_vec4_u32(u_input.b, ~_wgslsmith_sub_vec4_u32(u_input.b, vec4<u32>(global1.c.x, global1.c.x, 24705u, global4.b.x)))), 15u)], _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(826f, 1476f, 370f)) + vec3<f32>(1f, 1f, 1f)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-456f, 717f, 884f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(655f, -871f, -463f))))), func_4(func_2()));
    let var_3 = _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(706f * _wgslsmith_f_op_f32(f32(-1f) * -1066f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1263f, 619f) * _wgslsmith_f_op_f32(f32(-1f) * -1145f)))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1442f, -268f)) - _wgslsmith_div_f32(1000f, -1290f))), _wgslsmith_f_op_f32(223f - _wgslsmith_f_op_f32(max(-1272f, _wgslsmith_f_op_f32(-1201f * -176f)))))));
    let var_4 = ~reverseBits(-1i);
    return -firstLeadingBit(u_input.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(-(-_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.c.x, 13240i, 26608i, 0i), u_input.c) & func_1(true)), global4.b, _wgslsmith_mod_vec4_u32(firstLeadingBit(firstTrailingBit(_wgslsmith_div_vec4_u32(vec4<u32>(85130u, 0u, 9004u, global4.c.x), vec4<u32>(global4.b.x, 40187u, 8580u, 4294967295u)))), vec4<u32>(global4.b.x, 56946u, 0u, ~max(44228u, 4294967295u))), func_4(Struct_1(vec4<i32>(global1.a.x, global1.a.x, global1.a.x, ~global4.a.x), vec2<u32>(countOneBits(2124u), _wgslsmith_add_u32(global4.c.x, 0u)), global4.c, !func_2().d)).d);
    let var_1 = -803f;
    var var_2 = select(select(vec4<bool>(any(vec3<bool>(false, global4.d.x, var_0.d.x)), !func_2().d.x, all(vec4<bool>(false, true, var_0.d.x, false)), true), select(select(vec4<bool>(var_0.d.x, var_0.d.x, false, false), select(vec4<bool>(true, true, false, global1.d.x), vec4<bool>(var_0.d.x, global1.d.x, global4.d.x, var_0.d.x), vec4<bool>(false, global1.d.x, var_0.d.x, global4.d.x)), all(vec2<bool>(true, global1.d.x))), !select(vec4<bool>(false, var_0.d.x, var_0.d.x, global1.d.x), vec4<bool>(true, true, true, true), global4.d.x), var_0.d.x), var_0.d.x), select(vec4<bool>(global4.d.x, true, var_1 == _wgslsmith_div_f32(258f, -1245f), _wgslsmith_f_op_f32(-1352f + var_1) != _wgslsmith_f_op_f32(step(var_1, -183f))), vec4<bool>(false, true, false, any(vec2<bool>(global1.d.x, var_0.d.x))), func_2().d.x), select(select(!vec4<bool>(false, global1.d.x, false, false), !select(vec4<bool>(global1.d.x, global1.d.x, true, true), vec4<bool>(var_0.d.x, global1.d.x, false, var_0.d.x), vec4<bool>(true, true, var_0.d.x, var_0.d.x)), !global4.d.x), select(select(!vec4<bool>(global4.d.x, var_0.d.x, false, global4.d.x), !vec4<bool>(var_0.d.x, true, true, true), var_0.d.x), vec4<bool>(false, true, false, any(vec3<bool>(true, global1.d.x, var_0.d.x))), vec4<bool>(global4.d.x & false, true, all(vec4<bool>(true, var_0.d.x, false, false)), true)), func_2().d.x));
    let var_3 = -2892i;
    var var_4 = _wgslsmith_sub_vec3_u32(vec3<u32>(~((u_input.b.x | global1.b.x) >> (58357u % 32u)), select(global1.c.x, 8764u, !all(vec2<bool>(var_2.x, global1.d.x))), ~_wgslsmith_sub_u32(firstLeadingBit(0u), 1u)), func_2().c.yxw);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(-1332f)))), _wgslsmith_f_op_f32(max(-198f, -456f)))), vec4<i32>(_wgslsmith_mult_i32(-59661i, -global1.a.x), global1.a.x, func_5(func_2(), _wgslsmith_div_vec3_f32(vec3<f32>(1344f, 1322f, var_1), vec3<f32>(462f, var_1, 3060f)), func_4(var_0)).x, abs(var_3)) >> (vec4<u32>(u_input.a.x, ~reverseBits(var_4.x), 1u, _wgslsmith_dot_vec4_u32(~var_0.c, _wgslsmith_sub_vec4_u32(vec4<u32>(global4.c.x, var_0.c.x, 4294967295u, 57612u), vec4<u32>(58995u, global1.b.x, var_4.x, 54105u)))) % vec4<u32>(32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_1 - -355f), _wgslsmith_f_op_f32(sign(var_1))))) - var_1));
}

