struct Struct_1 {
    a: vec2<u32>,
    b: f32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: bool,
    c: vec2<u32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 2>;

var<private> global1: i32;

var<private> global2: Struct_1 = Struct_1(vec2<u32>(136644u, 17710u), 163f);

var<private> global3: array<vec2<i32>, 30> = array<vec2<i32>, 30>(vec2<i32>(31309i, 25546i), vec2<i32>(-1i, 32185i), vec2<i32>(20502i, 14010i), vec2<i32>(-1i, -1i), vec2<i32>(-48253i, 0i), vec2<i32>(2147483647i, -33533i), vec2<i32>(-19197i, 1i), vec2<i32>(-864i, -17830i), vec2<i32>(-1i, 22848i), vec2<i32>(1i, -22293i), vec2<i32>(-3171i, -63215i), vec2<i32>(25769i, 5991i), vec2<i32>(i32(-2147483648), -20522i), vec2<i32>(12963i, -1i), vec2<i32>(i32(-2147483648), 1i), vec2<i32>(9355i, -25109i), vec2<i32>(15338i, 4476i), vec2<i32>(-7129i, 1i), vec2<i32>(-3079i, -9911i), vec2<i32>(2147483647i, 4589i), vec2<i32>(-11362i, -78440i), vec2<i32>(1i, 1i), vec2<i32>(i32(-2147483648), 0i), vec2<i32>(28640i, 39688i), vec2<i32>(-8426i, 2147483647i), vec2<i32>(63105i, 9748i), vec2<i32>(-18834i, -1i), vec2<i32>(-25307i, 1i), vec2<i32>(20151i, 2147483647i), vec2<i32>(-52692i, -3842i));

var<private> global4: Struct_2 = Struct_2(vec4<i32>(-36130i, -23278i, 2147483647i, -13142i), true, vec2<u32>(0u, 33359u), Struct_1(vec2<u32>(1u, 4089u), 1670f));

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> u32 {
    var var_0 = -_wgslsmith_sub_i32(-10569i, _wgslsmith_dot_vec4_i32(global4.a ^ vec4<i32>(global4.a.x, -1970i, global4.a.x, -2147483647i), abs(vec4<i32>(2147483647i, global4.a.x, global4.a.x, global4.a.x)))) != countOneBits(abs(2147483647i));
    var var_1 = _wgslsmith_f_op_f32(-1156f * -389f);
    var_1 = _wgslsmith_div_f32(358f, _wgslsmith_f_op_f32(select(global4.d.b, -880f, any(select(vec4<bool>(true, true, global4.b, global4.b), select(vec4<bool>(false, global4.b, global4.b, global4.b), vec4<bool>(true, global4.b, false, true), true), !vec4<bool>(global4.b, false, false, global4.b))))));
    var var_2 = Struct_2(vec4<i32>(min(-34473i, -global4.a.x ^ global4.a.x), firstLeadingBit(_wgslsmith_sub_i32(1i, 1i)), -1i, global4.a.x), all(!(!select(vec4<bool>(global4.b, false, global4.b, true), vec4<bool>(global4.b, false, global4.b, global4.b), global4.b))), global4.d.a, Struct_1(_wgslsmith_div_vec2_u32(select(abs(vec2<u32>(global0[_wgslsmith_index_u32(global2.a.x, 2u)], 4294967295u)), ~vec2<u32>(global2.a.x, u_input.a.x), global2.b == global2.b), _wgslsmith_add_vec2_u32(u_input.a.xx, ~u_input.a.xx)), global4.d.b));
    var var_3 = var_2.d.a.x < ~(~abs(max(global4.c.x, 4294967295u)));
    return ~global2.a.x;
}

fn func_2(arg_0: vec2<i32>) -> u32 {
    var var_0 = _wgslsmith_mult_u32(min(func_3(), u_input.b), ~1u);
    var var_1 = global2.b;
    var var_2 = select(vec2<bool>(!(!any(vec4<bool>(global4.b, global4.b, global4.b, global4.b))), global4.b), !select(!vec2<bool>(false, global4.b), vec2<bool>(all(vec4<bool>(false, global4.b, global4.b, true)), true), !(u_input.b <= global4.d.a.x)), true);
    let var_3 = arg_0.x;
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(700f - 701f)))))));
    return global0[_wgslsmith_index_u32(~(_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(~global2.a.x, 2u)], _wgslsmith_dot_vec2_u32(global2.a, u_input.a.zz)) >> (_wgslsmith_mult_u32(1u, global4.c.x) % 32u)), 2u)] | _wgslsmith_clamp_u32(firstTrailingBit(~0u) & _wgslsmith_mult_u32(4294967295u, global0[_wgslsmith_index_u32(~global2.a.x, 2u)]), _wgslsmith_div_u32(53713u, min(abs(44473u), global0[_wgslsmith_index_u32(~36685u, 2u)])), ~global4.c.x | 23626u);
}

