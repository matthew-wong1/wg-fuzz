struct Struct_1 {
    a: f32,
    b: vec4<u32>,
    c: vec4<bool>,
    d: vec2<i32>,
    e: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: array<vec3<u32>, 11> = array<vec3<u32>, 11>(vec3<u32>(4294967295u, 61605u, 6770u), vec3<u32>(170u, 0u, 58586u), vec3<u32>(15624u, 4294967295u, 0u), vec3<u32>(12110u, 1u, 47290u), vec3<u32>(4294967295u, 4294967295u, 20984u), vec3<u32>(4294967295u, 8907u, 0u), vec3<u32>(82226u, 71u, 0u), vec3<u32>(3534u, 6048u, 0u), vec3<u32>(0u, 1u, 6332u), vec3<u32>(57462u, 0u, 0u), vec3<u32>(45487u, 0u, 0u));

var<private> global2: array<f32, 1>;

var<private> global3: array<vec2<i32>, 19>;

var<private> global4: array<bool, 31> = array<bool, 31>(true, false, true, false, false, true, false, true, false, false, true, true, false, true, true, true, true, false, true, true, false, true, false, true, false, true, false, false, false, true, true);

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: bool, arg_1: Struct_1) -> bool {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -391f) * -219f), _wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.c.x, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, arg_1.e), vec2<u32>(100823u, 58762u)), 4776u, 0u), arg_1.b), ~_wgslsmith_mod_vec4_u32(vec4<u32>(arg_1.b.x, arg_1.e, 1u, u_input.c.x), firstLeadingBit(arg_1.b))), select(!(!(!arg_1.c)), select(select(select(arg_1.c, vec4<bool>(false, false, arg_1.c.x, true), false), vec4<bool>(false, arg_0, true, true), select(arg_0, false, arg_1.c.x)), arg_1.c, !(!arg_1.c)), arg_1.c), -vec2<i32>(-global0.x, -2147483647i), min(~arg_1.e, ~(~(~1u))));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(4294967295u, 1u)]), ~vec4<u32>(firstTrailingBit(max(4294967295u, var_0.e)), _wgslsmith_sub_u32(3344u, _wgslsmith_add_u32(arg_1.e, var_0.b.x)), _wgslsmith_mod_u32(0u, var_0.b.x) ^ u_input.c.x, u_input.c.x), select(select(var_0.c, arg_1.c, true), arg_1.c, !arg_1.c), ~_wgslsmith_sub_vec2_i32(global0.xx, vec2<i32>(10567i, min(var_0.d.x, u_input.b))), ~reverseBits(u_input.d));
    var var_2 = countOneBits(50908i) >> (reverseBits(var_1.e) % 32u);
    global4 = array<bool, 31>();
    global4 = array<bool, 31>();
    return !(~_wgslsmith_dot_vec4_u32(arg_1.b, abs(var_0.b)) == var_1.e);
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    var var_0 = select(vec3<bool>(false, arg_1.c.x, arg_0.c.x), select(vec3<bool>(!func_3(true, Struct_1(2033f, vec4<u32>(0u, 44566u, 7294u, arg_0.b.x), arg_0.c, global0.wy, 4294967295u)), select(!arg_2.c.x, true, false), !arg_0.c.x), vec3<bool>(false, true, true), !select(!vec3<bool>(arg_1.c.x, false, arg_0.c.x), select(vec3<bool>(true, false, true), vec3<bool>(false, arg_2.c.x, arg_1.c.x), false), true)), -global0.x < arg_1.d.x);
    var var_1 = arg_1.b;
    let var_2 = 516f;
    let var_3 = ~vec4<i32>(abs(0i >> (arg_0.b.x % 32u)), max(firstTrailingBit(2147483647i << (var_1.x % 32u)), -17182i), 1i, 1i);
    var_1 = vec4<u32>(var_1.x, 4294967295u, u_input.c.x, _wgslsmith_mod_u32(_wgslsmith_mult_u32(_wgslsmith_div_u32(arg_0.b.x, min(arg_1.b.x, arg_0.e)), 0u), max(_wgslsmith_add_u32(_wgslsmith_sub_u32(65957u, 1850u), 1u), arg_3.e)));
    return Struct_1(arg_1.a, _wgslsmith_mult_vec4_u32(~vec4<u32>(~var_1.x, _wgslsmith_mod_u32(var_1.x, 4294967295u), var_1.x, ~1u), ~vec4<u32>(_wgslsmith_clamp_u32(1u, 989u, 0u), 46771u ^ arg_2.e, 4294967295u << (arg_3.b.x % 32u), 1u)), vec4<bool>(false, all(select(!arg_3.c, arg_2.c, any(arg_1.c))), true, false), global3[_wgslsmith_index_u32(min(~(~(~57536u)), _wgslsmith_add_u32(var_1.x, min(arg_3.b.x, var_1.x))), 19u)], 4294967295u);
}

