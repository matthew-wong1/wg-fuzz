struct Struct_1 {
    a: u32,
    b: u32,
    c: vec4<u32>,
    d: i32,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: u32,
    d: vec3<i32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 27> = array<Struct_1, 27>(Struct_1(0u, 50260u, vec4<u32>(1u, 4294967295u, 4294967295u, 4294967295u), -35734i, 10271u), Struct_1(4294967295u, 0u, vec4<u32>(1u, 0u, 23431u, 0u), 11319i, 18877u), Struct_1(4294967295u, 14287u, vec4<u32>(7944u, 16831u, 1u, 1u), 0i, 1u), Struct_1(1u, 1290u, vec4<u32>(0u, 4557u, 14716u, 4294967295u), 10618i, 1u), Struct_1(4130u, 5735u, vec4<u32>(12410u, 1u, 0u, 0u), 17978i, 51130u), Struct_1(36860u, 83176u, vec4<u32>(36029u, 4294967295u, 1u, 0u), 73272i, 4294967295u), Struct_1(40443u, 4294967295u, vec4<u32>(4294967295u, 1u, 1u, 4294967295u), 2147483647i, 1u), Struct_1(4294967295u, 40106u, vec4<u32>(78763u, 8315u, 1075u, 1u), i32(-2147483648), 7182u), Struct_1(4294967295u, 22709u, vec4<u32>(67560u, 0u, 59873u, 40313u), -1i, 1u), Struct_1(19468u, 1u, vec4<u32>(55112u, 0u, 1u, 4294967295u), 0i, 4294967295u), Struct_1(1u, 1u, vec4<u32>(22129u, 60740u, 1u, 18939u), 5710i, 0u), Struct_1(1u, 4294967295u, vec4<u32>(24186u, 11651u, 17096u, 0u), -1i, 1u), Struct_1(1u, 1u, vec4<u32>(0u, 59566u, 28508u, 100767u), -13939i, 7826u), Struct_1(0u, 0u, vec4<u32>(4294967295u, 4294967295u, 1u, 19440u), 29784i, 46598u), Struct_1(1u, 8759u, vec4<u32>(0u, 1u, 35425u, 29770u), -30456i, 0u), Struct_1(1u, 73468u, vec4<u32>(4294967295u, 4557u, 33212u, 64721u), 98911i, 56866u), Struct_1(30680u, 69183u, vec4<u32>(1u, 0u, 0u, 19400u), 2147483647i, 4294967295u), Struct_1(26608u, 58550u, vec4<u32>(0u, 1u, 10901u, 15703u), -1i, 29156u), Struct_1(4373u, 4294967295u, vec4<u32>(1734u, 0u, 19767u, 0u), -1i, 27297u), Struct_1(1u, 13540u, vec4<u32>(17512u, 4294967295u, 1u, 1u), i32(-2147483648), 72059u), Struct_1(83425u, 4294967295u, vec4<u32>(1u, 38801u, 4294967295u, 36889u), 2147483647i, 73662u), Struct_1(0u, 56125u, vec4<u32>(46888u, 1u, 1u, 42112u), -6879i, 0u), Struct_1(4294967295u, 14051u, vec4<u32>(24569u, 0u, 4294967295u, 4294967295u), -27628i, 4294967295u), Struct_1(59217u, 40581u, vec4<u32>(4294967295u, 56618u, 4294967295u, 10731u), -41353i, 4294967295u), Struct_1(4294967295u, 12290u, vec4<u32>(4294967295u, 11195u, 59403u, 0u), 2147483647i, 31401u), Struct_1(4294967295u, 0u, vec4<u32>(4294967295u, 74855u, 10592u, 4294967295u), -47704i, 0u), Struct_1(92625u, 1u, vec4<u32>(22603u, 4294967295u, 0u, 1u), 2502i, 0u));

var<private> global1: array<vec4<i32>, 6>;

var<private> global2: array<bool, 22>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: i32, arg_1: Struct_1) -> vec2<bool> {
    let var_0 = 1834f;
    global2 = array<bool, 22>();
    global1 = array<vec4<i32>, 6>();
    var var_1 = arg_1;
    var var_2 = !select(select(select(select(vec3<bool>(global2[_wgslsmith_index_u32(arg_1.a, 22u)], true, false), vec3<bool>(global2[_wgslsmith_index_u32(4294967295u, 22u)], false, global2[_wgslsmith_index_u32(arg_1.a, 22u)]), vec3<bool>(global2[_wgslsmith_index_u32(1u, 22u)], false, true)), select(vec3<bool>(global2[_wgslsmith_index_u32(u_input.b, 22u)], global2[_wgslsmith_index_u32(var_1.c.x, 22u)], global2[_wgslsmith_index_u32(var_1.c.x, 22u)]), vec3<bool>(global2[_wgslsmith_index_u32(arg_1.a, 22u)], global2[_wgslsmith_index_u32(arg_1.c.x, 22u)], true), vec3<bool>(true, global2[_wgslsmith_index_u32(arg_1.c.x, 22u)], global2[_wgslsmith_index_u32(44657u, 22u)])), !global2[_wgslsmith_index_u32(arg_1.c.x, 22u)]), select(select(vec3<bool>(true, global2[_wgslsmith_index_u32(39765u, 22u)], false), vec3<bool>(true, true, global2[_wgslsmith_index_u32(var_1.a, 22u)]), vec3<bool>(true, false, global2[_wgslsmith_index_u32(arg_1.b, 22u)])), vec3<bool>(true, false, true), !vec3<bool>(global2[_wgslsmith_index_u32(var_1.b, 22u)], true, global2[_wgslsmith_index_u32(arg_1.e, 22u)])), global2[_wgslsmith_index_u32(select(reverseBits(0u), 1u & u_input.a, any(vec3<bool>(false, true, true))), 22u)]), vec3<bool>(any(vec3<bool>(false, true, global2[_wgslsmith_index_u32(19156u, 22u)])), (var_1.d > var_1.d) != !global2[_wgslsmith_index_u32(u_input.a, 22u)], min(2147483647i, arg_1.d) < (u_input.d << (u_input.a % 32u))), !(true | (true || global2[_wgslsmith_index_u32(0u, 22u)])));
    return select(select(!select(!vec2<bool>(true, var_2.x), var_2.yz, true), vec2<bool>(true, any(vec3<bool>(var_2.x, global2[_wgslsmith_index_u32(var_1.e, 22u)], true)) || all(vec3<bool>(false, var_2.x, global2[_wgslsmith_index_u32(var_1.e, 22u)]))), select(var_2.yz, !(!vec2<bool>(var_2.x, global2[_wgslsmith_index_u32(var_1.c.x, 22u)])), all(vec4<bool>(false, var_2.x, var_2.x, true)))), vec2<bool>(!(_wgslsmith_dot_vec4_u32(var_1.c, vec4<u32>(0u, 9032u, 81752u, u_input.a)) >= 0u), !(!(-68611i >= u_input.d))), var_2.zz);
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: vec4<u32>) -> u32 {
    global0 = array<Struct_1, 27>();
    let var_0 = arg_1;
    var var_1 = Struct_1(63613u, 4294967295u, ~var_0.c, arg_1.d, var_0.a);
    global0 = array<Struct_1, 27>();
    let var_2 = Struct_1(_wgslsmith_div_u32(u_input.a, 3409u), ~arg_1.a, max(var_0.c | ~vec4<u32>(arg_2.x, arg_2.x, 0u, 1855u), max(max(vec4<u32>(var_1.c.x, arg_1.b, arg_1.e, var_0.a), vec4<u32>(var_1.c.x, arg_2.x, 1u, 1u)), vec4<u32>(1u, 7281u, 83386u, var_1.b)) >> (~var_1.c % vec4<u32>(32u))), u_input.d, 15409u);
    return _wgslsmith_dot_vec2_u32(~vec2<u32>(21106u, var_0.b), firstTrailingBit(~(~(arg_1.c.xx | vec2<u32>(0u, 24318u)))));
}