fn func_4(arg_0: u32, arg_1: vec4<u32>, arg_2: vec2<bool>, arg_3: i32) -> Struct_2 {
    global3 = array<vec2<i32>, 30>();
    let var_0 = Struct_1(u_input.a.xz, _wgslsmith_f_op_f32(step(-830f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(532f * 455f), -1000f)), -480f))));
    var var_1 = Struct_2(global4.a, global4.b, ~reverseBits(global2.a), var_0);
    var var_2 = Struct_2(~(countOneBits(vec4<i32>(var_1.a.x, global4.a.x, -69036i, arg_3)) & abs(vec4<i32>(var_1.a.x, -61219i, 2147483647i, arg_3))), select(!var_1.b, any(select(arg_2, arg_2, select(arg_2, vec2<bool>(arg_2.x, var_1.b), true))), select(true, true, !var_1.b)), abs(~min(u_input.a.xx, firstLeadingBit(vec2<u32>(global0[_wgslsmith_index_u32(1u, 2u)], arg_1.x)))), var_1.d);
    let var_3 = Struct_2(abs((vec4<i32>(arg_3, -2147483647i, arg_3, -1807i) >> (~arg_1 % vec4<u32>(32u))) << (_wgslsmith_add_vec4_u32(min(vec4<u32>(32426u, 1u, 51997u, global2.a.x), arg_1), _wgslsmith_clamp_vec4_u32(vec4<u32>(var_2.d.a.x, global4.c.x, global4.d.a.x, 23396u), vec4<u32>(32513u, 1u, var_0.a.x, 0u), vec4<u32>(24824u, arg_0, 1u, arg_1.x))) % vec4<u32>(32u))), var_1.b && global4.b, abs(_wgslsmith_mult_vec2_u32(var_0.a, vec2<u32>(4294967295u, arg_0))) | _wgslsmith_mod_vec2_u32(vec2<u32>(var_1.d.a.x, global4.c.x), ~_wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, var_1.d.a.x), var_2.d.a)), var_0);
    return var_3;
}

fn func_5(arg_0: Struct_2, arg_1: bool, arg_2: f32) -> Struct_1 {
    let var_0 = Struct_2(select(vec4<i32>(arg_0.a.x, -19003i, arg_0.a.x, -2147483647i), -(firstTrailingBit(vec4<i32>(2147483647i, arg_0.a.x, global4.a.x, global4.a.x)) | -arg_0.a), global4.d.a.x < ~_wgslsmith_sub_u32(490u, 1u)), arg_1, ~_wgslsmith_clamp_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(arg_0.c.x, 2u)], 1u), _wgslsmith_div_vec2_u32(global4.d.a, global4.d.a) ^ ~global2.a, vec2<u32>(countOneBits(71766u), u_input.b)), func_4(global2.a.x, ~_wgslsmith_sub_vec4_u32(vec4<u32>(arg_0.c.x, 0u, 14337u, 4294967295u) << (vec4<u32>(0u, 51008u, u_input.a.x, global0[_wgslsmith_index_u32(46262u, 2u)]) % vec4<u32>(32u)), vec4<u32>(34578u, 7585u, arg_0.d.a.x, global0[_wgslsmith_index_u32(46819u, 2u)])), select(!vec2<bool>(arg_1, true), select(!vec2<bool>(arg_0.b, arg_1), vec2<bool>(arg_0.b, false), !vec2<bool>(true, arg_0.b)), !select(false, global4.b, arg_1)), -arg_0.a.x | global4.a.x).d);
    let var_1 = global4.a.zz;
    var var_2 = Struct_1(~_wgslsmith_add_vec2_u32(select(arg_0.d.a, global2.a, true) & var_0.c, ~vec2<u32>(83664u, 2096u)), _wgslsmith_f_op_f32(-global4.d.b));
    let var_3 = 2147483647i;
    global2 = var_0.d;
    return Struct_1(vec2<u32>(28721u, var_0.d.a.x), _wgslsmith_f_op_f32(var_0.d.b + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.b) * _wgslsmith_f_op_f32(sign(-331f)))))));
}

