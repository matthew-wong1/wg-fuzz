struct Struct_1 {
    a: u32,
    b: f32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: i32,
    d: bool,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec4<i32>,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(44777u, 1u, 1u, 3475u);

var<private> global1: array<Struct_2, 26> = array<Struct_2, 26>(Struct_2(30695u, Struct_1(35550u, 787f), i32(-2147483648), true), Struct_2(1u, Struct_1(33757u, -767f), -1i, false), Struct_2(0u, Struct_1(1611u, 1181f), 13070i, false), Struct_2(50543u, Struct_1(38086u, -2242f), -9070i, false), Struct_2(4294967295u, Struct_1(64983u, 1526f), 40386i, true), Struct_2(4294967295u, Struct_1(85478u, 140f), 48898i, false), Struct_2(38686u, Struct_1(4294967295u, -1000f), i32(-2147483648), true), Struct_2(0u, Struct_1(4294967295u, -1513f), 1i, false), Struct_2(56980u, Struct_1(0u, 1915f), 0i, false), Struct_2(2676u, Struct_1(0u, 2028f), 1i, true), Struct_2(0u, Struct_1(0u, -1415f), 0i, true), Struct_2(0u, Struct_1(4294967295u, 1441f), 1i, true), Struct_2(36545u, Struct_1(4294967295u, -286f), -1i, false), Struct_2(52532u, Struct_1(104024u, -419f), 0i, false), Struct_2(8260u, Struct_1(1u, -1173f), 102819i, false), Struct_2(0u, Struct_1(37669u, -251f), -1i, true), Struct_2(55035u, Struct_1(1u, -593f), 0i, false), Struct_2(4294967295u, Struct_1(4294967295u, 123f), i32(-2147483648), false), Struct_2(1u, Struct_1(0u, -237f), 0i, false), Struct_2(24592u, Struct_1(52310u, -621f), 2147483647i, false), Struct_2(1u, Struct_1(1u, 1090f), -20435i, true), Struct_2(57231u, Struct_1(1u, 679f), 21480i, true), Struct_2(73424u, Struct_1(1u, 1013f), -5354i, true), Struct_2(1u, Struct_1(0u, 1114f), 2147483647i, true), Struct_2(82424u, Struct_1(80605u, 2570f), 37998i, false), Struct_2(1u, Struct_1(0u, -1036f), 2147483647i, false));

var<private> global2: vec3<i32>;

var<private> global3: Struct_2;

var<private> global4: vec2<bool> = vec2<bool>(true, true);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: i32) -> vec4<u32> {
    let var_0 = Struct_2(select(~u_input.a, 1u, select(!global3.d, any(select(vec3<bool>(global3.d, false, global3.d), vec3<bool>(global4.x, global3.d, global3.d), vec3<bool>(global3.d, global4.x, global3.d))), global3.d)), Struct_1(~0u, -933f), arg_0, true);
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(373f, _wgslsmith_f_op_f32(round(global3.b.b)), !(global2.x == 17581i) != !global4.x)) - _wgslsmith_f_op_f32(-global3.b.b));
    var var_2 = !(!select(!all(vec3<bool>(false, true, false)), true, true));
    global3 = global1[_wgslsmith_index_u32(~(u_input.a << (4294967295u % 32u)), 26u)];
    global0 = vec4<u32>(global0.x, 41519u, ~(_wgslsmith_mult_u32(var_0.b.a, 1u) & _wgslsmith_mult_u32(~var_0.a, ~u_input.a)), _wgslsmith_clamp_u32(select((4294967295u | global0.x) << (_wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.a, global0.x), global0.xwy) % 32u), 0u & select(8701u, 22631u, global4.x), true && var_0.d), ~(19381u & (1031u ^ var_0.b.a)), countOneBits(~(~var_0.a))));
    return _wgslsmith_mod_vec4_u32(vec4<u32>(57238u, u_input.a, u_input.a | (var_0.b.a & (global0.x ^ global3.a)), _wgslsmith_dot_vec3_u32(abs(firstLeadingBit(global0.yxy)), firstTrailingBit(vec3<u32>(var_0.b.a, var_0.b.a, global0.x)))), ~vec4<u32>(~86262u, 67232u, 4294967295u, _wgslsmith_mult_u32(global0.x, ~global3.b.a)));
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_1(_wgslsmith_mult_u32(1u, 1u), -113f);
    let var_1 = Struct_1(~_wgslsmith_clamp_u32(1u, 34314u, ~0u ^ global0.x), _wgslsmith_f_op_f32(-1041f * -1200f));
    global4 = vec2<bool>(true, global3.d);
    let var_2 = func_3(3948i);
    var var_3 = var_0.a;
    return global1[_wgslsmith_index_u32(~(countOneBits(19765u) ^ firstLeadingBit(var_2.x >> (24659u % 32u))), 26u)];
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec3<i32>) -> i32 {
    var var_0 = global1[_wgslsmith_index_u32(arg_0.a, 26u)];
    global2 = vec3<i32>(~(-24010i), ~_wgslsmith_dot_vec4_i32(~min(vec4<i32>(1i, -662i, -45173i, arg_1.c), vec4<i32>(arg_1.c, global3.c, var_0.c, 0i)), ~vec4<i32>(49865i, global2.x, var_0.c, global2.x)), 1i);
    var var_1 = select(!var_0.d, _wgslsmith_mult_i32(func_2().c, var_0.c) <= -35759i, var_0.d);
    var_0 = Struct_2(4294967295u, var_0.b, -2147483647i ^ ~abs(-global3.c), true);
    var var_2 = select(select(vec3<bool>(false, func_2().d, true), !(!vec3<bool>(true, false, arg_1.d)), global4.x), vec3<bool>(all(vec3<bool>(true, arg_1.d, 70461u <= arg_1.a)), arg_1.d, ~53851u != firstTrailingBit(4294967295u)), select(all(select(select(vec3<bool>(var_0.d, global3.d, true), vec3<bool>(true, false, false), arg_1.d), vec3<bool>(global4.x, global4.x, var_0.d), vec3<bool>(global3.d, var_0.d, global4.x))), global4.x | (true || global4.x), true));
    return var_0.c;
}

