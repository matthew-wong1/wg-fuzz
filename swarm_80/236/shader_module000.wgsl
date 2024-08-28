struct Struct_1 {
    a: u32,
    b: vec4<u32>,
    c: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: i32,
}

struct Struct_3 {
    a: vec3<i32>,
    b: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec3<i32>(-13349i, 1i, -1i), i32(-2147483648));

var<private> global1: array<vec3<f32>, 19> = array<vec3<f32>, 19>(vec3<f32>(-684f, -833f, -620f), vec3<f32>(-414f, 1421f, -207f), vec3<f32>(-1768f, -1976f, -1000f), vec3<f32>(-1000f, -350f, 311f), vec3<f32>(128f, -628f, 806f), vec3<f32>(490f, 309f, 1630f), vec3<f32>(768f, -568f, 350f), vec3<f32>(-523f, 1000f, 167f), vec3<f32>(283f, -439f, 1071f), vec3<f32>(-131f, -1344f, -1161f), vec3<f32>(447f, -707f, -731f), vec3<f32>(-1601f, -1185f, -267f), vec3<f32>(1392f, -1000f, -508f), vec3<f32>(550f, -1741f, -648f), vec3<f32>(-841f, 113f, -440f), vec3<f32>(-1203f, -1796f, -1473f), vec3<f32>(105f, 600f, 1138f), vec3<f32>(593f, -429f, 899f), vec3<f32>(1116f, 101f, -1000f));

var<private> global2: vec3<u32> = vec3<u32>(62164u, 0u, 18813u);

var<private> global3: array<Struct_3, 24>;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
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

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: f32, arg_1: vec4<f32>, arg_2: vec3<i32>, arg_3: Struct_2) -> u32 {
    var var_0 = -2147483647i;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(trunc(arg_0))))) + arg_1.x);
    var_0 = 4430i;
    var_0 = u_input.c;
    var_0 = -(~(_wgslsmith_add_i32(max(arg_2.x, 25481i), arg_3.d) >> (u_input.a.x % 32u)));
    return global2.x;
}

