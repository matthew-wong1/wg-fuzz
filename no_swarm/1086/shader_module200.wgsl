struct Struct_1 {
    a: u32,
    b: bool,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec4<u32>,
    d: vec2<u32>,
    e: vec3<f32>,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: Struct_2,
    b: i32,
    c: Struct_3,
    d: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: f32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 20>;

var<private> global1: bool;

var<private> global2: vec4<u32>;

var<private> global3: Struct_2;

var<private> global4: array<vec4<f32>, 27> = array<vec4<f32>, 27>(vec4<f32>(-1282f, -193f, 1062f, 1884f), vec4<f32>(-1000f, -318f, -1127f, 972f), vec4<f32>(377f, 808f, 235f, 1340f), vec4<f32>(810f, 548f, 551f, 728f), vec4<f32>(-738f, 577f, -1000f, -253f), vec4<f32>(1629f, 546f, -1597f, -183f), vec4<f32>(-755f, -368f, 1404f, 1000f), vec4<f32>(-500f, 783f, 330f, -2431f), vec4<f32>(-143f, -2634f, 411f, 103f), vec4<f32>(-763f, 1473f, 2308f, 1626f), vec4<f32>(-694f, -370f, 1000f, 399f), vec4<f32>(-293f, 1061f, 2209f, 1375f), vec4<f32>(654f, -221f, -502f, -1276f), vec4<f32>(354f, 557f, 153f, 226f), vec4<f32>(472f, -1398f, 158f, -1481f), vec4<f32>(287f, 1212f, 400f, -505f), vec4<f32>(-1104f, -474f, 820f, -467f), vec4<f32>(-224f, 142f, -185f, 181f), vec4<f32>(718f, 466f, 917f, 1818f), vec4<f32>(183f, -276f, -140f, -1112f), vec4<f32>(-1098f, 309f, 631f, 537f), vec4<f32>(896f, -227f, 406f, 688f), vec4<f32>(921f, 1464f, 1053f, 841f), vec4<f32>(228f, 1000f, 1000f, -1782f), vec4<f32>(151f, -1000f, 450f, 853f), vec4<f32>(741f, 616f, 1420f, -1214f), vec4<f32>(-874f, -889f, -579f, -213f));

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2() -> Struct_1 {
    global1 = _wgslsmith_add_u32(~((4294967295u | u_input.a) << (1u % 32u)), _wgslsmith_dot_vec3_u32(global3.c.wzw, _wgslsmith_mod_vec3_u32(countOneBits(global3.c.xxz), ~vec3<u32>(38628u, 77038u, u_input.a)))) == u_input.a;
    var var_0 = Struct_3(global3.a);
    let var_1 = global3.b;
    let var_2 = Struct_2(global3.b.b, global3.b, vec4<u32>(firstTrailingBit(abs(var_1.a)) << (select(global0[_wgslsmith_index_u32(var_1.a, 20u)], ~4294967295u, var_1.b) % 32u), abs(4210u), var_1.a, 0u), firstTrailingBit(_wgslsmith_clamp_vec2_u32(vec2<u32>(_wgslsmith_div_u32(4348u, var_1.a), _wgslsmith_dot_vec3_u32(global3.c.wwx, vec3<u32>(1u, 6416u, 0u))), ~_wgslsmith_mod_vec2_u32(global3.d, vec2<u32>(22366u, global2.x)), ~global2.xz)), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-291f, 841f, global3.e.x)))))));
    var var_3 = _wgslsmith_div_u32(global0[_wgslsmith_index_u32(1u, 20u)], u_input.a);
    return global3.b;
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: f32) -> Struct_2 {
    var var_0 = Struct_3(countOneBits(i32(-1i) * -2147483647i) >= _wgslsmith_dot_vec3_i32(-vec3<i32>(-2147483647i, 23243i, -2147483647i) << (~vec3<u32>(global3.b.a, 7038u, arg_0.a) % vec3<u32>(32u)), ~(-vec3<i32>(-1i, -2147483647i, -2147483647i))));
    let var_1 = any(!select(!vec4<bool>(true, global3.b.b, false, true), select(vec4<bool>(false, var_0.a, false, true), select(vec4<bool>(arg_0.b, true, false, global3.b.b), vec4<bool>(false, false, global3.b.b, false), vec4<bool>(arg_0.b, var_0.a, true, true)), select(vec4<bool>(true, false, global3.a, global3.b.b), vec4<bool>(var_0.a, true, arg_0.b, var_0.a), vec4<bool>(arg_0.b, true, var_0.a, arg_0.b))), !(!vec4<bool>(arg_0.b, global3.b.b, true, true))));
    global2 = vec4<u32>(_wgslsmith_dot_vec3_u32(min(~(vec3<u32>(0u, 4294967295u, arg_1) >> (global3.c.www % vec3<u32>(32u))), ~firstLeadingBit(vec3<u32>(global0[_wgslsmith_index_u32(global3.c.x, 20u)], global3.c.x, global3.b.a))), _wgslsmith_clamp_vec3_u32(~global2.xyz, ~(vec3<u32>(global0[_wgslsmith_index_u32(17684u, 20u)], global0[_wgslsmith_index_u32(91231u, 20u)], u_input.a) >> (global3.c.xyx % vec3<u32>(32u))), select(vec3<u32>(4294967295u, 3011u, 1u), global2.wwz, global3.a) >> (min(global3.c.zzy, vec3<u32>(0u, 32983u, 15029u)) % vec3<u32>(32u)))), firstTrailingBit(0u), _wgslsmith_div_u32(~u_input.a, 0u), arg_0.a);
    let var_2 = Struct_1(0u, var_0.a);
    var var_3 = reverseBits(select(~(vec4<i32>(-13718i, 2104i, -1i, 941i) >> (vec4<u32>(4294967295u, 116690u, 134u, global3.d.x) % vec4<u32>(32u))), vec4<i32>(1i, 11055i, 1i, firstTrailingBit(0i)), vec4<bool>(true, var_0.a, 13843u <= arg_0.a, all(vec2<bool>(false, false)))) & abs(vec4<i32>(1i, 1i, 1i, 1i)));
    return Struct_2(true, Struct_1(global3.b.a >> (reverseBits(1u) % 32u), select(var_2.a > min(global3.d.x, global2.x), !var_0.a, all(vec3<bool>(false, var_0.a, false)))), vec4<u32>(global3.c.x, _wgslsmith_dot_vec4_u32((vec4<u32>(45175u, 0u, u_input.a, 43830u) >> (global3.c % vec4<u32>(32u))) & ~global3.c, max(abs(global3.c), vec4<u32>(1u, 0u, 21546u, 0u))), _wgslsmith_sub_u32(var_2.a, 9098u), _wgslsmith_dot_vec4_u32(global3.c, firstLeadingBit(abs(global3.c)))), ~vec2<u32>(~_wgslsmith_sub_u32(arg_0.a, var_2.a), ~59289u), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(ceil(global3.e)), vec3<f32>(_wgslsmith_f_op_f32(arg_2 + _wgslsmith_f_op_f32(global3.e.x - 772f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -284f)), _wgslsmith_f_op_f32(trunc(-959f))))));
}

