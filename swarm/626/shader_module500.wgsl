struct Struct_1 {
    a: bool,
    b: i32,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: vec4<i32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: array<Struct_2, 26> = array<Struct_2, 26>(Struct_2(Struct_1(true, i32(-2147483648), true), vec3<u32>(74347u, 25808u, 0u), vec4<i32>(-4012i, 0i, i32(-2147483648), -33104i)), Struct_2(Struct_1(true, 1i, false), vec3<u32>(27467u, 1u, 56859u), vec4<i32>(-20726i, 4431i, -86852i, 8327i)), Struct_2(Struct_1(true, -78387i, false), vec3<u32>(1u, 45552u, 8959u), vec4<i32>(10786i, -9322i, 0i, 14562i)), Struct_2(Struct_1(true, 0i, false), vec3<u32>(1u, 1u, 1u), vec4<i32>(2147483647i, -15970i, -3562i, 25687i)), Struct_2(Struct_1(false, 0i, true), vec3<u32>(1u, 45440u, 1u), vec4<i32>(-7160i, -12783i, 2147483647i, 428i)), Struct_2(Struct_1(true, 2147483647i, true), vec3<u32>(15600u, 27971u, 47094u), vec4<i32>(2147483647i, 0i, 21538i, 1i)), Struct_2(Struct_1(true, 0i, false), vec3<u32>(0u, 22019u, 10758u), vec4<i32>(61324i, -1i, i32(-2147483648), 5123i)), Struct_2(Struct_1(false, 0i, false), vec3<u32>(4294967295u, 40288u, 13979u), vec4<i32>(-1i, -1i, 15012i, i32(-2147483648))), Struct_2(Struct_1(false, -1i, true), vec3<u32>(0u, 2141u, 1u), vec4<i32>(-27955i, 16591i, 0i, -1i)), Struct_2(Struct_1(true, i32(-2147483648), false), vec3<u32>(64271u, 69614u, 0u), vec4<i32>(1i, -15913i, 0i, -7451i)), Struct_2(Struct_1(true, 85413i, false), vec3<u32>(4294967295u, 1u, 6549u), vec4<i32>(-1i, 0i, -1i, -72756i)), Struct_2(Struct_1(false, -63035i, true), vec3<u32>(4294967295u, 24829u, 66735u), vec4<i32>(-13703i, -1i, i32(-2147483648), 2147483647i)), Struct_2(Struct_1(false, -21495i, false), vec3<u32>(0u, 0u, 4819u), vec4<i32>(i32(-2147483648), -2066i, 0i, 2147483647i)), Struct_2(Struct_1(false, 12912i, true), vec3<u32>(0u, 57248u, 46529u), vec4<i32>(-24729i, -67693i, 0i, 22802i)), Struct_2(Struct_1(true, 2147483647i, false), vec3<u32>(4294967295u, 63485u, 26822u), vec4<i32>(0i, -1i, 65219i, -1i)), Struct_2(Struct_1(true, -6076i, true), vec3<u32>(56772u, 31877u, 0u), vec4<i32>(-6268i, -16517i, -11972i, -1i)), Struct_2(Struct_1(true, 2147483647i, false), vec3<u32>(96386u, 4128u, 0u), vec4<i32>(-13961i, -55330i, -20551i, -1i)), Struct_2(Struct_1(false, -9140i, false), vec3<u32>(25908u, 4294967295u, 54321u), vec4<i32>(2147483647i, 2147483647i, 40677i, -9592i)), Struct_2(Struct_1(false, 5675i, true), vec3<u32>(46459u, 40202u, 34974u), vec4<i32>(i32(-2147483648), 0i, -1i, 1i)), Struct_2(Struct_1(true, -11658i, true), vec3<u32>(26296u, 1u, 3860u), vec4<i32>(-43071i, 2147483647i, 2147483647i, 0i)), Struct_2(Struct_1(false, 2147483647i, false), vec3<u32>(4294967295u, 13442u, 29994u), vec4<i32>(-38604i, i32(-2147483648), 0i, -1i)), Struct_2(Struct_1(false, 1909i, true), vec3<u32>(94582u, 1u, 1u), vec4<i32>(-56620i, 2147483647i, 2147483647i, 1i)), Struct_2(Struct_1(true, 0i, true), vec3<u32>(1u, 1u, 130577u), vec4<i32>(i32(-2147483648), 1i, 1i, -9856i)), Struct_2(Struct_1(true, 1i, false), vec3<u32>(32023u, 12197u, 1u), vec4<i32>(-1i, -24829i, -1i, 18252i)), Struct_2(Struct_1(true, 15150i, true), vec3<u32>(0u, 31575u, 25538u), vec4<i32>(1i, 32923i, i32(-2147483648), -66754i)), Struct_2(Struct_1(false, -29159i, true), vec3<u32>(0u, 31829u, 1u), vec4<i32>(2147483647i, 1i, 0i, 1i)));

var<private> global2: vec3<bool> = vec3<bool>(false, true, true);

var<private> global3: array<i32, 2>;

var<private> global4: array<Struct_2, 5>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1) -> u32 {
    var var_0 = Struct_1(all(!vec3<bool>(select(true, global2.x, global2.x), u_input.c.x > global3[_wgslsmith_index_u32(1u, 2u)], true)), u_input.c.x, true);
    global1 = array<Struct_2, 26>();
    let var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1009f)))), 818f, true));
    var var_2 = Struct_2(arg_0, vec3<u32>(111617u, 1u, ~_wgslsmith_mult_u32(0u, 47384u)), max(vec4<i32>(_wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.c.x, var_0.b, global3[_wgslsmith_index_u32(u_input.a, 2u)], u_input.b), vec4<i32>(global3[_wgslsmith_index_u32(u_input.a, 2u)], 8181i, 1i, var_0.b)), 2147483647i >> (u_input.a % 32u), -18214i, _wgslsmith_dot_vec2_i32(select(u_input.c.zz, vec2<i32>(arg_0.b, -17407i), global2.xz), -vec2<i32>(var_0.b, -22898i))), select(-abs(vec4<i32>(u_input.c.x, 30357i, var_0.b, arg_0.b)), countOneBits(vec4<i32>(11081i, u_input.c.x, u_input.c.x, 1343i)) >> (vec4<u32>(u_input.a, u_input.a, u_input.a, 22756u) % vec4<u32>(32u)), !(!vec4<bool>(false, arg_0.a, arg_0.a, global2.x)))));
    var var_3 = var_2.b.xy;
    return 1u;
}

