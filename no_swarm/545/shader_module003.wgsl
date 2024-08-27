struct Struct_1 {
    a: i32,
    b: u32,
    c: bool,
    d: vec4<bool>,
}

struct Struct_2 {
    a: f32,
    b: vec2<u32>,
    c: vec2<u32>,
    d: f32,
    e: vec2<i32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: u32,
    c: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: vec3<i32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 26>;

var<private> global1: array<Struct_2, 19> = array<Struct_2, 19>(Struct_2(1114f, vec2<u32>(4294967295u, 34109u), vec2<u32>(2196u, 14641u), -1602f, vec2<i32>(2147483647i, 0i)), Struct_2(-1000f, vec2<u32>(0u, 1u), vec2<u32>(1u, 4294967295u), 216f, vec2<i32>(519i, i32(-2147483648))), Struct_2(-1383f, vec2<u32>(42591u, 4294967295u), vec2<u32>(41957u, 56157u), -358f, vec2<i32>(1i, 10117i)), Struct_2(1301f, vec2<u32>(58219u, 37749u), vec2<u32>(4294967295u, 1u), -1279f, vec2<i32>(i32(-2147483648), -8854i)), Struct_2(-1608f, vec2<u32>(33086u, 24258u), vec2<u32>(65578u, 1209u), 1543f, vec2<i32>(-5923i, -1i)), Struct_2(402f, vec2<u32>(7478u, 1u), vec2<u32>(0u, 4294967295u), 207f, vec2<i32>(0i, 34804i)), Struct_2(1144f, vec2<u32>(1u, 0u), vec2<u32>(8557u, 23557u), -1000f, vec2<i32>(-53379i, -16077i)), Struct_2(480f, vec2<u32>(1u, 40779u), vec2<u32>(28375u, 2113u), 849f, vec2<i32>(33556i, -1i)), Struct_2(2416f, vec2<u32>(38145u, 0u), vec2<u32>(75399u, 12301u), 1511f, vec2<i32>(23320i, 32922i)), Struct_2(1312f, vec2<u32>(4294967295u, 52023u), vec2<u32>(4294967295u, 1u), 564f, vec2<i32>(62695i, 1i)), Struct_2(391f, vec2<u32>(12033u, 1u), vec2<u32>(0u, 43305u), -268f, vec2<i32>(1i, -2257i)), Struct_2(-1691f, vec2<u32>(4294967295u, 59081u), vec2<u32>(0u, 0u), 1380f, vec2<i32>(i32(-2147483648), i32(-2147483648))), Struct_2(-2893f, vec2<u32>(4294967295u, 41776u), vec2<u32>(1u, 4294967295u), 107f, vec2<i32>(29261i, 13510i)), Struct_2(665f, vec2<u32>(49893u, 31535u), vec2<u32>(0u, 1u), -884f, vec2<i32>(i32(-2147483648), 1i)), Struct_2(1168f, vec2<u32>(0u, 3129u), vec2<u32>(70952u, 4294967295u), 201f, vec2<i32>(-1i, 14113i)), Struct_2(1547f, vec2<u32>(2865u, 31234u), vec2<u32>(12348u, 58946u), -498f, vec2<i32>(72392i, -10871i)), Struct_2(-628f, vec2<u32>(1u, 23238u), vec2<u32>(1u, 1u), 121f, vec2<i32>(-6797i, 2147483647i)), Struct_2(1586f, vec2<u32>(1u, 4294967295u), vec2<u32>(4294967295u, 71864u), -1158f, vec2<i32>(-19234i, -38388i)), Struct_2(-385f, vec2<u32>(0u, 1u), vec2<u32>(1u, 4294967295u), -2472f, vec2<i32>(i32(-2147483648), -5749i)));

var<private> global2: Struct_3;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: Struct_3) -> vec2<u32> {
    var var_0 = Struct_3(Struct_2(-1736f, ~vec2<u32>(4294967295u, arg_2.a.c.x), global2.a.b, _wgslsmith_f_op_f32(-global2.a.d), vec2<i32>(-34243i, arg_2.a.e.x)));
    var var_1 = false;
    global0 = array<vec2<u32>, 26>();
    var var_2 = global2.a.b;
    var var_3 = 0i;
    return global2.a.b;
}