fn func_1(arg_0: i32, arg_1: f32, arg_2: vec3<bool>) -> Struct_2 {
    var var_0 = func_3(func_2(), ~global2.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-595f, 2562f)));
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1321f + -1258f) + _wgslsmith_div_f32(1820f, -324f)) * -1234f), arg_1);
    var var_2 = func_2().b | var_0.b.b;
    let var_3 = vec3<bool>(true, all(!(!vec2<bool>(true, var_0.a))), global3.a);
    let var_4 = var_0.e.zz;
    return func_3(global3.b, 1u, _wgslsmith_f_op_f32(ceil(-959f)));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: u32, arg_3: vec4<i32>) -> Struct_4 {
    let var_0 = Struct_3(1i >= arg_3.x);
    global1 = !any(vec4<bool>(-1572f >= arg_0.e.x, arg_1.a, !arg_1.b.b, any(!vec2<bool>(false, var_0.a))));
    global1 = false;
    let var_1 = reverseBits(_wgslsmith_mod_vec3_u32(_wgslsmith_add_vec3_u32(_wgslsmith_sub_vec3_u32(arg_1.c.yzx, vec3<u32>(6723u, 39582u, 1u)), vec3<u32>(1558u, 1u, 265u)), global2.yyy) | global3.c.yzw);
    let var_2 = func_1(_wgslsmith_dot_vec4_i32(-vec4<i32>(arg_3.x, -40039i, arg_3.x, arg_3.x) >> (vec4<u32>(arg_1.d.x, arg_2, 20031u, 23755u) % vec4<u32>(32u)), _wgslsmith_add_vec4_i32(reverseBits(arg_3), arg_3)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global3.e.x, func_3(arg_1.b, arg_1.b.a, -636f).e.x) * arg_0.e.x), select(!select(vec3<bool>(var_0.a, false, arg_1.b.b), vec3<bool>(false, false, arg_1.a), vec3<bool>(arg_1.b.b, var_0.a, true)), vec3<bool>(true, false, false), !(!vec3<bool>(arg_0.a, arg_1.a, var_0.a)))).e.x >= 510f;
    return Struct_4(arg_0, ~(max(~(-1i), arg_3.x) | arg_3.x), Struct_3(any(vec4<bool>(var_2, false, false, arg_1.b.b)) && (_wgslsmith_f_op_f32(abs(1000f)) > _wgslsmith_f_op_f32(global3.e.x + global3.e.x))), 1u);
}

