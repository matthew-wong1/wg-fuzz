struct Struct_1 {
    a: vec2<bool>,
    b: u32,
    c: vec4<u32>,
    d: bool,
}

struct Struct_2 {
    a: u32,
    b: vec3<u32>,
}

struct Struct_3 {
    a: i32,
    b: vec3<i32>,
    c: vec4<bool>,
    d: vec3<bool>,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 31> = array<u32, 31>(0u, 67947u, 0u, 4294967295u, 4294967295u, 4294967295u, 33691u, 103841u, 1u, 0u, 4294967295u, 53556u, 46793u, 4294967295u, 0u, 1u, 1u, 4294967295u, 59146u, 0u, 5162u, 31234u, 0u, 0u, 74111u, 11865u, 27730u, 1u, 0u, 118141u, 6561u);

var<private> global1: array<Struct_1, 4> = array<Struct_1, 4>(Struct_1(vec2<bool>(true, true), 0u, vec4<u32>(0u, 62194u, 22055u, 1u), true), Struct_1(vec2<bool>(false, true), 574u, vec4<u32>(126618u, 46507u, 29159u, 66208u), false), Struct_1(vec2<bool>(true, false), 0u, vec4<u32>(31487u, 4294967295u, 51717u, 69719u), false), Struct_1(vec2<bool>(true, false), 55487u, vec4<u32>(56284u, 7315u, 17337u, 0u), false));

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: f32, arg_1: i32, arg_2: Struct_2) -> vec4<bool> {
    global1 = array<Struct_1, 4>();
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -346f);
    var var_1 = arg_2;
    global0 = array<u32, 31>();
    var var_2 = Struct_2(var_1.b.x, vec3<u32>(reverseBits(max(~9019u, 4294967295u)), 1u, abs(select(1u, arg_2.a, true) ^ (0u << (1u % 32u)))));
    return select(select(select(select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false), true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true)), true), true), vec4<bool>(all(vec4<bool>(true, true, true, true)), true, _wgslsmith_f_op_f32(-arg_0) < _wgslsmith_f_op_f32(arg_0 + arg_0), all(vec3<bool>(true, true, true))), all(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), false), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true))))), vec4<bool>(!all(select(vec2<bool>(false, false), vec2<bool>(true, true), false)), true, true, all(vec4<bool>(true, true, true, true))), select(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), any(vec4<bool>(false, false, false, false))), select(select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true), true), select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, false)), vec4<bool>(true, true, select(true, false, true), u_input.a != -25366i)), select(select(select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false)), select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, false), false), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, true), true)), select(arg_1, 1202i, false) < _wgslsmith_mult_i32(29496i, 39790i))));
}

fn func_2(arg_0: vec2<u32>, arg_1: Struct_1) -> vec3<bool> {
    global0 = array<u32, 31>();
    let var_0 = any(func_3(_wgslsmith_f_op_f32(f32(-1f) * -844f), -1i, Struct_2(global0[_wgslsmith_index_u32(4294967295u & arg_1.b, 31u)], countOneBits(arg_1.c.zyw)))) | arg_1.a.x;
    var var_1 = Struct_3(-19750i, vec3<i32>(min(u_input.a, min(countOneBits(0i), _wgslsmith_dot_vec4_i32(vec4<i32>(759i, u_input.a, -1i, u_input.a), vec4<i32>(1i, u_input.a, u_input.a, 1i)))), 2147483647i, u_input.a), func_3(-2318f, u_input.a, Struct_2(select(reverseBits(7697u), 1u, true), vec3<u32>(global0[_wgslsmith_index_u32(arg_1.b, 31u)] << (global0[_wgslsmith_index_u32(arg_0.x, 31u)] % 32u), arg_0.x << (30257u % 32u), ~1427u))), !select(select(vec3<bool>(true, true, true), vec3<bool>(true, arg_1.d, true), select(vec3<bool>(var_0, false, true), vec3<bool>(var_0, true, var_0), arg_1.a.x)), select(vec3<bool>(true, var_0, var_0), func_3(1455f, 0i, Struct_2(global0[_wgslsmith_index_u32(0u, 31u)], arg_1.c.xxx)).xyz, arg_1.a.x), any(!vec2<bool>(arg_1.a.x, var_0))), select(-(vec2<i32>(u_input.a, u_input.a) ^ firstTrailingBit(vec2<i32>(-12928i, 2147483647i))), vec2<i32>(-44879i, 0i), !any(vec3<bool>(false, false, false))));
    return !(!(!vec3<bool>(!var_0, true, true)));
}