fn func_2(arg_0: u32, arg_1: bool, arg_2: Struct_2) -> vec3<bool> {
    global3 = array<i32, 2>();
    var var_0 = select(vec3<bool>(!arg_2.a.c, (global2.x == true) != !arg_1, !global2.x), vec3<bool>((_wgslsmith_div_i32(arg_2.a.b, 0i) < (global3[_wgslsmith_index_u32(1u, 2u)] | global3[_wgslsmith_index_u32(u_input.a, 2u)])) & (u_input.a != _wgslsmith_mod_u32(1u, 33827u)), (_wgslsmith_clamp_i32(global3[_wgslsmith_index_u32(u_input.a, 2u)], arg_2.c.x, arg_2.a.b) < global3[_wgslsmith_index_u32(~4294967295u, 2u)]) || !(!global2.x), true), true);
    var var_1 = (func_3(Struct_1(true, ~arg_2.c.x, arg_2.a.c && arg_1)) >> (~abs(4294967295u) % 32u)) << (~(~_wgslsmith_clamp_u32(_wgslsmith_add_u32(0u, 1u), abs(1u), 87631u)) % 32u);
    let var_2 = -global3[_wgslsmith_index_u32(77820u, 2u)];
    let var_3 = Struct_2(arg_2.a, arg_2.b, vec4<i32>(-(~arg_2.a.b), u_input.b, _wgslsmith_dot_vec2_i32(firstLeadingBit(arg_2.c.ww), arg_2.c.yz), 1i));
    return vec3<bool>(!(all(select(vec4<bool>(true, global2.x, arg_1, false), vec4<bool>(arg_1, true, true, arg_1), vec4<bool>(arg_1, global2.x, false, var_3.a.c))) | var_0.x), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(462f, -2238f)))) > _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -843f), 532f)), false);
}

