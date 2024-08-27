struct Struct_1 {
    a: vec3<bool>,
    b: bool,
    c: vec4<bool>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec2<i32>,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 28> = array<u32, 28>(17899u, 19992u, 25835u, 74799u, 203u, 15834u, 0u, 17775u, 31315u, 1u, 51717u, 26704u, 1u, 2118u, 0u, 4294967295u, 67964u, 1u, 3573u, 4294967295u, 51196u, 100361u, 24274u, 4294967295u, 11360u, 49672u, 9777u, 1u);

var<private> global1: array<i32, 10>;

var<private> global2: vec3<u32>;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1) -> vec2<u32> {
    let var_0 = ~(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 28u)], 28u)]) << (~22156u % 32u);
    let var_1 = _wgslsmith_f_op_f32(floor(865f));
    global2 = vec3<u32>(u_input.a, 51517u, 62426u);
    var var_2 = !(true && (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_1, -113f))) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -291f) * -1890f)));
    var var_3 = _wgslsmith_dot_vec3_i32(~abs(vec3<i32>(~(-24006i), _wgslsmith_clamp_i32(u_input.b, u_input.b, 2147483647i), select(u_input.b, global1[_wgslsmith_index_u32(32563u, 10u)], false))), vec3<i32>(~_wgslsmith_mod_i32(0i, u_input.b), u_input.b | global1[_wgslsmith_index_u32(0u << (global0[_wgslsmith_index_u32(4294967295u, 28u)] % 32u), 10u)], -max(-10110i, -31499i)) << (_wgslsmith_add_vec3_u32(reverseBits(vec3<u32>(u_input.a, 17186u, 4294967295u) >> (vec3<u32>(24425u, 32967u, 17278u) % vec3<u32>(32u))), _wgslsmith_add_vec3_u32(abs(vec3<u32>(46943u, 93162u, 0u)), vec3<u32>(16304u, u_input.a, var_0))) % vec3<u32>(32u)));
    return ~(~_wgslsmith_mod_vec2_u32(global2.zy, global2.xz));
}

fn func_2(arg_0: vec3<bool>, arg_1: Struct_1) -> Struct_1 {
    global1 = array<i32, 10>();
    let var_0 = ~(vec2<u32>(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(2992u, 28u)], 28u)], 28u)], max(4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 28u)], 28u)])) ^ (global2.yz >> (vec2<u32>(31026u, global2.x) % vec2<u32>(32u)))) << (_wgslsmith_sub_vec2_u32(global2.zy, func_3(arg_1)) % vec2<u32>(32u));
    let var_1 = _wgslsmith_div_vec4_i32(~(~vec4<i32>(-1i, u_input.b, 1i & u_input.b, 11246i)), _wgslsmith_sub_vec4_i32(vec4<i32>(-1i) * -(vec4<i32>(global1[_wgslsmith_index_u32(0u, 10u)], 26388i, 14284i, 21946i) << (vec4<u32>(u_input.a, 4294967295u, global0[_wgslsmith_index_u32(var_0.x, 28u)], 0u) % vec4<u32>(32u))), -(~vec4<i32>(-28680i, 1i, 1i, -24775i))));
    let var_2 = ~firstTrailingBit(var_1);
    global2 = vec3<u32>(select(~1u, 21996u, all(select(!vec3<bool>(false, arg_0.x, arg_0.x), !arg_0, !vec3<bool>(arg_0.x, arg_1.c.x, arg_1.a.x)))), u_input.a, global0[_wgslsmith_index_u32(~var_0.x, 28u)]);
    return arg_1;
}