fn func_2() -> vec2<u32> {
    global2 = Struct_3(Struct_2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(751f, global2.a.d)))))), func_3(_wgslsmith_div_i32(~u_input.c.x, global2.a.e.x), Struct_1(1i, ~88757u, false, vec4<bool>(true, true, true, true)), Struct_3(global1[_wgslsmith_index_u32(max(global2.a.b.x, 38539u), 19u)])), countOneBits(_wgslsmith_mod_vec2_u32(vec2<u32>(global2.a.c.x, global2.a.b.x), vec2<u32>(global2.a.b.x, global2.a.c.x) | global0[_wgslsmith_index_u32(global2.a.c.x, 26u)])), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(global2.a.d, global2.a.a)), 127f))), vec2<i32>(min(u_input.c.x, global2.a.e.x), min(-1i, -2147483647i))));
    var var_0 = Struct_2(global2.a.a, vec2<u32>(global2.a.c.x, ~global2.a.c.x) << (~max(_wgslsmith_div_vec2_u32(vec2<u32>(global2.a.b.x, global2.a.c.x), global2.a.c), vec2<u32>(global2.a.c.x, global2.a.c.x)) % vec2<u32>(32u)), global2.a.c, _wgslsmith_f_op_f32(f32(-1f) * -618f), global2.a.e);
    var var_1 = !all(vec3<bool>(all(vec4<bool>(true, true, true, true)), any(vec4<bool>(true, true, false, false)), !all(vec4<bool>(true, false, false, true))));
    var_0 = global2.a;
    var var_2 = Struct_1(i32(-1i) * -59057i, 48435u, all(select(select(vec2<bool>(true, true), vec2<bool>(true, true), any(vec3<bool>(true, false, true))), vec2<bool>(any(vec3<bool>(true, false, true)), true), false)), vec4<bool>(true, true, true, true));
    return _wgslsmith_mod_vec2_u32(global2.a.c, func_3(u_input.a, Struct_1(_wgslsmith_mod_i32(_wgslsmith_mod_i32(57443i, var_0.e.x), u_input.c.x), ~func_3(u_input.b.x, Struct_1(50293i, 1u, false, vec4<bool>(true, var_2.c, true, var_2.c)), Struct_3(global1[_wgslsmith_index_u32(1u, 19u)])).x, !var_2.d.x, var_2.d), Struct_3(Struct_2(global2.a.d, global2.a.b, _wgslsmith_add_vec2_u32(var_0.c, var_0.b), var_0.a, abs(global2.a.e)))));
}

fn func_4(arg_0: i32, arg_1: Struct_2, arg_2: Struct_3) -> Struct_2 {
    var var_0 = ~vec4<u32>(47799u, ~arg_1.b.x, 28203u, arg_1.b.x);
    var_0 = _wgslsmith_sub_vec4_u32(vec4<u32>(arg_2.a.b.x & 48427u, _wgslsmith_dot_vec3_u32(vec3<u32>(104866u, 28216u, 15569u) ^ var_0.wzz, firstTrailingBit(select(var_0.zww, vec3<u32>(27209u, global2.a.b.x, 4294967295u), true))), arg_1.c.x, var_0.x), _wgslsmith_mod_vec4_u32(vec4<u32>(arg_2.a.c.x, 0u, 8356u, _wgslsmith_clamp_u32(15278u, 0u, arg_1.b.x) | _wgslsmith_mult_u32(global2.a.c.x, arg_1.b.x)), reverseBits(vec4<u32>(1u, ~1u, 1u, ~arg_1.c.x))));
    global0 = array<vec2<u32>, 26>();
    var var_1 = any(vec2<bool>(true, all(vec2<bool>(true, true))));
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(-arg_1.d), global2.a.a, _wgslsmith_div_f32(arg_1.d, global2.a.a), global2.a.d);
    return Struct_2(_wgslsmith_f_op_f32(arg_2.a.d - _wgslsmith_f_op_f32(floor(-691f))), _wgslsmith_add_vec2_u32(min(max(vec2<u32>(3664u, 2722u), vec2<u32>(arg_1.b.x, arg_1.c.x)), arg_2.a.b), vec2<u32>(arg_2.a.c.x, ~global2.a.b.x & _wgslsmith_mod_u32(4294967295u, 21610u))), vec2<u32>(0u, ~(~4294967295u)) << (func_3(arg_1.e.x, Struct_1(arg_1.e.x, reverseBits(3519u), true, vec4<bool>(true, true, false, true)), Struct_3(Struct_2(1443f, global0[_wgslsmith_index_u32(52030u, 26u)], global2.a.b, arg_1.d, arg_1.e))) % vec2<u32>(32u)), var_2.x, _wgslsmith_mod_vec2_i32(vec2<i32>(8690i, u_input.b.x), -(vec2<i32>(-1i, arg_0) | (vec2<i32>(arg_0, -1i) & vec2<i32>(-2147483647i, 2147483647i)))));
}