fn func_1(arg_0: bool, arg_1: u32) -> vec3<bool> {
    let var_0 = countOneBits(_wgslsmith_div_vec3_u32(vec3<u32>(arg_1, arg_1, ~arg_1), vec3<u32>(45036u, arg_1, _wgslsmith_add_u32(abs(u_input.a), u_input.a))));
    global0 = ((var_0.x & 1u) < 78193u) && true;
    var var_1 = ~_wgslsmith_div_u32(max(arg_1, reverseBits(4294967295u)), firstLeadingBit(countOneBits(~var_0.x)));
    var var_2 = select(vec3<bool>(abs(global3[_wgslsmith_index_u32(u_input.a, 2u)] | u_input.c.x) <= ~u_input.b, any(!(!vec4<bool>(arg_0, global2.x, false, true))), false), select(select(select(vec3<bool>(global2.x, arg_0, true), func_2(u_input.a, false, global1[_wgslsmith_index_u32(var_0.x, 26u)]), true), !select(vec3<bool>(global2.x, true, true), vec3<bool>(global2.x, arg_0, global2.x), global2.x), func_2(arg_1, any(vec2<bool>(arg_0, arg_0)), global1[_wgslsmith_index_u32(u_input.a, 26u)])), !func_2(arg_1 & 62309u, global3[_wgslsmith_index_u32(4294967295u, 2u)] <= global3[_wgslsmith_index_u32(1u, 2u)], global4[_wgslsmith_index_u32(arg_1, 5u)]), !global2.x), global2.x || false);
    let var_3 = countOneBits(_wgslsmith_div_i32(global3[_wgslsmith_index_u32(1u, 2u)], _wgslsmith_mod_i32(~global3[_wgslsmith_index_u32(var_0.x, 2u)], -1i))) & 2147483647i;
    return select(select(vec3<bool>(false, true, !(!var_2.x)), func_2(61164u, (u_input.c.x & 17924i) <= _wgslsmith_dot_vec2_i32(u_input.c.xz, vec2<i32>(var_3, global3[_wgslsmith_index_u32(arg_1, 2u)])), Struct_2(Struct_1(true, global3[_wgslsmith_index_u32(var_0.x, 2u)], true), abs(vec3<u32>(0u, 43595u, 0u)), -vec4<i32>(var_3, 0i, global3[_wgslsmith_index_u32(1u, 2u)], var_3))), true), !vec3<bool>(!select(false, true, arg_0), any(select(vec4<bool>(var_2.x, false, arg_0, global2.x), vec4<bool>(var_2.x, global2.x, var_2.x, var_2.x), global2.x)), var_2.x), select(!(!select(vec3<bool>(false, global2.x, global2.x), vec3<bool>(true, var_2.x, false), true)), select(select(vec3<bool>(false, false, var_2.x), vec3<bool>(false, arg_0, global2.x), var_2.x), vec3<bool>(false, any(vec2<bool>(var_2.x, global2.x)), true), true), !(!select(vec3<bool>(global2.x, arg_0, false), vec3<bool>(global2.x, arg_0, arg_0), vec3<bool>(arg_0, arg_0, var_2.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = !func_1(~(~u_input.a) >= _wgslsmith_mult_u32(1u, u_input.a), u_input.a);
    global1 = array<Struct_2, 26>();
    var var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(-1000f))));
    global4 = array<Struct_2, 5>();
    var var_1 = vec3<u32>(u_input.a, ~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.a, u_input.a), vec3<u32>(u_input.a, u_input.a, 1u)), 14930u, _wgslsmith_div_u32(34676u, u_input.a)), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, u_input.a, 34198u, u_input.a), ~vec4<u32>(u_input.a, u_input.a, u_input.a, 4294967295u))), abs(_wgslsmith_add_u32(37645u << (u_input.a % 32u), u_input.a)) >> (~(~4294967295u) % 32u));
    let var_2 = _wgslsmith_div_vec2_u32(min(vec2<u32>(4294967295u, _wgslsmith_mod_u32(25956u, u_input.a)), var_1.zx), ~select(vec2<u32>(~u_input.a, u_input.a), ~(~vec2<u32>(var_1.x, 1u)), true));
    global4 = array<Struct_2, 5>();
    let x = u_input.a;
    s_output = StorageBuffer(~(~(-1i)), abs(vec4<i32>(~(-19004i), _wgslsmith_sub_i32(_wgslsmith_div_i32(-2147483647i, u_input.c.x), u_input.b), abs(-global3[_wgslsmith_index_u32(19039u, 2u)]), (i32(-1i) * -2147483647i) >> (var_2.x % 32u))), 725f);
}