fn func_4(arg_0: Struct_1) -> vec4<f32> {
    var var_0 = Struct_2(~vec3<i32>(global1[_wgslsmith_index_u32(1u, 10u)], -3353i, _wgslsmith_dot_vec3_i32(~vec3<i32>(global1[_wgslsmith_index_u32(20231u, 10u)], u_input.b, u_input.b), select(vec3<i32>(44409i, -15355i, -74292i), vec3<i32>(global1[_wgslsmith_index_u32(0u, 10u)], 2147483647i, -11593i), arg_0.c.x))), func_2(select(func_2(select(arg_0.c.xww, arg_0.a, arg_0.c.wxy), func_2(arg_0.c.zxz, Struct_1(vec3<bool>(arg_0.a.x, arg_0.a.x, arg_0.c.x), arg_0.c.x, vec4<bool>(false, true, false, true)))).c.zxw, func_2(vec3<bool>(arg_0.a.x, arg_0.c.x, true), Struct_1(vec3<bool>(arg_0.c.x, arg_0.c.x, arg_0.a.x), arg_0.a.x, vec4<bool>(arg_0.a.x, false, arg_0.b, true))).c.wzx, false), func_2(func_2(select(arg_0.a, arg_0.c.yzz, vec3<bool>(true, arg_0.c.x, arg_0.c.x)), arg_0).a, Struct_1(!vec3<bool>(arg_0.b, false, true), true, !arg_0.c))));
    var var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2440f))));
    let var_2 = Struct_2(vec3<i32>(-1i) * -_wgslsmith_clamp_vec3_i32(vec3<i32>(-1i, var_0.a.x, -1i), var_0.a, vec3<i32>(global1[_wgslsmith_index_u32(20801u, 10u)], 1i, 0i)), Struct_1(var_0.b.a, false, var_0.b.c));
    var_1 = -775f;
    global1 = array<i32, 10>();
    return _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-636f, 457f, 118f, 540f) + vec4<f32>(-1246f, -1518f, 831f, 2909f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1253f, 1000f, -1300f, -581f), vec4<f32>(-601f, 1660f, -399f, -915f)))), var_2.b.c)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(592f, 420f, 171f, 524f), vec4<f32>(1901f, 803f, -1499f, -239f))))))));
}

fn func_5(arg_0: vec4<bool>, arg_1: vec4<f32>, arg_2: vec2<f32>, arg_3: vec3<u32>) -> u32 {
    let var_0 = -35325i;
    global1 = array<i32, 10>();
    var var_1 = 34501u;
    global0 = array<u32, 28>();
    let var_2 = func_2(!arg_0.xyw, func_2(!(!vec3<bool>(false, false, arg_0.x)), Struct_1(select(arg_0.xxx, arg_0.yxx, select(arg_0.yxy, vec3<bool>(arg_0.x, false, false), arg_0.x)), arg_0.x, vec4<bool>(true, true, true == arg_0.x, true)))).a;
    return max(abs(4294967295u), ~arg_3.x);
}