fn func_1(arg_0: vec4<i32>) -> Struct_3 {
    var var_0 = Struct_3(func_4(_wgslsmith_dot_vec2_i32(arg_0.xy, _wgslsmith_mult_vec2_i32(vec2<i32>(-2254i, 2147483647i), u_input.b) >> (~vec2<u32>(26725u, 1u) % vec2<u32>(32u))), Struct_2(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(858f, -326f), _wgslsmith_f_op_f32(round(-499f)))), abs(func_2()), _wgslsmith_mult_vec2_u32(~global0[_wgslsmith_index_u32(global2.a.c.x, 26u)], countOneBits(vec2<u32>(global2.a.b.x, 4294967295u))), 1218f, vec2<i32>(arg_0.x, 1i) & global2.a.e), Struct_3(Struct_2(_wgslsmith_f_op_f32(global2.a.a - -1000f), ~global0[_wgslsmith_index_u32(15975u, 26u)], func_2(), _wgslsmith_f_op_f32(f32(-1f) * -160f), abs(vec2<i32>(u_input.c.x, 63710i))))));
    var_0 = Struct_3(Struct_2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(var_0.a.a, -568f, false)))))), global2.a.b, select(~_wgslsmith_div_vec2_u32(vec2<u32>(global2.a.c.x, var_0.a.c.x), var_0.a.c), ~(~vec2<u32>(1u, 0u)), vec2<bool>(false, true)), var_0.a.a, vec2<i32>(0i >> (~global2.a.b.x % 32u), abs(firstTrailingBit(-24910i)))));
    var var_1 = Struct_4(abs(~0i), _wgslsmith_mult_u32(var_0.a.c.x, ~var_0.a.c.x), var_0.a.b.x);
    var var_2 = Struct_1(_wgslsmith_sub_i32(var_1.a, arg_0.x), ~((58721u << (_wgslsmith_sub_u32(0u, var_1.b) % 32u)) & var_0.a.c.x), false, vec4<bool>(all(vec3<bool>(true, true, true)), true, true && (_wgslsmith_div_f32(var_0.a.a, 1426f) == -1000f), true));
    let var_3 = Struct_3(Struct_2(var_0.a.a, vec2<u32>(1u, _wgslsmith_dot_vec2_u32(~vec2<u32>(var_0.a.b.x, 4294967295u), _wgslsmith_add_vec2_u32(global0[_wgslsmith_index_u32(var_0.a.b.x, 26u)], vec2<u32>(var_1.b, 1u)))), global2.a.b, -453f, abs(global2.a.e)));
    return var_3;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<u32>, 26>();
    var var_0 = Struct_4(-_wgslsmith_add_i32(_wgslsmith_div_i32(~u_input.b.x, 2147483647i), _wgslsmith_dot_vec2_i32(u_input.c.wy, -global2.a.e)), 1236u, 1u);
    let var_1 = u_input.c.xzx;
    global2 = func_1(abs(u_input.c));
    let var_2 = Struct_4(1i, 1u, abs(func_1(_wgslsmith_clamp_vec4_i32(_wgslsmith_clamp_vec4_i32(u_input.c, vec4<i32>(global2.a.e.x, 6909i, u_input.c.x, 0i), u_input.c), vec4<i32>(var_1.x, var_0.a, 1i, var_0.a), ~vec4<i32>(global2.a.e.x, u_input.c.x, var_1.x, -1i))).a.c.x));
    var var_3 = Struct_2(global2.a.d, reverseBits(~select(vec2<u32>(4294967295u, var_2.b), ~vec2<u32>(var_0.c, 4294967295u), vec2<bool>(false, false))), global0[_wgslsmith_index_u32(~(~(~1u)), 26u)], _wgslsmith_f_op_f32(min(global2.a.d, global2.a.a)), vec2<i32>(_wgslsmith_add_i32(1i, firstTrailingBit(var_2.a)), func_4(_wgslsmith_mod_i32(2147483647i, ~var_1.x), func_1(u_input.c).a, Struct_3(Struct_2(global2.a.a, vec2<u32>(26191u, global2.a.c.x), vec2<u32>(var_2.c, 1u), -1078f, global2.a.e))).e.x));
    var_0 = Struct_4(0i, var_3.c.x, _wgslsmith_dot_vec3_u32(vec3<u32>(var_3.c.x, var_2.b, global2.a.c.x), firstTrailingBit(~vec3<u32>(24810u, 1u, var_0.c))));
    let x = u_input.a;
    s_output = StorageBuffer(417f, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-310f, -1645f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global2.a.a))), var_3.d)), var_1, vec2<i32>(_wgslsmith_clamp_i32(-19596i, -var_2.a, min(-1i, -1i)) << (_wgslsmith_div_u32(func_2().x, _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.b, global2.a.b.x, 0u, 35628u), vec4<u32>(23603u, 4294967295u, global2.a.b.x, 0u))) % 32u), select(-select(var_1.x, -2147483647i, false), _wgslsmith_dot_vec3_i32(var_1, ~vec3<i32>(var_1.x, 1i, var_3.e.x)), any(vec2<bool>(false, true)))));
}