fn func_1(arg_0: i32) -> i32 {
    let var_0 = Struct_2(global4.a, true, ~vec2<u32>(global4.d.a.x, ~44070u), func_5(func_4(_wgslsmith_dot_vec2_u32(abs(vec2<u32>(global0[_wgslsmith_index_u32(global2.a.x, 2u)], global0[_wgslsmith_index_u32(global2.a.x, 2u)])), global4.d.a), vec4<u32>(global4.c.x & 1288u, func_2(vec2<i32>(arg_0, global4.a.x)), ~48319u, ~u_input.a.x), !(!vec2<bool>(global4.b, true)), _wgslsmith_add_i32(15824i, -11293i)), global4.b, -269f));
    global0 = array<u32, 2>();
    let var_1 = ~0u;
    let var_2 = select(!(!(!(!vec3<bool>(var_0.b, var_0.b, true)))), vec3<bool>(any(vec2<bool>(var_0.b, false)) | func_4(4294967295u, _wgslsmith_clamp_vec4_u32(vec4<u32>(global4.c.x, u_input.b, 1u, global2.a.x), vec4<u32>(3402u, 0u, 4294967295u, 32622u), vec4<u32>(u_input.a.x, var_1, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 2u)], 2u)], 0u)), vec2<bool>(global4.b, false), var_0.a.x).b, !(!(!var_0.b)), false), false);
    let var_3 = _wgslsmith_mod_vec4_i32(select(var_0.a, ~vec4<i32>(1163i, max(-2147483647i, arg_0), _wgslsmith_mod_i32(1i, arg_0), arg_0 & 1i), !(!vec4<bool>(var_2.x, true, var_0.b, false))), (abs(-global4.a) & _wgslsmith_mult_vec4_i32(vec4<i32>(global4.a.x, global4.a.x, arg_0, 0i) << (vec4<u32>(1u, global4.c.x, var_0.c.x, global2.a.x) % vec4<u32>(32u)), vec4<i32>(2147483647i, arg_0, 2147483647i, -3842i))) | -vec4<i32>(global4.a.x, arg_0, ~0i, 1i));
    return 0i;
}

fn func_6(arg_0: vec4<i32>) -> Struct_1 {
    global4 = func_4(abs(~(~global0[_wgslsmith_index_u32(global4.c.x, 2u)] >> (_wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(11410u, 2u)], u_input.b, u_input.a.x) % 32u))), ~(~vec4<u32>(u_input.b, 0u, 735u, 1u) | ~_wgslsmith_div_vec4_u32(vec4<u32>(global4.c.x, 66171u, u_input.b, 22510u), vec4<u32>(1u, 39327u, global0[_wgslsmith_index_u32(u_input.b, 2u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global2.a.x, 2u)], 2u)], 2u)]))), !select(vec2<bool>(global4.b, any(vec4<bool>(false, global4.b, true, true))), vec2<bool>(any(vec4<bool>(global4.b, false, global4.b, true)), false), vec2<bool>(true, global4.b && global4.b)), arg_0.x);
    let var_0 = vec2<bool>(false, global4.b);
    let var_1 = _wgslsmith_sub_i32(19204i, _wgslsmith_div_i32(arg_0.x, select(0i, arg_0.x, global4.b)));
    global1 = _wgslsmith_sub_i32(i32(-1i) * -2147483647i, firstLeadingBit(36675i));
    global1 = -2147483647i;
    return func_4(min(~1u, ~max(~4294967295u, global2.a.x)), ~firstLeadingBit(countOneBits(_wgslsmith_clamp_vec4_u32(vec4<u32>(global4.d.a.x, 4294967295u, u_input.a.x, 94968u), vec4<u32>(0u, 33842u, 72590u, 1u), vec4<u32>(92994u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(78655u, 2u)], 2u)], global4.d.a.x, global4.c.x)))), select(select(select(var_0, var_0, var_0), vec2<bool>(true, func_4(0u, vec4<u32>(2683u, global2.a.x, 4294967295u, 4294967295u), var_0, -39261i).b), false), vec2<bool>(global4.b, all(!vec3<bool>(global4.b, var_0.x, true))), vec2<bool>(true, _wgslsmith_f_op_f32(f32(-1f) * -573f) >= global2.b)), -14740i).d;
}