fn func_4(arg_0: u32, arg_1: Struct_3) -> bool {
    global0 = array<u32, 31>();
    var var_0 = vec3<u32>(~min(~arg_0, _wgslsmith_add_u32(abs(global0[_wgslsmith_index_u32(arg_0, 31u)]), 1u | arg_0)), select(countOneBits(countOneBits(arg_0)), _wgslsmith_div_u32(~global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(1u, 31u)], 31u)], 4752u), (-14986i <= arg_1.b.x) && !arg_1.d.x), global0[_wgslsmith_index_u32(1u, 31u)]);
    let var_1 = Struct_2(6576u, vec3<u32>(45293u, abs(~1u), ~countOneBits(arg_0) & 1u));
    global1 = array<Struct_1, 4>();
    var var_2 = _wgslsmith_div_i32(reverseBits(-26747i), ~_wgslsmith_mult_i32((i32(-1i) * -2147483647i) & arg_1.e.x, max(arg_1.a, 2147483647i)));
    return true;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_2, arg_2: i32) -> vec2<bool> {
    global0 = array<u32, 31>();
    var var_0 = u_input.a;
    global1 = array<Struct_1, 4>();
    global1 = array<Struct_1, 4>();
    var var_1 = _wgslsmith_sub_u32(_wgslsmith_sub_u32(_wgslsmith_add_u32(firstTrailingBit(~31789u), _wgslsmith_mod_u32(4294967295u, _wgslsmith_dot_vec3_u32(arg_1.b, arg_0.c.xzx))), ~reverseBits(~1u)), countOneBits(32299u));
    return select(vec2<bool>(func_4(arg_0.c.x, Struct_3(_wgslsmith_mod_i32(u_input.a, 69804i), vec3<i32>(2147483647i, arg_2, -1i), vec4<bool>(arg_0.a.x, true, true, arg_0.d), func_2(arg_0.c.ww, global1[_wgslsmith_index_u32(37183u, 4u)]), vec2<i32>(arg_2, u_input.a))), (func_4(19719u, Struct_3(-18863i, vec3<i32>(9395i, 2147483647i, arg_2), vec4<bool>(true, false, arg_0.d, true), vec3<bool>(arg_0.a.x, false, arg_0.a.x), vec2<i32>(arg_2, -1i))) || true) != true), select(select(func_3(325f, -2147483647i, Struct_2(arg_1.b.x, arg_0.c.zyy)).yy, select(!vec2<bool>(arg_0.a.x, arg_0.d), vec2<bool>(arg_0.d, false), arg_0.a.x), !vec2<bool>(false, arg_0.d)), arg_0.a, !arg_0.a.x), vec2<bool>(arg_0.d, func_2(vec2<u32>(~arg_0.c.x, ~0u), global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_1.b.x, 31u)], 4u)]).x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(func_1(Struct_1(vec2<bool>(true, global0[_wgslsmith_index_u32(0u, 31u)] >= global0[_wgslsmith_index_u32(59648u, 31u)]), global0[_wgslsmith_index_u32(~1u, 31u)] >> (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 31u)], 31u)], 31u)], 31u)], 31u)], 31u)] % 32u), ~max(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 31u)], 31u)], 31u)], 31u)], 40799u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 31u)], 31u)], 0u), vec4<u32>(1u, 4294967295u, global0[_wgslsmith_index_u32(98745u, 31u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 31u)], 31u)])), false), Struct_2(global0[_wgslsmith_index_u32(3650u, 31u)], ~select(vec3<u32>(20326u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(127535u, 31u)], 31u)], global0[_wgslsmith_index_u32(1u, 31u)]), vec3<u32>(0u, 29990u, 1u), true)), _wgslsmith_sub_i32(abs(0i), _wgslsmith_sub_i32(u_input.a, u_input.a) ^ (u_input.a >> (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1808u, 31u)], 31u)] % 32u)))), ~0u, ~min(~vec4<u32>(global0[_wgslsmith_index_u32(72860u, 31u)], 16687u, 1u, 14141u), _wgslsmith_mult_vec4_u32(reverseBits(vec4<u32>(global0[_wgslsmith_index_u32(0u, 31u)], global0[_wgslsmith_index_u32(19404u, 31u)], 1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 31u)], 31u)])), vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(54548u, 31u)], 31u)], 31u)], 1u, 0u, 94433u))), !(u_input.a >= u_input.a) | !func_2(select(vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 31u)], 31u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 31u)], 31u)], 31u)]), vec2<u32>(105221u, 51994u), vec2<bool>(true, true)), Struct_1(vec2<bool>(false, false), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(2463u, 31u)], 31u)], 31u)], vec4<u32>(0u, global0[_wgslsmith_index_u32(14572u, 31u)], 56783u, 68932u), false)).x);
    global0 = array<u32, 31>();
    var var_1 = _wgslsmith_add_i32(firstTrailingBit(-16096i) & _wgslsmith_dot_vec3_i32((vec3<i32>(u_input.a, 30371i, 1i) ^ vec3<i32>(2147483647i, 0i, u_input.a)) << ((vec3<u32>(var_0.c.x, var_0.b, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_0.b, 31u)], 31u)]) & var_0.c.www) % vec3<u32>(32u)), reverseBits(vec3<i32>(-6250i, u_input.a, 26440i)) & -vec3<i32>(2147483647i, u_input.a, u_input.a)), _wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(-41091i, u_input.a, 26592i, u_input.a), vec4<i32>(u_input.a, -11415i, u_input.a, -7277i), vec4<i32>(u_input.a, u_input.a, 1i, u_input.a)), min(vec4<i32>(u_input.a, -2147483647i, 32837i, 0i), vec4<i32>(u_input.a, u_input.a, 2147483647i, u_input.a))), firstTrailingBit(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<i32>(36751i, u_input.a, u_input.a, 1i)))), u_input.a, ~(u_input.a | firstTrailingBit(247i))));
    var var_2 = -1128f;
    global1 = array<Struct_1, 4>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec2_i32(abs(~vec2<i32>(u_input.a, 22412i)), vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.a, -1i, u_input.a), vec4<i32>(u_input.a, u_input.a, -1i, u_input.a)), 1i)) << (_wgslsmith_clamp_vec2_u32(var_0.c.zz, var_0.c.wz, var_0.c.zy) % vec2<u32>(32u)), min(reverseBits(vec3<i32>(_wgslsmith_clamp_i32(u_input.a, u_input.a, u_input.a), u_input.a, -u_input.a)), -(~_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a, u_input.a, -2147483647i), vec3<i32>(1i, -1i, -72787i)))));
}