fn func_1(arg_0: Struct_2) -> f32 {
    var var_0 = firstTrailingBit(_wgslsmith_mult_vec4_i32(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, u_input.b, -1i, u_input.b), select(vec4<i32>(-1i, -30357i, u_input.b, u_input.b), vec4<i32>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(55655u, 28u)], 10u)], -2147483647i, global1[_wgslsmith_index_u32(global2.x, 10u)], 2147483647i), arg_0.b.c.x)), i32(-1i) * -2147483647i, select(_wgslsmith_div_i32(7065i, u_input.b), _wgslsmith_clamp_i32(arg_0.a.x, arg_0.a.x, 31578i), true), abs(-31772i) & arg_0.a.x), _wgslsmith_mult_vec4_i32(select(abs(vec4<i32>(arg_0.a.x, arg_0.a.x, 2147483647i, -1i)), -vec4<i32>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 28u)], 10u)], 1i, u_input.b, -1i), true), -vec4<i32>(-9952i, 2147483647i, u_input.b, 2147483647i) & firstLeadingBit(vec4<i32>(global1[_wgslsmith_index_u32(u_input.a, 10u)], 14268i, 1i, -1i)))));
    var var_1 = func_5(arg_0.b.c, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_4(func_2(vec3<bool>(arg_0.b.a.x, false, arg_0.b.b), arg_0.b))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(688f, -657f, 170f, -1000f) - vec4<f32>(397f, -901f, 1140f, 1483f)) * _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(2384f, -1948f, -1512f, 305f))))) + _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-477f, -363f, -1118f, -517f))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1000f, -122f, -153f, 359f)))))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec4_f32(func_4(func_2(vec3<bool>(true, true, arg_0.b.b), Struct_1(vec3<bool>(arg_0.b.c.x, false, false), false, vec4<bool>(false, arg_0.b.a.x, arg_0.b.b, true))))).zy)), select(_wgslsmith_mult_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(u_input.a, 28u)], 4294967295u, 9738u), vec3<u32>(u_input.a, 4294967295u, 1u)), vec3<u32>(~5041u, ~1u, max(u_input.a, 4201u))), _wgslsmith_mod_vec3_u32(vec3<u32>(1u ^ u_input.a, select(global0[_wgslsmith_index_u32(74090u, 28u)], 31726u, true), 1u), abs(~vec3<u32>(global0[_wgslsmith_index_u32(u_input.a, 28u)], 75490u, global2.x))), arg_0.b.a));
    let var_2 = Struct_1(select(func_2(arg_0.b.a, arg_0.b).a, vec3<bool>(all(!vec4<bool>(false, true, arg_0.b.b, arg_0.b.a.x)), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(4294967295u, global0[_wgslsmith_index_u32(4294967295u, 28u)]), 28u)] > global2.x, arg_0.b.b && (false && arg_0.b.c.x)), !arg_0.b.a), false, func_2(vec3<bool>(arg_0.b.a.x, true, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, var_0.x, arg_0.a.x), arg_0.a) <= -arg_0.a.x), arg_0.b).c);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1000f))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-651f))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -436f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(690f + -1202f) + _wgslsmith_f_op_f32(548f + 1360f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_1(Struct_2(vec3<i32>(u_input.b, u_input.b, global1[_wgslsmith_index_u32(0u, 10u)]), Struct_1(vec3<bool>(true, true, true), true, vec4<bool>(true, true, true, true)))))))))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-167f, 409f, 209f) - vec3<f32>(363f, -1050f, 1633f)) - _wgslsmith_f_op_vec3_f32(max(vec3<f32>(1223f, 499f, -1553f), vec3<f32>(811f, 702f, -1000f)))))))));
    let var_1 = firstTrailingBit(global0[_wgslsmith_index_u32(min(~(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 29905u, global2.x, 4294967295u), vec4<u32>(4213u, 118337u, global0[_wgslsmith_index_u32(1u, 28u)], u_input.a))), 19015u), 28u)]);
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-var_0.x), var_0.x)))) * vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x + var_0.x)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(1634f)))), true)), -720f, _wgslsmith_div_f32(561f, -548f)));
    var var_3 = vec4<i32>(global1[_wgslsmith_index_u32(~var_1, 10u)], _wgslsmith_div_i32(34385i, -10101i), 34405i, -2147483647i);
    let var_4 = !select(vec2<bool>(!any(vec2<bool>(true, true)), false), func_2(func_2(vec3<bool>(false, true, true), func_2(vec3<bool>(true, true, true), Struct_1(vec3<bool>(false, false, true), false, vec4<bool>(true, false, true, false)))).a, Struct_1(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), false), all(vec2<bool>(true, false)), select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), true))).c.zx, !vec2<bool>(func_2(vec3<bool>(false, false, false), Struct_1(vec3<bool>(true, true, false), true, vec4<bool>(true, false, true, false))).a.x, true));
    let x = u_input.a;
    s_output = StorageBuffer(10067i, min(select(firstTrailingBit(vec3<u32>(10001u, 108258u, var_1)), vec3<u32>(1u, ~u_input.a, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, 4294967295u, 4294967295u), vec4<u32>(var_1, 2789u, var_1, var_1)), 28u)]), -2147483647i != _wgslsmith_dot_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(0u, 10u)], global1[_wgslsmith_index_u32(28259u, 10u)], var_3.x, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4954u, 28u)], 10u)]), vec4<i32>(-1i, -15037i, u_input.b, 1i))), ~vec3<u32>(u_input.a, firstLeadingBit(1u), 4294967295u)), var_3.zz, ~1i, abs(var_3.x));
}

