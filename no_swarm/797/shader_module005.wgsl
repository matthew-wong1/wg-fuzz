struct Struct_1 {
    a: u32,
    b: f32,
    c: vec2<u32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: bool,
    d: vec4<bool>,
    e: vec4<i32>,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 29> = array<vec4<i32>, 29>(vec4<i32>(-15863i, i32(-2147483648), -53287i, -9384i), vec4<i32>(36719i, 1i, 2147483647i, 70508i), vec4<i32>(-25734i, -1i, 1i, -6627i), vec4<i32>(2147483647i, i32(-2147483648), -29235i, i32(-2147483648)), vec4<i32>(-57267i, i32(-2147483648), 10496i, 12762i), vec4<i32>(-18494i, -1819i, 1i, -1i), vec4<i32>(-1i, -3883i, 56080i, i32(-2147483648)), vec4<i32>(46835i, -1i, 0i, 2147483647i), vec4<i32>(i32(-2147483648), -1i, 0i, 6996i), vec4<i32>(-39679i, 2147483647i, -16619i, -17082i), vec4<i32>(9186i, 2147483647i, 2147483647i, -1i), vec4<i32>(0i, 1i, -42936i, -1i), vec4<i32>(2147483647i, 63725i, -1i, 46727i), vec4<i32>(-5754i, 0i, -11465i, -25930i), vec4<i32>(1i, 22125i, 36139i, -52405i), vec4<i32>(25625i, -34923i, -6445i, 1i), vec4<i32>(-9776i, 2147483647i, -1i, -9104i), vec4<i32>(1i, 2147483647i, i32(-2147483648), 2147483647i), vec4<i32>(1i, -18207i, 11083i, 0i), vec4<i32>(1i, 50939i, -1i, -7256i), vec4<i32>(-12284i, i32(-2147483648), 37029i, i32(-2147483648)), vec4<i32>(-18596i, 40066i, 0i, 41579i), vec4<i32>(1i, -1i, 1i, -23649i), vec4<i32>(57743i, -53954i, -29738i, i32(-2147483648)), vec4<i32>(0i, 0i, 2147483647i, 1i), vec4<i32>(-25033i, 0i, -1952i, -1i), vec4<i32>(1i, 49227i, -1i, -26929i), vec4<i32>(-1i, -6143i, 28371i, 8508i), vec4<i32>(i32(-2147483648), 27894i, -15226i, -71854i));

var<private> global1: array<i32, 9> = array<i32, 9>(37179i, -21616i, 18472i, -57642i, 2147483647i, -3459i, 49891i, i32(-2147483648), -21299i);

var<private> global2: Struct_1;

var<private> global3: array<bool, 27>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: vec3<i32>, arg_1: vec3<u32>, arg_2: i32) -> i32 {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.b)), global2.b);
    var var_1 = vec4<i32>(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(~27094u, 1u, global2.a, arg_1.x), ~(vec4<u32>(u_input.b.x, 1u, u_input.b.x, arg_1.x) | vec4<u32>(arg_1.x, 75334u, 58394u, u_input.b.x))), 9u)] >> (~(~arg_1.x) % 32u), _wgslsmith_mod_i32(2147483647i, max(i32(-1i) * -2147483647i, -arg_2)) & _wgslsmith_dot_vec2_i32(reverseBits(vec2<i32>(global1[_wgslsmith_index_u32(global2.c.x, 9u)], u_input.a.x) & arg_0.xz), vec2<i32>(-14121i, u_input.c)), max(max(u_input.c << (min(1u, 0u) % 32u), 11808i), i32(-1i) * -18563i), ((1i | (global1[_wgslsmith_index_u32(34258u, 9u)] << (0u % 32u))) | ~(~(-1i))) & 18952i);
    let var_2 = global3[_wgslsmith_index_u32(arg_1.x, 27u)];
    let var_3 = _wgslsmith_f_op_f32(-global2.b);
    global3 = array<bool, 27>();
    return (i32(-1i) * -1i) >> (~reverseBits(~_wgslsmith_mult_u32(global2.a, global2.c.x)) % 32u);
}