fn func_7(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_2) -> Struct_2 {
    global0 = array<u32, 2>();
    let var_0 = ~_wgslsmith_sub_u32(~arg_0.a.x << (34969u % 32u), 12676u);
    let var_1 = -_wgslsmith_mult_i32(1i, ~_wgslsmith_mult_i32(global4.a.x, _wgslsmith_sub_i32(global4.a.x, arg_2.a.x)));
    let var_2 = all(!vec2<bool>(true, global4.b));
    global0 = array<u32, 2>();
    return Struct_2(arg_2.a, global4.b, arg_1.a, arg_1);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_7(func_6(select(reverseBits(-vec4<i32>(global4.a.x, global4.a.x, global4.a.x, 2147483647i)), vec4<i32>(-16868i, func_1(-90592i), ~global4.a.x, 1i ^ global4.a.x), vec4<bool>(global4.b, !global4.b, !global4.b, true))), func_6(-(~global4.a)), func_4(global4.d.a.x, abs(vec4<u32>(global0[_wgslsmith_index_u32(0u, 2u)], global0[_wgslsmith_index_u32(17755u, 2u)], 37442u, ~global2.a.x)), !vec2<bool>(global4.d.b < 257f, true), global4.a.x));
    global4 = func_4(func_4(min(4294967295u, max(~global4.d.a.x, _wgslsmith_add_u32(107520u, global4.d.a.x))), vec4<u32>(40873u, global4.d.a.x, u_input.b ^ _wgslsmith_mult_u32(global4.c.x, global0[_wgslsmith_index_u32(var_0.c.x, 2u)]), 4294967295u), vec2<bool>(global4.b, var_0.b), 13945i ^ var_0.a.x).c.x, reverseBits(abs(min(~vec4<u32>(0u, 1u, 4294967295u, var_0.c.x), _wgslsmith_mult_vec4_u32(vec4<u32>(global2.a.x, 1u, 81369u, 0u), vec4<u32>(4294967295u, 43254u, 0u, global0[_wgslsmith_index_u32(24339u, 2u)]))))), select(select(!select(vec2<bool>(false, false), vec2<bool>(false, var_0.b), false), vec2<bool>(global4.b, false), any(vec4<bool>(true, global4.b, true, false))), vec2<bool>(~global4.d.a.x <= ~var_0.c.x, global4.b | true), true), _wgslsmith_mult_i32(_wgslsmith_mult_i32(var_0.a.x, _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.a.x, -64612i, global4.a.x), var_0.a.zwz)), global4.a.x));
    let var_1 = func_4(0u, abs(~_wgslsmith_clamp_vec4_u32(~vec4<u32>(u_input.b, global2.a.x, 0u, var_0.d.a.x), select(vec4<u32>(global2.a.x, global0[_wgslsmith_index_u32(5659u, 2u)], global4.c.x, var_0.d.a.x), vec4<u32>(18504u, 0u, 7975u, 4294967295u), vec4<bool>(var_0.b, true, var_0.b, var_0.b)), vec4<u32>(32512u, 18193u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global2.a.x, 2u)], 2u)], u_input.b))), !select(select(vec2<bool>(true, true), select(vec2<bool>(var_0.b, global4.b), vec2<bool>(var_0.b, global4.b), var_0.b), vec2<bool>(false, var_0.b)), !(!vec2<bool>(global4.b, var_0.b)), true), -25554i).a.ww;
    let var_2 = true;
    var var_3 = var_0.d;
    global4 = func_7(var_0.d, Struct_1(_wgslsmith_sub_vec2_u32(vec2<u32>(global2.a.x, func_2(vec2<i32>(-2147483647i, var_1.x))), var_3.a), var_3.b), func_4(global0[_wgslsmith_index_u32(~(~_wgslsmith_sub_u32(39203u, global2.a.x)), 2u)], vec4<u32>(countOneBits(25313u), _wgslsmith_sub_u32(global4.d.a.x, var_0.c.x), 4294967295u, var_0.d.a.x) >> (min(vec4<u32>(30538u, global0[_wgslsmith_index_u32(u_input.a.x, 2u)], global0[_wgslsmith_index_u32(4294967295u, 2u)], 1u), ~vec4<u32>(u_input.b, 3730u, 18341u, var_3.a.x)) % vec4<u32>(32u)), select(select(!vec2<bool>(var_2, global4.b), select(vec2<bool>(false, false), vec2<bool>(true, var_0.b), true), false || var_0.b), !(!vec2<bool>(false, var_2)), !vec2<bool>(global4.b, var_0.b)), -2269i));
    var var_4 = global4.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(1u);
}

