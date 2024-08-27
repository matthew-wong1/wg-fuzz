struct Struct_1 {
    a: vec3<bool>,
    b: u32,
    c: u32,
    d: vec4<i32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: f32,
    d: u32,
    e: bool,
}

struct Struct_3 {
    a: vec3<i32>,
    b: bool,
    c: Struct_1,
    d: i32,
}

struct Struct_4 {
    a: vec2<bool>,
    b: i32,
}

struct Struct_5 {
    a: Struct_2,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: i32,
    d: vec2<i32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: Struct_2;

var<private> global2: i32 = -15501i;

var<private> global3: Struct_2 = Struct_2(vec2<i32>(30116i, -1i), Struct_1(vec3<bool>(false, false, true), 93870u, 31042u, vec4<i32>(-16288i, -43019i, -31118i, 7101i)), 1031f, 1u, true);

var<private> global4: array<f32, 30>;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_1(arg_0: bool, arg_1: vec4<u32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1095f);
    global2 = 25599i;
    var var_1 = arg_1.x;
    global2 = i32(-1i) * -(~(~countOneBits(global0.x)));
    let var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-351f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global3.c)) + global4[_wgslsmith_index_u32(abs(global1.d), 30u)]) * _wgslsmith_f_op_f32(f32(-1f) * -669f)), global1.c, global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(~(~global3.b.b), countOneBits(global1.b.c)), 30u)]));
    return global3.b;
}

fn func_3() -> i32 {
    global2 = ~(~reverseBits(u_input.a));
    var var_0 = u_input.a;
    var var_1 = func_1(global3.b.a.x, select(~vec4<u32>(global3.d, 1u, global1.d, global3.b.c) | reverseBits(vec4<u32>(20687u, 56153u, global1.b.c, global1.b.c)), abs(firstLeadingBit(vec4<u32>(0u, global1.d, 0u, 1u))), select(vec4<bool>(false, true, global1.b.a.x, false), select(vec4<bool>(true, global3.b.a.x, global3.e, true), vec4<bool>(false, global1.b.a.x, global3.e, global1.e), false), false)) >> (vec4<u32>(abs(_wgslsmith_dot_vec4_u32(vec4<u32>(global3.d, global3.b.c, 4294967295u, 15026u), vec4<u32>(global1.d, 0u, 0u, 10937u))), _wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(23191u, 4294967295u)), ~vec2<u32>(36833u, global3.d)), 1u, global1.b.b) % vec4<u32>(32u))).d.wyw;
    global1 = Struct_2(vec2<i32>(global0.x, 0i), Struct_1(!global3.b.a, (1u | _wgslsmith_mult_u32(4294967295u, global3.b.b)) << (~global1.d % 32u), 87354u, abs(global1.b.d)), _wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, 1u), 30u)]), 26894u, global1.e);
    global4 = array<f32, 30>();
    return global0.x;
}

fn func_2(arg_0: vec4<u32>, arg_1: bool, arg_2: Struct_1) -> f32 {
    let var_0 = arg_2.d.x & -1i;
    global0 = ~global3.b.d.wz << (vec2<u32>(~arg_2.b, ~69071u) % vec2<u32>(32u));
    var var_1 = Struct_2(vec2<i32>(~2147483647i, ~countOneBits(-2147483647i)), arg_2, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(-1000f)), global3.c)), firstTrailingBit(global3.b.b), global1.e && global1.e);
    global4 = array<f32, 30>();
    var var_2 = Struct_3(~arg_2.d.wyx, true, Struct_1(!select(arg_2.a, select(vec3<bool>(true, global1.b.a.x, arg_1), global3.b.a, vec3<bool>(false, global1.b.a.x, false)), true), global1.d, firstTrailingBit(0u), firstLeadingBit(arg_2.d)), min(func_3(), ~(-2147483647i)));
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global4[_wgslsmith_index_u32(39107u, 30u)])) * global4[_wgslsmith_index_u32(arg_0.x, 30u)])))));
}

