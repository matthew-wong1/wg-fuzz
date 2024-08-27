struct Struct_1 {
    a: f32,
    b: vec3<i32>,
    c: vec2<i32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: bool,
    c: Struct_1,
    d: Struct_1,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(-908f, vec3<i32>(31334i, 14974i, i32(-2147483648)), vec2<i32>(-1i, 47806i));

var<private> global1: array<vec4<u32>, 21> = array<vec4<u32>, 21>(vec4<u32>(90870u, 0u, 41622u, 0u), vec4<u32>(4294967295u, 30773u, 0u, 21691u), vec4<u32>(75671u, 39094u, 4294967295u, 36191u), vec4<u32>(4294967295u, 128158u, 37058u, 9338u), vec4<u32>(4294967295u, 0u, 1u, 92984u), vec4<u32>(46279u, 30967u, 70817u, 55748u), vec4<u32>(15283u, 53572u, 60371u, 975u), vec4<u32>(4294967295u, 0u, 54237u, 1u), vec4<u32>(1u, 4294967295u, 1u, 10844u), vec4<u32>(1u, 1u, 5691u, 4294967295u), vec4<u32>(0u, 4294967295u, 1u, 10141u), vec4<u32>(0u, 41491u, 15349u, 27543u), vec4<u32>(0u, 4294967295u, 4294967295u, 4294967295u), vec4<u32>(29208u, 1348u, 4294967295u, 24877u), vec4<u32>(6481u, 1u, 1u, 1u), vec4<u32>(4294967295u, 1u, 19641u, 4294967295u), vec4<u32>(20939u, 75133u, 9719u, 1u), vec4<u32>(71134u, 23079u, 64535u, 4294967295u), vec4<u32>(132380u, 19744u, 21425u, 0u), vec4<u32>(61812u, 3104u, 1u, 41215u), vec4<u32>(0u, 0u, 11814u, 39368u));

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_2(arg_0: Struct_1) -> vec4<u32> {
    var var_0 = Struct_2(select(vec2<bool>(true, true), vec2<bool>(!any(vec4<bool>(false, false, false, false)), true), vec2<bool>(all(vec3<bool>(false, true, true)), true)), true, arg_0, Struct_1(421f, global0.b, abs(vec2<i32>(global0.c.x, firstLeadingBit(2147483647i)))), 25358i);
    let var_1 = Struct_1(arg_0.a, -vec3<i32>(-var_0.d.b.x & _wgslsmith_dot_vec3_i32(vec3<i32>(16246i, global0.c.x, var_0.d.c.x), vec3<i32>(arg_0.c.x, 7345i, var_0.c.b.x)), 1i, 0i), ~(-vec2<i32>(0i, -70380i)));
    global1 = array<vec4<u32>, 21>();
    var_0 = Struct_2(vec2<bool>(!(true || var_0.a.x), true), var_0.a.x, Struct_1(-128f, vec3<i32>(global0.b.x, 0i, var_0.d.b.x), vec2<i32>(37629i, var_1.b.x)), var_1, global0.c.x);
    global1 = array<vec4<u32>, 21>();
    return abs(~(~vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 4294967295u, u_input.a, 14448u), vec4<u32>(7351u, 4294967295u, 15647u, u_input.b.x)), min(4294967295u, 8617u), u_input.b.x, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 1u), u_input.b))));
}

