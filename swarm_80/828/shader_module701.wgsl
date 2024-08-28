struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
}

struct Struct_4 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<bool, 21> = array<bool, 21>(false, true, false, true, false, false, true, true, true, true, false, false, false, false, false, true, true, true, true, false, false);

var<private> global2: array<bool, 24>;

var<private> global3: Struct_1;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_2(arg_0: vec3<bool>) -> vec4<bool> {
    var var_0 = Struct_1(arg_0);
    var var_1 = Struct_3(Struct_2(global3.a, Struct_1(select(vec3<bool>(false, var_0.a.x, false), global3.a, true)), Struct_1(select(vec3<bool>(true, false, false), var_0.a, true)), Struct_1(!var_0.a), -u_input.d), ~(~21904u));
    var var_2 = var_0.a.x;
    var_0 = Struct_1(select(var_1.a.d.a, vec3<bool>(all(arg_0) & arg_0.x, global3.a.x, all(select(var_0.a, vec3<bool>(true, global2[_wgslsmith_index_u32(0u, 24u)], global2[_wgslsmith_index_u32(4294967295u, 24u)]), global1[_wgslsmith_index_u32(4294967295u, 21u)]))), vec3<bool>(-1i == _wgslsmith_clamp_i32(var_1.a.e, u_input.a, var_1.a.e), var_0.a.x, all(vec2<bool>(arg_0.x, false)))));
    let var_3 = Struct_2(!(!vec3<bool>(arg_0.x, select(false, global2[_wgslsmith_index_u32(u_input.b.x, 24u)], true), true)), var_1.a.c, Struct_1(!arg_0), var_1.a.b, i32(-1i) * -2147483647i);
    return vec4<bool>(all(select(select(vec4<bool>(false, true, global2[_wgslsmith_index_u32(u_input.b.x, 24u)], var_1.a.b.a.x), vec4<bool>(true, false, var_0.a.x, false), vec4<bool>(false, false, false, true)), select(vec4<bool>(var_0.a.x, false, true, true), select(vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 21u)], false, global2[_wgslsmith_index_u32(u_input.c, 24u)], false), vec4<bool>(var_1.a.a.x, false, var_3.a.x, arg_0.x), false), !vec4<bool>(true, false, global1[_wgslsmith_index_u32(1982u, 21u)], global3.a.x)), vec4<bool>(true, !arg_0.x, -45435i > var_3.e, false))), !arg_0.x, any(select(!vec3<bool>(false, global2[_wgslsmith_index_u32(1u, 24u)], false), vec3<bool>(var_3.a.x && global2[_wgslsmith_index_u32(0u, 24u)], var_1.a.a.x, !global2[_wgslsmith_index_u32(u_input.c, 24u)]), var_3.c.a)), arg_0.x | true);
}

fn func_3(arg_0: f32) -> vec3<bool> {
    let var_0 = u_input.d;
    global0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1f - arg_0), arg_0));
    var var_1 = func_2(!(!(!vec3<bool>(global2[_wgslsmith_index_u32(u_input.b.x, 24u)], false, false))));
    global3 = Struct_1(!(!global3.a));
    global0 = arg_0;
    return var_1.wwx;
}

fn func_1() -> vec2<i32> {
    let var_0 = Struct_2(vec3<bool>(false, all(func_2(vec3<bool>(global3.a.x, global2[_wgslsmith_index_u32(45312u, 24u)], true))), true), Struct_1(select(func_3(733f), func_3(-908f), all(!global3.a.yx))), Struct_1(vec3<bool>(any(!global3.a), select(global1[_wgslsmith_index_u32(~17904u, 21u)], true, true), !global2[_wgslsmith_index_u32(4294967295u, 24u)] | true)), Struct_1(!vec3<bool>(global3.a.x, global1[_wgslsmith_index_u32(u_input.b.x, 21u)] != true, global2[_wgslsmith_index_u32(u_input.c, 24u)])), _wgslsmith_div_i32(0i, _wgslsmith_sub_i32(0i | _wgslsmith_add_i32(u_input.a, 0i), ~(~2147483647i))));
    let var_1 = Struct_3(Struct_2(func_2(vec3<bool>(true, true, true)).ywx, Struct_1(var_0.a), Struct_1(vec3<bool>(!global1[_wgslsmith_index_u32(3449u, 21u)], any(vec2<bool>(true, true)), true)), var_0.c, -2741i), (~(~u_input.c) | ~abs(u_input.c)) << (~47927u % 32u));
    let var_2 = vec4<bool>(false, false, global2[_wgslsmith_index_u32(13711u, 24u)], any(var_1.a.d.a.xy));
    global0 = 963f;
    let var_3 = Struct_1(vec3<bool>(_wgslsmith_f_op_f32(-1725f * _wgslsmith_f_op_f32(trunc(-1075f))) == _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(257f)), _wgslsmith_div_f32(-1000f, -1675f))), false, var_0.b.a.x));
    return (-firstLeadingBit(_wgslsmith_add_vec2_i32(vec2<i32>(0i, u_input.a), vec2<i32>(2147483647i, var_1.a.e))) & ~_wgslsmith_sub_vec2_i32(-vec2<i32>(-37725i, 0i), vec2<i32>(u_input.d, var_1.a.e) >> (u_input.b % vec2<u32>(32u)))) ^ select(~(~(vec2<i32>(-13316i, u_input.d) ^ vec2<i32>(u_input.d, -58991i))), reverseBits(vec2<i32>(-11357i, ~2147483647i)), any(func_2(select(vec3<bool>(var_1.a.d.a.x, true, true), var_0.a, var_2.zww))));
}

