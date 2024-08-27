struct Struct_1 {
    a: bool,
    b: vec3<f32>,
    c: bool,
    d: f32,
    e: f32,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: vec2<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 15>;

var<private> global1: array<vec3<f32>, 8> = array<vec3<f32>, 8>(vec3<f32>(-1000f, 216f, 176f), vec3<f32>(-196f, -2396f, 1000f), vec3<f32>(-444f, -180f, -236f), vec3<f32>(1531f, 1000f, -1642f), vec3<f32>(-1000f, -892f, -917f), vec3<f32>(1000f, 1110f, -112f), vec3<f32>(126f, 1100f, 1000f), vec3<f32>(-1630f, 387f, 1000f));

var<private> global2: array<vec3<i32>, 26> = array<vec3<i32>, 26>(vec3<i32>(2147483647i, -4284i, -1i), vec3<i32>(0i, -1i, 2147483647i), vec3<i32>(5448i, 0i, 0i), vec3<i32>(178i, 20619i, 0i), vec3<i32>(-1i, 2147483647i, 11930i), vec3<i32>(0i, -1i, 12228i), vec3<i32>(-41129i, i32(-2147483648), i32(-2147483648)), vec3<i32>(i32(-2147483648), 1i, 0i), vec3<i32>(2147483647i, 2147483647i, 30327i), vec3<i32>(1i, -19245i, 2147483647i), vec3<i32>(-15347i, 0i, -1i), vec3<i32>(1i, -33427i, 1i), vec3<i32>(22319i, -1i, 0i), vec3<i32>(29117i, 0i, -21900i), vec3<i32>(68740i, -35396i, 0i), vec3<i32>(1i, -1i, i32(-2147483648)), vec3<i32>(-21927i, 0i, 2147483647i), vec3<i32>(2147483647i, 1i, 2147483647i), vec3<i32>(49394i, 0i, 0i), vec3<i32>(2147483647i, 30019i, 80523i), vec3<i32>(43366i, 1i, -1i), vec3<i32>(-1i, 57023i, -33135i), vec3<i32>(-1i, -1i, 2147483647i), vec3<i32>(i32(-2147483648), 1i, i32(-2147483648)), vec3<i32>(0i, 1i, -1i), vec3<i32>(-1i, 1i, -23669i));

var<private> global3: array<vec4<bool>, 7> = array<vec4<bool>, 7>(vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, true));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_1) -> vec4<bool> {
    global0 = array<f32, 15>();
    let var_0 = Struct_2(global2[_wgslsmith_index_u32(u_input.a, 26u)]);
    global2 = array<vec3<i32>, 26>();
    global0 = array<f32, 15>();
    return global3[_wgslsmith_index_u32(_wgslsmith_div_u32(min(abs(4294967295u), 33607u), u_input.b.x), 7u)];
}

fn func_2(arg_0: vec2<u32>, arg_1: bool) -> Struct_1 {
    let var_0 = Struct_1(!(-14780i < (_wgslsmith_mult_i32(-10960i, 11513i) & select(0i, -70968i, true))), global1[_wgslsmith_index_u32(4294967295u, 8u)], true || arg_1, global0[_wgslsmith_index_u32(~u_input.a, 15u)], 719f);
    let var_1 = ~arg_0;
    var var_2 = vec3<f32>(277f, 1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(-1003f))))));
    let var_3 = -countOneBits(-_wgslsmith_dot_vec3_i32(~global2[_wgslsmith_index_u32(4294967295u, 26u)], -vec3<i32>(-1i, 2147483647i, -58923i)));
    global0 = array<f32, 15>();
    return Struct_1(all(func_3(var_1, Struct_1(arg_1, vec3<f32>(var_0.b.x, var_0.b.x, global0[_wgslsmith_index_u32(4294967295u, 15u)]), arg_1, -669f, global0[_wgslsmith_index_u32(4294967295u, 15u)]))) | (arg_1 & !(!arg_1)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, 1000f, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(reverseBits(1986u), 15u)]))), var_0.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.e) - _wgslsmith_f_op_f32(var_2.x * global0[_wgslsmith_index_u32(_wgslsmith_add_u32(7929u, 71307u), 15u)])) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(0u, 15u)], global0[_wgslsmith_index_u32(72134u, 15u)]))) * _wgslsmith_div_f32(-555f, _wgslsmith_f_op_f32(-var_0.b.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -507f), 216f)))));
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> vec4<u32> {
    var var_0 = arg_1;
    let var_1 = Struct_2(global2[_wgslsmith_index_u32(0u, 26u)]);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_2(u_input.b, false).b.x - _wgslsmith_f_op_f32(arg_1.b.x * -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1086f))))));
    global1 = array<vec3<f32>, 8>();
    let var_3 = _wgslsmith_sub_i32(max(firstTrailingBit(42598i), _wgslsmith_sub_i32(countOneBits(-26373i), var_1.a.x)), 48632i);
    return ~(~_wgslsmith_add_vec4_u32(countOneBits(vec4<u32>(u_input.a, 154637u, u_input.b.x, 1u)) >> (abs(vec4<u32>(u_input.b.x, u_input.a, 4294967295u, 38426u)) % vec4<u32>(32u)), vec4<u32>(arg_0, 1u, ~u_input.b.x, u_input.a)));
}

fn func_5(arg_0: vec4<u32>) -> u32 {
    global2 = array<vec3<i32>, 26>();
    let var_0 = ~arg_0;
    global0 = array<f32, 15>();
    global3 = array<vec4<bool>, 7>();
    let var_1 = vec2<u32>(firstTrailingBit(~(max(arg_0.x, 58222u) ^ var_0.x)), 4294967295u);
    return u_input.b.x;
}