fn func_5(arg_0: Struct_1, arg_1: i32, arg_2: bool, arg_3: f32) -> vec2<bool> {
    let var_0 = Struct_1(u_input.a, 221f);
    global3 = func_2();
    global4 = !(!vec2<bool>(_wgslsmith_div_u32(109803u, 51415u) >= (global3.a ^ 4294967295u), false));
    global2 = -firstTrailingBit(~(-_wgslsmith_add_vec3_i32(vec3<i32>(-2147483647i, -1i, -2147483647i), vec3<i32>(global2.x, -41745i, -14081i))));
    global0 = ~(vec4<u32>(u_input.a, _wgslsmith_sub_u32(1u, ~var_0.a), (u_input.a | arg_0.a) >> (_wgslsmith_add_u32(var_0.a, u_input.a) % 32u), u_input.a) | vec4<u32>((global0.x ^ arg_0.a) ^ 0u, global3.a, global3.b.a, global3.a));
    return !select(!vec2<bool>(true, false & global3.d), vec2<bool>(false, global3.d), select(!select(vec2<bool>(false, global4.x), vec2<bool>(false, false), arg_2), select(vec2<bool>(global4.x, global4.x), !vec2<bool>(false, arg_2), true), true));
}

fn func_1(arg_0: f32, arg_1: vec4<bool>) -> f32 {
    global4 = !vec2<bool>(arg_1.x, all(select(arg_1.yy, vec2<bool>(false, arg_1.x), arg_1.zw)) || global3.d);
    let var_0 = func_5(global3.b, func_4(Struct_1(1u, -1344f), func_2(), ~(max(vec3<i32>(global3.c, 20786i, -1i), vec3<i32>(1i, global2.x, global2.x)) << (global0.zyy % vec3<u32>(32u)))), false, _wgslsmith_f_op_f32(max(1372f, arg_0)));
    global0 = ~(_wgslsmith_div_vec4_u32(select(~vec4<u32>(u_input.a, 0u, 1u, 4294967295u), abs(vec4<u32>(1u, global0.x, global0.x, 1u)), select(vec4<bool>(var_0.x, false, false, true), vec4<bool>(global4.x, arg_1.x, true, false), false)), select(vec4<u32>(u_input.a, 1u, 28783u, u_input.a), abs(vec4<u32>(u_input.a, 3006u, global0.x, 4294967295u)), !arg_1)) & ~(~(vec4<u32>(u_input.a, u_input.a, 47188u, u_input.a) | vec4<u32>(1u, 0u, global0.x, global0.x))));
    var var_1 = min(_wgslsmith_div_vec3_i32(firstTrailingBit(_wgslsmith_mult_vec3_i32(vec3<i32>(-32966i, -17238i, global2.x) ^ vec3<i32>(2147483647i, global3.c, 1i), abs(vec3<i32>(1i, global2.x, 732i)))), _wgslsmith_sub_vec3_i32(vec3<i32>(~global2.x, 2147483647i, max(1i, global3.c)), ~_wgslsmith_mod_vec3_i32(vec3<i32>(34541i, -34307i, global3.c), vec3<i32>(-2203i, global2.x, 65912i)))), vec3<i32>(((3712i & global3.c) | _wgslsmith_mod_i32(0i, -2147483647i)) ^ -global3.c, abs(-12643i ^ _wgslsmith_dot_vec2_i32(global2.xy, global2.zz)), -2147483647i & -global2.x));
    let var_2 = _wgslsmith_f_op_f32(-arg_0);
    return 312f;
}