fn func_4(arg_0: u32, arg_1: vec2<i32>, arg_2: vec2<i32>, arg_3: Struct_1) -> bool {
    var var_0 = arg_3;
    var var_1 = arg_3;
    let var_2 = arg_3.c.wyz;
    var var_3 = -arg_1;
    var var_4 = vec2<i32>(abs(i32(-1i) * -1i), ~(-_wgslsmith_dot_vec3_i32(max(global0.wxy, vec3<i32>(arg_2.x, u_input.b, var_0.d.x)), vec3<i32>(global0.x, 21614i, -53445i) ^ vec3<i32>(-38267i, var_3.x, arg_3.d.x))));
    return global4[_wgslsmith_index_u32(u_input.d, 31u)];
}

fn func_1() -> Struct_1 {
    var var_0 = global0.zy;
    global2 = array<f32, 1>();
    global2 = array<f32, 1>();
    let var_1 = Struct_1(global2[_wgslsmith_index_u32(4294967295u, 1u)], ~vec4<u32>(firstTrailingBit(u_input.d ^ 27309u), reverseBits(~u_input.d), u_input.c.x, (33230u | u_input.c.x) & _wgslsmith_mult_u32(4294967295u, u_input.d)), select(vec4<bool>(false, global4[_wgslsmith_index_u32(countOneBits(u_input.c.x), 31u)], func_4(1u, -global0.yw, vec2<i32>(u_input.a, global0.x), func_2(Struct_1(-1607f, vec4<u32>(u_input.c.x, u_input.d, 28726u, u_input.c.x), vec4<bool>(global4[_wgslsmith_index_u32(u_input.c.x, 31u)], true, global4[_wgslsmith_index_u32(0u, 31u)], global4[_wgslsmith_index_u32(u_input.d, 31u)]), vec2<i32>(var_0.x, -2147483647i), 29763u), Struct_1(global2[_wgslsmith_index_u32(u_input.d, 1u)], vec4<u32>(4294967295u, u_input.d, 1u, 45909u), vec4<bool>(global4[_wgslsmith_index_u32(53075u, 31u)], true, global4[_wgslsmith_index_u32(u_input.d, 31u)], global4[_wgslsmith_index_u32(u_input.c.x, 31u)]), vec2<i32>(-42967i, global0.x), 4294967295u), Struct_1(global2[_wgslsmith_index_u32(u_input.c.x, 1u)], vec4<u32>(u_input.d, u_input.c.x, u_input.c.x, u_input.c.x), vec4<bool>(global4[_wgslsmith_index_u32(u_input.d, 31u)], false, global4[_wgslsmith_index_u32(u_input.d, 31u)], false), global0.xz, u_input.d), Struct_1(-559f, vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.c.x), vec4<bool>(true, true, global4[_wgslsmith_index_u32(u_input.d, 31u)], global4[_wgslsmith_index_u32(u_input.c.x, 31u)]), vec2<i32>(u_input.b, 5641i), 1737u))), func_3(true, Struct_1(295f, vec4<u32>(12618u, u_input.d, 13119u, 0u), vec4<bool>(true, true, global4[_wgslsmith_index_u32(0u, 31u)], true), vec2<i32>(-27960i, 60868i), 0u))), select(!vec4<bool>(global4[_wgslsmith_index_u32(u_input.c.x, 31u)], false, global4[_wgslsmith_index_u32(3208u, 31u)], false), select(vec4<bool>(false, global4[_wgslsmith_index_u32(u_input.d, 31u)], false, true), func_2(Struct_1(global2[_wgslsmith_index_u32(u_input.d, 1u)], vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.c.x), vec4<bool>(true, global4[_wgslsmith_index_u32(44079u, 31u)], global4[_wgslsmith_index_u32(14618u, 31u)], true), global3[_wgslsmith_index_u32(6079u, 19u)], 1u), Struct_1(1400f, vec4<u32>(u_input.d, u_input.d, u_input.d, u_input.d), vec4<bool>(global4[_wgslsmith_index_u32(1u, 31u)], false, global4[_wgslsmith_index_u32(13425u, 31u)], global4[_wgslsmith_index_u32(u_input.d, 31u)]), vec2<i32>(-44215i, var_0.x), u_input.d), Struct_1(1373f, vec4<u32>(u_input.c.x, 55936u, 120631u, u_input.d), vec4<bool>(false, true, global4[_wgslsmith_index_u32(u_input.d, 31u)], true), vec2<i32>(-2147483647i, var_0.x), 0u), Struct_1(global2[_wgslsmith_index_u32(u_input.c.x, 1u)], vec4<u32>(1u, 4294967295u, u_input.c.x, u_input.d), vec4<bool>(global4[_wgslsmith_index_u32(48601u, 31u)], true, true, global4[_wgslsmith_index_u32(40961u, 31u)]), global3[_wgslsmith_index_u32(28830u, 19u)], 1u)).c, all(vec2<bool>(global4[_wgslsmith_index_u32(u_input.d, 31u)], true))), select(vec4<bool>(true, global4[_wgslsmith_index_u32(u_input.d, 31u)], global4[_wgslsmith_index_u32(1u, 31u)], global4[_wgslsmith_index_u32(u_input.c.x, 31u)]), select(vec4<bool>(true, global4[_wgslsmith_index_u32(1u, 31u)], false, false), vec4<bool>(global4[_wgslsmith_index_u32(1854u, 31u)], global4[_wgslsmith_index_u32(u_input.c.x, 31u)], global4[_wgslsmith_index_u32(4294967295u, 31u)], true), global4[_wgslsmith_index_u32(0u, 31u)]), vec4<bool>(global4[_wgslsmith_index_u32(u_input.c.x, 31u)], global4[_wgslsmith_index_u32(6947u, 31u)], global4[_wgslsmith_index_u32(17724u, 31u)], global4[_wgslsmith_index_u32(u_input.c.x, 31u)]))), func_2(func_2(Struct_1(-1095f, vec4<u32>(u_input.c.x, 3842u, u_input.d, 27239u), vec4<bool>(false, global4[_wgslsmith_index_u32(1u, 31u)], true, global4[_wgslsmith_index_u32(u_input.c.x, 31u)]), vec2<i32>(22155i, u_input.a), 52812u), func_2(Struct_1(global2[_wgslsmith_index_u32(4294967295u, 1u)], vec4<u32>(u_input.d, 49663u, 9816u, u_input.c.x), vec4<bool>(false, false, global4[_wgslsmith_index_u32(4294967295u, 31u)], false), global3[_wgslsmith_index_u32(u_input.d, 19u)], u_input.c.x), Struct_1(-1549f, vec4<u32>(u_input.c.x, 4294967295u, 1u, u_input.c.x), vec4<bool>(false, global4[_wgslsmith_index_u32(u_input.c.x, 31u)], global4[_wgslsmith_index_u32(u_input.d, 31u)], global4[_wgslsmith_index_u32(u_input.c.x, 31u)]), vec2<i32>(var_0.x, 1i), u_input.d), Struct_1(599f, vec4<u32>(1u, u_input.c.x, u_input.c.x, 27821u), vec4<bool>(global4[_wgslsmith_index_u32(u_input.d, 31u)], global4[_wgslsmith_index_u32(u_input.c.x, 31u)], false, true), vec2<i32>(-11937i, -2147483647i), 73701u), Struct_1(global2[_wgslsmith_index_u32(4294967295u, 1u)], vec4<u32>(u_input.d, u_input.d, 1u, 1u), vec4<bool>(false, true, true, global4[_wgslsmith_index_u32(u_input.c.x, 31u)]), vec2<i32>(-15210i, 55433i), 0u)), func_2(Struct_1(global2[_wgslsmith_index_u32(u_input.c.x, 1u)], vec4<u32>(u_input.d, u_input.d, u_input.c.x, u_input.d), vec4<bool>(global4[_wgslsmith_index_u32(1u, 31u)], true, global4[_wgslsmith_index_u32(4294967295u, 31u)], true), vec2<i32>(-1i, 1i), u_input.c.x), Struct_1(-600f, vec4<u32>(0u, u_input.d, u_input.c.x, u_input.c.x), vec4<bool>(global4[_wgslsmith_index_u32(0u, 31u)], false, false, false), global3[_wgslsmith_index_u32(27274u, 19u)], u_input.d), Struct_1(global2[_wgslsmith_index_u32(0u, 1u)], vec4<u32>(25258u, 0u, 75697u, 4294967295u), vec4<bool>(global4[_wgslsmith_index_u32(u_input.d, 31u)], false, global4[_wgslsmith_index_u32(0u, 31u)], global4[_wgslsmith_index_u32(43079u, 31u)]), vec2<i32>(1i, var_0.x), 36906u), Struct_1(-205f, vec4<u32>(1u, 1u, 4294967295u, 28205u), vec4<bool>(global4[_wgslsmith_index_u32(u_input.d, 31u)], global4[_wgslsmith_index_u32(u_input.d, 31u)], false, global4[_wgslsmith_index_u32(7027u, 31u)]), vec2<i32>(1843i, 22876i), u_input.c.x)), func_2(Struct_1(global2[_wgslsmith_index_u32(u_input.c.x, 1u)], vec4<u32>(u_input.c.x, u_input.d, 0u, u_input.d), vec4<bool>(false, global4[_wgslsmith_index_u32(4294967295u, 31u)], global4[_wgslsmith_index_u32(85051u, 31u)], global4[_wgslsmith_index_u32(u_input.c.x, 31u)]), global0.yz, u_input.c.x), Struct_1(global2[_wgslsmith_index_u32(u_input.d, 1u)], vec4<u32>(u_input.c.x, 62889u, u_input.d, u_input.c.x), vec4<bool>(false, global4[_wgslsmith_index_u32(u_input.c.x, 31u)], global4[_wgslsmith_index_u32(35207u, 31u)], global4[_wgslsmith_index_u32(4294967295u, 31u)]), vec2<i32>(var_0.x, global0.x), 1u), Struct_1(global2[_wgslsmith_index_u32(38165u, 1u)], vec4<u32>(4294967295u, 0u, u_input.d, u_input.c.x), vec4<bool>(global4[_wgslsmith_index_u32(u_input.c.x, 31u)], global4[_wgslsmith_index_u32(u_input.c.x, 31u)], false, false), vec2<i32>(2147483647i, -1i), 1u), Struct_1(-874f, vec4<u32>(u_input.d, u_input.c.x, 17789u, 12677u), vec4<bool>(global4[_wgslsmith_index_u32(u_input.c.x, 31u)], global4[_wgslsmith_index_u32(34176u, 31u)], global4[_wgslsmith_index_u32(0u, 31u)], global4[_wgslsmith_index_u32(u_input.d, 31u)]), vec2<i32>(u_input.a, global0.x), 45228u))), Struct_1(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(35650u, 1u)] * global2[_wgslsmith_index_u32(0u, 1u)]), ~vec4<u32>(4294967295u, 47179u, u_input.d, u_input.d), !vec4<bool>(true, global4[_wgslsmith_index_u32(1u, 31u)], global4[_wgslsmith_index_u32(u_input.d, 31u)], false), vec2<i32>(u_input.a, var_0.x), ~0u), Struct_1(global2[_wgslsmith_index_u32(2325u, 1u)], reverseBits(vec4<u32>(36244u, u_input.d, u_input.c.x, u_input.c.x)), !vec4<bool>(global4[_wgslsmith_index_u32(0u, 31u)], global4[_wgslsmith_index_u32(u_input.d, 31u)], true, true), min(vec2<i32>(0i, 2147483647i), vec2<i32>(-24999i, -20406i)), u_input.c.x), func_2(Struct_1(-562f, vec4<u32>(u_input.c.x, 0u, u_input.d, u_input.c.x), vec4<bool>(false, global4[_wgslsmith_index_u32(4294967295u, 31u)], true, true), global3[_wgslsmith_index_u32(u_input.d, 19u)], 41635u), func_2(Struct_1(-1011f, vec4<u32>(1u, 4294967295u, u_input.c.x, u_input.d), vec4<bool>(global4[_wgslsmith_index_u32(8737u, 31u)], global4[_wgslsmith_index_u32(0u, 31u)], true, global4[_wgslsmith_index_u32(u_input.d, 31u)]), vec2<i32>(var_0.x, var_0.x), u_input.d), Struct_1(global2[_wgslsmith_index_u32(22192u, 1u)], vec4<u32>(0u, 0u, 1u, u_input.d), vec4<bool>(true, global4[_wgslsmith_index_u32(u_input.d, 31u)], global4[_wgslsmith_index_u32(u_input.d, 31u)], true), vec2<i32>(u_input.a, -2147483647i), 41070u), Struct_1(global2[_wgslsmith_index_u32(1u, 1u)], vec4<u32>(4294967295u, 14851u, u_input.c.x, 1u), vec4<bool>(false, global4[_wgslsmith_index_u32(u_input.c.x, 31u)], false, false), global3[_wgslsmith_index_u32(u_input.d, 19u)], u_input.c.x), Struct_1(global2[_wgslsmith_index_u32(0u, 1u)], vec4<u32>(u_input.d, 14899u, u_input.d, u_input.c.x), vec4<bool>(true, true, global4[_wgslsmith_index_u32(0u, 31u)], false), vec2<i32>(global0.x, 8916i), 16991u)), Struct_1(global2[_wgslsmith_index_u32(29774u, 1u)], vec4<u32>(u_input.d, u_input.c.x, 16651u, u_input.d), vec4<bool>(global4[_wgslsmith_index_u32(1u, 31u)], true, global4[_wgslsmith_index_u32(u_input.d, 31u)], false), vec2<i32>(var_0.x, var_0.x), u_input.d), func_2(Struct_1(409f, vec4<u32>(u_input.d, u_input.c.x, u_input.d, u_input.c.x), vec4<bool>(global4[_wgslsmith_index_u32(34159u, 31u)], global4[_wgslsmith_index_u32(34352u, 31u)], global4[_wgslsmith_index_u32(42389u, 31u)], global4[_wgslsmith_index_u32(0u, 31u)]), global0.zx, u_input.c.x), Struct_1(-1000f, vec4<u32>(138038u, u_input.d, u_input.d, u_input.c.x), vec4<bool>(false, true, global4[_wgslsmith_index_u32(0u, 31u)], true), global0.yx, 0u), Struct_1(1074f, vec4<u32>(u_input.d, 4294967295u, u_input.d, u_input.d), vec4<bool>(global4[_wgslsmith_index_u32(u_input.c.x, 31u)], false, global4[_wgslsmith_index_u32(0u, 31u)], false), vec2<i32>(50229i, -1i), u_input.d), Struct_1(global2[_wgslsmith_index_u32(u_input.c.x, 1u)], vec4<u32>(u_input.c.x, 0u, 4294967295u, u_input.c.x), vec4<bool>(global4[_wgslsmith_index_u32(u_input.c.x, 31u)], global4[_wgslsmith_index_u32(u_input.d, 31u)], global4[_wgslsmith_index_u32(1u, 31u)], global4[_wgslsmith_index_u32(1u, 31u)]), vec2<i32>(global0.x, 1i), u_input.d)))).c), vec2<i32>(~u_input.b, -33568i), _wgslsmith_div_u32(18765u, min(4294967295u, ~u_input.c.x)));
    var var_2 = _wgslsmith_mult_i32(1i, global0.x);
    return func_2(func_2(func_2(var_1, Struct_1(_wgslsmith_f_op_f32(1071f * global2[_wgslsmith_index_u32(var_1.b.x, 1u)]), vec4<u32>(58726u, var_1.e, var_1.b.x, 70893u), !var_1.c, _wgslsmith_div_vec2_i32(vec2<i32>(15785i, 0i), vec2<i32>(var_0.x, var_0.x)), firstLeadingBit(12267u)), var_1, var_1), Struct_1(global2[_wgslsmith_index_u32(u_input.c.x, 1u)], _wgslsmith_clamp_vec4_u32(~var_1.b, vec4<u32>(108770u, 14938u, 4294967295u, 1u) << (vec4<u32>(var_1.e, var_1.e, var_1.b.x, var_1.e) % vec4<u32>(32u)), var_1.b), func_2(var_1, Struct_1(var_1.a, vec4<u32>(var_1.b.x, 554u, u_input.c.x, 1u), var_1.c, vec2<i32>(u_input.a, -8714i), u_input.d), Struct_1(global2[_wgslsmith_index_u32(29163u, 1u)], var_1.b, vec4<bool>(global4[_wgslsmith_index_u32(u_input.c.x, 31u)], global4[_wgslsmith_index_u32(27110u, 31u)], true, global4[_wgslsmith_index_u32(79076u, 31u)]), vec2<i32>(-2147483647i, 1i), 1u), var_1).c, min(firstLeadingBit(vec2<i32>(-14120i, 48281i)), select(global0.xx, var_1.d, true)), func_2(var_1, func_2(var_1, Struct_1(global2[_wgslsmith_index_u32(u_input.d, 1u)], var_1.b, vec4<bool>(true, var_1.c.x, global4[_wgslsmith_index_u32(23103u, 31u)], true), vec2<i32>(0i, 1i), u_input.c.x), Struct_1(global2[_wgslsmith_index_u32(20937u, 1u)], var_1.b, var_1.c, vec2<i32>(global0.x, u_input.a), 1u), Struct_1(global2[_wgslsmith_index_u32(1u, 1u)], vec4<u32>(4294967295u, var_1.b.x, 4294967295u, var_1.b.x), vec4<bool>(global4[_wgslsmith_index_u32(16780u, 31u)], false, false, global4[_wgslsmith_index_u32(var_1.e, 31u)]), vec2<i32>(var_0.x, -41510i), var_1.e)), Struct_1(345f, vec4<u32>(0u, var_1.b.x, u_input.c.x, var_1.b.x), vec4<bool>(true, true, global4[_wgslsmith_index_u32(1u, 31u)], global4[_wgslsmith_index_u32(6535u, 31u)]), vec2<i32>(var_0.x, var_0.x), 47539u), var_1).e), Struct_1(_wgslsmith_f_op_f32(floor(-891f)), vec4<u32>(u_input.c.x & var_1.b.x, _wgslsmith_clamp_u32(0u, var_1.b.x, u_input.d), _wgslsmith_mult_u32(u_input.d, u_input.c.x), _wgslsmith_sub_u32(404u, 0u)), vec4<bool>(any(vec3<bool>(var_1.c.x, false, global4[_wgslsmith_index_u32(3757u, 31u)])), 64682u != u_input.d, true, select(false, var_1.c.x, global4[_wgslsmith_index_u32(var_1.b.x, 31u)])), global0.xz, ~(20293u >> (0u % 32u))), func_2(Struct_1(_wgslsmith_f_op_f32(floor(-290f)), _wgslsmith_sub_vec4_u32(vec4<u32>(var_1.b.x, 4294967295u, var_1.b.x, 0u), var_1.b), vec4<bool>(var_1.c.x, global4[_wgslsmith_index_u32(21793u, 31u)], global4[_wgslsmith_index_u32(26456u, 31u)], false), global3[_wgslsmith_index_u32(59051u, 19u)] >> (u_input.c.xx % vec2<u32>(32u)), 4294967295u), var_1, func_2(var_1, Struct_1(1000f, vec4<u32>(12776u, 8880u, 1u, var_1.b.x), var_1.c, vec2<i32>(-1i, global0.x), var_1.e), var_1, Struct_1(global2[_wgslsmith_index_u32(1u, 1u)], vec4<u32>(u_input.d, 28899u, u_input.d, u_input.d), vec4<bool>(false, var_1.c.x, false, global4[_wgslsmith_index_u32(var_1.b.x, 31u)]), global0.zz, 1u)), Struct_1(-913f, var_1.b, !var_1.c, ~var_1.d, 4294967295u << (u_input.d % 32u)))), func_2(Struct_1(_wgslsmith_f_op_f32(-1072f + func_2(var_1, Struct_1(-1484f, vec4<u32>(0u, var_1.e, 1u, 4294967295u), vec4<bool>(global4[_wgslsmith_index_u32(u_input.c.x, 31u)], false, global4[_wgslsmith_index_u32(var_1.b.x, 31u)], global4[_wgslsmith_index_u32(var_1.b.x, 31u)]), global0.yy, 28341u), Struct_1(var_1.a, vec4<u32>(3552u, u_input.d, 0u, var_1.b.x), var_1.c, global0.yz, var_1.e), Struct_1(275f, var_1.b, vec4<bool>(var_1.c.x, true, false, false), vec2<i32>(var_1.d.x, u_input.a), 45823u)).a), vec4<u32>(~4294967295u, 7426u, _wgslsmith_dot_vec2_u32(var_1.b.xz, vec2<u32>(u_input.c.x, var_1.b.x)), _wgslsmith_div_u32(u_input.d, u_input.c.x)), var_1.c, global3[_wgslsmith_index_u32(4294967295u, 19u)], 4294967295u), var_1, Struct_1(-452f, _wgslsmith_sub_vec4_u32(firstTrailingBit(var_1.b), var_1.b), var_1.c, ~_wgslsmith_mult_vec2_i32(var_1.d, global0.ww), firstLeadingBit(abs(4294967295u))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a)), ~(~var_1.b), vec4<bool>(global2[_wgslsmith_index_u32(var_1.e, 1u)] >= var_1.a, false, var_1.a != global2[_wgslsmith_index_u32(u_input.d, 1u)], true), var_1.d, var_1.b.x)), var_1, var_1);
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<bool, 31>();
    var var_0 = vec3<bool>(!global4[_wgslsmith_index_u32(~_wgslsmith_mod_u32(u_input.c.x, u_input.d) ^ (u_input.c.x << ((u_input.c.x | 56750u) % 32u)), 31u)], !global4[_wgslsmith_index_u32(10539u, 31u)], global0.x <= u_input.b);
    var var_1 = func_1();
    let var_2 = Struct_1(global2[_wgslsmith_index_u32(func_2(Struct_1(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(1u, 1u)] - var_1.a), ~vec4<u32>(var_1.b.x, 4294967295u, var_1.e, var_1.e) << (vec4<u32>(var_1.e, 4294967295u, 1u, 0u) % vec4<u32>(32u)), !(!var_1.c), firstLeadingBit(-global3[_wgslsmith_index_u32(77356u, 19u)]), var_1.b.x), Struct_1(global2[_wgslsmith_index_u32(u_input.c.x, 1u)], _wgslsmith_mult_vec4_u32(var_1.b | vec4<u32>(u_input.c.x, u_input.c.x, var_1.b.x, 58693u), reverseBits(vec4<u32>(0u, u_input.c.x, 77255u, 1u))), vec4<bool>(u_input.b >= -21582i, var_0.x, !global4[_wgslsmith_index_u32(u_input.c.x, 31u)], u_input.c.x > var_1.b.x), vec2<i32>(~(-2147483647i), u_input.b), _wgslsmith_dot_vec2_u32(max(vec2<u32>(u_input.d, var_1.e), vec2<u32>(38549u, u_input.c.x)), ~u_input.c.zy)), func_1(), func_1()).e, 1u)], select(vec4<u32>(_wgslsmith_dot_vec4_u32(~var_1.b, var_1.b | vec4<u32>(u_input.c.x, 1340u, u_input.c.x, 8836u)), 1452u >> (~4294967295u % 32u), 7303u, _wgslsmith_mult_u32(~var_1.e, _wgslsmith_div_u32(u_input.c.x, var_1.b.x))), var_1.b, true), vec4<bool>(var_1.b.x != _wgslsmith_div_u32(firstTrailingBit(u_input.d), 0u), ~(~1u) > _wgslsmith_mod_u32(_wgslsmith_mult_u32(1u, 2210u), ~var_1.e), var_0.x || false, _wgslsmith_mult_u32(~u_input.c.x, _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.b.x, 1u, var_1.e, 6192u), vec4<u32>(var_1.b.x, u_input.d, 4294967295u, u_input.d))) < ~(var_1.e << (u_input.d % 32u))), _wgslsmith_mult_vec2_i32(-max(select(vec2<i32>(5693i, var_1.d.x), vec2<i32>(global0.x, u_input.b), var_1.c.yy), select(global3[_wgslsmith_index_u32(95800u, 19u)], vec2<i32>(var_1.d.x, -2147483647i), var_1.c.ww)), reverseBits(global3[_wgslsmith_index_u32(u_input.d, 19u)])), _wgslsmith_mult_u32(62635u >> (0u % 32u), ~_wgslsmith_add_u32(1u, var_1.b.x)) & _wgslsmith_sub_u32(firstTrailingBit(1u), ~(33141u ^ var_1.e)));
    let var_3 = _wgslsmith_f_op_f32(abs(-1151f));
    var var_4 = func_1().c;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_i32(firstLeadingBit(~_wgslsmith_clamp_i32(-59990i, var_2.d.x, global0.x)), _wgslsmith_div_i32(abs(i32(-1i) * -55072i), countOneBits(var_2.d.x) | (var_2.d.x << (var_1.b.x % 32u)))), _wgslsmith_div_vec4_u32(abs(vec4<u32>(reverseBits(var_1.e), min(var_2.b.x, 0u), var_2.e, 7524u)), ~func_1().b), ~countOneBits(_wgslsmith_mult_i32(var_2.d.x, 53240i)) & global0.x);
}