fn func_2() -> i32 {
    global2 = array<bool, 22>();
    var var_0 = ~abs(~1u);
    var var_1 = -6824i ^ _wgslsmith_add_i32(u_input.d, max(-_wgslsmith_div_i32(u_input.c.x, -1i), u_input.c.x));
    global1 = array<vec4<i32>, 6>();
    let var_2 = Struct_1(firstLeadingBit(u_input.b), func_4(any(func_3(u_input.c.x, global0[_wgslsmith_index_u32(33944u, 27u)])), Struct_1(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 4294967295u, u_input.a), vec3<u32>(24131u, 1u, u_input.a)), ~7837u), u_input.b, ~(vec4<u32>(u_input.b, u_input.a, 25801u, 75121u) ^ vec4<u32>(18104u, u_input.a, 64357u, u_input.b)), min(firstTrailingBit(u_input.d), select(u_input.d, -1i, global2[_wgslsmith_index_u32(u_input.a, 22u)])), ~u_input.b), ~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b, 23715u, 1u, 26476u), vec4<u32>(11680u, u_input.a, u_input.b, 29171u)) ^ (select(vec4<u32>(11483u, 0u, u_input.b, u_input.a), vec4<u32>(u_input.a, 0u, u_input.a, u_input.b), global2[_wgslsmith_index_u32(u_input.b, 22u)]) | vec4<u32>(u_input.a, u_input.b, 1u, 4294967295u))), _wgslsmith_mod_vec4_u32(_wgslsmith_div_vec4_u32(min(vec4<u32>(4294967295u, 0u, u_input.a, 0u), vec4<u32>(u_input.b, u_input.a, 81375u, u_input.b)), vec4<u32>(u_input.b, u_input.b, 44131u, u_input.a)) << (~vec4<u32>(u_input.a, u_input.b, u_input.a, u_input.b) % vec4<u32>(32u)), vec4<u32>(1u, 19099u, _wgslsmith_clamp_u32(u_input.b ^ 0u, u_input.b, 0u), 39417u)), max(-1i >> (1u % 32u), abs(u_input.d)), ~(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, 18158u, u_input.a), vec4<u32>(u_input.b, u_input.a, u_input.a, 26524u)) << (_wgslsmith_mult_u32(u_input.b, _wgslsmith_add_u32(u_input.a, 4294967295u)) % 32u)));
    return var_2.d;
}