fn func_1(arg_0: f32, arg_1: vec3<bool>) -> vec3<f32> {
    let var_0 = _wgslsmith_sub_u32(func_5(func_4(~1u, func_2(vec2<u32>(u_input.a, u_input.a), all(vec3<bool>(arg_1.x, arg_1.x, false))), func_2(u_input.b ^ vec2<u32>(u_input.b.x, u_input.b.x), !arg_1.x), func_2(min(u_input.b, u_input.b), any(arg_1.xy)))), 9110u);
    let var_1 = select(vec4<bool>(false, !(!(!arg_1.x)), any(vec4<bool>(true, all(vec4<bool>(arg_1.x, true, true, true)), func_2(u_input.b, arg_1.x).a, arg_1.x)), (~var_0 << (u_input.b.x % 32u)) >= func_5(~vec4<u32>(71107u, 18466u, var_0, 50220u))), !(!vec4<bool>(all(vec4<bool>(arg_1.x, false, arg_1.x, arg_1.x)), func_2(vec2<u32>(var_0, u_input.b.x), arg_1.x).c, -988f < global0[_wgslsmith_index_u32(u_input.b.x, 15u)], true)), global3[_wgslsmith_index_u32(31734u, 7u)]);
    let var_2 = vec4<i32>(i32(-1i) * -_wgslsmith_dot_vec4_i32(max(vec4<i32>(0i, -24200i, 0i, 1935i), vec4<i32>(2147483647i, -30221i, -16337i, 20489i)), vec4<i32>(0i, 0i, 0i, -2147483647i)), _wgslsmith_div_i32(-2147483647i, max(66023i, -26800i)), -22875i, _wgslsmith_dot_vec4_i32(countOneBits(abs(countOneBits(vec4<i32>(-3063i, 0i, -2147483647i, -2147483647i)))), -vec4<i32>(-1i, -1i, max(73321i, 62543i), _wgslsmith_mod_i32(0i, 1i))));
    return _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(10054u, 15u)], global0[_wgslsmith_index_u32(u_input.a, 15u)], global0[_wgslsmith_index_u32(18861u, 15u)]))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(556f, global0[_wgslsmith_index_u32(u_input.b.x, 15u)], -912f), _wgslsmith_f_op_vec3_f32(vec3<f32>(630f, 901f, 481f) * global1[_wgslsmith_index_u32(0u, 8u)])) + global1[_wgslsmith_index_u32(var_0, 8u)]))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(func_1(global0[_wgslsmith_index_u32(1u, 15u)], vec3<bool>(false, true, all(select(vec2<bool>(false, true), vec2<bool>(true, false), true)))))));
    var var_1 = select(!(!vec4<bool>(true, true, all(vec2<bool>(true, false)), true)), global3[_wgslsmith_index_u32(reverseBits(~_wgslsmith_div_u32(u_input.b.x, 100761u) >> (_wgslsmith_mult_u32(func_5(vec4<u32>(13339u, 46274u, u_input.a, 53247u)), ~0u) % 32u)), 7u)], func_3(~u_input.b, Struct_1(select(any(vec3<bool>(false, true, false)), any(vec4<bool>(false, false, true, false)), func_2(u_input.b, true).a), vec3<f32>(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.a, 15u)] + var_0.x), _wgslsmith_f_op_f32(-var_0.x), 1124f), !all(vec3<bool>(false, true, true)), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(max(6055u, u_input.a), 15u)]), global0[_wgslsmith_index_u32(abs(~32142u), 15u)])));
    var var_2 = !(!vec4<bool>(!func_3(vec2<u32>(35408u, u_input.a), Struct_1(var_1.x, vec3<f32>(global0[_wgslsmith_index_u32(4294967295u, 15u)], var_0.x, var_0.x), var_1.x, var_0.x, 1359f)).x, var_1.x, !var_1.x, false));
    let var_3 = vec3<bool>(any(select(select(global3[_wgslsmith_index_u32(u_input.b.x, 7u)], vec4<bool>(var_2.x, var_2.x, var_1.x, var_1.x), vec4<bool>(true, true, false, var_1.x)), global3[_wgslsmith_index_u32(~4294967295u, 7u)], vec4<bool>(var_2.x, var_2.x, true, false))) & ((func_2(u_input.b, var_1.x).c != !var_1.x) & all(!vec4<bool>(var_1.x, var_2.x, var_2.x, var_2.x))), var_2.x, var_2.x);
    var var_4 = ~28038u;
    let var_5 = Struct_2(vec3<i32>(-_wgslsmith_sub_i32(1i, 1i), -_wgslsmith_mult_i32(1i, 1i), -1i));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(1u, 1u, u_input.a, _wgslsmith_mult_u32(~(~u_input.b.x), ~_wgslsmith_mult_u32(u_input.b.x, 1u))), ~(~firstLeadingBit(func_4(u_input.b.x, Struct_1(false, vec3<f32>(-1000f, var_0.x, global0[_wgslsmith_index_u32(34488u, 15u)]), var_3.x, -1303f, -452f), Struct_1(var_2.x, vec3<f32>(-217f, 676f, global0[_wgslsmith_index_u32(u_input.a, 15u)]), var_3.x, 1075f, -908f), Struct_1(var_1.x, vec3<f32>(var_0.x, var_0.x, 569f), false, var_0.x, global0[_wgslsmith_index_u32(u_input.a, 15u)])).xyx)), select(_wgslsmith_mult_vec2_u32(u_input.b, ~vec2<u32>(66154u, u_input.a)), u_input.b, true), var_5.a.x);
}

