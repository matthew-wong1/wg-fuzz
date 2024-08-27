struct Struct_1 {
    a: f32,
    b: vec2<i32>,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(-757f, vec2<i32>(13842i, -6237i), vec3<u32>(0u, 12008u, 0u));

var<private> global1: vec3<f32>;

var<private> global2: array<Struct_1, 25> = array<Struct_1, 25>(Struct_1(202f, vec2<i32>(50972i, 0i), vec3<u32>(1u, 11110u, 1u)), Struct_1(-536f, vec2<i32>(1i, i32(-2147483648)), vec3<u32>(31102u, 1409u, 3492u)), Struct_1(1272f, vec2<i32>(-47400i, -7888i), vec3<u32>(47154u, 0u, 0u)), Struct_1(1470f, vec2<i32>(0i, 0i), vec3<u32>(0u, 2176u, 0u)), Struct_1(-866f, vec2<i32>(0i, 0i), vec3<u32>(1u, 18372u, 61262u)), Struct_1(339f, vec2<i32>(23087i, -1i), vec3<u32>(4294967295u, 0u, 2593u)), Struct_1(920f, vec2<i32>(20590i, 2147483647i), vec3<u32>(99496u, 30306u, 4294967295u)), Struct_1(-1000f, vec2<i32>(41196i, -5413i), vec3<u32>(66187u, 0u, 24273u)), Struct_1(-1042f, vec2<i32>(-21590i, 21807i), vec3<u32>(4294967295u, 8786u, 2682u)), Struct_1(-288f, vec2<i32>(2667i, 0i), vec3<u32>(20090u, 4294967295u, 41504u)), Struct_1(-277f, vec2<i32>(-5890i, 62576i), vec3<u32>(0u, 4294967295u, 18094u)), Struct_1(-1495f, vec2<i32>(10843i, 2147483647i), vec3<u32>(4294967295u, 26543u, 0u)), Struct_1(-931f, vec2<i32>(1i, i32(-2147483648)), vec3<u32>(16035u, 74780u, 3568u)), Struct_1(836f, vec2<i32>(65474i, 2147483647i), vec3<u32>(4294967295u, 82131u, 1u)), Struct_1(-984f, vec2<i32>(6129i, -37668i), vec3<u32>(41210u, 11828u, 37877u)), Struct_1(1317f, vec2<i32>(-1i, -29072i), vec3<u32>(4294967295u, 4294967295u, 1u)), Struct_1(-1486f, vec2<i32>(-49162i, 1i), vec3<u32>(0u, 44933u, 2721u)), Struct_1(1033f, vec2<i32>(-1i, -69195i), vec3<u32>(8172u, 0u, 0u)), Struct_1(-1130f, vec2<i32>(2147483647i, i32(-2147483648)), vec3<u32>(1u, 26517u, 1u)), Struct_1(-1032f, vec2<i32>(i32(-2147483648), 20047i), vec3<u32>(33398u, 1u, 21070u)), Struct_1(1888f, vec2<i32>(-1i, 1i), vec3<u32>(30007u, 77336u, 0u)), Struct_1(-295f, vec2<i32>(0i, i32(-2147483648)), vec3<u32>(4294967295u, 4294967295u, 1u)), Struct_1(2480f, vec2<i32>(0i, 32119i), vec3<u32>(1u, 11564u, 40555u)), Struct_1(-1047f, vec2<i32>(303i, 0i), vec3<u32>(57102u, 80761u, 19324u)), Struct_1(454f, vec2<i32>(0i, i32(-2147483648)), vec3<u32>(10887u, 19957u, 14389u)));

var<private> global3: vec3<u32> = vec3<u32>(1u, 1u, 1u);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> vec2<i32> {
    global1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-252f, -867f, 1675f))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(151f, -2868f, global1.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-836f, global0.a, 106f)), any(vec2<bool>(true, true)))))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a, _wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1557f, -155f, true))))), any(select(!select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), false), select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(false, false, false)), true), select(select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false)), vec3<bool>(true, true, true), vec3<bool>(true, true, true))))));
    return select(u_input.a.yz << (select(global0.c.yx, _wgslsmith_mod_vec2_u32(~global0.c.yz, global0.c.yx), select(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<bool>(true, false), all(vec2<bool>(true, false)))) % vec2<u32>(32u)), select(_wgslsmith_sub_vec2_i32(abs(vec2<i32>(0i, 0i)), global0.b), u_input.a.zy, false), true);
}