fn func_5(arg_0: Struct_4, arg_1: f32) -> Struct_2 {
    var var_0 = select(true, func_4(Struct_2(true & global3.a, Struct_1(global2.x, false), ~arg_0.a.c, reverseBits(vec2<u32>(22027u, global3.c.x)), vec3<f32>(-2629f, -1316f, arg_1)), func_1(-arg_0.b, -832f, select(vec3<bool>(arg_0.a.a, true, true), vec3<bool>(arg_0.c.a, arg_0.c.a, global3.b.b), vec3<bool>(false, false, global3.b.b))), _wgslsmith_dot_vec2_u32(global3.d, ~vec2<u32>(u_input.a, 3491u)), vec4<i32>(19024i, firstTrailingBit(arg_0.b), _wgslsmith_mult_i32(arg_0.b, arg_0.b), 1i)).c.a || arg_0.a.a, true);
    var var_1 = Struct_3(!arg_0.c.a);
    global4 = array<vec4<f32>, 27>();
    var var_2 = arg_0.c;
    var_0 = arg_0.c.a;
    return Struct_2(!global3.a, func_1(_wgslsmith_clamp_i32(arg_0.b, 59305i, _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.b, arg_0.b), vec2<i32>(arg_0.b, 19149i)), arg_0.b & arg_0.b)), arg_0.a.e.x, !vec3<bool>(func_4(arg_0.a, Struct_2(global3.b.b, Struct_1(1u, false), global3.c, vec2<u32>(global3.b.a, 0u), vec3<f32>(1693f, 345f, global3.e.x)), u_input.a, vec4<i32>(arg_0.b, arg_0.b, arg_0.b, -61578i)).c.a, func_2().b, var_2.a)).b, ~(~vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, arg_0.d, 61607u), global2.wyy), _wgslsmith_sub_u32(0u, arg_0.d), _wgslsmith_dot_vec3_u32(vec3<u32>(global2.x, global2.x, global3.b.a), vec3<u32>(global0[_wgslsmith_index_u32(0u, 20u)], 25698u, 4294967295u)), _wgslsmith_mod_u32(global0[_wgslsmith_index_u32(u_input.a, 20u)], 23738u))), vec2<u32>((select(55832u, 2916u, var_1.a) & 48351u) | min(30489u, abs(u_input.a)), global0[_wgslsmith_index_u32(max(_wgslsmith_add_u32(u_input.a, global2.x), u_input.a), 20u)]), _wgslsmith_f_op_vec3_f32(arg_0.a.e - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(global3.e - vec3<f32>(-1326f, -161f, global3.e.x)), vec3<f32>(-841f, -997f, arg_1))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(abs(global3.e)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~vec2<i32>(1i, _wgslsmith_dot_vec4_i32(vec4<i32>(62480i, -1i, 72966i, -58442i), vec4<i32>(2147483647i, 70343i, 9055i, -20945i)))) ^ vec2<i32>(_wgslsmith_dot_vec4_i32(~firstLeadingBit(vec4<i32>(-2147483647i, -2147483647i, -1i, 51989i)), vec4<i32>(1i, 1i, 1i, 1i)), 1i);
    var_0 = vec2<i32>(-1i) * -(~_wgslsmith_sub_vec2_i32(~vec2<i32>(2147483647i, var_0.x), ~vec2<i32>(var_0.x, 20191i)));
    global4 = array<vec4<f32>, 27>();
    var var_1 = _wgslsmith_dot_vec4_u32(vec4<u32>(2809u | ~(~global3.c.x), global0[_wgslsmith_index_u32(66732u, 20u)], global3.b.a, firstLeadingBit(127043u)), global3.c);
    var var_2 = func_5(func_4(func_1(~var_0.x << (_wgslsmith_mod_u32(global2.x, u_input.a) % 32u), 946f, select(!vec3<bool>(true, global3.b.b, global3.b.b), vec3<bool>(global3.b.b, false, true), global3.a != false)), Struct_2(!global3.b.b == all(vec2<bool>(true, true)), func_1(firstLeadingBit(-7725i), _wgslsmith_f_op_f32(1653f - global3.e.x), select(vec3<bool>(false, global3.a, global3.b.b), vec3<bool>(false, true, false), true)).b, abs(~vec4<u32>(u_input.a, global2.x, 0u, 1u)), abs(vec2<u32>(global0[_wgslsmith_index_u32(global2.x, 20u)], u_input.a)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global3.e.x, 673f, global3.e.x) - _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global3.e.x, global3.e.x, 294f))))), _wgslsmith_dot_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(global3.c.x, 20u)], u_input.a, 13179u), global2.zyz) >> (u_input.a % 32u), ~vec4<i32>(-1i, -1i, -1i, var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.e.x - global3.e.x)));
    global4 = array<vec4<f32>, 27>();
    var var_3 = true;
    global0 = array<u32, 20>();
    var_3 = !(!func_3(global3.b, countOneBits(u_input.a), _wgslsmith_f_op_f32(abs(-960f))).a);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(global3.c.x, 4294967295u, abs(var_2.d.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.e.x - global3.e.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1316f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.e.x * 508f) + _wgslsmith_f_op_f32(round(-1968f)))) + _wgslsmith_f_op_f32(f32(-1f) * -480f)), vec3<u32>(u_input.a, ~0u, global0[_wgslsmith_index_u32(countOneBits(func_4(Struct_2(global3.a, Struct_1(u_input.a, false), vec4<u32>(u_input.a, u_input.a, 19561u, global2.x), vec2<u32>(5475u, global0[_wgslsmith_index_u32(27009u, 20u)]), var_2.e), Struct_2(false, Struct_1(u_input.a, false), var_2.c, vec2<u32>(1u, var_2.b.a), global3.e), var_2.d.x, vec4<i32>(var_0.x, -1i, var_0.x, var_0.x)).d) | min(global3.c.x, global3.b.a), 20u)]));
}