fn func_2(arg_0: Struct_3, arg_1: vec3<u32>, arg_2: u32) -> Struct_3 {
    global0 = array<vec4<i32>, 29>();
    let var_0 = _wgslsmith_clamp_i32(-1i, global1[_wgslsmith_index_u32(31117u, 9u)], -_wgslsmith_mod_i32(_wgslsmith_mod_i32(func_3(vec3<i32>(arg_0.a, 10643i, 2147483647i), arg_1, arg_0.a), -global1[_wgslsmith_index_u32(global2.c.x, 9u)]), u_input.a.x));
    global0 = array<vec4<i32>, 29>();
    var var_1 = var_0;
    var var_2 = !vec3<bool>(global3[_wgslsmith_index_u32(u_input.b.x, 27u)], true, false);
    return Struct_3(-(~global1[_wgslsmith_index_u32(global2.a, 9u)]), Struct_2(arg_0.b.a, Struct_1(~arg_0.b.b.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1489f)) - _wgslsmith_f_op_f32(-global2.b)), arg_0.b.b.c), true, vec4<bool>(false, true, _wgslsmith_f_op_f32(step(arg_0.b.b.b, global2.b)) <= _wgslsmith_f_op_f32(trunc(610f)), true), ~_wgslsmith_clamp_vec4_i32(abs(global0[_wgslsmith_index_u32(global2.c.x, 29u)]), min(vec4<i32>(52329i, -18786i, arg_0.a, u_input.a.x), vec4<i32>(-1i, global1[_wgslsmith_index_u32(arg_0.b.b.c.x, 9u)], u_input.c, 2147483647i)), vec4<i32>(u_input.c, global1[_wgslsmith_index_u32(4294967295u, 9u)], global1[_wgslsmith_index_u32(1u, 9u)], -42612i))));
}

fn func_1(arg_0: Struct_3, arg_1: f32) -> vec2<i32> {
    global2 = Struct_1(~(~24113u), -295f, vec2<u32>(global2.a, 1u));
    let var_0 = func_2(arg_0, ~(~(~vec3<u32>(arg_0.b.b.c.x, global2.a, u_input.b.x))), 58112u);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(round(var_0.b.b.b))) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(2255f + 282f)))))));
    var var_2 = u_input.b.x;
    global0 = array<vec4<i32>, 29>();
    return firstTrailingBit(_wgslsmith_add_vec2_i32(select(-_wgslsmith_sub_vec2_i32(var_0.b.e.zx, arg_0.b.e.xx), vec2<i32>(-1i) * -u_input.a.xy, func_2(func_2(Struct_3(arg_0.b.e.x, arg_0.b), vec3<u32>(global2.a, 1u, global2.a), u_input.b.x), select(vec3<u32>(1u, 4294967295u, 0u), vec3<u32>(global2.a, 0u, 22011u), vec3<bool>(true, true, arg_0.b.a.x)), arg_0.b.b.c.x).b.d.ww), vec2<i32>(func_2(arg_0, vec3<u32>(0u, 4294967295u, var_0.b.b.a), 0u).b.e.x, reverseBits(global1[_wgslsmith_index_u32(arg_0.b.b.c.x << (0u % 32u), 9u)]))));
}