fn func_4(arg_0: bool, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: vec2<i32>) -> Struct_1 {
    global1 = array<bool, 21>();
    let var_0 = Struct_3(Struct_2(!arg_2.a, arg_2, arg_2, Struct_1(select(global3.a, vec3<bool>(false, global1[_wgslsmith_index_u32(13931u, 21u)], true), func_2(global3.a).xwz)), 0i), ~arg_1.x);
    var var_1 = var_0.a;
    var var_2 = -195f;
    global0 = 802f;
    return Struct_1(!vec3<bool>(var_0.b <= 4294967295u, arg_2.a.x, true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1[_wgslsmith_index_u32(0u, 21u)];
    let var_1 = vec3<u32>(firstTrailingBit(_wgslsmith_add_u32(67939u, u_input.b.x)), u_input.c, ~u_input.b.x) | ~vec3<u32>(_wgslsmith_add_u32(_wgslsmith_div_u32(u_input.b.x, 47399u), 0u), 0u, _wgslsmith_add_u32(0u, 4294967295u));
    let var_2 = Struct_2(vec3<bool>(false | global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, u_input.c), vec2<u32>(1u, 1u)), 24u)], u_input.c >= _wgslsmith_mod_u32(0u, u_input.b.x & 33756u), true), func_4(true, vec4<u32>(_wgslsmith_div_u32(var_1.x, ~34348u), ~reverseBits(var_1.x), ~0u, u_input.c), Struct_1(select(select(global3.a, global3.a, global1[_wgslsmith_index_u32(var_1.x, 21u)]), select(global3.a, global3.a, vec3<bool>(global1[_wgslsmith_index_u32(1u, 21u)], global1[_wgslsmith_index_u32(0u, 21u)], true)), !global2[_wgslsmith_index_u32(1u, 24u)])), _wgslsmith_mod_vec2_i32(func_1(), _wgslsmith_div_vec2_i32(vec2<i32>(-31102i, 1i) << (var_1.zz % vec2<u32>(32u)), -vec2<i32>(u_input.a, u_input.d)))), func_4(!(!(u_input.a >= u_input.d)), _wgslsmith_add_vec4_u32(vec4<u32>(2636u, _wgslsmith_mod_u32(var_1.x, 37150u), ~4294967295u, 1u), vec4<u32>(36591u, u_input.c, 1u, var_1.x) & ~vec4<u32>(0u, 49595u, 1u, 7155u)), func_4(global1[_wgslsmith_index_u32(1u, 21u)], vec4<u32>(~u_input.b.x, 1u, _wgslsmith_add_u32(u_input.c, var_1.x), _wgslsmith_mult_u32(4294967295u, 1u)), Struct_1(global3.a), _wgslsmith_div_vec2_i32(~vec2<i32>(2147483647i, -1i), vec2<i32>(32847i, u_input.d) & vec2<i32>(-2147483647i, 2147483647i))), firstTrailingBit(~(~vec2<i32>(-64869i, u_input.a)))), func_4(all(global3.a), ~(~vec4<u32>(u_input.b.x, 1u, 58529u, var_1.x)), Struct_1(vec3<bool>(true, global3.a.x, global1[_wgslsmith_index_u32(reverseBits(var_1.x), 21u)])), reverseBits(_wgslsmith_sub_vec2_i32(select(vec2<i32>(-1i, 0i), vec2<i32>(u_input.d, u_input.d), true), vec2<i32>(-11658i, -2147483647i) & vec2<i32>(u_input.a, u_input.d)))), u_input.a & -1i);
    let var_3 = 1i;
    let var_4 = Struct_1(global3.a);
    global3 = func_4(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(var_1.x, _wgslsmith_dot_vec3_u32(vec3<u32>(var_1.x, 3854u, ~u_input.b.x), abs(var_1))), 21u)], vec4<u32>(var_1.x, ~(~1u), ~(~_wgslsmith_sub_u32(u_input.b.x, u_input.c)), ~(~(var_1.x & u_input.c))), Struct_1(!(!vec3<bool>(false, false, global1[_wgslsmith_index_u32(48914u, 21u)]))), vec2<i32>(8207i, _wgslsmith_dot_vec2_i32(vec2<i32>(1527i, u_input.d), -_wgslsmith_mod_vec2_i32(vec2<i32>(0i, 2147483647i), vec2<i32>(-1438i, 1i)))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(4467u, u_input.b.x, u_input.b.x), vec3<u32>(5176u, u_input.b.x, var_1.x)), 1u, var_1.x << (4294967295u % 32u)), var_1)), vec4<u32>(~1u, 0u, 1u & _wgslsmith_dot_vec2_u32(vec2<u32>(54260u, 4882u), _wgslsmith_mod_vec2_u32(u_input.b, vec2<u32>(var_1.x, var_1.x))), select(~0u, _wgslsmith_dot_vec2_u32(u_input.b & var_1.xz, u_input.b), all(var_2.c.a))));
}