fn func_4(arg_0: f32, arg_1: vec2<u32>, arg_2: vec4<i32>, arg_3: bool) -> i32 {
    var var_0 = Struct_3(~(-_wgslsmith_div_vec3_i32(arg_2.xyw, arg_2.yxz)), global3.b.a.x, global1.b, global1.a.x);
    var var_1 = Struct_2(((vec2<i32>(-1i) * -global3.a) << (abs(select(arg_1, arg_1, true)) % vec2<u32>(32u))) ^ global3.b.d.yx, func_1(any(!select(vec4<bool>(true, global3.e, arg_3, false), vec4<bool>(arg_3, true, false, var_0.b), arg_3)), abs(~min(vec4<u32>(global3.b.b, 26040u, global1.d, arg_1.x), vec4<u32>(51681u, arg_1.x, 0u, 0u)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -929f), 1276f), ~global1.b.c, true);
    global1 = Struct_2(-(~global1.b.d.zw), var_1.b, -432f, reverseBits(~(~(arg_1.x >> (9303u % 32u)))), false);
    global1 = Struct_2(_wgslsmith_mult_vec2_i32(~vec2<i32>(global0.x, global3.b.d.x), vec2<i32>(arg_2.x >> (0u % 32u), -16289i << (global1.b.c % 32u))) | vec2<i32>(~(-7403i), _wgslsmith_sub_i32(~(-2147483647i), 1i)), func_1(func_1(all(vec3<bool>(false, true, var_1.e)), _wgslsmith_mult_vec4_u32(vec4<u32>(26084u, var_1.d, 74841u, 4294967295u), vec4<u32>(global1.d, 0u, arg_1.x, 0u)) | vec4<u32>(arg_1.x, var_1.d, 0u, 7550u)).a.x, select(firstTrailingBit(max(vec4<u32>(7844u, global3.b.c, 56190u, arg_1.x), vec4<u32>(58630u, 17177u, 92682u, global3.b.c))), ~vec4<u32>(global1.d, global1.d, 65087u, 4680u), true)), global3.c, func_1(!(var_1.b.a.x || any(vec4<bool>(var_1.e, true, false, false))), countOneBits(~vec4<u32>(5059u, 4130u, 0u, 0u))).c, var_1.b.a.x);
    let var_2 = func_1(any(global3.b.a), _wgslsmith_mult_vec4_u32(vec4<u32>(var_0.c.b, 7538u, global1.d ^ 71480u, global3.d), _wgslsmith_add_vec4_u32(min(vec4<u32>(global3.d, var_1.b.c, 55900u, 1u), _wgslsmith_mod_vec4_u32(vec4<u32>(global1.b.c, var_0.c.b, 31376u, global3.b.c), vec4<u32>(65079u, global1.d, var_1.b.b, 42429u))), vec4<u32>(global1.b.c, 37748u, 0u, ~arg_1.x))));
    return -1i;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_4(_wgslsmith_f_op_f32(func_2(~vec4<u32>(global1.b.c << (1u % 32u), 12307u, 4294967295u, 32246u | global1.b.c), all(vec2<bool>(true, true)), func_1(all(select(vec4<bool>(true, true, false, global3.e), vec4<bool>(false, global3.e, global1.e, global3.b.a.x), false)), vec4<u32>(~25598u, global1.b.c, global1.b.c, global1.d >> (global1.b.b % 32u))))), select(abs(~(vec2<u32>(global1.d, global1.d) << (vec2<u32>(67407u, 20329u) % vec2<u32>(32u)))), _wgslsmith_div_vec2_u32(~vec2<u32>(global1.b.b, 1114u), _wgslsmith_div_vec2_u32(~vec2<u32>(global1.d, 1850u), countOneBits(vec2<u32>(44167u, 9227u)))), global3.b.a.yx), vec4<i32>(_wgslsmith_dot_vec2_i32(global1.a, global1.b.d.xx), global3.a.x, u_input.a, max(_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(global1.a.x, global3.b.d.x), global3.a), vec2<i32>(43352i, u_input.a)), countOneBits(1i))), any(vec4<bool>(any(global3.b.a.xy), any(vec4<bool>(global1.b.a.x, true, false, global1.b.a.x)), !global3.b.a.x, global3.a.x < global0.x)) != !(any(vec2<bool>(false, true)) == (global1.e || global1.e)));
    let var_0 = Struct_2(_wgslsmith_clamp_vec2_i32(vec2<i32>(reverseBits(func_1(global1.b.a.x, vec4<u32>(4294967295u, 1u, global1.d, global3.b.b)).d.x), global1.b.d.x), _wgslsmith_mod_vec2_i32(-global1.b.d.yz, global1.b.d.zy), global1.b.d.wz), func_1(_wgslsmith_f_op_f32(f32(-1f) * -377f) <= global4[_wgslsmith_index_u32(~_wgslsmith_mult_u32(4294967295u, 0u), 30u)], ~(~vec4<u32>(global1.b.c, global3.d, global1.d, 81226u))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1550f + _wgslsmith_f_op_f32(step(-795f, _wgslsmith_f_op_f32(step(492f, global1.c))))), -397f)), reverseBits(firstLeadingBit(_wgslsmith_clamp_u32(firstTrailingBit(global3.b.b), func_1(false, vec4<u32>(global1.b.b, 4294967295u, global3.d, 107172u)).c, 1u))), !global3.b.a.x);
    global0 = firstLeadingBit(-var_0.a);
    let var_1 = global3.b.c;
    global3 = Struct_2(func_1(global3.b.a.x, vec4<u32>(func_1(global3.b.a.x, vec4<u32>(40640u, 4294967295u, 27445u, 6109u)).b ^ abs(50929u), ~(~var_0.b.b), ~var_0.d, ~22677u)).d.yw, global3.b, -723f, ~_wgslsmith_dot_vec4_u32(min(~vec4<u32>(var_0.b.b, 1u, global1.b.b, var_0.b.b), _wgslsmith_mult_vec4_u32(vec4<u32>(global1.d, var_0.b.b, 62986u, 25250u), vec4<u32>(global3.b.b, 34771u, 4294967295u, 4294967295u))), max(vec4<u32>(30024u, 0u, 1u, 0u), vec4<u32>(var_0.d, var_0.b.c, var_0.b.b, 4294967295u))), (!var_0.e && global3.b.a.x) & global3.e);
    var var_2 = !(-func_4(global4[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global3.d, global1.b.c, 4294967295u), vec3<u32>(0u, 0u, 1u)), 30u)], ~vec2<u32>(global3.d, var_0.d), abs(global1.b.d), true) == global3.a.x);
    let var_3 = global0.x;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, _wgslsmith_f_op_f32(func_2(~(~(vec4<u32>(global1.d, 4294967295u, 27489u, 22005u) ^ vec4<u32>(4294967295u, var_0.d, 1u, 4294967295u))), all(vec4<bool>(true, false, select(true, global3.e, true), true)), var_0.b)), global0.x, vec2<i32>(min(~global3.a.x << ((6053u ^ global3.d) % 32u), ~global0.x), global0.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(-887f, global3.c, -281f) * _wgslsmith_f_op_vec3_f32(vec3<f32>(global3.c, global4[_wgslsmith_index_u32(global1.b.b, 30u)], -331f) + vec3<f32>(global3.c, -165f, global1.c))))) * _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(146f - 1187f), _wgslsmith_f_op_f32(-global3.c), global3.c)))));
}