fn func_3(arg_0: vec2<bool>, arg_1: vec4<u32>) -> vec4<bool> {
    var var_0 = vec3<u32>(4294967295u >> ((_wgslsmith_mult_u32(u_input.b.x << (arg_1.x % 32u), _wgslsmith_mult_u32(26626u, arg_1.x)) << (arg_1.x % 32u)) % 32u), _wgslsmith_sub_u32(1u, select(~(~arg_1.x), 1u, true)), max(firstLeadingBit(arg_1.x), 349u & ((arg_1.x | u_input.a) ^ _wgslsmith_dot_vec4_u32(vec4<u32>(12655u, u_input.b.x, 4294967295u, arg_1.x), vec4<u32>(16078u, u_input.b.x, arg_1.x, u_input.b.x)))));
    var var_1 = select(~_wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-24015i, global0.b.x, global0.b.x, global0.c.x), vec4<i32>(8534i, global0.c.x, -2147483647i, global0.b.x)), -vec4<i32>(global0.c.x, -12419i, 0i, global0.c.x)), -firstLeadingBit(vec4<i32>(global0.b.x, global0.c.x, -1i, 5740i))), ~_wgslsmith_mod_vec4_i32(-vec4<i32>(-30602i, global0.b.x, 56344i, global0.c.x) ^ vec4<i32>(global0.b.x, global0.b.x, 104185i, 0i), ~_wgslsmith_div_vec4_i32(vec4<i32>(global0.c.x, -27876i, -46630i, global0.c.x), vec4<i32>(-1i, global0.c.x, -24430i, global0.c.x))), !vec4<bool>(true, arg_0.x, !(!arg_0.x), !arg_0.x));
    let var_2 = global0.c;
    var var_3 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -737f), vec3<i32>(global0.b.x, firstLeadingBit(-2147483647i), 1i) << (~(~select(arg_1.zxx, arg_1.wwy, vec3<bool>(arg_0.x, arg_0.x, true))) % vec3<u32>(32u)), ~(~min(vec2<i32>(2147483647i, var_1.x), var_1.xw)));
    let var_4 = vec4<i32>(global0.b.x, _wgslsmith_sub_i32(firstLeadingBit(var_1.x << (4294967295u % 32u)), abs(~(i32(-1i) * -41844i))), _wgslsmith_div_i32(-(~_wgslsmith_div_i32(2147483647i, -2147483647i)), _wgslsmith_div_i32(abs(84048i), 8426i) & var_1.x), firstTrailingBit(_wgslsmith_add_i32(-1i >> (var_0.x % 32u), -(0i << (0u % 32u)))));
    return select(vec4<bool>(!(abs(0u) >= ~u_input.b.x), !arg_0.x, true, true), !vec4<bool>(select(arg_0.x, true, var_0.x < var_0.x), arg_0.x, false, _wgslsmith_f_op_f32(sign(global0.a)) > _wgslsmith_f_op_f32(-393f - global0.a)), !arg_0.x);
}

fn func_1(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: i32, arg_3: vec4<f32>) -> Struct_1 {
    let var_0 = arg_1.c;
    let var_1 = arg_2;
    let var_2 = ~(~arg_0.x);
    let var_3 = u_input.b.x;
    var var_4 = select(!select(vec4<bool>(true, -1i > arg_1.d.c.x, global0.a < -1000f, arg_1.a.x || arg_1.b), !(!vec4<bool>(arg_1.a.x, arg_1.a.x, arg_1.a.x, false)), vec4<bool>(true, arg_1.b, true, true)), !select(func_3(!vec2<bool>(false, arg_1.b), func_2(Struct_1(-1641f, global0.b, var_0.c))), select(vec4<bool>(arg_1.a.x, false, true, false), vec4<bool>(false, arg_1.a.x, true, false), false), select(vec4<bool>(arg_1.b, arg_1.b, arg_1.b, true), select(vec4<bool>(arg_1.b, arg_1.a.x, arg_1.b, false), vec4<bool>(arg_1.a.x, false, false, arg_1.a.x), arg_1.b), true)), select(vec4<bool>(~arg_0.x < min(var_3, var_2), !arg_1.a.x, select(true, any(vec3<bool>(arg_1.a.x, true, false)), !arg_1.b), 37460u <= u_input.a), func_3(!vec2<bool>(arg_1.b, false), reverseBits(global1[_wgslsmith_index_u32(4294967295u, 21u)])), all(!vec2<bool>(arg_1.a.x, true))));
    return arg_1.c;
}