fn func_1(arg_0: Struct_1) -> vec3<u32> {
    let var_0 = Struct_1(_wgslsmith_dot_vec4_u32(~arg_0.c, arg_0.c), _wgslsmith_add_u32(abs(~1u), 1u), arg_0.c ^ ~min(firstTrailingBit(vec4<u32>(30242u, u_input.a, 14112u, 3658u)), vec4<u32>(arg_0.a, 4294967295u, u_input.a, arg_0.e)), func_2(), 1u);
    var var_1 = Struct_1(u_input.b, var_0.a & 43161u, var_0.c, var_0.d >> (9724u % 32u), ~(~(~var_0.a << (_wgslsmith_mod_u32(arg_0.e, 68636u) % 32u))));
    var var_2 = select(select(vec3<bool>(all(func_3(-49914i, Struct_1(4294967295u, u_input.b, vec4<u32>(arg_0.b, 34681u, 1u, 4294967295u), 2147483647i, var_0.b))), !(global2[_wgslsmith_index_u32(0u, 22u)] && true), global2[_wgslsmith_index_u32(4294967295u, 22u)]), !vec3<bool>(any(vec4<bool>(global2[_wgslsmith_index_u32(7435u, 22u)], global2[_wgslsmith_index_u32(var_0.e, 22u)], global2[_wgslsmith_index_u32(0u, 22u)], false)), false, true), vec3<bool>(any(select(vec3<bool>(true, global2[_wgslsmith_index_u32(28517u, 22u)], global2[_wgslsmith_index_u32(var_1.b, 22u)]), vec3<bool>(global2[_wgslsmith_index_u32(1u, 22u)], false, true), vec3<bool>(global2[_wgslsmith_index_u32(54003u, 22u)], false, global2[_wgslsmith_index_u32(1u, 22u)]))), true & !global2[_wgslsmith_index_u32(u_input.b, 22u)], true)), vec3<bool>(true || func_3(_wgslsmith_mod_i32(arg_0.d, 46696i), var_0).x, true, !(_wgslsmith_f_op_f32(floor(931f)) != _wgslsmith_div_f32(-220f, -1481f))), true);
    let var_3 = global0[_wgslsmith_index_u32(~88760u, 27u)];
    let var_4 = u_input.c.zy;
    return _wgslsmith_add_vec3_u32(select(_wgslsmith_add_vec3_u32(var_0.c.wyw, ~var_3.c.yxy), ~abs(vec3<u32>(36874u, arg_0.a, arg_0.b)), vec3<bool>(true && global2[_wgslsmith_index_u32(arg_0.b, 22u)], any(vec2<bool>(global2[_wgslsmith_index_u32(var_3.a, 22u)], var_2.x)), global2[_wgslsmith_index_u32(abs(var_1.a), 22u)])), _wgslsmith_add_vec3_u32(max(select(var_0.c.zxw, var_3.c.zzx, var_2.x), ~var_0.c.zyz), vec3<u32>(0u, ~arg_0.a, 0u))) ^ ~((abs(var_1.c.yyy) | max(var_3.c.zww, vec3<u32>(9172u, 86754u, var_1.b))) >> (vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(var_3.a, var_3.c.x), vec2<u32>(arg_0.a, 1u)), firstLeadingBit(1u), 18718u) % vec3<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -select(~_wgslsmith_mult_vec2_i32(-u_input.c.xy, ~u_input.c.xw), ~(-vec2<i32>(u_input.c.x, -30926i)) ^ _wgslsmith_clamp_vec2_i32(u_input.c.wy, u_input.c.wz, u_input.c.xy ^ vec2<i32>(u_input.d, u_input.c.x)), false == !global2[_wgslsmith_index_u32(u_input.b & u_input.b, 22u)]);
    let var_1 = u_input.a;
    var var_2 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1107f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(507f, 236f, true)) + -1267f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-462f * -2103f), _wgslsmith_f_op_f32(select(1359f, 753f, global2[_wgslsmith_index_u32(var_1, 22u)]))), _wgslsmith_f_op_f32(107f * 387f)))), _wgslsmith_div_vec4_f32(vec4<f32>(-1155f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(474f)), _wgslsmith_f_op_f32(-1554f * -625f))), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(156f, 759f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-783f * -1000f))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(385f, 752f, -313f, -572f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(168f, 2569f, -1572f, -1444f) * vec4<f32>(-739f, 264f, 681f, 1850f)))))));
    var var_3 = _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(abs(vec2<i32>(firstLeadingBit(var_0.x), _wgslsmith_mod_i32(var_0.x, u_input.c.x))), vec2<i32>(abs(reverseBits(21674i)), -countOneBits(1i))), 2499i);
    var var_4 = ~func_1(Struct_1(27670u, u_input.b & (4294967295u << (0u % 32u)), ~(vec4<u32>(var_1, var_1, u_input.a, 0u) & vec4<u32>(var_1, 41609u, var_1, 54393u)), var_0.x, 0u));
    var var_5 = Struct_1(var_4.x, u_input.a, abs(~vec4<u32>(~var_1, firstTrailingBit(4294967295u), _wgslsmith_add_u32(u_input.a, u_input.a), 87230u)), u_input.c.x, var_1);
    let var_6 = Struct_1(_wgslsmith_clamp_u32(var_5.e, 68596u, abs(reverseBits(_wgslsmith_sub_u32(u_input.a, 0u)))), var_4.x, ~vec4<u32>(~_wgslsmith_div_u32(var_4.x, 63898u), ~(var_1 ^ var_5.a), _wgslsmith_add_u32(u_input.b, var_4.x), _wgslsmith_add_u32(var_5.c.x, var_4.x) << (_wgslsmith_div_u32(var_5.b, 40536u) % 32u)), min(805i, var_5.d), 61271u);
    var var_7 = Struct_1(var_1, abs(~(~1u)), vec4<u32>(var_6.c.x, 1u, ~var_5.c.x, _wgslsmith_dot_vec2_u32(abs(vec2<u32>(49386u, var_5.a)), _wgslsmith_mod_vec2_u32(vec2<u32>(var_5.c.x, var_4.x), var_4.xy)) | var_4.x), ~2147483647i, 1u);
    let var_8 = Struct_1(var_1, var_4.x, vec4<u32>(4294967295u, _wgslsmith_sub_u32(~var_5.c.x, 0u) ^ _wgslsmith_dot_vec4_u32(vec4<u32>(var_6.b, var_7.e, var_5.a, var_4.x), abs(var_6.c)), var_7.e, var_5.c.x), -2147483647i, ~(_wgslsmith_mult_u32(select(0u, 4294967295u, false), _wgslsmith_dot_vec2_u32(var_6.c.xw, var_4.xy)) << (var_6.a % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(var_7.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1199f, var_2.x)))) * -297f), (~(~var_8.c.x) << (var_8.b % 32u)) & ~var_1, select(~_wgslsmith_sub_vec3_i32(~u_input.c.yzx, ~u_input.c.yxz), -u_input.c.wxw, !(!(!vec3<bool>(global2[_wgslsmith_index_u32(u_input.b, 22u)], false, true)))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_2.x, _wgslsmith_f_op_f32(var_2.x - var_2.x), var_2.x))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(var_2.wxx, _wgslsmith_f_op_vec3_f32(-var_2.wzw), select(vec3<bool>(false, global2[_wgslsmith_index_u32(39721u, 22u)], global2[_wgslsmith_index_u32(1u, 22u)]), vec3<bool>(false, global2[_wgslsmith_index_u32(var_7.a, 22u)], global2[_wgslsmith_index_u32(4294967295u, 22u)]), vec3<bool>(global2[_wgslsmith_index_u32(u_input.a, 22u)], false, global2[_wgslsmith_index_u32(11684u, 22u)])))), vec3<f32>(var_2.x, _wgslsmith_f_op_f32(round(447f)), _wgslsmith_f_op_f32(-var_2.x)))))));
}