fn func_2(arg_0: vec4<f32>, arg_1: vec3<u32>) -> vec4<u32> {
    global1 = array<vec3<f32>, 19>();
    global1 = array<vec3<f32>, 19>();
    let var_0 = abs(global0.a.yy);
    let var_1 = Struct_2(Struct_1(arg_1.x, vec4<u32>(_wgslsmith_dot_vec2_u32(select(vec2<u32>(arg_1.x, u_input.a.x), vec2<u32>(global2.x, global2.x), vec2<bool>(false, false)), _wgslsmith_mult_vec2_u32(vec2<u32>(133243u, arg_1.x), u_input.d.zy)), _wgslsmith_clamp_u32(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(26589u, 15964u, 477u), vec3<u32>(u_input.d.x, u_input.b, 1u)), func_3(-424f, vec4<f32>(arg_0.x, -775f, 612f, arg_0.x), global0.a, Struct_2(Struct_1(0u, vec4<u32>(57492u, global2.x, 30250u, arg_1.x), vec4<u32>(38286u, global2.x, 0u, global2.x)), Struct_1(48532u, vec4<u32>(0u, global2.x, arg_1.x, 32212u), vec4<u32>(52098u, 1u, 0u, 97853u)), Struct_1(arg_1.x, vec4<u32>(arg_1.x, 4294967295u, u_input.a.x, 1u), vec4<u32>(20796u, global2.x, global2.x, 14647u)), -25083i))), arg_1.x, u_input.d.x), countOneBits(max(_wgslsmith_mult_vec4_u32(vec4<u32>(global2.x, arg_1.x, global2.x, 76283u), vec4<u32>(39284u, 33683u, u_input.d.x, 0u)), vec4<u32>(70767u, 65675u, u_input.b, global2.x)))), Struct_1(47929u, (vec4<u32>(u_input.d.x, global2.x, u_input.b, 1u) >> (~vec4<u32>(arg_1.x, 4294967295u, arg_1.x, 20229u) % vec4<u32>(32u))) >> (select(vec4<u32>(57835u, 0u, 41775u, 62535u), firstTrailingBit(vec4<u32>(4294967295u, 4294967295u, arg_1.x, arg_1.x)), true) % vec4<u32>(32u)), abs(abs(abs(vec4<u32>(global2.x, 0u, u_input.d.x, arg_1.x))))), Struct_1(~_wgslsmith_clamp_u32(0u, u_input.b, _wgslsmith_mod_u32(arg_1.x, 84643u)), _wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(12584u, 28277u, 4294967295u, 9821u), vec4<u32>(1u, 22117u, 4294967295u, 1u)), ~vec4<u32>(1u, 0u, 0u, global2.x)) & _wgslsmith_div_vec4_u32(vec4<u32>(20433u, arg_1.x, u_input.b, 1u) ^ vec4<u32>(41930u, 0u, 1u, u_input.d.x), vec4<u32>(arg_1.x, 87679u, u_input.b, 30321u)), vec4<u32>(arg_1.x, _wgslsmith_div_u32(global2.x & 3795u, ~u_input.b), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 12742u, 95333u), ~arg_1), _wgslsmith_sub_u32(78441u, global2.x) ^ 42473u)), u_input.c);
    var var_2 = Struct_3(countOneBits(global0.a), 16534i);
    return var_1.a.b;
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: vec2<i32>, arg_3: vec4<bool>) -> Struct_2 {
    var var_0 = vec2<bool>(!any(vec3<bool>(false, arg_3.x, true)), arg_3.x);
    var var_1 = Struct_3(vec3<i32>(-arg_2.x, ~31572i, global0.b), -1i);
    var var_2 = Struct_2(arg_1.a, Struct_1(u_input.d.x, firstTrailingBit(_wgslsmith_sub_vec4_u32(arg_1.c.b, ~arg_1.a.b)), _wgslsmith_mod_vec4_u32(vec4<u32>(~5984u, u_input.b, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.c.a, 4294967295u, global2.x), arg_1.c.c.xzw), arg_1.b.b.x ^ global2.x), _wgslsmith_mod_vec4_u32(vec4<u32>(arg_1.a.c.x, arg_1.a.c.x, arg_1.b.a, 37811u), arg_1.a.b))), Struct_1(~(~103263u), _wgslsmith_mod_vec4_u32(vec4<u32>(_wgslsmith_add_u32(arg_1.c.a, 1u), firstTrailingBit(u_input.b), _wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.a.c.x, u_input.b), vec2<u32>(global2.x, arg_1.b.b.x)), 9665u), vec4<u32>(u_input.d.x, 1u, 4294967295u, ~u_input.a.x)), arg_1.b.b), -2147483647i);
    global0 = Struct_3(vec3<i32>(_wgslsmith_mod_i32(countOneBits(-16181i), 64263i), i32(-1i) * -16414i, arg_1.d), _wgslsmith_add_i32(-_wgslsmith_add_i32(global0.b, arg_1.d ^ 3099i), 32407i));
    global0 = Struct_3(global0.a, _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_div_i32(-var_2.d, -u_input.c), firstLeadingBit(-2147483647i), -1i, var_1.b), abs(-vec4<i32>(var_2.d, -2147483647i, u_input.c, 21377i))));
    return arg_1;
}

fn func_1(arg_0: Struct_1, arg_1: u32, arg_2: f32, arg_3: f32) -> i32 {
    let var_0 = global2.x << (~45240u % 32u);
    let var_1 = func_4(global1[_wgslsmith_index_u32(~0u << (var_0 % 32u), 19u)], Struct_2(Struct_1(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, global2.x), vec2<u32>(4294967295u, 1u)), func_2(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_2, -1467f, arg_2, arg_3))), vec3<u32>(4294967295u, 4294967295u, 84760u)), vec4<u32>(4294967295u, var_0, arg_0.b.x, 47058u) | min(vec4<u32>(0u, 0u, u_input.a.x, u_input.d.x), arg_0.b)), arg_0, Struct_1(~firstTrailingBit(5957u), select(vec4<u32>(1u, 1u, 72412u, u_input.b), _wgslsmith_mod_vec4_u32(arg_0.c, arg_0.c), vec4<bool>(true, true, true, true)), ~arg_0.c), _wgslsmith_dot_vec2_i32(abs(global0.a.yy), -vec2<i32>(15168i, 16877i))), vec2<i32>(u_input.c, i32(-1i) * -(~u_input.c)), !select(vec4<bool>(1u < arg_0.c.x, any(vec3<bool>(false, false, false)), false, all(vec2<bool>(true, true))), vec4<bool>(true, true, true, true), !select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, true), false)));
    return select(i32(-1i) * -20413i, 13096i, any(vec3<bool>(true, true, any(vec4<bool>(true, true, true, true))))) | ((global0.b >> (1u % 32u)) ^ ~u_input.c);
}