fn func_4(arg_0: Struct_1, arg_1: vec2<f32>) -> vec3<u32> {
    var var_0 = global2[_wgslsmith_index_u32(u_input.b, 25u)];
    var var_1 = global2[_wgslsmith_index_u32(~15893u, 25u)];
    var var_2 = ~(~var_1.c);
    var_2 = var_0.c;
    var var_3 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 1503f));
    return arg_0.c;
}

fn func_2(arg_0: f32, arg_1: Struct_1) -> Struct_1 {
    var var_0 = func_4(Struct_1(_wgslsmith_f_op_f32(399f + 390f), func_3(), vec3<u32>(4294967295u, ~arg_1.c.x, max(u_input.b, 60814u))), global1.xy) | _wgslsmith_sub_vec3_u32(arg_1.c, vec3<u32>(~_wgslsmith_add_u32(arg_1.c.x, 9251u), max(arg_1.c.x, 0u), reverseBits(_wgslsmith_sub_u32(4294967295u, u_input.b))));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.x), -1267f))), -vec2<i32>(global0.b.x, -(20844i & global0.b.x)), _wgslsmith_sub_vec3_u32(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 4294967295u, u_input.b, 4294967295u), vec4<u32>(9781u, 4294967295u, global3.x, global0.c.x)) << (arg_1.c.x % 32u), func_4(Struct_1(arg_0, global0.b, vec3<u32>(0u, global3.x, var_0.x)), vec2<f32>(561f, global1.x)).x, ~global0.c.x), vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, arg_1.c.x), _wgslsmith_mult_vec2_u32(global0.c.xz, vec2<u32>(global3.x, var_0.x))), ~var_0.x ^ _wgslsmith_sub_u32(u_input.b, 1u), 4294967295u)));
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -1032f);
    var var_3 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(arg_0))))), vec2<i32>((1i | _wgslsmith_mod_i32(12350i, global0.b.x)) << (_wgslsmith_dot_vec4_u32(~vec4<u32>(var_0.x, var_1.c.x, global0.c.x, u_input.b), ~vec4<u32>(global0.c.x, global3.x, 4294967295u, 4294967295u)) % 32u), _wgslsmith_dot_vec2_i32(vec2<i32>(min(-1i, -1i), u_input.a.x >> (global0.c.x % 32u)), vec2<i32>(firstTrailingBit(-31168i), global0.b.x))), vec3<u32>(~(~var_1.c.x), global3.x | var_0.x, _wgslsmith_mod_u32(58981u, 1u) << (~4294967295u % 32u)) >> ((vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, 36251u, 0u, 0u), vec4<u32>(75345u, var_1.c.x, var_1.c.x, 4294967295u)), 1u, _wgslsmith_dot_vec3_u32(global0.c, vec3<u32>(10312u, 50655u, global0.c.x))) | countOneBits(global0.c)) % vec3<u32>(32u)));
    global2 = array<Struct_1, 25>();
    return global2[_wgslsmith_index_u32(abs(67685u), 25u)];
}

fn func_1(arg_0: f32) -> StorageBuffer {
    let var_0 = global0.c.x << (global0.c.x % 32u);
    let var_1 = func_2(-2235f, Struct_1(global0.a, ~(-u_input.a.zz), ~vec3<u32>(~33759u, 1u, _wgslsmith_mod_u32(20249u, 101561u))));
    var var_2 = func_2(_wgslsmith_f_op_f32(var_1.a + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 * 1418f)) * 393f)), var_1);
    global2 = array<Struct_1, 25>();
    var var_3 = vec4<bool>(_wgslsmith_f_op_f32(f32(-1f) * -323f) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(global1.x)), _wgslsmith_f_op_f32(-global1.x))) - -835f), false, !(!(all(vec3<bool>(true, true, false)) || true)), _wgslsmith_div_f32(global0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-756f, 1885f)))) == -283f);
    return StorageBuffer(_wgslsmith_f_op_vec2_f32(sign(global1.yx)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(global0.a);
}