fn func_4(arg_0: Struct_1) -> f32 {
    var var_0 = arg_0;
    global0 = func_1(vec4<u32>(1u, u_input.a, _wgslsmith_clamp_u32(1u, select(max(u_input.a, u_input.b.x), ~u_input.b.x, func_3(vec2<bool>(true, false), global1[_wgslsmith_index_u32(u_input.b.x, 21u)]).x), 37050u), _wgslsmith_dot_vec2_u32(reverseBits(func_2(Struct_1(arg_0.a, global0.b, arg_0.b.xz)).yx), vec2<u32>(u_input.a, 1u))), Struct_2(select(vec2<bool>(false, true), select(vec2<bool>(true, false), select(vec2<bool>(false, true), vec2<bool>(true, false), false), vec2<bool>(true, true)), vec2<bool>(false, true)), true, Struct_1(_wgslsmith_f_op_f32(-1121f - _wgslsmith_f_op_f32(726f + 188f)), _wgslsmith_div_vec3_i32(var_0.b | arg_0.b, global0.b), vec2<i32>(select(var_0.c.x, arg_0.c.x, false), 14398i ^ arg_0.c.x)), arg_0, _wgslsmith_mod_i32(_wgslsmith_sub_i32(-65783i, global0.b.x), -7484i)), 0i, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a + global0.a))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1126f, var_0.a)))), _wgslsmith_f_op_f32(var_0.a - _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-505f, 797f), _wgslsmith_f_op_f32(global0.a + global0.a)))), _wgslsmith_f_op_f32(var_0.a * _wgslsmith_f_op_f32(-var_0.a))));
    var var_1 = !vec3<bool>(false, true, any(vec3<bool>(any(vec3<bool>(true, true, false)), false, true)));
    let var_2 = arg_0.a;
    let var_3 = arg_0;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a)) * arg_0.a)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<u32>, 21>();
    global1 = array<vec4<u32>, 21>();
    global0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a)) - _wgslsmith_f_op_f32(func_4(func_1(~vec4<u32>(u_input.b.x, u_input.a, 40191u, 70530u), Struct_2(vec2<bool>(true, false), false, Struct_1(global0.a, global0.b, vec2<i32>(global0.b.x, -13211i)), Struct_1(global0.a, vec3<i32>(global0.c.x, 18985i, global0.c.x), vec2<i32>(-30334i, global0.b.x)), global0.c.x), ~global0.b.x, _wgslsmith_div_vec4_f32(vec4<f32>(global0.a, global0.a, -313f, -136f), vec4<f32>(1535f, -1482f, global0.a, global0.a)))))), vec3<i32>(-54289i, func_1(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, u_input.a, u_input.b.x, u_input.a), _wgslsmith_clamp_vec4_u32(global1[_wgslsmith_index_u32(u_input.a, 21u)], global1[_wgslsmith_index_u32(u_input.b.x, 21u)], vec4<u32>(34925u, u_input.a, u_input.b.x, 4294967295u))), Struct_2(vec2<bool>(false, false), true, func_1(global1[_wgslsmith_index_u32(u_input.a, 21u)], Struct_2(vec2<bool>(true, true), true, Struct_1(1184f, vec3<i32>(-14634i, global0.b.x, -14467i), global0.c), Struct_1(global0.a, global0.b, global0.c), -1i), 854i, vec4<f32>(global0.a, 785f, 1446f, global0.a)), Struct_1(global0.a, vec3<i32>(2147483647i, 18884i, -9513i), vec2<i32>(-2147483647i, global0.c.x)), global0.c.x), _wgslsmith_dot_vec2_i32(vec2<i32>(18654i, 1i) ^ global0.c, vec2<i32>(global0.b.x, global0.b.x)), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2536f), global0.a, 912f, global0.a)).b.x, -countOneBits(global0.b.x)), global0.b.xx);
    var var_0 = Struct_2(vec2<bool>(any(vec4<bool>(false, true, false, global0.a <= -1178f)), !all(vec4<bool>(true, true, true, true))), true, func_1(vec4<u32>(48994u, ~u_input.b.x >> (abs(43737u) % 32u), _wgslsmith_dot_vec4_u32(~vec4<u32>(31299u, 3260u, 44139u, 36707u), global1[_wgslsmith_index_u32(~32762u, 21u)]), _wgslsmith_dot_vec2_u32(firstLeadingBit(u_input.b), u_input.b)), Struct_2(vec2<bool>(true, true), true, Struct_1(911f, -global0.b, -global0.c), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -409f), firstLeadingBit(vec3<i32>(global0.c.x, -9001i, global0.c.x)), global0.b.yy << (vec2<u32>(1u, u_input.a) % vec2<u32>(32u))), _wgslsmith_dot_vec3_i32(-global0.b, global0.b)), _wgslsmith_div_i32(global0.c.x, _wgslsmith_dot_vec3_i32(abs(vec3<i32>(37196i, 20415i, global0.b.x)), vec3<i32>(global0.b.x, 14758i, 21946i) ^ vec3<i32>(-3592i, 3697i, global0.c.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(219f, global0.a, -1856f, 588f) - vec4<f32>(1414f, global0.a, global0.a, 1199f)), vec4<f32>(global0.a, -1535f, global0.a, 107f)))), Struct_1(global0.a, global0.b, ~vec2<i32>(global0.c.x, -2147483647i) & vec2<i32>(firstTrailingBit(global0.c.x), select(global0.c.x, global0.c.x, false))), firstTrailingBit(global0.c.x >> (1u % 32u)));
    var var_1 = var_0.d;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_1.a, global0.a))) - global0.a), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(-197f, global0.a)))), -1000f))), 4294967295u);
}