fn func_4(arg_0: vec4<bool>, arg_1: vec2<i32>, arg_2: bool) -> Struct_1 {
    var var_0 = Struct_3(1i, func_2(func_2(func_2(func_2(Struct_3(-1i, Struct_2(arg_0, Struct_1(4294967295u, global2.b, vec2<u32>(57717u, global2.c.x)), true, arg_0, vec4<i32>(global1[_wgslsmith_index_u32(0u, 9u)], global1[_wgslsmith_index_u32(global2.c.x, 9u)], arg_1.x, u_input.c))), vec3<u32>(4294967295u, u_input.b.x, global2.c.x), 4294967295u), vec3<u32>(15952u, 0u, global2.a), max(u_input.b.x, global2.a)), _wgslsmith_mod_vec3_u32(select(vec3<u32>(global2.c.x, 0u, u_input.b.x), vec3<u32>(u_input.b.x, 0u, 3843u), global3[_wgslsmith_index_u32(u_input.b.x, 27u)]), _wgslsmith_clamp_vec3_u32(vec3<u32>(global2.c.x, u_input.b.x, 129129u), vec3<u32>(1u, global2.c.x, 1u), vec3<u32>(u_input.b.x, 1u, 15693u))), ~53638u), vec3<u32>(_wgslsmith_add_u32(1u, global2.a << (global2.c.x % 32u)), ~select(32740u, 101162u, global3[_wgslsmith_index_u32(u_input.b.x, 27u)]), u_input.b.x), 1u).b);
    global0 = array<vec4<i32>, 29>();
    let var_1 = vec4<i32>(_wgslsmith_clamp_i32(-u_input.a.x ^ var_0.a, 0i, ~(-1i)), func_1(func_2(Struct_3(~(-20611i), var_0.b), ~(~vec3<u32>(global2.a, 4294967295u, 4294967295u)), countOneBits(~u_input.b.x)), var_0.b.b.b).x, ~_wgslsmith_mod_i32(~(0i >> (0u % 32u)), _wgslsmith_div_i32(_wgslsmith_mod_i32(0i, u_input.c), func_3(vec3<i32>(arg_1.x, var_0.b.e.x, 16464i), vec3<u32>(global2.a, 22903u, global2.a), arg_1.x))), ~(i32(-1i) * -_wgslsmith_add_i32(global1[_wgslsmith_index_u32(14055u, 9u)], global1[_wgslsmith_index_u32(22073u, 9u)])));
    let var_2 = select(!vec2<bool>(arg_2, true), vec2<bool>(all(!func_2(Struct_3(16142i, Struct_2(arg_0, Struct_1(37093u, 159f, global2.c), true, vec4<bool>(var_0.b.c, arg_2, false, arg_2), vec4<i32>(2147483647i, u_input.c, -12002i, -1i))), vec3<u32>(1u, global2.a, u_input.b.x), 1u).b.d), true), true);
    var_0 = func_2(func_2(Struct_3(2147483647i, var_0.b), ~(~(vec3<u32>(1u, 14514u, var_0.b.b.c.x) << (vec3<u32>(0u, u_input.b.x, 21138u) % vec3<u32>(32u)))), ~_wgslsmith_sub_u32(~1u, 59292u)), vec3<u32>(5965u, 1u, u_input.b.x), 0u);
    return var_0.b.b;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_3) -> StorageBuffer {
    global3 = array<bool, 27>();
    let var_0 = Struct_1(firstTrailingBit(1u), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.b.b.b) + _wgslsmith_f_op_f32(abs(1000f))))), countOneBits(arg_1.b.b.c));
    global0 = array<vec4<i32>, 29>();
    var var_1 = ~arg_1.b.e << (~(~((vec4<u32>(global2.a, 67703u, 12364u, arg_0.a) & vec4<u32>(global2.c.x, 4294967295u, 10817u, global2.a)) << (~vec4<u32>(var_0.c.x, 76277u, 60801u, arg_0.c.x) % vec4<u32>(32u)))) % vec4<u32>(32u));
    let var_2 = arg_1.b;
    return StorageBuffer(select(u_input.c, 2871i, (false || !var_2.d.x) && (func_1(arg_1, arg_1.b.b.b).x > 43086i)), _wgslsmith_f_op_f32(exp2(func_4(!vec4<bool>(true, true, var_2.c, false), -func_1(Struct_3(var_1.x, var_2), -844f), true).b)), _wgslsmith_mod_u32(reverseBits(global2.c.x) ^ 72636u, arg_1.b.b.c.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -reverseBits(~_wgslsmith_div_vec3_i32(u_input.a.wyx, firstTrailingBit(u_input.a.wwy)));
    global1 = array<i32, 9>();
    global1 = array<i32, 9>();
    var var_1 = u_input.b;
    global3 = array<bool, 27>();
    let x = u_input.a;
    s_output = func_5(func_4(vec4<bool>((global2.b != -792f) || false, global3[_wgslsmith_index_u32(global2.a, 27u)], true, true), func_1(Struct_3(firstLeadingBit(-1i), Struct_2(vec4<bool>(false, true, global3[_wgslsmith_index_u32(60371u, 27u)], global3[_wgslsmith_index_u32(0u, 27u)]), Struct_1(74213u, global2.b, u_input.b), global3[_wgslsmith_index_u32(u_input.b.x, 27u)], vec4<bool>(false, false, true, global3[_wgslsmith_index_u32(4091u, 27u)]), u_input.a)), 794f), func_2(func_2(func_2(Struct_3(var_0.x, Struct_2(vec4<bool>(global3[_wgslsmith_index_u32(global2.c.x, 27u)], true, true, false), Struct_1(0u, 783f, vec2<u32>(27680u, u_input.b.x)), false, vec4<bool>(global3[_wgslsmith_index_u32(var_1.x, 27u)], true, global3[_wgslsmith_index_u32(13506u, 27u)], global3[_wgslsmith_index_u32(150889u, 27u)]), global0[_wgslsmith_index_u32(62591u, 29u)])), vec3<u32>(global2.a, u_input.b.x, var_1.x), var_1.x), countOneBits(vec3<u32>(global2.c.x, 1u, 1258u)), u_input.b.x ^ 50368u), vec3<u32>(global2.a, 0u, 2195u ^ global2.a), 0u).b.a.x), Struct_3(i32(-1i) * -1i, Struct_2(select(func_2(Struct_3(-1i, Struct_2(vec4<bool>(global3[_wgslsmith_index_u32(0u, 27u)], global3[_wgslsmith_index_u32(var_1.x, 27u)], true, true), Struct_1(u_input.b.x, -1000f, vec2<u32>(4294967295u, u_input.b.x)), true, vec4<bool>(global3[_wgslsmith_index_u32(var_1.x, 27u)], global3[_wgslsmith_index_u32(var_1.x, 27u)], global3[_wgslsmith_index_u32(25911u, 27u)], true), u_input.a)), vec3<u32>(u_input.b.x, 0u, 0u), u_input.b.x).b.d, select(vec4<bool>(false, global3[_wgslsmith_index_u32(29204u, 27u)], false, global3[_wgslsmith_index_u32(global2.c.x, 27u)]), vec4<bool>(false, true, global3[_wgslsmith_index_u32(19737u, 27u)], global3[_wgslsmith_index_u32(u_input.b.x, 27u)]), vec4<bool>(global3[_wgslsmith_index_u32(u_input.b.x, 27u)], global3[_wgslsmith_index_u32(0u, 27u)], global3[_wgslsmith_index_u32(var_1.x, 27u)], false)), !vec4<bool>(global3[_wgslsmith_index_u32(47548u, 27u)], true, global3[_wgslsmith_index_u32(4294967295u, 27u)], false)), func_4(vec4<bool>(global3[_wgslsmith_index_u32(global2.a, 27u)], true, global3[_wgslsmith_index_u32(13280u, 27u)], global3[_wgslsmith_index_u32(u_input.b.x, 27u)]), u_input.a.yx, true), any(!vec3<bool>(true, global3[_wgslsmith_index_u32(var_1.x, 27u)], global3[_wgslsmith_index_u32(1u, 27u)])), vec4<bool>(false, true, global3[_wgslsmith_index_u32(1u, 27u)], select(global3[_wgslsmith_index_u32(3418u, 27u)], global3[_wgslsmith_index_u32(95347u, 27u)], false)), ~vec4<i32>(-9426i, -2147483647i, var_0.x, -3599i))));
}