fn func_5(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: u32) -> Struct_3 {
    global3 = array<Struct_3, 24>();
    let var_0 = -firstLeadingBit(-1i) << (arg_2 % 32u);
    let var_1 = select(vec4<bool>(all(select(vec4<bool>(false, false, false, true), select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false), true), vec4<bool>(false, false, true, false))), any(vec2<bool>(true, true)), any(select(select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true), true), vec4<bool>(true, true, true, true), true)), true), vec4<bool>(true, !any(select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, true), false)), true, true), !vec4<bool>(false, 11389u != (arg_1.b.b.x >> (0u % 32u)), false, true));
    let var_2 = vec4<bool>(!(select(var_1.x, true, !var_1.x) & true), var_1.x, all(!(!select(var_1, var_1, var_1))), false);
    var var_3 = arg_0.x;
    return Struct_3(vec3<i32>(i32(-1i) * -arg_0.x, -global0.b, -7862i) ^ arg_0.yyy, u_input.c);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec3<f32>, 19>();
    var var_0 = func_5(vec4<i32>(~(i32(-1i) * -10730i), ~(4274i & u_input.c), _wgslsmith_sub_i32(func_1(Struct_1(53285u, vec4<u32>(1u, u_input.a.x, 21834u, u_input.a.x), vec4<u32>(u_input.a.x, 1u, 27261u, global2.x)), global2.x, 592f, 2512f), -8927i), u_input.c) | -select(~vec4<i32>(global0.a.x, -2147483647i, 37964i, global0.b), -vec4<i32>(4988i, global0.a.x, u_input.c, 35389i), select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), true)), Struct_2(func_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1115f, -977f, -199f)), Struct_2(Struct_1(global2.x, vec4<u32>(17721u, 0u, global2.x, 3828u), vec4<u32>(u_input.b, global2.x, u_input.b, global2.x)), func_4(global1[_wgslsmith_index_u32(1u, 19u)], Struct_2(Struct_1(59684u, vec4<u32>(global2.x, 12972u, u_input.a.x, u_input.b), vec4<u32>(4294967295u, global2.x, global2.x, u_input.b)), Struct_1(global2.x, vec4<u32>(u_input.b, 4294967295u, 9905u, global2.x), vec4<u32>(u_input.d.x, global2.x, global2.x, 1u)), Struct_1(0u, vec4<u32>(0u, global2.x, 74644u, global2.x), vec4<u32>(4294967295u, global2.x, global2.x, u_input.d.x)), -5636i), vec2<i32>(1i, u_input.c), vec4<bool>(false, false, false, false)).c, func_4(global1[_wgslsmith_index_u32(u_input.a.x, 19u)], Struct_2(Struct_1(27271u, vec4<u32>(1u, 55152u, 1135u, 4294967295u), vec4<u32>(u_input.d.x, global2.x, 37177u, global2.x)), Struct_1(0u, vec4<u32>(0u, 6926u, global2.x, 4294967295u), vec4<u32>(1u, 1u, global2.x, global2.x)), Struct_1(25192u, vec4<u32>(global2.x, 63148u, global2.x, 1125u), vec4<u32>(global2.x, u_input.d.x, 1u, global2.x)), 46609i), global0.a.xx, vec4<bool>(false, true, true, true)).c, u_input.c << (global2.x % 32u)), global0.a.yy, select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), true), vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, false))).c, func_4(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(exp2(global1[_wgslsmith_index_u32(global2.x, 19u)])), global1[_wgslsmith_index_u32(3096u, 19u)])), func_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1155f, -838f, -1292f)), func_4(vec3<f32>(313f, -1009f, -2152f), Struct_2(Struct_1(4294967295u, vec4<u32>(global2.x, 86578u, 58358u, global2.x), vec4<u32>(u_input.b, 0u, global2.x, 28823u)), Struct_1(u_input.a.x, vec4<u32>(global2.x, 95531u, global2.x, global2.x), vec4<u32>(global2.x, 8139u, 12362u, u_input.a.x)), Struct_1(1u, vec4<u32>(u_input.d.x, global2.x, 4294967295u, global2.x), vec4<u32>(u_input.a.x, 108830u, u_input.b, 90378u)), -59742i), vec2<i32>(u_input.c, 10261i), vec4<bool>(false, false, true, true)), ~global0.a.zz, vec4<bool>(true, false, false, false)), firstTrailingBit(~vec2<i32>(1i, u_input.c)), vec4<bool>(true, 4294967295u >= u_input.d.x, all(vec2<bool>(false, true)), all(vec2<bool>(false, true)))).c, Struct_1(u_input.b, countOneBits(~vec4<u32>(global2.x, 37654u, global2.x, 4294967295u)), vec4<u32>(reverseBits(1u), ~4294967295u, 35079u, 1u)), abs(_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, u_input.c, u_input.c), vec3<i32>(-42630i, -53206i, u_input.c)), global0.a.x))), min(min(global2.x, min(_wgslsmith_sub_u32(u_input.b, 6207u), 0u)), 15740u));
    let var_1 = Struct_2(Struct_1(24085u, vec4<u32>(123892u, global2.x, _wgslsmith_sub_u32(1u, 0u) | _wgslsmith_div_u32(11985u, u_input.b), 13722u), ~vec4<u32>(1u, _wgslsmith_mult_u32(u_input.a.x, global2.x), u_input.d.x, 0u)), Struct_1(38188u, vec4<u32>(func_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1166f, -167f, 967f, -346f) * vec4<f32>(268f, 819f, -380f, -1500f)), _wgslsmith_add_vec3_u32(u_input.d, u_input.d)).x, _wgslsmith_clamp_u32(reverseBits(0u), 1u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, global2.x, u_input.a.x, 36400u), vec4<u32>(u_input.a.x, u_input.b, global2.x, u_input.a.x))), 59357u, 51554u), _wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.a.x, global2.x, 4294967295u, 60962u), ~(~vec4<u32>(u_input.a.x, u_input.a.x, global2.x, global2.x)))), func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 408f, -1537f) + _wgslsmith_div_vec3_f32(vec3<f32>(421f, -226f, 435f), global1[_wgslsmith_index_u32(u_input.b, 19u)])) * global1[_wgslsmith_index_u32(~(~u_input.d.x), 19u)]), func_4(vec3<f32>(839f, -812f, _wgslsmith_f_op_f32(select(-297f, 721f, true))), func_4(_wgslsmith_f_op_vec3_f32(abs(global1[_wgslsmith_index_u32(u_input.b, 19u)])), func_4(global1[_wgslsmith_index_u32(0u, 19u)], Struct_2(Struct_1(global2.x, vec4<u32>(global2.x, u_input.d.x, 2264u, 4294967295u), vec4<u32>(1u, global2.x, global2.x, global2.x)), Struct_1(global2.x, vec4<u32>(10959u, 74440u, 69283u, global2.x), vec4<u32>(global2.x, 4110u, u_input.a.x, 71508u)), Struct_1(4294967295u, vec4<u32>(global2.x, 16267u, 28826u, 73650u), vec4<u32>(1u, global2.x, global2.x, 0u)), global0.a.x), vec2<i32>(u_input.c, u_input.c), vec4<bool>(false, true, false, true)), vec2<i32>(var_0.a.x, var_0.b), select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, false))), global0.a.zx & var_0.a.zz, vec4<bool>(true, true, true, true)), min(_wgslsmith_mod_vec2_i32(var_0.a.zz, -var_0.a.xy), vec2<i32>(_wgslsmith_div_i32(1i, global0.a.x), global0.b)), vec4<bool>(all(select(vec2<bool>(false, false), vec2<bool>(true, true), false)), true, false, all(vec2<bool>(true, true)))).c, _wgslsmith_clamp_i32(reverseBits(func_1(Struct_1(u_input.a.x, vec4<u32>(4294967295u, global2.x, u_input.a.x, 43849u), vec4<u32>(global2.x, 22554u, global2.x, u_input.b)), global2.x, _wgslsmith_f_op_f32(select(-466f, 1726f, true)), -694f)), func_4(vec3<f32>(_wgslsmith_f_op_f32(min(-1603f, -306f)), -198f, _wgslsmith_div_f32(-381f, 3157f)), func_4(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-128f, 1000f, 710f), vec3<f32>(1393f, -528f, -1725f), false)), Struct_2(Struct_1(3535u, vec4<u32>(u_input.d.x, u_input.d.x, 1u, u_input.a.x), vec4<u32>(u_input.a.x, global2.x, global2.x, 1u)), Struct_1(16119u, vec4<u32>(0u, 1u, u_input.d.x, 4294967295u), vec4<u32>(u_input.b, global2.x, u_input.b, 88191u)), Struct_1(20921u, vec4<u32>(1u, 26420u, 32518u, u_input.b), vec4<u32>(88534u, 56447u, 18856u, 4294967295u)), var_0.b), vec2<i32>(u_input.c, u_input.c), select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, false))), vec2<i32>(_wgslsmith_sub_i32(652i, u_input.c), global0.a.x), vec4<bool>(true, any(vec2<bool>(false, false)), true, true)).d, var_0.a.x));
    global3 = array<Struct_3, 24>();
    var var_2 = ~var_1.b.c.x;
    let var_3 = vec4<bool>(all(select(vec3<bool>(true, any(vec4<bool>(false, false, false, true)), true), select(select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), false), vec3<bool>(true, true, true), vec3<bool>(false, true, false)), var_1.d <= global0.a.x)), _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(var_0.a.yz, firstLeadingBit(global0.a.zx)), var_0.a.yz) <= 54105i, false, func_4(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-288f, -251f, -1000f), _wgslsmith_f_op_vec3_f32(vec3<f32>(1406f, -2149f, 860f) + global1[_wgslsmith_index_u32(4294967295u, 19u)]))), Struct_2(func_4(global1[_wgslsmith_index_u32(u_input.d.x, 19u)], Struct_2(var_1.b, Struct_1(global2.x, var_1.a.c, var_1.c.b), Struct_1(11916u, var_1.c.b, var_1.a.b), 1i), var_0.a.yx, vec4<bool>(true, true, false, true)).b, var_1.c, Struct_1(65552u, var_1.c.c, vec4<u32>(4294967295u, 1u, u_input.b, 0u)), _wgslsmith_mod_i32(2147483647i, var_1.d)), -max(vec2<i32>(var_0.b, 0i), vec2<i32>(var_0.b, global0.a.x)), select(select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, true), true), select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, true), true), vec4<bool>(false, false, false, true))).b.c.x >= u_input.b);
    let var_4 = firstTrailingBit(vec3<i32>(~1i, -17801i, _wgslsmith_mult_i32(func_5(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.c, 59803i, var_1.d, 1i), vec4<i32>(var_1.d, var_0.a.x, var_0.b, 4884i), vec4<i32>(38471i, var_0.a.x, global0.b, var_0.a.x)), var_1, func_4(vec3<f32>(-1208f, -907f, -999f), Struct_2(var_1.b, Struct_1(34427u, vec4<u32>(var_1.a.b.x, global2.x, u_input.d.x, 47701u), vec4<u32>(u_input.a.x, u_input.b, 31505u, var_1.a.a)), var_1.a, -1i), vec2<i32>(2147483647i, global0.b), vec4<bool>(var_3.x, true, true, var_3.x)).a.b.x).b, countOneBits(-var_0.a.x))));
    global1 = array<vec3<f32>, 19>();
    global3 = array<Struct_3, 24>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2922f), -367f, -1023f, 501f) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(654f, -1947f, -2069f, -694f)))))));
}