fn func_6(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: f32, arg_3: Struct_3) -> Struct_3 {
    global4 = vec2<bool>(_wgslsmith_clamp_u32(53435u, ~abs(u_input.a), ~1u ^ _wgslsmith_mod_u32(1u, arg_0.a)) == ~(~1u), arg_3.c.x);
    var var_0 = global3.d;
    global0 = _wgslsmith_mult_vec4_u32(_wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(~vec4<u32>(66298u, arg_0.a, 45240u, arg_0.a), ~vec4<u32>(global0.x, global3.b.a, global0.x, 390u)), select(vec4<u32>(global3.a, arg_0.a, 4294967295u, global3.a), vec4<u32>(4294967295u, 4294967295u, 0u, arg_0.a) ^ vec4<u32>(global0.x, 118767u, u_input.a, global0.x), select(arg_1, vec4<bool>(false, global4.x, false, false), true)), ~abs(vec4<u32>(0u, 13345u, 57981u, global3.b.a))), select(~min(vec4<u32>(4294967295u, 4294967295u, global3.b.a, 1u), vec4<u32>(0u, global0.x, 9639u, 10537u)), vec4<u32>(23427u, 37005u ^ u_input.a, ~49735u, arg_0.a), !vec4<bool>(global3.d, global4.x, false, false))) >> (~(~_wgslsmith_mod_vec4_u32(firstLeadingBit(vec4<u32>(29186u, 1u, 0u, u_input.a)), vec4<u32>(0u, 5038u, global0.x, global0.x))) % vec4<u32>(32u));
    var var_1 = abs(arg_3.b);
    var var_2 = ~1u;
    return Struct_3(arg_3.a, vec4<i32>(arg_3.b.x, global2.x, _wgslsmith_add_i32(~(-1i) >> (u_input.a % 32u), _wgslsmith_dot_vec4_i32(arg_3.b, arg_3.b | arg_3.b)), (_wgslsmith_dot_vec3_i32(arg_3.b.wyz, var_1.yzy) >> (3733u % 32u)) >> (_wgslsmith_add_u32(~1u, 7612u >> (u_input.a % 32u)) % 32u)), vec3<bool>(global4.x || arg_3.c.x, true, true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(global3.b, vec4<bool>(true, true, ~_wgslsmith_mult_u32(global0.x, u_input.a) != select(u_input.a, firstTrailingBit(global3.a), true), true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(global3.b.b, vec4<bool>(true, global4.x, false, true)))))), Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.b.b, -1000f)) + vec2<f32>(global3.b.b, global3.b.b))), -(~(-vec4<i32>(global2.x, -4138i, global2.x, global3.c))), vec3<bool>(!any(vec2<bool>(global4.x, false)), true, false)));
    var var_1 = vec4<i32>(i32(-1i) * -2147483647i, -func_6(func_2().b, vec4<bool>(global3.b.b != -827f, true, global4.x, false), _wgslsmith_f_op_f32(floor(-2060f)), Struct_3(vec2<f32>(-108f, global3.b.b), ~var_0.b, !vec3<bool>(false, var_0.c.x, var_0.c.x))).b.x, global2.x << (_wgslsmith_div_u32(~(~global3.a), global3.b.a) % 32u), firstLeadingBit(var_0.b.x));
    let var_2 = Struct_1(global0.x, -505f);
    var var_3 = vec4<u32>(global3.a, 27831u, var_2.a, reverseBits(~(~firstTrailingBit(u_input.a))));
    global4 = select(vec2<bool>(true, !var_0.c.x), vec2<bool>(false, any(vec3<bool>(any(vec2<bool>(false, true)), false, var_0.b.x > 0i))), !var_0.c.yx);
    var var_4 = func_2().b;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(~(~1u), var_4.a | var_4.a, 4294967295u, ~var_3.x), var_0.a);
}

